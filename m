Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7CAACC77B7C
	for <linux-phy@archiver.kernel.org>; Thu, 26 Jun 2025 02:53:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x/E0rcmpj25cFoeOx7EsgsMY8jTmHY4Bsx/MkQiuwS0=; b=cu2BxvBdHTZCl7
	MvsPN3hcKNRe4DnI37/OVoYvdLEYJTNzkf5XiO9WTpevbRnqKh8iIWrf3Ws0oeIC49kDytX45SmVg
	tc1TlciU+7W4WKZb0qSBxD7eaOhz++l75BRGLRpDrBwPRg4prEETLKpvGN6gkLE0X7guMhPIfSuSR
	15B8v06oGr4+4mMQsCnBZNUF+nw+KtyHiCWTzBj+AvMCgvLDEpKqOYHDoaTFBmM7mJpTnUPXwaokc
	BKRA5WNjrsoXpNWHqK+ssryv+M8oiNBGtQWw/2rTxCEJbo1Rlw7zxEpBA8eYDRyXe090+nKSh4/DC
	XLFS415ouISiwomSfotQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUck2-0000000AUXg-0g8O;
	Thu, 26 Jun 2025 02:53:34 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUcUe-0000000ASUP-0V4m
	for linux-phy@lists.infradead.org;
	Thu, 26 Jun 2025 02:37:41 +0000
Received: from epcas5p2.samsung.com (unknown [182.195.41.40])
	by mailout1.samsung.com (KnoxPortal) with ESMTP id 20250626023738epoutp015fd4f291f1ac2034c9bb79073904338d~MdzzUlqqt0958309583epoutp01Q
	for <linux-phy@lists.infradead.org>; Thu, 26 Jun 2025 02:37:38 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com 20250626023738epoutp015fd4f291f1ac2034c9bb79073904338d~MdzzUlqqt0958309583epoutp01Q
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1750905458;
	bh=GpGKFLRj3xJyZP39aLIHsF6XUTrUyDMCZLKHf9N0NXs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=NQI2GrfH+ugdo2+SQjb4Xv9WFFbOOCF6WC8fiUZdKoUA+bESN5NMMe8xyxLmjw5KW
	 fH8W1gWNFKcJIAkkQBkzUz0TmihufnPjmd+8iV/miE402XAHuzodzVHprgCNxE6se0
	 GcY363reFu4YpLudcf/cVEVG/DVo96n5cLwRaaf0=
Received: from epsnrtp03.localdomain (unknown [182.195.42.155]) by
	epcas5p1.samsung.com (KnoxPortal) with ESMTPS id
	20250626023737epcas5p15fd06f0fa7ae9bf46ed8b50e2fa87799~MdzyjXME42161521615epcas5p1I;
	Thu, 26 Jun 2025 02:37:37 +0000 (GMT)
Received: from epcas5p4.samsung.com (unknown [182.195.38.179]) by
	epsnrtp03.localdomain (Postfix) with ESMTP id 4bSNBl2WwVz3hhT7; Thu, 26 Jun
	2025 02:37:35 +0000 (GMT)
Received: from epsmtip2.samsung.com (unknown [182.195.34.31]) by
	epcas5p1.samsung.com (KnoxPortal) with ESMTPA id
	20250625165315epcas5p19f081c8a0e2e7dc87698577cc2d460ca~MV1kUqxpO1882618826epcas5p1Y;
	Wed, 25 Jun 2025 16:53:15 +0000 (GMT)
Received: from cheetah.samsungds.net (unknown [107.109.115.53]) by
	epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
	20250625165312epsmtip2751afed46e11b808e69c2a78a34ac3c0~MV1hjobbZ1750917509epsmtip2T;
	Wed, 25 Jun 2025 16:53:12 +0000 (GMT)
From: Shradha Todi <shradha.t@samsung.com>
To: linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-fsd@tesla.com
Cc: manivannan.sadhasivam@linaro.org, lpieralisi@kernel.org, kw@linux.com,
	robh@kernel.org, bhelgaas@google.com, jingoohan1@gmail.com,
	krzk+dt@kernel.org, conor+dt@kernel.org, alim.akhtar@samsung.com,
	vkoul@kernel.org, kishon@kernel.org, arnd@arndb.de,
	m.szyprowski@samsung.com, jh80.chung@samsung.com, pankaj.dubey@samsung.com,
	Shradha Todi <shradha.t@samsung.com>
