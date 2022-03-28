Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DEBA9C433F5
	for <linux-phy@archiver.kernel.org>; Mon, 28 Mar 2022 01:49:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:Date:Message-ID:CC
	:To:From:Subject:Mime-Version:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=xaCwf2iuUR9KaXKFVadrSq6llHPH8xTb7tWKhlAEhEg=; b=ToEEOORbHN9A3E
	Pg/pce49A9m6URYYiTknASmzxw6CEzlyvXUBkxVav2XpLSwuk5h0yEKkrzhA1MCoXjpG7Rivl1QYm
	0KRC/zO5uP7X2LunYJ5KpxnENNXhPb/f74ngHiKmmAnmmfiHBMF1rPrOYeVOIboVDQwmQiInovjdP
	h0+mTBkY61tkiz2wc9q7VOz3qVFxxuijQJiN/ZmFrGGz/kY8oZ8H6kd/l5Ae5srdOPMJkAY+kAqle
	g0j7N+7f0imBkILmq8jUkI+Qy8ipV/f8cwt2t/kAIQZfZSLbSFbcZx1NADuIGIyWCyjVuM7mHh8Gz
	frLTL6VHIZ6rinN7ALfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nYeVM-0072GM-BQ; Mon, 28 Mar 2022 01:49:12 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nYeVI-0072Dk-I7
 for linux-phy@lists.infradead.org; Mon, 28 Mar 2022 01:49:10 +0000
Received: from epcas2p4.samsung.com (unknown [182.195.41.56])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20220328014902epoutp04c5c7e5a207232cef1d49d3192e510ba9~gaEzdsro31051410514epoutp04D
 for <linux-phy@lists.infradead.org>; Mon, 28 Mar 2022 01:49:02 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20220328014902epoutp04c5c7e5a207232cef1d49d3192e510ba9~gaEzdsro31051410514epoutp04D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1648432143;
 bh=DtpGRyIKFJH3WraPtp62VC5aZzP7oB2EzLqmqvTZ/60=;
 h=Subject:Reply-To:From:To:CC:Date:References:From;
 b=tFyTIBAAVIrl/dIr9pYtrhpHa09cx03sem4lKldGEhmh+wa+gX+fKzIJ6/gMxpsM5
 0yHXcApo+HcbgIK0nDoigi1mqjUT5m/NQ5FscbPYDUlKSZfnSORpUhRhxIW4y1e/v/
 45Q0zR72e7MXA80hhrL5PNDLiwwLcohUzhelPAOE=
Received: from epsnrtp4.localdomain (unknown [182.195.42.165]) by
 epcas2p1.samsung.com (KnoxPortal) with ESMTP id
 20220328014902epcas2p1aeed4aa5381700e1c4bc91b3ea6971c7~gaEytkfAL1101811018epcas2p13;
 Mon, 28 Mar 2022 01:49:02 +0000 (GMT)
Received: from epsmges2p3.samsung.com (unknown [182.195.36.101]) by
 epsnrtp4.localdomain (Postfix) with ESMTP id 4KRbG25lrYz4x9QC; Mon, 28 Mar
 2022 01:48:58 +0000 (GMT)
X-AuditID: b6c32a47-81bff700000063c4-40-624114090415
Received: from epcas2p1.samsung.com ( [182.195.41.53]) by
 epsmges2p3.samsung.com (Symantec Messaging Gateway) with SMTP id
 31.E1.25540.90411426; Mon, 28 Mar 2022 10:48:57 +0900 (KST)
Mime-Version: 1.0
Subject: [PATCH 1/5] dt-bindings: pci: Add ARTPEC-8 PCIe controller
From: =?UTF-8?B?7J207JmV7ISd?= <wangseok.lee@samsung.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "krzk+dt@kernel.org"
 <krzk+dt@kernel.org>, "kishon@ti.com" <kishon@ti.com>, "vkoul@kernel.org"
 <vkoul@kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "jesper.nilsson@axis.com"
 <jesper.nilsson@axis.com>, "lars.persson@axis.com" <lars.persson@axis.com>
