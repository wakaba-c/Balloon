// ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//
// シーン処理の説明[scene.cpp]
// Author : Koki Nishiyama
//
// ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//
// インクルードファイル
//
// ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#include "scene.h"
#include "pause.h"

// ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//
// グローバル変数
//
// ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//
// 静的変数宣言
//
// ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
bool			CScene::m_sta_bStop = false;				// 更新を止める
int				CScene::m_nMaxStop = 0;					// 最大静止時間
int				CScene::m_nCntStop = 0;					// 静止時間
std::vector<CScene*> CScene::m_pScene[LAYER_MAX] = {};		// シーン管理用変数

// ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// オーバーロードコンストラクタ
// ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CScene::CScene()
{
	// フラグ
	m_bDeadFrag = false;
	// 更新を止めるかどうか
	m_bStop = true;
	// 描画状態
	m_bDraw = true;
}

// ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// デストラクタ処理
// ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CScene::~CScene()
{
}

#ifdef _DEBUG
// ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// シーンのデバッグ処理
// ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
void CScene::Debug(void)
{

}
#endif // _DEBUG

// ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// シーン親子リリース処理
// ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
void CScene::ReleaseAll(void)
{
	/* 現在の奴 */
	// 変数宣言
	for (int nCntLayer = 0; nCntLayer < LAYER_MAX; nCntLayer++)
	{
		// 中身がなったらループスキップ
		if (m_pScene[nCntLayer].empty() == true)
		{
			continue;
		}
		for (int nCntScene = 0; nCntScene < (signed)m_pScene[nCntLayer].size(); nCntScene++)
		{
			m_pScene[nCntLayer][nCntScene]->Release();
			m_pScene[nCntLayer][nCntScene]->Uninit();
			delete m_pScene[nCntLayer][nCntScene];
			m_pScene[nCntLayer][nCntScene] = NULL;
		}
		std::vector<CScene*>().swap(m_pScene[nCntLayer]);
	}
}

// ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// シーン親子更新処理
// ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
void CScene::UpdateAll(void)
{
	// 更新静止状態ではない
	if (!m_sta_bStop)
	{
		for (int nCntLayer = 0; nCntLayer < LAYER_MAX; nCntLayer++)
		{
			for (int nCntScene = 0; nCntScene < (signed)m_pScene[nCntLayer].size(); nCntScene++)
			{
				// 更新
				m_pScene[nCntLayer][nCntScene]->Update();
#ifdef _DEBUG
				// デバッグ表示
				m_pScene[nCntLayer][nCntScene]->Debug();
#endif // _DEBUG
			}
		}
		// フラグが立ったものをすべてリリース
		DeadFragAll();
	}
	// 更新静止状態
	else
	{
		for (int nCntLayer = 0; nCntLayer < LAYER_MAX; nCntLayer++)
		{
			for (int nCntScene = 0; nCntScene < (signed)m_pScene[nCntLayer].size(); nCntScene++)
			{
				if (m_pScene[nCntLayer][nCntScene]->m_bStop == false)
				{
					// 更新
					m_pScene[nCntLayer][nCntScene]->Update();
#ifdef _DEBUG
					// デバッグ表示
					m_pScene[nCntLayer][nCntScene]->Debug();
#endif // _DEBUG
				}
			}
		}
		// フラグが立ったものをすべてリリース
		DeadFragAll();
		// 最大静止時間が設定されていない場合
		if (m_nMaxStop == 0)
		{
			return;
		}
		// 最大静止時間が設定されている場合
		m_nCntStop++;
		if (m_nMaxStop == m_nCntStop)
		{
			UpdateStop(false);
		}
	}
}

// ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// シーン親子描画処理
// ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
void CScene::DrawAll(void)
{
	for (int nCntLayer = 0; nCntLayer < LAYER_MAX; nCntLayer++)
	{
		for (int nCntScene = 0; nCntScene < (signed)m_pScene[nCntLayer].size(); nCntScene++)
		{
			// 描画状態が描画中なら
			// ->描画する
			if (m_pScene[nCntLayer][nCntScene]->m_bDraw)
			{
				// 描画
				m_pScene[nCntLayer][nCntScene]->Draw();
			}
		}
	}
}

// ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// シーン情報取得(レイヤー・クラス指定)
// ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CScene * CScene::GetScene(
	LAYER const &layer,												// レイヤー
	int const &nCntScene,											// カウントシーン
	CScene & p_csScene										// クラス型情報
)
{
	// カウントが上限を越していたらNULLとエラーを返す
	if (nCntScene >= (signed)m_pScene[layer].size())
	{
#ifdef _DEBUG
		CCalculation::Messanger("CScene::オブジェクト取得失敗(カウントオーバー)");
#endif // _DEBUG
		return NULL;
	}
	// 情報がヌルでなければNULLとエラーを返す
	if (m_pScene[layer][nCntScene] == NULL)
	{
#ifdef _DEBUG
		CCalculation::Messanger("CScene::オブジェクト取得失敗(要素削除の失敗)");
#endif // _DEBUG
		return NULL;
	}
	// クラス型比較
	if (typeid(p_csScene) == typeid(*m_pScene[layer][nCntScene]))
	{
		// 情報を返す
		return m_pScene[layer][nCntScene];
	}
	// ヌルを返す
	return NULL;
}

// ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// シーン情報取得(レイヤー指定)
// ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CScene * CScene::GetScene(
	LAYER const &layer,												// レイヤー
	int const &nCntScene											// カウントシーン
)
{
	// カウントが上限を越していたらNULLとエラーを返す
	if (nCntScene >= (signed)m_pScene[layer].size())
	{
#ifdef _DEBUG
		CCalculation::Messanger("CScene::オブジェクト取得失敗(カウントオーバー)");
#endif // _DEBUG
		return NULL;
	}
	// 情報がヌルでなければNULLとエラーを返す
	if (m_pScene[layer][nCntScene] == NULL)
	{
#ifdef _DEBUG
		CCalculation::Messanger("CScene::オブジェクト取得失敗(要素削除の失敗)");
#endif // _DEBUG
		return NULL;
	}
	// 情報を返す
	return m_pScene[layer][nCntScene];
}

// ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// シーンの静止設定
// ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
void CScene::UpdateStop(
	bool const &bStop,	// 静止するかしないか
	int const &nMaxStop	// 最大静止時間
)
{
	m_sta_bStop = bStop;
	m_nMaxStop = nMaxStop;
	m_nCntStop = 0;
}

// ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// シーン管理設定
// ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
void CScene::ManageSetting(LAYER const &layer)
{
	// シーン情報を格納する
	m_pScene[layer].emplace_back(this);
	// キャパシティーを現在のサイズの値にする
	m_pScene[layer].shrink_to_fit();

}

// ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// オブジェクトの破棄
// ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
void CScene::Release(void)
{
	// 死亡フラグが立った
	m_bDeadFrag = true;
}

// ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// 死亡フラグが立ったものをリリース処理
// ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
void CScene::DeadFragAll(void)
{
	for (int nCntLayer = 0; nCntLayer < LAYER_MAX; nCntLayer++)
	{
		for (int nCntScene = 0; nCntScene < (signed)m_pScene[nCntLayer].size(); nCntScene++)
		{
			// 死亡フラグが立っているとき
			if (m_pScene[nCntLayer][nCntScene]->m_bDeadFrag == true)
			{
				// 終了処理
				m_pScene[nCntLayer][nCntScene]->Uninit();
				// メモリ開放
				delete m_pScene[nCntLayer][nCntScene];
				// ヌル代入
				m_pScene[nCntLayer][nCntScene] = NULL;
				// 要素を削除
				m_pScene[nCntLayer].erase(m_pScene[nCntLayer].begin() + nCntScene);
				// キャパシティーを現在のサイズの値にする
				m_pScene[nCntLayer].shrink_to_fit();
				// カウントダウン
				nCntScene--;
			}
		}
	}
}