Subject: [PATCH v2 06/10] dt-bindings: PCI: Add bindings support for Tesla
 FSD SoC
Date: Wed, 25 Jun 2025 22:22:25 +0530
Message-ID: <20250625165229.3458-7-shradha.t@samsung.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250625165229.3458-1-shradha.t@samsung.com>
MIME-Version: 1.0
X-CMS-MailID: 20250625165315epcas5p19f081c8a0e2e7dc87698577cc2d460ca
X-Msg-Generator: CA
X-Sendblock-Type: REQ_APPROVE
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-541,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20250625165315epcas5p19f081c8a0e2e7dc87698577cc2d460ca
References: <20250625165229.3458-1-shradha.t@samsung.com>
	<CGME20250625165315epcas5p19f081c8a0e2e7dc87698577cc2d460ca@epcas5p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250625_193740_468135_A1545583 
X-CRM114-Status: GOOD (  18.37  )
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

Document the PCIe controller device tree bindings for Tesla FSD
SoC for both RC and EP.

Signed-off-by: Shradha Todi <shradha.t@samsung.com>
---
 .../bindings/pci/samsung,exynos-pcie.yaml     | 121 ++++++++++++------
 .../bindings/pci/tesla,fsd-pcie-ep.yaml       |  91 +++++++++++++
 2 files changed, 176 insertions(+), 36 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/pci/tesla,fsd-pcie-ep.yaml

diff --git a/Documentation/devicetree/bindings/pci/samsung,exynos-pcie.yaml b/Documentation/devicetree/bindings/pci/samsung,exynos-pcie.yaml
index f20ed7e709f7..595156759b06 100644
--- a/Documentation/devicetree/bindings/pci/samsung,exynos-pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/samsung,exynos-pcie.yaml
@@ -11,16 +11,15 @@ maintainers:
   - Jaehoon Chung <jh80.chung@samsung.com>
 
 description: |+
-  Exynos5433 SoC PCIe host controller is based on the Synopsys DesignWare
+  Samsung SoCs PCIe host controller is based on the Synopsys DesignWare
   PCIe IP and thus inherits all the common properties defined in
   snps,dw-pcie.yaml.
 
-allOf:
-  - $ref: /schemas/pci/snps,dw-pcie.yaml#
-
 properties:
   compatible:
-    const: samsung,exynos5433-pcie
+    enum:
+      - samsung,exynos5433-pcie
+      - tesla,fsd-pcie
 
   reg:
     items:
@@ -37,52 +36,102 @@ properties:
   interrupts:
     maxItems: 1
 
-  clocks:
-    items:
-      - description: PCIe bridge clock
-      - description: PCIe bus clock
-
-  clock-names:
-    items:
-      - const: pcie
-      - const: pcie_bus
-
   phys:
     maxItems: 1
 
-  vdd10-supply:
-    description:
-      Phandle to a regulator that provides 1.0V power to the PCIe block.
-
-  vdd18-supply:
-    description:
-      Phandle to a regulator that provides 1.8V power to the PCIe block.
-
-  num-lanes:
-    const: 1
-
-  num-viewport:
-    const: 3
-
 required:
   - reg
   - reg-names
   - interrupts
   - "#address-cells"
   - "#size-cells"
-  - "#interrupt-cells"
-  - interrupt-map
-  - interrupt-map-mask
   - ranges
-  - bus-range
   - device_type
   - num-lanes
-  - num-viewport
   - clocks
   - clock-names
   - phys
