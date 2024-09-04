Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD74ECD4844
	for <linux-phy@archiver.kernel.org>; Wed,  4 Sep 2024 02:33:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iVLE0C/fgt8fr4g8n48uXaTlxP0CVlyrLToIapJnydE=; b=xWx9cs9pFY2Oya
	Rg43hoUoRsk1g3r+BLVqWgnjsFzkxlj40XwWAHaLaMLZOHhOHqedVoAP6aDODp1XjC/fPc7W9wMBx
	+uCEIuViZoNz4I0oZh/UBvdkg2Q8BAGAK1RD3Kyw37IoGrBRrXwkSyNAHG/9JYDK5NHcXnQjfOPqH
	0sOHdRArEtVlHGqoPZm0GTn7iQr7p8X6m31wKPg+K5XoifnavYww2TtOwwhSWcwwQjPu6qVclibK/
	NI/pPb6SuIrpbPI4UXUXyCETeN9F6I9FmtXGME2FpxDNIBkiRcvIbIi0sHDOLvs6TyhCts4MH5wrM
	0IDpOiUtkS7RVPEXtzZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slfq2-00000002asm-29Bt;
	Wed, 04 Sep 2024 02:33:42 +0000
Received: from mail-io1-xd30.google.com ([2607:f8b0:4864:20::d30])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slfq0-00000002asI-3PeD
	for linux-phy@lists.infradead.org;
	Wed, 04 Sep 2024 02:33:42 +0000
Received: by mail-io1-xd30.google.com with SMTP id ca18e2360f4ac-82a245753bfso222091939f.3
        for <linux-phy@lists.infradead.org>; Tue, 03 Sep 2024 19:33:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725417219; x=1726022019; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oVOv/lJdk3gJmp2nmDecrMgrWVl3MLrxbsv6imthSUs=;
        b=Mqle7lr1HKy7nnj+JdnTc3fOUIcLIf/px37k6mUsqTqlCbtoN6w3/ADWxT+HeC4N3O
         MFtW3YjFylfMaSZ8yB8SnydricPg2jpf3QGAiaIkg66on7KjddZvz415ie+IVC0NDjOa
         cxnMeSFbPRR5bfyRbRctyDbE8msuCCKsGn9XefXzK4mEa3JJt5JGLkjSods3q/gniB4m
         7DUNG+rZYXpDbRCjG5RTjP98LO5I8nZnUH0s4mQz2uqWL3IrBEOWSIFeD0LkGZoHTs9h
         PN6YVbYj8GMeizSkeyvIgxBL3Vc333sXnKsxLXqX1Y8AzwldRH+0rx/RAToQCHazk+dx
         Pj7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725417219; x=1726022019;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oVOv/lJdk3gJmp2nmDecrMgrWVl3MLrxbsv6imthSUs=;
        b=GPkphZYHkjZVdYBPknb4xYDnSWsUkZ0+r4Jbfken3Oz7GOZ0BOghyWWV9VxeO3MtjJ
         7d5iKlbD0+4IReuIcGtKcgUqoJERCQMmjy9cow7ZHYQH6ywJkcayD3O1cK08NDpHVruV
         JodVd4JM1NOquDtSrhx894w0UmdNKMlS1+T+J+Q8+8IhW0nBAo/6Jky036AvKAyNN4zn
         dc3+D/3fg8ht36/Ovf9MC/vNijek1WKdyujJcmLDMgEy10GXMKG7Ec6K4OedfYa6eIno
         /b2UUnmEZIsg71xJNXaJGKfRrSjE8VirsswAfoXm8yr9M6UU3VMMTMLfitJkTBNagYie
         XVNQ==
X-Gm-Message-State: AOJu0Yzp3cp+m7ZW7+I1OtIdtTLYkYJxmXMbyPOVLik5a5gM1/XXejMH
	5jGIHC9XeB2KFiDcW9T4dsKod4JU2XKCf/LGJNuQqDnt1k+F31KbLMnd7w==
X-Google-Smtp-Source: AGHT+IHpQFUgQqQYcMy/Pb5K8EPlUgQiBZB0oSIzAbA/wx8uTRP0l4SFR7GpIhI6V+9FPfjHkLqfsg==
X-Received: by 2002:a05:6e02:2141:b0:39f:5baa:e50e with SMTP id e9e14a558f8ab-39f5baae95bmr118091905ab.7.1725417219536;
        Tue, 03 Sep 2024 19:33:39 -0700 (PDT)
