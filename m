Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B971C678D6
	for <linux-phy@archiver.kernel.org>; Sat, 14 Jan 2023 07:10:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UNiqz7R8ovbnxUj964MDA9zE74L3sjNQUBkuUBPp+v8=; b=uUEhPBJ7XAbygo
	AJfMDQGvW3RVm2hxQ+cS+jrvIbscZECVJFLQvcf0nc7/MbNOs/9KxyjH/EkqiIJ9qE0ae/IQaMwNF
	qKJw/Lq58wWfRUaItKjm40hb4GmPrhzVnIURxQjGkfTjBCCYFVjsITm3PVTIlCv22QL68fBXRV2he
	bVQm+i6UVFwnwyNnDwsWauNzBo0kK8Jws+jo9zOmwccn+8qOKty7NJqbb0XEjMayP5EptAgQYfzDo
	RMnnyxSXVdsEjCab5zppHPHJ+Jv6jXaRQKuCMC57377sc5u4gRwwM3lxAxRCdvk/acpR0vRCYYWxi
	kZAXbIu91i4f4e2y3lLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGagK-005O5F-C2; Sat, 14 Jan 2023 07:10:24 +0000
Received: from mail-pj1-x1033.google.com ([2607:f8b0:4864:20::1033])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGagG-005O4V-WD
	for linux-phy@lists.infradead.org; Sat, 14 Jan 2023 07:10:23 +0000
Received: by mail-pj1-x1033.google.com with SMTP id v13-20020a17090a6b0d00b00219c3be9830so26488797pjj.4
        for <linux-phy@lists.infradead.org>; Fri, 13 Jan 2023 23:10:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5rVjfkYb6kJqgDZ9JG4i2SJUUl3r5DoIs4tnSJUvhY4=;
        b=eZ5ExSwp3UQN9DBUZHKaI8TbK7kbsZ+5w9fWEXHl4IDEXwVSn3UUwcsSta6v8cEHVw
         JUxxVHRlsFh+O11XsYC31RAWos2mNkBkp1ZttJv8ueGE9GthkIuWBWttUVBr08ryDzez
         SV8D4ch0GT9jdm818IrtUrX08KFjzNNWOB3HtkpQci6CZmI/2bvMA2lE++MZzjRhfgRu
         Zz2hdh7yBKF7tPuOfZwwvYuqoF06jKH8FyBhd7cjVjpTlQEk6EbDCAWZ+Hc9G7z8y6w6
         cTGMQvnWGY9jKhz4Qdu20VivWgB7vwQwXCojf/3uchvnrMXe0A6jvW8OcFYYBe9I+U9M
         zyJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5rVjfkYb6kJqgDZ9JG4i2SJUUl3r5DoIs4tnSJUvhY4=;
        b=5iW2/JXLVB4Vxrzt83LyYUPEAEu+e2AxsEMgcyj6In7NX/vK3LUwxcCdgQez2+5/KY
         neUItzO3cXIgiFsQEyLyKTM6L/Rgs1hCKA1QTZafoM8AwEJ3y+Pa2hb3WaA513mnA7pF
         f4T/KrdgkNLHSucyDlAHGVKXA10ZcjPAWrmhGTa8AD4CEIn0Xlt+o3uAKb5XCdbHi4Bh
         f/HXGkvGGO+CbeZX+oKMiUvIdSLLVfdA+Zux/G/rIN5yvaKCTdtHudg1QkQdxOdsNEBR
         U7NBiuHm/0Hxac3NSsrrZ8rr0yY3bZxvr10pYqwJpunWqdWvJxTDR2UXlkkzyBk+VbvX
         IVaQ==
X-Gm-Message-State: AFqh2krJ01fsQlSgIhhro/IOsw8WZ5mO1+BHMm6zqygEedTphucOA7gX
	UBEVi3qXq6imjZcNE0X540tA
X-Google-Smtp-Source: AMrXdXtB3Ane56nYbzPEsjF5N5tirwXzXvFmA2/yKOS7Jeu+SCt8Z6DBggsJv9HkIudUZ1jwj01AvQ==
X-Received: by 2002:a17:902:ab1e:b0:193:17b7:7909 with SMTP id ik30-20020a170902ab1e00b0019317b77909mr25753372plb.5.1673680220169;
        Fri, 13 Jan 2023 23:10:20 -0800 (PST)
