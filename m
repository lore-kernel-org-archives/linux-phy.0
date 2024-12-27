Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E16FE77191
	for <linux-phy@archiver.kernel.org>; Fri, 27 Dec 2024 11:23:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=04CPHZcN2CwWuoVtgkhlcHT7k4wZYgUtyoylT5XWJO0=; b=c330+mDc27+zo8
	+qhw8CV9hSUzjjWOtXEj/zs0v/y+lzBQUeycq/udS+YrDy0/2kQrYvifbro5bfjfo9tB0JHYnPH+L
	DpGG7mkmZN0iUNjo7SM+c4ACdc51yQ+EO4gsoHkp9QMUD3qxiRCjK5XK3/rEJn9NvvaIQRXAAxBKO
	18u0NCmBTFOBAlEpePFTYxCNszCnkYpavIJ0rlzeXCCGZKJgMg/ZyyO9tL2FNlsCwfdbk8jnxZxJW
	14cXijTaxQb8Z+9RS1Mr7igk//1EWNzUz9KuoW7f2ftpcsaipgU8bslnCWIIhVO137UPz6k3YqKG3
	VuER2/0OpbIgqnLZ0j9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tR8R2-000000005Kr-1J44;
	Fri, 27 Dec 2024 11:23:16 +0000
Received: from omta040.useast.a.cloudfilter.net ([44.202.169.39])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tR8Dp-000000002iT-1EDO
	for linux-phy@lists.infradead.org;
	Fri, 27 Dec 2024 11:09:38 +0000
Received: from eig-obgw-5010a.ext.cloudfilter.net ([10.0.29.199])
	by cmsmtp with ESMTPS
	id R79atbXI6nNFGR8DptXDSR; Fri, 27 Dec 2024 11:09:37 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id R8Dmt36XtT3CkR8Dotx0v9; Fri, 27 Dec 2024 11:09:36 +0000
X-Authority-Analysis: v=2.4 cv=EYHOQumC c=1 sm=1 tr=0 ts=676e8af0
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=kofhyyBXuK/oEhdxNjf66Q==:17
 a=IkcTkHD0fZMA:10 a=RZcAm9yDv7YA:10 a=-pn6D5nKLtMA:10 a=vU9dKmh3AAAA:8
 a=U3DMF0o1PY4y7HjVE7sA:9 a=QEXdDO2ut3YA:10 a=lcdGsAA1t286La22BbtU:22
 a=rsP06fVo5MYu2ilr0aT5:22 a=ZCPYImcxYIQFgLOT52_G:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Cc:To:In-Reply-To:References:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=dbYyqDxlPnUOcenlEsyd1+KMbnZL6BSy8ly64QBKbVQ=; b=K+mmc0qCD1oeBnmS8Ikf5mGTPh
	h+jzblvCCQfECKO8ISpEnomfDHd58ScOdegbccHnKPkIEmuW2laOgCO7A7taC3teqkhEwCW4+/QnC
	/VeXjJAIawTJWThTieaJbsthYHZidV4d0/t8k4M2GRnJ30+RHoiOsYEm7XpeDzV08uBUfe6DaAiYr
	/2MN4xG2abto2E9p+9oqjiRTBLC+MsZZoUe8RlvJgX4SmvgNCStHvrAIVk0jeG1CQcdKLCy5er6e+
	Tues0rIuKxbPtNAaYsY40NuFPFOH4lQeZSRszaHpYgho7gJAYs/nVMprhHdkBu9NWiMKdeasnqjF0
	YYL53Gcg==;
Received: from [122.165.245.213] (port=50828 helo=[127.0.1.1])
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <parthiban@linumiz.com>)
	id 1tR8DY-000bEK-13;
	Fri, 27 Dec 2024 16:39:20 +0530
From: Parthiban Nallathambi <parthiban@linumiz.com>
Date: Fri, 27 Dec 2024 16:38:00 +0530
Subject: [PATCH 13/22] drm/sun4i: make tcon top tv0 optional
MIME-Version: 1.0
Message-Id: <20241227-a133-display-support-v1-13-13b52f71fb14@linumiz.com>
References: <20241227-a133-display-support-v1-0-13b52f71fb14@linumiz.com>
In-Reply-To: <20241227-a133-display-support-v1-0-13b52f71fb14@linumiz.com>
To: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, 
 Robin Murphy <robin.murphy@arm.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, Maxime Ripard <mripard@kernel.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Linus Walleij <linus.walleij@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: iommu@lists.linux.dev, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org, 
 linux-phy@lists.infradead.org, 
 Parthiban Nallathambi <parthiban@linumiz.com>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1735297689; l=2767;
 i=parthiban@linumiz.com; s=20241125; h=from:subject:message-id;
 bh=Z1yBsrhc1T8q3fTFow1RSmWl9UXwRZd8FWpkoLs2A1A=;
 b=1d7aNRq2I2NijFkHAwRD1Rbm4xuW2LihHWK58pL81Pzcc5ItjJp9TlIPwLnfLhhWbRoHaLsEN
 5XTBxMkIJABBgwWXMm2Bak9KnYtqWPi9bX1/NDCI5LwA+QDtoEpt1t7
