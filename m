Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DCFBDCD4F4C
	for <linux-phy@archiver.kernel.org>; Wed,  4 Sep 2024 23:57:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c5li3CPLAxxUbUP4FCzJWRuQPI3WXKvpeBx/mDlUC8c=; b=g0eYIomp40UFxT
	MR4NMQ8OncfSPgECOZXMsI9Y4XgWcvKomtx6JJQ4xzZST0tTtuCV2zJILeh3iLhlhlMaIyXWaLnjg
	p/OppCJuw/GeIg0L4AqvZMQICdzx36/HlSNugcG2fW1KlebZZ50ENAPDdHqJUJUPiDSpEd9U0Np6L
	H6Xgr7vLSmnHLuu2XKW9M20XKunwcpeWgB0/849ZTmZfrq/JF4H71SCwT0rZVFvzenxNF5ye3Kyqo
	olGuYbwoLRtmcV86kGsY7z31Xrgx0pQM3kxGX6j0LtUY4XWsswsMFZQVT5uIDOgu1VA7JTKFl333w
	Le/M3gyEqypYU57GhiiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slzsM-00000006QVw-2aSA;
	Wed, 04 Sep 2024 23:57:26 +0000
Received: from mail-il1-x135.google.com ([2607:f8b0:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slzsJ-00000006QVS-4Azi
	for linux-phy@lists.infradead.org;
	Wed, 04 Sep 2024 23:57:25 +0000
Received: by mail-il1-x135.google.com with SMTP id e9e14a558f8ab-3a043869e42so3145515ab.0
        for <linux-phy@lists.infradead.org>; Wed, 04 Sep 2024 16:57:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725494242; x=1726099042; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dEz2Arqi3/o64yZ0XIIlM7mZIysQIRVH9/tjlYxL3xQ=;
        b=OrYBztzxZHSL7oqnPFT/SL/4GuqoG9K9RXoUYY5TB5i00IHz3j0/jT5qpxTAP5kscF
         Rh/9loeH2SPfkxWulYsFp005A70/S8EH7bgAHm+YJtvnijcitUSt2mRj/elbOeQb4Rdw
         m0oX37mhXiLAjXNIWsrXMuYGbslhxnf48IML8LFsE3SV1Yt8NpRtocDwOt28UdVWnfsX
         eiAlMgRI7M58bwpJhCWKcei+hMXsqQ8lFSUPlcIFH9swX0eP6ef4Zo9oKwKQTe6eqyKM
         /1l9qCvf3onuvYgUQgj018Uq/G0nu3kIsfct050lmUUpk3zKXgqFhlSrVUN7RClZelaE
         R0yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725494242; x=1726099042;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dEz2Arqi3/o64yZ0XIIlM7mZIysQIRVH9/tjlYxL3xQ=;
        b=wsImcyNaBVTRWeU4PMQAs6c7Wx4a6PbXkBjb5L6sjH2wh0BaHwpFVfo173B7bg+5TP
         B50Ku7rH+4lc5Zljws3A6FDrzAUJstGww2H6vlxqaTS21ECLZvtANn5PqQ4lRnOPVFpJ
         82A2Mm817i3unrkaG27E7rjdc/w3FD0wXP5uxA2Rb8JELiSCsMCen9EmvvbClczvnrTi
         buRno8yOrK9i/+PzymZpdfhpZJq5XJfyl1l/bjMQ8dMZp1onpEN6nauMe6+bfP/ZpqOu
         t/oVCQ9mxEyAfGnQ0nXzqXvofwWTBp2Od6AQJMYkZuDdLdM5k8GIFkK+7N6juiPCFaju
         fetA==
X-Gm-Message-State: AOJu0YyB72HIrjVKTrSDiCNpzXQnrKTXihr8LE/o0/aZjLTVOG9Vp2EV
	fZe8PHtYsy8fSJj488RuoxbovfhNadJ+xIFnbUccaa/jjYhS1p5hEmix0Q==
X-Google-Smtp-Source: AGHT+IEsI6wTHvCX3sOK133ohxI2RakNxa99vQ5IMUDuQlWiloHeO/bx7kabL1bk7PCufZA6dMdxCw==
X-Received: by 2002:a05:6e02:1c46:b0:39d:4dab:a533 with SMTP id e9e14a558f8ab-39f74f88f94mr34164785ab.0.1725494242407;
        Wed, 04 Sep 2024 16:57:22 -0700 (PDT)
Received: from aford-System-Version.lan (c-75-72-166-104.hsd1.mn.comcast.net. [75.72.166.104])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-39f3afc594csm39396735ab.43.2024.09.04.16.57.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Sep 2024 16:57:22 -0700 (PDT)
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
	Lucas Stach <l.stach@pengutronix.de>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	linux-kernel@vger.kernel.org
Subject: [PATCH V6 4/5] phy: freescale: fsl-samsung-hdmi: Use closest divider
Date: Wed,  4 Sep 2024 18:30:32 -0500
Message-ID: <20240904233100.114611-5-aford173@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240904233100.114611-1-aford173@gmail.com>
References: <20240904233100.114611-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240904_165724_058780_F32C9D34 
X-CRM114-Status: GOOD (  19.43  )
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
V6:  Simplify the calculation of the closest rate and fix
     a situation where the integer divider values may not be properly
     setup before they are used.
     Fixup some comments
V5:  No Change
V4:  New to series
---
 drivers/phy/freescale/phy-fsl-samsung-hdmi.c | 46 ++++++++++++++------
 1 file changed, 33 insertions(+), 13 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
index 4b13e386e5ba..9a21dbbf1a82 100644
--- a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
+++ b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
@@ -547,6 +547,16 @@ static unsigned long phy_clk_recalc_rate(struct clk_hw *hw,
 	return phy->cur_cfg->pixclk;
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
@@ -563,6 +573,7 @@ static long phy_clk_round_rate(struct clk_hw *hw,
 	for (i = ARRAY_SIZE(phy_pll_cfg) - 1; i >= 0; i--)
 		if (phy_pll_cfg[i].pixclk <= rate)
 			break;
+
 	/* If the rate is an exact match, return it now */
 	if (rate == phy_pll_cfg[i].pixclk)
 		return phy_pll_cfg[i].pixclk;
@@ -579,8 +590,7 @@ static long phy_clk_round_rate(struct clk_hw *hw,
 	if (int_div_clk == rate)
 		return int_div_clk;
 
-	/* Fall back to the closest value in the LUT */
-	return phy_pll_cfg[i].pixclk;
+	return fsl_samsung_hdmi_phy_get_closest_rate(rate, int_div_clk, phy_pll_cfg[i].pixclk);
 }
 
 static int phy_clk_set_rate(struct clk_hw *hw,
@@ -594,27 +604,37 @@ static int phy_clk_set_rate(struct clk_hw *hw,
 
 	/* If the integer divider works, just use it */
 	int_div_clk = fsl_samsung_hdmi_phy_find_pms(rate * 5, &p, &m, &s) / 5;
+	calculated_phy_pll_cfg.pixclk = int_div_clk;
+	calculated_phy_pll_cfg.pll_div_regs[0] = FIELD_PREP(REG01_PMS_P_MASK, p);
+	calculated_phy_pll_cfg.pll_div_regs[1] = m;
+	calculated_phy_pll_cfg.pll_div_regs[2] = FIELD_PREP(REG03_PMS_S_MASK, s-1);
+	phy->cur_cfg = &calculated_phy_pll_cfg;
 	if (int_div_clk == rate) {
 		dev_dbg(phy->dev, "fsl_samsung_hdmi_phy: using integer divider\n");
-		calculated_phy_pll_cfg.pixclk = int_div_clk;
-		calculated_phy_pll_cfg.pll_div_regs[0] = FIELD_PREP(REG01_PMS_P_MASK, p);
-		calculated_phy_pll_cfg.pll_div_regs[1] = m;
-		calculated_phy_pll_cfg.pll_div_regs[2] = FIELD_PREP(REG03_PMS_S_MASK, s-1);
-		/* pll_div_regs 3-6 are fixed and pre-defined already */
-		phy->cur_cfg  = &calculated_phy_pll_cfg;
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
 
+	if (fsl_samsung_hdmi_phy_get_closest_rate(rate, int_div_clk,
+						  phy_pll_cfg[i].pixclk) == int_div_clk)
+		phy->cur_cfg = &calculated_phy_pll_cfg;
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
