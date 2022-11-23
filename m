Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3066FC4332F
	for <linux-phy@archiver.kernel.org>; Wed, 23 Nov 2022 07:49:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C/T74+xkjlwzkPurK0vCSE8R3EslpD2TCzHyrZUM9mI=; b=n7C4RksbdKaV3r
	JH6YIhv2btBdsmi822GM/A2W2z/Wm53TGgRiU2PBFDicaCWMIMhHPMJcn0DuzwnyWNajBn/i6zvkm
	ULM8N5oQp+wVYRz1xJPbsCnGG2GCDnFuq/2Z5UysUe/8cMs3x6NmedMQDjOTnusl7gea9Hvlq0uXA
	5dlgXu4NftDEG3ThZihOr0B6XoHgxvhfa0v+WVDmjfnmSxAcfMJuYRzu/gaOp7bohUaG3/FRKhG5J
	CGQ4pbOX/mUHB2CLlQJ8RPVYR0RvVzzWzgllbxffV4bOlwcXt0iVSHqdFVmNwjMCr5eo9t0nDudl6
	slEomsyyOB6EV7TrnAig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxkVQ-00FJJY-G6; Wed, 23 Nov 2022 07:49:16 +0000
Received: from mail-pj1-x102f.google.com ([2607:f8b0:4864:20::102f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxkVN-00FJHm-BB
	for linux-phy@lists.infradead.org; Wed, 23 Nov 2022 07:49:14 +0000
Received: by mail-pj1-x102f.google.com with SMTP id k5so15235675pjo.5
        for <linux-phy@lists.infradead.org>; Tue, 22 Nov 2022 23:49:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c56xjSGwfmMkQ772Tv3sbW08SSFT7wB9ddz0u8vdom0=;
        b=li29VgAjITZO6SGICTr8jhTQdZaqyt3QloHToZFrlSGFlR52juA/aWYv5sW73RWZ8a
         cAdXa34eBmfA6Z+P0dn2seGG0LQouJYhQIXDBGhUOatQU0m8/Dzhbpet9+3aEsQ7R7jA
         lgTgp4nepX26Wwj9nfQcVSCZKWc2H4Cemu2XXEMVhQt3o/NHJNB8S36lU8NG5b9CkYmj
         2aRXl5legESQs5vpgUmyFL3rp8x/BvWNdI65+nN0FOKu4v3npUhNFbvqAD1nqyr4gxks
         bBodox4aEHDxBZuwSi2BzlaAtoOLg3iryZVh0bAeTd9Z7xPvTyvYJ3lWiZYo0P7zjnGp
         5S8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=c56xjSGwfmMkQ772Tv3sbW08SSFT7wB9ddz0u8vdom0=;
        b=UqLswzD08HS+/o8Eka9QfE+jjjJk+rCN9ssZYwfH1BYyckDNgVFedUeAsnbNewGci/
         N93gPfx16hMRkGFGflw0rFSveBvyjZr15kS34/79qkWIheN2gEePJSejWnRfQBrnCDsR
         aE7jdToaF+ojZt8ubglUosm3sV5tNyIguUpg9vddIsCIM0epdMiw41gypLU5jat5wVb6
         jIddUETjrxeT++gK2RhmggwLd86zOzF0MzoEYkWnM6PTgk/vOuiKA5fZqZuiFTWxrPvb
         snrqd1TXyNxtnq4Ey40xceyZYKhyDvAVjGsm/FAV60ECXcziUp0IdmaR3QPi4VKhlyXV
         n8dA==
X-Gm-Message-State: ANoB5pkArWmJkqCMcsy0NiMk3ujuFl3dmgo1vN+RjQ3yKR1lt8g/DISh
	+5KluUPAqO3r4c+f9pMz6UMj
X-Google-Smtp-Source: AA0mqf7NTKwctMv+R4DVCUMIJsdTpjLzt1ZHzlUtNiQ1vtiHoKHPf9Spa1heVuWusQhxhHryUQ35fQ==
X-Received: by 2002:a17:902:cf4b:b0:186:7a1d:b6ee with SMTP id e11-20020a170902cf4b00b001867a1db6eemr12532417plg.67.1669189751898;
        Tue, 22 Nov 2022 23:49:11 -0800 (PST)
Received: from localhost.localdomain ([117.202.191.0])
        by smtp.gmail.com with ESMTPSA id s16-20020a170902a51000b001869f2120a5sm13334059plq.34.2022.11.22.23.49.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Nov 2022 23:49:11 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: martin.petersen@oracle.com,
	jejb@linux.ibm.com,
	andersson@kernel.org,
	vkoul@kernel.org
Cc: quic_cang@quicinc.com,
	quic_asutoshd@quicinc.com,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-scsi@vger.kernel.org,
	dmitry.baryshkov@linaro.org,
	ahalaney@redhat.com,
	abel.vesa@linaro.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v3 06/20] phy: qcom-qmp-ufs: Move HS Rate B register setting to tbls_hs_b
Date: Wed, 23 Nov 2022 13:18:12 +0530
Message-Id: <20221123074826.95369-7-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221123074826.95369-1-manivannan.sadhasivam@linaro.org>
References: <20221123074826.95369-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221122_234913_403743_BC78C2FF 
X-CRM114-Status: GOOD (  10.88  )
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

Since now there is support for configuring the HS Rate B mode properly,
let's move the register setting to tbls_hs_b struct for all SoCs.

This allows the PHY to be configured in Rate A initially and then in
Rate B if requested by the UFS driver.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 33 +++++++++++++++++++++----
 1 file changed, 28 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index 1b6e76bf82e5..f6a962df9df1 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -228,8 +228,9 @@ static const struct qmp_phy_init_tbl sm6115_ufsphy_serdes[] = {
 	QMP_PHY_INIT_CFG(QSERDES_COM_BG_TRIM, 0x0f),
 	QMP_PHY_INIT_CFG(QSERDES_COM_VCO_TUNE_INITVAL1, 0xff),
 	QMP_PHY_INIT_CFG(QSERDES_COM_VCO_TUNE_INITVAL2, 0x00),
+};
 
-	/* Rate B */
+static const struct qmp_phy_init_tbl sm6115_ufsphy_hs_b_serdes[] = {
 	QMP_PHY_INIT_CFG(QSERDES_COM_VCO_TUNE_MAP, 0x44),
 };
 
@@ -305,8 +306,9 @@ static const struct qmp_phy_init_tbl sdm845_ufsphy_serdes[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V3_COM_VCO_TUNE2_MODE1, 0x00),
 	QMP_PHY_INIT_CFG(QSERDES_V3_COM_LOCK_CMP1_MODE1, 0x32),
 	QMP_PHY_INIT_CFG(QSERDES_V3_COM_LOCK_CMP2_MODE1, 0x0f),
+};
 