Received: from localhost.localdomain ([220.158.159.156])
        by smtp.gmail.com with ESMTPSA id q10-20020a170902e30a00b00192a04bc620sm15225358plc.295.2023.01.13.23.10.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Jan 2023 23:10:19 -0800 (PST)
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
Subject: [PATCH v6 01/12] phy: qcom-qmp-ufs: Remove _tbl suffix from qmp_phy_init_tbl definitions
Date: Sat, 14 Jan 2023 12:39:58 +0530
Message-Id: <20230114071009.88102-2-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230114071009.88102-1-manivannan.sadhasivam@linaro.org>
References: <20230114071009.88102-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230113_231021_060672_9232E51C 
X-CRM114-Status: UNSURE (   9.26  )
X-CRM114-Notice: Please train this message.
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

Following the other QMP PHY drivers like PCIe, let's remove the "_tbl"
suffix from the qmp_phy_init_tbl definitions. This helps in maintaining
the uniformity across all of the QMP PHY drivers.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Tested-by: Andrew Halaney <ahalaney@redhat.com> # Qdrive3/sa8540p-ride
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 146 ++++++++++++------------
 1 file changed, 73 insertions(+), 73 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index d2f3cba625b8..30d098735040 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -99,7 +99,7 @@ static const unsigned int ufsphy_v5_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V5_PCS_UFS_POWER_DOWN_CONTROL,
 };
 
-static const struct qmp_phy_init_tbl msm8996_ufs_serdes_tbl[] = {
+static const struct qmp_phy_init_tbl msm8996_ufs_serdes[] = {
 	QMP_PHY_INIT_CFG(QSERDES_COM_CMN_CONFIG, 0x0e),
 	QMP_PHY_INIT_CFG(QSERDES_COM_SYSCLK_EN_SEL, 0xd7),
 	QMP_PHY_INIT_CFG(QSERDES_COM_CLK_SELECT, 0x30),
@@ -148,12 +148,12 @@ static const struct qmp_phy_init_tbl msm8996_ufs_serdes_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP3_MODE1, 0x00),
 };
 
