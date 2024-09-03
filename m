Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0120CD3420
	for <linux-phy@archiver.kernel.org>; Tue,  3 Sep 2024 01:31:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b7OIfYgubbVg9IKIU331BkGw6yEqjVBUTgSYJOyKPSg=; b=rR9cDYfakUaPvD
	wCUwZXliOXEkRsjQl5T5itTAjae70VeU5QCfF0aoy9jYMBmXujGVktwAajLDrHjzaHEY0sMSdGCqt
	NZUp/df1EURvR23ehDOT5VNMxfox9vgHhuD/ZG9mOoBefilHaGGSZ2mXRpbkU42fQ1YNVEleF5VbD
	WUxj54bEQabi03rYvqEOEH/+eWU0CJPB5ecBWbbtcrQkZBA1QH/P2LVeNmxqAhkkp0/rvRWhaua+E
	IUZRJUL71NFY3dztByS+Lce9FQgdVbkc8pZOwU+5aBoXPiQuPDsHU430z8wJj9VC7zMAiyX47s0lT
	GZopI3mVrMWn4qsXUSeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slIOb-0000000Fwfs-1LDr;
	Tue, 03 Sep 2024 01:31:49 +0000
Received: from mail-il1-x133.google.com ([2607:f8b0:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slIOY-0000000Fweu-2Zzw
	for linux-phy@lists.infradead.org;
	Tue, 03 Sep 2024 01:31:47 +0000
Received: by mail-il1-x133.google.com with SMTP id e9e14a558f8ab-39d2e4d73bcso18284675ab.1
        for <linux-phy@lists.infradead.org>; Mon, 02 Sep 2024 18:31:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725327105; x=1725931905; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dWzyFJBdw6McwAWR/O0zmf3qYdQVBqiXE9WFlnVZSZk=;
        b=h+A47DFrONUv29NZqlhYFdqZbRi9Fms3UZa5xYK+XCnpm5YibO9UboxUdxzmojoosM
         ieZxuqRFjKzUHX416Jr+jIU6fOnOIr/wQXJiWnnCXfAxPyB4sHyLtp8zwAby6EZ6+1To
         cGaDgsrAnDBMe3bJ1G3fYIxlznOsJfespmBVJfk78Ks5gCQ/7qIVPtLWGVs/64im6qCN
         oYAuG46zSbC4ucEZK2kdT3K2EgO7LXQMm5srA5eJl+3+nZNXsTriA2T03WpdkJZ6uWaf
         HasmnohL1hEV23SiUBiGbw3JcYzOtA9k9ia3VQaG3M4g1lynYUZjHVKHXQEXj3qh2hFa
         YSzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725327105; x=1725931905;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dWzyFJBdw6McwAWR/O0zmf3qYdQVBqiXE9WFlnVZSZk=;
        b=Co4Cam94+ad6X4vHyX7FAnDcCaM+GPprdNPnLX72W4eSZ0+PuN3i7UCzxZgFRV3Ko9
         dseEQnN+QbxhXIqEQ4xC97+6ElIBqOJJ0san3wrty3Dnk/aulSzbLXL3LVq5VHWvi/yJ
         gbFaUHw/NmQmfyvKBxutjdAdHBy3k5QIJybOXoiMJBf0pVoANu2ANr2ZuAFxsPLRMMul
         hjc/IXlExva3Spj1EDQLAxFmq9I1ryXX94eIeIOP1frdLdT5cfjs8eTLrsOvjpM5p7nC
         NO+yt7Khsr7i/XS9p6tjKufiYLdJHCnR3qJPmWGatn+gKURpdcEm5RV9HvFc0b2k0URr
         reAA==
X-Gm-Message-State: AOJu0Yz5cZQV+5pYt5bhH434NjXR27Gyb65bvH1bj9chYdS56jjJcANo
	RxzxFWgFe4Kf4HSR9HYsS8fipuCjtK9ke0CswC9n5fPUcS1qOiI0ap25yA==
X-Google-Smtp-Source: AGHT+IGF7GMRXv9kwC7231QtjJ0oUs1xla4KHNbfeXJyQhSKa72TXj6EujOvyf5b3yOnWq3nK05QaA==
X-Received: by 2002:a05:6e02:156c:b0:39b:33b5:5cc1 with SMTP id e9e14a558f8ab-39f37874675mr160259425ab.24.1725327104895;
        Mon, 02 Sep 2024 18:31:44 -0700 (PDT)
Received: from aford-System-Version.lan (c-75-72-166-104.hsd1.mn.comcast.net. [75.72.166.104])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-39f3b059c32sm28466715ab.75.2024.09.02.18.31.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Sep 2024 18:31:44 -0700 (PDT)
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
Subject: [PATCH V4 4/5] phy: freescale: fsl-samsung-hdmi:  Use closest divider
Date: Mon,  2 Sep 2024 20:30:46 -0500
Message-ID: <20240903013113.139698-5-aford173@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240903013113.139698-1-aford173@gmail.com>
References: <20240903013113.139698-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240902_183146_679665_EC054A05 
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
---
 drivers/phy/freescale/phy-fsl-samsung-hdmi.c | 40 +++++++++++++++-----
 1 file changed, 31 insertions(+), 9 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
index 8822029526f0..0bf526e282a7 100644
--- a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
+++ b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
@@ -541,7 +541,7 @@ static unsigned long phy_clk_recalc_rate(struct clk_hw *hw,
 static long phy_clk_round_rate(struct clk_hw *hw,
 			       unsigned long rate, unsigned long *parent_rate)
 {
-	u32 int_div_clk;
+	u32 int_div_clk, delta_int, delta_frac;
 	int i;
 	u16 m;
 	u8 p, s;
@@ -554,6 +554,7 @@ static long phy_clk_round_rate(struct clk_hw *hw,
 	for (i = ARRAY_SIZE(phy_pll_cfg) - 1; i >= 0; i--)
 		if (phy_pll_cfg[i].pixclk <= rate)
 			break;
+
 	/* If the rate is an exact match, return it now */
 	if (rate == phy_pll_cfg[i].pixclk)
 		return phy_pll_cfg[i].pixclk;
@@ -570,15 +571,21 @@ static long phy_clk_round_rate(struct clk_hw *hw,
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
@@ -593,19 +600,34 @@ static int phy_clk_set_rate(struct clk_hw *hw,
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
