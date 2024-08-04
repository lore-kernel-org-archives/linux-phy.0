Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40648C3DA7F
	for <linux-phy@archiver.kernel.org>; Sun,  4 Aug 2024 21:59:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zUWMAR83QeUkYcDWx4M71lZzrCo68fwuGoKjZAp5Qe8=; b=kbJ7GTAL6m906R
	GWxJ0cvPM4iZWEvPl7P3jOyAxZUKtccuuTas19YEKLNkn1rNev5E2oQbIIjtYzypRYNz0Jke1fEz9
	5jt/PmlqdfOH3FRCVmOGCqBJQ54l38q9dtcIrA9yc1TLXur1dB1/1wad95mlziBYa+OyFLvPfVM/+
	GA+RQWuBls0ABmDVEpakBSKzcANWmeHma4bkMzc9IbyGjm2XHOgQOHKhJyqMkwoH8ic/3K1fJQXr7
	c9BBZpRoTHQta+kRuLHmyUHDyQyjbFK4mQG6pFLLz4+AgRMTz+sJuCOR0TCjPo2wCxtWwmn6+SyqB
	wwCpZQ7t3gaoD1sRwuRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sajFq-0000000E0Yi-4394;
	Sun, 04 Aug 2024 21:59:06 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sajCb-0000000DzRv-2Egz;
	Sun, 04 Aug 2024 21:55:46 +0000
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-a7a94aa5080so359749966b.3;
        Sun, 04 Aug 2024 14:55:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722808544; x=1723413344; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/Kr9OUWJu3zpHtEvcQkSwe6meHxvcJJnyUk+tmEInzk=;
        b=adB+AlLkGlQ50MVIQzCtj4BCrAN/TgLNdrk/sypyYpMni2eCO0BdUNWbq5hsNVeXC1
         GRyEScaDZ3cXEjBIo/1MXRvegkEbiU8M8ldSqOiuTIb3uR1IZZQhqpVWej8PCVRo+Suu
         i80mbSlbWEsNndSWsUgfx+MEK5R8rT4d/J7/f0wxZnbdzgQzmWKAlQ3Yj4m3kGQvHHbB
         c8KVLPilc8Fy664twkFyANcq36l3VHRLphcW9O0MnyIVctYNuJdmTcdu6xTCjgWuFeqV
         tbEHNSzwkHtBXGYMutB3EHmjLC2WSRyy4mMzp6JcI3V2bKYdFuQSJ4teo3REW1m081zw
         ERFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722808544; x=1723413344;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/Kr9OUWJu3zpHtEvcQkSwe6meHxvcJJnyUk+tmEInzk=;
        b=qTpX+LKdDT6fa6H0tm1RySVVnihgklXidYvb4TaDBfRJSHDEsqYLYzZkOdr8C6d6P+
         +eJogVgGbT023HY6XUJHoyRUPM2rv+DStiPXlPBVyT9bv61+7tXvnXv0tVqTS2JZ4z+N
         2uI0WTU8NCp1ssU1uOBrbN/PhzqJCihPWatyZ+JjH1WELNDjRTekGbs4u/c8jgR1XRDU
         ckLS7X5lLd35Hch85U39OiCnkddVpw3VvVfOY22VhwGCfGJXgAHjSK7bIbfDYzzL8ok1
         IEUipdeDdjuvOBs9cOqyrcZbWK2z6zeLxFNeMkU7xKSX59bdXPYdT5R5AdJuArHXftUf
         fpdA==
X-Forwarded-Encrypted: i=1; AJvYcCU5mPG0tXJMv4DwGQLKufqXHDy1f21QyeSOeJ5THLqjpoEYVuRWWPWQdfarovfkThA4obzXv5GMqNgzkrmTp2tfAVFuiHh4opN4HUZ9aqDAFGQ4qdc=
X-Gm-Message-State: AOJu0YzKObJm0Ow4wxoAMiXWit2dJeJVrmUnLiJ31HuQPN/Hrr0Zresz
	btUaT5MGO3bANl+bQckYTlaUed8Yb/4+JjR5w5nM57XSvzGcyKTW
X-Google-Smtp-Source: AGHT+IGa5nC1Rod9C1LgjK7SeiNLsR+u3R/s3yoxrcJTPD4mCFyFTsvxjXR/YMhGhKGnpQz0KnmiGQ==
X-Received: by 2002:a17:906:fe0c:b0:a77:cf9d:f495 with SMTP id a640c23a62f3a-a7dc508d3e0mr701470466b.40.1722808543592;
        Sun, 04 Aug 2024 14:55:43 -0700 (PDT)
Received: from localhost.localdomain ([2a02:ab88:3711:c80:e7a7:e025:f1a5:ef78])
        by smtp.googlemail.com with ESMTPSA id a640c23a62f3a-a7dc9d45452sm370485066b.111.2024.08.04.14.55.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Aug 2024 14:55:43 -0700 (PDT)
From: David Virag <virag.david003@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
	Peter Griffin <peter.griffin@linaro.org>,
	=?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@linaro.org>,
	Sam Protsenko <semen.protsenko@linaro.org>,
	David Virag <virag.david003@gmail.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-clk@vger.kernel.org
