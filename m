Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51886C76188
	for <linux-phy@archiver.kernel.org>; Wed,  5 Apr 2023 11:21:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DSg4qxAZIjsLkkgKB5QvQE9tBaKPOmz1pFJDOGBmXN0=; b=3J4h6DjbUA1P/1
	lepcc0FsDW/ZZkQk1yyFppTh7bGRUpyY2VHVKBTjqLv7Vy1YyqppaoNOtWYGKlFyiyBbuCDNs4wRp
	Jo2AKblXNmtj3p7KSa51/gL6erl8miLg6D3ed1PCoLSWdByHFgVscLMc5bi67IwTY3uzEsjJNyysb
	22er1o4WKrXnCt/FqDDRrtDwt9bXEHZhG1UsxOn0gNkLq0TJ1TVR1KkM6lSctcM+oZ4DWiWyecdGQ
	f+Yt7BdsaVEgrfBMNXZ/IjLdWql2crd96Dwg9I9WSFeCNHQCN2bIVv+N4zxSl2If3M01Cr25wcaLR
	At/jltpmyIqEVQUf2aug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pk1Cx-004FXe-36;
	Wed, 05 Apr 2023 11:21:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pk1Cv-004FWV-2V
	for linux-phy@lists.infradead.org;
	Wed, 05 Apr 2023 11:21:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <jzi@pengutronix.de>)
	id 1pk1Ce-0004S4-00; Wed, 05 Apr 2023 13:21:24 +0200
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <jzi@pengutronix.de>)
	id 1pk1Cc-0098SP-HB; Wed, 05 Apr 2023 13:21:22 +0200
Received: from jzi by dude03.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <jzi@pengutronix.de>)
	id 1pk1Cb-005Gtp-Ab; Wed, 05 Apr 2023 13:21:21 +0200
From: Johannes Zink <j.zink@pengutronix.de>
To: vkoul@kernel.org,
	kishon@kernel.org,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	festevam@gmail.com,
	linux-imx@nxp.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	jun.li@nxp.com,
	haibo.chen@nxp.com,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: j.zink@pengutronix.de
Subject: [PATCH 1/2] dt-bindings: phy: imx8mq-usb: add phy tuning properties
Date: Wed,  5 Apr 2023 13:21:17 +0200
Message-Id: <20230405112118.1256151-2-j.zink@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230405112118.1256151-1-j.zink@pengutronix.de>
References: <20230405112118.1256151-1-j.zink@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: jzi@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230405_042141_813848_F66EBC24 
X-CRM114-Status: UNSURE (   7.49  )
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

Add optional properties for tuning of usb phy.

Signed-off-by: Johannes Zink <j.zink@pengutronix.de>
---
 .../bindings/phy/fsl,imx8mq-usb-phy.yaml      | 40 +++++++++++++++++++
 1 file changed, 40 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml b/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml
index e6f9f5540cc3..f452a41b4f32 100644
--- a/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml
@@ -35,6 +35,46 @@ properties:
     description:
       A phandle to the regulator for USB VBUS.
 
+  fsl,phy-tx-vref-tune:
+    description:
+      HS DC Voltage level adjustment
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]
+
+  fsl,phy-tx-rise-tune:
+    description:
+      HS Transmitter Rise/Fall Time Adjustment
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [0, 1, 2, 3]
+
+  fsl,phy-tx-preemp-amp-tune:
+    description:
+      HS Transmitter Pre-Emphasis Current Control
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [0, 1, 2, 3]
+
+  fsl,phy-tx-vboost-level:
+    description:
+      TX Voltage Boost Level
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [0, 2, 3]
+
+  fsl,phy-comp-dis-tune:
+    description:
+      Disconnect Threshold Adjustment
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [0, 1, 2, 3, 4, 5, 6, 7]
+
+  fsl,phy-pcs-tx-deemph-3p5db:
+    description:
+      TX De-Emphasis at 3.5 dB
+    $ref: /schemas/types.yaml#/definitions/uint32
+
+  fsl,phy-pcs-tx-swing-full:
+    description:
+      TX Amplitude
+    $ref: /schemas/types.yaml#/definitions/uint32
+
 required:
   - compatible
   - reg
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
