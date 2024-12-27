Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42CB1E7718B
	for <linux-phy@archiver.kernel.org>; Fri, 27 Dec 2024 11:23:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PF8gr0eZDRQ930nebemqAoW8ldqpnD8kkL6F5Uaqkhc=; b=o0DGupfRZ8TuMN
	iGXH9UlXM2KKzjxzxPMYoxRw2CKmVKlO0l/zP0dIuXnpQ4XS+KeU8xmpHN3u7nJJRQH/CkQ1iwqCg
	OPh63ql6FqGMVJmCIwoxCAsTcfqLhiU8E75HWydISOSGa3tHVU2QAS/CpbLyN46sInS9tnGPlRbW7
	EskL/KhtVXn7lKL/EUk6C7iN49lvVxBRdNQGuHdXdQOsBfD5yhDNivtvDmdGaZtGC0f8St9R6+Eju
	BarFfJs68cgIAyAGCLmK6m8dWH2R0iK4/2vqUgZwiaO6DTV3YCrmdFrnyRXVVJnbaWyhuYns7SVAn
	CXwEsQlliTHmlXiTVy3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tR8R2-000000005Kf-04XE;
	Fri, 27 Dec 2024 11:23:16 +0000
Received: from omta034.useast.a.cloudfilter.net ([44.202.169.33])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tR8Do-000000002gI-1CPT
	for linux-phy@lists.infradead.org;
	Fri, 27 Dec 2024 11:09:38 +0000
Received: from eig-obgw-6010a.ext.cloudfilter.net ([10.0.30.248])
	by cmsmtp with ESMTPS
	id QgujtxEUfrKrbR8DntWlww; Fri, 27 Dec 2024 11:09:36 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id R8DktXFeSaFTVR8DmtJmjA; Fri, 27 Dec 2024 11:09:35 +0000
X-Authority-Analysis: v=2.4 cv=POkJ++qC c=1 sm=1 tr=0 ts=676e8aef
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=kofhyyBXuK/oEhdxNjf66Q==:17
 a=IkcTkHD0fZMA:10 a=RZcAm9yDv7YA:10 a=-pn6D5nKLtMA:10 a=vU9dKmh3AAAA:8
 a=cKcOzP3ZHZptonc-xdQA:9 a=QEXdDO2ut3YA:10 a=rsP06fVo5MYu2ilr0aT5:22
 a=ZCPYImcxYIQFgLOT52_G:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Cc:To:In-Reply-To:References:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=CrJYnGSuQ/C3gLGR8duqgqPICFRR6aXoD7bOvZZBy6U=; b=I3a0a9X5lI0wzRtsIdNOukklaO
	NIJpKEjQy++/uBFOIe8Kizt+V8Koz9IEkTVlIYn4u54R/kcnI8jsHLWyhMYE8ft6jFZxX7hL5kQ1b
	hXBYTDN3OeOA9ddEgV7LPBiauAdG9cBCYXAUZrM6wdCG9OWdr2XY87iplcSjUx0VaYO8ZLjv9s4gz
	++h8867cyxfG0wYjpGbK01v7iL7WZkPoJPW/weC0+EE+naSbgK4m8uhWf8aJiKLxASdKvzyYIaaGZ
	XilQ3cG86hEyVv//1BMdlqCOPNNWGU+3KO+qeq5OLIalnebZ/bEJ0Y5zmOg4TXE+yRkVDxplEfjfn
	Bkrp3AxQ==;
Received: from [122.165.245.213] (port=50828 helo=[127.0.1.1])
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <parthiban@linumiz.com>)
	id 1tR8DU-000bEK-0F;
	Fri, 27 Dec 2024 16:39:16 +0530
From: Parthiban Nallathambi <parthiban@linumiz.com>
Date: Fri, 27 Dec 2024 16:37:59 +0530
Subject: [PATCH 12/22] drm/sun4i: Add support for a100/a133 mixer
MIME-Version: 1.0
Message-Id: <20241227-a133-display-support-v1-12-13b52f71fb14@linumiz.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1735297689; l=1309;
 i=parthiban@linumiz.com; s=20241125; h=from:subject:message-id;
 bh=cEYXVRlHCL2jiFXMcJ1CyLQxMMvsOuDFr2JBco5EkAo=;
 b=5KgFwyFJwXRqgFb+1AwyCG4NVbHlAA+0Gud9ArI4tbsf+12Vwj4Zr4reY7LCTfJVGeOLZQ793
 +5jPpZU8HP9AFPy4qIGdA61FqeK5P1fJ6LWF8jgbIthvI5nYY09bmee
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
X-Exim-ID: 1tR8DU-000bEK-0F
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([127.0.1.1]) [122.165.245.213]:50828
X-Source-Auth: parthiban@linumiz.com
X-Email-Count: 349
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfHZARHmYcYAd5oBXZ5o12rjf2ccLP+cfJDxLiFcqLxZZp+CuxkrSOGRoIGf4ujOySEipSwR5T+unA+WupvfYe6SdKsAsJljggOGSRAvb3ALqy+OaSboa
 u4Blr0izL30zOhFp/emeVCXScG5Xc9SG3ywPUvLFSDeaYrNpvnzug+79dL2DpGqrhGWPS7hLRq6vJMZGggOpqv7GZc/l+dvcDzK+8HTBApA3Q2Zt/pA4+iPE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241227_030936_399203_2B2D50F7 
X-CRM114-Status: UNSURE (   6.83  )
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

Mixers in Allwinner A100/A133 have similar capabilities as others
SoCs with DE2. Add support for them.

Signed-off-by: Parthiban Nallathambi <parthiban@linumiz.com>
---
 drivers/gpu/drm/sun4i/sun8i_mixer.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/gpu/drm/sun4i/sun8i_mixer.c b/drivers/gpu/drm/sun4i/sun8i_mixer.c
index 8b41d33baa30..0a1fccb87d5d 100644
--- a/drivers/gpu/drm/sun4i/sun8i_mixer.c
+++ b/drivers/gpu/drm/sun4i/sun8i_mixer.c
@@ -714,6 +714,15 @@ static const struct sun8i_mixer_cfg sun50i_a64_mixer1_cfg = {
 	.vi_num		= 1,
 };
 
+static const struct sun8i_mixer_cfg sun50i_a100_mixer0_cfg = {
+	.ccsc		= CCSC_MIXER0_LAYOUT,
+	.mod_rate	= 300000000,
+	.scaler_mask	= 0xf,
+	.scanline_yuv	= 2560,
+	.ui_num		= 2,
+	.vi_num		= 2,
+};
+
 static const struct sun8i_mixer_cfg sun50i_h6_mixer0_cfg = {
 	.ccsc		= CCSC_MIXER0_LAYOUT,
 	.is_de3		= true,
@@ -765,6 +774,10 @@ static const struct of_device_id sun8i_mixer_of_table[] = {
 		.compatible = "allwinner,sun50i-a64-de2-mixer-1",
 		.data = &sun50i_a64_mixer1_cfg,
 	},
+	{
+		.compatible = "allwinner,sun50i-a100-de2-mixer-0",
+		.data = &sun50i_a100_mixer0_cfg,
+	},
 	{
 		.compatible = "allwinner,sun50i-h6-de3-mixer-0",
 		.data = &sun50i_h6_mixer0_cfg,

-- 
2.39.5


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
