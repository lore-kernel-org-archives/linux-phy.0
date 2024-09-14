Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7271C02191
	for <linux-phy@archiver.kernel.org>; Sat, 14 Sep 2024 11:28:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KtpAmy9e0F518NaAqPR6lRdysTDX6jaBwxDAi+Eyia8=; b=l25YQ2KOGpMEJK
	q0lHurVGJi72ME86M1q2tsRCuTfW2avnIUyZhvidiCEjUvnAUHAYQFEG16xMDoTDvnVGhmC69snHZ
	smCuu+E2JDNbjgeWNMrlHijQF0p/P1ImrFcKD5FqPdToT/rYTGfxJ86iSpGfa9Ka1Oc7OoOyMSK40
	Y1t2v4DPClaDPM4FZpigLFT1Rt0Jx0cm9fjEMVTvW2j/cV3P0DslKDIyBPmjWr4XQoqqkIp82TT7J
	KIycOl+2Xhh8Q7x65tIzO5ZvH2NM58MWt6oTbrVvDmO4L9qUJ66vtCJDHu3QzTCrizCcdOS8mFK62
	VQJwvbbrtNeiKOJrKyyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1spQxO-00000000bXL-07Pu;
	Sat, 14 Sep 2024 11:28:50 +0000
Received: from mail-il1-x136.google.com ([2607:f8b0:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1spQxM-00000000bWr-0Heb
	for linux-phy@lists.infradead.org;
	Sat, 14 Sep 2024 11:28:49 +0000
Received: by mail-il1-x136.google.com with SMTP id e9e14a558f8ab-39f54ab8e69so13357405ab.1
        for <linux-phy@lists.infradead.org>; Sat, 14 Sep 2024 04:28:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1726313326; x=1726918126; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8xV6n2xfd+FaMO8WaO3/5kzB5Pnz5Y6CJYYgXfk9V5E=;
        b=iSAibDOPGZRUkVWrmLOlZexnswficxsCuo2O8iTJM5GeE1maB/Mdq7aXiHmi4WXocZ
         ixzPy6y9GfAcbG56N8U0DxQI6G4lnKoXFiptVC27axLiFIXmOjF5tcvDKsxgN2OJ6eUd
         xdcDbC6QOP3XFQEwxKpJATxn7dGjlDjhM3F0j/J/C/Kgsn/DaIHp45al8S7gKiTlgg03
         0RHdEKaOsbgv0+Q9d+0wJGa+f+j4yoxYzxRYDNviMUu1tbdJrQOb6Tyusi6pag6sGO3T
         y0o0n2yPvSiKEz/PxDhnRcvfvW20jr1uQYNgPGXdxid4GB/V8jgs28/kKPwtFxK4XqGc
         iR0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726313326; x=1726918126;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8xV6n2xfd+FaMO8WaO3/5kzB5Pnz5Y6CJYYgXfk9V5E=;
        b=qMIBkfCRPAhokcTvFIwp2KQc3a4XtGKganZ6vae3s/GSspvGMu76YPZFLUZh/EYWHk
         xWJdqhKTllBLRw0ISg3DzR2chclCoAz/eEYyY/U9is6vJjy/iPIiRWA+jQryUCUfufH1
         WmkEq25DbW1TQpDkwx/JLPCbU4bnu84nnY4mOORuBvSwAkJAS2Vvkp+wVdiBHIAD+Or7
         ulVMbX5Oqz08UwBAJ15ZnWGiSSCCAvNuJsabpOlhu7YyZqk4GXWMLJ8/lsrvPFQ4kPKU
         hTte+2L1s3I9UqGO1Lo4b18eSf42UCIGmcr8H0mAQQ2EwY2+TGFbQUBxOAOU3zdTepq7
         Wz7w==
X-Gm-Message-State: AOJu0YzFx2ku3b/un50cWaK4lwnbFs2W5Kqby6GUim0B2aKJalVTTncu
	3L6HEbYLDf1QLyqRMLu2fV/6Iz5ExB5lbE/xb09BR+xSD7yePf7hei7Z3g==
X-Google-Smtp-Source: AGHT+IG0kreIWwWBWw+JlyvPmBrdaLkQSyVHwsDgbT6YhqxbLTJUYIJBECAP9is+NklLbzzo8R1hJg==
X-Received: by 2002:a05:6e02:1547:b0:375:a3eb:bfcd with SMTP id e9e14a558f8ab-3a074c642f5mr114413285ab.8.1726313326421;
        Sat, 14 Sep 2024 04:28:46 -0700 (PDT)
Received: from aford-System-Version.lan (c-75-72-166-104.hsd1.mn.comcast.net. [75.72.166.104])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4d37ed35572sm350307173.131.2024.09.14.04.28.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Sep 2024 04:28:45 -0700 (PDT)
From: Adam Ford <aford173@gmail.com>
To: linux-phy@lists.infradead.org
Cc: dominique.martinet@atmark-techno.com,
	linux-imx@nxp.com,
	festevam@gmail.com,
	frieder.schrempf@kontron.de,
	aford@beaconembedded.com,
	Sandor.yu@nxp.com,
	neil.armstrong@linaro.org,
	Adam Ford <aford173@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Marco Felsch <m.felsch@pengutronix.de>,
	Lucas Stach <l.stach@pengutronix.de>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	linux-kernel@vger.kernel.org
Subject: [PATCH V8 4/5] phy: freescale: fsl-samsung-hdmi: Use closest divider
Date: Sat, 14 Sep 2024 06:27:48 -0500
Message-ID: <20240914112816.520224-5-aford173@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240914112816.520224-1-aford173@gmail.com>
References: <20240914112816.520224-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240914_042848_131330_639C758E 
X-CRM114-Status: GOOD (  20.74  )
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
Reviewed-by: Dominique Martinet <dominique.martinet@atmark-techno.com>
Tested-by: Dominique Martinet <dominique.martinet@atmark-techno.com>
---
V8:  Replace Goto statement with calls to helper functions
     use ABS for both integer and fractional divider entries.
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
 1 file changed, 29 insertions(+), 11 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
index 029de69fbeaf..381742e8b618 100644
--- a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
+++ b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
@@ -577,6 +577,16 @@ static void fsl_samsung_hdmi_calculate_phy(struct phy_config *cal_phy, unsigned
 	/* pll_div_regs 3-6 are fixed and pre-defined already */
 }
 
+static u32 fsl_samsung_hdmi_phy_get_closest_rate(unsigned long rate,
+						 u32 int_div_clk, u32 frac_div_clk)
+{
+	/* Calculate the absolute value of the differences and return whichever is closest */
+	if (abs((long)rate - (long)int_div_clk) < abs((long)(rate - (long)frac_div_clk)))
+		return int_div_clk;
+
+	return frac_div_clk;
+}
+
 static long phy_clk_round_rate(struct clk_hw *hw,
 			       unsigned long rate, unsigned long *parent_rate)
 {
@@ -615,6 +625,15 @@ static int phy_use_fract_div(struct fsl_samsung_hdmi_phy *phy, const struct phy_
 	return fsl_samsung_hdmi_phy_configure(phy, phy->cur_cfg);
 }
 
+static int phy_use_integer_div(struct fsl_samsung_hdmi_phy *phy,
+			       const struct phy_config *int_div_clk)
+{
+	phy->cur_cfg  = &calculated_phy_pll_cfg;
+	dev_dbg(phy->dev, "fsl_samsung_hdmi_phy: integer divider rate = %u\n",
+		phy->cur_cfg->pixclk);
+	return fsl_samsung_hdmi_phy_configure(phy, phy->cur_cfg);
+}
+
 static int phy_clk_set_rate(struct clk_hw *hw,
 			    unsigned long rate, unsigned long parent_rate)
 {
@@ -636,20 +655,19 @@ static int phy_clk_set_rate(struct clk_hw *hw,
 	 * and use it if that value is an exact match.
 	 */
 	int_div_clk = fsl_samsung_hdmi_phy_find_pms(rate, &p, &m, &s);
-	if (int_div_clk == rate) {
-		dev_dbg(phy->dev, "fsl_samsung_hdmi_phy: integer divider rate = %u\n",
-				   int_div_clk);
-
-		fsl_samsung_hdmi_calculate_phy(&calculated_phy_pll_cfg, int_div_clk, p, m, s);
-		phy->cur_cfg  = &calculated_phy_pll_cfg;
-		return fsl_samsung_hdmi_phy_configure(phy, phy->cur_cfg);
-	}
+	fsl_samsung_hdmi_calculate_phy(&calculated_phy_pll_cfg, int_div_clk, p, m, s);
+	if (int_div_clk == rate)
+		return phy_use_integer_div(phy, &calculated_phy_pll_cfg);
 
 	/*
-	 * If neither the fractional divider nor the integer divider can find an exact value
-	 * fall back to using the fractional divider
+	 * Compare the difference between the integer clock and the fractional clock against
+	 * the desired clock and which whichever is closest.
 	 */
-	return phy_use_fract_div(phy, fract_div_phy);
+	if (fsl_samsung_hdmi_phy_get_closest_rate(rate, int_div_clk,
+						  fract_div_phy->pixclk) == fract_div_phy->pixclk)
+		return phy_use_fract_div(phy, fract_div_phy);
+	else
+		return phy_use_integer_div(phy, &calculated_phy_pll_cfg);
 }
 
 static const struct clk_ops phy_clk_ops = {
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
