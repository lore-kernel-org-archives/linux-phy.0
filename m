Return-Path: <SRS0=KiND=NV=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E29E0C4320A
	for <linux-phy@archiver.kernel.org>; Mon, 30 Aug 2021 18:08:32 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9D99661004
	for <linux-phy@archiver.kernel.org>; Mon, 30 Aug 2021 18:08:32 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 9D99661004
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6662fWdnvgJ758zmfm/7awSMqU1d4E0gzoIEctRR2+A=; b=xR3RpjA89Bnp/2
	XdTBlczi4IWYMz/VdpNnXF/FZxF80RIWAlttus/wp7OyzVBaf6/c7ERxLj/Vr9BnAuZMSbFXjJGN7
	jqFtxt8KpAOjBaVZzFECLTiKOSg8c6nAoiDoaW4oPxyYvVdLQaCw/wEyfA9LPbgnLOWLGDJ8DTiL3
	SA07GkZqe1UNHdSLPb+AVRuhKfNcaa/gfoSGFA9fC1kzl3BhRa5E3Td43xf8mU8IanhSfAZNy3Ibb
	zMJthtnuJOSqCllhB55O5peh4slzC9W3Y5N/GTPC2w7ArBACM2C51COgyrHT5gmS9Lg/jb+LFkWoe
	FiAzZ7Jjqf2S8fVSsdOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mKlhv-000HRD-W4; Mon, 30 Aug 2021 18:08:32 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mKlhh-000HLy-RZ; Mon, 30 Aug 2021 18:08:19 +0000
Received: by mail-lj1-x231.google.com with SMTP id f2so27451030ljn.1;
 Mon, 30 Aug 2021 11:08:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ehFQwBA3BukYXlKRjKhYo7zYYZcV56jlrWBZsRudsVk=;
 b=Fifwl3XeLQJL4RlHoxrHI7pY51LOjaYOUgZNAL02Ng6vT2BzMjJGis80onUmGt7XGH
 WFP17IuJRfFI/ae3yl8IXnyYAgTY1ptRfs+oUNuI74JI57+XNHbikKMxCb+oo6zLk0RN
 1k1XpzLXR9N31p4hJPDtXdFZSOXvAyE3xIzob7SbArBct3V/BpPRTw8US1/oW09rKUlS
 GT1zjShZlQDSO6L/Q/wiSHgLP40m8SWx6cH/AfUpcnLKG6KbW1zRnQzRcbr+rPix5cDF
 0w6/hurDb6cZBNM8nknKOL6qwevmzvWgztnl4yT3f9eBK4ku/ogJRza8pGvtiwYtgH+3
 arQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ehFQwBA3BukYXlKRjKhYo7zYYZcV56jlrWBZsRudsVk=;
 b=mLnEaP8iCYCsuWgorbGAbY6rCIoLHiBLY4y7axDoAj3PyC7ZGxZX2CAZa2feL6Vna9
 5ljBL/OfuawKa4jMgGxFUxJeO9AtRRs1rotgnZ+TXDEx7h3t+t+OaSmG5mN0eRkTQfmN
 gQVDbwjrCq1zD8t0HppnCmK1A5bjo6ek9hdi8rdt8JcB9SvpsQOG+EpozLK21GJyzzIQ
 4f183I7EeuxE5HMGpqhZcXnA3fgjHGFU7Rx8DvHxrwOAR+RKHQR1EfyFSTZjiisHPzf5
 vQwmQqPMM1m86pJ2NurGHOHYPFzWZ1cvPx6okvaTVsmyVREiJ72yzHH+7QcxXSGR1Byq
 G+6A==
X-Gm-Message-State: AOAM530rjG3TmhzbIhxA0bNR2GgGBhdHvlDtj3BJ1L8Xo12ouFO8ef2I
 4Lvvdyj/kQjq4K6Vqc+8GXgcdj51Oxi2FQ==