-	/* Rate B */
+static const struct qmp_phy_init_tbl sdm845_ufsphy_hs_b_serdes[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V3_COM_VCO_TUNE_MAP, 0x44),
 };
 
@@ -371,8 +373,9 @@ static const struct qmp_phy_init_tbl sm8150_ufsphy_serdes[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V4_COM_LOCK_CMP2_MODE1, 0x0f),
 	QMP_PHY_INIT_CFG(QSERDES_V4_COM_BIN_VCOCAL_CMP_CODE1_MODE1, 0xdd),
 	QMP_PHY_INIT_CFG(QSERDES_V4_COM_BIN_VCOCAL_CMP_CODE2_MODE1, 0x23),
+};
 
-	/* Rate B */
+static const struct qmp_phy_init_tbl sm8150_ufsphy_hs_b_serdes[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V4_COM_VCO_TUNE_MAP, 0x06),
 };
 
@@ -420,7 +423,6 @@ static const struct qmp_phy_init_tbl sm8150_ufsphy_rx[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_10_HIGH2, 0xc8),
 	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_10_HIGH3, 0x3b),
 	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_10_HIGH4, 0xb1),
-
 };
 
 static const struct qmp_phy_init_tbl sm8150_ufsphy_pcs[] = {
@@ -458,8 +460,9 @@ static const struct qmp_phy_init_tbl sm8350_ufsphy_serdes[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V5_COM_LOCK_CMP2_MODE1, 0x1e),
 	QMP_PHY_INIT_CFG(QSERDES_V5_COM_BIN_VCOCAL_CMP_CODE1_MODE1, 0xdd),
 	QMP_PHY_INIT_CFG(QSERDES_V5_COM_BIN_VCOCAL_CMP_CODE2_MODE1, 0x23),
+};
 