-  - vdd10-supply
-  - vdd18-supply
+
+allOf:
+  - $ref: /schemas/pci/snps,dw-pcie.yaml#
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - tesla,fsd-pcie
+    then:
+      properties:
+        clocks:
+          maxItems: 4
+
+        clock-names:
+          items:
+            - const: aux
+            - const: dbi
+            - const: mstr
+            - const: slv
+
+        samsung,syscon-pcie:
+          $ref: /schemas/types.yaml#/definitions/phandle-array
+          description: phandle for system control registers, used to
+                       control signals at system level
+
+        num-lanes:
+          maximum: 4
+
+      required:
+        - samsung,syscon-pcie
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - samsung,exynos5433-pcie
+    then:
+      properties:
+        clocks:
+          items:
+            - description: pcie bridge clock
+            - description: pcie bus clock
+
+        clock-names:
+          items:
+            - const: pcie
+            - const: pcie_bus
+
+        vdd10-supply:
+          description:
+            phandle to a regulator that provides 1.0v power to the pcie block.
+
+        vdd18-supply:
+          description:
+            phandle to a regulator that provides 1.8v power to the pcie block.
+
+        num-lanes:
+          const: 1
+
+        num-viewport:
+          const: 3
+
+        assigned-clocks:
+          maxItems: 2
+
+        assigned-clock-parents:
+          maxItems: 2
+
+        assigned-clock-rates:
+          maxItems: 2
+
+      required:
+        - "#interrupt-cells"
+        - interrupt-map
+        - interrupt-map-mask
+        - bus-range
+        - num-viewport
+        - vdd10-supply
+        - vdd18-supply
 
 unevaluatedProperties: false
 
diff --git a/Documentation/devicetree/bindings/pci/tesla,fsd-pcie-ep.yaml b/Documentation/devicetree/bindings/pci/tesla,fsd-pcie-ep.yaml
new file mode 100644
index 000000000000..f85615a0225d
--- /dev/null
+++ b/Documentation/devicetree/bindings/pci/tesla,fsd-pcie-ep.yaml
@@ -0,0 +1,91 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pci/tesla,fsd-pcie-ep.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Samsung SoC series PCIe Endpoint Controller
+
+maintainers:
+  - Shradha Todi <shradha.t@samsung.com>
+
+description: |+
+  Samsung SoCs PCIe endpoint controller is based on the Synopsys DesignWare
+  PCIe IP and thus inherits all the common properties defined in
+  snps,dw-pcie-ep.yaml.
+
+allOf:
+  - $ref: /schemas/pci/snps,dw-pcie-ep.yaml#
+
+properties:
+  compatible:
+    const: tesla,fsd-pcie-ep
+
+  reg:
+    maxItems: 4
+
+  reg-names:
+    items:
+      - const: elbi
+      - const: dbi
+      - const: dbi2
+      - const: addr_space
+
+  clocks:
+    maxItems: 4
+
+  clock-names:
+    items:
+      - const: aux
+      - const: dbi
+      - const: mstr
+      - const: slv
+
+  num-lanes:
+    maximum: 4
+
+  samsung,syscon-pcie:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    description: phandle for system control registers, used to
+                 control signals at system level
+
+  phys:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - clocks
+  - clock-names
+  - num-lanes
+  - samsung,syscon-pcie
+  - phys
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/fsd-clk.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    bus {
+        #address-cells = <2>;
+        #size-cells = <2>;
+        pcieep0: pcie-ep@16a00000 {
+            compatible = "tesla,fsd-pcie-ep";
+            reg = <0x0 0x168b0000 0x0 0x1000>,
+                  <0x0 0x16a00000 0x0 0x2000>,
+                  <0x0 0x16a01000 0x0 0x80>,
+                  <0x0 0x17000000 0x0 0xff0000>;
+            reg-names = "elbi", "dbi", "dbi2", "addr_space";
+            clocks = <&clock_fsys1 PCIE_LINK0_IPCLKPORT_AUX_ACLK>,
+                     <&clock_fsys1 PCIE_LINK0_IPCLKPORT_DBI_ACLK>,
+                     <&clock_fsys1 PCIE_LINK0_IPCLKPORT_MSTR_ACLK>,
+                     <&clock_fsys1 PCIE_LINK0_IPCLKPORT_SLV_ACLK>;
+            clock-names = "aux", "dbi", "mstr", "slv";
+            num-lanes = <4>;
+            samsung,syscon-pcie = <&sysreg_fsys1 0x50c>;
+            phys = <&pciephy1>;
+        };
+    };
+...
-- 
2.49.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
