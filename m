Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9CB3CCA47B
	for <linux-phy@archiver.kernel.org>; Fri, 10 Jun 2022 19:10:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XqJwyrV87vfH+hmOFkuD9kIsoDq6/cExMvXzavrK/jI=; b=VIzR5Bw3bERxjG
	KsGOlzKjMh9VmrpkN5FChS8KeNB2CAxZo27QaBgA5BccYMCmEjKhHp7qub4je3bYWfriRv4E9/MWB
	aM6y/7G84nTLfASbQsmVT5XJkTRvuCr6vaL+vU3skJeatk9dCiP5blN70SGSq2TAbaTk5HSu5EK+v
	ZcSa6xG9n3Q4sdUiNCSF7i6RP0lG2GfIbgPq32tzZYxRI78x35fJUWMJta8IBECIboD/KK+TsC1C7
	3IbYOqhdvZ9X0Kzt3XArfojMdGp9hxYeiodNjvg/ba1S92XCE08+0H02I/ymveDYDhqupfm0EcEmI
	udApSEFD8KQ69Qhdtsqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzk1N-009V2M-6A; Fri, 10 Jun 2022 19:10:13 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzk1K-009Ukn-11
	for linux-phy@lists.infradead.org; Fri, 10 Jun 2022 19:10:11 +0000
Received: by mail-lj1-x229.google.com with SMTP id y29so123401ljd.7
        for <linux-phy@lists.infradead.org>; Fri, 10 Jun 2022 12:10:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=27r7fm24HH5e9SqiJoIarL14kYY0+23g/ojTmHV1I9U=;
        b=YX95DABx5s7kCy6eYkbvTnZifQAs1b9MyGFy9dTIVS6UhUZly//IQnpAHf7mQHQmcg
         Op6ShO3pgbbpxgvYFTA+82E22nlH3Fr3SLNrPziEYiTHqQ0rm7Cj2rFK3CnbuSUg7hwz
         6DZ7Br940TNYPMEK/3WPhvI8Q22+sL71RblhTFh/ZsOVqnTJCZffFUE1Voa1G/pJhPhQ
         vamXxjBg9HWnTqY56FGaDPro0p8HBx2JLjvW5Ph93GoZ4uEBjpqdgpN0b0/Vj/Vcx0vh
         ZBZ0/Rvo84l84wwfEfLFT+W2FHswnPgv+4ZFRGNmV/uRRo8MjIndTravcv1ks4XcDBrZ
         NlDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=27r7fm24HH5e9SqiJoIarL14kYY0+23g/ojTmHV1I9U=;
        b=GwC2hUmc7dgOxjxcrv1z+mZvfCdkli90YIQLKZI4E5FINgf7K27kEg0AmqLylGXl9S
         gxu5IsU4i9rXRuxCCngggxxEBBH5VKg6zv4JvIecdtJGJ2yo6Vzd1lNVY2YloMZRB+wV
         lLui7SJt0IKxOR/FiOatQF6515nA6Qgylk+y0TidPlFhSg4nQpk7yChh/5uzK3Qfwbin
         tXKCAupL38vBD1TrXbzle46mA5h8yXiOEReQOto4dKwL/QhEF4QSv39g55dkwqpVXIrY
         ajtvhrYm9fZEJaSe7rfl7X3m7bRTE/8ZVq8rLf0YN0XxP2N/d5/Nolkq3POiJpkYBGX4
         9jJA==
X-Gm-Message-State: AOAM531/8AnA1PByXa2640E6WbcK9hPQGB7PVcIpufSNChwKjzh7I7Kz
	Z4mrTniNH64mP/TkT2ZWS1pX0A==