-static const struct qmp_phy_init_tbl msm8996_ufs_tx_tbl[] = {
+static const struct qmp_phy_init_tbl msm8996_ufs_tx[] = {
 	QMP_PHY_INIT_CFG(QSERDES_TX_HIGHZ_TRANSCEIVEREN_BIAS_DRVR_EN, 0x45),
 	QMP_PHY_INIT_CFG(QSERDES_TX_LANE_MODE, 0x02),
 };
 
-static const struct qmp_phy_init_tbl msm8996_ufs_rx_tbl[] = {
+static const struct qmp_phy_init_tbl msm8996_ufs_rx[] = {
 	QMP_PHY_INIT_CFG(QSERDES_RX_SIGDET_LVL, 0x24),
 	QMP_PHY_INIT_CFG(QSERDES_RX_SIGDET_CNTRL, 0x02),
 	QMP_PHY_INIT_CFG(QSERDES_RX_RX_INTERFACE_MODE, 0x00),
@@ -167,7 +167,7 @@ static const struct qmp_phy_init_tbl msm8996_ufs_rx_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_RX_RX_EQU_ADAPTOR_CNTRL2, 0x0E),
 };
 
-static const struct qmp_phy_init_tbl sm6115_ufsphy_serdes_tbl[] = {
+static const struct qmp_phy_init_tbl sm6115_ufsphy_serdes[] = {
 	QMP_PHY_INIT_CFG(QSERDES_COM_CMN_CONFIG, 0x0e),
 	QMP_PHY_INIT_CFG(QSERDES_COM_SYSCLK_EN_SEL, 0x14),
 	QMP_PHY_INIT_CFG(QSERDES_COM_CLK_SELECT, 0x30),
@@ -223,12 +223,12 @@ static const struct qmp_phy_init_tbl sm6115_ufsphy_serdes_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_COM_VCO_TUNE_MAP, 0x44),
 };
 
-static const struct qmp_phy_init_tbl sm6115_ufsphy_tx_tbl[] = {
+static const struct qmp_phy_init_tbl sm6115_ufsphy_tx[] = {
 	QMP_PHY_INIT_CFG(QSERDES_TX_HIGHZ_TRANSCEIVEREN_BIAS_DRVR_EN, 0x45),
 	QMP_PHY_INIT_CFG(QSERDES_TX_LANE_MODE, 0x06),
 };
 
-static const struct qmp_phy_init_tbl sm6115_ufsphy_rx_tbl[] = {
+static const struct qmp_phy_init_tbl sm6115_ufsphy_rx[] = {
 	QMP_PHY_INIT_CFG(QSERDES_RX_SIGDET_LVL, 0x24),
 	QMP_PHY_INIT_CFG(QSERDES_RX_SIGDET_CNTRL, 0x0F),
 	QMP_PHY_INIT_CFG(QSERDES_RX_RX_INTERFACE_MODE, 0x40),
@@ -246,7 +246,7 @@ static const struct qmp_phy_init_tbl sm6115_ufsphy_rx_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_RX_UCDR_SO_SATURATION_AND_ENABLE, 0x5B),
 };
 
-static const struct qmp_phy_init_tbl sm6115_ufsphy_pcs_tbl[] = {
+static const struct qmp_phy_init_tbl sm6115_ufsphy_pcs[] = {
 	QMP_PHY_INIT_CFG(QPHY_V2_PCS_UFS_RX_PWM_GEAR_BAND, 0x15),
 	QMP_PHY_INIT_CFG(QPHY_V2_PCS_UFS_RX_SIGDET_CTRL2, 0x6d),
 	QMP_PHY_INIT_CFG(QPHY_V2_PCS_UFS_TX_LARGE_AMP_DRV_LVL, 0x0f),
@@ -258,7 +258,7 @@ static const struct qmp_phy_init_tbl sm6115_ufsphy_pcs_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V2_PCS_UFS_RX_MIN_HIBERN8_TIME, 0x9a), /* 8 us */
 };
 
-static const struct qmp_phy_init_tbl sdm845_ufsphy_serdes_tbl[] = {
+static const struct qmp_phy_init_tbl sdm845_ufsphy_serdes[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V3_COM_SYS_CLK_CTRL, 0x02),
 	QMP_PHY_INIT_CFG(QSERDES_V3_COM_BIAS_EN_CLKBUFLR_EN, 0x04),
 	QMP_PHY_INIT_CFG(QSERDES_V3_COM_BG_TIMER, 0x0a),
@@ -300,13 +300,13 @@ static const struct qmp_phy_init_tbl sdm845_ufsphy_serdes_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V3_COM_VCO_TUNE_MAP, 0x44),
 };
 
-static const struct qmp_phy_init_tbl sdm845_ufsphy_tx_tbl[] = {
+static const struct qmp_phy_init_tbl sdm845_ufsphy_tx[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V3_TX_LANE_MODE_1, 0x06),
 	QMP_PHY_INIT_CFG(QSERDES_V3_TX_RES_CODE_LANE_OFFSET_TX, 0x04),
 	QMP_PHY_INIT_CFG(QSERDES_V3_TX_RES_CODE_LANE_OFFSET_RX, 0x07),
 };
 
-static const struct qmp_phy_init_tbl sdm845_ufsphy_rx_tbl[] = {
+static const struct qmp_phy_init_tbl sdm845_ufsphy_rx[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V3_RX_SIGDET_LVL, 0x24),
 	QMP_PHY_INIT_CFG(QSERDES_V3_RX_SIGDET_CNTRL, 0x0f),
 	QMP_PHY_INIT_CFG(QSERDES_V3_RX_SIGDET_DEGLITCH_CNTRL, 0x1e),
@@ -325,7 +325,7 @@ static const struct qmp_phy_init_tbl sdm845_ufsphy_rx_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V3_RX_RX_MODE_00, 0x59),
 };
 
