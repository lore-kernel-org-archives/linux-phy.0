Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4EAA4E7718B
	for <linux-phy@archiver.kernel.org>; Fri, 27 Dec 2024 11:13:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Z74rWw8+N8siCsy1ZlLE3xbHQzo3qxAIzmauqXw6HE=; b=R75mtccapwPbvT
	Ij7MUSo94POy4Xgsu6H+hAKi7LHOyjYrAga/TMzBMQnrH5M5CLy+kPnCt9JaMHEVKzCAmgjo3qI8O
	Fq4xNt1KO1ofWfxqT7lcW0aRWxtmzLUseGVdH8RvhkSLxxYKFub8YweRvQgeRK1gvvhshtIVoHCtp
	51XdXaHOjJDZuu3tMqcTFXW/BpEwQnc0+t3hSXfB5qivhM0Kr7M1B5yKvvYoQjly/EyY8d/HJEK8G
	REFnkz0bYQmx1nke18uat4ASVAtOTKsyFfpsOBD7GKuXaohBp2X8NAjdm7i23LcXfwEmN8GVSdUGX
	woJdNcd/27I9F4yE33jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tR8HQ-000000004AT-0IdE;
	Fri, 27 Dec 2024 11:13:20 +0000
Received: from omta040.useast.a.cloudfilter.net ([44.202.169.39])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tR8D2-000000002iT-1hvs
	for linux-phy@lists.infradead.org;
	Fri, 27 Dec 2024 11:08:49 +0000
Received: from eig-obgw-5005a.ext.cloudfilter.net ([10.0.29.234])
	by cmsmtp with ESMTPS
	id R4LGtbB4znNFGR8D2tXDEw; Fri, 27 Dec 2024 11:08:48 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id R8Cytt8HXjcdmR8D1tMBIq; Fri, 27 Dec 2024 11:08:47 +0000
X-Authority-Analysis: v=2.4 cv=DrWd+3/+ c=1 sm=1 tr=0 ts=676e8abf
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
	bh=OzWNauLbiAQJEp1e2/czwTEEh3hDEGYbQXYIOeAFLNM=; b=OTLfmGq2RQMMnqWoWjrMSSMtLp
	GQOf4i+JPvIookaSjiJMFScKVJ4xkrnEESNBdVbXEnz62Lva04q+UV107Uo6j6SkF+6oo/S2aK4ZR
	MKASbtnLwpHL+o8HeTwXb+dCMo/+UTuNSaaIYBzKa0/4wFMqjbA5kzpJ4L/CXJN70S3QcXxK9yQ1D
	gRpqsFQbpL0RF43ZAf7c8j+CBLkwkt7WLoVRy0a83zshXnNtWV9xlJDjL6hmVOGiSPEB33TrFsXy1
	ph3xCqNzGpV2sdZKKtP+6kvuIgZR3C7YlMaULMRrrrRycZppr71WxHIXxOUi51UNAmA7w3gHspS1G
	kQ9qO5Qg==;
Received: from [122.165.245.213] (port=50828 helo=[127.0.1.1])
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <parthiban@linumiz.com>)
	id 1tR8Cm-000bEK-0U;
	Fri, 27 Dec 2024 16:38:32 +0530
From: Parthiban Nallathambi <parthiban@linumiz.com>
Date: Fri, 27 Dec 2024 16:37:50 +0530
Subject: [PATCH 03/22] dt-bindings: clock: sun8i de2 clock: Add PLL com
 clock
MIME-Version: 1.0
Message-Id: <20241227-a133-display-support-v1-3-13b52f71fb14@linumiz.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1735297689; l=1074;
 i=parthiban@linumiz.com; s=20241125; h=from:subject:message-id;
 bh=sPElRYsF0jt44ZqeUcZ4OkMgH7YItvc9UU2klf48oOk=;
 b=iYwmFT51XZcESh83cOKPv4w9+BXh77BqnSiRPMhS9ZBl1RhFKJt+zEKNXnIWnFH+wCrH5P8nX
 rlRXcA+xSHkB8X5+pmuVByKYzx16HMBmTyYrMCNdsigCWoicrncViqd
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
X-Exim-ID: 1tR8Cm-000bEK-0U
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([127.0.1.1]) [122.165.245.213]:50828
X-Source-Auth: parthiban@linumiz.com
X-Email-Count: 88
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfNmUTzbUqcRjTXZPvX4JB3gN6oOYea8zsKlu8RTsc8bS+xIajE4khmZun4TyVYONkAXDtQfaHb1JXQ244kOQjThBzjJRMXsiRw4Z1vvUu2zZZ4lpjPWL
 TX6tNXweRNQrpexTqb8qmh8PPL6odB0u5sXLPlUTccAV1jHOZ3DDKvGoWOO8paXjcnA0unAftLrxlCO4/1qxbLefTVeWvBo+oWF2vkXZIxi7sXjLZTDMGYJT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241227_030848_512884_C9E1CFA0 
X-CRM114-Status: UNSURE (   5.38  )
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
