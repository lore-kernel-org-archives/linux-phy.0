Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AAFA8CA0FEC
	for <linux-phy@archiver.kernel.org>; Thu, 21 Aug 2025 19:54:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xwq2bqXjLjx9/1KE2FSTdrZL8HDfl1tYBGmpziyUzic=; b=JAXr0zfPNKsdz+
	g/xLwAgunya9V8J7ws4aUVMHLXguHwo4eczphSIRENQMEii2IR9HO8lXPTNKPpo2CTIPDGfmiT/el
	5Mdr5LdeqqQvNUNhxsmAf7KFRGAuggIr/8zySwl56mobthE+WXc2THZka4hInjPwU4iEWTOX6CZjX
	Ze5ccZYeYjAj+M4jRDlNmFA63w1lUG3w+ImzxbTazRJr46lPvfeH8z1FcR4HbkdGMAFLBbo7mGiBX
	yJigwh11AzdCTL7ETJAH2hdCY/9hJBnPKjiQW4Q5P7zUAXCCS2d1eDClY3hd51vkfa+8Ev+PUAalN
	V4I+QRfbHBpO5UOc2wCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upBMG-00000000Lrk-1vtR;
	Thu, 21 Aug 2025 19:54:00 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1up7OW-0000000HQWb-2rwK;
	Thu, 21 Aug 2025 15:40:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id CBC2EA584CC;
	Thu, 21 Aug 2025 15:40:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1E9BAC4AF0B;
	Thu, 21 Aug 2025 15:40:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755790803;
	bh=KhK3tFPXEaW8oRX7V89m4hRJe9gH2p2NAg0H4Auc1J0=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=TY1C7k6mAmNysKSRRxeYibJWfICSrik07eeIUlSOPDzLpLvUbrhByyFuL5BBsXLbJ
	 fw8l216o7DARUWuwsv5LzgMggLTFipK2/RXH8dFAzjA+jwExXE4RVGIwEQF8Rc/rqC
	 83i3XyiGEx86cZVrt5xswqXyvXpttJRrm6zCVN3unsGlq2UwBLMvxc6yYNDd9oHDAN
	 DFBp5sX/JcFmNhZbwN00l1Q8dDz3oRGM3+ix+kXnw48AqTPv9JJ5gbFCP6TgbXmdv2
	 iHo89eS5pZ2I7RYwTSEP3hPRVu17ByGv8eRoILr6+cRGSpKKX/QuPSA4KxmjyfewWL
	 OsNTZA7gSE7pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0FF9CCA0EEB;
	Thu, 21 Aug 2025 15:40:03 +0000 (UTC)
From: Sven Peter <sven@kernel.org>
Date: Thu, 21 Aug 2025 15:38:54 +0000
Subject: [PATCH RFC 02/22] dt-bindings: usb: Add Apple dwc3
MIME-Version: 1.0
Message-Id: <20250821-atcphy-6-17-v1-2-172beda182b8@kernel.org>
References: <20250821-atcphy-6-17-v1-0-172beda182b8@kernel.org>
In-Reply-To: <20250821-atcphy-6-17-v1-0-172beda182b8@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Felipe Balbi <balbi@kernel.org>, 
 Janne Grunau <j@jannau.net>, Alyssa Rosenzweig <alyssa@rosenzweig.io>, 
 Neal Gompa <neal@gompa.dev>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Thinh Nguyen <Thinh.Nguyen@synopsys.com>, 
 Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, asahi@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org, 
 Sven Peter <sven@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3081; i=sven@kernel.org;
 h=from:subject:message-id;
 bh=KhK3tFPXEaW8oRX7V89m4hRJe9gH2p2NAg0H4Auc1J0=;
 b=owGbwMvMwCHmIlirolUq95LxtFoSQ8Zy2wXG8elX/z7wf6pRNDWlUGz1Lavf3wXntPbXsL/Jt
 qvav1y3o5SFQYyDQVZMkWX7fnvTJw/fCC7ddOk9zBxWJpAhDFycAjCRBYUM/xMniTx1iDprul9L
 btaFe48znky+dG2yUJPMcmsRV2mLFUUM/+sbU98riQeZlR2oeVjyYaLWA86evHlV///c7r+50lZ
 BjAkA