-static const struct qmp_phy_init_tbl sdm845_ufsphy_pcs_tbl[] = {
+static const struct qmp_phy_init_tbl sdm845_ufsphy_pcs[] = {
 	QMP_PHY_INIT_CFG(QPHY_V3_PCS_UFS_RX_SIGDET_CTRL2, 0x6e),
 	QMP_PHY_INIT_CFG(QPHY_V3_PCS_UFS_TX_LARGE_AMP_DRV_LVL, 0x0a),
 	QMP_PHY_INIT_CFG(QPHY_V3_PCS_UFS_TX_SMALL_AMP_DRV_LVL, 0x02),
@@ -336,7 +336,7 @@ static const struct qmp_phy_init_tbl sdm845_ufsphy_pcs_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V3_PCS_UFS_MULTI_LANE_CTRL1, 0x02),
 };
 
-static const struct qmp_phy_init_tbl sm8150_ufsphy_serdes_tbl[] = {
+static const struct qmp_phy_init_tbl sm8150_ufsphy_serdes[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V4_COM_SYSCLK_EN_SEL, 0xd9),
 	QMP_PHY_INIT_CFG(QSERDES_V4_COM_HSCLK_SEL, 0x11),
 	QMP_PHY_INIT_CFG(QSERDES_V4_COM_HSCLK_HS_SWITCH_SEL, 0x00),
@@ -366,7 +366,7 @@ static const struct qmp_phy_init_tbl sm8150_ufsphy_serdes_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V4_COM_VCO_TUNE_MAP, 0x06),
 };
 
-static const struct qmp_phy_init_tbl sm8150_ufsphy_tx_tbl[] = {
+static const struct qmp_phy_init_tbl sm8150_ufsphy_tx[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V4_TX_PWM_GEAR_1_DIVIDER_BAND0_1, 0x06),
 	QMP_PHY_INIT_CFG(QSERDES_V4_TX_PWM_GEAR_2_DIVIDER_BAND0_1, 0x03),
 	QMP_PHY_INIT_CFG(QSERDES_V4_TX_PWM_GEAR_3_DIVIDER_BAND0_1, 0x01),
@@ -375,7 +375,7 @@ static const struct qmp_phy_init_tbl sm8150_ufsphy_tx_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V4_TX_TRAN_DRVR_EMP_EN, 0x0c),
 };
 
-static const struct qmp_phy_init_tbl sm8150_ufsphy_rx_tbl[] = {
+static const struct qmp_phy_init_tbl sm8150_ufsphy_rx[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V4_RX_SIGDET_LVL, 0x24),
 	QMP_PHY_INIT_CFG(QSERDES_V4_RX_SIGDET_CNTRL, 0x0f),
 	QMP_PHY_INIT_CFG(QSERDES_V4_RX_SIGDET_DEGLITCH_CNTRL, 0x1e),
@@ -413,7 +413,7 @@ static const struct qmp_phy_init_tbl sm8150_ufsphy_rx_tbl[] = {
 
 };
 
-static const struct qmp_phy_init_tbl sm8150_ufsphy_pcs_tbl[] = {
+static const struct qmp_phy_init_tbl sm8150_ufsphy_pcs[] = {
 	QMP_PHY_INIT_CFG(QPHY_V4_PCS_UFS_RX_SIGDET_CTRL2, 0x6d),
 	QMP_PHY_INIT_CFG(QPHY_V4_PCS_UFS_TX_LARGE_AMP_DRV_LVL, 0x0a),
 	QMP_PHY_INIT_CFG(QPHY_V4_PCS_UFS_TX_SMALL_AMP_DRV_LVL, 0x02),
@@ -423,7 +423,7 @@ static const struct qmp_phy_init_tbl sm8150_ufsphy_pcs_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V4_PCS_UFS_MULTI_LANE_CTRL1, 0x02),
 };
 
-static const struct qmp_phy_init_tbl sm8350_ufsphy_serdes_tbl[] = {
+static const struct qmp_phy_init_tbl sm8350_ufsphy_serdes[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V5_COM_SYSCLK_EN_SEL, 0xd9),
 	QMP_PHY_INIT_CFG(QSERDES_V5_COM_HSCLK_SEL, 0x11),
 	QMP_PHY_INIT_CFG(QSERDES_V5_COM_HSCLK_HS_SWITCH_SEL, 0x00),
@@ -453,7 +453,7 @@ static const struct qmp_phy_init_tbl sm8350_ufsphy_serdes_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V5_COM_VCO_TUNE_MAP, 0x06),
 };
 
