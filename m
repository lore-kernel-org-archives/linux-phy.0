Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7541C7115E
	for <linux-phy@archiver.kernel.org>; Thu, 29 Aug 2024 02:13:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f9YuBVBeL65jOncACdxuDh4ySwfI69BcUsEF/sXheZY=; b=NmAa6NpqxRWY7T
	M+rfynJczAYq6dGn5552RGaDYVF7caWufpDAi+nxpQLvMsQL6NvivZdNOb2RaWb0kWuE/0vheq0HD
	UJHGAiuL+JIbDWnZLwZvNZ2qXCotC1Ot42txBrR2inbCu7Pf6uNnuLUAVnCGBTYZeFxBveKvWfBwe
	Wo85auiAOVW+BzoucUwgvbzPEkSfD+0lDmKfnR7Ww23pHIwCKoUziVLEzLMUh8JrOt81mktJQ7fBU
	dsoU0SnlxM7kXlqZI41p0Igqcjwh/VH7PKYOTthn9ea+vyhj4bpU6m9yIVmPUhU2fQrJREwSMmNEu
	idoQF5jagG/bZm2tVWmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjUeu-00000000CLa-1Dgf;
	Thu, 29 Aug 2024 02:13:12 +0000
Received: from mail-io1-xd2b.google.com ([2607:f8b0:4864:20::d2b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjUer-00000000CL0-2CPF
	for linux-phy@lists.infradead.org;
	Thu, 29 Aug 2024 02:13:10 +0000
Received: by mail-io1-xd2b.google.com with SMTP id ca18e2360f4ac-82521c46feaso7795039f.2
        for <linux-phy@lists.infradead.org>; Wed, 28 Aug 2024 19:13:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724897588; x=1725502388; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RsjhY5XZ0vnEndVhLYw930ASTyeg4yncLyqMDgVzQMw=;
        b=mvN7UlJ5KurVJdo1OML3GYjfAtui0i+3mDrEiroilnvIMm6ubnDTncdVRIQIIVohha
         QRxDpvyu0Le7Qo4wkv3ITeYZkgH3K7kNKAOjsYK5ZBgVopocfC6hQYmhcn1oIAFlaQYv
         EenzRwqNsbo3eXdatAIWvVc5heVplXZutHL2vyA56aFbTCsYkBUkp6ALm/wmZBZ/yzgo
         7DafzFGlaOoDThspf6+Ur4MWCI/dGiIi8N8xrN3G5ACzB9lzcYiCMTee+fBoDfZ/3ZdV
         V/Jf9gUG/vxv+XfcqX3YeOoXhYGS1xdeBG52OtIKtv8z9tXyZtwlZdoZendDdjt1h7Au
         i43g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724897588; x=1725502388;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RsjhY5XZ0vnEndVhLYw930ASTyeg4yncLyqMDgVzQMw=;
        b=Y+wt2W1hbI/mUAr/06jiz5y74kOpkBwS9uwQGZ6Qe1Ifabi/wZvG2GQn4b4+yiXQtb
         K1oFLeYSxYJIt8GwizJk5+DfYRVNUEmARubl8CjCX9+J6143Qhc1NJtLRGHBO/Wxooun
         9KriZgs0sffMn4mj1+Iikl6uBRTEdB7GQGhR2CP7bSR3gNWMrIeCtrQqQuTueDzrAC2Z
         3Ec83ZjMF4G+GiG8dLwdCdWjW288FTF5Ng0w053bvCorkVWEA8hx0oNrPLafT8qEAntb
         Cl2e+GOG9c7W4ywI3kPHLEN8vJ61IIaUgVldwFT64M5Oc3AnVVi41VwXixlYkQVR+vD5
         bFYw==
X-Gm-Message-State: AOJu0YzrF6rRi8kWoGnw3RN5c9+8D6sm+3WsXz6x8bRw9AwH6ZdPd0Q9
	WJnsKEjOX8uwmiwSdfNbw416Ba3lMEgKqfqjviw/YSE3mxPSZ/s/NGu62A==
X-Google-Smtp-Source: AGHT+IEtHJTmpOM1GYaMvoBooLQufKeyrDlS3bodVB3yDcAXfAxOJ4AvzBJENGNR3R7isPhfifUIuQ==
X-Received: by 2002:a05:6602:15c6:b0:81e:4ef0:3a81 with SMTP id ca18e2360f4ac-82a1109c87cmr179544039f.16.1724897587851;
        Wed, 28 Aug 2024 19:13:07 -0700 (PDT)
Received: from aford-System-Version.lan (c-75-72-166-104.hsd1.mn.comcast.net. [75.72.166.104])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4ced2ee8559sm46200173.174.2024.08.28.19.13.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Aug 2024 19:13:07 -0700 (PDT)
From: Adam Ford <aford173@gmail.com>
To: linux-phy@lists.infradead.org
Cc: dominique.martinet@atmark-techno.com,
	linux-imx@nxp.com,
	festevam@gmail.com,
	frieder.schrempf@kontron.de,
	aford@beaconembedded.com,
	Adam Ford <aford173@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Lucas Stach <l.stach@pengutronix.de>,
	Marco Felsch <m.felsch@pengutronix.de>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	linux-kernel@vger.kernel.org
Subject: [RFC V2 2/2] phy: freescale: fsl-samsung-hdmi: Support dynamic integer divider
Date: Wed, 28 Aug 2024 21:12:45 -0500
Message-ID: <20240829021256.787615-2-aford173@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240829021256.787615-1-aford173@gmail.com>
References: <20240829021256.787615-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240828_191309_589252_3F838271 
X-CRM114-Status: GOOD (  23.35  )
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

There is currently a look-up table for a variety of resolutions.
Since the phy has the ability to dynamically calculate the values
necessary to use the intger divider which should allow more
resolutions without having to update the look-up-table.  If the
integer calculator cannot get an exact frequency, it falls back
to the look-up-table.  Because the LUT algorithm does some
rounding, I did not remove integer entries from the LUT.

Signed-off-by: Adam Ford <aford173@gmail.com>

diff --git a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
index bc5d3625ece6..76e0899c6006 100644
--- a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
+++ b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
@@ -16,6 +16,8 @@
 
 #define PHY_REG(reg)		(reg * 4)
 
+#define REG01_PMS_P_MASK	GENMASK(3, 0)
+#define REG03_PMS_S_MASK	GENMASK(7, 4)
 #define REG12_CK_DIV_MASK	GENMASK(5, 4)
 #define REG13_TG_CODE_LOW_MASK	GENMASK(7, 0)
 #define REG14_TOL_MASK		GENMASK(7, 4)
@@ -31,11 +33,17 @@
 
 #define PHY_PLL_DIV_REGS_NUM 6
 
+#ifndef MHZ
+#define MHZ	(1000UL * 1000UL)
+#endif
+
 struct phy_config {
 	u32	pixclk;
 	u8	pll_div_regs[PHY_PLL_DIV_REGS_NUM];
 };
 
+static struct phy_config custom_phy_pll_cfg;
+
 static const struct phy_config phy_pll_cfg[] = {
 	{
 		.pixclk = 22250000,
@@ -440,10 +448,83 @@ fsl_samsung_hdmi_phy_configure_pll_lock_det(struct fsl_samsung_hdmi_phy *phy,
 	       phy->regs + PHY_REG(14));
 }
 
+static unsigned long fsl_samsung_hdmi_phy_find_pms(unsigned long fout, u8 *p, u16 *m, u8 *s)
+{
+	unsigned long best_freq = 0;
+	u32 min_delta = 0xffffffff;
+	u8 _p, best_p;
+	u16 _m, best_m;
+	u8 _s, best_s;
+
+	for (_p = 1; _p <= 11; ++_p) {
+		for (_s = 1; _s <= 16; ++_s) {
+			u64 tmp;
+			u32 delta;
+
+			/* s must be even */
+			if (_s > 1 && (_s & 0x01) == 1)
+				_s++;
+
+			/* _s cannot be 14 per the TRM */
+			if (_s == 14)
+				continue;
+
+			/*
+			 * TODO: Ref Manual doesn't state the range of _m
+			 * so this should be further refined if possible.
+			 * This range was set based on the original values
+			 * in the look-up table
+			 */
+			tmp = (u64)fout * (_p * _s);
+			do_div(tmp, 24 * MHZ);
+			_m = tmp;
+			if (_m < 0x30 || _m > 0x7b)
+				continue;
+
+			/*
+			 * Rev 2 of the Ref Manual states the
+			 * VCO can range between 750MHz and
+			 * 3GHz.  The VCO is assumed to be _m x
+			 * the reference frequency of 24MHz divided
+			 * by the prescaler, _p
+			 */
+			tmp = (u64)_m * 24 * MHZ;
+			do_div(tmp, _p);
+			if (tmp < 750 * MHZ ||
+			    tmp > 3000 * MHZ)
+				continue;
+
+			tmp = (u64)_m * 24 * MHZ;
+			do_div(tmp, _p * _s);
+
+			delta = abs(fout - tmp);
+			if (delta < min_delta) {
+				best_p = _p;
+				best_s = _s;
+				best_m = _m;
+				min_delta = delta;
+				best_freq = tmp;
+			}
+		}
+	}
+
+	if (best_freq) {
+		*p = best_p;
+		*m = best_m;
+		*s = best_s;
+	}
+
+	return best_freq;
+}
+
 static int fsl_samsung_hdmi_phy_configure(struct fsl_samsung_hdmi_phy *phy,
 					  const struct phy_config *cfg)
 {
+	u32 desired_clock = cfg->pixclk * 5;
+	u32 close_freq;
 	int i, ret;
+	u16 m;
+	u8 p, s;
 	u8 val;
 
 	/* HDMI PHY init */
@@ -453,11 +534,38 @@ static int fsl_samsung_hdmi_phy_configure(struct fsl_samsung_hdmi_phy *phy,
 	for (i = 0; i < ARRAY_SIZE(common_phy_cfg); i++)
 		writeb(common_phy_cfg[i].val, phy->regs + common_phy_cfg[i].reg);
 
-	/* set individual PLL registers PHY_REG2 ... PHY_REG7 */
-	for (i = 0; i < PHY_PLL_DIV_REGS_NUM; i++)
-		writeb(cfg->pll_div_regs[i], phy->regs + PHY_REG(2) + i * 4);
+	/* Using the PMS calculator alone, determine if can use integer divider */
+	close_freq = fsl_samsung_hdmi_phy_find_pms(desired_clock, &p, &m, &s);
+
+	/* If the clock cannot be configured with integer divder, use the fractional divider */
+	if (close_freq != desired_clock) {
+		dev_dbg(phy->dev, "fsl_samsung_hdmi_phy: use fractional divider\n");
+		/* set individual PLL registers PHY_REG2 ... PHY_REG7 */
+		for (i = 0; i < PHY_PLL_DIV_REGS_NUM; i++)
+			writeb(cfg->pll_div_regs[i], phy->regs + PHY_REG(2) + i * 4);
+		fsl_samsung_hdmi_phy_configure_pixclk(phy, cfg);
+	} else {
+		dev_dbg(phy->dev, "fsl_samsung_hdmi_phy: use integer divider\n");
+		dev_dbg(phy->dev, "fsl_samsung_hdmi_phy: P = %d\n", p);
+		dev_dbg(phy->dev, "fsl_samsung_hdmi_phy: M = %d\n", m);
+		dev_dbg(phy->dev, "fsl_samsung_hdmi_phy: S = %d\n", s);
+		dev_dbg(phy->dev, "fsl_samsung_hdmi_phy: frequency = %u\n", close_freq);
+
+		/* Write integer divder values for PMS */
+		writeb(FIELD_PREP(REG01_PMS_P_MASK, p), phy->regs + PHY_REG(1));
+		writeb(m, phy->regs + PHY_REG(2));
+		writeb(FIELD_PREP(REG03_PMS_S_MASK, s-1), phy->regs + PHY_REG(3));
+
+		/* Configure PHY to disable fractional divider */
+		writeb(0x00, phy->regs + PHY_REG(4));
+		writeb(0x00, phy->regs + PHY_REG(5));
+		writeb(0x80, phy->regs + PHY_REG(6));
+		writeb(0x00, phy->regs + PHY_REG(7));
+
+		writeb(REG21_SEL_TX_CK_INV | FIELD_PREP(REG21_PMS_S_MASK, s-1),
+		       phy->regs + PHY_REG(21));
+	}
 
-	fsl_samsung_hdmi_phy_configure_pixclk(phy, cfg);
 	fsl_samsung_hdmi_phy_configure_pll_lock_det(phy, cfg);
 
 	writeb(REG33_FIX_DA | REG33_MODE_SET_DONE, phy->regs + PHY_REG(33));
@@ -484,8 +592,17 @@ static unsigned long phy_clk_recalc_rate(struct clk_hw *hw,
 static long phy_clk_round_rate(struct clk_hw *hw,
 			       unsigned long rate, unsigned long *parent_rate)
 {
+	u32 int_div_clk;
 	int i;
+	u16 m;
+	u8 p, s;
+
+	/* If the integer divider works, just use it */
+	int_div_clk = fsl_samsung_hdmi_phy_find_pms(rate * 5, &p, &m, &s) / 5;
+	if (int_div_clk == rate)
+		return int_div_clk;
 
+	/* Otherwise, fall back to the LUT */
 	for (i = ARRAY_SIZE(phy_pll_cfg) - 1; i >= 0; i--)
 		if (phy_pll_cfg[i].pixclk <= rate)
 			return phy_pll_cfg[i].pixclk;
@@ -497,16 +614,28 @@ static int phy_clk_set_rate(struct clk_hw *hw,
 			    unsigned long rate, unsigned long parent_rate)
 {
 	struct fsl_samsung_hdmi_phy *phy = to_fsl_samsung_hdmi_phy(hw);
+	u32 int_div_clk;
 	int i;
-
-	for (i = ARRAY_SIZE(phy_pll_cfg) - 1; i >= 0; i--)
-		if (phy_pll_cfg[i].pixclk <= rate)
-			break;
-
-	if (i < 0)
-		return -EINVAL;
-
-	phy->cur_cfg = &phy_pll_cfg[i];
+	u16 m;
+	u8 p, s;
+
+	/* If the integer divider works, just use it */
+	int_div_clk = fsl_samsung_hdmi_phy_find_pms(rate * 5, &p, &m, &s) / 5;
+	if (int_div_clk == rate) {
+		/* Just set the pixclk rate, the rest will be calculated */
+		custom_phy_pll_cfg.pixclk = int_div_clk;
+		phy->cur_cfg  = &custom_phy_pll_cfg;
+	} else {
+		/* Otherwise, search the LUT */
+		for (i = ARRAY_SIZE(phy_pll_cfg) - 1; i >= 0; i--)
+			if (phy_pll_cfg[i].pixclk <= rate)
+				break;
+
+		if (i < 0)
+			return -EINVAL;
+
+		phy->cur_cfg = &phy_pll_cfg[i];
+	}
 
 	return fsl_samsung_hdmi_phy_configure(phy, phy->cur_cfg);
 }
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
