// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//
// RectCollision処理の説明[rectcollision.cpp]
// Author : Koki Nishiyama
//
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//
// インクルードファイル
//
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#include "RectCollision.h"
#include "debugcollision.h"

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//
// マクロ定義
//
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//
// グローバル変数
//
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//
// 静的変数
//
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// コンストラクタ
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CRectCollision::CRectCollision() : CCollision::CCollision()
{
	// 初期化
}

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// 初期化処理
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
void CRectCollision::Init(void)
{
#ifdef _DEBUG
	// 矩形のデバッグ表示
	CDebugcollision::Create_Rect(m_pRectShape->Get_PPos(),m_pRectShape->GetSize());
#endif // _DEBUG
}

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// 終了処理
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
void CRectCollision::Uninit(void)
{
	// 矩形情報の開放
	m_pRectShape.reset();
}

#ifdef _DEBUG
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// 当たり判定処理(矩形と円柱)
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
void CRectCollision::Debug(void)
{
	/*
	CDebugproc::Print("----------矩形の当たり判定情報----------\n");
	CDebugproc::Print("最大座標(%.1f,%.1f,%.1f)\n",
		m_pRectShape->GetMax().x,
		m_pRectShape->GetMax().y,
		m_pRectShape->GetMax().z
		);
	CDebugproc::Print("最小座標(%.1f,%.1f,%.1f)\n",
		m_pRectShape->GetMin().x,
		m_pRectShape->GetMin().y,
		m_pRectShape->GetMin().z
		);
		*/
	CCollision::Debug();
}

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// あたり判定可視カの設定
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
void CRectCollision::Collision_Visible_Set(void)
{
}
#endif // _DEBUG

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// 当たり判定処理(矩形と矩形)
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
bool CRectCollision::Judg(CRectShape * const RectShape)
{
	return RectAndRect(this->m_pRectShape.get(),RectShape);
}

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// 当たり判定処理(矩形と球)
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
bool CRectCollision::Judg(CSphereShape * const SphereShape)
{
	return RectAndSphere(this->m_pRectShape.get(), SphereShape);
}

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// 当たり判定処理(矩形と円柱)
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
bool CRectCollision::Judg(CColumnShape * const ColumnShape)
{
	return RectAndColumn(this->m_pRectShape.get(), ColumnShape);
}

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// 作成処理(シーン管理)
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CRectCollision *CRectCollision::Create(
	D3DXVECTOR3 const size,
	D3DXVECTOR3 const offset,
	OBJTYPE const &obj,
	CScene * pOwner,
	CScene * pParent,
	bool const &bPush,
	bool const &bOpponent,
	D3DXVECTOR3 * pPos,
	D3DXVECTOR3 * pPosold
)
{
	// 変数宣言
	CRectCollision *pRectCollision;
	// メモリ確保
	pRectCollision = new CRectCollision();
	// 矩形の設定
	pRectCollision->m_pRectShape = std::move(CRectShape::Create(offset, size,bPush,bOpponent, pPos, pPosold));
	pRectCollision->SetObjectID(obj);
	pRectCollision->SetOwnScene(pOwner);
	pRectCollision->SetParent(pParent);
	// 親シーン情報NULLチェック
	if (pOwner != NULL)
	{
		// 移動情報を代入
		pRectCollision->m_pRectShape->m_pmove = pOwner->Scene_GetPMove();
	}
	// シーン管理設定
	pRectCollision->ManageSetting(CScene::LAYER_COLLISION);
	// 初期化処理
	pRectCollision->Init();
	return pRectCollision;
}

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// 作成処理(個人管理)
// ※返り値はstd::moveで受け取ること
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
std::unique_ptr<CRectCollision> CRectCollision::Create_Self(
	D3DXVECTOR3 const size,
	D3DXVECTOR3 const offset,
	OBJTYPE const &obj,
	CScene * pOwner,
	CScene * pParent,
	bool const &bPush,
	bool const &bOpponent,
	D3DXVECTOR3 * pPos,
	D3DXVECTOR3 * pPosold
)
{
	// 変数宣言
	std::unique_ptr<CRectCollision> pRectCollision(new CRectCollision);
	// 矩形の設定
	pRectCollision->m_pRectShape = std::move(CRectShape::Create(offset, size,bPush,bOpponent, pPos,pPosold));
	pRectCollision->SetObjectID(obj);
	pRectCollision->SetOwnScene(pOwner);
	pRectCollision->SetParent(pParent);
	// 親シーン情報NULLチェック
	if (pOwner != NULL)
	{
		// 移動情報を代入
		pRectCollision->m_pRectShape->m_pmove = pOwner->Scene_GetPMove();
	}
	// 初期化処理
	pRectCollision->Init();
	return pRectCollision;
}