-static const struct qmp_phy_init_tbl sm8350_ufsphy_tx_tbl[] = {
+static const struct qmp_phy_init_tbl sm8350_ufsphy_tx[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V5_TX_PWM_GEAR_1_DIVIDER_BAND0_1, 0x06),
 	QMP_PHY_INIT_CFG(QSERDES_V5_TX_PWM_GEAR_2_DIVIDER_BAND0_1, 0x03),
 	QMP_PHY_INIT_CFG(QSERDES_V5_TX_PWM_GEAR_3_DIVIDER_BAND0_1, 0x01),
@@ -465,7 +465,7 @@ static const struct qmp_phy_init_tbl sm8350_ufsphy_tx_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V5_TX_TRAN_DRVR_EMP_EN, 0x0c),
 };
 
-static const struct qmp_phy_init_tbl sm8350_ufsphy_rx_tbl[] = {
+static const struct qmp_phy_init_tbl sm8350_ufsphy_rx[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V5_RX_SIGDET_LVL, 0x24),
 	QMP_PHY_INIT_CFG(QSERDES_V5_RX_SIGDET_CNTRL, 0x0f),
 	QMP_PHY_INIT_CFG(QSERDES_V5_RX_SIGDET_DEGLITCH_CNTRL, 0x1e),
@@ -505,7 +505,7 @@ static const struct qmp_phy_init_tbl sm8350_ufsphy_rx_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V5_RX_DCC_CTRL1, 0x0c),
 };
 
