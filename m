Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B856CC46467
	for <linux-phy@archiver.kernel.org>; Sat, 14 Jan 2023 07:10:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8WPgDnBPf5tXsFM5iK2x9T7zmZmG/i9doiO3dGBSaIU=; b=tosCcEI1NTcmb8
	unj1jX60O+F3vvlFac8o/bbF3ifTBByhcqHlgxieeHvnAZL7zVtSB2fAX/J6aLJsnRqt296nf8yep
	cPF14jZEqBno4FSH1qRD5dP3MotEkh6Lk/bJq5iviteihMmqDXl+nZz93xRB8yRMfVWVDSAk/gWIr
	8HCYBeCQ1UepQLDVXL7XAHfH+CQ/sAfColLeEbFE0UPdGenmYTqJunlXo02un73Pr524ipevg8xsU
	zspYZoLAuzk9cGHblA7rN5CfFEQ9iQyjfoATyKBfownFVDzS6WlFDd6NannqEQzQNGtbAUayam2Wx
	71FR1z4kP+uf+r1eP3Yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGagO-005O6e-JX; Sat, 14 Jan 2023 07:10:28 +0000
Received: from mail-pl1-x62c.google.com ([2607:f8b0:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGagL-005O5N-QY
	for linux-phy@lists.infradead.org; Sat, 14 Jan 2023 07:10:27 +0000
Received: by mail-pl1-x62c.google.com with SMTP id p24so25539950plw.11
        for <linux-phy@lists.infradead.org>; Fri, 13 Jan 2023 23:10:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1my+Ly+FdtcosfHyIpZcPo3UptFe/yXHtTG6Hbw8BdE=;
        b=e109sXnNdjXcjgCLrSEEcyu+tuWSVd4PN5QkiZZEDRhdcuQ7Ho0EIcsEu4yIvn4gnx
         XvEHJ7M5mUVV+2fX8E9x+V70GIf3uUMBB+gGwbSiRUuZ8OQj+k1HA9Y+MIbpnhgTonQi
         2q0buXs+WtL3CBVjdb2xQki38biLtUnTTcYSocA5sB4Tf6Zb1ZYZGZ4K/OyT5pHIPHah
         BamhPrxiant5wJtWu5MW4Api5g2ZX2YqhUfcEF+P7RA8LiLtQ7v1eYDgL+w2V3z9lacb
         7FMk7Leml2PMjp5L2nb9VXezvJo6pduQxYGJyZ4MRZjTeIrumWUKryOw2o7CCeCqxq/n
         O8eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1my+Ly+FdtcosfHyIpZcPo3UptFe/yXHtTG6Hbw8BdE=;
        b=L9NXXpn0v8nTBokD9KCOZlg7b1QH9qS+0KLsQWtncYUrUMBp8qS5J84n+mMaO69ZO3
         ZHorcu2Wv/k9jg8GtCis1KXC3Oy9ez1zsEwAB2stPEO5bfLgAVuQM9N2ayNDZpaBiomn
         VRk9XIm4wlhmCW7ZCXP64gYMQU/+LAPBExnziCqKkWu/bxguzf0SCUFDorS+tbxJuX9a
         vc3PXT3Z4fuBIr94xC911kPFeaNnjNVw432KJwjXX4XHed1qGyO3zp8tITRnLWpVanXe
         Gw1pGlu+xvZG99OluuIn+8ML3ckb6n3WzM3g/xNAs9tgs246tLTY2fxHtgxrP27WNg0P
         hriA==
X-Gm-Message-State: AFqh2korj0ZnO1ZMPd0lVH29MLae9oNVPmlfPIAWHX0xiTbOl3kQEBtT
	ktj1hIrp83Z6RiOqGHMkiTvj
X-Google-Smtp-Source: AMrXdXs6EAjcPF4M6Wqty9znidm8MXEEZ9RAmNBdzqta3QiAE6LgLsqh0GjuM62Wz4s7H3LFJr0PsQ==
X-Received: by 2002:a17:902:e3d2:b0:192:fd1e:a96c with SMTP id r18-20020a170902e3d200b00192fd1ea96cmr11716712ple.26.1673680224198;
        Fri, 13 Jan 2023 23:10:24 -0800 (PST)
Received: from localhost.localdomain ([220.158.159.156])
        by smtp.gmail.com with ESMTPSA id q10-20020a170902e30a00b00192a04bc620sm15225358plc.295.2023.01.13.23.10.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Jan 2023 23:10:23 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: vkoul@kernel.org
Cc: andersson@kernel.org,
	quic_cang@quicinc.com,
	quic_asutoshd@quicinc.com,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	dmitry.baryshkov@linaro.org,
	ahalaney@redhat.com,
	abel.vesa@linaro.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v6 02/12] phy: qcom-qmp-ufs: Rename MSM8996 PHY definitions
Date: Sat, 14 Jan 2023 12:39:59 +0530
Message-Id: <20230114071009.88102-3-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230114071009.88102-1-manivannan.sadhasivam@linaro.org>
References: <20230114071009.88102-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230113_231025_882826_7A6C7442 
X-CRM114-Status: GOOD (  11.49  )
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

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Tested-by: Andrew Halaney <ahalaney@redhat.com> # Qdrive3/sa8540p-ride
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index 30d098735040..5645637e7773 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -99,7 +99,7 @@ static const unsigned int ufsphy_v5_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V5_PCS_UFS_POWER_DOWN_CONTROL,
 };
 
-static const struct qmp_phy_init_tbl msm8996_ufs_serdes[] = {
+static const struct qmp_phy_init_tbl msm8996_ufsphy_serdes[] = {
 	QMP_PHY_INIT_CFG(QSERDES_COM_CMN_CONFIG, 0x0e),
 	QMP_PHY_INIT_CFG(QSERDES_COM_SYSCLK_EN_SEL, 0xd7),
 	QMP_PHY_INIT_CFG(QSERDES_COM_CLK_SELECT, 0x30),
@@ -148,12 +148,12 @@ static const struct qmp_phy_init_tbl msm8996_ufs_serdes[] = {
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
@@ -634,15 +634,15 @@ static const struct qmp_ufs_offsets qmp_ufs_offsets_v5 = {
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
@@ -1220,7 +1220,7 @@ static int qmp_ufs_probe(struct platform_device *pdev)
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
