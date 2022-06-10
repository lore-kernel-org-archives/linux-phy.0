Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3BC70CCA47D
	for <linux-phy@archiver.kernel.org>; Fri, 10 Jun 2022 19:10:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9zWT29SVpPp33TSXNz4NShfX/HV1HaHBsOeuyUReW08=; b=d056N0WsYMdim8
	KIUQCOe7/bWKcdi8e/GeRzg8emNrn4B+Q4T5JQmLhdJvHCvQihUhzSED8+lQShvYHHmDKb33FQfos
	itzAQVeWqdgHmFwp+Oef9cACVnnTxYgSmkOx+3xt8hulnGMy08ufRRHDEIEAXz491grH6vtc3qqrI
	b1vRnVqTzEWXtOkKx6UtX1stJQRcvH3SX1ie824yRpNIYwxWr/CcLEvmhIoUaqJEGXs07IHmrIjbb
	B6nGasfMOwEyscrOKG8tbBnvjwS+iLiwaHFHDcbU0p7fRN8MHr/VfVV6MgyancRRzUomc+IIsKmfQ
	zV3wS3WTCwV1S+1A6ocg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzk1P-009V48-Ke; Fri, 10 Jun 2022 19:10:15 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzk1N-009Uv2-6B
	for linux-phy@lists.infradead.org; Fri, 10 Jun 2022 19:10:14 +0000
Received: by mail-lj1-x236.google.com with SMTP id g2so134302ljk.5
        for <linux-phy@lists.infradead.org>; Fri, 10 Jun 2022 12:10:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ccj6V6QGB2UfFukZSEFRfD15FtvXsbdPIyE/SsNZRzI=;
        b=g1TI68KUGFOJdqhB4h5Fi9dMlxE/bV/tjsP/Cl3s8jU3ssHvOUp8LWe30WZi2ZiUO3
         FOU53YNdOgwWuUuukaoxi0LiAj+v6W1WECTFjGczNNgv2E/in2kHWCgxEjc7mXMjsjIa
         +U7xpsttIotjFUGIgCAaroX9IOzWTJ0K9rNxa4cZ0vhXwT0+I+mU+dvh/Lbc+jrbrUMn
         CA/lt2qudGlPbwyRNANyu4jokKjQRyq0v4z79pLlM6h0AFNgS/k4FgmWOJcLWw7Xkzv5
         Rf2tdq3J3NvMWmyjKxDPD57U/ip5apn99w6hoT8QLhzVm8DXI7Zx2QDif4gt45Mdfc4v
         wRXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ccj6V6QGB2UfFukZSEFRfD15FtvXsbdPIyE/SsNZRzI=;
        b=bP9uwsK1UAiFWfK2OxJoEzy2+BQ7A4VrCG/TTVaA7aHC1qo/m1j3wu7C7URx5i+RHC
         q+60QNCWCvMTdyqw2nN6hNLFcmhWQNsBhoICdhAbDljI86bxilTEqhaHjCK+Cw3GsezV
         swrgDBEU9iscyTgewYxns32cox5NoD6bjQd3qk/kVTIzH7MKTFdIhAxUnwpdvYlS43xV
         HwlETq2JP2LtPYYiWLoV9bEvmWvi+tvH7/W4BWTenmwcyl7YBaOs5as4idtD3VUgfyJo
         /uD7nvhw8HJqp6KivCJAY5dwP0eicusCpx4kUvv2g70gTL2LUkd7bkSsNxMFLd40KtOD
         sDzA==
X-Gm-Message-State: AOAM533tI5HRDFHgk0pFQtliJ6AM0HfDsLpM1SRqY1h5nJac/cJxRagx
	HpGpfpcrxWFLAabNt85i9wxKsw==
X-Google-Smtp-Source: ABdhPJyBPNCEPS3H1t8z9nZWRkqcYLhYXuKmpAumKkR6Zt0dd2g+QtGLCPLRbw/aKrlucN0p+rI29A==
X-Received: by 2002:a2e:934b:0:b0:24f:cce:5501 with SMTP id m11-20020a2e934b000000b0024f0cce5501mr64268868ljh.443.1654888212679;
        Fri, 10 Jun 2022 12:10:12 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id h2-20020a2e9002000000b00253e1833e8bsm26614ljg.117.2022.06.10.12.10.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jun 2022 12:10:12 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan@kernel.org>
Subject: [RFC PATCH 27/28] phy: qcom-qmp-usb: replace FLL layout writes for msm8996
Date: Fri, 10 Jun 2022 22:09:24 +0300
Message-Id: <20220610190925.3670081-28-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220610190925.3670081-1-dmitry.baryshkov@linaro.org>
References: <20220610190925.3670081-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220610_121013_256619_3517CDE1 
X-CRM114-Status: GOOD (  10.60  )
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

