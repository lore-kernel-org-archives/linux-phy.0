Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47DB1C3DA64
	for <linux-phy@archiver.kernel.org>; Sun,  4 Aug 2024 21:58:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=orpKex9kc6Bl0rbyt+x+IEtY7jR/9RlB58cpjLkAkBI=; b=O4zTORBKNA4SaF
	N92pKVHa+Cd0b1MdLhz2YQZxZP66AFsy8ri7EP/LgZX0XVzXSLfyThjP0DXJeGka4OAgq8c21wkUb
	/2ZqurrJ+21iYVxThj/LoBlF+oSr5HtLhEz91jUmALonYTz0d//k7KpiZu+4IXABcx5nmcesFGbna
	zA3wcwEzYAuReF7oV2lIc3NljHNS0TxUo5N9Wkp2g2yZlFSpep3jjjCTX6TOgAyueBoit11pJb4U6
	MSuB2+17e0KO936zOuBBll07SCJShLnfAgazvZ6pNZGP+eRq+t7W7NKHHb3GiEd0MLviqCZ8Mv9XG
	Rk2GC11whSv8ykJvvIXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sajFM-0000000E0Oj-47sJ;
	Sun, 04 Aug 2024 21:58:36 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sajCW-0000000DzP9-1Yfr;
	Sun, 04 Aug 2024 21:55:41 +0000
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-a7a8e73b29cso814775966b.3;
        Sun, 04 Aug 2024 14:55:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722808539; x=1723413339; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PylIu4FUXlrxZkJ16yikQYZXRyjRIiQcGN1Zbu3DKVI=;
        b=mmp+LKDHp3RMWA5GQ6kCyy+VcYL18pmby+9B1SKCgxXOkPg2pWRNYcEG6mfk/+JMs6
         dTVPMZkSp9Tg8Idxm+XMK4CX2s6ZAGptWsNmo2clog7YGBSOTf8ZwRFO4BP/kBHnmDmL
         9t4jM08Xa5dMuqMZ1de7IDuJ2hPzCMMIjt8+vm5zhiAR45wVovOE5HdjgRJNgSIXvN/z
         yKhznEubJIyPCkiE3k37osGZIGjCapQSz7/M3lEJfhPETN54eijolEMSZNT6bXCIOvz1
         SeAsqhhxMOa03lbNqLssauDkxJDYGXz8Uv2cbk3Dfzs6RE7JCaOQUPYJQsNfuw+Tuz8W
         kOhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722808539; x=1723413339;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PylIu4FUXlrxZkJ16yikQYZXRyjRIiQcGN1Zbu3DKVI=;
        b=pxGQ/CSCKqEU2m+WKIccW6laL2EWB4d6W80scvZGPDnerLsYtQMKNS08kvByT5P47c
         yN+QnBSwuiE58iKDjfbgPoN9rWXwgweEVT85iQCjUWni/h/RR6Bh3UW9qfwljqlPlmTR
         Y2/vrFktqBW0I0cPFifys9NAH73IQxsUEcZqM9g0yVqC6z0Nd2acBf26b5KduxKiul3r
         N8VToTZkaQqIv6OHuTA2Hg6NCnmIaGfobnSpG+jHVAWE9+kLIfZ6C7DIN/+a9l5ASJFU
         naVmnXxlymwQZUgowuxxqoRXQBqFPvZCgtWRm7cp5jF4D37GM3C+FyNg7yXnoLPNSUkN
         rNmA==
X-Forwarded-Encrypted: i=1; AJvYcCXnUqVLg6u2trI/VkKXCl8Ho84hpsDAHAbGND93l9jvOVz/U8qWlA2WeQqZQN22aH/QJbaGPGGmNlyUsSTRVV40VX2KHyUwF5tunYhsEG0rKH5jGj8=
X-Gm-Message-State: AOJu0Yz2khpqrInzIkuzRtftxaBWH5+T4lkDJNLrxdAEajtvh5QfxqIX
	hM+tz4AIPiI0vawErOhtFr9fmOCzbaXnckUjxTzw2Jx/I8FcYiO6PToTWzEl
X-Google-Smtp-Source: AGHT+IFCXWpLgSy0HdFQC/k8f0PkI2xtHfzFl1y3lC9hTOOBbO3phvAsUzemOzvmYEc2XBt/IzotOA==
X-Received: by 2002:a17:906:d25f:b0:a7d:391f:17af with SMTP id a640c23a62f3a-a7dc50a47c2mr719346366b.51.1722808538364;
        Sun, 04 Aug 2024 14:55:38 -0700 (PDT)
Received: from localhost.localdomain ([2a02:ab88:3711:c80:e7a7:e025:f1a5:ef78])
        by smtp.googlemail.com with ESMTPSA id a640c23a62f3a-a7dc9d45452sm370485066b.111.2024.08.04.14.55.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Aug 2024 14:55:38 -0700 (PDT)
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
Subject: [PATCH 07/13] clk: samsung: exynos7885: Add missing MUX clocks from PLLs in CMU_TOP
Date: Sun,  4 Aug 2024 23:53:52 +0200
Message-ID: <20240804215458.404085-8-virag.david003@gmail.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240804215458.404085-1-virag.david003@gmail.com>
References: <20240804215458.404085-1-virag.david003@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240804_145540_435876_2F269CC8 
X-CRM114-Status: GOOD (  16.56  )
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

In Exynos7885 (and seemingly all modern Exynos SoCs) all PLLs have a MUX
attached to them controlled by bit 4 in the PLL's CON0 register.

