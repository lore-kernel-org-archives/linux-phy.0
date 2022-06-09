Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19774C43334
	for <linux-phy@archiver.kernel.org>; Thu,  9 Jun 2022 12:14:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+aiPmfqYyFTArWuNPBFA7nlzBS5hUYD7pEXmIfd00Mk=; b=rVJqX3kwwFvpZi
	+85Ayd4BGPv7eMP7mVIKjTHa0rYy5jE81Ch20dtwR22dTDVuqUg7WPoYk93BgZqnnuG6FVdeefFvB
	LQ5kkj3yS2I8Q1y8DWwRhIJ2CLffbYoOKtEdDKIaNR47U7KtsMKyqCA0j0bxs7194K1rDwewU4wQe
	QhnV1ame3dJHAJlyOCdcycwBE9/TYTCChtfkC39uV+Az9tzf+ZqoxMXUqU80k7tmf0NDWUtKasXod
	qTw273efTF+l0B7zYWsESuUv3WcanOkcYNmROyXv4rF9z1ngK4794vBx+Q+WhtqWTKcKI9RXRClo3
	CQNqZKGqrsuWqWrxibEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzH3j-001dpJ-GP; Thu, 09 Jun 2022 12:14:43 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzGtM-001ZCA-Ez
	for linux-phy@lists.infradead.org; Thu, 09 Jun 2022 12:04:03 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id C55306113E;
	Thu,  9 Jun 2022 12:03:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CE2DEC341C5;
	Thu,  9 Jun 2022 12:03:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1654776237;
	bh=S5g9QkaioS1LmOyC7q+wI7Npt3iFDlZoTjKlFeUKQyc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=pRP1l9UCWUpMb/BJtM/d3o+moasB/Qk6d2QgT+ptF0OZqPWudpIkDSs7UfvgMNu2s
	 NgAhXD0D9vA1LQhNjNLW6be1b3apg6SFCQFl5ODb7H92NW1a5YU0Kacu6FNLBrYHWW
	 abUQMWF4rk4mWNhKnxXr9BDTVPh6Y0U6OGoeyOKOA9lIkv0p+WPRUPkWyLW48u8hi5
	 JToQYwB1i1F158Fd3Es3vfj0mXDLAxz917nK7p9Yx9YXKgcCfS64yvKvtZxGQxSAkf
	 AN3H4VITH0LX2xrbaSE8ZeI0AK46zJ6Z+U2q3ekV5CGCfGHJEq6SZftgffOJ1iW2yK
	 ZQVEwcsSYMi5g==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1nzGtF-00014H-T1; Thu, 09 Jun 2022 14:03:53 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 3/3] phy: qcom-qmp: clean up hex defines
Date: Thu,  9 Jun 2022 14:03:38 +0200
Message-Id: <20220609120338.4080-4-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220609120338.4080-1-johan+linaro@kernel.org>
References: <20220609120338.4080-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220609_050400_622196_F28C50ED 
X-CRM114-Status: UNSURE (   9.55  )
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

Use lower case hex consistently for define values.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp.h | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
index 6d410826ae90..3a4f150dd499 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
@@ -30,7 +30,7 @@
 #define QSERDES_PLL_CP_CTRL_MODE0			0x080
 #define QSERDES_PLL_CP_CTRL_MODE1			0x084
 #define QSERDES_PLL_PLL_RCTRL_MODE0			0x088
-#define QSERDES_PLL_PLL_RCTRL_MODE1			0x08C
+#define QSERDES_PLL_PLL_RCTRL_MODE1			0x08c
 #define QSERDES_PLL_PLL_CCTRL_MODE0			0x090
 #define QSERDES_PLL_PLL_CCTRL_MODE1			0x094
 #define QSERDES_PLL_BIAS_EN_CTRL_BY_PSM			0x0a4
@@ -44,7 +44,7 @@
 #define QSERDES_PLL_DIV_FRAC_START3_MODE0		0x0e0
 #define QSERDES_PLL_DIV_FRAC_START1_MODE1		0x0e4
 #define QSERDES_PLL_DIV_FRAC_START2_MODE1		0x0e8
-#define QSERDES_PLL_DIV_FRAC_START3_MODE1		0x0eC
+#define QSERDES_PLL_DIV_FRAC_START3_MODE1		0x0ec
 #define QSERDES_PLL_INTEGLOOP_GAIN0_MODE0		0x100
 #define QSERDES_PLL_INTEGLOOP_GAIN1_MODE0		0x104
 #define QSERDES_PLL_INTEGLOOP_GAIN0_MODE1		0x108
@@ -270,11 +270,11 @@
 #define QPHY_RX_MIN_HIBERN8_TIME			0x140
 #define QPHY_RX_SIGDET_CTRL2				0x148
 #define QPHY_RX_PWM_GEAR_BAND				0x154
-#define QPHY_PLL_LOCK_CHK_DLY_TIME_AUXCLK_LSB		0x1A8
-#define QPHY_OSC_DTCT_ACTIONS				0x1AC
-#define QPHY_RX_SIGDET_LVL				0x1D8
-#define QPHY_L1SS_WAKEUP_DLY_TIME_AUXCLK_LSB		0x1DC
-#define QPHY_L1SS_WAKEUP_DLY_TIME_AUXCLK_MSB		0x1E0
+#define QPHY_PLL_LOCK_CHK_DLY_TIME_AUXCLK_LSB		0x1a8
+#define QPHY_OSC_DTCT_ACTIONS				0x1ac
+#define QPHY_RX_SIGDET_LVL				0x1d8
+#define QPHY_L1SS_WAKEUP_DLY_TIME_AUXCLK_LSB		0x1dc
+#define QPHY_L1SS_WAKEUP_DLY_TIME_AUXCLK_MSB		0x1e0
 
 /* Only for QMP V3 & V4 PHY - DP COM registers */
 #define QPHY_V3_DP_COM_PHY_MODE_CTRL			0x00
@@ -639,7 +639,7 @@
 #define QSERDES_V4_TX_TRAN_DRVR_EMP_EN			0xb8
 #define QSERDES_V4_TX_TX_INTERFACE_MODE			0xbc
 #define QSERDES_V4_TX_PWM_GEAR_1_DIVIDER_BAND0_1	0xd8
-#define QSERDES_V4_TX_PWM_GEAR_2_DIVIDER_BAND0_1	0xdC
+#define QSERDES_V4_TX_PWM_GEAR_2_DIVIDER_BAND0_1	0xdc
 #define QSERDES_V4_TX_PWM_GEAR_3_DIVIDER_BAND0_1	0xe0
 #define QSERDES_V4_TX_PWM_GEAR_4_DIVIDER_BAND0_1	0xe4
 #define QSERDES_V4_TX_VMODE_CTRL1			0xe8
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