Other PHYs tables directly reference FLL registers without using
reglayout. Define corresponding registers to be used by msm8996 PHY
tables and use them directly.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c     |  5 -----
 .../phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c  | 10 ----------
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 10 ----------
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v2.h    |  7 +++++++
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c       |  5 -----
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c       | 20 +++++--------------
 6 files changed, 12 insertions(+), 45 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 2335658affdb..3f2c89ffee21 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -122,11 +122,6 @@ enum qphy_reg_layout {
 	QPHY_COM_PCS_READY_STATUS,
 	/* PCS registers */
 	QPHY_PLL_LOCK_CHK_DLY_TIME,
-	QPHY_FLL_CNTRL1,
-	QPHY_FLL_CNTRL2,
-	QPHY_FLL_CNT_VAL_L,
-	QPHY_FLL_CNT_VAL_H_TOL,
-	QPHY_FLL_MAN_CODE,
 	QPHY_SW_RESET,
 	QPHY_START_CTRL,
 	QPHY_PCS_READY_STATUS,
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
index 90a4bb8e86a4..5bbdf5675974 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
@@ -122,11 +122,6 @@ enum qphy_reg_layout {
 	QPHY_COM_PCS_READY_STATUS,
 	/* PCS registers */
 	QPHY_PLL_LOCK_CHK_DLY_TIME,
-	QPHY_FLL_CNTRL1,
-	QPHY_FLL_CNTRL2,
-	QPHY_FLL_CNT_VAL_L,
-	QPHY_FLL_CNT_VAL_H_TOL,
-	QPHY_FLL_MAN_CODE,
 	QPHY_SW_RESET,
 	QPHY_START_CTRL,
 	QPHY_PCS_READY_STATUS,
@@ -147,11 +142,6 @@ static const unsigned int pciephy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_COM_START_CONTROL]	= 0x408,
 	[QPHY_COM_PCS_READY_STATUS]	= 0x448,
 	[QPHY_PLL_LOCK_CHK_DLY_TIME]	= 0xa8,
-	[QPHY_FLL_CNTRL1]		= 0xc4,
-	[QPHY_FLL_CNTRL2]		= 0xc8,
-	[QPHY_FLL_CNT_VAL_L]		= 0xcc,
-	[QPHY_FLL_CNT_VAL_H_TOL]	= 0xd0,
-	[QPHY_FLL_MAN_CODE]		= 0xd4,
 	[QPHY_SW_RESET]			= 0x00,
 	[QPHY_START_CTRL]		= 0x08,
 	[QPHY_PCS_STATUS]		= 0x174,
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 5b3f612d1c2c..4d17169c5eb0 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -122,11 +122,6 @@ enum qphy_reg_layout {
 	QPHY_COM_PCS_READY_STATUS,
 	/* PCS registers */
 	QPHY_PLL_LOCK_CHK_DLY_TIME,
-	QPHY_FLL_CNTRL1,
-	QPHY_FLL_CNTRL2,
-	QPHY_FLL_CNT_VAL_L,
-	QPHY_FLL_CNT_VAL_H_TOL,
-	QPHY_FLL_MAN_CODE,
 	QPHY_SW_RESET,
 	QPHY_START_CTRL,
 	QPHY_PCS_READY_STATUS,
@@ -154,11 +149,6 @@ static const unsigned int pciephy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_COM_START_CONTROL]	= 0x408,
 	[QPHY_COM_PCS_READY_STATUS]	= 0x448,
 	[QPHY_PLL_LOCK_CHK_DLY_TIME]	= 0xa8,
-	[QPHY_FLL_CNTRL1]		= 0xc4,
-	[QPHY_FLL_CNTRL2]		= 0xc8,
-	[QPHY_FLL_CNT_VAL_L]		= 0xcc,
-	[QPHY_FLL_CNT_VAL_H_TOL]	= 0xd0,
-	[QPHY_FLL_MAN_CODE]		= 0xd4,
 	[QPHY_SW_RESET]			= 0x00,
 	[QPHY_START_CTRL]		= 0x08,
 	[QPHY_PCS_STATUS]		= 0x174,
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v2.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v2.h
index 3fc3c0562d16..9593277cbd3a 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v2.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v2.h
@@ -24,6 +24,13 @@
 #define QPHY_V2_PCS_LOCK_DETECT_CONFIG3			0x088
 #define QPHY_V2_PCS_PWRUP_RESET_DLY_TIME_AUXCLK		0x0a0
 #define QPHY_V2_PCS_LP_WAKEUP_DLY_TIME_AUXCLK		0x0a4
+#define QPHY_V2_PCS_FLL_CNTRL1				0x0c0
+#define QPHY_V2_PCS_FLL_CNTRL2				0x0c4
+#define QPHY_V2_PCS_FLL_CNT_VAL_L			0x0c8
+#define QPHY_V2_PCS_FLL_CNT_VAL_H_TOL			0x0cc
+#define QPHY_V2_PCS_FLL_MAN_CODE			0x0d0
+
+/* UFS only ? */
 #define QPHY_V2_PCS_RX_MIN_STALL_NOCONFIG_TIME_CAP	0x0cc
 #define QPHY_V2_PCS_RX_SYM_RESYNC_CTRL			0x13c
 #define QPHY_V2_PCS_RX_MIN_HIBERN8_TIME			0x140
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index 701b03a13b17..7ab129cd739b 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -122,11 +122,6 @@ enum qphy_reg_layout {
 	QPHY_COM_PCS_READY_STATUS,
 	/* PCS registers */
 	QPHY_PLL_LOCK_CHK_DLY_TIME,
-	QPHY_FLL_CNTRL1,
-	QPHY_FLL_CNTRL2,
-	QPHY_FLL_CNT_VAL_L,
-	QPHY_FLL_CNT_VAL_H_TOL,
-	QPHY_FLL_MAN_CODE,
 	QPHY_SW_RESET,
 	QPHY_START_CTRL,
 	QPHY_PCS_READY_STATUS,
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index 98c6b5c8e2fc..da2e6fe1336f 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -122,11 +122,6 @@ enum qphy_reg_layout {
 	QPHY_COM_PCS_READY_STATUS,
 	/* PCS registers */
 	QPHY_PLL_LOCK_CHK_DLY_TIME,
-	QPHY_FLL_CNTRL1,
-	QPHY_FLL_CNTRL2,
-	QPHY_FLL_CNT_VAL_L,
-	QPHY_FLL_CNT_VAL_H_TOL,
-	QPHY_FLL_MAN_CODE,
 	QPHY_SW_RESET,
 	QPHY_START_CTRL,
 	QPHY_PCS_READY_STATUS,
@@ -142,11 +137,6 @@ enum qphy_reg_layout {
 };
 
 static const unsigned int usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
-	[QPHY_FLL_CNTRL1]		= 0xc0,
-	[QPHY_FLL_CNTRL2]		= 0xc4,
-	[QPHY_FLL_CNT_VAL_L]		= 0xc8,
-	[QPHY_FLL_CNT_VAL_H_TOL]	= 0xcc,
-	[QPHY_FLL_MAN_CODE]		= 0xd0,
 	[QPHY_SW_RESET]			= 0x00,
 	[QPHY_START_CTRL]		= 0x08,
 	[QPHY_PCS_STATUS]		= 0x17c,
@@ -318,11 +308,11 @@ static const struct qmp_phy_init_tbl msm8996_usb3_rx_tbl[] = {
 
 static const struct qmp_phy_init_tbl msm8996_usb3_pcs_tbl[] = {
 	/* FLL settings */
-	QMP_PHY_INIT_CFG_L(QPHY_FLL_CNTRL2, 0x03),
-	QMP_PHY_INIT_CFG_L(QPHY_FLL_CNTRL1, 0x02),
-	QMP_PHY_INIT_CFG_L(QPHY_FLL_CNT_VAL_L, 0x09),
-	QMP_PHY_INIT_CFG_L(QPHY_FLL_CNT_VAL_H_TOL, 0x42),
-	QMP_PHY_INIT_CFG_L(QPHY_FLL_MAN_CODE, 0x85),
+	QMP_PHY_INIT_CFG(QPHY_V2_PCS_FLL_CNTRL2, 0x03),
+	QMP_PHY_INIT_CFG(QPHY_V2_PCS_FLL_CNTRL1, 0x02),
+	QMP_PHY_INIT_CFG(QPHY_V2_PCS_FLL_CNT_VAL_L, 0x09),
+	QMP_PHY_INIT_CFG(QPHY_V2_PCS_FLL_CNT_VAL_H_TOL, 0x42),
+	QMP_PHY_INIT_CFG(QPHY_V2_PCS_FLL_MAN_CODE, 0x85),
 
 	/* Lock Det settings */
 	QMP_PHY_INIT_CFG(QPHY_V2_PCS_LOCK_DETECT_CONFIG1, 0xd1),
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