-	/* Rate B */
+static const struct qmp_phy_init_tbl sm8350_ufsphy_hs_b_serdes[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V5_COM_VCO_TUNE_MAP, 0x06),
 };
 
@@ -712,6 +715,10 @@ static const struct qmp_phy_cfg sdm845_ufsphy_cfg = {
 		.pcs		= sdm845_ufsphy_pcs,
 		.pcs_num	= ARRAY_SIZE(sdm845_ufsphy_pcs),
 	},
+	.tbls_hs_b = {
+		.serdes		= sdm845_ufsphy_hs_b_serdes,
+		.serdes_num	= ARRAY_SIZE(sdm845_ufsphy_hs_b_serdes),
+	},
 	.clk_list		= sdm845_ufs_phy_clk_l,
 	.num_clks		= ARRAY_SIZE(sdm845_ufs_phy_clk_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -738,6 +745,10 @@ static const struct qmp_phy_cfg sm6115_ufsphy_cfg = {
 		.pcs		= sm6115_ufsphy_pcs,
 		.pcs_num	= ARRAY_SIZE(sm6115_ufsphy_pcs),
 	},
+	.tbls_hs_b = {
+		.serdes		= sm6115_ufsphy_hs_b_serdes,
+		.serdes_num	= ARRAY_SIZE(sm6115_ufsphy_hs_b_serdes),
+	},
 	.clk_list		= sdm845_ufs_phy_clk_l,
 	.num_clks		= ARRAY_SIZE(sdm845_ufs_phy_clk_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -763,6 +774,10 @@ static const struct qmp_phy_cfg sm8150_ufsphy_cfg = {
 		.pcs		= sm8150_ufsphy_pcs,
 		.pcs_num	= ARRAY_SIZE(sm8150_ufsphy_pcs),
 	},
+	.tbls_hs_b = {
+		.serdes		= sm8150_ufsphy_hs_b_serdes,
+		.serdes_num	= ARRAY_SIZE(sm8150_ufsphy_hs_b_serdes),
+	},
 	.clk_list		= sdm845_ufs_phy_clk_l,
 	.num_clks		= ARRAY_SIZE(sdm845_ufs_phy_clk_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -787,6 +802,10 @@ static const struct qmp_phy_cfg sm8350_ufsphy_cfg = {
 		.pcs		= sm8350_ufsphy_pcs,
 		.pcs_num	= ARRAY_SIZE(sm8350_ufsphy_pcs),
 	},
+	.tbls_hs_b = {
+		.serdes		= sm8350_ufsphy_hs_b_serdes,
+		.serdes_num	= ARRAY_SIZE(sm8350_ufsphy_hs_b_serdes),
+	},
 	.clk_list		= sdm845_ufs_phy_clk_l,
 	.num_clks		= ARRAY_SIZE(sdm845_ufs_phy_clk_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -811,6 +830,10 @@ static const struct qmp_phy_cfg sm8450_ufsphy_cfg = {
 		.pcs		= sm8350_ufsphy_pcs,
 		.pcs_num	= ARRAY_SIZE(sm8350_ufsphy_pcs),
 	},
+	.tbls_hs_b = {
+		.serdes		= sm8350_ufsphy_hs_b_serdes,
+		.serdes_num	= ARRAY_SIZE(sm8350_ufsphy_hs_b_serdes),
+	},
 	.clk_list		= sm8450_ufs_phy_clk_l,
 	.num_clks		= ARRAY_SIZE(sm8450_ufs_phy_clk_l),
 	.vreg_list		= qmp_phy_vreg_l,
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