These MUXes can select between OSCCLK or the PLL's output, essentially
making the PLL bypassable.

These weren't modeled in the driver because the vendor provided drivers
didn't model it properly, instead setting them when updating the PMS
values.

Not having them modeled didn't cause any problems in this case, since
these MUXes were set to the PLL's output by default, but this is not the
case everywhere in this SoC.

Signed-off-by: David Virag <virag.david003@gmail.com>
---
 drivers/clk/samsung/clk-exynos7885.c | 22 ++++++++++++++++------
 1 file changed, 16 insertions(+), 6 deletions(-)

diff --git a/drivers/clk/samsung/clk-exynos7885.c b/drivers/clk/samsung/clk-exynos7885.c
index 87387d4cbf48..a0c9b7cc6942 100644
--- a/drivers/clk/samsung/clk-exynos7885.c
+++ b/drivers/clk/samsung/clk-exynos7885.c
@@ -17,7 +17,7 @@
 #include "clk-exynos-arm64.h"
 
 /* NOTE: Must be equal to the last clock ID increased by one */
-#define CLKS_NR_TOP			(CLK_GOUT_FSYS_USB30DRD + 1)
+#define CLKS_NR_TOP			(CLK_MOUT_SHARED1_PLL + 1)
 #define CLKS_NR_CORE			(CLK_GOUT_TREX_P_CORE_PCLK_P_CORE + 1)
 #define CLKS_NR_PERI			(CLK_GOUT_WDT1_PCLK + 1)
 #define CLKS_NR_FSYS			(CLK_MOUT_FSYS_USB30DRD_USER + 1)
@@ -162,6 +162,10 @@ static const struct samsung_pll_clock top_pll_clks[] __initconst = {
 	    NULL),
 };
 
+/* List of parent clocks for Muxes in CMU_TOP */
+PNAME(mout_shared0_pll_p)	= { "oscclk", "fout_shared0_pll" };
+PNAME(mout_shared1_pll_p)	= { "oscclk", "fout_shared1_pll" };
+
 /* List of parent clocks for Muxes in CMU_TOP: for CMU_CORE */
 PNAME(mout_core_bus_p)		= { "dout_shared0_div2", "dout_shared1_div2",
 				    "dout_shared0_div3", "dout_shared0_div3" };
@@ -189,6 +193,12 @@ PNAME(mout_fsys_mmc_sdio_p)	= { "dout_shared0_div2", "dout_shared1_div2" };
 PNAME(mout_fsys_usb30drd_p)	= { "dout_shared0_div4", "dout_shared1_div4" };
 
 static const struct samsung_mux_clock top_mux_clks[] __initconst = {
+	/* TOP */
+	MUX(CLK_MOUT_SHARED0_PLL, "mout_shared0_pll", mout_shared0_pll_p,
+	    PLL_CON0_PLL_SHARED0, 4, 1),
+	MUX(CLK_MOUT_SHARED1_PLL, "mout_shared1_pll", mout_shared1_pll_p,
+	    PLL_CON0_PLL_SHARED1, 4, 1),
+
 	/* CORE */
 	MUX(CLK_MOUT_CORE_BUS, "mout_core_bus", mout_core_bus_p,
 	    CLK_CON_MUX_MUX_CLKCMU_CORE_BUS, 0, 2),
@@ -232,17 +242,17 @@ static const struct samsung_mux_clock top_mux_clks[] __initconst = {
 
 static const struct samsung_div_clock top_div_clks[] __initconst = {
 	/* TOP */
-	DIV(CLK_DOUT_SHARED0_DIV2, "dout_shared0_div2", "fout_shared0_pll",
+	DIV(CLK_DOUT_SHARED0_DIV2, "dout_shared0_div2", "mout_shared0_pll",
 	    CLK_CON_DIV_PLL_SHARED0_DIV2, 0, 1),
-	DIV(CLK_DOUT_SHARED0_DIV3, "dout_shared0_div3", "fout_shared0_pll",
+	DIV(CLK_DOUT_SHARED0_DIV3, "dout_shared0_div3", "mout_shared0_pll",
 	    CLK_CON_DIV_PLL_SHARED0_DIV3, 0, 2),
 	DIV(CLK_DOUT_SHARED0_DIV4, "dout_shared0_div4", "dout_shared0_div2",
 	    CLK_CON_DIV_PLL_SHARED0_DIV4, 0, 1),
-	DIV(CLK_DOUT_SHARED0_DIV5, "dout_shared0_div5", "fout_shared0_pll",
+	DIV(CLK_DOUT_SHARED0_DIV5, "dout_shared0_div5", "mout_shared0_pll",
 	    CLK_CON_DIV_PLL_SHARED0_DIV5, 0, 3),
-	DIV(CLK_DOUT_SHARED1_DIV2, "dout_shared1_div2", "fout_shared1_pll",
+	DIV(CLK_DOUT_SHARED1_DIV2, "dout_shared1_div2", "mout_shared1_pll",
 	    CLK_CON_DIV_PLL_SHARED1_DIV2, 0, 1),
-	DIV(CLK_DOUT_SHARED1_DIV3, "dout_shared1_div3", "fout_shared1_pll",
+	DIV(CLK_DOUT_SHARED1_DIV3, "dout_shared1_div3", "mout_shared1_pll",
 	    CLK_CON_DIV_PLL_SHARED1_DIV3, 0, 2),
 	DIV(CLK_DOUT_SHARED1_DIV4, "dout_shared1_div4", "dout_shared1_div2",
 	    CLK_CON_DIV_PLL_SHARED1_DIV4, 0, 1),
-- 
2.46.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
