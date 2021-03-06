//=============================================================================
//
// ランキングの処理 [ranking.h]
// Author : Ryouma Inoue
//
//=============================================================================
#ifndef _RANKING_H_
#define _RANKING_H_

#include "main.h"

//=============================================================================
// 前方宣言	( ポインタだけなら使える )
//=============================================================================


//=============================================================================
// 管理クラス
//=============================================================================
class CRanking
{
public:

	CRanking();													// コンストラクタ
	~CRanking();													// デストラクタ

	HRESULT Init();												// 初期化
	void	Uninit(void);										// 終了
	void	Update(void);										// 更新
	void	Draw(void);											// 描画

	static  CRanking		*Create(void);						// ランキングの生成

private:
};
#endif