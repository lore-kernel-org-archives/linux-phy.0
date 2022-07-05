Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BF22CCA47B
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 10:45:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XqJwyrV87vfH+hmOFkuD9kIsoDq6/cExMvXzavrK/jI=; b=2A0t0Xx0t3xVIe
	kRNaVSgs9FcCZk9NG3EVTlpcK7l7ZwsL9rj/hXsH0H3f1Gu976ws/qexmthXJ1JOPj+ezIigo9XdK
	gFxAf+2UaHHwb+TK2WZ1pbnxXJuhtSyp5nNqfE0OkqXg0arBB6VxuXVP7UQdOlp12adE03pshyNa1
	tLYB8m8M4H4B4CTRW+VgNAxyVVyX+Hk7fK2Ljy8xmTeCFnXbxFqR1B8u5X8q5n5rxEZIZ1V43Jws/
	b6KhSrvU6+iiF2MCkJUBwkYRjbR0uKnLMnvA1cmj8XdBwuFaXcJeZM5M+dYNSYmmnHnqeNy50UbPO
	/jQm/3ixoG6Fgt2ExDbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8g41-00HFf8-UU; Tue, 05 Jul 2022 10:45:53 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8f5q-00Gqs1-Ru
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 09:43:45 +0000
Received: by mail-lf1-x134.google.com with SMTP id f39so19625078lfv.3
        for <linux-phy@lists.infradead.org>; Tue, 05 Jul 2022 02:43:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=27r7fm24HH5e9SqiJoIarL14kYY0+23g/ojTmHV1I9U=;
        b=TKqC/y23UnBYNfnXZ+H+vKhXZfn1OCtAO94RK/ygJVzW8UFp9wjVkkB+cWsOKaPM3K
         RimXUcEPW+dzpp64uG+qWa/qU8T7adFl4ZWMVRysKss6po1cv/A5d9vaYTqNUjZgxeW6
         qjfm5hqltxVdWfIKcyjrXnV6//o3e/L/wNLA0Xw+Vw9I5rioTdWKA7DW85uhqPuV0iv2
         h2mqM8WYHXHM4ZSeaxTL1xlnGYQnOkyueY4mdYSvASrNJiWZ6reQj3+0pjkr4kEEsabk
         Wo4L4F5QVy41FmZfwu3BUxsUSgeMCgEY7EePSQewyTSOBUnarqSEOrzNLhqGoV/oESXi
         gqoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=27r7fm24HH5e9SqiJoIarL14kYY0+23g/ojTmHV1I9U=;
        b=WN1X+GrdgTSTFRTSpbb4VkfNY0MWKuPjNbKWK+Y4d2EgTGK5Xe7DcY3l/NnzxIclc4
         NiIif1ArC7H9IxU8rtPjPg2SfrANEjwOo0ycoEMi1EaIHmwAKKIIUz77roJCdoIavnX+
         19/pBtSnLqj0vMhPi5v7Tvss8EBZmbBUQqPXokExmQ438/LDbCBhOtwtEy8kk5Mjydls
         AtWCHOlhk69+fOROCo4bOgJQ//NPIHoqtVdRd/LQVns8+xey6s0NsaR2DY3Xj6sjn2uL
         iox+7O8XiRlrk/K1KCW5lyJkmIhVuaVD+ScqCZIrkQl3Aner4clyzmHwdL4atTZPolaU
         itUw==
X-Gm-Message-State: AJIora9wjL59PpW2KHIDc/4DlS/g5ItG7wDG0/+h9hs1P34L1qokkeWz
	2Q07BN8hwyYObqBrnCL+g9HbNQ==
X-Google-Smtp-Source: AGRyM1vL8KqeNNUH5TyRCpJub1+nsGcE1nolTTD/oTcjJH5s3Yv8Xuw+ILkonKFz51Dv/cCnFUNT0A==
X-Received: by 2002:a05:6512:1685:b0:47f:aab4:dcd0 with SMTP id bu5-20020a056512168500b0047faab4dcd0mr22082948lfb.481.1657014222328;
        Tue, 05 Jul 2022 02:43:42 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id f7-20020a056512360700b00482f206b087sm491683lfs.39.2022.07.05.02.43.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Jul 2022 02:43:41 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v1 25/28] phy: qcom-qmp: pcs-v3: add missing registers
Date: Tue,  5 Jul 2022 12:43:17 +0300
Message-Id: <20220705094320.1313312-26-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220705094320.1313312-1-dmitry.baryshkov@linaro.org>
References: <20220705094320.1313312-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_024342_965479_67133AD0 
X-CRM114-Status: UNSURE (   7.30  )
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
