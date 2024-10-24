Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 927D7CE8E99
	for <linux-phy@archiver.kernel.org>; Thu, 24 Oct 2024 17:21:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XIQuOX8sWYNiyDRDUwxUPmh7zrmzee3QPQ0KSUHge+s=; b=xLmf8JFuImGUia
	FsHVh8CF1LvC5ndQKtB5W4h8KlMtoaylF2hoC2Dch32+g52uO5BS2l7ozs0HW+VZu2hz1YGsxmTmc
	m9eo2n20QxehWn/txpLrPCOV6Ws0xDXy8tQ+amQWOE23+/4vBHk5+h0R17GyEIlmrAExStz3MVJte
	aCTIS50JNx7NEKzSbGoWTl25uiNwC95+V3cAHNsopjj8wCjZWy6tiym8GAXSQiJNXK9FXHavALmTF
	lJfJUWx40GPdJnXF8/Pcn5lmVI2+AEk8kNnrWRq3qNu+csgB7HTQ3IrfOVWteAifAKbWvtnUIXoFZ
	yUgvFz1re6qQLzEAkiOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t41WQ-00000001G1Z-0mFQ;
	Thu, 24 Oct 2024 17:21:18 +0000
Received: from thales.epochal.quest ([2607:5300:205:200::3a30])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t41LI-00000001DnN-0VKE;
	Thu, 24 Oct 2024 17:09:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=epochal.quest;
	s=default; t=1729789783;
	bh=LIXJN7WyqZbUIo6zFt/nMh6Am1vcombr30b63lmOUnw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=jpK+LRwAyINXIUY2QUYqrQYDafODoy+OCx/WIRluz3+tup0nE0CF9Vavkfw+vt6AH
	 dsEFQB1U0j7su8mzUmoj2G9otG40x41feD/OkfJwR1J6y7B9PPdY/zGxFaAKDCIrp2
	 w8DCkw7P8fKCBcx512aZvLtJuPL0gT97cXESWCBOw56LuDaxMpU4dQipwgjP2tKq7o
	 uPQTnoQUdPLdm9nfnMscbLsGl7bScPLf2Rei4En/Iu/VVGTFaZP386i1pTBZzqnTDA
	 cilvq2WgrzIMe3Fa9tS5lEO9a49NHDtahB5aBG/1jKjXqKC5MsHb5rDH98JHBUc2/G
	 kvA0Fc+KlyKOw==
X-Virus-Scanned: by epochal.quest
From: Cody Eksal <masterr3c0rd@epochal.quest>
To: linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-usb@vger.kernel.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Maxime Ripard <mripard@kernel.org>
Cc: Cody Eksal <masterr3c0rd@epochal.quest>,
	Andre Przywara <andre.przywara@arm.com>,
	Parthiban <parthiban@linumiz.com>,
	Yangtao Li <frank@allwinnertech.com>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Vinod Koul <vkoul@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Thierry Reding <treding@nvidia.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Yangtao Li <tiny.windzz@gmail.com>,
	Viresh Kumar <vireshk@kernel.org>,
	Nishanth Menon <nm@ti.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>
Subject: [PATCH 05/13] dt-bindings: usb: sunxi-musb: Add A100 compatible string
Date: Thu, 24 Oct 2024 14:05:23 -0300
Message-ID: <20241024170540.2721307-6-masterr3c0rd@epochal.quest>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241024170540.2721307-1-masterr3c0rd@epochal.quest>
References: <20241024170540.2721307-1-masterr3c0rd@epochal.quest>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241024_100948_354916_DA9C9001 
X-CRM114-Status: UNSURE (   7.85  )
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

The A100 MUSB peripheral has 10 endpoints, and thus is compatible with
the A33 version.

Signed-off-by: Cody Eksal <masterr3c0rd@epochal.quest>
---
 .../devicetree/bindings/usb/allwinner,sun4i-a10-musb.yaml        | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/usb/allwinner,sun4i-a10-musb.yaml b/Documentation/devicetree/bindings/usb/allwinner,sun4i-a10-musb.yaml
index f972ce976e86..d4993336a29b 100644
--- a/Documentation/devicetree/bindings/usb/allwinner,sun4i-a10-musb.yaml
+++ b/Documentation/devicetree/bindings/usb/allwinner,sun4i-a10-musb.yaml
@@ -24,6 +24,7 @@ properties:
               - allwinner,sun8i-a83t-musb
               - allwinner,sun20i-d1-musb
               - allwinner,sun50i-h6-musb
+              - allwinner,sun50i-a100-musb
           - const: allwinner,sun8i-a33-musb
       - items:
           - const: allwinner,sun50i-h616-musb
-- 
2.47.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
