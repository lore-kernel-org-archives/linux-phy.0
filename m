Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7EE64E7718B
	for <linux-phy@archiver.kernel.org>; Fri, 27 Dec 2024 11:24:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vavJ3MuItzz5xl2Z5awPSSKh4pIAA6Lw8S6faZMCvj0=; b=rnrVZG31Jbi6Sp
	Qb8SkuReokw/SsCVW9e9RforWb7tmFby2vLu5Sxn4HemeTRg2gc4OCWBQuF+h8zY0sIf4HT6gtYZh
	NvvH8TVqJvgxHlFTACnIH0QVmlCERcD+Knp9n60fewx9euCD6GGq6FtR9Qgzgmso0AqyiktvEQp59
	ipaZ+XcYdX4buuxMc11vwlrKuxnX9O3Nuc9rGCgx0wMDrOYJvbGhXm0dGnRpK5hiUIeY5KjLi3Epl
	I6weutq0TQ2+FUJg2lwTpa2OIsz8jJIrOpFEbm6Qi0x/1SUhyzpnY6ymb3tXdIndNBOkjGNJN1Yqe
	x4OcGg++Izl5nN74mHvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tR8SB-000000005T8-1B5e;
	Fri, 27 Dec 2024 11:24:27 +0000
Received: from omta36.uswest2.a.cloudfilter.net ([35.89.44.35])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tR8Du-000000002gK-0F31
	for linux-phy@lists.infradead.org;
	Fri, 27 Dec 2024 11:09:43 +0000
Received: from eig-obgw-6008a.ext.cloudfilter.net ([10.0.30.227])
	by cmsmtp with ESMTPS
	id QwimtcGOCqvuoR8DttxjQQ; Fri, 27 Dec 2024 11:09:41 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id R8DqtyTqIZTzLR8DstNlKz; Fri, 27 Dec 2024 11:09:41 +0000
X-Authority-Analysis: v=2.4 cv=L+wbQfT8 c=1 sm=1 tr=0 ts=676e8af5
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=kofhyyBXuK/oEhdxNjf66Q==:17
 a=IkcTkHD0fZMA:10 a=RZcAm9yDv7YA:10 a=-pn6D5nKLtMA:10 a=vU9dKmh3AAAA:8
 a=zUiwhsQguGSo42tcF88A:9 a=QEXdDO2ut3YA:10 a=rsP06fVo5MYu2ilr0aT5:22
 a=ZCPYImcxYIQFgLOT52_G:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Cc:To:In-Reply-To:References:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=2ZTlzpcY9Nrn1bF4NErKmO8JMU6UkWIH2f9/tcnoXh0=; b=N1YLZNk36kXkdZeCip1ee2uVXF
	a+VooNL6VWwd9Lqk3zXfttZKyP2YUmBLrtJT73QkxkXhu283hxj+CxOLIY6vtinrm/SfpkQQH3OdT
	kbRQBhyoeiLH1WUIhiNf9poj45SGlZr1YxbBM0hItqXqUAh8RO8/FGF/EHmSizO4f+xQY4t8SEpVa
	9j8PTh9hr9L6zeVXq/s2CYKEKYKe6MW/zO+uaLIl69PcoMWC49a3MYVqfgxILsh6AfLuC6+nBmbr7
	gRVSYtkepbMi0JuX7r/KURseuSbOVnt2BvH9KphngQJ9aHClHUzSxLwXsLhbPe5iKbwKkG+qZowZq
	r7/tPI6g==;
Received: from [122.165.245.213] (port=50828 helo=[127.0.1.1])
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <parthiban@linumiz.com>)
	id 1tR8Dd-000bEK-1y;
	Fri, 27 Dec 2024 16:39:25 +0530
From: Parthiban Nallathambi <parthiban@linumiz.com>
Date: Fri, 27 Dec 2024 16:38:01 +0530
Subject: [PATCH 14/22] drm/sun4i: add a100/a133 tcon top quirks
MIME-Version: 1.0
Message-Id: <20241227-a133-display-support-v1-14-13b52f71fb14@linumiz.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1735297689; l=1225;
 i=parthiban@linumiz.com; s=20241125; h=from:subject:message-id;
 bh=sSqsAP7aI8LtOIYP4k3+cQUQommzJizcH73kj4wGkh0=;
 b=hKJUyEpYKYvGHwRhQmFQa8Mwv3Cpy612ASRC6nttQ+FM99Uud7cdJpw1tWBbS1cN/LG285qLm
 ag3/LaFKqb0B9yXmvGuOeU6wrLqNXswhPmc5JVbrrSMD0tmc3V4ETmN
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
X-Exim-ID: 1tR8Dd-000bEK-1y
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([127.0.1.1]) [122.165.245.213]:50828
X-Source-Auth: parthiban@linumiz.com
X-Email-Count: 407
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfAAMp0wLkPPLZ5NgMM81jil5OB/zGQ1In6Q4TEl3cgKp8QuoVL0If4h96P0qt8NaT1y9+2L+PUy9u+vtt8R+1evYffTc2WUBuwUdsMk++rgVTH9//LCt
 d0sW9y4kUEU5QsDROtbkXL929+o4kYgLcNBhJfQJujzARbqMBo2AbW6VHnuyOtIa+jOO38Z+8AXt+5tRf784RmbxeFpwiN1Kmz2ndMUONDXz8IqR1fQJvFg7
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241227_030942_116071_758BF14D 
X-CRM114-Status: UNSURE (   6.68  )
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

A100/A133 comes with 2 x LVDS, 1 x DSI without TV support. Add
quirks with tv0 disabled. DSI support is not added.

Signed-off-by: Parthiban Nallathambi <parthiban@linumiz.com>
---
 drivers/gpu/drm/sun4i/sun8i_tcon_top.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/sun4i/sun8i_tcon_top.c b/drivers/gpu/drm/sun4i/sun8i_tcon_top.c
index bd9d0840ead7..a777b30ecea0 100644
--- a/drivers/gpu/drm/sun4i/sun8i_tcon_top.c
+++ b/drivers/gpu/drm/sun4i/sun8i_tcon_top.c
@@ -280,6 +280,10 @@ static const struct sun8i_tcon_top_quirks sun20i_d1_tcon_top_quirks = {
 	.has_dsi	= true,
 };
 
+static const struct sun8i_tcon_top_quirks sun50i_a100_tcon_top_quirks = {
+	/* TODO DSI support */
+};
+
 static const struct sun8i_tcon_top_quirks sun50i_h6_tcon_top_quirks = {
 	.has_tcon_tv0	= true,
 };
@@ -294,6 +298,10 @@ const struct of_device_id sun8i_tcon_top_of_table[] = {
 		.compatible = "allwinner,sun20i-d1-tcon-top",
 		.data = &sun20i_d1_tcon_top_quirks
 	},
+	{
+		.compatible = "allwinner,sun50i-a100-tcon-top",
+		.data = &sun50i_a100_tcon_top_quirks
+	},
 	{
 		.compatible = "allwinner,sun50i-h6-tcon-top",
 		.data = &sun50i_h6_tcon_top_quirks

-- 
2.39.5


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