CC: "bhelgaas@google.com" <bhelgaas@google.com>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>, "kw@linux.com"
 <kw@linux.com>, "linux-arm-kernel@axis.com" <linux-arm-kernel@axis.com>,
 "kernel@axis.com" <kernel@axis.com>, =?UTF-8?B?7KCE66y46riw?=
 <moonki.jun@samsung.com>
X-Priority: 3
X-Content-Kind-Code: NORMAL
X-CPGS-Detection: blocking_info_exchange
X-Drm-Type: N,general
X-Msg-Generator: Mail
X-Msg-Type: PERSONAL
X-Reply-Demand: N
Message-ID: <20220328014857epcms2p7d8cfd98d60f059916ef35ccc385bc004@epcms2p7>
Date: Mon, 28 Mar 2022 10:48:57 +0900
X-CMS-MailID: 20220328014857epcms2p7d8cfd98d60f059916ef35ccc385bc004
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrHJsWRmVeSWpSXmKPExsWy7bCmqS6niGOSwYp5ShZLmjIs5h85x2rx
 /NAsZotPLaoWF572sFm8nHWPzaKh5zerxZE3H5kt9h9fyWRxedccNouz846zWUxY9Y3F4s3v
 F+wW5xZnWrTuPcJusfPOCWYHAY8189YwelxfF+CxYFOpx6ZVnWweT65MZ/LYvKTeo2/LKkaP
 4ze2M3l83iQXwBmVbZORmpiSWqSQmpecn5KZl26r5B0c7xxvamZgqGtoaWGupJCXmJtqq+Ti
 E6DrlpkD9IGSQlliTilQKCCxuFhJ386mKL+0JFUhI7+4xFYptSAlp8C8QK84Mbe4NC9dLy+1
 xMrQwMDIFKgwITvjwpYfTAVzbSt6jog3ME7S6WLk5JAQMJGYenInUxcjF4eQwA5GiTX/PjJ3
 MXJw8AoISvzdIQxSIyzgLLGv/RwjiC0koCSxY808Zoi4tcSnKZdZQGw2AUuJi60PGUHmiAic
 ZZK4eXc7K4jDLHCbWWL+8/csENt4JWa0P4WypSW2L9/KCGFrSPxY1ssMYYtK3Fz9lh3Gfn9s
 PlSNiETrvbNQNYISD37uhopLSSx4cogVwq6W2P/3NxOE3cAo0X8/FeQZCQF9iR3XjUHCvAK+
 Eku27AI7gUVAVaJ14RZ2iBIXiWsndUHCzALyEtvfzgEHA7OApsT6XfoQFcoSR26xQFTwSXQc
 /ssO89OOeU+gdqpJzFu5kxmiXEZi60t/iLCHxLTl85ggARgosetaI+MERoVZiGCehWTtLIS1
 CxiZVzGKpRYU56anFhsVGMMjNjk/dxMjOCFrue9gnPH2g94hRiYOxkOMEhzMSiK8smftk4R4
 UxIrq1KL8uOLSnNSiw8xmgL9O5FZSjQ5H5gT8kriDU0sDUzMzAzNjUwNzJXEeb1SNiQKCaQn
 lqRmp6YWpBbB9DFxcEo1MAUteeYqf3r/stjFwjEx0ocPeUgdm7SiufQe62INcaGZSr2ef6tj
 a0LubT7nKMPvOvF0+bSwa4UuaWf/vn+ZpffC4ey6NxOUviXXsxZLh8Us80xksz0adO/bcgOd
 //qXbDg0vx9p/R6m8ni956T+1wc/yZ06xzhr3kR51f8udo+mHK/Zdz/hcPe5tjKe1PmPlp6e
 IJkomnpKR1W9OMlVKfqVR835iKUbtD8abLE/WX72E0sNd+iDv/qMPzMnzX9WMXlP87y0O/cL
 zGby67X1x98JWOoz64hl3/OfXzPeJhwRXmE25eypjj2uD7xEZq3hXhWweRX7JJFyv2NFDrbJ
 O0N7L4Xp5t9M/b3tmfrtczxKLMUZiYZazEXFiQCKTTe3UQQAAA==
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20220328014857epcms2p7d8cfd98d60f059916ef35ccc385bc004
References: <CGME20220328014857epcms2p7d8cfd98d60f059916ef35ccc385bc004@epcms2p7>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220327_184909_043024_8A38F082 
X-CRM114-Status: GOOD (  20.66  )
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
Reply-To: wangseok.lee@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Add description to support Axis, ARTPEC-8 SoC.
ARTPEC-8 is the SoC platform of Axis Communications
and PCIe controller is designed based on Design-Ware PCIe controller.

