Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 994FDE7718B
	for <linux-phy@archiver.kernel.org>; Fri, 27 Dec 2024 13:14:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VkKg/RE7vK4S0MZr2dwdKx4vicE6UsJ3PijhTmmR91s=; b=Xak/heRWG03cGA
	n9D0C3BkeNti+tAn8YzZnpMRmMNOqeXTE5fmKW1TP9Jh6rRUECY9b4aVzDFL+SIj78PoPyBnvMJ9s
	Sq7CZf79KMhc7Q8xYhDwiPyKKziGwsM1ESoNxDDotHMHTCb54retBeZd5YHjFVw88D2gcVHZukp9Z
	C6c/sw1rB5vMbh6Xuj3sh62yxriW+2BqZbMifzouDdjCDnTbOTsOok9u7SFPMQEPRIEFNxH0m8uRL
	PGW0XNLyG0n79ytcXdqcU1w3Bq2YlM1zTndKmOExZse83/29VoPIDtiXDY1/JM5z9GZfzkU5vmvIN
	B6t25U2EcA5tE0lctFAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tRAAa-00000000G6u-1a70;
	Fri, 27 Dec 2024 13:14:24 +0000
Received: from omta036.useast.a.cloudfilter.net ([44.202.169.35])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tR9ys-00000000DPQ-0CRk
	for linux-phy@lists.infradead.org;
	Fri, 27 Dec 2024 13:02:19 +0000
Received: from eig-obgw-6001a.ext.cloudfilter.net ([10.0.30.140])
	by cmsmtp with ESMTPS
	id R5GOtXI8ExoE1R9yrtlHQm; Fri, 27 Dec 2024 13:02:17 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id R9yotpDvw2Zy0R9yqtuETW; Fri, 27 Dec 2024 13:02:17 +0000
X-Authority-Analysis: v=2.4 cv=Q4EZ4J2a c=1 sm=1 tr=0 ts=676ea559
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=kofhyyBXuK/oEhdxNjf66Q==:17
 a=IkcTkHD0fZMA:10 a=RZcAm9yDv7YA:10 a=-pn6D5nKLtMA:10 a=vU9dKmh3AAAA:8
 a=9cU--O3412mDuayuQzEA:9 a=QEXdDO2ut3YA:10 a=rsP06fVo5MYu2ilr0aT5:22
 a=ZCPYImcxYIQFgLOT52_G:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Cc:To:In-Reply-To:References:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=NlbeabqHXI3xJyUbgyHJpY/hBcQISwAxP63/wwrSWEY=; b=OvfXK8geDvzT6I05l+JGo6c4Tz
	imkMIicUdvcn7A0dLBXpABELMjJ8idT/0gzvDQJrum55lmt5DsPLymIuUqds3/asZE7hDgj/rj4Dr
	DP1CSemxre6mcyUZB+TrMcxZwhoR/Af+Q6i2ngX/KqGD7k2sxWOmwrgpqOQdJy6uKJX5yc6AvvkQf
	e6YVN1ZZb9o45iWQ0f1xmEXDHORq9OMXoXqR0wi8+AedkzBKstg8ouK0AOo8dFqGRcQaEOEiAVr/l
	RE6wu6Mv7qDENW76pLUBI22sGjHcRD7mWy9sgaz2/H5WWkr5MWbQCiKq/OoL0a6Rostyf/5mAAvmH
	2hhliAuA==;
Received: from [122.165.245.213] (port=58270 helo=[127.0.1.1])
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <parthiban@linumiz.com>)
	id 1tR9yj-002EaQ-0B;
	Fri, 27 Dec 2024 18:32:09 +0530
From: Parthiban Nallathambi <parthiban@linumiz.com>
Date: Fri, 27 Dec 2024 18:30:59 +0530
Subject: [PATCH RESEND 10/22] pinctrl: sunxi: add missed lvds pins for
 a100/a133