X-Google-Smtp-Source: ABdhPJwYtS+cuot5KxiOKkBLufCMSJ77ATNWt18bYXRScQlZ43o9CSx3YXjD+YjYqhMl0I6dZNMOOA==
X-Received: by 2002:a05:651c:1506:b0:255:affc:33f2 with SMTP id e6-20020a05651c150600b00255affc33f2mr9908951ljf.265.1654888209575;
        Fri, 10 Jun 2022 12:10:09 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id h2-20020a2e9002000000b00253e1833e8bsm26614ljg.117.2022.06.10.12.10.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jun 2022 12:10:07 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan@kernel.org>
Subject: [RFC PATCH 25/28] phy: qcom-qmp: pcs-v3: add missing registers
Date: Fri, 10 Jun 2022 22:09:22 +0300
Message-Id: <20220610190925.3670081-26-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220610190925.3670081-1-dmitry.baryshkov@linaro.org>
References: <20220610190925.3670081-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220610_121010_117367_9EA3836B 
X-CRM114-Status: UNSURE (   7.40  )
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

Add missing registers, verified against:
- msm-4.19's qcom,usb3-11nm-qmp-combo.h

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v3.h | 82 ++++++++++++++++++++++
 1 file changed, 82 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v3.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v3.h
index ac13f2989a73..10dbbb006201 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v3.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v3.h
@@ -7,7 +7,9 @@
 #define QCOM_PHY_QMP_PCS_V3_H_
 
 /* Only for QMP V3 PHY - PCS registers */
+#define QPHY_V3_PCS_SW_RESET				0x000
 #define QPHY_V3_PCS_POWER_DOWN_CONTROL			0x004
+#define QPHY_V3_PCS_START_CONTROL			0x008
 #define QPHY_V3_PCS_TXMGN_V0				0x00c
 #define QPHY_V3_PCS_TXMGN_V1				0x010
 #define QPHY_V3_PCS_TXMGN_V2				0x014
@@ -31,6 +33,7 @@
 #define QPHY_V3_PCS_RATE_SLEW_CNTRL			0x05c
 #define QPHY_V3_PCS_POWER_STATE_CONFIG1			0x060
 #define QPHY_V3_PCS_POWER_STATE_CONFIG2			0x064
+#define QPHY_V3_PCS_POWER_STATE_CONFIG3			0x068
 #define QPHY_V3_PCS_POWER_STATE_CONFIG4			0x06c
 #define QPHY_V3_PCS_RCVR_DTCT_DLY_P1U2_L		0x070
 #define QPHY_V3_PCS_RCVR_DTCT_DLY_P1U2_H		0x074
@@ -40,24 +43,103 @@
 #define QPHY_V3_PCS_LOCK_DETECT_CONFIG2			0x084
 #define QPHY_V3_PCS_LOCK_DETECT_CONFIG3			0x088
 #define QPHY_V3_PCS_TSYNC_RSYNC_TIME			0x08c
+#define QPHY_V3_PCS_SIGDET_LOW_2_IDLE_TIME		0x090
+#define QPHY_V3_PCS_BEACON_2_IDLE_TIME_L		0x094
+#define QPHY_V3_PCS_BEACON_2_IDLE_TIME_H		0x098
+#define QPHY_V3_PCS_PWRUP_RESET_DLY_TIME_SYSCLK		0x09c
 #define QPHY_V3_PCS_PWRUP_RESET_DLY_TIME_AUXCLK		0x0a0
 #define QPHY_V3_PCS_LP_WAKEUP_DLY_TIME_AUXCLK		0x0a4
 #define QPHY_V3_PCS_PLL_LOCK_CHK_DLY_TIME		0x0a8
+#define QPHY_V3_PCS_LFPS_DET_HIGH_COUNT_VAL		0x0ac
 #define QPHY_V3_PCS_LFPS_TX_ECSTART_EQTLOCK		0x0b0
+#define QPHY_V3_PCS_LFPS_TX_END_CNT_P2U3_START		0x0b4
 #define QPHY_V3_PCS_RXEQTRAINING_WAIT_TIME		0x0b8
 #define QPHY_V3_PCS_RXEQTRAINING_RUN_TIME		0x0bc
