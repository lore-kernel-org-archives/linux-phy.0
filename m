Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D349C6FA95
	for <linux-phy@archiver.kernel.org>; Wed, 28 Sep 2022 23:10:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+lHpfELl0UuYroXxoHzOPSS+uTVhzKwLSG7a9aX4VnQ=; b=Fw6IDuSOX7CcGw
	TgyKejqR38fd7ZMVklmSePiNBEbijti0CWd5/XPEkr1e6BPlHaHp+qgUQDrxQViFFIH9vRJRZpDmq
	81Yl6YY2BrMYMRs9zfu8DlTarpdWrgaHlKfq9CgQVj89JaoIzZ+Ad9qxN6YlLd+ZKqSyjfdEIjCXC
	UxPsB0L5eO511JPRZiRgwrAJjRgodgK2TQjeM4lshTMC3y5j4GAsTUv7eDk7xX7jGRWUiHNalmH4t
	uqXVD3sj5+d/F5KULXlK0Qe8mjLHVYM05DELzR10ojyus+ghik4IIwyq7AtljB6WKJQMINP926lqB
	BZqfpyjPAL28C90f5ABw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odgCO-000cOL-KM; Wed, 28 Sep 2022 23:10:40 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odgCI-000cGz-RR
	for linux-phy@lists.infradead.org; Wed, 28 Sep 2022 23:10:37 +0000
Received: by mail-lf1-x130.google.com with SMTP id o2so22518424lfc.10
        for <linux-phy@lists.infradead.org>; Wed, 28 Sep 2022 16:10:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=EUnjt6sKV0j6WeNguxUaJ5W304aiSP+6Sxxv1aux/Ac=;
        b=Td5WT46xjcgXubdgUJhkOG+lcLLHJ4MkJugswgUXAmmWGH8bPaiUYmsVjiGRaX6UKk
         MryYm4NzEPQWUHvd3GKa5kJRb7+aPgJf9h845a+DpiGZ7NEtlkkXzGaCtDiVtOa85Lrc
         nOCzUUMdVlDbft0Y2GEOFkkHa+meU4Cl23AKI3nZTatbAAH76nBQU0+1xCwVDM/7BB+B
         EuEebFiFfFyb2YEqIfonpfTPthKoSFqlfM7uHdkJd7H3ltcxpAvzlB6saZ+psWxR+fgs
         2m30tuQUx9hC1ifxsFHpK9lchFZbYZoXQgTwANN4P7w5VFDO/4V/toWSVAbUhuU6BIv9
         7H1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=EUnjt6sKV0j6WeNguxUaJ5W304aiSP+6Sxxv1aux/Ac=;
        b=w/65vtjme/5R0aKWWielyXr6+5wRQShg8feYOTgHBRpRqG3v4lVABTFzBspmk7I5L3
         VYQUe6GgXAEMRSapxPko0aFam/DyMAtveYxRzx7KrCmhhCuWUa6cjQDHKaknU4Sy8cBh
         4a41jXX8wqjPwmEjEauxYGr8ISVDqHgVIe8XlVWn65theK7SqgdfXR5w2j7UtslHW9Nd
         1RHHx/MJdfEI8AVRYZPwmAVY+xCW6TcJ8Vgp5MK/9bz8tfFMivSoZ1bVDNgIr1DLUh7e
         wOnN178N+rT8JQIVqBk3PR7tXq1I3cJ1rruHXuzY0ml+Q9fZtVADCRgRJnSkex+bjyKV
         HsIg==
X-Gm-Message-State: ACrzQf35HFiPvF/Q3mcsmqGWQJM+XnOCIv0sM+5s/KmK98RtyYi1DbBH
	ONjSxbg91FfZOCyGuriw1nE0UA==
X-Google-Smtp-Source: AMsMyM7WOTyPRsP4f9q+BmVxCQInoIa+ntU0qa/KZKCn2isjF+OeDpNN/Nt0EkKDIddkXF6LihoWaw==
X-Received: by 2002:a05:6512:3b1f:b0:49a:d3f2:46c3 with SMTP id f31-20020a0565123b1f00b0049ad3f246c3mr117497lfv.364.1664406626674;
        Wed, 28 Sep 2022 16:10:26 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id o16-20020ac24950000000b0049d5733fb3fsm597587lfi.212.2022.09.28.16.10.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Sep 2022 16:10:26 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan@kernel.org>
Subject: [PATCH 14/18] phy: qcom-qmp-usb: rework regs layout arrays
Date: Thu, 29 Sep 2022 02:10:10 +0300
Message-Id: <20220928231014.455201-15-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220928231014.455201-1-dmitry.baryshkov@linaro.org>
References: <20220928231014.455201-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_161034_906389_C0D66698 
X-CRM114-Status: GOOD (  11.58  )
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

Use symbolic names for the values inside reg layout arrays. New register
names are added following the PCS register layout that is used by the
particular PHY.

Note: ipq8074 tables appear to use a mixture of v2 and v3 registers.
This might need additional fixes.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v2.h |  3 ++
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c    | 54 +++++++++++-----------
 2 files changed, 30 insertions(+), 27 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v2.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v2.h
index c7e8e2a28e6e..bf36399d0057 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v2.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v2.h
@@ -28,7 +28,10 @@
 #define QPHY_V2_PCS_FLL_CNT_VAL_L			0x0c8
 #define QPHY_V2_PCS_FLL_CNT_VAL_H_TOL			0x0cc
 #define QPHY_V2_PCS_FLL_MAN_CODE			0x0d0
