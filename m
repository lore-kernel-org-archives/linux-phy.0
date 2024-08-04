Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F139C3DA7F
	for <linux-phy@archiver.kernel.org>; Sun,  4 Aug 2024 21:59:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yuRaZYU9Vf9gNOU0ikdrGv32RfrV2NMvOwUWXsa29HM=; b=AsS9SX8dUpyq3M
	8g6FnyhLPd4Mjpvh7CnXl7yeSLnjGc3iXVVUoQ+FUSZ250OdYxIiqm2/rEKW1i3sv91Mw3Gt4WK1+
	HQU0qFzP/0YKYvYIVT9Vg48i9L1YLulyvyv/ppryahBypdlHlMUFE90cESyuK6mUeEmVqUnULHNkk
	ePBgwrZD75EOVRB/lJ8RM/Igv8iSv+G85+hAUzA3fgw8/zZRA9PGphNAxDMdyfM2L8NSEYoCnog/+
	j+X9xNEjZBOQeztQTNlWloyeS87o17XPnQo8eug7un1ngcSh1ixZTuAR9qcXQMMy1B3+aRQq4Dew8
	htuxWeTcR1r6p1PpH6Ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sajGL-0000000E0ib-0DLy;
	Sun, 04 Aug 2024 21:59:37 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sajCh-0000000DzT2-015h;
	Sun, 04 Aug 2024 21:55:52 +0000
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-a7aac70e30dso330327466b.1;
        Sun, 04 Aug 2024 14:55:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722808549; x=1723413349; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7LiFeuD7Lh8CbdxP7qC+zRPV9T1KjTmFlYXzr7Hej/8=;
        b=OCqbJCOR8A2+I8Q7rof1a0Cs+ZuWnfAUX0vMTeSY/CamaAaxWfjfwcmn1FG9claoPT
         1UFLNzqGOPhx8w1/2CfwxgWclnVKSSYJj10i5jlhCz4a3fIINQ6MncMBAjWR2kb145Xl
         QjVmwzletCj4ebN6/0JIORdz3V6jQzmT/ygFl5h8LwAlpjbCe12qbhFrghtGIY4+kzEB
         T1PBHKgs+D2Gctso63L1yiA7/fc74wL2AwKZp3ej3Gh1lUL5XamZF5GMUsjipP6sbXA1
         WHh+co+T2kEs/hWZ6XoylXHiJ1CI3DjtOPGzkQt6M3hShRigqHoqkOpxoAS6Zi/wMDMm
         oElA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722808549; x=1723413349;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7LiFeuD7Lh8CbdxP7qC+zRPV9T1KjTmFlYXzr7Hej/8=;
        b=VZj6Wd4WpEt0N8s21yJMr0Ckqb2cQkFGj0f18KkHYZcZVkJpddNfgKCPG3xrBHheaW
         3C65F8X5Lch4s1AMLAUNc8DbWJzyJou0t9dNmqflkvEDfFVfKGziWIVs5Pi+noNaanhK
         pfq1QBJMzZAyDc4DxpCoXD8qtoWNfKGfCGKmgiBS71OjYnSjt8CZF2Tv6Y4OdKp8C/JX
         ZK1pTXRUoR2jIqik/wq2UNbGJeRKbaizeVmPfylmdU1PfasueZ0exwKLL5hpPDZUljRn
         /7L4Jm5Bnh2EcrdCackm5W6iCEE5skFU1FptYQM+u9V5ZUcrT0INywZ7Jyew2ntOPWnK
         i3wA==
X-Forwarded-Encrypted: i=1; AJvYcCXPvTnhq8onfZLzzSh3giq+rkpqdFs5oaQk0+jM5bIHhqkWQDdVPO0e4x3pZgVW89AYllfNAdygFBsLGueHDpxjVxtGEMTUbo69bZrnmMbsqNC2yh4=
X-Gm-Message-State: AOJu0YwUIlxGfqUQ1GEVNPH+eOoBOrOIBaxsobHHimPU6tRMJSjy9YM9
	ergwGKxD95OCrWzZ8U+oKjQ41fRJrUcBniRoWFhYVws52jkpK1wD
X-Google-Smtp-Source: AGHT+IEKN70BYeMW7wJVS7P3SD6EXI6/VsIuEQuswfFLL8lEQzYCSy9ZqIS3EMAs+17voEHk2RUS7w==
X-Received: by 2002:a17:907:6096:b0:a7a:a892:8e05 with SMTP id a640c23a62f3a-a7dc5070840mr776870966b.33.1722808548962;
        Sun, 04 Aug 2024 14:55:48 -0700 (PDT)
