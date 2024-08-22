Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7DE0CC52D7C
	for <linux-phy@archiver.kernel.org>; Thu, 22 Aug 2024 15:54:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vSgIMuDrB+wZxwBFUUH3yvLRwywc54ot5OkKWMMfrFo=; b=E2038ZKswyqxEn
	tDco8Z5dIWSxTLKdMIAbF71qYaDW3qHQ4/BcI9TGQ8wy7keQTNoD1Uh/RuNg0jCOt/ZIg41mCdjXe
	XSxbm0dRv79lpdbhMY84t6RPBTOyScuBOGku9w6k0qC0Dga7yhlvaev97FvBpG6dnVJqZiAISD6n8
	3s7m+FTUUwiONw/eJWF3CRHW6Q804uIEj7cajYt9T26K0NV+Ca+5XNAF70IGQbiPIzaSCCyOjZ/yd
	GLVSrqR+5nImKqzMQFr1ygSUr7fzRC6bSe9fei12ue4KAtBCbi6wlWxnO5WuEvqmHrHFGSRgP91Bq
	QC6aBRSrURF8VnHsZjeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shA8n-0000000DRLC-3x11;
	Thu, 22 Aug 2024 15:54:25 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sh9jY-0000000DKlJ-0kg8
	for linux-phy@lists.infradead.org;
	Thu, 22 Aug 2024 15:28:21 +0000
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-a7b2dbd81e3so130702366b.1
        for <linux-phy@lists.infradead.org>; Thu, 22 Aug 2024 08:28:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1724340498; x=1724945298; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6q6gFb3LAoTj4ZZDzDA4qjfJDj1sk1ibLpvJ8GBqpwo=;
        b=hR48U42QgL3Hvqma1TRD/WdQa2357eNUgbVX5dZ3o1E+OKkAWdtcHruCjuj9MnU34/
         RDNZGRwZ7X5BwJ+ZvLnaMQgyoZU+wQrZZs3jx08Hd/Jq1Lz2D2+QNl31ovqZCFSXuoyY
         3ad05qsiVX2WdaZH0DqjYtew5qkpve500GtakxRVu+zhHIWRGB9M4qZHNqk2cWePhpjw
         vKp+GzEK3kut7PG2ILqpVSUufwXtDa8X+K1X0hYL+/17yo8kxB90ra1R0UdfH5XHc0tm
         J9ztOgFJB0w6PVHWp0HlxUip7NGx0wBYtYPYWmrrgM9YcpxeMSdbjStngcOpcAVVVm33
         cddg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724340498; x=1724945298;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6q6gFb3LAoTj4ZZDzDA4qjfJDj1sk1ibLpvJ8GBqpwo=;
        b=Qmsz6yLKe+jrOXxIW3hDfLjz0+9cV6haPo3NCa0c8PexjKbB6eKfgmnPXDF0Xb3+tY
         bZmv1/xfRqpPQZ7XeX6T2eGCTJJCB6MvKA39Kf3/YuhsBOfCprPY8n/dYI/hopJzOlwM
         /RhErHQ97+aQn+6P/gORbWQk9a9Kmy7A3CzoOCuOxA3275zjfcPqQHauCH7j3yali7cY
         fMDcA0vnS0NKBCtlPCgr7xs9QNss8RgxobPiVp2vuHiqmJu/pPomv2OnSxFF9/471qoD
         Ry2ozLP+nZT9ifPIkw/rduBxeIQ8mdcl5bja7A6GeEST6BGTugqQAdAsADOQjPnSDSsU
         FRmQ==
X-Gm-Message-State: AOJu0YwU7J6lO3anbL+a0JrXGo9Iq6/kQS9RiLGJE2YXCrz2VEXRPVu5
	pAoE+jUjxPBgFMguAtjnTX6NGnfQkMQ2BmjJegJQAnrVO0mQoNvlE3C/WvLYzbU=
X-Google-Smtp-Source: AGHT+IFku6GurN1Vx/0hMFrk2Pt1NEf4Luk7IB+yb2dHofGfjXLtTdF78YBKlCcWth7ycyDXumSweA==
X-Received: by 2002:a17:907:1b1a:b0:a80:f6a9:c311 with SMTP id a640c23a62f3a-a866ee68e16mr449214366b.0.1724340497897;
        Thu, 22 Aug 2024 08:28:17 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.177])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a868f484dc5sm134189166b.171.2024.08.22.08.28.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Aug 2024 08:28:17 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	p.zabel@pengutronix.de,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	gregkh@linuxfoundation.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	yoshihiro.shimoda.uh@renesas.com,
	biju.das.jz@bp.renesas.com,
	ulf.hansson@linaro.org
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-usb@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	linux-pm@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH 01/16] clk: renesas: r9a08g045: Add clocks, resets and power domains for USB
Date: Thu, 22 Aug 2024 18:27:46 +0300
Message-Id: <20240822152801.602318-2-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
References: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240822_082820_254386_600AC29C 
X-CRM114-Status: UNSURE (   8.26  )
X-CRM114-Notice: Please train this message.
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

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Add clocks, resets and power domains for USB modules available on the
Renesas RZ/G3S SoC.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
 drivers/clk/renesas/r9a08g045-cpg.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/clk/renesas/r9a08g045-cpg.c b/drivers/clk/renesas/r9a08g045-cpg.c
