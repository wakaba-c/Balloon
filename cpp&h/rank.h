// ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//
// 順位表示処理 [player.h]
// Author : KOKI NISHIYAMA
//
// ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#ifndef _RANK_H_
#define _RANK_H_

#define _CRT_SECURE_NO_WARNINGS

// ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// インクルードファイル
// ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#include "scene_three.h"

// ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// 前方宣言
// ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// クラス
// ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
class CRank : public CScene_THREE
{
public:
	/* 関数 */
	CRank();
	~CRank();
	void Init(void);
	void Uninit(void);
	void Update(void);
	void Draw(void);

 	static CRank *Create(void);

#ifdef _DEBUG
	void Debug(void);
#endif // _DEBUG
	static HRESULT Load(void);			// 読み込み
	static void UnLoad(void);			// UnLoadする

protected:
private:
	/* 構造体 */
	/* 関数 */
	/* 変数 */
};
#endif
