Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DBEF4C28D13
	for <linux-phy@archiver.kernel.org>; Mon, 22 Aug 2022 06:57:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G5gS+GRRnzUFziSsH+6aI+UmjeNt4OkOUZCawIaLurE=; b=4KJZnbmAqDIt+h
	kTyqTtN2UnQgIjOjn09giDlF7vD4ecTVp5Iet4ABzdZq+HTrukvJNuKcaH5a+BLoXN8YieQdzzBg8
	LZY5Q9E9RHVN9GmwO5an6/XQtxzmJ0oR2T87dFzsdSnTTA1Gw8B0Wvph++kkV2TsnMQAFpU7msV+b
	f3muYvPeoIQwODBuefsQjtIvLX4DiSQCW49R/hfEqyb4mS2zWCxh/5TXUaI4M2BrlHQ8Ajn4RzwXA
	yKWZu4Je4ZptncRqrp9KJ/wLgWg68tHdiv+j1rCezGYmTzKTp6dBXI/KfG+jpVgXcITkAxwPuzwYN
	rLtttbqjb8P474Vw2hBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQ1Mw-005iE6-4b; Mon, 22 Aug 2022 06:57:06 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQ1Mr-005i3L-Ku
	for linux-phy@lists.infradead.org; Mon, 22 Aug 2022 06:57:05 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 27M6ugj8108618;
	Mon, 22 Aug 2022 01:56:42 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1661151402;
	bh=6nrn9UUOOitLwY0VAU5STzUaQs/rsZVxm4JV+dXcOpY=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=lAOn75WiJTCpkLXqDHSw+hRL6Llm4/bFJJlI3352cpJWSZktSzJRwULEU+Cd13xk9
	 oFmj1+ZlVJhLcrPzoFz5/AiYZPEZfeYUn/5xJygjSj4TsC9+Vk6kMBmcr5lnXQvqo+
	 aqEgk09EqOvmzLt5EoOIeqR8izCEtWl6NdlwnlCU=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 27M6ugrq028610
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 22 Aug 2022 01:56:42 -0500
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6; Mon, 22
 Aug 2022 01:56:41 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6 via
 Frontend Transport; Mon, 22 Aug 2022 01:56:41 -0500
Received: from uda0492258.dhcp.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 27M6uX37084154;
	Mon, 22 Aug 2022 01:56:38 -0500
From: Siddharth Vadapalli <s-vadapalli@ti.com>
To: <robh+dt@kernel.org>, <lee.jones@linaro.org>,
        <krzysztof.kozlowski@linaro.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <kishon@ti.com>, <vkoul@kernel.org>, <dan.carpenter@oracle.com>,
        <grygorii.strashko@ti.com>, <rogerq@kernel.org>
CC: <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <s-vadapalli@ti.com>
Subject: [PATCH v3 1/2] dt-bindings: phy: ti: phy-gmii-sel: Add bindings for J7200
Date: Mon, 22 Aug 2022 12:26:30 +0530
Message-ID: <20220822065631.27933-2-s-vadapalli@ti.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220822065631.27933-1-s-vadapalli@ti.com>
References: <20220822065631.27933-1-s-vadapalli@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220821_235701_860034_545C7DA8 
X-CRM114-Status: GOOD (  11.70  )
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
 .../mfd/ti,j721e-system-controller.yaml       |  6 ++++
 .../bindings/phy/ti,phy-gmii-sel.yaml         | 30 ++++++++++++++++++-
 2 files changed, 35 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mfd/ti,j721e-system-controller.yaml b/Documentation/devicetree/bindings/mfd/ti,j721e-system-controller.yaml
index 73cffc45e056..466724cb4157 100644
--- a/Documentation/devicetree/bindings/mfd/ti,j721e-system-controller.yaml
+++ b/Documentation/devicetree/bindings/mfd/ti,j721e-system-controller.yaml
@@ -54,6 +54,12 @@ patternProperties:
     description:
       Clock provider for TI EHRPWM nodes.
 
+  "phy@[0-9a-f]+$":
+    type: object
+    $ref: ../phy/ti,phy-gmii-sel.yaml
+    description:
+      This is the register to set phy mode through phy-gmii-sel driver.
+
 required:
   - compatible
   - reg
diff --git a/Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml b/Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml
index ff8a6d9eb153..0ffb97f1a77c 100644
--- a/Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml
+++ b/Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml
@@ -53,12 +53,24 @@ properties:
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
+    items:
+      minimum: 1
+      maximum: 4
+
 allOf:
   - if:
       properties:
@@ -73,6 +85,22 @@ allOf:
         '#phy-cells':
           const: 1
           description: CPSW port number (starting from 1)
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - ti,j7200-cpsw5g-phy-gmii-sel
+    then:
+      properties:
+        '#phy-cells':
+          const: 1
+          description: CPSW port number (starting from 1)
+        ti,qsgmii-main-ports:
+          maxItems: 1
+    else:
+      properties:
+        ti,qsgmii-main-ports: false
   - if:
       properties:
         compatible:
@@ -97,7 +125,7 @@ additionalProperties: false
 
 examples:
   - |
-    phy_gmii_sel: phy-gmii-sel@650 {
+    phy_gmii_sel: phy@650 {
         compatible = "ti,am3352-phy-gmii-sel";
         reg = <0x650 0x4>;
         #phy-cells = <2>;
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