MIME-Version: 1.0
Message-Id: <20241227-a133-display-support-v1-10-abad35b3579c@linumiz.com>
References: <20241227-a133-display-support-v1-0-abad35b3579c@linumiz.com>
In-Reply-To: <20241227-a133-display-support-v1-0-abad35b3579c@linumiz.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1735304469; l=4202;
 i=parthiban@linumiz.com; s=20241125; h=from:subject:message-id;
 bh=CfKDzLVW2HjbFGzbatG7QU1ZUM6EVKr2pWjYtibsVk4=;
 b=So1Lwka0B4KnPmTpVdrjLtDT3YoErCy+N2Eal5fNzSHSpCCtJIeAGGmzZIv+toF9VWmSzSRpi
 u31B+N7VGcFALGjGEd2GkX6Hz54AzgbjLxnuMYR2CImKCm8sEe4Ry2G
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
X-Exim-ID: 1tR9yj-002EaQ-0B
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([127.0.1.1]) [122.165.245.213]:58270
X-Source-Auth: parthiban@linumiz.com
X-Email-Count: 317
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfO66Zpi0joFxsvf33np90Gdht6ZQlC58j6Lfr/bsqhsXl/Lv+VjEiv6TGfaEAbOicQYvzIYKfFtIa6a7EPU22UXtkbEZV9avh1uzM5czQbBejeqkqEiV
 q8haNHg/ODJ368Qv9fQIZ8epE1Zt9WSWDFnznJt4PP2cG5DWaN6TSypBtE/bBRetCTczsbD1mxEoeEIyEmeNL4m2juZDjpBmOlSf3rCGbWh+trAn7wu8VoTi
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241227_050218_168276_E6EDC3F0 
X-CRM114-Status: UNSURE (   4.10  )
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

lvds, lcd, dsi all shares the same GPIO D bank and lvds0
data 3 lines and lvds1 pins are missed, add them.

Signed-off-by: Parthiban Nallathambi <parthiban@linumiz.com>
---
 drivers/pinctrl/sunxi/pinctrl-sun50i-a100.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/pinctrl/sunxi/pinctrl-sun50i-a100.c b/drivers/pinctrl/sunxi/pinctrl-sun50i-a100.c