X-Developer-Key: i=parthiban@linumiz.com; a=ed25519;
 pk=PrcMZ/nwnHbeXNFUFUS833wF3DAX4hziDHEbBp1eNb8=
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - md-in-79.webhostbox.net
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - linumiz.com
X-BWhitelist: no
X-Source-IP: 122.165.245.213
X-Source-L: No
X-Exim-ID: 1tR8DY-000bEK-13
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([127.0.1.1]) [122.165.245.213]:50828
X-Source-Auth: parthiban@linumiz.com
X-Email-Count: 365
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfK5axHXKjGYjaSiTFLX0/886uKHlP2YcAjwWPIPwsyxivIKxWg0f543d8GWgygHdRHmzJuVcmu0fYlRkyrtDem6GV9sAPFCEvhjfiXvd/ttP/3dhKLtU
 xXlbZYNUV3e9t+FQr9SC3e0MnDtlesY42eAUKJlfeTwSLWzuuGCC334OiG/DolJLpd2P2oI5kqZj3BKlfka60OcdEOXJlh7IwZTNtNLHQd0BjmyvN9nfH8gQ
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241227_030937_418704_F4E1A87F 
X-CRM114-Status: GOOD (  12.13  )
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

current implementation of tcon top assumes tv0 is always present, which
isn't case in A100/A133 SoC's. Make tv0 optional by introducing another
control similar to tv1 and make existing users with true/present.

Signed-off-by: Parthiban Nallathambi <parthiban@linumiz.com>
---
 drivers/gpu/drm/sun4i/sun8i_tcon_top.c | 34 ++++++++++++++++++++--------------
 1 file changed, 20 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/sun4i/sun8i_tcon_top.c b/drivers/gpu/drm/sun4i/sun8i_tcon_top.c
index 8adda578c51b..bd9d0840ead7 100644
--- a/drivers/gpu/drm/sun4i/sun8i_tcon_top.c
+++ b/drivers/gpu/drm/sun4i/sun8i_tcon_top.c
@@ -16,6 +16,7 @@
 #include "sun8i_tcon_top.h"
 
 struct sun8i_tcon_top_quirks {
+	bool has_tcon_tv0;
 	bool has_tcon_tv1;
 	bool has_dsi;
 };
@@ -191,10 +192,11 @@ static int sun8i_tcon_top_bind(struct device *dev, struct device *master,
 	 * to TVE clock parent.
 	 */
 	i = 0;
-	clk_data->hws[CLK_TCON_TOP_TV0] =
-		sun8i_tcon_top_register_gate(dev, "tcon-tv0", regs,
-					     &tcon_top->reg_lock,
-					     TCON_TOP_TCON_TV0_GATE, i++);
+	if (quirks->has_tcon_tv0)
+		clk_data->hws[CLK_TCON_TOP_TV0] =
+			sun8i_tcon_top_register_gate(dev, "tcon-tv0", regs,
+						     &tcon_top->reg_lock,
+						     TCON_TOP_TCON_TV0_GATE, i++);
 
 	if (quirks->has_tcon_tv1)
 		clk_data->hws[CLK_TCON_TOP_TV1] =
@@ -208,16 +210,18 @@ static int sun8i_tcon_top_bind(struct device *dev, struct device *master,
 						     &tcon_top->reg_lock,
 						     TCON_TOP_TCON_DSI_GATE, i++);
 
-	for (i = 0; i < CLK_NUM; i++)
-		if (IS_ERR(clk_data->hws[i])) {
-			ret = PTR_ERR(clk_data->hws[i]);
-			goto err_unregister_gates;
-		}
+	if (i) {
+		for (i = 0; i < CLK_NUM; i++)
+			if (IS_ERR(clk_data->hws[i])) {
+				ret = PTR_ERR(clk_data->hws[i]);
+				goto err_unregister_gates;
+			}
 
-	ret = of_clk_add_hw_provider(dev->of_node, of_clk_hw_onecell_get,
-				     clk_data);
-	if (ret)
-		goto err_unregister_gates;
+		ret = of_clk_add_hw_provider(dev->of_node, of_clk_hw_onecell_get,
+				clk_data);
+		if (ret)
+			goto err_unregister_gates;
+	}
 
 	dev_set_drvdata(dev, tcon_top);
 
@@ -266,16 +270,18 @@ static void sun8i_tcon_top_remove(struct platform_device *pdev)
 }
 
 static const struct sun8i_tcon_top_quirks sun8i_r40_tcon_top_quirks = {
+	.has_tcon_tv0	= true,
 	.has_tcon_tv1	= true,
 	.has_dsi	= true,
 };
 
 static const struct sun8i_tcon_top_quirks sun20i_d1_tcon_top_quirks = {
+	.has_tcon_tv0	= true,
 	.has_dsi	= true,
 };
 
 static const struct sun8i_tcon_top_quirks sun50i_h6_tcon_top_quirks = {
-	/* Nothing special */
+	.has_tcon_tv0	= true,
 };
 
 /* sun4i_drv uses this list to check if a device node is a TCON TOP */

-- 
2.39.5


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
