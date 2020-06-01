// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//
// ���D�����̐���[balloon.h]
// Author : Koki Nishiyama
//
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#ifndef _BALLOON_H_
#define _BALLOON_H_	 // �t�@�C������������߂�

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//
// �C���N���[�h�t�@�C��
//
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#include "scene_X.h"
#include "model_info.h"

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//
// �}�N����`
//
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//
// �O���錾
//
// ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
class CCircleshadow;
class CScene_X;

// ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//
// �N���X
//
// ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
class CBalloon : public CScene
{
public:
	/* �֐� */
	CBalloon();
	~CBalloon();
	void Init(void);
	void Uninit(void);
	void Update(void);
	void Draw(void);
#ifdef _DEBUG
	void Debug(void);
#endif // _DEBUG
	// �s����ݒ�
	void SetMatrix(D3DXMATRIX * mtx);			// �s����ݒ�
	// ���D�̏���������
	void SetBiginBalloon(int const &nBringBalloon) { m_nBringBalloon = nBringBalloon; };
	// ���D�����Ă����ω�������(�㏸�E����)
	void SetBringBalloon(int const &nBringBalloon) { m_nBringBalloon += nBringBalloon; };
	// �o�����Ă��镗�D�̌���ω�������(�㏸�E����)
	void SetPopBalloon(int const &nPopBalloon = 1) { m_nPopBalloon += nPopBalloon; };
	// �O�ɏo���Ēu���镗�D�̍ő����ݒ�
	void SetPopMaxBalloom(int const &nPopMaxBaloon = 2);
	// ���D�𐶐�
	void CreateBalloon(void);
	// �V�[��X���擾
	CScene_X * GetSceneX(int const &nBalloon);	// �V�[��X�̏��擾
	// ���D�������Ă�������擾
	int const &GetBringBalloon(void) { return m_nBringBalloon; };
	// ���D���o�����Ă�������擾
	int const &GetPopBalloon(void) { return m_nPopBalloon; };
	// ���݂̕��D�̍ő�o�����̎擾
	int const &GetPopMaxBalloon(void) { return m_nMaxPopBalloon; };
	// ����
	static CBalloon * Create(
		D3DXMATRIX *mtx,							// �s��
		int const &nPopMaxBalloon					// ���D�̍ő�o����
	);
	// ���\�[�X���ǂݍ��ސݒ�
	static HRESULT Load(void);					// ���\�[�X���ǂݍ��ސݒ�
	// �ǂݍ��񂾃��\�[�X�����J������
	static void UnLoad(void);					// �ǂݍ��񂾃��\�[�X�����J������
protected:
private:
	/* �֐� */
	void BreakBalloon(int const &nCntBalloon);	// ���D������鏈��
	/* �ϐ� */
	vector<CScene_X *> m_apSceneX;				// �V�[��X���f�����
	D3DXMATRIX *m_mtx;							// �s����
	int m_nPopBalloon;							// ���ݏo�����Ă��镗�D�̌�
	int m_nBringBalloon;						// ���ݎ����Ă��镗�D�̌�
	int m_nMaxPopBalloon;						// �ő�o�����̌�
	float m_fAngleBalloon;						// ���D�̏o������p�x(�~���� * 2 / �ő�o����)
};		

#endif