Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01F6CE68956
	for <linux-phy@archiver.kernel.org>; Thu, 31 Oct 2024 07:05:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=69sL7JR5b3dNK/tsMayVnma0n0GVwNmwO7xEpU9HRFo=; b=TA+NEFFmsiiLM1
	Fg/e/283JWMLefan/7fo7MFoP2yoDSD3a2LmeNOprhYzxDabehrCatngnGxONnTk5U6kabm9gYEL0
	YObhugYLq/oZzvJzVmxJLj5qNADZO82+ii3x7mY2I8ldSXoXcwNNiv3JiPfjz3Vmi/JB47YsHfiY1
	8RXZLCpe4S/1NiahSblmQGuOD4hUhV9PkYIlJFBLHC9zvJVaLELZqXZzCICwjEQyaW7QVKM0xlWr0
	JP/XbxQkvy+mP0sypV7LbRvEnYoYVok+FaO8Z4UFk/PV+9OSdnsMrFqz+tUFlZBMmUlemGny5YtTv
	3EoAC+EdP7WAw2/oFRcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t6PFA-00000002l3R-14bn;
	Thu, 31 Oct 2024 07:05:20 +0000
Received: from thales.epochal.quest ([51.222.15.28])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t6PDK-00000002kSK-1I45;
	Thu, 31 Oct 2024 07:03:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=epochal.quest;
	s=default; t=1730358202;
	bh=Os/2HAMdT7ukejERWbP8Yp9xeT6KhRyx6c3PHQ0aWEI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=gFcok4reqrQOlsc4g8NJc8TQjsUCpiSjgreTa+ZqAuh+0YrcGbuXQKhT3igIykUz0
	 Eyaa7RaLFbO0d3M+cyLw0koMvJB65WLf7zAAvvn9na/OckpChpJ+yOT5jPyZtL81V3
	 6QCSsmeaxE3NGWGBTWEFz58w0JZ4oA8D/I6FVgL8fUuCDC7WuCwq2NNj1lQVcQWTa1
	 B7GD6TnS7r9rR1d0QZpjI+WHNZ9zqPDWo/lXTdQqqNUpsRZZnu5R3vRhAEPt8PceTi
	 zwPr9MSiYwBDoKZcXhm2geD6AYvXk67+k6b48fNrlTmFnRMgziER6z8+Q6qFzwpae8
	 UtXapdSmZABlA==
X-Virus-Scanned: by epochal.quest
From: Cody Eksal <masterr3c0rd@epochal.quest>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Maxime Ripard <mripard@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Nishanth Menon <nm@ti.com>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Stephen Boyd <sboyd@kernel.org>,
	Viresh Kumar <vireshk@kernel.org>,
	Viresh Kumar <viresh.kumar@linaro.org>,
	Yangtao Li <tiny.windzz@gmail.com>,
	Parthiban <parthiban@linumiz.com>,
	Andre Przywara <andre.przywara@arm.com>,
	Cody Eksal <masterr3c0rd@epochal.quest>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 03/13] dt-bindings: phy: sun50i-a64: add a100 compatible
Date: Thu, 31 Oct 2024 04:02:16 -0300
Message-ID: <20241031070232.1793078-4-masterr3c0rd@epochal.quest>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241031070232.1793078-1-masterr3c0rd@epochal.quest>
References: <20241031070232.1793078-1-masterr3c0rd@epochal.quest>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241031_000326_473148_4837102A 
X-CRM114-Status: UNSURE (   9.48  )
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

The USB PHY found in the A100 is similar to that found in the D1. Add a
compatible for the A100.

Signed-off-by: Cody Eksal <masterr3c0rd@epochal.quest>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
---
Changes in V2:
 - Update binding to allow using the D1 as a compatible.

 .../bindings/phy/allwinner,sun50i-a64-usb-phy.yaml     | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/allwinner,sun50i-a64-usb-phy.yaml b/Documentation/devicetree/bindings/phy/allwinner,sun50i-a64-usb-phy.yaml
index f557feca9763..21209126ed00 100644
--- a/Documentation/devicetree/bindings/phy/allwinner,sun50i-a64-usb-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/allwinner,sun50i-a64-usb-phy.yaml
@@ -15,9 +15,13 @@ properties:
     const: 1
 
   compatible:
-    enum:
-      - allwinner,sun20i-d1-usb-phy
-      - allwinner,sun50i-a64-usb-phy
+    oneOf:
+      - enum:
+          - allwinner,sun20i-d1-usb-phy
+          - allwinner,sun50i-a64-usb-phy
+      - items:
+          - const: allwinner,sun50i-a100-usb-phy
+          - const: allwinner,sun20i-d1-usb-phy
 
   reg:
     items:
-- 
2.47.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
