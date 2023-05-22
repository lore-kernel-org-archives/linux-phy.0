Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5473FC77B75
	for <linux-phy@archiver.kernel.org>; Mon, 22 May 2023 17:03:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tsbElfzBvjm3txSg7b+KLZGQynscfha3MEulcC8Kd9c=; b=AJHD1hvBoexFyM
	jKZZLxlsaWlRtNHvJRAG31MYXa5FjpnQD2lXm7oQJb7ljAw2TKco+xNGilXv7S4ytTYscpJKtTvnv
	XWqrAlQDXlyu7hvSpNlSs0pBt40KVAKazBR6lOOxpDvYPq57ky2IoLB+wNT4EqqVMoxUV67663pAi
	kK2VkgYToaQzlT5h38MC5SwbdIBmwXv06NwM4oXBflSOOxkBxmLY6p4pkdBuQubVdYaEuS974mbQ6
	f+GIM3fPbea1PPQysAnEgrxfxqvI7CcryOxNyO7jhJ2DzRMibfHhhxROdQOn3dZZfLy5Fa84kVJJ2
	XblYbKMEcjRFM3Pd+TOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q18wo-007ILQ-32;
	Mon, 22 May 2023 17:03:50 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q18wl-007IHg-1O;
	Mon, 22 May 2023 17:03:48 +0000
Received: from jupiter.universe (dyndsl-091-248-208-162.ewe-ip-backbone.de [91.248.208.162])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id CF3CE66058F2;
	Mon, 22 May 2023 18:03:42 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1684775023;
	bh=SnIuBsU5kpCH9yPr3h2kL9GaEGKLFpCi+TtA5q9biHA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=JL2LQsn+CU1CxsWwr7jgwSvPLUdmgznwYDN5Zp/80zTnPJGJmnZw4sVL2DocPjbFz
	 aG5XEF+hGuZ5F1EDF/AVr24l7zJNOOV6xCvh5zE7qoG11+e1vNX7wyzdoDj8asXmio
	 dQtf9ZDe8MgPmrDcP/ogudB26xig1RWRtJxpAkBSJLP9OBG718rcCc6DyMzXbtVerD
	 Ej0klxZIYkZTEtF8UMmTxEnMo2mBsJZi+pP7/a+NE8QUAPvJ+ZUml7L4Ycw4HJS2p1
	 UiDZzji7zBb1R30DOSdOWLBdBxgROZjOWQiVnBhHn7vQ9uPS1meLgd3l3ExPkDFlCJ
	 maXKcYPj9fppA==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 78F6B4805B8; Mon, 22 May 2023 19:03:40 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v3 1/7] dt-bindings: phy: rockchip,inno-usb2phy: add rk3588
Date: Mon, 22 May 2023 19:03:18 +0200
Message-Id: <20230522170324.61349-2-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230522170324.61349-1-sebastian.reichel@collabora.com>
References: <20230522170324.61349-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230522_100347_617264_84A86A85 
X-CRM114-Status: UNSURE (   9.49  )
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

Add compatible for the USB2 phy in the Rockchip RK3588 SoC.

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 .../bindings/phy/rockchip,inno-usb2phy.yaml   | 21 ++++++++++++++++---
 1 file changed, 18 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml b/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml
index 0d6b8c28be07..5254413137c6 100644
--- a/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml
+++ b/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml
@@ -20,6 +20,7 @@ properties:
       - rockchip,rk3366-usb2phy
       - rockchip,rk3399-usb2phy
       - rockchip,rk3568-usb2phy
+      - rockchip,rk3588-usb2phy
       - rockchip,rv1108-usb2phy
 
   reg:
@@ -56,6 +57,14 @@ properties:
     description: Muxed interrupt for both ports
     maxItems: 1
 
+  resets:
+    maxItems: 2
+
+  reset-names:
+    items:
+      - const: phy
+      - const: apb
+
   rockchip,usbgrf:
     $ref: /schemas/types.yaml#/definitions/phandle
     description:
@@ -120,15 +129,21 @@ required:
   - reg
   - clock-output-names
   - "#clock-cells"
-  - host-port
-  - otg-port
+
+anyOf:
+  - required:
+      - otg-port
+  - required:
+      - host-port
 
 allOf:
   - if:
       properties:
         compatible:
           contains:
-            const: rockchip,rk3568-usb2phy
+            enum:
+              - rockchip,rk3568-usb2phy
+              - rockchip,rk3588-usb2phy
 
     then:
       properties:
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
