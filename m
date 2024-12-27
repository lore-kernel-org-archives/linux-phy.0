Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D02EE77191
	for <linux-phy@archiver.kernel.org>; Fri, 27 Dec 2024 13:02:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6rN+NQbevLFUx3DiTSUCMZn68ihWCCijImSQvlKLejI=; b=ACHDAp00hUZP4y
	eKjif8Q4UzfKYyFm+MTT6tq9CU4b9MGc7LfyeuUzxyooKKFR8/rRSrIpbT11RAj4lvqCd9tNQrT2D
	Q4AN2pNYz6Vky2PD+8VTZmaLOSwnfeOdVbKOQRj4qOZ3rhtPIlD7krBHJiJSpdEEQ3czXDvAMkYVN
	HNEJn+L57OxoPJqCWl+iz4BfNCFlrh4azmQ/OI4byczFEgupI5oHsfzvyKUa6bASFv026ja2osShl
	HmE+tE8fxYj2lq7up2SjZYElKxjGHC8ni0szrTXrr0TcIdo+wbjqu/V9KtMa5JtbO4is+jyMehPSI
	S+qnkW2gxwTAh3/VPapg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tR9zC-00000000Dsg-35Nh;
	Fri, 27 Dec 2024 13:02:38 +0000
Received: from omta036.useast.a.cloudfilter.net ([44.202.169.35])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tR9y4-00000000DPQ-2YV8
	for linux-phy@lists.infradead.org;
	Fri, 27 Dec 2024 13:01:29 +0000
Received: from eig-obgw-5008a.ext.cloudfilter.net ([10.0.29.246])
	by cmsmtp with ESMTPS
	id R46etX9ACxoE1R9y3tlH0d; Fri, 27 Dec 2024 13:01:27 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id R9y0txwAaN0LRR9y1tqcnt; Fri, 27 Dec 2024 13:01:26 +0000
X-Authority-Analysis: v=2.4 cv=erfZzJpX c=1 sm=1 tr=0 ts=676ea526
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=kofhyyBXuK/oEhdxNjf66Q==:17
 a=IkcTkHD0fZMA:10 a=RZcAm9yDv7YA:10 a=-pn6D5nKLtMA:10 a=vU9dKmh3AAAA:8
 a=mFyXD75C-Rjc5bRUbP4A:9 a=QEXdDO2ut3YA:10 a=rsP06fVo5MYu2ilr0aT5:22
 a=ZCPYImcxYIQFgLOT52_G:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Cc:To:In-Reply-To:References:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=VbcHXTdEmafcZ26pOm95idNdvsDgKQdu1LnTvG4534s=; b=aSbFR/JiTZx4U+c9H2c1A/0/pi
	D2/yBDDH3m3UxtCAPnT7fnDFsf3vU7U+0M2Uihxz/QFCzyQrvRVSzUHFTHTclSIFiWsOSR9nOU/od
	I2ySP8OQi/JtJA9cOC8chkNi0g0vdqiBiFUX8RQ8oCTBDOC1oB+KPKgwjTJHSVR4o7gfbU28yA/3I
	AB0IKTEZM1+2/jUIg/bnQCOhP2A4xnWbi2Wy/FGIgfjK9Dw/GuqhaSX9KLJEKsdRMHrnquAgVvLKt
	D0mAuULRz5hGvk9ErXyQuZ60RN1ZAfI0VgUAaKcMxAkVK/VWJCpm/dN4jTr/OMVuKraOmNjFyTvXt
	UTABAwcg==;
Received: from [122.165.245.213] (port=58270 helo=[127.0.1.1])
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <parthiban@linumiz.com>)
	id 1tR9xv-002EaQ-1L;
	Fri, 27 Dec 2024 18:31:19 +0530
From: Parthiban Nallathambi <parthiban@linumiz.com>
Date: Fri, 27 Dec 2024 18:30:50 +0530
Subject: [PATCH RESEND 01/22] dt-bindings: iommu: sun50i: remove resets
 from required property
MIME-Version: 1.0
Message-Id: <20241227-a133-display-support-v1-1-abad35b3579c@linumiz.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1735304468; l=774;
 i=parthiban@linumiz.com; s=20241125; h=from:subject:message-id;
 bh=qHYIlw5q2Ro5I852QrjEef3P3GktuZk2GSnSTYiauwE=;
 b=/2ePddOT/OpNwvShyS69Rsku811DGFkZL/le6QeJ8Ke+qincL08cWsrrfZynXU4sdnlo+0I23
 k9hLapYXlntBNe9JFjiKeJfqR7k6lT7gKV2AVbWsnnSOD5yX2NP+aK+
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
X-Exim-ID: 1tR9xv-002EaQ-1L
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([127.0.1.1]) [122.165.245.213]:58270
X-Source-Auth: parthiban@linumiz.com
X-Email-Count: 56
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfMNWT0q/xO/TKz9T2tgN25qw4voLhy5E4Pdk+Pr4s/ZTaO5xnGJNXeZ+xnXA9WWyAXtC4Tuf/J6rg3W/Ie92Fbj0WYCFTvLczimGjOb0dsvdpftcTlHA
 PEA64rDEH4QFQ9xQBefpZM2S4rPxsXeW0u/OiPhIAcisB8jfath45GF3T12LaYmGSnRAcoPS1/WiLHZFZD6Tqzsmp6XeN4bmJOXZEdkFm4UpZWpiPON8o5ay
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241227_050128_720705_2CAF8423 
X-CRM114-Status: UNSURE (   5.15  )
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

iommu in a133/a100 does not have reset control. remove it
from required property to make it optional.

Signed-off-by: Parthiban Nallathambi <parthiban@linumiz.com>
---
 Documentation/devicetree/bindings/iommu/allwinner,sun50i-h6-iommu.yaml | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/iommu/allwinner,sun50i-h6-iommu.yaml b/Documentation/devicetree/bindings/iommu/allwinner,sun50i-h6-iommu.yaml
index a8409db4a3e3..03176f68485b 100644
--- a/Documentation/devicetree/bindings/iommu/allwinner,sun50i-h6-iommu.yaml
+++ b/Documentation/devicetree/bindings/iommu/allwinner,sun50i-h6-iommu.yaml
@@ -42,7 +42,6 @@ required:
   - reg
   - interrupts
   - clocks
-  - resets
 
 additionalProperties: false
 

-- 
2.39.5


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