X-Developer-Key: i=sven@kernel.org; a=openpgp;
 fpr=A1E3E34A2B3C820DBC4955E5993B08092F131F93
X-Endpoint-Received: by B4 Relay for sven@kernel.org/default with
 auth_id=407
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250821_084004_900423_55A7AB75 
X-CRM114-Status: GOOD (  12.55  )
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

Apple Silicon uses Synopsys DesignWare dwc3 based USB controllers for
their Type-C ports.

Signed-off-by: Sven Peter <sven@kernel.org>
---
 .../devicetree/bindings/usb/apple,dwc3.yaml        | 82 ++++++++++++++++++++++
 MAINTAINERS                                        |  1 +
 2 files changed, 83 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/apple,dwc3.yaml b/Documentation/devicetree/bindings/usb/apple,dwc3.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..dfea726a6c053ad0c8f3d973a95b45bbf1724234
--- /dev/null
+++ b/Documentation/devicetree/bindings/usb/apple,dwc3.yaml
@@ -0,0 +1,82 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/usb/apple,dwc3.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Apple Silicon DWC3 USB controller
+
+maintainers:
+  - Sven Peter <sven@svenpeter.dev>
+
+description:
+  Apple Silicon SoCs use a Synopsys DesignWare DWC3 based controller for each of
+  their Type-C ports.
+
+  The common content of the node is defined in snps,dwc3.yaml.
+
+allOf:
+  - $ref: snps,dwc3.yaml#
+
+select:
+  properties:
+    compatible:
+      contains:
+        const: apple,t8103-dwc3
+  required:
+    - compatible
+
+properties:
+  compatible:
+    oneOf:
+      - items:
+        - enum:
+            - apple,t6000-dwc3
+            - apple,t6020-dwc3
+            - apple,t8112-dwc3
+        - const: apple,t8103-dwc3
+        - const: snps,dwc3
+      - items:
+        - const: apple,t8103-dwc3
+        - const: snps,dwc3
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  iommus:
+    maxItems: 2
+
+  resets:
+    maxItems: 1
+
+  power-domains:
+    maxItems: 1
+
+unevaluatedProperties: false
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - iommus
+  - resets
+  - power-domains
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/apple-aic.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    usb@82280000 {
+      compatible = "apple,t8103-dwc3", "snps,dwc3";
+      reg = <0x82280000 0x10000>;
+      interrupts = <AIC_IRQ 777 IRQ_TYPE_LEVEL_HIGH>;
+      iommus = <&dwc3_0_dart_0 0>, <&dwc3_0_dart_1 1>;
+
+      dr_mode = "otg";
+      usb-role-switch;
+      role-switch-default-mode = "host";
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index fe168477caa45799dfe07de2f54de6d6a1ce0615..0e085cb0762f765958d67be61ae0d3d773503431 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2399,6 +2399,7 @@ F:	Documentation/devicetree/bindings/power/reset/apple,smc-reboot.yaml
 F:	Documentation/devicetree/bindings/pwm/apple,s5l-fpwm.yaml
 F:	Documentation/devicetree/bindings/spi/apple,spi.yaml
 F:	Documentation/devicetree/bindings/spmi/apple,spmi.yaml
+F:	Documentation/devicetree/bindings/usb/apple,dwc3.yaml
 F:	Documentation/devicetree/bindings/watchdog/apple,wdt.yaml
 F:	arch/arm64/boot/dts/apple/
 F:	drivers/bluetooth/hci_bcm4377.c

-- 
2.34.1



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
