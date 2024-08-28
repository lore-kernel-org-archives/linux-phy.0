Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3AC1C5474C
	for <linux-phy@archiver.kernel.org>; Wed, 28 Aug 2024 02:48:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DRRQ+4AYHk6MGd9Ip78jclGWAKouP2h9m9EzMC13eDg=; b=vUBy/8JArQnOnv
	x1TWt23NVp5iGVpU0jYN8boCitC8GyKyIvu3L+Mrq2Mt0jhExjBAUlIrFzkFn4zexxBl9SJEMNELq
	iLwqO1sNOsjnHZp0UxQCSyxhb03yWgWWMA4WDO0tXf8l90PIAhZVrwnPHg5C8IWgJV3pkzkSJ0XgS
	2JHw6QzpGQHueervL5SrdJNLKHMVnFogYhH9HTKvyvrnzXNdNd0oxuuFQM1jPfDGpGggE2730SSWk
	wOPPcHsCIK817Me+vKj8KPEizuPe/1OZsCsJy1hlKtRRjyFkSXU84wAV3IGFJwcW7YR0ABc0gfBuT
	FcNjdXQu48XfrxbcAv5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sj8jg-0000000DX8r-0RJW;
	Wed, 28 Aug 2024 02:48:40 +0000
Received: from mail-io1-f41.google.com ([209.85.166.41])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sj8jV-0000000DWzp-07KK
	for linux-phy@lists.infradead.org;
	Wed, 28 Aug 2024 02:48:38 +0000
Received: by mail-io1-f41.google.com with SMTP id ca18e2360f4ac-82784c8bca5so197178639f.0
        for <linux-phy@lists.infradead.org>; Tue, 27 Aug 2024 19:48:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724813307; x=1725418107; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=slZK3kwPJTk1YegpkiC0OGClCbpXUDIaO/7ScMP6y88=;
        b=nMzSRowhU2Df5VNhAmHIM4Vtu9aDybNV4AKuO2Te7ZRVkS1xbFlIB143P/oSbZhY/2
         G/afsCa/fFoeB8BHwTs8jAwlD32Yv16BmxprtCD2Ly1uV/dS33TTwI4B4IaJJFXjJTDB
         Za9aZew3sx6NHlMH917q1WOTOJI26BBQz+8UmIh7DeMVPdeGgRp0pGgU/eyqota9F+LH
         MlwsMYUQjYZS6Z59YL+2+t4FxCg8hmwdwVgg0vurcGojMRWsDYwrmZbHZ9WTURgloXfz
         PBay0ZjDDD2tyiR18Xt0lM05KIRTXwxRONi9V4YB9HFWGozKMkhjELBdrO1YIdcBByOf
         mXNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724813307; x=1725418107;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=slZK3kwPJTk1YegpkiC0OGClCbpXUDIaO/7ScMP6y88=;
        b=HJCXtLw4iOANpzy8zpUvhJK1E8alc6RklGoO17zHZeO31/MGsptLcVIIh6Pbju06fG
         4cUTCILq8xWWqIhlDLJCySW/g9tmE42cfIhR3DBbF35Je0nbK533H/ncZnrV/4/z4dkk
         CMdWYnsu3Yjc7KZFvuOfaqtrsRyPNXeOZ7F9rR3oRglhJgxPoW+Q9VyQ5ybVWsBfhC0n
         09c4QtJKI2QGa7PSQUnrjiaBn3szDDxEvse5hnQ/vFD26nTpNwcYfdh/tYFfXPh5l3FN
         DEx+JOznpdw1Ud9EgQPCAWPcm1MyNieMnyo7end3HISfPKiivZY6D7+90CZ1U1ahNQ3c
         3c/w==
X-Gm-Message-State: AOJu0YwCrTP0ryV+CWHVbNYiJeziybhn+OB3Dop7HAJZZAQBfjoQh4pm
	hC8XNokPCmQR9lJbAo6g1J0oaFkCU1qR6NWbDY0FuS2Z+grK+vkj12KAYQ==
X-Google-Smtp-Source: AGHT+IF4pbSmUMk0Q+rA+srN18cecFIGjTH7XlYmBzXh6ZUSfJGZQ92XHgexHHd1SW+m/bBnQIg/Aw==
X-Received: by 2002:a05:6602:13c8:b0:824:d752:986 with SMTP id ca18e2360f4ac-82787387f9amr2059918539f.16.1724813306993;
        Tue, 27 Aug 2024 19:48:26 -0700 (PDT)
Received: from aford-System-Version.lan (c-75-72-166-104.hsd1.mn.comcast.net. [75.72.166.104])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4ce71140ee6sm2838530173.170.2024.08.27.19.48.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Aug 2024 19:48:26 -0700 (PDT)
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
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	Marco Felsch <m.felsch@pengutronix.de>,
	Lucas Stach <l.stach@pengutronix.de>,
	linux-kernel@vger.kernel.org
Subject: [RFC 2/2] phy: freescale: fsl-samsung-hdmi: Support dynamic integer divider
Date: Tue, 27 Aug 2024 21:48:02 -0500
Message-ID: <20240828024813.1353572-2-aford173@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240828024813.1353572-1-aford173@gmail.com>
References: <20240828024813.1353572-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240827_194829_248130_6EBC1997 
X-CRM114-Status: GOOD (  20.06  )
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
index bc5d3625ece6..03b598f734e7 100644
--- a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
+++ b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
@@ -16,6 +16,8 @@
 
 #define PHY_REG(reg)		(reg * 4)
 
+#define REG01_PMS_P_MASK	GENMASK(3, 0)
+#define REG03_PMS_S_MASK	GENMASK(7, 4)
 #define REG12_CK_DIV_MASK	GENMASK(5, 4)
 #define REG13_TG_CODE_LOW_MASK	GENMASK(7, 0)
 #define REG14_TOL_MASK		GENMASK(7, 4)
@@ -31,6 +33,10 @@
 
 #define PHY_PLL_DIV_REGS_NUM 6
 
+#ifndef MHZ
+#define MHZ	(1000UL * 1000UL)
+#endif
+
 struct phy_config {
 	u32	pixclk;
 	u8	pll_div_regs[PHY_PLL_DIV_REGS_NUM];
@@ -440,10 +446,83 @@ fsl_samsung_hdmi_phy_configure_pll_lock_det(struct fsl_samsung_hdmi_phy *phy,
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
@@ -453,11 +532,38 @@ static int fsl_samsung_hdmi_phy_configure(struct fsl_samsung_hdmi_phy *phy,
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
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
