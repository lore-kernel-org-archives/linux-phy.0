Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8343BCA0FE5
	for <linux-phy@archiver.kernel.org>; Thu, 21 Aug 2025 13:19:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NltgVy/9eDmc3WWDaPrzqpT9gytkMVhJpj2Opuq51Jw=; b=0OY27XOPxFu8YU
	1c91w900t83ImTOQafvUDi8kq9J//ScOKLLd1ZqaCR+FoEVRaIJCL/FQEXfV6uqr6ILfuitXdbiZ7
	MTGt4RpOhkasRk/gOpj/JQVX5z0mSleNlzv/f//ez7krmSFu85c2/TJK8+ObyHKC1Iz4ynmYoxHuW
	yM1iYqZLyn2K39vOdyLJVDjVIHcL99f5zFI+o3nC7APOvQjC2UwAkeRVuX+N0iUH+WH5sTkcEMfGJ
	2LBxsmvmDVL5Ql9GoAOWmHLzqjV+XosNXgjbnAQgruSfni4QUSyMir0BlinvtM4JifMkoSNN+wRm2
	FxD9lfsjZ27Lc02yb3kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1up5C3-0000000H1jB-00uv;
	Thu, 21 Aug 2025 13:19:03 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1up1qs-0000000GUsG-0588
	for linux-phy@lists.infradead.org;
	Thu, 21 Aug 2025 09:44:59 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57L9bDcq015287
	for <linux-phy@lists.infradead.org>; Thu, 21 Aug 2025 09:44:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	pAjVIj9zZFihL1lRBahHpibojgWb7AeuAiH+1H/bqwE=; b=O4SimEevwrTiOB8/
	Q/CV5f89mpciz9a9uEDPJyNEn8VgtPq9vk+dKGBbBRSB1dIe4iLYwrUlBkmjskIG
	hk6wu8bY8y9gSp2RX85NjuPxbk/z94PtBw7SBru61U4Q+oYqVu5cN36pMaqauKPP
	lWS0SVIDkfWIb2/07PSxPsjt0uSvSm+XxiSiaXFd5aW9SuJu7ZYdlqNWnvBd7ZyV
	HvCnBn/wkpkYVIuq9vn7q0Qa59XoSIvDeSLtrfs4GXJ9A0NcAfAFyP/59NbL2DxE
	B5lyV8Xt5SmDYrIyTx/Fpw7JKEldqS53xz3nfT4x38PfkctgChymWsTpn81YYCJp
	llIGsQ==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n52cmyae-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 21 Aug 2025 09:44:57 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-76e54a1646aso988067b3a.3
        for <linux-phy@lists.infradead.org>; Thu, 21 Aug 2025 02:44:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755769497; x=1756374297;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pAjVIj9zZFihL1lRBahHpibojgWb7AeuAiH+1H/bqwE=;
        b=QVazdWDRpx1WFtj9um8vBOLFa8NnYqgV1EN+Ez3TMXD7alaKlXYfSM6w0YjM7UNkLh
         VmcRAjS246bHEPlGRacd5xAcv4iYv89Kd84IHvpTTApLRGyuDmNuUjD2lNnEpHFsM0KB
         uF49QgAUGtcNjPuqxmVuPj4LpX0UEzarboCbWwpvHdXouRLE5/5uKkoWpZVdj+rZXAM1
         elEk/YJl8ENKFmV68SINEU7/2JY+6pGSzD8OKpSmm98WgwNK3S8yUbG8DaeLuw53JBTH
         TPn44cszqp/8bcUyP8UqB+HQVGeaDMVcJMrev227IVKp1GJfLxWjoM1Iv4cvmjYzlkWA
         BsIA==
X-Forwarded-Encrypted: i=1; AJvYcCVDRhSBtVT0xLw3bYI6jgUZjglH3r4GfJdSz7z58nL3p3vNe+i6O+s9dRKG7Edyf9g/3eWJO3Zj7A4=@lists.infradead.org
X-Gm-Message-State: AOJu0YytbwTm9/g8Jl4Q3qirzgXresYpXaWmAqtWsZG0PiINvbQ07zpU
	lHtKS2i9PRUoz5laWTjR2x+ZSQsM2wD7A4v++YxZYgpleCVDshzTMn4AfdRsiIWenROT3t0r2Nb
	OrxewLeDNnvWYGUmy4+V32h6gB8zdVGZnIlhfwMZCMDzNohqUktrVl1cYb+IC3DwkEk6A
