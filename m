Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C3B4C636D6
	for <linux-phy@archiver.kernel.org>; Wed, 22 Feb 2023 15:34:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5nBE5wNIK5kQjC4l2B3DnHa4TlUm/ccFmn8hRmkuCPk=; b=AMs2vClUJ1UUqe
	wP2o7loIE6Znp9CaUY/UTGpYoPajBqfFODG6PLhV6bwidcI6rZ4njLIK+hEx1OhRdQv6jQLO/wak1
	/PyBxXd/4ZgpaT3qfQVQlnPrS3BJ/uPyufyF5GqV6i93SFEZRr8joXLvxVZi6uwLZL7iZmfIXjBpm
	n+M6AclDLgR5h3AcbpfwBSEb5tiE2lUlBeozoWyKNkLZIrYms9GWm2TmpaH0ycMD0Y3KNxAPkFJSP
	a6kbSCF4Fk613cnql+G+qAmAW262T1xZaVMrrQfhoEj+SHMup2iMd786jAJr8fKwuuXVHdu9/ibMh
	BYAJotknXHnZ+JFGzlXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUr84-00Csk3-HL; Wed, 22 Feb 2023 15:34:00 +0000
Received: from mail-pj1-x1029.google.com ([2607:f8b0:4864:20::1029])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUr80-00Csi3-9W
	for linux-phy@lists.infradead.org; Wed, 22 Feb 2023 15:33:59 +0000
Received: by mail-pj1-x1029.google.com with SMTP id pt11so10002037pjb.1
        for <linux-phy@lists.infradead.org>; Wed, 22 Feb 2023 07:33:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RqG9xtTBiKFFqs7nudeShHVEmZgSa7/qeDhwUVoJ0gI=;
        b=YqOgmH/92BWDJ43zxxahEmhM/3mAYmnI6cdgrfMWf1SiZQTRPDDUICuSv6JmVCLpQX
         Ir8CDKGTQVmpXPpkDbiHRIfDzAbqpMpC7zXnXkA5l6ZdK9xfyLs3+K5bT6CZpUl/cEch
         t6E1mi4Hk+YMi5iSXO9ZNe89qIasGKTPMJDMQbd6/kf1JKHK2LBNWfQDYb+yRPgeSs+Q
         D6lgcTrFSbIeTkgS/qs0QHAbg6gqEUu7g0+yBKA3JrOyhmBXKRo7YVS/3EvW55RAbDsB
         vdWIA80MYx6v65gNv60uTlWk8CUMzkW/gAWIMishs2opVJZmlu1T4zfKM+7NN2/7EsTv
         3bEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RqG9xtTBiKFFqs7nudeShHVEmZgSa7/qeDhwUVoJ0gI=;
        b=bhXw/r4Og1UkSUnXGPB1VdH4h8YvECoFlJCifOQ3obTjMC3SLZlaia1L1asPL16DWI
         86ZMiixuRg15lWFC2Fplgl0u5BQMVtSbh23Uz7Ojx2G1MyA2XxK28SyC3EU6fFM9vA6V
         RojBqrql6azMD+KD7ZOVTz8NmMDKdqOF1PcDh5eFUa85vNar6ZI35eZXgMuK1riibN22
         oIM9L8Yii46Bed4MXVFbQzrvbQD+ASEX/jMPbZPoDCZ/ctlAzCLYszwYw8BY2ViooSAD
         h5bHuf+fmfCMF002taWq5nbieu0OrilqWtR5xYdgj/cBnI9GPac1AIksfw33UlF79kfO
         hdtg==
X-Gm-Message-State: AO0yUKWfDx9d3ppcLBrS0BXNz5l92G6PRsdNqvfhx2s3XXjFBrDwE+Zj
	gB5zFJO8FAJVynrfWcn+cKvN
X-Google-Smtp-Source: AK7set9XYmm8vI9O37l/Qf9lKiFrBKryqh30IwYRA6xiWoa1/0bmOU10jLnFsZLm+bfb2alXxkR2cA==
X-Received: by 2002:a05:6a20:429d:b0:b9:6932:7d71 with SMTP id o29-20020a056a20429d00b000b969327d71mr11445271pzj.26.1677080034856;
        Wed, 22 Feb 2023 07:33:54 -0800 (PST)
Received: from localhost.localdomain ([117.216.123.15])
        by smtp.gmail.com with ESMTPSA id f15-20020aa78b0f000000b005ac419804d3sm5222482pfd.186.2023.02.22.07.33.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Feb 2023 07:33:54 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: andersson@kernel.org,
	lpieralisi@kernel.org,
	robh@kernel.org,
	kw@linux.com,
	krzysztof.kozlowski+dt@linaro.org,
	vkoul@kernel.org
Cc: konrad.dybcio@linaro.org,
	bhelgaas@google.com,
	kishon@kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 10/11] phy: qcom-qmp-pcie: Add RC init sequence for SDX55
Date: Wed, 22 Feb 2023 21:02:50 +0530
Message-Id: <20230222153251.254492-11-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230222153251.254492-1-manivannan.sadhasivam@linaro.org>
References: <20230222153251.254492-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230222_073356_349258_0C2BDDE5 
X-CRM114-Status: GOOD (  11.17  )
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

Add PCIe RC init sequence making use of the common init sequence. The RC
mode additionally requires REFCLK_DRV_DSBL bit to set during powerup and
powerdown.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 49 ++++++++++++++++++-
 .../qualcomm/phy-qcom-qmp-pcs-pcie-v4_20.h    |  2 +
 2 files changed, 50 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index f526f73f76ef..9d92facd47a6 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -1138,6 +1138,41 @@ static const struct qmp_phy_init_tbl sdx55_qmp_pcie_serdes_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V4_COM_BIN_VCOCAL_HSCLK_SEL, 0x22),
 };
 
