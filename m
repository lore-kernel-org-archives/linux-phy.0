Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C093EC433EF
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 09:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pa0ojhU4TWOiu8ygZDuYng3GFyLAHU52sfkpSO2h5DA=; b=sphjx51diYehSw
	XwpTC5rxnC1alomL+T7oDgg0FK7fPSlcFMdpEMSSd5gocczi/VlE+RY4gHxKQeRKFnWyO8uyRxjkM
	4luzbX5B91kE1i+RE9WXZwUklf/s03CuF88SsP39RwJCmxuylAGqsvFwVZp8e81cncjDACiXSRHZ3
	3XnBm7DXWqpRY/ThiYdjc9Yb2oJvvryvqyqGpRUtKC6GTTmFKIqaQzYkWvNFBhb2wDlvjbv6nOq2q
	g3p7uAIYJIwSzG8uF3DS4Me41mPBAiJJfP2VkSYstFzvyLtPEwPVd9QrbrtT4dMtU6HzrE/jGi0Mk
	u34Oj1Y7B2bPXjoPY8jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8f61-00GrAa-1E; Tue, 05 Jul 2022 09:43:53 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8f5t-00GquK-43
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 09:43:47 +0000
Received: by mail-lf1-x131.google.com with SMTP id m18so1146165lfg.10
        for <linux-phy@lists.infradead.org>; Tue, 05 Jul 2022 02:43:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=VF782H/CGM+yUVuKMfHxljNx32Yu3c6SHY81r1JpfEc=;
        b=atSWu6QBeulIdmfjeCEg0V4RECYLnSl1Jc1fFH+9c4V6KUBd1F2n70IkPjJM1pK/cw
         n1b5krIb6fb8jN6msxITUcxXAmI+YRCx5uGZnTPm4bVDhWdtQ94aK4beQ8FiFQIhO8jL
         0Vj9EKaeFH7nKGpy960pg3WBqJNb8l84hmcT3QZu5MhI0zZwHNJT/0xQvvi1X3qRh6v+
         zIfLydhGYq4BvcxXZKIpjqlktzxXEriRfx+3hKIUjJKTnJpshQey4FBOnSYkuG7k0qih
         0URg7XYi4Y8iGaiVoAZh1QNDF2SIX57sijiOlRd8oRzl22tWP1So0p6oql1ehgOrfGnb
         vhEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=VF782H/CGM+yUVuKMfHxljNx32Yu3c6SHY81r1JpfEc=;
        b=O+yU4u+g6hdmJYiYjWhFEdCUBas4o+mRgONrxTulqQ35EN8dkF42b65FSEHYQ5/XbK
         d8S50cF+GlOO9THJmQVFuTz/t50nsuXSGTSgjYNa8C8BQQP5SeB5z4K1oApvikGiCl/W
         seXFF8SKNzENu0bmbrA6avh1ZD35SQUPQC2zenW2JVQh6QRxZmXZuIkwczlWmGPcRxsi
         5DaAjxSkodbc75+YWJjSChf3Sao190VOEHBA2JFgsl2sqkYlM2WsQRwqTzZNR4wbbXgg
         ASJw3wibKr1WWOJiEAveOoJCjeuqlX/WR5p/G/MBDzZUE4cUOFc3Ze1djRd29vLgm03K
         MZXg==
X-Gm-Message-State: AJIora/36XLxwtQg6HeIq14K0GW5xz7SQN0FT1tOGgHyrJlmfh7+pZea
	tQbLL3Gs3zvv1zGBx1WHSUv/pQ==
X-Google-Smtp-Source: AGRyM1ujC0dYM3Yhg6rFfcGazZdQNZS5UNAPdwsvs9xSRe6cd2UorMj62Om0lpl1/2toTNerVZfDsQ==
X-Received: by 2002:a05:6512:12cb:b0:482:c9e4:ead8 with SMTP id p11-20020a05651212cb00b00482c9e4ead8mr3483365lfg.81.1657014224602;
        Tue, 05 Jul 2022 02:43:44 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id f7-20020a056512360700b00482f206b087sm491683lfs.39.2022.07.05.02.43.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Jul 2022 02:43:44 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v1 28/28] phy: qcom-qmp-usb: define QPHY_V2_PCS_PLL_LOCK_CHK_DLY_TIME register
Date: Tue,  5 Jul 2022 12:43:20 +0300
Message-Id: <20220705094320.1313312-29-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220705094320.1313312-1-dmitry.baryshkov@linaro.org>
References: <20220705094320.1313312-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_024345_239244_A1BF7A01 
X-CRM114-Status: GOOD (  11.12  )
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