index a891bfc3ab5a..6e9529678307 100644
--- a/drivers/clk/renesas/r9a08g045-cpg.c
+++ b/drivers/clk/renesas/r9a08g045-cpg.c
@@ -207,6 +207,10 @@ static const struct rzg2l_mod_clk r9a08g045_mod_clks[] = {
 	DEF_MOD("sdhi2_imclk2",		R9A08G045_SDHI2_IMCLK2, CLK_SD2_DIV4, 0x554, 9),
 	DEF_MOD("sdhi2_clk_hs",		R9A08G045_SDHI2_CLK_HS, R9A08G045_CLK_SD2, 0x554, 10),
 	DEF_MOD("sdhi2_aclk",		R9A08G045_SDHI2_ACLK, R9A08G045_CLK_P1, 0x554, 11),
+	DEF_MOD("usb0_host",		R9A08G045_USB_U2H0_HCLK, R9A08G045_CLK_P1, 0x578, 0),
+	DEF_MOD("usb1_host",		R9A08G045_USB_U2H1_HCLK, R9A08G045_CLK_P1, 0x578, 1),
+	DEF_MOD("usb0_func",		R9A08G045_USB_U2P_EXR_CPUCLK, R9A08G045_CLK_P1, 0x578, 2),
+	DEF_MOD("usb_pclk",		R9A08G045_USB_PCLK, R9A08G045_CLK_P1, 0x578, 3),
 	DEF_COUPLED("eth0_axi",		R9A08G045_ETH0_CLK_AXI, R9A08G045_CLK_M0, 0x57c, 0),
 	DEF_COUPLED("eth0_chi",		R9A08G045_ETH0_CLK_CHI, R9A08G045_CLK_ZT, 0x57c, 0),
 	DEF_MOD("eth0_refclk",		R9A08G045_ETH0_REFCLK, R9A08G045_CLK_HP, 0x57c, 8),
@@ -230,6 +234,10 @@ static const struct rzg2l_reset r9a08g045_resets[] = {
 	DEF_RST(R9A08G045_SDHI0_IXRST, 0x854, 0),
 	DEF_RST(R9A08G045_SDHI1_IXRST, 0x854, 1),
 	DEF_RST(R9A08G045_SDHI2_IXRST, 0x854, 2),
+	DEF_RST(R9A08G045_USB_U2H0_HRESETN, 0x878, 0),
+	DEF_RST(R9A08G045_USB_U2H1_HRESETN, 0x878, 1),
+	DEF_RST(R9A08G045_USB_U2P_EXL_SYSRST, 0x878, 2),
+	DEF_RST(R9A08G045_USB_PRESETN, 0x878, 3),
 	DEF_RST(R9A08G045_ETH0_RST_HW_N, 0x87c, 0),
 	DEF_RST(R9A08G045_ETH1_RST_HW_N, 0x87c, 1),
 	DEF_RST(R9A08G045_I2C0_MRST, 0x880, 0),
@@ -277,6 +285,15 @@ static const struct rzg2l_cpg_pm_domain_init_data r9a08g045_pm_domains[] = {
 	DEF_PD("sdhi2",		R9A08G045_PD_SDHI2,
 				DEF_REG_CONF(CPG_BUS_PERI_COM_MSTOP, BIT(11)),
 				RZG2L_PD_F_NONE),
+	DEF_PD("usb0",		R9A08G045_PD_USB0,
+				DEF_REG_CONF(CPG_BUS_PERI_COM_MSTOP, GENMASK(6, 5)),
+				RZG2L_PD_F_NONE),
+	DEF_PD("usb1",		R9A08G045_PD_USB1,
+				DEF_REG_CONF(CPG_BUS_PERI_COM_MSTOP, BIT(7)),
+				RZG2L_PD_F_NONE),
+	DEF_PD("usb-phy",	R9A08G045_PD_USB_PHY,
+				DEF_REG_CONF(CPG_BUS_PERI_COM_MSTOP, BIT(4)),
+				RZG2L_PD_F_NONE),
 	DEF_PD("eth0",		R9A08G045_PD_ETHER0,
 				DEF_REG_CONF(CPG_BUS_PERI_COM_MSTOP, BIT(2)),
 				RZG2L_PD_F_NONE),
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