X-Gm-Gg: ASbGncuQiRU9DK88QdtWcnJZOTsC2gQNNZ+e4yVLfE9ZGaJNPHhnIHiVP+KmMiB+lQE
	6OmSgVjgMYsNpTSpxYSHb1RhNBTaZCDSbpD6HFfUHSgw/J4NPJ7rIDWnwfDtw1CLi6+slbjHva9
	6wUDadShtpL2N388Qltb+YujaYTlR8MYQMQDxf5GrRTVbgzBK8MKpUgU+0+/PKk8+J963aXUl+N
	Zs7oKfU5s1EtgVRXNI7BEfkKB+x0dgNYCP2wKvKR+KxUXAvUSUgS352HX6T4yro2aszidioYhmZ
	FV0xaOj7kp3dTSTAqhxCNK6qmbpEDuRqgi8pZZFioZnj9j/4czL/4VxMR3XOF/W0DAbgusZ9ow5
	Kq4NA3NvlGmfKFk0=
X-Received: by 2002:a05:6a21:6daa:b0:240:1a3a:d7bc with SMTP id adf61e73a8af0-2433074ea5dmr2729229637.3.1755769496722;
        Thu, 21 Aug 2025 02:44:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF/MpkzQr3ODF27xl6H7fzctS/steJVN2Lh7mmHLZCmX18Qc+LXKukq9LL+tR+L4vIIZsB+BQ==
X-Received: by 2002:a05:6a21:6daa:b0:240:1a3a:d7bc with SMTP id adf61e73a8af0-2433074ea5dmr2729197637.3.1755769496270;
        Thu, 21 Aug 2025 02:44:56 -0700 (PDT)
Received: from hu-wenbyao-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-324f23d853esm1426078a91.6.2025.08.21.02.44.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Aug 2025 02:44:55 -0700 (PDT)
From: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
Date: Thu, 21 Aug 2025 02:44:31 -0700
Subject: [PATCH v2 4/4] phy: qcom: qmp-pcie: Add support for Glymur PCIe
 Gen5x4 PHY
MIME-Version: 1.0
Message-Id: <20250821-glymur_pcie5-v2-4-cd516784ef20@oss.qualcomm.com>
References: <20250821-glymur_pcie5-v2-0-cd516784ef20@oss.qualcomm.com>
In-Reply-To: <20250821-glymur_pcie5-v2-0-cd516784ef20@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, Wenbin Yao <wenbin.yao@oss.qualcomm.com>,
        konrad.dybcio@oss.qualcomm.com, qiang.yu@oss.qualcomm.com,
        Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755769489; l=2773;
 i=wenbin.yao@oss.qualcomm.com; s=20250806; h=from:subject:message-id;
 bh=JCxdUH/Y1jTAi945mFOnkGKBqKReuEeHRFI8YpRwdqY=;
 b=6wWnoLAUA4kYP35QHTffBdgSdXwR5Lbvh/SsOGFjyL6WHXSpedpTdCm7nm6S/liahDEy/d2bs
 IHolWYfa9GbCqIKvGTxQIMxeN2g6PHyR0poVPj8UmQfDLMRioUouvFd
X-Developer-Key: i=wenbin.yao@oss.qualcomm.com; a=ed25519;
 pk=nBPq+51QejLSupTaJoOMvgFbXSyRVCJexMZ+bUTG5KU=
X-Proofpoint-GUID: sov_Ok1lvBr5zktLZPBcUsYgWDa2d1EP
X-Proofpoint-ORIG-GUID: sov_Ok1lvBr5zktLZPBcUsYgWDa2d1EP
X-Authority-Analysis: v=2.4 cv=Xpij+VF9 c=1 sm=1 tr=0 ts=68a6ea99 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=KvwrgBbZ-pJFRlqJlL4A:9 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX0R2pxLFq6z+3
 Sb6gG8PZAtlAoFgQSZ9dvHVuxG92yazhD37sUeKpF+PqLkfDG4O9dBfuT+gWfT1aqTpVJPBVigg
 pX7+65kL+UX+RY+9qa5JjvCspK6/B0dCPHlz/IX7LHMdEpWghXwjA6ZnB/1j0htCFRram4LvCBm
 saWWPHoQhmqpSXwGuivziYh+AyqOqkkuzeQ25OrqyRAAL3DVEaMZ+zHcSXE1bioOhNFh5pnwRys
 g6cDLx5Dwz6vc/nQ18GMVCz5UMbXiVRrnZeUOq2u5elZyKL2FY/9Rr3s6zvQ/0QrK4udIObD0BV
 xD37AaKaGjdGjOfeBWOaqRK7OIyhnBX9tps7c0BwSI9XNaMHt0mO7L85t0Rf3jyp/LDUsh6OS0E
 EGA6tCJHwvRfYGVchx8NkcjUmxdSeg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-21_02,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 lowpriorityscore=0 bulkscore=0 impostorscore=0
 adultscore=0 spamscore=0 phishscore=0 malwarescore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250821_024458_071756_260A5549 