+static const struct qmp_phy_init_tbl sdx55_qmp_pcie_rc_serdes_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_SSC_EN_CENTER, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_SSC_PER1, 0x31),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_SSC_PER2, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_SSC_STEP_SIZE1_MODE0, 0xce),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_SSC_STEP_SIZE2_MODE0, 0x0b),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_SSC_STEP_SIZE1_MODE1, 0x97),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_SSC_STEP_SIZE2_MODE1, 0x0c),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_CLK_ENABLE1, 0x90),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_CLK_EP_DIV_MODE0, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_CLK_EP_DIV_MODE1, 0x10),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_CP_CTRL_MODE0, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_CP_CTRL_MODE1, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_PLL_RCTRL_MODE0, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_PLL_RCTRL_MODE1, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_PLL_CCTRL_MODE0, 0x36),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_PLL_CCTRL_MODE1, 0x36),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_SYSCLK_EN_SEL, 0x08),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_LOCK_CMP1_MODE0, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_LOCK_CMP2_MODE0, 0x0d),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_LOCK_CMP1_MODE1, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_LOCK_CMP2_MODE1, 0x1a),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_DEC_START_MODE0, 0xc3),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_DEC_START_MODE1, 0xd0),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_DIV_FRAC_START3_MODE0, 0x05),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_DIV_FRAC_START1_MODE1, 0x55),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_DIV_FRAC_START2_MODE1, 0x55),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_DIV_FRAC_START3_MODE1, 0x05),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_CLK_SELECT, 0x34),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_BIN_VCOCAL_CMP_CODE1_MODE0, 0xca),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_BIN_VCOCAL_CMP_CODE2_MODE0, 0x1e),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_BIN_VCOCAL_CMP_CODE1_MODE1, 0xd8),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_BIN_VCOCAL_CMP_CODE2_MODE1, 0x20),
+};
+
 static const struct qmp_phy_init_tbl sdx55_qmp_pcie_ep_serdes_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V4_COM_BG_TIMER, 0x02),
 	QMP_PHY_INIT_CFG(QSERDES_V4_COM_SYS_CLK_CTRL, 0x07),
@@ -1217,6 +1252,11 @@ static const struct qmp_phy_init_tbl sdx55_qmp_pcie_pcs_misc_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V4_20_PCS_PCIE_G4_EQ_CONFIG5, 0x02),
 };
 
+static const struct qmp_phy_init_tbl sdx55_qmp_pcie_rc_pcs_misc_tbl[] = {
+	QMP_PHY_INIT_CFG(QPHY_V4_20_PCS_PCIE_ENDPOINT_REFCLK_DRIVE, 0xc1),
+	QMP_PHY_INIT_CFG(QPHY_V4_20_PCS_PCIE_OSC_DTCT_ACTIONS, 0x00),
+};
+
 static const struct qmp_phy_init_tbl sdx55_qmp_pcie_ep_pcs_misc_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V4_20_PCS_LANE1_INSIG_SW_CTRL2, 0x00),
 	QMP_PHY_INIT_CFG(QPHY_V4_20_PCS_LANE1_INSIG_MX_CTRL2, 0x00),
@@ -2010,6 +2050,13 @@ static const struct qmp_phy_cfg sdx55_qmp_pciephy_cfg = {
 		.pcs_misc_num	= ARRAY_SIZE(sdx55_qmp_pcie_pcs_misc_tbl),
 	},
 
+	.tbls_rc = &(const struct qmp_phy_cfg_tbls) {
+		.serdes		= sdx55_qmp_pcie_rc_serdes_tbl,
+		.serdes_num	= ARRAY_SIZE(sdx55_qmp_pcie_rc_serdes_tbl),
+		.pcs_misc	= sdx55_qmp_pcie_rc_pcs_misc_tbl,
+		.pcs_misc_num	= ARRAY_SIZE(sdx55_qmp_pcie_rc_pcs_misc_tbl),
+	},
+
 	.tbls_ep = &(const struct qmp_phy_cfg_tbls) {
 		.serdes		= sdx55_qmp_pcie_ep_serdes_tbl,
 		.serdes_num	= ARRAY_SIZE(sdx55_qmp_pcie_ep_serdes_tbl),
@@ -2025,7 +2072,7 @@ static const struct qmp_phy_cfg sdx55_qmp_pciephy_cfg = {
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
 	.regs			= sm8250_pcie_regs_layout,
 
-	.pwrdn_ctrl		= SW_PWRDN,
+	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
 	.phy_status		= PHYSTATUS_4_20,
 };
 
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v4_20.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v4_20.h
index af273602998e..ac872a9eff9a 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v4_20.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v4_20.h
@@ -6,6 +6,8 @@
 #ifndef QCOM_PHY_QMP_PCS_PCIE_V4_20_H_
 #define QCOM_PHY_QMP_PCS_PCIE_V4_20_H_
 
+#define QPHY_V4_20_PCS_PCIE_ENDPOINT_REFCLK_DRIVE	0x01c
+#define QPHY_V4_20_PCS_PCIE_OSC_DTCT_ACTIONS		0x090
 #define QPHY_V4_20_PCS_PCIE_EQ_CONFIG1			0x0a0
 #define QPHY_V4_20_PCS_PCIE_G3_RXEQEVAL_TIME		0x0f0
 #define QPHY_V4_20_PCS_PCIE_G4_RXEQEVAL_TIME		0x0f4
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
