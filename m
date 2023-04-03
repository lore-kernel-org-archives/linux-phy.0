Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09569C76188
	for <linux-phy@archiver.kernel.org>; Mon,  3 Apr 2023 20:23:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uL+sQqWbGCMs5wk+j8OJOs+/IFV68Z5mr4Myw/doqwI=; b=mpXTfizjCuCl66
	WHnIV4ce/x5ZtYQhobg1WShCrrNAAj6m6u/r5do7amOGJfI4i2wPeftdqwyt59R5MRJW5f+V0tdzd
	7yvylyD61Jfo8X4fvkWDOKzlmyK0wJU0djtZ9qtURyPpVjATyeRF0XF38E2tpVmfeOMdF+ftoWZaw
	7bfbv1cHFSW5F+wVXUXrs/2rT94BjTdvID+Z1wPcptMIm4Vbg5umQdTeCpWoN4qkeiEUBhMkjFcy7
	K8aDYpHhuLn50KxP8GahW/X5hmoOWz4C3/c4LfXhIuMz6hldtz73oSgGcgSvb5L2HSDfYy+/VwiNw
	73C6OBbOpMb4vVztQBYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjQhy-00Gaod-2C;
	Mon, 03 Apr 2023 20:23:18 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjQht-00GalP-2d;
	Mon, 03 Apr 2023 20:23:15 +0000
Received: from jupiter.universe (dyndsl-091-248-212-192.ewe-ip-backbone.de [91.248.212.192])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id BB7496603149;
	Mon,  3 Apr 2023 21:23:11 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1680553391;
	bh=IanGuFMtYNipnpczUMLMr5LoVeF2LYQjoKAV5cNfhuo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=WUpvjl1ss2oluxK5zvxqtZpfvXkEAtId7rxHtQ5Vf/O51UwIpp5e0+LzHiHPKlBHU
	 tpHYfih9d9ynIUxarUGlH7OSEj/1iRV7B2fmkURzOFR9yfGT3jdQrtrjWwpnK+RuIQ
	 OSqreK1g7xMIWucaXq9iiI3U5xGr4cgUkRHpjPa+uINLfP36TsKyufjoK7/t3M0iVz
	 LrEfRH2w6KlUx7VUKT3igeqv3pv9nNAuaePbyL4RGbUWBN2ne650oiptfehXWeN0hd
	 /kNFBkpWK/GHsfzcGiVxee5xTQIC6s0TXer8eAoZI2ipJp6uq2B2XV8hXzYgFQNALZ
	 1NJU78lhx6Yyw==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 0D3FE4807E3; Mon,  3 Apr 2023 22:23:09 +0200 (CEST)
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
	kernel@collabora.com
Subject: [PATCHv2 2/7] dt-bindings: phy: rockchip,inno-usb2phy: add rk3588
Date: Mon,  3 Apr 2023 22:23:02 +0200
Message-Id: <20230403202307.120562-3-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230403202307.120562-1-sebastian.reichel@collabora.com>
References: <20230403202307.120562-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230403_132313_982996_180DC1C9 
X-CRM114-Status: UNSURE (   9.62  )
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
