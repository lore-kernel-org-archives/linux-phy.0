Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6BF38C433FE
	for <linux-phy@archiver.kernel.org>; Wed, 26 Oct 2022 07:46:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uazkhHq2q1Qq7V1d4IFZ5zLmJW4e1gQ3UALFIZ2AFME=; b=V5ayv9n3g7YHvZ
	JggwZnqsOQcVwqNf4hHZKJR4Qzq7CIv5BHBuqBd+DEWMxJBe1hxZCx51xycYULSfwrbbP6lXh3Knn
	LMORC8orz06toVmbS+57DkU81ltu68P5fIC+LmdwMSrzE4bEX80TwtMwA/ILKF0MNBC4XOdhHt0KB
	9E2CqiRsw7eW9n09efdPRqgpa/QGJHKxaPBgYk5RqqmzZek5rwXqR4ooZjS0sF2zfsGskEXsIQBVt
	CRf69l+Ts+EA1mRWe6oauLosaulwRGZxrxaCLQA7QT/d98qxeZQdc/V730hy4PRsKeABron6TtlwE
	ap/LXIF4Y/+L2U5ee7uA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onb79-008QkW-Rr; Wed, 26 Oct 2022 07:46:15 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onb6h-008Qcc-3v; Wed, 26 Oct 2022 07:45:48 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 29Q7jf99118067;
	Wed, 26 Oct 2022 02:45:41 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1666770341;
	bh=8VumcuPdjK8HEnGtcYXiyYQygdvx0q+7alLz9hjhoVI=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=v2bkzsaYnhlgDH4i6nnW8m/2vfR/QyORsclsz9id8vxW2b+PQPY4/Ii2iWrpm1GJr
	 f4f6bnArYURXi4qk/q05/w80RHYIRsSsfWiJBWZCARGwrPv7oAAgadl7wFD/LR+mkN
	 8/o8nHEULmLW0NWanIbD3HVCAr34aXRh1awgCOcw=
Received: from DLEE106.ent.ti.com (dlee106.ent.ti.com [157.170.170.36])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 29Q7jfsk084012
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 26 Oct 2022 02:45:41 -0500
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6; Wed, 26
 Oct 2022 02:45:41 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6 via
 Frontend Transport; Wed, 26 Oct 2022 02:45:41 -0500
Received: from uda0492258.dhcp.ti.com (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 29Q7jXFk005631;
	Wed, 26 Oct 2022 02:45:37 -0500
From: Siddharth Vadapalli <s-vadapalli@ti.com>
To: <robh+dt@kernel.org>, <lee@kernel.org>, <krzysztof.kozlowski@linaro.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <kishon@kernel.org>,
        <vkoul@kernel.org>, <dan.carpenter@oracle.com>, <rogerq@kernel.org>
CC: <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-phy@lists.infradead.org>,
        <linux-arm-kernel@lists.infradead.org>, <s-vadapalli@ti.com>
Subject: [PATCH v3 1/3] dt-bindings: phy: ti: phy-gmii-sel: Add bindings for J721e
Date: Wed, 26 Oct 2022 13:15:30 +0530
Message-ID: <20221026074532.109220-2-s-vadapalli@ti.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221026074532.109220-1-s-vadapalli@ti.com>
References: <20221026074532.109220-1-s-vadapalli@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221026_004547_298636_32BFFAC8 
X-CRM114-Status: GOOD (  13.96  )
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

TI's J721e SoC supports additional PHY modes like QSGMII and SGMII
that are not supported on earlier SoCs. Add a compatible for it.

Extend ti,qsgmii-main-ports property to support selection of upto
two main ports at once across the two QSGMII interfaces.

Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>
---
 .../bindings/phy/ti,phy-gmii-sel.yaml         | 48 ++++++++++++++++---
 1 file changed, 42 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml b/Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml
index da7cac537e15..3a6d686383cf 100644
--- a/Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml
+++ b/Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml
@@ -54,6 +54,7 @@ properties:
       - ti,dm814-phy-gmii-sel
       - ti,am654-phy-gmii-sel
       - ti,j7200-cpsw5g-phy-gmii-sel
+      - ti,j721e-cpsw9g-phy-gmii-sel
 
   reg:
     maxItems: 1
@@ -63,14 +64,17 @@ properties:
   ti,qsgmii-main-ports:
     $ref: /schemas/types.yaml#/definitions/uint32-array
     description: |
-      Required only for QSGMII mode. Array to select the port for
-      QSGMII main mode. Rest of the ports are selected as QSGMII_SUB
-      ports automatically. Any one of the 4 CPSW5G ports can act as the
-      main port with the rest of them being the QSGMII_SUB ports.
-    maxItems: 1
+      Required only for QSGMII mode. Array to select the port/s for QSGMII
+      main mode. The size of the array corresponds to the number of QSGMII
+      interfaces and thus, the number of distinct QSGMII main ports,
+      supported by the device. If the device supports two QSGMII interfaces
+      but only one QSGMII interface is desired, repeat the QSGMII main port
+      value corresponding to the QSGMII interface in the array.
+    minItems: 1
+    maxItems: 2
     items:
       minimum: 1
-      maximum: 4
+      maximum: 8
 
 allOf:
   - if:
@@ -81,12 +85,43 @@ allOf:
               - ti,dra7xx-phy-gmii-sel
               - ti,dm814-phy-gmii-sel
               - ti,am654-phy-gmii-sel
+              - ti,j7200-cpsw5g-phy-gmii-sel
+              - ti,j721e-cpsw9g-phy-gmii-sel
     then:
       properties:
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
+        ti,qsgmii-main-ports:
+          maxItems: 1
+          items:
+            minimum: 1
+            maximum: 4
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - ti,j721e-cpsw9g-phy-gmii-sel
+    then:
+      properties:
+        ti,qsgmii-main-ports:
+          minItems: 2
+          maxItems: 2
+          items:
+            minimum: 1
+            maximum: 8
+
   - if:
       not:
         properties:
@@ -94,6 +129,7 @@ allOf:
             contains:
               enum:
                 - ti,j7200-cpsw5g-phy-gmii-sel
+                - ti,j721e-cpsw9g-phy-gmii-sel
     then:
       properties:
         ti,qsgmii-main-ports: false
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