Signed-off-by: Wangseok Lee <wangseok.lee@samsung.com>
---
 .../bindings/pci/axis,artpec8-pcie-ep.yaml         | 110 +++++++++++++++++++
 .../devicetree/bindings/pci/axis,artpec8-pcie.yaml | 117 +++++++++++++++++++++
 2 files changed, 227 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pci/axis,artpec8-pcie-ep.yaml
 create mode 100644 Documentation/devicetree/bindings/pci/axis,artpec8-pcie.yaml

diff --git a/Documentation/devicetree/bindings/pci/axis,artpec8-pcie-ep.yaml b/Documentation/devicetree/bindings/pci/axis,artpec8-pcie-ep.yaml
new file mode 100644
index 0000000..dc66965
--- /dev/null
+++ b/Documentation/devicetree/bindings/pci/axis,artpec8-pcie-ep.yaml
@@ -0,0 +1,110 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pci/axis,artpec8-pcie-ep.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: ARTPEC-8 SoC PCIe Controller Device Tree Bindings
+
+maintainers:
+  - Jesper Nilsson <jesper.nilsson@axis.com>
+
+description: |+
+  This PCIe end-point controller is based on the Synopsys DesignWare PCIe IP
+  and thus inherits all the common properties defined in snps,dw-pcie-ep.yaml.
+
+allOf:
+  - $ref: /schemas/pci/snps,dw-pcie-ep.yaml#
+
+properties:
+  compatible:
+    const: axis,artpec8-pcie-ep
+
+  reg:
+    items:
+      - description: Data Bus Interface (DBI) registers.
+      - description: Data Bus Interface (DBI2) registers.
+      - description: PCIe address space region.
+
+  reg-names:
+    items:
+      - const: dbi
+      - const: dbi2
+      - const: addr_space
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: PIPE clock, used by the controller to clock the PIPE
+      - description: PCIe dbi clock, ungated version
+      - description: PCIe master clock, ungated version
+      - description: PCIe slave clock, ungated version
+
+  clock-names:
+    items:
+      - const: pipe_clk
+      - const: dbi_clk
+      - const: mstr_clk
+      - const: slv_clk
+
+  phys:
+    maxItems: 1
+
+  num-lanes:
+    const: 2
+
+required:
+  - clocks
+  - clock-names
+  - reg
+  - reg-names
+  - num-lanes
+  - bus-range
+  - interrupts
+  - interrupt-names
+  - samsung,fsys-sysreg
+  - samsung,syscon-phandle
+  - samsung,syscon-bus-s-fsys
+  - samsung,syscon-bus-p-fsys
+  - phys
+  - phy-names
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    artec8 {
+        #address-cells = <2>;
+        #size-cells = <2>;
+        pcie_ep: pcie-ep@17200000 {
+            compatible = "axis,artpec8-pcie-ep";
+            clocks = <&clock_cmu_fsys 39>,
+                        <&clock_cmu_fsys 38>,
+                        <&clock_cmu_fsys 37>,
+                        <&clock_cmu_fsys 36>;
+            clock-names = "pipe_clk", "dbi_clk", "mstr_clk", "slv_clk";
+            reg = <0x0 0x17200000 0x0 0x1000>,
+                    <0x0 0x17201000 0x0 0x1000>,
+                    <0x2 0x00000000 0x6 0x00000000>;
+            reg-names = "dbi", "dbi2", "addr_space";
+            num-lanes = <2>;
+            bus-range = <0x00 0xff>;
+            interrupts = <GIC_SPI 115 IRQ_TYPE_LEVEL_HIGH>;
+            interrupt-names = "intr";
+            #interrupt-cells = <1>;
+            num-ib-windows = <16>;
+            num-ob-windows = <16>;
+            samsung,fsys-sysreg = <&syscon_fsys>;
+            samsung,syscon-phandle = <&pmu_system_controller>;
+            samsung,syscon-bus-s-fsys = <&syscon_bus_s_fsys>;
+            samsung,syscon-bus-p-fsys = <&syscon_bus_p_fsys>;
+            phys = <&pcie_phy>;
+            phy-names = "pcie_phy";
+        };
+    };
+...
diff --git a/Documentation/devicetree/bindings/pci/axis,artpec8-pcie.yaml b/Documentation/devicetree/bindings/pci/axis,artpec8-pcie.yaml
new file mode 100644
index 0000000..b2cff0a
--- /dev/null
+++ b/Documentation/devicetree/bindings/pci/axis,artpec8-pcie.yaml
@@ -0,0 +1,117 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pci/axis,artpec8-pcie.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Artpec-8 SoC PCIe Controller Device Tree Bindings
+
+maintainers:
+  - Jesper Nilsson <jesper.nilsson@axis.com>
+
+description: |+
+  This PCIe host controller is based on the Synopsys DesignWare PCIe IP
+  and thus inherits all the common properties defined in snps,dw-pcie.yaml.
+
+allOf:
+  - $ref: /schemas/pci/snps,dw-pcie.yaml#
+
+properties:
+  compatible:
+    const: axis,artpec8-pcie
+
+  reg:
+    items:
+      - description: Data Bus Interface (DBI) registers.
+      - description: External Local Bus interface (ELBI) registers.
+      - description: PCIe configuration space region.
+
+  reg-names:
+    items:
+      - const: dbi
+      - const: elbi
+      - const: config
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: PIPE clock, used by the controller to clock the PIPE
+      - description: PCIe dbi clock, ungated version
+      - description: PCIe master clock,  ungated version
+      - description: PCIe slave clock, ungated version
+
+  clock-names:
+    items:
+      - const: pipe_clk
+      - const: dbi_clk
+      - const: mstr_clk
+      - const: slv_clk
+
+  phys:
+    maxItems: 1
+
+  num-lanes:
+    const: 2
+
+required:
+  - clocks
+  - clock-names
+  - reg
+  - reg-names
+  - device_type
+  - ranges
+  - num-lanes
+  - bus-range
+  - interrupts
+  - interrupt-names
+  - samsung,fsys-sysreg
+  - samsung,syscon-phandle
+  - samsung,syscon-bus-s-fsys
+  - samsung,syscon-bus-p-fsys
+  - phys
+  - phy-names
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    artec8 {
+        #address-cells = <2>;
+        #size-cells = <2>;
+        pcie: pcie@17200000 {
+            compatible = "axis,artpec8-pcie";
+            reg = <0x0 0x17200000 0x0 0x1000>,
+                    <0x0 0x16ca0000 0x0 0x2000>,
+                    <0x7 0x0001e000 0x0 0x2000>;
+            reg-names = "dbi", "elbi", "config";
+            #address-cells = <3>;
+            #size-cells = <2>;
+            device_type = "pci";
+            ranges = </* non-prefetchable memory */
+                            0x83000000 0x0 0x0000000 0x2 0x00000000 0x5 0x00000000
+                            /* downstream I/O */
+                            0x81000000 0x0 0x0000000 0x7 0x00000000 0x0 0x00010000>;
+            num-lanes = <2>;
+            bus-range = <0x00 0xff>;
+            interrupts = <GIC_SPI 115 IRQ_TYPE_LEVEL_HIGH>;
+            interrupt-names = "intr";
+            #interrupt-cells = <1>;
+            samsung,fsys-sysreg = <&syscon_fsys>;
+            samsung,syscon-phandle = <&pmu_system_controller>;
+            samsung,syscon-bus-s-fsys = <&syscon_bus_s_fsys>;
+            samsung,syscon-bus-p-fsys = <&syscon_bus_p_fsys>;
+            clocks = <&cmu_fsys 39>,
+                        <&cmu_fsys 38>,
+                        <&cmu_fsys 37>,
+                        <&cmu_fsys 36>;
+            clock-names = "pipe_clk", "dbi_clk", "mstr_clk", "slv_clk";
+            phys = <&pcie_phy>;
+            phy-names = "pcie_phy";
+        };
+    };
+...
-- 
2.9.5

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