X-Google-Smtp-Source: ABdhPJxxG8YG731ayRJQUndl/4IVw5XHoG6tIsVQhX87NC59tPsiXVaRZ5V/zbs4lREfOQ71p5+hyg==
X-Received: by 2002:a05:651c:10a8:: with SMTP id
 k8mr21257633ljn.356.1630346895552; 
 Mon, 30 Aug 2021 11:08:15 -0700 (PDT)
Received: from localhost (37-145-211-218.broadband.corbina.ru.
 [37.145.211.218])
 by smtp.gmail.com with ESMTPSA id l7sm1454952lfj.81.2021.08.30.11.08.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Aug 2021 11:08:15 -0700 (PDT)
From: Mikhail Rudenko <mike.rudenko@gmail.com>
To: linux-phy@lists.infradead.org
Cc: linux-media@vger.kernel.org, Mikhail Rudenko <mike.rudenko@gmail.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v1 1/5] phy: phy-rockchip-dphy-rx0: refactor for tx1rx1
 addition
Date: Mon, 30 Aug 2021 21:07:50 +0300
Message-Id: <20210830180758.251390-2-mike.rudenko@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210830180758.251390-1-mike.rudenko@gmail.com>
References: <20210830180758.251390-1-mike.rudenko@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210830_110817_935511_A03B31D8 
X-CRM114-Status: GOOD (  12.88  )
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

In order to accommodate for rk3399 tx1rx1 addition, make
enable/disable function calls indirect via function pointers in
rk_dphy_drv_data. Also rename rk_dphy_write and rk_dphy_enable to
avoid naming clashes.

Signed-off-by: Mikhail Rudenko <mike.rudenko@gmail.com>
---
 drivers/phy/rockchip/phy-rockchip-dphy-rx0.c | 38 +++++++++++++-------
 1 file changed, 25 insertions(+), 13 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-dphy-rx0.c b/drivers/phy/rockchip/phy-rockchip-dphy-rx0.c
index 4df9476ef2a9..72145cdfb036 100644
--- a/drivers/phy/rockchip/phy-rockchip-dphy-rx0.c
+++ b/drivers/phy/rockchip/phy-rockchip-dphy-rx0.c
@@ -138,12 +138,17 @@ static const struct dphy_reg rk3399_grf_dphy_regs[] = {
 	[GRF_DPHY_RX0_TESTDOUT] = PHY_REG(RK3399_GRF_SOC_STATUS1, 8, 0),
 };
 