index df90c75fb3c5..b97de80ae2f3 100644
--- a/drivers/pinctrl/sunxi/pinctrl-sun50i-a100.c
+++ b/drivers/pinctrl/sunxi/pinctrl-sun50i-a100.c
@@ -256,72 +256,84 @@ static const struct sunxi_desc_pin a100_pins[] = {
 		  SUNXI_FUNCTION(0x0, "gpio_in"),
 		  SUNXI_FUNCTION(0x1, "gpio_out"),
 		  SUNXI_FUNCTION(0x2, "lcd0"),		/* D12 */
+		  SUNXI_FUNCTION(0x3, "lvds0"),		/* D3P */
 		  SUNXI_FUNCTION(0x4, "dsi0"),		/* DP3 */
 		  SUNXI_FUNCTION_IRQ_BANK(0x6, 2, 8)),
 	SUNXI_PIN(SUNXI_PINCTRL_PIN(D, 9),
 		  SUNXI_FUNCTION(0x0, "gpio_in"),
 		  SUNXI_FUNCTION(0x1, "gpio_out"),
 		  SUNXI_FUNCTION(0x2, "lcd0"),		/* D13 */
+		  SUNXI_FUNCTION(0x3, "lvds0"),		/* D3N */
 		  SUNXI_FUNCTION(0x4, "dsi0"),		/* DM3 */
 		  SUNXI_FUNCTION_IRQ_BANK(0x6, 2, 9)),
 	SUNXI_PIN(SUNXI_PINCTRL_PIN(D, 10),
 		  SUNXI_FUNCTION(0x0, "gpio_in"),
 		  SUNXI_FUNCTION(0x1, "gpio_out"),
 		  SUNXI_FUNCTION(0x2, "lcd0"),		/* D14 */
+		  SUNXI_FUNCTION(0x3, "lvds1"),		/* D0P */
 		  SUNXI_FUNCTION(0x4, "spi1"),		/* CS */
 		  SUNXI_FUNCTION_IRQ_BANK(0x6, 2, 10)),
 	SUNXI_PIN(SUNXI_PINCTRL_PIN(D, 11),
 		  SUNXI_FUNCTION(0x0, "gpio_in"),
 		  SUNXI_FUNCTION(0x1, "gpio_out"),
 		  SUNXI_FUNCTION(0x2, "lcd0"),		/* D15 */
+		  SUNXI_FUNCTION(0x3, "lvds1"),		/* D0N */
 		  SUNXI_FUNCTION(0x4, "spi1"),		/* CLK */
 		  SUNXI_FUNCTION_IRQ_BANK(0x6, 2, 11)),
 	SUNXI_PIN(SUNXI_PINCTRL_PIN(D, 12),
 		  SUNXI_FUNCTION(0x0, "gpio_in"),
 		  SUNXI_FUNCTION(0x1, "gpio_out"),
 		  SUNXI_FUNCTION(0x2, "lcd0"),		/* D18 */
+		  SUNXI_FUNCTION(0x3, "lvds1"),		/* D1P */
 		  SUNXI_FUNCTION(0x4, "spi1"),		/* MOSI */
 		  SUNXI_FUNCTION_IRQ_BANK(0x6, 2, 12)),
 	SUNXI_PIN(SUNXI_PINCTRL_PIN(D, 13),
 		  SUNXI_FUNCTION(0x0, "gpio_in"),
 		  SUNXI_FUNCTION(0x1, "gpio_out"),
 		  SUNXI_FUNCTION(0x2, "lcd0"),		/* D19 */
+		  SUNXI_FUNCTION(0x3, "lvds1"),		/* D1N */
 		  SUNXI_FUNCTION(0x4, "spi1"),		/* MISO */
 		  SUNXI_FUNCTION_IRQ_BANK(0x6, 2, 13)),
 	SUNXI_PIN(SUNXI_PINCTRL_PIN(D, 14),
 		  SUNXI_FUNCTION(0x0, "gpio_in"),
 		  SUNXI_FUNCTION(0x1, "gpio_out"),
 		  SUNXI_FUNCTION(0x2, "lcd0"),		/* D20 */
+		  SUNXI_FUNCTION(0x3, "lvds1"),		/* D2P */
 		  SUNXI_FUNCTION(0x4, "uart3"),		/* TX */
 		  SUNXI_FUNCTION_IRQ_BANK(0x6, 2, 14)),
 	SUNXI_PIN(SUNXI_PINCTRL_PIN(D, 15),
 		  SUNXI_FUNCTION(0x0, "gpio_in"),
 		  SUNXI_FUNCTION(0x1, "gpio_out"),
 		  SUNXI_FUNCTION(0x2, "lcd0"),		/* D21 */
+		  SUNXI_FUNCTION(0x3, "lvds1"),		/* D2N */
 		  SUNXI_FUNCTION(0x4, "uart3"),		/* RX */
 		  SUNXI_FUNCTION_IRQ_BANK(0x6, 2, 15)),
 	SUNXI_PIN(SUNXI_PINCTRL_PIN(D, 16),
 		  SUNXI_FUNCTION(0x0, "gpio_in"),
 		  SUNXI_FUNCTION(0x1, "gpio_out"),
 		  SUNXI_FUNCTION(0x2, "lcd0"),		/* D22 */
+		  SUNXI_FUNCTION(0x3, "lvds1"),		/* CKP */
 		  SUNXI_FUNCTION(0x4, "uart3"),		/* RTS */
 		  SUNXI_FUNCTION_IRQ_BANK(0x6, 2, 16)),
 	SUNXI_PIN(SUNXI_PINCTRL_PIN(D, 17),
 		  SUNXI_FUNCTION(0x0, "gpio_in"),
 		  SUNXI_FUNCTION(0x1, "gpio_out"),
 		  SUNXI_FUNCTION(0x2, "lcd0"),		/* D23 */
+		  SUNXI_FUNCTION(0x3, "lvds1"),		/* CKN */
 		  SUNXI_FUNCTION(0x4, "uart3"),		/* CTS */
 		  SUNXI_FUNCTION_IRQ_BANK(0x6, 2, 17)),
 	SUNXI_PIN(SUNXI_PINCTRL_PIN(D, 18),
 		  SUNXI_FUNCTION(0x0, "gpio_in"),
 		  SUNXI_FUNCTION(0x1, "gpio_out"),
 		  SUNXI_FUNCTION(0x2, "lcd0"),		/* CLK */
+		  SUNXI_FUNCTION(0x3, "lvds1"),		/* D3P */
 		  SUNXI_FUNCTION(0x4, "uart4"),		/* TX */
 		  SUNXI_FUNCTION_IRQ_BANK(0x6, 2, 18)),
 	SUNXI_PIN(SUNXI_PINCTRL_PIN(D, 19),
 		  SUNXI_FUNCTION(0x0, "gpio_in"),
 		  SUNXI_FUNCTION(0x1, "gpio_out"),
 		  SUNXI_FUNCTION(0x2, "lcd0"),		/* DE */
+		  SUNXI_FUNCTION(0x3, "lvds1"),		/* D3N */
 		  SUNXI_FUNCTION(0x4, "uart4"),		/* RX */
 		  SUNXI_FUNCTION_IRQ_BANK(0x6, 2, 19)),
 	SUNXI_PIN(SUNXI_PINCTRL_PIN(D, 20),

-- 
2.39.5


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
