Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A7ECE77191
	for <linux-phy@archiver.kernel.org>; Fri, 27 Dec 2024 13:05:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Z74rWw8+N8siCsy1ZlLE3xbHQzo3qxAIzmauqXw6HE=; b=MD7N/LBNe49KVk
	sI9EncVfgAiLVAzD8AbYGOjp6D5GLf737eqAEL7sL35OxzUFA/H7TcvWc0pl91O+oAtzcUUPNjCCT
	Apg+Ia3O3hh8isMzpJJlOSdPJPRfIoclducIkKyA7A3vm5X6VqY7xEDtEHOCyO7maYuaAq+l2Z6yW
	Q4upz/SDf2gfD93pb2NxbphDf5LeefmTKhtN3v/txezlUus1OJ1ZVRrxv4kIDsICtSmLA32K9W1ux
	uM+3d/ZgOUq4/EyobDz3YzCBu/VeUyGkdD3wCdU3rDLoobB1RE7BCajjHvh4SdbRxWe2ZdcY2+Mpj
	K+fTy4TDx9mK7GY3al6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tRA1U-00000000EdQ-3ZhR;
	Fri, 27 Dec 2024 13:05:00 +0000
Received: from omta38.uswest2.a.cloudfilter.net ([35.89.44.37])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tR9yF-00000000DUc-36jA
	for linux-phy@lists.infradead.org;
	Fri, 27 Dec 2024 13:01:40 +0000
Received: from eig-obgw-5007a.ext.cloudfilter.net ([10.0.29.141])
	by cmsmtp with ESMTPS
	id R46jtHqqiumtXR9yEt0IZH; Fri, 27 Dec 2024 13:01:39 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id R9yCtf1LP8PtxR9yDtmIv1; Fri, 27 Dec 2024 13:01:38 +0000
X-Authority-Analysis: v=2.4 cv=Fegxxo+6 c=1 sm=1 tr=0 ts=676ea532
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=kofhyyBXuK/oEhdxNjf66Q==:17
 a=IkcTkHD0fZMA:10 a=RZcAm9yDv7YA:10 a=-pn6D5nKLtMA:10 a=vU9dKmh3AAAA:8
 a=fsIbZEiDhnbgyVT8DcoA:9 a=QEXdDO2ut3YA:10 a=rsP06fVo5MYu2ilr0aT5:22
 a=ZCPYImcxYIQFgLOT52_G:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Cc:To:In-Reply-To:References:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=OzWNauLbiAQJEp1e2/czwTEEh3hDEGYbQXYIOeAFLNM=; b=oFVqE2lnEUtGsbzTYsXrDTd2zE
	wEdcOjhxRkIX/ZiFrQw4ezwSHQd1ctNrkb9JHQ24r7CXgZ+i/uz+t6sctoyG70xPBx5tjM3WCDnhu
	4ppItwDQlKTVJnOWCeAgu4IxRVa8sECl/9kIjx/eat+dqTO7Oc9yQYGikaBJO/zRZ6Sx2XAsThua8
	8V9nfI+uZwgfGwxgKOtZ+czLvdXTos/lWquHOMdRT8NAecgJiq1P/aQ83GstGeCajOKLyUPllMisb
	qBpGkU6WzVJo+5XD8b+l4/P8NOvEZRUwRYakJ3GarT5QbXgYUMj89MYnTgxO9Ok1RyAfrkcyYN0le
	uIPPPfnw==;
Received: from [122.165.245.213] (port=58270 helo=[127.0.1.1])
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <parthiban@linumiz.com>)
	id 1tR9y6-002EaQ-1H;
	Fri, 27 Dec 2024 18:31:30 +0530
From: Parthiban Nallathambi <parthiban@linumiz.com>
Date: Fri, 27 Dec 2024 18:30:52 +0530
Subject: [PATCH RESEND 03/22] dt-bindings: clock: sun8i de2 clock: Add PLL
 com clock
MIME-Version: 1.0
Message-Id: <20241227-a133-display-support-v1-3-abad35b3579c@linumiz.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1735304468; l=1074;
 i=parthiban@linumiz.com; s=20241125; h=from:subject:message-id;
 bh=sPElRYsF0jt44ZqeUcZ4OkMgH7YItvc9UU2klf48oOk=;
 b=lwXYbdY0YXtFp0SteDiUJHQ5o38UVvpR04ckUCMWN0HNrgpE8nT7j1I3MRNHoRqGGO2cKj5A/
 b0mNa+S2m4zCeQ/1LWrttU9hIVUQX0nMfexm5qp8SwtS52irX219hFK
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
X-Exim-ID: 1tR9y6-002EaQ-1H
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([127.0.1.1]) [122.165.245.213]:58270
X-Source-Auth: parthiban@linumiz.com
X-Email-Count: 114
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfPJrW+XSqW+qFfxTNsqpTy+HwJZCsI00AvdDKD+4RYi6PIgKi69OMGvyE5gzzdRX4tPo170BiWuzWzdw3FC/IB9zE5WyL+3/yms3JSk2d6tkrndTJcdX
 ShbUJG87Km4ZDo6+x9UM4qUpMqH9QgZ+b+IEa3bvwF7mWxuAwDg0Uwfqzn/CP+BZl/9+sFBHpSC2E/97rYJTatG6/SQWI7lrXBfpnK9CzQa9P4eQTAurnm7L
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241227_050139_796625_07731A95 
X-CRM114-Status: UNSURE (   5.19  )
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

Some platforms like A100/A133 also uses pll-com clock as additional
clock source for the display clock. This is not documents both in
user manual and DE 2.0 specification. These changes are mainly from
vendor BSP.

Signed-off-by: Parthiban Nallathambi <parthiban@linumiz.com>
---
 .../devicetree/bindings/clock/allwinner,sun8i-a83t-de2-clk.yaml         | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/allwinner,sun8i-a83t-de2-clk.yaml b/Documentation/devicetree/bindings/clock/allwinner,sun8i-a83t-de2-clk.yaml
index 70369bd633e4..3e00905b66ca 100644
--- a/Documentation/devicetree/bindings/clock/allwinner,sun8i-a83t-de2-clk.yaml
+++ b/Documentation/devicetree/bindings/clock/allwinner,sun8i-a83t-de2-clk.yaml
@@ -39,11 +39,13 @@ properties:
     items:
       - description: Bus Clock
       - description: Module Clock
+      - description: PLL common clock
 
   clock-names:
     items:
       - const: bus
       - const: mod
+      - const: pll-com
 
   resets:
     maxItems: 1

-- 
2.39.5


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
