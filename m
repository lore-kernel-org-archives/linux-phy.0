Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 691EDEE01FA
	for <linux-phy@archiver.kernel.org>; Wed, 11 Sep 2024 01:29:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kz9mjCoMMNu84koZllc3ctsO41HMM7FiL/cfYiIM7iI=; b=U2+K3iOST5YGW2
	5JocN8jJDZ17hgwC4lZuJcKQoCFc+W9s4ZO+OamS3jtxJt+o6DJGIGFwcA4eBAQE8tJmy9xbwGMod
	jUaQ8lh/ilCGgXbrVuJ9DABjfezAn/9v0l1yYa8mGupfldZKHoTo6aAo+5NtOFt6UDZHSph9oyy/K
	Hc8ol7XhPXFPcUUPHnETPoN9ZqiKDCZegeLEl+QeaZxjHxfX+ppACd4TN3II3V/MncvSbTDnX/anI
	dgbuO+1ZBZIkR/x2jx7plbchGxPT51+6mMXz9AD3BeKHvpaGxeHta8rey5Cjz4lkRlrkqGFPzJsIV
	yQ0lwSr4rkYHkCDzTUBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soCAl-00000007h3z-0g4d;
	Wed, 11 Sep 2024 01:29:31 +0000
Received: from mail-io1-xd2c.google.com ([2607:f8b0:4864:20::d2c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soCAh-00000007h2j-3aiS
	for linux-phy@lists.infradead.org;
	Wed, 11 Sep 2024 01:29:29 +0000
Received: by mail-io1-xd2c.google.com with SMTP id ca18e2360f4ac-82aa7c3b3dbso214107539f.2
        for <linux-phy@lists.infradead.org>; Tue, 10 Sep 2024 18:29:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1726018166; x=1726622966; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tlFNTDXoXEyUpPlrrNaNANZH/5hsOx6UcWrdzrMvmoM=;
        b=cESaXW6O1h7T2aGVzDbGUunh0lfYa3GxitFgHmcHvOSUYgoxTvN3BhiydOILMBCRP6
         wDjVwSOG06Vb/7zgMHYdxnjOuVJk5ONOgfJMxlr40+vG5qFR6un0t6v5LlP8mk7JranL
         ma1UhQe4BfcnPhX1cWOM5sM8Fz+ulfF2V6iwD4QLCGQSk0JrnEJShy75MgVbwcaPnfuh
         InE4pd32Jwco3tgn7uG0ZSF1UCfoWsMaRHmEz7E6L50ghqqqMy8rPODxAXpoYxEqTqoz
         qpKbpDlNIEb8BOxEK2TDaVwNCAgGbPo8ij/Dq/Z3WxNUTTE6FrI13rl2YXz6I2usAR3z
         uEqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726018166; x=1726622966;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tlFNTDXoXEyUpPlrrNaNANZH/5hsOx6UcWrdzrMvmoM=;
        b=NoBmQkNhqIurQuMgPDBvjdFx7sUGfQv6+ueY0ZYK252FobLF0nnDm4IoAI0BYNoV3v
         1bmhW4WZddWoshCushcoG5Mkf6D13leNoB/Apq4i+Gth3txUadEYplgot/sH4TnBB6im
         dAr+V5MH4zN7+VUGyHdt5+F6KBkzujE6TKx8QHE/lum8BkGfTummuKZdmpcw96fKz47d
         eeq5U99xZ/wssalAf23zV/3w9ghvUvnn0VDYfD4e4QlRta24+btxbQ/Y1xcsyuvG6yvl
         0NKbyXlhgg9M0LchaIkcDRqpqDQq8AKzWCkXoDeWZTIuMenkn7bmWyLt5hBV8/ka9t1W
         wYrg==
X-Gm-Message-State: AOJu0Ywa9gek7nrqhbKM8VzQLrNdslANzf1vsY1SgXa9sOIU/fg5K/T+
	z3bcl6rNiRnmwR4hZfLa3lX6wVMbdDQih13OlziELAFwG+TnvJvB1UnlCg==
X-Google-Smtp-Source: AGHT+IHOlR9fu7WNIanoaxL4Cik4jU168bCe4I1AdMH1x3KQNoa+P9rSz7ffH6ZORnOkMfaOxNu7VQ==
X-Received: by 2002:a05:6602:2dd4:b0:82c:eb18:ea53 with SMTP id ca18e2360f4ac-82ceb18ec51mr1045846039f.16.1726018166381;
        Tue, 10 Sep 2024 18:29:26 -0700 (PDT)
Received: from aford-System-Version.lan (c-75-72-166-104.hsd1.mn.comcast.net. [75.72.166.104])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4d094561c8csm1917945173.62.2024.09.10.18.29.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Sep 2024 18:29:21 -0700 (PDT)
From: Adam Ford <aford173@gmail.com>
To: linux-phy@lists.infradead.org
Cc: dominique.martinet@atmark-techno.com,
	linux-imx@nxp.com,
	festevam@gmail.com,
	frieder.schrempf@kontron.de,
	aford@beaconembedded.com,
	Sandor.yu@nxp.com,
	Adam Ford <aford173@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Marco Felsch <m.felsch@pengutronix.de>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	Lucas Stach <l.stach@pengutronix.de>,
	linux-kernel@vger.kernel.org
Subject: [PATCH V7 4/5] phy: freescale: fsl-samsung-hdmi: Use closest divider
Date: Tue, 10 Sep 2024 20:28:10 -0500
Message-ID: <20240911012838.944630-5-aford173@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240911012838.944630-1-aford173@gmail.com>
References: <20240911012838.944630-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240910_182927_917296_512D27D0 
X-CRM114-Status: GOOD (  20.26  )
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

Currently, if the clock values cannot be set to the exact rate,
the round_rate and set_rate functions use the closest value found in
the look-up-table.  In preparation of removing values from the LUT
that can be calculated evenly with the integer calculator, it's
necessary to ensure to check both the look-up-table and the integer
divider clock values to get the closest values to the requested
value.  It does this by measuring the difference between the
requested clock value and the closest value in both integer divider
calucator and the fractional clock look-up-table.

Which ever has the smallest difference between them is returned as
the closest rate.

Signed-off-by: Adam Ford <aford173@gmail.com>
---
V7:  Because of the previous patch refactoring, the flow of this patch
     changed quite a bit to use more help functions and goto statements
     to hopefully make the code flow better and improve comment
     readability.  Because of the change, I removed s-o-b and r-b,
     and t-b tags.

V6:  Simplify the calculation of the closest rate and fix
     a situation where the integer divider values may not be properly
     setup before they are used.
     Fixup some comments
V5:  No Change
V4:  New to series
---
 drivers/phy/freescale/phy-fsl-samsung-hdmi.c | 40 ++++++++++++++------
 1 file changed, 28 insertions(+), 12 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
index 49317a96f767..67a28aac9c45 100644
--- a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
+++ b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
@@ -577,6 +577,16 @@ static void fsl_samsung_hdmi_calculate_phy(struct phy_config *cal_phy, unsigned
 	/* pll_div_regs 3-6 are fixed and pre-defined already */
 }
 
+static u32 fsl_samsung_hdmi_phy_get_closest_rate(unsigned long rate,
+						 u32 int_div_clk, u32 frac_div_clk)
+{
+	/* The int_div_clk may be greater than rate, so cast it and use ABS */
+	if (abs((long)rate - (long)int_div_clk) < (rate - frac_div_clk))
+		return int_div_clk;
+
+	return frac_div_clk;
+}
+
 static long phy_clk_round_rate(struct clk_hw *hw,
 			       unsigned long rate, unsigned long *parent_rate)
 {
@@ -624,27 +634,33 @@ static int phy_clk_set_rate(struct clk_hw *hw,
 		goto use_fract_div;
 
 	/*
-	 * If the rate from the fractional divder is not exact, check the integer divider,
+	 * If the rate from the fractional divider is not exact, check the integer divider,
 	 * and use it if that value is an exact match.
 	 */
 	int_div_clk = fsl_samsung_hdmi_phy_find_pms(rate, &p, &m, &s);
+	fsl_samsung_hdmi_calculate_phy(&calculated_phy_pll_cfg, int_div_clk, p, m, s);
 	if (int_div_clk == rate) {
-		dev_dbg(phy->dev, "fsl_samsung_hdmi_phy: integer divider rate = %u\n",
-				   int_div_clk);
-
-		fsl_samsung_hdmi_calculate_phy(&calculated_phy_pll_cfg, int_div_clk, p, m, s);
-		phy->cur_cfg  = &calculated_phy_pll_cfg;
-		return fsl_samsung_hdmi_phy_configure(phy, phy->cur_cfg);
+		goto use_int_div;
 	}
 
 	/*
-	 * If neither the fractional divder nor the integer divder can find an exact value
-	 * fall back to using the fractional divider
+	 * Compare the difference between the integer clock and the fractional clock against
+	 * the desired clock and which whichever is closest,
 	 */
+	if (fsl_samsung_hdmi_phy_get_closest_rate(rate, int_div_clk,
+						  fract_div_phy->pixclk) == fract_div_phy->pixclk)
+		goto use_fract_div;
+
+use_int_div:
+	dev_dbg(phy->dev, "fsl_samsung_hdmi_phy: integer divider rate = %u\n", int_div_clk);
+	phy->cur_cfg  = &calculated_phy_pll_cfg;
+	goto end;
+
 use_fract_div:
-	phy->cur_cfg = fract_div_phy;
-	dev_dbg(phy->dev, "fsl_samsung_hdmi_phy: using fractional divider rate = %u\n",
-			   phy->cur_cfg->pixclk);
+	 phy->cur_cfg = fract_div_phy;
+	 dev_dbg(phy->dev, "fsl_samsung_hdmi_phy: using fractional divider rate = %u\n",
+		   phy->cur_cfg->pixclk);
+end:
 	return fsl_samsung_hdmi_phy_configure(phy, phy->cur_cfg);
 }
 
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
