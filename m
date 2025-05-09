Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2932C3ABC5
	for <linux-phy@archiver.kernel.org>; Fri,  9 May 2025 00:48:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+2XgoG1H78u8yQ+zye/izuGevDaq+Vg8e4VhjnbERks=; b=TQ7n9F8FhJFG2C
	zdLOn/eyR+ttkkRh3Ya3zkQP3l6Mrb/OGJqqppnZnwI+soYAhc8s4+JzeGj16FQWHKmlrqulUjn4I
	wolKBB4myTDoPU4Ydc67AM9+uEcX6UglEdZV0bxf4EgB8tsT4wBv789KK6gly/W4Ktp8rrWDNrNv7
	I7lcaMmKGWUh7TuM7P1Kp7PoYa2U5/Ng/AhLUFoXKyyJABMFISbOF4F4KuXFW3ZqzF4my9nvE97YG
	LpmlZF6NFChr51xZHrVFJQgNpV0E7kTcLbdWxFebed+cYQpfnlh9MYWYxDyfQigJ5fRILnGB9ej0R
	3zFx12ZgARsdYdmUAeqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDBuh-0000000288H-2ipQ;
	Fri, 09 May 2025 00:48:31 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDBoz-000000026lV-1O0K;
	Fri, 09 May 2025 00:42:39 +0000
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 19AE12594D;
	Fri,  9 May 2025 02:42:36 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AY5mId9J0Whh; Fri,  9 May 2025 02:42:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1746751355; bh=5F0Ebypa56dkdq3mFfmHvCOR5W4vuwc/3YFGnZ8IL5Q=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=jjyc89RXOeTWRB0jsoaTS6cfMTSfCBdbU0kicXZBpnc37RyDOGmH8CqGsYrZ1lFsp
	 hGh2HyiPEtGt98DmRJX0DYEx6pNbICSPnYh7YTwjxQde3nlviarjCuDUuRpRfV2Z1M
	 soWc/kKfu2pfaH3U6vc++VmNdI/QVB5OG+XRN2pQtv5itGufk8UJ0iKpHYYSfmA80g
	 +rRYBSi4giEJsd45AEwEYz5SAz9p4PGDZCzmFnb+JdxL3h+06uF0lY17lUq3zTQfa3
	 MC5/dPAR3fYOnRe+d3JuykNoImMK6NU7TIl848iz9w4TvOKJDxOFXP59hAnAMJTJ0N
	 SJn2Uwlr0LyoQ==
From: Yao Zi <ziyao@disroot.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Yao Zi <ziyao@disroot.org>,
	Frank Wang <frank.wang@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Shresth Prasad <shresthprasad7@gmail.com>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	Jonas Karlman <jonas@kwiboo.se>
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v2 2/5] dt-bindings: phy: rockchip: naneng-combphy: Add RK3528 variant
Date: Fri,  9 May 2025 00:41:19 +0000
Message-ID: <20250509004121.36058-4-ziyao@disroot.org>
In-Reply-To: <20250509004121.36058-2-ziyao@disroot.org>
References: <20250509004121.36058-2-ziyao@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250508_174237_497184_2C54C90B 
X-CRM114-Status: UNSURE (   8.10  )
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

Rockchip RK3528 ships one naneng-combphy which operates in either PCIe
or USB 3 mode. Document its compatible string.

Signed-off-by: Yao Zi <ziyao@disroot.org>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Reviewed-by: Heiko Stuebner <heiko@sntech.de>
---
 .../devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml b/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
index 888e6b2aac5a..bd064754e537 100644
--- a/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
+++ b/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
@@ -12,6 +12,7 @@ maintainers:
 properties:
   compatible:
     enum:
+      - rockchip,rk3528-naneng-combphy
       - rockchip,rk3562-naneng-combphy
       - rockchip,rk3568-naneng-combphy
       - rockchip,rk3576-naneng-combphy
@@ -102,7 +103,9 @@ allOf:
       properties:
         compatible:
           contains:
-            const: rockchip,rk3588-naneng-combphy
+            enum:
+             - rockchip,rk3528-naneng-combphy
+             - rockchip,rk3588-naneng-combphy
     then:
       properties:
         resets:
-- 
2.49.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