-static const struct qmp_phy_init_tbl sm8350_ufsphy_pcs_tbl[] = {
+static const struct qmp_phy_init_tbl sm8350_ufsphy_pcs[] = {
 	QMP_PHY_INIT_CFG(QPHY_V5_PCS_UFS_RX_SIGDET_CTRL2, 0x6d),
 	QMP_PHY_INIT_CFG(QPHY_V5_PCS_UFS_TX_LARGE_AMP_DRV_LVL, 0x0a),
 	QMP_PHY_INIT_CFG(QPHY_V5_PCS_UFS_TX_SMALL_AMP_DRV_LVL, 0x02),
@@ -637,12 +637,12 @@ static const struct qmp_ufs_offsets qmp_ufs_offsets_v5 = {
 static const struct qmp_phy_cfg msm8996_ufs_cfg = {
 	.lanes			= 1,
 
-	.serdes_tbl		= msm8996_ufs_serdes_tbl,
-	.serdes_tbl_num		= ARRAY_SIZE(msm8996_ufs_serdes_tbl),
-	.tx_tbl			= msm8996_ufs_tx_tbl,
-	.tx_tbl_num		= ARRAY_SIZE(msm8996_ufs_tx_tbl),
-	.rx_tbl			= msm8996_ufs_rx_tbl,
-	.rx_tbl_num		= ARRAY_SIZE(msm8996_ufs_rx_tbl),
+	.serdes_tbl		= msm8996_ufs_serdes,
+	.serdes_tbl_num		= ARRAY_SIZE(msm8996_ufs_serdes),
+	.tx_tbl			= msm8996_ufs_tx,
+	.tx_tbl_num		= ARRAY_SIZE(msm8996_ufs_tx),
+	.rx_tbl			= msm8996_ufs_rx,
+	.rx_tbl_num		= ARRAY_SIZE(msm8996_ufs_rx),
 
 	.clk_list		= msm8996_ufs_phy_clk_l,
 	.num_clks		= ARRAY_SIZE(msm8996_ufs_phy_clk_l),
@@ -660,14 +660,14 @@ static const struct qmp_phy_cfg sc8280xp_ufsphy_cfg = {
 
 	.offsets		= &qmp_ufs_offsets_v5,
 
-	.serdes_tbl		= sm8350_ufsphy_serdes_tbl,
-	.serdes_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_serdes_tbl),
-	.tx_tbl			= sm8350_ufsphy_tx_tbl,
-	.tx_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_tx_tbl),
-	.rx_tbl			= sm8350_ufsphy_rx_tbl,
-	.rx_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_rx_tbl),
-	.pcs_tbl		= sm8350_ufsphy_pcs_tbl,
-	.pcs_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_pcs_tbl),
+	.serdes_tbl		= sm8350_ufsphy_serdes,
+	.serdes_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_serdes),
+	.tx_tbl			= sm8350_ufsphy_tx,
+	.tx_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_tx),
+	.rx_tbl			= sm8350_ufsphy_rx,
+	.rx_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_rx),
+	.pcs_tbl		= sm8350_ufsphy_pcs,
+	.pcs_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_pcs),
 	.clk_list		= sdm845_ufs_phy_clk_l,
 	.num_clks		= ARRAY_SIZE(sdm845_ufs_phy_clk_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -678,14 +678,14 @@ static const struct qmp_phy_cfg sc8280xp_ufsphy_cfg = {
 static const struct qmp_phy_cfg sdm845_ufsphy_cfg = {
 	.lanes			= 2,
 
-	.serdes_tbl		= sdm845_ufsphy_serdes_tbl,
-	.serdes_tbl_num		= ARRAY_SIZE(sdm845_ufsphy_serdes_tbl),
-	.tx_tbl			= sdm845_ufsphy_tx_tbl,
-	.tx_tbl_num		= ARRAY_SIZE(sdm845_ufsphy_tx_tbl),
-	.rx_tbl			= sdm845_ufsphy_rx_tbl,
-	.rx_tbl_num		= ARRAY_SIZE(sdm845_ufsphy_rx_tbl),
-	.pcs_tbl		= sdm845_ufsphy_pcs_tbl,
-	.pcs_tbl_num		= ARRAY_SIZE(sdm845_ufsphy_pcs_tbl),
+	.serdes_tbl		= sdm845_ufsphy_serdes,
+	.serdes_tbl_num		= ARRAY_SIZE(sdm845_ufsphy_serdes),
+	.tx_tbl			= sdm845_ufsphy_tx,
+	.tx_tbl_num		= ARRAY_SIZE(sdm845_ufsphy_tx),
+	.rx_tbl			= sdm845_ufsphy_rx,
+	.rx_tbl_num		= ARRAY_SIZE(sdm845_ufsphy_rx),
+	.pcs_tbl		= sdm845_ufsphy_pcs,
+	.pcs_tbl_num		= ARRAY_SIZE(sdm845_ufsphy_pcs),
 	.clk_list		= sdm845_ufs_phy_clk_l,
 	.num_clks		= ARRAY_SIZE(sdm845_ufs_phy_clk_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -700,14 +700,14 @@ static const struct qmp_phy_cfg sm6115_ufsphy_cfg = {
 
 	.offsets		= &qmp_ufs_offsets_v5,
 
-	.serdes_tbl		= sm6115_ufsphy_serdes_tbl,
-	.serdes_tbl_num		= ARRAY_SIZE(sm6115_ufsphy_serdes_tbl),
-	.tx_tbl			= sm6115_ufsphy_tx_tbl,
-	.tx_tbl_num		= ARRAY_SIZE(sm6115_ufsphy_tx_tbl),
-	.rx_tbl			= sm6115_ufsphy_rx_tbl,
-	.rx_tbl_num		= ARRAY_SIZE(sm6115_ufsphy_rx_tbl),
-	.pcs_tbl		= sm6115_ufsphy_pcs_tbl,
-	.pcs_tbl_num		= ARRAY_SIZE(sm6115_ufsphy_pcs_tbl),
+	.serdes_tbl		= sm6115_ufsphy_serdes,
+	.serdes_tbl_num		= ARRAY_SIZE(sm6115_ufsphy_serdes),
+	.tx_tbl			= sm6115_ufsphy_tx,
+	.tx_tbl_num		= ARRAY_SIZE(sm6115_ufsphy_tx),
+	.rx_tbl			= sm6115_ufsphy_rx,
+	.rx_tbl_num		= ARRAY_SIZE(sm6115_ufsphy_rx),
+	.pcs_tbl		= sm6115_ufsphy_pcs,
+	.pcs_tbl_num		= ARRAY_SIZE(sm6115_ufsphy_pcs),
 	.clk_list		= sdm845_ufs_phy_clk_l,
 	.num_clks		= ARRAY_SIZE(sdm845_ufs_phy_clk_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -720,14 +720,14 @@ static const struct qmp_phy_cfg sm6115_ufsphy_cfg = {
 static const struct qmp_phy_cfg sm8150_ufsphy_cfg = {
 	.lanes			= 2,
 
-	.serdes_tbl		= sm8150_ufsphy_serdes_tbl,
-	.serdes_tbl_num		= ARRAY_SIZE(sm8150_ufsphy_serdes_tbl),
-	.tx_tbl			= sm8150_ufsphy_tx_tbl,
-	.tx_tbl_num		= ARRAY_SIZE(sm8150_ufsphy_tx_tbl),
-	.rx_tbl			= sm8150_ufsphy_rx_tbl,
-	.rx_tbl_num		= ARRAY_SIZE(sm8150_ufsphy_rx_tbl),
-	.pcs_tbl		= sm8150_ufsphy_pcs_tbl,
-	.pcs_tbl_num		= ARRAY_SIZE(sm8150_ufsphy_pcs_tbl),
+	.serdes_tbl		= sm8150_ufsphy_serdes,
+	.serdes_tbl_num		= ARRAY_SIZE(sm8150_ufsphy_serdes),
+	.tx_tbl			= sm8150_ufsphy_tx,
+	.tx_tbl_num		= ARRAY_SIZE(sm8150_ufsphy_tx),
+	.rx_tbl			= sm8150_ufsphy_rx,
+	.rx_tbl_num		= ARRAY_SIZE(sm8150_ufsphy_rx),
+	.pcs_tbl		= sm8150_ufsphy_pcs,
+	.pcs_tbl_num		= ARRAY_SIZE(sm8150_ufsphy_pcs),
 	.clk_list		= sdm845_ufs_phy_clk_l,
 	.num_clks		= ARRAY_SIZE(sdm845_ufs_phy_clk_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -738,14 +738,14 @@ static const struct qmp_phy_cfg sm8150_ufsphy_cfg = {
 static const struct qmp_phy_cfg sm8350_ufsphy_cfg = {
 	.lanes			= 2,
 
-	.serdes_tbl		= sm8350_ufsphy_serdes_tbl,
-	.serdes_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_serdes_tbl),
-	.tx_tbl			= sm8350_ufsphy_tx_tbl,
-	.tx_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_tx_tbl),
-	.rx_tbl			= sm8350_ufsphy_rx_tbl,
-	.rx_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_rx_tbl),
-	.pcs_tbl		= sm8350_ufsphy_pcs_tbl,
-	.pcs_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_pcs_tbl),
+	.serdes_tbl		= sm8350_ufsphy_serdes,
+	.serdes_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_serdes),
+	.tx_tbl			= sm8350_ufsphy_tx,
+	.tx_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_tx),
+	.rx_tbl			= sm8350_ufsphy_rx,
+	.rx_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_rx),
+	.pcs_tbl		= sm8350_ufsphy_pcs,
+	.pcs_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_pcs),
 	.clk_list		= sdm845_ufs_phy_clk_l,
 	.num_clks		= ARRAY_SIZE(sdm845_ufs_phy_clk_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -756,14 +756,14 @@ static const struct qmp_phy_cfg sm8350_ufsphy_cfg = {
 static const struct qmp_phy_cfg sm8450_ufsphy_cfg = {
 	.lanes			= 2,
 
-	.serdes_tbl		= sm8350_ufsphy_serdes_tbl,
-	.serdes_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_serdes_tbl),
-	.tx_tbl			= sm8350_ufsphy_tx_tbl,
-	.tx_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_tx_tbl),
-	.rx_tbl			= sm8350_ufsphy_rx_tbl,
-	.rx_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_rx_tbl),
-	.pcs_tbl		= sm8350_ufsphy_pcs_tbl,
-	.pcs_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_pcs_tbl),
+	.serdes_tbl		= sm8350_ufsphy_serdes,
+	.serdes_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_serdes),
+	.tx_tbl			= sm8350_ufsphy_tx,
+	.tx_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_tx),
+	.rx_tbl			= sm8350_ufsphy_rx,
+	.rx_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_rx),
+	.pcs_tbl		= sm8350_ufsphy_pcs,
+	.pcs_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_pcs),
 	.clk_list		= sm8450_ufs_phy_clk_l,
 	.num_clks		= ARRAY_SIZE(sm8450_ufs_phy_clk_l),
 	.vreg_list		= qmp_phy_vreg_l,
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
