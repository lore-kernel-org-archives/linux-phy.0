Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2750CC4167D
	for <linux-phy@archiver.kernel.org>; Fri, 30 Sep 2022 11:29:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qUx+uymlg5fJCMSbQZ1SUe9prYOjbJGyhhusKSOxRd0=; b=Wi2svtfR7+3NwB
	DSh4mZNkyOnokvNTr8pVGPMAPymb6p1aHfuPt8Ud5wAc4ImZqSStLSI3rLpqQqpJxUsNhcmB/Aapy
	NBh8R1RqehMLntINI418xdw4R3PPvVC90DsQT2NGwd8SpvtPdmuY4SRRu6AtRZGaSBbyLUrIrg5U/
	/Jy57Kuz+57cTI1WYUYIhBGB3FhVX6lQbdT/IEeOZPrNH6nPFb4O5wgRuSJ/0E1gDqEp1vjyIR+Dg
	LBPbivM5liJ4NMHteAWJPYX2ZFNRaFnvi/aHUjQ8fxtT3r6uvB1fWo+DAAizHV1VfFYaxq1FnjVpN
	qoP75y3qWCY+Kd0dXYXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeED8-008sZB-IC; Fri, 30 Sep 2022 11:29:42 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeED3-008sT5-4P
	for linux-phy@lists.infradead.org; Fri, 30 Sep 2022 11:29:40 +0000
Received: by mail-lj1-x232.google.com with SMTP id j24so4478118lja.4
        for <linux-phy@lists.infradead.org>; Fri, 30 Sep 2022 04:29:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=O6j6sW2Pw605PjnKujwEsZTLma7dTUInfBS656a750k=;
        b=fdk3sHSxaF5zBBwRg8ryJTI7s0XHcoumbkzPXdpmTTdBtM++rn3Xkg49fT5Kl0HnPN
         eKiKXid5Xp28AlZS3IJSW9CpkkCJUt2OkHBOiuynCnbzunQ+4bzBdpG/5oWI3CU/6QNN
         iTFSDcBDrfffL+Di2sHnU/Rn+DH/aHj0F0aXNNSWQ/8VbgDHIZgZE67XdgQFiKyZXCbX
         9NMVx787wJ4koY8+LIaemIbaCq1weR8NeCpvmqHnDDHox/fWhR2vasMYrebeq9zOf2HU
         IsyodFvDDvudHThwXC63zmRUgaucmQOiPomtrJF00AntBujAJy3cIsDnFmFk5GiEFlDo
         0qZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=O6j6sW2Pw605PjnKujwEsZTLma7dTUInfBS656a750k=;
        b=S4gtzJR6VFjXzsmTCpY37Hy+4hdCRznD5dh/xe3rrsVRctpGz7FVVxqjxFmeoxt77G
         fHGnDperGSTw7cH9DrjUcMRAQ3fONmmo2sykCqrQ6yucHHbCv5osliidpChmVmhtYypz
         LLHqdEQ19+7yezNu53kz4Dnl8OBve9mgFFSUOA7DjWS6oCI8J75cwK+AqjSydsSOFnfR
         k3aA27OIukCl503eYzCGxd1Vfu1ugLRYc0/tqbWfdSq9qKbh4ZloJeFwMXsfnrhkHtxL
         djMoVEkPQM+T7dLE6xvaaf10qp23+K6fhcLirrYFj19Fs2Fsu6MwApqSbSfaO5h7fiVh
         H0LQ==
X-Gm-Message-State: ACrzQf1Izje6Vtz0f7ZtzT7+JRDecbiGD4kRvZmavIS3oEAejs2K2PwK
	KlSe0zyWpwWWC45tAajKQRZccw==
X-Google-Smtp-Source: AMsMyM6upBVmIA9yHBwb6bPBZzY1Qty1jEADQPzGHJ43gGEiCE/oBdjfZ7MmBL7PCSxgvxcqrDEFKA==
X-Received: by 2002:a05:651c:a05:b0:26c:5010:39ce with SMTP id k5-20020a05651c0a0500b0026c501039cemr2674608ljq.53.1664537374813;
        Fri, 30 Sep 2022 04:29:34 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id v18-20020a197412000000b0049493c14b17sm264672lfe.181.2022.09.30.04.29.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Sep 2022 04:29:34 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v2 09/12] phy: qcom-qmp-usb: rework regs layout arrays
Date: Fri, 30 Sep 2022 14:29:23 +0300
Message-Id: <20220930112926.638543-10-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220930112926.638543-1-dmitry.baryshkov@linaro.org>
References: <20220930112926.638543-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220930_042937_214503_B0370B93 
X-CRM114-Status: GOOD (  11.62  )
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
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c    | 52 +++++++++++-----------
 2 files changed, 29 insertions(+), 26 deletions(-)

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
index 0b5015c7bd19..2e3ccf3da0e4 100644
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