Received: from localhost.localdomain ([2a02:ab88:3711:c80:e7a7:e025:f1a5:ef78])
        by smtp.googlemail.com with ESMTPSA id a640c23a62f3a-a7dc9d45452sm370485066b.111.2024.08.04.14.55.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Aug 2024 14:55:48 -0700 (PDT)
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
Subject: [PATCH 09/13] clk: samsung: exynos7885: Add USB related clocks to CMU_FSYS
Date: Sun,  4 Aug 2024 23:53:54 +0200
Message-ID: <20240804215458.404085-10-virag.david003@gmail.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240804215458.404085-1-virag.david003@gmail.com>
References: <20240804215458.404085-1-virag.david003@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240804_145551_076733_AF86EEF1 
X-CRM114-Status: GOOD (  14.33  )
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

Exynos7885 SoC has a DWC3 USB Controller with Exynos USB PHY which in
theory supports USB3 SuperSpeed, but is only used as USB2 in all known
devices.

These clocks are needed for everything related to USB.

While at it, also remove the CLK_SET_RATE_PARENT capability of
CLK_MOUT_FSYS_USB30DRD_USER, since it's not actually needed.

Signed-off-by: David Virag <virag.david003@gmail.com>
---
 drivers/clk/samsung/clk-exynos7885.c | 73 ++++++++++++++++++++++------
 1 file changed, 59 insertions(+), 14 deletions(-)

diff --git a/drivers/clk/samsung/clk-exynos7885.c b/drivers/clk/samsung/clk-exynos7885.c
index a0c9b7cc6942..637257a6f10e 100644
--- a/drivers/clk/samsung/clk-exynos7885.c
+++ b/drivers/clk/samsung/clk-exynos7885.c
@@ -20,7 +20,7 @@
 #define CLKS_NR_TOP			(CLK_MOUT_SHARED1_PLL + 1)
 #define CLKS_NR_CORE			(CLK_GOUT_TREX_P_CORE_PCLK_P_CORE + 1)
 #define CLKS_NR_PERI			(CLK_GOUT_WDT1_PCLK + 1)
-#define CLKS_NR_FSYS			(CLK_MOUT_FSYS_USB30DRD_USER + 1)
+#define CLKS_NR_FSYS			(CLK_FSYS_USB30DRD_REF_CLK + 1)
 
 /* ---- CMU_TOP ------------------------------------------------------------- */
 