+struct rk_dphy;
+
 struct rk_dphy_drv_data {
 	const char * const *clks;
 	unsigned int num_clks;
 	const struct hsfreq_range *hsfreq_ranges;
 	unsigned int num_hsfreq_ranges;
 	const struct dphy_reg *regs;
+
+	void (*enable)(struct rk_dphy *priv);
+	void (*disable)(struct rk_dphy *priv);
 };
 
 struct rk_dphy {
@@ -170,7 +175,7 @@ static inline void rk_dphy_write_grf(struct rk_dphy *priv,
 	regmap_write(priv->grf, reg->offset, val);
 }
 
-static void rk_dphy_write(struct rk_dphy *priv, u8 test_code, u8 test_data)
+static void rk_dphy_write_mipi_rx(struct rk_dphy *priv, u8 test_code, u8 test_data)
 {
 	rk_dphy_write_grf(priv, GRF_DPHY_RX0_TESTDIN, test_code);
 	rk_dphy_write_grf(priv, GRF_DPHY_RX0_TESTEN, 1);
@@ -186,7 +191,7 @@ static void rk_dphy_write(struct rk_dphy *priv, u8 test_code, u8 test_data)
 	rk_dphy_write_grf(priv, GRF_DPHY_RX0_TESTCLK, 1);
 }
 
-static void rk_dphy_enable(struct rk_dphy *priv)
+static void rk_dphy_enable_rx(struct rk_dphy *priv)
 {
 	rk_dphy_write_grf(priv, GRF_DPHY_RX0_FORCERXMODE, 0);
 	rk_dphy_write_grf(priv, GRF_DPHY_RX0_FORCETXSTOPMODE, 0);
@@ -206,22 +211,27 @@ static void rk_dphy_enable(struct rk_dphy *priv)
 	usleep_range(100, 150);
 
 	/* set clock lane */
-	/* HS hsfreq_range & lane 0  settle bypass */
-	rk_dphy_write(priv, CLOCK_LANE_HS_RX_CONTROL, 0);
+	/* HS hsfreq_range & lane 0	 settle bypass */
+	rk_dphy_write_mipi_rx(priv, CLOCK_LANE_HS_RX_CONTROL, 0);
 	/* HS RX Control of lane0 */
-	rk_dphy_write(priv, LANE0_HS_RX_CONTROL, priv->hsfreq << 1);
+	rk_dphy_write_mipi_rx(priv, LANE0_HS_RX_CONTROL, priv->hsfreq << 1);
 	/* HS RX Control of lane1 */
-	rk_dphy_write(priv, LANE1_HS_RX_CONTROL, priv->hsfreq << 1);
+	rk_dphy_write_mipi_rx(priv, LANE1_HS_RX_CONTROL, priv->hsfreq << 1);
 	/* HS RX Control of lane2 */
-	rk_dphy_write(priv, LANE2_HS_RX_CONTROL, priv->hsfreq << 1);
+	rk_dphy_write_mipi_rx(priv, LANE2_HS_RX_CONTROL, priv->hsfreq << 1);
 	/* HS RX Control of lane3 */
-	rk_dphy_write(priv, LANE3_HS_RX_CONTROL, priv->hsfreq << 1);
+	rk_dphy_write_mipi_rx(priv, LANE3_HS_RX_CONTROL, priv->hsfreq << 1);
 	/* HS RX Data Lanes Settle State Time Control */
-	rk_dphy_write(priv, LANES_THS_SETTLE_CONTROL,
-		      THS_SETTLE_COUNTER_THRESHOLD);
+	rk_dphy_write_mipi_rx(priv, LANES_THS_SETTLE_CONTROL,
+			  THS_SETTLE_COUNTER_THRESHOLD);
 
 	/* Normal operation */
-	rk_dphy_write(priv, 0x0, 0);
+	rk_dphy_write_mipi_rx(priv, 0x0, 0);
+}
+
+static void rk_dphy_disable_rx(struct rk_dphy *priv)
+{
+	rk_dphy_write_grf(priv, GRF_DPHY_RX0_ENABLE, 0);
 }
 
 static int rk_dphy_configure(struct phy *phy, union phy_configure_opts *opts)
@@ -266,7 +276,7 @@ static int rk_dphy_power_on(struct phy *phy)
 	if (ret)
 		return ret;
 
-	rk_dphy_enable(priv);
+	priv->drv_data->enable(priv);
 
 	return 0;
 }
@@ -275,7 +285,7 @@ static int rk_dphy_power_off(struct phy *phy)
 {
 	struct rk_dphy *priv = phy_get_drvdata(phy);
 
-	rk_dphy_write_grf(priv, GRF_DPHY_RX0_ENABLE, 0);
+	priv->drv_data->disable(priv);
 	clk_bulk_disable(priv->drv_data->num_clks, priv->clks);
 	return 0;
 }
@@ -310,6 +320,8 @@ static const struct rk_dphy_drv_data rk3399_mipidphy_drv_data = {
 	.hsfreq_ranges = rk3399_mipidphy_hsfreq_ranges,
 	.num_hsfreq_ranges = ARRAY_SIZE(rk3399_mipidphy_hsfreq_ranges),
 	.regs = rk3399_grf_dphy_regs,
+	.enable = rk_dphy_enable_rx,
+	.disable = rk_dphy_disable_rx,
 };
 
 static const struct of_device_id rk_dphy_dt_ids[] = {
-- 
2.33.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