+#define QPHY_V2_PCS_AUTONOMOUS_MODE_CTRL		0x0d4
+#define QPHY_V2_PCS_LFPS_RXTERM_IRQ_CLEAR		0x0d8
 #define QPHY_V2_PCS_LFPS_RXTERM_IRQ_STATUS		0x178
+#define QPHY_V2_PCS_USB_PCS_STATUS			0x17c /* USB */
 #define QPHY_V2_PCS_PLL_LOCK_CHK_DLY_TIME_AUXCLK_LSB	0x1a8
 #define QPHY_V2_PCS_OSC_DTCT_ACTIONS			0x1ac
 #define QPHY_V2_PCS_RX_SIGDET_LVL			0x1d8
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index 54e6032b4bf7..1d1cfcfd7c52 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -113,42 +113,42 @@ enum qphy_reg_layout {
 	QPHY_LAYOUT_SIZE
 };
 
-static const unsigned int usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
-	[QPHY_SW_RESET]			= 0x00,
-	[QPHY_START_CTRL]		= 0x08,
-	[QPHY_PCS_STATUS]		= 0x17c,
-	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= 0x0d4,
-	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR]  = 0x0d8,
-	[QPHY_PCS_POWER_DOWN_CONTROL]	= 0x04,
+static const unsigned int qmp_v2_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
+	[QPHY_SW_RESET]			= QPHY_V2_PCS_SW_RESET,
+	[QPHY_START_CTRL]		= QPHY_V2_PCS_START_CONTROL,
+	[QPHY_PCS_STATUS]		= QPHY_V2_PCS_USB_PCS_STATUS,
+	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= QPHY_V2_PCS_AUTONOMOUS_MODE_CTRL,
+	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR] = QPHY_V2_PCS_LFPS_RXTERM_IRQ_CLEAR,
+	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V2_PCS_POWER_DOWN_CONTROL,
 };
 
 static const unsigned int qmp_v3_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
-	[QPHY_SW_RESET]			= 0x00,
-	[QPHY_START_CTRL]		= 0x08,
-	[QPHY_PCS_STATUS]		= 0x174,
-	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= 0x0d8,
-	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR]  = 0x0dc,
-	[QPHY_PCS_POWER_DOWN_CONTROL]	= 0x04,
+	[QPHY_SW_RESET]			= QPHY_V3_PCS_SW_RESET,
+	[QPHY_START_CTRL]		= QPHY_V3_PCS_START_CONTROL,
+	[QPHY_PCS_STATUS]		= QPHY_V3_PCS_PCS_STATUS,
+	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= QPHY_V3_PCS_AUTONOMOUS_MODE_CTRL,
+	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR] = QPHY_V3_PCS_LFPS_RXTERM_IRQ_CLEAR,
+	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V3_PCS_POWER_DOWN_CONTROL,
 };
 
 static const unsigned int qmp_v4_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
-	[QPHY_SW_RESET]			= 0x00,
-	[QPHY_START_CTRL]		= 0x44,
-	[QPHY_PCS_STATUS]		= 0x14,
-	[QPHY_PCS_POWER_DOWN_CONTROL]	= 0x40,
+	[QPHY_SW_RESET]			= QPHY_V4_PCS_SW_RESET,
+	[QPHY_START_CTRL]		= QPHY_V4_PCS_START_CONTROL,
+	[QPHY_PCS_STATUS]		= QPHY_V4_PCS_PCS_STATUS1,
+	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V4_PCS_POWER_DOWN_CONTROL,
 
 	/* In PCS_USB */
-	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= 0x008,
-	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR] = 0x014,
+	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= QPHY_V4_PCS_USB3_AUTONOMOUS_MODE_CTRL,
+	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR] = QPHY_V4_PCS_USB3_LFPS_RXTERM_IRQ_CLEAR,
 };
 
 static const unsigned int qcm2290_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
-	[QPHY_SW_RESET]			= 0x00,
-	[QPHY_PCS_POWER_DOWN_CONTROL]	= 0x04,
-	[QPHY_START_CTRL]		= 0x08,
-	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= 0xd8,
-	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR] = 0xdc,
-	[QPHY_PCS_STATUS]		= 0x174,
+	[QPHY_SW_RESET]			= QPHY_V3_PCS_SW_RESET,
+	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V3_PCS_POWER_DOWN_CONTROL,
+	[QPHY_START_CTRL]		= QPHY_V3_PCS_START_CONTROL,
+	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= QPHY_V3_PCS_AUTONOMOUS_MODE_CTRL,
+	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR] = QPHY_V3_PCS_LFPS_RXTERM_IRQ_CLEAR,
+	[QPHY_PCS_STATUS]		= QPHY_V3_PCS_PCS_STATUS,
 };
 
 static const struct qmp_phy_init_tbl ipq8074_usb3_serdes_tbl[] = {
@@ -1609,7 +1609,7 @@ static const struct qmp_phy_cfg ipq8074_usb3phy_cfg = {
 	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
-	.regs			= usb3phy_regs_layout,
+	.regs			= qmp_v2_usb3phy_regs_layout,
 
 	.start_ctrl		= SERDES_START | PCS_START,
 	.pwrdn_ctrl		= SW_PWRDN,
@@ -1633,7 +1633,7 @@ static const struct qmp_phy_cfg msm8996_usb3phy_cfg = {
 	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
-	.regs			= usb3phy_regs_layout,
+	.regs			= qmp_v2_usb3phy_regs_layout,
 
 	.start_ctrl		= SERDES_START | PCS_START,
 	.pwrdn_ctrl		= SW_PWRDN,
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
