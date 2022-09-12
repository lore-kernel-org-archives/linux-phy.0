Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8340FECAAA1
	for <linux-phy@archiver.kernel.org>; Mon, 12 Sep 2022 08:57:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PlhdQdXRtoW95AqLgL9qjpKi1dwaTiVzI/Li01+7jGE=; b=b/eek5R6GVFy5u
	4mYwfuBpFdLv14ic3lORP7g2CZu/8Wc0o1Duh8HDrQ0+I0+PqOo1fcY/SUVnkWwHUUbtM0PxzgtwC
	Sn+Mzid5HHRnhKmIqhwUk0xNzBAf8XpylZOYeuDcN06FBCeYY50bD81RjqhAVH5WsY57I8zB5/u2A
	maYo6hOvGyX+1VcvVWv724g55+37LIyWaobPxjWdDBm2SARRUWdx+b4gyRyTuAlAgnRaL+xRbKrfC
	6JJrc4q6B932/Q0em8eT3GF1ECMYN/GIePSnxe6ucyyNBY53bPzkq3iBfBOGupn6HtS9XmUqjlKMe
	GGBea2BcSlyabLRTJ85g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXfGP-0082HE-Q6; Mon, 12 Sep 2022 08:57:57 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXfFh-0081rN-SK; Mon, 12 Sep 2022 08:57:19 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 28C8v4CM009441;
	Mon, 12 Sep 2022 03:57:04 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1662973024;
	bh=i6LveOgiJZ1X0nkjVcO6bCbjbMf2g4faEss3nMkVqUA=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=JoNyQQ8nbTOr2nZ+ziEn3fhm06Ca6BqMenmlh+mpFbW5UIT5dFXlVUPyznQlqJ321
	 s2AhzK7Kjrgrl3QYFVA5s8qboB7Bk8HmqXQhSLylq3+iE+nY3+/bUTFdPlwjK9z5eK
	 NoIRgPdnXl00iD8WLOuNv7Nb0wK1G/IfSQGgjmBE=
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 28C8v4pB004825
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 12 Sep 2022 03:57:04 -0500
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6; Mon, 12
 Sep 2022 03:57:04 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6 via
 Frontend Transport; Mon, 12 Sep 2022 03:57:04 -0500
Received: from uda0492258.dhcp.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 28C8up6w104303;
	Mon, 12 Sep 2022 03:57:00 -0500
From: Siddharth Vadapalli <s-vadapalli@ti.com>
To: <robh+dt@kernel.org>, <lee.jones@linaro.org>,
        <krzysztof.kozlowski@linaro.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <kishon@ti.com>, <vkoul@kernel.org>, <dan.carpenter@oracle.com>,
        <grygorii.strashko@ti.com>, <rogerq@kernel.org>
CC: <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-phy@lists.infradead.org>,
        <linux-arm-kernel@lists.infradead.org>, <s-vadapalli@ti.com>
Subject: [PATCH v5 2/3] dt-bindings: phy: ti: phy-gmii-sel: Add bindings for J7200
Date: Mon, 12 Sep 2022 14:26:49 +0530
Message-ID: <20220912085650.83263-3-s-vadapalli@ti.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220912085650.83263-1-s-vadapalli@ti.com>
References: <20220912085650.83263-1-s-vadapalli@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220912_015714_083736_49F23563 
X-CRM114-Status: GOOD (  10.08  )
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

TI's J7200 SoC supports additional PHY modes like QSGMII and SGMII
that are not supported on earlier SoCs. Add a compatible for it.

Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>
---
 .../mfd/ti,j721e-system-controller.yaml       |  6 +++++
 .../bindings/phy/ti,phy-gmii-sel.yaml         | 25 +++++++++++++++++++
 2 files changed, 31 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/ti,j721e-system-controller.yaml b/Documentation/devicetree/bindings/mfd/ti,j721e-system-controller.yaml
index 1aeac43cad92..873ee0c0973f 100644
--- a/Documentation/devicetree/bindings/mfd/ti,j721e-system-controller.yaml
+++ b/Documentation/devicetree/bindings/mfd/ti,j721e-system-controller.yaml
@@ -54,6 +54,12 @@ patternProperties:
     description:
       Clock provider for TI EHRPWM nodes.
 
+  "phy@[0-9a-f]+$":
+    type: object
+    $ref: /schemas/phy/ti,phy-gmii-sel.yaml#
+    description:
+      The phy node corresponding to the ethernet MAC.
+
 required:
   - compatible
   - reg
diff --git a/Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml b/Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml
index 016a37db1ea1..da7cac537e15 100644
--- a/Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml
+++ b/Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml
@@ -53,12 +53,25 @@ properties:
       - ti,am43xx-phy-gmii-sel
       - ti,dm814-phy-gmii-sel
       - ti,am654-phy-gmii-sel
+      - ti,j7200-cpsw5g-phy-gmii-sel
 
   reg:
     maxItems: 1
 
   '#phy-cells': true
 
+  ti,qsgmii-main-ports:
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    description: |
+      Required only for QSGMII mode. Array to select the port for
+      QSGMII main mode. Rest of the ports are selected as QSGMII_SUB
+      ports automatically. Any one of the 4 CPSW5G ports can act as the
+      main port with the rest of them being the QSGMII_SUB ports.
+    maxItems: 1
+    items:
+      minimum: 1
+      maximum: 4
+
 allOf:
   - if:
       properties:
@@ -73,6 +86,18 @@ allOf:
         '#phy-cells':
           const: 1
           description: CPSW port number (starting from 1)
+
+  - if:
+      not:
+        properties:
+          compatible:
+            contains:
+              enum:
+                - ti,j7200-cpsw5g-phy-gmii-sel
+    then:
+      properties:
+        ti,qsgmii-main-ports: false
+
   - if:
       properties:
         compatible:
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
