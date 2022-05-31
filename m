Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4B51C433F5
	for <linux-phy@archiver.kernel.org>; Tue, 31 May 2022 11:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bEmFHsszp1qKSF9rmuP2XOFHIaLxaxILN791Ij9sy+8=; b=1K9ZbF18WPiCB0
	ZThNR1OnkQzu9eldfvmTdMtIxoDnHx5byxTeNj+9yWbmg5pacIqEI/BV4/CYNatOrGPe7KrB+HlWC
	L2t+82EPJmB/X1twCj7SWkF4Ig4A6w8yF876X3sRM1DAbSA0fm52Ph7u01KPK2fr3/SDoS0uPSL7f
	E1sO5zkklMZGBWQHMcbr02u9FhLQ0Pz2jom41QbNl1lOFBicwkqXLgoLp/FIiBNCvpuILXU1+Gy/k
	9poR9WZa1SjRah5SrzzelXrFI/ruXL31Y6xK3YFWBSArA82otFvHHCu1utWnpJ+rFKF89iwkKhzgl
	nKKO6tchok038C53IAcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvzoC-00ALZ1-6T; Tue, 31 May 2022 11:13:08 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvzo9-00ALYJ-Ty
	for linux-phy@lists.infradead.org; Tue, 31 May 2022 11:13:07 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 24VBD20H004194;
	Tue, 31 May 2022 06:13:02 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1653995582;
	bh=sk63Z4ufXimfVQy5b3IO3HJO0DUDoexen2snbThS2zg=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=xnSIQLnLrTGMgUr4ohI1l2c+g/Npx7zJ2oqsskvJ9RyT8s/HnKW9+AYaGBMR+/Aiz
	 gbXSTsgp6pMC3LIKFOLhJmEKNOENObxoiPiAZ962+3eDSuFvt50sZweryNzrLvCiE5
	 s1GF1FQ4iDPYkigmsySHca7Aywki32JAuQcLAknY=
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 24VBD217036632
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 31 May 2022 06:13:02 -0500
Received: from DLEE105.ent.ti.com (157.170.170.35) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14; Tue, 31
 May 2022 06:13:01 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14 via
 Frontend Transport; Tue, 31 May 2022 06:13:02 -0500
Received: from ula0492258.dal.design.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 24VBCka8045977;
	Tue, 31 May 2022 06:12:58 -0500
From: Siddharth Vadapalli <s-vadapalli@ti.com>
To: <robh+dt@kernel.org>, <lee.jones@linaro.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <kishon@ti.com>,
        <vkoul@kernel.org>, <dan.carpenter@oracle.com>,
        <grygorii.strashko@ti.com>, <rogerq@kernel.org>
CC: <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-phy@lists.infradead.org>,
        Siddharth Vadapalli <s-vadapalli@ti.com>
Subject: [PATCH 1/2] dt-bindings: phy: ti: phy-gmii-sel: Add bindings for J7200
Date: Tue, 31 May 2022 16:42:20 +0530
Message-ID: <20220531111221.22963-2-s-vadapalli@ti.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220531111221.22963-1-s-vadapalli@ti.com>
References: <20220531111221.22963-1-s-vadapalli@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220531_041306_088288_9423DC64 
X-CRM114-Status: GOOD (  11.95  )
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
 .../mfd/ti,j721e-system-controller.yaml       |  5 ++++
 .../bindings/phy/ti,phy-gmii-sel.yaml         | 24 ++++++++++++++++++-
 2 files changed, 28 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mfd/ti,j721e-system-controller.yaml b/Documentation/devicetree/bindings/mfd/ti,j721e-system-controller.yaml
index fa86691ebf16..e381ba62a513 100644
--- a/Documentation/devicetree/bindings/mfd/ti,j721e-system-controller.yaml
+++ b/Documentation/devicetree/bindings/mfd/ti,j721e-system-controller.yaml
@@ -48,6 +48,11 @@ patternProperties:
     description:
       This is the SERDES lane control mux.
 
+  "phy@[0-9a-f]+$":
+    type: object
+    description:
+      This is the register to set phy mode through phy-gmii-sel driver.
+
 required:
   - compatible
   - reg
diff --git a/Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml b/Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml
index ff8a6d9eb153..7427758451e7 100644
--- a/Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml
+++ b/Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml
@@ -53,12 +53,21 @@ properties:
       - ti,am43xx-phy-gmii-sel
       - ti,dm814-phy-gmii-sel
       - ti,am654-phy-gmii-sel
+      - ti,j7200-cpsw5g-phy-gmii-sel
 
   reg:
     maxItems: 1
 
   '#phy-cells': true
 
+  ti,enet-ctrl-qsgmii:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: |
+      Required only for QSGMII mode. Bitmask to select the port for
+      QSGMII main mode. Rest of the ports are selected as QSGMII_SUB
+      ports automatically. Any of the 4 CPSW5G ports can act as the
+      main port with the rest of them being the QSGMII_SUB ports.
+
 allOf:
   - if:
       properties:
@@ -73,6 +82,19 @@ allOf:
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
+        ti,enet-ctrl-qsgmii:
+          enum: [1, 2, 4, 8]
   - if:
       properties:
         compatible:
@@ -97,7 +119,7 @@ additionalProperties: false
 
 examples:
   - |
-    phy_gmii_sel: phy-gmii-sel@650 {
+    phy_gmii_sel: phy@650 {
         compatible = "ti,am3352-phy-gmii-sel";
         reg = <0x650 0x4>;
         #phy-cells = <2>;
-- 
2.36.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