@@ -686,38 +686,66 @@ static const struct samsung_cmu_info core_cmu_info __initconst = {
 /* ---- CMU_FSYS ------------------------------------------------------------ */
 
 /* Register Offset definitions for CMU_FSYS (0x13400000) */
-#define PLL_CON0_MUX_CLKCMU_FSYS_BUS_USER	0x0100
-#define PLL_CON0_MUX_CLKCMU_FSYS_MMC_CARD_USER	0x0120
-#define PLL_CON0_MUX_CLKCMU_FSYS_MMC_EMBD_USER	0x0140
-#define PLL_CON0_MUX_CLKCMU_FSYS_MMC_SDIO_USER	0x0160
-#define PLL_CON0_MUX_CLKCMU_FSYS_USB30DRD_USER	0x0180
-#define CLK_CON_GAT_GOUT_FSYS_MMC_CARD_I_ACLK	0x2030
-#define CLK_CON_GAT_GOUT_FSYS_MMC_CARD_SDCLKIN	0x2034
-#define CLK_CON_GAT_GOUT_FSYS_MMC_EMBD_I_ACLK	0x2038
-#define CLK_CON_GAT_GOUT_FSYS_MMC_EMBD_SDCLKIN	0x203c
-#define CLK_CON_GAT_GOUT_FSYS_MMC_SDIO_I_ACLK	0x2040
-#define CLK_CON_GAT_GOUT_FSYS_MMC_SDIO_SDCLKIN	0x2044
+#define PLL_LOCKTIME_PLL_USB				0x0000
+#define PLL_CON0_MUX_CLKCMU_FSYS_BUS_USER		0x0100
+#define PLL_CON0_MUX_CLKCMU_FSYS_MMC_CARD_USER		0x0120
+#define PLL_CON0_MUX_CLKCMU_FSYS_MMC_EMBD_USER		0x0140
+#define PLL_CON0_MUX_CLKCMU_FSYS_MMC_SDIO_USER		0x0160
+#define PLL_CON0_MUX_CLKCMU_FSYS_USB30DRD_USER		0x0180
+#define PLL_CON0_PLL_USB				0x01a0
+#define CLK_CON_GAT_CLK_FSYS_USB20PHY_CLKCORE		0x200c
+#define CLK_CON_GAT_GOUT_FSYS_MMC_CARD_I_ACLK		0x2030
+#define CLK_CON_GAT_GOUT_FSYS_MMC_CARD_SDCLKIN		0x2034
+#define CLK_CON_GAT_GOUT_FSYS_MMC_EMBD_I_ACLK		0x2038
+#define CLK_CON_GAT_GOUT_FSYS_MMC_EMBD_SDCLKIN		0x203c
+#define CLK_CON_GAT_GOUT_FSYS_MMC_SDIO_I_ACLK		0x2040
+#define CLK_CON_GAT_GOUT_FSYS_MMC_SDIO_SDCLKIN		0x2044
+#define CLK_CON_GAT_GOUT_FSYS_USB30DRD_ACLK_20PHYCTRL	0x2068
+#define CLK_CON_GAT_GOUT_FSYS_USB30DRD_ACLK_30PHYCTRL_0	0x206c
+#define CLK_CON_GAT_GOUT_FSYS_USB30DRD_ACLK_30PHYCTRL_1	0x2070
+#define CLK_CON_GAT_GOUT_FSYS_USB30DRD_BUS_CLK_EARLY	0x2074
+#define CLK_CON_GAT_GOUT_FSYS_USB30DRD_REF_CLK		0x2078
 
 static const unsigned long fsys_clk_regs[] __initconst = {
+	PLL_LOCKTIME_PLL_USB,
 	PLL_CON0_MUX_CLKCMU_FSYS_BUS_USER,
 	PLL_CON0_MUX_CLKCMU_FSYS_MMC_CARD_USER,
 	PLL_CON0_MUX_CLKCMU_FSYS_MMC_EMBD_USER,
 	PLL_CON0_MUX_CLKCMU_FSYS_MMC_SDIO_USER,
 	PLL_CON0_MUX_CLKCMU_FSYS_USB30DRD_USER,
+	PLL_CON0_PLL_USB,
+	CLK_CON_GAT_CLK_FSYS_USB20PHY_CLKCORE,
 	CLK_CON_GAT_GOUT_FSYS_MMC_CARD_I_ACLK,
 	CLK_CON_GAT_GOUT_FSYS_MMC_CARD_SDCLKIN,
 	CLK_CON_GAT_GOUT_FSYS_MMC_EMBD_I_ACLK,
 	CLK_CON_GAT_GOUT_FSYS_MMC_EMBD_SDCLKIN,
 	CLK_CON_GAT_GOUT_FSYS_MMC_SDIO_I_ACLK,
 	CLK_CON_GAT_GOUT_FSYS_MMC_SDIO_SDCLKIN,
+	CLK_CON_GAT_GOUT_FSYS_USB30DRD_ACLK_20PHYCTRL,
+	CLK_CON_GAT_GOUT_FSYS_USB30DRD_ACLK_30PHYCTRL_0,
+	CLK_CON_GAT_GOUT_FSYS_USB30DRD_ACLK_30PHYCTRL_1,
+	CLK_CON_GAT_GOUT_FSYS_USB30DRD_BUS_CLK_EARLY,
+	CLK_CON_GAT_GOUT_FSYS_USB30DRD_REF_CLK,
 };
 
+static const struct samsung_pll_rate_table pll_usb_rate_table[] __initconst = {
+	PLL_35XX_RATE(26 * MHZ, 50000000U, 400, 13, 4),
+};
+
+static const struct samsung_pll_clock fsys_pll_clks[] __initconst = {
+	PLL(pll_1418x, CLK_FOUT_USB_PLL, "fout_usb_pll", "oscclk",
+	    PLL_LOCKTIME_PLL_USB, PLL_CON0_PLL_USB,
+	    pll_usb_rate_table),
+};
+
+
 /* List of parent clocks for Muxes in CMU_FSYS */
 PNAME(mout_fsys_bus_user_p)		= { "oscclk", "dout_fsys_bus" };
 PNAME(mout_fsys_mmc_card_user_p)	= { "oscclk", "dout_fsys_mmc_card" };
 PNAME(mout_fsys_mmc_embd_user_p)	= { "oscclk", "dout_fsys_mmc_embd" };
 PNAME(mout_fsys_mmc_sdio_user_p)	= { "oscclk", "dout_fsys_mmc_sdio" };
 PNAME(mout_fsys_usb30drd_user_p)	= { "oscclk", "dout_fsys_usb30drd" };
+PNAME(mout_usb_pll_p)			= { "oscclk", "fout_usb_pll" };
 
 static const struct samsung_mux_clock fsys_mux_clks[] __initconst = {
 	MUX(CLK_MOUT_FSYS_BUS_USER, "mout_fsys_bus_user", mout_fsys_bus_user_p,
@@ -731,12 +759,16 @@ static const struct samsung_mux_clock fsys_mux_clks[] __initconst = {
 	MUX_F(CLK_MOUT_FSYS_MMC_SDIO_USER, "mout_fsys_mmc_sdio_user",
 	      mout_fsys_mmc_sdio_user_p, PLL_CON0_MUX_CLKCMU_FSYS_MMC_SDIO_USER,
 	      4, 1, CLK_SET_RATE_PARENT, 0),
-	MUX_F(CLK_MOUT_FSYS_USB30DRD_USER, "mout_fsys_usb30drd_user",
+	MUX(CLK_MOUT_FSYS_USB30DRD_USER, "mout_fsys_usb30drd_user",
 	      mout_fsys_usb30drd_user_p, PLL_CON0_MUX_CLKCMU_FSYS_USB30DRD_USER,
-	      4, 1, CLK_SET_RATE_PARENT, 0),
+	      4, 1),
+	nMUX_F(CLK_MOUT_USB_PLL, "mout_usb_pll", mout_usb_pll_p,
+	    PLL_CON0_PLL_USB, 4, 1, CLK_SET_RATE_PARENT, 0),
 };
 
 static const struct samsung_gate_clock fsys_gate_clks[] __initconst = {
+	GATE(CLK_FSYS_USB20PHY_CLKCORE, "clk_fsys_usb20phy_clkcore", "mout_usb_pll",
+	     CLK_CON_GAT_CLK_FSYS_USB20PHY_CLKCORE, 21, CLK_SET_RATE_PARENT, 0),
 	GATE(CLK_GOUT_MMC_CARD_ACLK, "gout_mmc_card_aclk", "mout_fsys_bus_user",
 	     CLK_CON_GAT_GOUT_FSYS_MMC_CARD_I_ACLK, 21, 0, 0),
 	GATE(CLK_GOUT_MMC_CARD_SDCLKIN, "gout_mmc_card_sdclkin",
@@ -752,9 +784,22 @@ static const struct samsung_gate_clock fsys_gate_clks[] __initconst = {
 	GATE(CLK_GOUT_MMC_SDIO_SDCLKIN, "gout_mmc_sdio_sdclkin",
 	     "mout_fsys_mmc_sdio_user", CLK_CON_GAT_GOUT_FSYS_MMC_SDIO_SDCLKIN,
 	     21, CLK_SET_RATE_PARENT, 0),
+	GATE(CLK_FSYS_USB30DRD_ACLK_20PHYCTRL, "clk_fsys_usb30drd_aclk_20phyctrl",
+	     "mout_fsys_bus_user", CLK_CON_GAT_GOUT_FSYS_USB30DRD_ACLK_20PHYCTRL, 21, 0, 0),
+	GATE(CLK_FSYS_USB30DRD_ACLK_30PHYCTRL_0, "clk_fsys_usb30drd_aclk_30phyctrl_0",
+	     "mout_fsys_bus_user", CLK_CON_GAT_GOUT_FSYS_USB30DRD_ACLK_30PHYCTRL_0, 21, 0, 0),
+	GATE(CLK_FSYS_USB30DRD_ACLK_30PHYCTRL_1, "clk_fsys_usb30drd_aclk_30phyctrl_1",
+	     "mout_fsys_bus_user", CLK_CON_GAT_GOUT_FSYS_USB30DRD_ACLK_30PHYCTRL_1, 21, 0, 0),
+	GATE(CLK_FSYS_USB30DRD_BUS_CLK_EARLY, "clk_fsys_usb30drd_bus_clk_early",
+	     "mout_fsys_bus_user", CLK_CON_GAT_GOUT_FSYS_USB30DRD_BUS_CLK_EARLY, 21, 0, 0),
+	GATE(CLK_FSYS_USB30DRD_REF_CLK, "clk_fsys_usb30drd_ref_clk", "mout_fsys_usb30drd_user",
+	     CLK_CON_GAT_GOUT_FSYS_USB30DRD_REF_CLK, 21, 0, 0),
+
 };
 
 static const struct samsung_cmu_info fsys_cmu_info __initconst = {
+	.pll_clks		= fsys_pll_clks,
+	.nr_pll_clks		= ARRAY_SIZE(fsys_pll_clks),
 	.mux_clks		= fsys_mux_clks,
 	.nr_mux_clks		= ARRAY_SIZE(fsys_mux_clks),
 	.gate_clks		= fsys_gate_clks,
-- 
2.46.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
