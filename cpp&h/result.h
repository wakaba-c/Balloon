//=============================================================================
//
// リザルトの処理 [result.h]
// Author : Ryouma Inoue
//
//=============================================================================
#ifndef _RESULT_H_
#define _RESULT_H_

#include "main.h"

//=============================================================================
// 前方宣言	( ポインタだけなら使える )
//=============================================================================


//=============================================================================
// 管理クラス
//=============================================================================
class CResult
{
public:

	CResult();													// コンストラクタ
	~CResult();													// デストラクタ

	HRESULT Init();												// 初期化
	void	Uninit(void);										// 終了
	void	Update(void);										// 更新
	void	Draw(void);											// 描画

	static  CResult		*Create(void);							// リザルトの生成

private:
};
#endif