Received: from aford-System-Version.lan (c-75-72-166-104.hsd1.mn.comcast.net. [75.72.166.104])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-39f3afc4ff6sm34556175ab.37.2024.09.03.19.33.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Sep 2024 19:33:39 -0700 (PDT)
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
Subject: [PATCH V5 4/5] phy: freescale: fsl-samsung-hdmi: Use closest divider
Date: Tue,  3 Sep 2024 21:32:43 -0500
Message-ID: <20240904023310.163371-5-aford173@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240904023310.163371-1-aford173@gmail.com>
References: <20240904023310.163371-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_193340_879739_C45095A6 
X-CRM114-Status: GOOD (  20.27  )
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
the cloesest rate.

Signed-off-by: Adam Ford <aford173@gmail.com>
Signed-off-by: Dominique Martinet <dominique.martinet@atmark-techno.com>
---
V5:  No Change
V4:  New to series
---
 drivers/phy/freescale/phy-fsl-samsung-hdmi.c | 40 +++++++++++++++-----
 1 file changed, 31 insertions(+), 9 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
index 8f2c0082aa12..56b08e684179 100644
--- a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
+++ b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
@@ -550,7 +550,7 @@ static unsigned long phy_clk_recalc_rate(struct clk_hw *hw,
 static long phy_clk_round_rate(struct clk_hw *hw,
 			       unsigned long rate, unsigned long *parent_rate)
 {
-	u32 int_div_clk;
+	u32 int_div_clk, delta_int, delta_frac;
 	int i;
 	u16 m;
 	u8 p, s;
@@ -563,6 +563,7 @@ static long phy_clk_round_rate(struct clk_hw *hw,
 	for (i = ARRAY_SIZE(phy_pll_cfg) - 1; i >= 0; i--)
 		if (phy_pll_cfg[i].pixclk <= rate)
 			break;
+
 	/* If the rate is an exact match, return it now */
 	if (rate == phy_pll_cfg[i].pixclk)
 		return phy_pll_cfg[i].pixclk;
@@ -579,15 +580,21 @@ static long phy_clk_round_rate(struct clk_hw *hw,
 	if (int_div_clk == rate)
 		return int_div_clk;
 
-	/* Fall back to the closest value in the LUT */
-	return phy_pll_cfg[i].pixclk;
+	/* Calculate the differences and use the closest one */
+	delta_frac = (rate - phy_pll_cfg[i].pixclk);
+	delta_int = (rate - int_div_clk);
+
+	if (delta_int < delta_frac)
+		return int_div_clk;
+	else
+		return phy_pll_cfg[i].pixclk;
 }
 
 static int phy_clk_set_rate(struct clk_hw *hw,
 			    unsigned long rate, unsigned long parent_rate)
 {
 	struct fsl_samsung_hdmi_phy *phy = to_fsl_samsung_hdmi_phy(hw);
-	u32 int_div_clk;
+	u32 int_div_clk, delta_int, delta_frac;
 	int i;
 	u16 m;
 	u8 p, s;
@@ -602,19 +609,34 @@ static int phy_clk_set_rate(struct clk_hw *hw,
 		calculated_phy_pll_cfg.pll_div_regs[2] = FIELD_PREP(REG03_PMS_S_MASK, s-1);
 		/* pll_div_regs 3-6 are fixed and pre-defined already */
 		phy->cur_cfg  = &calculated_phy_pll_cfg;
+		goto done;
 	} else {
 		/* Otherwise, search the LUT */
-		dev_dbg(phy->dev, "fsl_samsung_hdmi_phy: using fractional divider\n");
-		for (i = ARRAY_SIZE(phy_pll_cfg) - 1; i >= 0; i--)
-			if (phy_pll_cfg[i].pixclk <= rate)
+		for (i = ARRAY_SIZE(phy_pll_cfg) - 1; i >= 0; i--) {
+			if (phy_pll_cfg[i].pixclk == rate) {
+				dev_dbg(phy->dev, "fsl_samsung_hdmi_phy: using fractional divider\n");
+				phy->cur_cfg = &phy_pll_cfg[i];
+				goto done;
+			}
+
+			if (phy_pll_cfg[i].pixclk < rate)
 				break;
+		}
 
 		if (i < 0)
 			return -EINVAL;
-
-		phy->cur_cfg = &phy_pll_cfg[i];
 	}
 
+	/* Calculate the differences for each clock against the requested value */
+	delta_frac = (rate - phy_pll_cfg[i].pixclk);
+	delta_int = (rate - int_div_clk);
+
+	/* Use the value closest to the desired */
+	if (delta_int < delta_frac)
+		phy->cur_cfg  = &calculated_phy_pll_cfg;
+	else
+		phy->cur_cfg = &phy_pll_cfg[i];
+done:
 	return fsl_samsung_hdmi_phy_configure(phy, phy->cur_cfg);
 }
 
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