Subject: [PATCH 08/13] clk: samsung: clk-pll: Add support for pll_1418x
Date: Sun,  4 Aug 2024 23:53:53 +0200
Message-ID: <20240804215458.404085-9-virag.david003@gmail.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240804215458.404085-1-virag.david003@gmail.com>
References: <20240804215458.404085-1-virag.david003@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240804_145545_605436_28CB43CE 
X-CRM114-Status: GOOD (  17.03  )
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

pll1418x is used in Exynos7885 SoC for USB PHY clock.
Operation-wise it is very similar to pll0822x, except that MDIV is only
9 bits wide instead of 10, and we use the CON1 register in the PLL
macro's "con" parameter instead of CON3 like this:

	PLL(pll_1418x, CLK_FOUT_USB_PLL, "fout_usb_pll", "oscclk",
	    PLL_LOCKTIME_PLL_USB, PLL_CON0_PLL_USB,
	    pll_usb_rate_table),

Technically the PLL should work fine with pll0822x code if the PLL
tables are correct, but it's more "correct" to actually update the mask.

Signed-off-by: David Virag <virag.david003@gmail.com>
---
 drivers/clk/samsung/clk-pll.c | 20 ++++++++++++++++----
 drivers/clk/samsung/clk-pll.h |  1 +
 2 files changed, 17 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/samsung/clk-pll.c b/drivers/clk/samsung/clk-pll.c
index 4be879ab917e..c61a2810737c 100644
--- a/drivers/clk/samsung/clk-pll.c
+++ b/drivers/clk/samsung/clk-pll.c
@@ -430,6 +430,9 @@ static const struct clk_ops samsung_pll36xx_clk_min_ops = {
 #define PLL0822X_LOCK_STAT_SHIFT	(29)
 #define PLL0822X_ENABLE_SHIFT		(31)
 
+/* PLL1418x is similar to PLL0822x, except that MDIV is one bit smaller */
+#define PLL1418X_MDIV_MASK		(0x1FF)
+
 static unsigned long samsung_pll0822x_recalc_rate(struct clk_hw *hw,
 						  unsigned long parent_rate)
 {
@@ -438,7 +441,10 @@ static unsigned long samsung_pll0822x_recalc_rate(struct clk_hw *hw,
 	u64 fvco = parent_rate;
 
 	pll_con3 = readl_relaxed(pll->con_reg);
-	mdiv = (pll_con3 >> PLL0822X_MDIV_SHIFT) & PLL0822X_MDIV_MASK;
+	if (pll->type != pll_1418x)
+		mdiv = (pll_con3 >> PLL0822X_MDIV_SHIFT) & PLL0822X_MDIV_MASK;
+	else
+		mdiv = (pll_con3 >> PLL0822X_MDIV_SHIFT) & PLL1418X_MDIV_MASK;
 	pdiv = (pll_con3 >> PLL0822X_PDIV_SHIFT) & PLL0822X_PDIV_MASK;
 	sdiv = (pll_con3 >> PLL0822X_SDIV_SHIFT) & PLL0822X_SDIV_MASK;
 
@@ -468,9 +474,14 @@ static int samsung_pll0822x_set_rate(struct clk_hw *hw, unsigned long drate,
 
 	/* Change PLL PMS values */
 	pll_con3 = readl_relaxed(pll->con_reg);
-	pll_con3 &= ~((PLL0822X_MDIV_MASK << PLL0822X_MDIV_SHIFT) |
-			(PLL0822X_PDIV_MASK << PLL0822X_PDIV_SHIFT) |
-			(PLL0822X_SDIV_MASK << PLL0822X_SDIV_SHIFT));
+	if (pll->type != pll_1418x)
+		pll_con3 &= ~((PLL0822X_MDIV_MASK << PLL0822X_MDIV_SHIFT) |
+				(PLL0822X_PDIV_MASK << PLL0822X_PDIV_SHIFT) |
+				(PLL0822X_SDIV_MASK << PLL0822X_SDIV_SHIFT));
+	else
+		pll_con3 &= ~((PLL1418X_MDIV_MASK << PLL0822X_MDIV_SHIFT) |
+				(PLL0822X_PDIV_MASK << PLL0822X_PDIV_SHIFT) |
+				(PLL0822X_SDIV_MASK << PLL0822X_SDIV_SHIFT));
 	pll_con3 |= (rate->mdiv << PLL0822X_MDIV_SHIFT) |
 			(rate->pdiv << PLL0822X_PDIV_SHIFT) |
 			(rate->sdiv << PLL0822X_SDIV_SHIFT);
@@ -1317,6 +1328,7 @@ static void __init _samsung_clk_register_pll(struct samsung_clk_provider *ctx,
 			init.ops = &samsung_pll35xx_clk_ops;
 		break;
 	case pll_1417x:
+	case pll_1418x:
 	case pll_0818x:
 	case pll_0822x:
 	case pll_0516x:
diff --git a/drivers/clk/samsung/clk-pll.h b/drivers/clk/samsung/clk-pll.h
index ffd3d52c0dec..1efbe4c446d0 100644
--- a/drivers/clk/samsung/clk-pll.h
+++ b/drivers/clk/samsung/clk-pll.h
@@ -30,6 +30,7 @@ enum samsung_pll_type {
 	pll_2650x,
 	pll_2650xx,
 	pll_1417x,
+	pll_1418x,
 	pll_1450x,
 	pll_1451x,
 	pll_1452x,
-- 
2.46.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
