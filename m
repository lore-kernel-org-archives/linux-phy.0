Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CDF8CC4321E
	for <linux-phy@archiver.kernel.org>; Thu,  1 Dec 2022 17:44:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2AbqMlj6YbSBwHK7NnsANpPpnoSUDG3Ew2dz1mVfJXY=; b=Ze9H8aCQacMzJL
	sCb1urxqrK2RWvsQO6b9DtGnyuRg63DBYbKIH1ZuTvAn0XV7znBUQvXE8x9jCfscMHFQGa3IAMIIu
	FFFYpTvSozQ1trdRsugYPrul0WaC/mvrf7Dx0NM9SMHatXRmHqJtTx7KIR5jtt1y0boKm7cZR4KFI
	H3Uos9uXqOpUFZq9ibCIWcvsjezctWdrz2M8YmZP+Y2mlIwy8GQTBBXSkaHIZqJwDJcQQgJHl0WU0
	i5V/t2sHKNPY19oMKFDvitY9or9u4976oLFwWxHIWuf+/GwAHpUhB+mSI5sZmtMx6vBYRk4YajGTg
	KEdynE/IrqD5vGF9FRuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0nc0-0099Fd-2J; Thu, 01 Dec 2022 17:44:40 +0000
Received: from mail-pg1-x532.google.com ([2607:f8b0:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0nbK-0098jW-Dk
	for linux-phy@lists.infradead.org; Thu, 01 Dec 2022 17:44:04 +0000
Received: by mail-pg1-x532.google.com with SMTP id 136so2291616pga.1
        for <linux-phy@lists.infradead.org>; Thu, 01 Dec 2022 09:43:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=K8Prfpr3oc2tLft1FOD4p/J5s4+OQsVjEgvPH1u5Vbs=;
        b=Xw9CRciIz53PZPdMk7lkngGz8gXxTKgi6VJujVpA67luXeOjEH/2Bhfz8v7TloPMtU
         VUWTn4Pbo2o4Wo2CwBdXsa3onvvCq911PhaV/9s2PlJsnhix61rND9ATpguMkwjF+Mjr
         tCySdweo9lKoCj2vU0Vb2CeHgOHE95omuq2YGkeuKjZYoWoSip6wZkkszXV9xal6EWXS
         WA7kqFEn4CcA/N6JoVxE7V6JIiYB1lT9g56pjT0FF3f6hNt+Ikmw49GV+Z5pS0OaDZ/+
         na8IPLlUswvt+4FBVlYybjuSF9Hri2vVxq3xEhWLDkoFZlYAVJ96055EqAjPpzkPGQ4f
         fQmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=K8Prfpr3oc2tLft1FOD4p/J5s4+OQsVjEgvPH1u5Vbs=;
        b=KFBQoig6EsL8/V3cSGHGnL0jpZlHAlI/Ovlukb0qW568LjPY2+HDt2Z2Nq5SofMDsQ
         evF7dB1JRZr1fv2sLLCobe2W/G6nlX5DjJ2/B/iPpdNvppaV5ZRfoEb9RxI8stiAoTRZ
         d2JoPQ23xQSClETKPVeBSxW7d+XufPDimLvCvNJ4AxxbwsxFWSCga5yJvZu027skc9+W
         +3xneCsKLFZ/CWiYxN37Qoc++g+bJXhkj9AMuYh5OcqG+ZVwjqKXdKryjS1VpgrrDmIC
         EEYg/oWlWRVM5Cm9IEk6gX3LhhDslwwUm0yQN/yH5lay6L8td7l4UEkpjz1rshQyLncp
         UnMA==
X-Gm-Message-State: ANoB5pkTk86glkWv+sbjtI2xjwaCuU5ZGNbZtZkaTyNNOBkJlzbEbwYW
	QSHv7TNBXg5hgEDsh5vztxMW
X-Google-Smtp-Source: AA0mqf7ZcWsFJiEynv852ZFY9E+pVMzD8VKR1Nz6Y6A/GC/SmqhJJWQjWydGIdHzqGqJHVXkd+hH8A==
X-Received: by 2002:aa7:8d88:0:b0:562:69d4:f9f3 with SMTP id i8-20020aa78d88000000b0056269d4f9f3mr49579586pfr.5.1669916635488;
        Thu, 01 Dec 2022 09:43:55 -0800 (PST)
Received: from localhost.localdomain ([220.158.159.39])
        by smtp.gmail.com with ESMTPSA id p4-20020a170902780400b0016d9b101413sm3898743pll.200.2022.12.01.09.43.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Dec 2022 09:43:54 -0800 (PST)
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
	alim.akhtar@samsung.com,
	avri.altman@wdc.com,
	bvanassche@acm.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v4 02/23] phy: qcom-qmp-ufs: Rename MSM8996 PHY definitions
Date: Thu,  1 Dec 2022 23:13:07 +0530
Message-Id: <20221201174328.870152-3-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221201174328.870152-1-manivannan.sadhasivam@linaro.org>
References: <20221201174328.870152-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221201_094402_777784_2D1E69B0 
X-CRM114-Status: GOOD (  11.68  )
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

Only MSM8996 is using "_ufs_" naming convention for PHY definitions instead
of "_ufsphy_" as like other SoCs. So to maintain the uniformity, let's
rename all of the definitions to use "_ufsphy_".

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index 20fcdbef8c77..35b77cd79e57 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -94,7 +94,7 @@ static const unsigned int sm8150_ufsphy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V4_PCS_UFS_POWER_DOWN_CONTROL,
 };
 