Other PHYs tables directly reference QPHY_PLL_LOCK_CHK_DLY_TIME register
without using reglayout. Define corresponding register to be used by
msm8996 PHY tables and use it directly.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c        | 1 -
 drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c | 4 +---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c         | 4 +---
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v2.h       | 1 +
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c          | 1 -
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c          | 1 -
 6 files changed, 3 insertions(+), 9 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 3f2c89ffee21..01e1d3f7538b 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -121,7 +121,6 @@ enum qphy_reg_layout {
 	QPHY_COM_START_CONTROL,
 	QPHY_COM_PCS_READY_STATUS,
 	/* PCS registers */
-	QPHY_PLL_LOCK_CHK_DLY_TIME,
 	QPHY_SW_RESET,
 	QPHY_START_CTRL,
 	QPHY_PCS_READY_STATUS,
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
index 4517f05fe45f..be6a94439b6c 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
@@ -121,7 +121,6 @@ enum qphy_reg_layout {
 	QPHY_COM_START_CONTROL,
 	QPHY_COM_PCS_READY_STATUS,
 	/* PCS registers */
-	QPHY_PLL_LOCK_CHK_DLY_TIME,
 	QPHY_SW_RESET,
 	QPHY_START_CTRL,
 	QPHY_PCS_READY_STATUS,
@@ -141,7 +140,6 @@ static const unsigned int pciephy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_COM_POWER_DOWN_CONTROL]	= 0x404,
 	[QPHY_COM_START_CONTROL]	= 0x408,
 	[QPHY_COM_PCS_READY_STATUS]	= 0x448,
-	[QPHY_PLL_LOCK_CHK_DLY_TIME]	= 0xa8,
 	[QPHY_SW_RESET]			= 0x00,
 	[QPHY_START_CTRL]		= 0x08,
 	[QPHY_PCS_STATUS]		= 0x174,
@@ -216,7 +214,7 @@ static const struct qmp_phy_init_tbl msm8996_pcie_pcs_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V2_PCS_PWRUP_RESET_DLY_TIME_AUXCLK, 0x00),
 	QMP_PHY_INIT_CFG(QPHY_V2_PCS_LP_WAKEUP_DLY_TIME_AUXCLK, 0x01),
 
-	QMP_PHY_INIT_CFG_L(QPHY_PLL_LOCK_CHK_DLY_TIME, 0x05),
+	QMP_PHY_INIT_CFG(QPHY_V2_PCS_PLL_LOCK_CHK_DLY_TIME, 0x05),
 
 	QMP_PHY_INIT_CFG(QPHY_V2_PCS_ENDPOINT_REFCLK_DRIVE, 0x05),
 	QMP_PHY_INIT_CFG(QPHY_V2_PCS_POWER_DOWN_CONTROL, 0x02),
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 59ba40c39ab3..2d65e1f56bfc 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -121,7 +121,6 @@ enum qphy_reg_layout {
 	QPHY_COM_START_CONTROL,
 	QPHY_COM_PCS_READY_STATUS,
 	/* PCS registers */
-	QPHY_PLL_LOCK_CHK_DLY_TIME,
 	QPHY_SW_RESET,
 	QPHY_START_CTRL,
 	QPHY_PCS_READY_STATUS,
@@ -148,7 +147,6 @@ static const unsigned int pciephy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_COM_POWER_DOWN_CONTROL]	= 0x404,
 	[QPHY_COM_START_CONTROL]	= 0x408,
 	[QPHY_COM_PCS_READY_STATUS]	= 0x448,
-	[QPHY_PLL_LOCK_CHK_DLY_TIME]	= 0xa8,
 	[QPHY_SW_RESET]			= 0x00,
 	[QPHY_START_CTRL]		= 0x08,
 	[QPHY_PCS_STATUS]		= 0x174,
@@ -435,7 +433,7 @@ static const struct qmp_phy_init_tbl ipq8074_pcie_pcs_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V2_PCS_L1SS_WAKEUP_DLY_TIME_AUXCLK_LSB, 0x40),
 	QMP_PHY_INIT_CFG(QPHY_V2_PCS_PLL_LOCK_CHK_DLY_TIME_AUXCLK_LSB, 0x0),
 	QMP_PHY_INIT_CFG(QPHY_V2_PCS_LP_WAKEUP_DLY_TIME_AUXCLK, 0x40),
-	QMP_PHY_INIT_CFG_L(QPHY_PLL_LOCK_CHK_DLY_TIME, 0x73),
+	QMP_PHY_INIT_CFG(QPHY_V2_PCS_PLL_LOCK_CHK_DLY_TIME, 0x73),
 	QMP_PHY_INIT_CFG(QPHY_V2_PCS_RX_SIGDET_LVL, 0x99),
 	QMP_PHY_INIT_CFG(QPHY_V2_PCS_TXDEEMPH_M6DB_V0, 0x15),
 	QMP_PHY_INIT_CFG(QPHY_V2_PCS_TXDEEMPH_M3P5DB_V0, 0xe),
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v2.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v2.h
index 9593277cbd3a..c8515f506872 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v2.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v2.h
@@ -24,6 +24,7 @@
 #define QPHY_V2_PCS_LOCK_DETECT_CONFIG3			0x088
 #define QPHY_V2_PCS_PWRUP_RESET_DLY_TIME_AUXCLK		0x0a0
 #define QPHY_V2_PCS_LP_WAKEUP_DLY_TIME_AUXCLK		0x0a4
+#define QPHY_V2_PCS_PLL_LOCK_CHK_DLY_TIME		0x0a8
 #define QPHY_V2_PCS_FLL_CNTRL1				0x0c0
 #define QPHY_V2_PCS_FLL_CNTRL2				0x0c4
 #define QPHY_V2_PCS_FLL_CNT_VAL_L			0x0c8
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index 7ab129cd739b..c8583f5a54bd 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -121,7 +121,6 @@ enum qphy_reg_layout {
 	QPHY_COM_START_CONTROL,
 	QPHY_COM_PCS_READY_STATUS,
 	/* PCS registers */
-	QPHY_PLL_LOCK_CHK_DLY_TIME,
 	QPHY_SW_RESET,
 	QPHY_START_CTRL,
 	QPHY_PCS_READY_STATUS,
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index ff1e10bfdea3..1d270356a97f 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -121,7 +121,6 @@ enum qphy_reg_layout {
 	QPHY_COM_START_CONTROL,
 	QPHY_COM_PCS_READY_STATUS,
 	/* PCS registers */
-	QPHY_PLL_LOCK_CHK_DLY_TIME,
 	QPHY_SW_RESET,
 	QPHY_START_CTRL,
 	QPHY_PCS_READY_STATUS,
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