X-CRM114-Status: GOOD (  13.84  )
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

From: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>

Add support for Gen5 x4 PCIe QMP PHY found on Glymur platform.

Signed-off-by: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
Signed-off-by: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 32 ++++++++++++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 95830dcfdec9b1f68fd55d1cc3c102985cfafcc1..fc67ee1e4a3c0c6f2ec23f51c09c3cc16df9aaf4 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -93,6 +93,12 @@ static const unsigned int pciephy_v6_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V6_PCS_POWER_DOWN_CONTROL,
 };
 
+static const unsigned int pciephy_v8_50_regs_layout[QPHY_LAYOUT_SIZE] = {
+	[QPHY_START_CTRL]		= QPHY_V8_50_PCS_START_CONTROL,
+	[QPHY_PCS_STATUS]		= QPHY_V8_50_PCS_STATUS1,
+	[QPHY_PCS_POWER_DOWN_CONTROL]   = QPHY_V8_50_PCS_POWER_DOWN_CONTROL,
+};
+
 static const struct qmp_phy_init_tbl msm8998_pcie_serdes_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V3_COM_BIAS_EN_CLKBUFLR_EN, 0x14),
 	QMP_PHY_INIT_CFG(QSERDES_V3_COM_CLK_SELECT, 0x30),
@@ -2963,6 +2969,7 @@ struct qmp_pcie_offsets {
 	u16 rx2;
 	u16 txz;
 	u16 rxz;
+	u16 txrxz;
 	u16 ln_shrd;
 };
 
@@ -3229,6 +3236,12 @@ static const struct qmp_pcie_offsets qmp_pcie_offsets_v6_30 = {
 	.ln_shrd	= 0x8000,
 };
 
+static const struct qmp_pcie_offsets qmp_pcie_offsets_v8_50 = {
+	.serdes     = 0x8000,
+	.pcs        = 0x9000,
+	.txrxz      = 0xd000,
+};
+
 static const struct qmp_phy_cfg ipq8074_pciephy_cfg = {
 	.lanes			= 1,
 
@@ -4258,6 +4271,22 @@ static const struct qmp_phy_cfg qmp_v6_gen4x4_pciephy_cfg = {
 	.phy_status             = PHYSTATUS_4_20,
 };
 
+static const struct qmp_phy_cfg glymur_qmp_gen5x4_pciephy_cfg = {
+	.lanes = 4,
+
+	.offsets        = &qmp_pcie_offsets_v8_50,
+
+	.reset_list     = sdm845_pciephy_reset_l,
+	.num_resets     = ARRAY_SIZE(sdm845_pciephy_reset_l),
+	.vreg_list      = sm8550_qmp_phy_vreg_l,
+	.num_vregs      = ARRAY_SIZE(sm8550_qmp_phy_vreg_l),
+
+	.regs           = pciephy_v8_50_regs_layout,
+
+	.pwrdn_ctrl     = SW_PWRDN | REFCLK_DRV_DSBL,
+	.phy_status     = PHYSTATUS_4_20,
+};
+
 static void qmp_pcie_init_port_b(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tbls *tbls)
 {
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
@@ -5114,6 +5143,9 @@ static const struct of_device_id qmp_pcie_of_match_table[] = {
 	}, {
 		.compatible = "qcom,x1p42100-qmp-gen4x4-pcie-phy",
 		.data = &qmp_v6_gen4x4_pciephy_cfg,
+	}, {
+		.compatible = "qcom,glymur-qmp-gen5x4-pcie-phy",
+		.data = &glymur_qmp_gen5x4_pciephy_cfg,
 	},
 	{ },
 };

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