-static const struct qmp_phy_init_tbl msm8996_ufs_serdes[] = {
+static const struct qmp_phy_init_tbl msm8996_ufsphy_serdes[] = {
 	QMP_PHY_INIT_CFG(QSERDES_COM_CMN_CONFIG, 0x0e),
 	QMP_PHY_INIT_CFG(QSERDES_COM_SYSCLK_EN_SEL, 0xd7),
 	QMP_PHY_INIT_CFG(QSERDES_COM_CLK_SELECT, 0x30),
@@ -143,12 +143,12 @@ static const struct qmp_phy_init_tbl msm8996_ufs_serdes[] = {
 	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP3_MODE1, 0x00),
 };
 
-static const struct qmp_phy_init_tbl msm8996_ufs_tx[] = {
+static const struct qmp_phy_init_tbl msm8996_ufsphy_tx[] = {
 	QMP_PHY_INIT_CFG(QSERDES_TX_HIGHZ_TRANSCEIVEREN_BIAS_DRVR_EN, 0x45),
 	QMP_PHY_INIT_CFG(QSERDES_TX_LANE_MODE, 0x02),
 };
 
-static const struct qmp_phy_init_tbl msm8996_ufs_rx[] = {
+static const struct qmp_phy_init_tbl msm8996_ufsphy_rx[] = {
 	QMP_PHY_INIT_CFG(QSERDES_RX_SIGDET_LVL, 0x24),
 	QMP_PHY_INIT_CFG(QSERDES_RX_SIGDET_CNTRL, 0x02),
 	QMP_PHY_INIT_CFG(QSERDES_RX_RX_INTERFACE_MODE, 0x00),
@@ -629,15 +629,15 @@ static const struct qmp_ufs_offsets qmp_ufs_offsets_v5 = {
 	.rx2		= 0xa00,
 };
 
-static const struct qmp_phy_cfg msm8996_ufs_cfg = {
+static const struct qmp_phy_cfg msm8996_ufsphy_cfg = {
 	.lanes			= 1,
 
-	.serdes_tbl		= msm8996_ufs_serdes,
-	.serdes_tbl_num		= ARRAY_SIZE(msm8996_ufs_serdes),
-	.tx_tbl			= msm8996_ufs_tx,
-	.tx_tbl_num		= ARRAY_SIZE(msm8996_ufs_tx),
-	.rx_tbl			= msm8996_ufs_rx,
-	.rx_tbl_num		= ARRAY_SIZE(msm8996_ufs_rx),
+	.serdes_tbl		= msm8996_ufsphy_serdes,
+	.serdes_tbl_num		= ARRAY_SIZE(msm8996_ufsphy_serdes),
+	.tx_tbl			= msm8996_ufsphy_tx,
+	.tx_tbl_num		= ARRAY_SIZE(msm8996_ufsphy_tx),
+	.rx_tbl			= msm8996_ufsphy_rx,
+	.rx_tbl_num		= ARRAY_SIZE(msm8996_ufsphy_rx),
 
 	.clk_list		= msm8996_ufs_phy_clk_l,
 	.num_clks		= ARRAY_SIZE(msm8996_ufs_phy_clk_l),
@@ -1156,7 +1156,7 @@ static int qmp_ufs_probe(struct platform_device *pdev)
 static const struct of_device_id qmp_ufs_of_match_table[] = {
 	{
 		.compatible = "qcom,msm8996-qmp-ufs-phy",
-		.data = &msm8996_ufs_cfg,
+		.data = &msm8996_ufsphy_cfg,
 	}, {
 		.compatible = "qcom,msm8998-qmp-ufs-phy",
 		.data = &sdm845_ufsphy_cfg,
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