+#define QPHY_V3_PCS_TXONESZEROS_RUN_LENGTH		0x0c0
 #define QPHY_V3_PCS_FLL_CNTRL1				0x0c4
 #define QPHY_V3_PCS_FLL_CNTRL2				0x0c8
 #define QPHY_V3_PCS_FLL_CNT_VAL_L			0x0cc
 #define QPHY_V3_PCS_FLL_CNT_VAL_H_TOL			0x0d0
 #define QPHY_V3_PCS_FLL_MAN_CODE			0x0d4
+#define QPHY_V3_PCS_AUTONOMOUS_MODE_CTRL		0x0d8
+#define QPHY_V3_PCS_LFPS_RXTERM_IRQ_CLEAR		0x0dc
+#define QPHY_V3_PCS_ARCVR_DTCT_EN_PERIOD		0x0e0
+#define QPHY_V3_PCS_ARCVR_DTCT_CM_DLY			0x0e4
+#define QPHY_V3_PCS_ALFPS_DEGLITCH_VAL			0x0e8
+#define QPHY_V3_PCS_INSIG_SW_CTRL1			0x0ec
+#define QPHY_V3_PCS_INSIG_SW_CTRL2			0x0f0
+#define QPHY_V3_PCS_INSIG_SW_CTRL3			0x0f4
+#define QPHY_V3_PCS_INSIG_MX_CTRL1			0x0f8
+#define QPHY_V3_PCS_INSIG_MX_CTRL2			0x0fc
+#define QPHY_V3_PCS_INSIG_MX_CTRL3			0x100
+#define QPHY_V3_PCS_OUTSIG_SW_CTRL1			0x104
+#define QPHY_V3_PCS_OUTSIG_MX_CTRL1			0x108
+#define QPHY_V3_PCS_CLK_DEBUG_BYPASS_CTRL		0x10c
+#define QPHY_V3_PCS_TEST_CONTROL			0x110
+#define QPHY_V3_PCS_TEST_CONTROL2			0x114
+#define QPHY_V3_PCS_TEST_CONTROL3			0x118
+#define QPHY_V3_PCS_TEST_CONTROL4			0x11c
+#define QPHY_V3_PCS_TEST_CONTROL5			0x120
+#define QPHY_V3_PCS_TEST_CONTROL6			0x124
+#define QPHY_V3_PCS_TEST_CONTROL7			0x128
+#define QPHY_V3_PCS_COM_RESET_CONTROL			0x12c
+#define QPHY_V3_PCS_BIST_CTRL				0x130
+#define QPHY_V3_PCS_PRBS_POLY0				0x134
+#define QPHY_V3_PCS_PRBS_POLY1				0x138
+#define QPHY_V3_PCS_PRBS_SEED0				0x13c
+#define QPHY_V3_PCS_PRBS_SEED1				0x140
+#define QPHY_V3_PCS_FIXED_PAT_CTRL			0x144
+#define QPHY_V3_PCS_FIXED_PAT0				0x148
+#define QPHY_V3_PCS_FIXED_PAT1				0x14c
+#define QPHY_V3_PCS_FIXED_PAT2				0x150
+#define QPHY_V3_PCS_FIXED_PAT3				0x154
+#define QPHY_V3_PCS_COM_CLK_SWITCH_CTRL			0x158
+#define QPHY_V3_PCS_ELECIDLE_DLY_SEL			0x15c
+#define QPHY_V3_PCS_SPARE1				0x160
+#define QPHY_V3_PCS_BIST_CHK_ERR_CNT_L_STATUS		0x164
+#define QPHY_V3_PCS_BIST_CHK_ERR_CNT_H_STATUS		0x168
+#define QPHY_V3_PCS_BIST_CHK_STATUS			0x16c
+#define QPHY_V3_PCS_LFPS_RXTERM_IRQ_SOURCE_STATUS	0x170
+#define QPHY_V3_PCS_PCS_STATUS				0x174
+#define QPHY_V3_PCS_PCS_STATUS2				0x178
+#define QPHY_V3_PCS_PCS_STATUS3				0x17c
+#define QPHY_V3_PCS_COM_RESET_STATUS			0x180
+#define QPHY_V3_PCS_OSC_DTCT_STATUS			0x184
+#define QPHY_V3_PCS_REVISION_ID0			0x188
+#define QPHY_V3_PCS_REVISION_ID1			0x18c
+#define QPHY_V3_PCS_REVISION_ID2			0x190
+#define QPHY_V3_PCS_REVISION_ID3			0x194
+#define QPHY_V3_PCS_DEBUG_BUS_0_STATUS			0x198
+#define QPHY_V3_PCS_DEBUG_BUS_1_STATUS			0x19c
+#define QPHY_V3_PCS_DEBUG_BUS_2_STATUS			0x1a0
+#define QPHY_V3_PCS_DEBUG_BUS_3_STATUS			0x1a4
 #define QPHY_V3_PCS_LP_WAKEUP_DLY_TIME_AUXCLK_MSB	0x1a8
 #define QPHY_V3_PCS_OSC_DTCT_ACTIONS			0x1ac
 #define QPHY_V3_PCS_SIGDET_CNTRL			0x1b0
+#define QPHY_V3_PCS_IDAC_CAL_CNTRL			0x1b4
+#define QPHY_V3_PCS_CMN_ACK_OUT_SEL			0x1b8
+#define QPHY_V3_PCS_PLL_LOCK_CHK_DLY_TIME_SYSCLK	0x1bc
+#define QPHY_V3_PCS_AUTONOMOUS_MODE_STATUS		0x1c0
+#define QPHY_V3_PCS_ENDPOINT_REFCLK_CNTRL		0x1c4
+#define QPHY_V3_PCS_EPCLK_PRE_PLL_LOCK_DLY_SYSCLK	0x1c8
+#define QPHY_V3_PCS_EPCLK_PRE_PLL_LOCK_DLY_AUXCLK	0x1cc
+#define QPHY_V3_PCS_EPCLK_DLY_COUNT_VAL_L		0x1d0
+#define QPHY_V3_PCS_EPCLK_DLY_COUNT_VAL_H		0x1d4
 #define QPHY_V3_PCS_RX_SIGDET_LVL			0x1d8
 #define QPHY_V3_PCS_L1SS_WAKEUP_DLY_TIME_AUXCLK_LSB	0x1dc
 #define QPHY_V3_PCS_L1SS_WAKEUP_DLY_TIME_AUXCLK_MSB	0x1e0
+#define QPHY_V3_PCS_AUTONOMOUS_MODE_CTRL2		0x1e4
+#define QPHY_V3_PCS_RXTERMINATION_DLY_SEL		0x1e8
+#define QPHY_V3_PCS_LFPS_PER_TIMER_VAL			0x1ec
+#define QPHY_V3_PCS_SIGDET_STARTUP_TIMER_VAL		0x1f0
+#define QPHY_V3_PCS_LOCK_DETECT_CONFIG4			0x1f4
+#define QPHY_V3_PCS_RX_SIGDET_DTCT_CNTRL		0x1f8
+#define QPHY_V3_PCS_PCS_STATUS4				0x1fc
+#define QPHY_V3_PCS_PCS_STATUS4_CLEAR			0x200
+#define QPHY_V3_PCS_DEC_ERROR_COUNT_STATUS		0x204
+#define QPHY_V3_PCS_COMMA_POS_STATUS			0x208
 #define QPHY_V3_PCS_REFGEN_REQ_CONFIG1			0x20c
 #define QPHY_V3_PCS_REFGEN_REQ_CONFIG2			0x210
+#define QPHY_V3_PCS_REFGEN_REQ_CONFIG3			0x214
 
 #endif
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
