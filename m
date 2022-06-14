Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A58F5C43334
	for <linux-phy@archiver.kernel.org>; Tue, 14 Jun 2022 01:29:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:Date:Message-ID:
	In-Reply-To:CC:To:From:Subject:Mime-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O4NA/Fwu4m0bf+Th18TllCerAMN2XSn3KuwHrPUaL98=; b=E8WKG3Wp3NCCDO
	C6w8dOgHXXiKNsi/aPvJEapqbi75pBmr7Bo10nSYxJsdW2atk3BZ4iy6ZxJbJ5wjzt+nS+mKJPQ/c
	KgwO1fKV1xjfOARpTq9qgZlg5YvIFC+g6RPVNHJlEQ4p7AluyqLAw7QosEp8oqAXGjz/rlTBPf5gh
	i+SAvD4ar8NkPLgyUZ2Xh70Ert4XxSCCgUNCWwQNCMOmYzXEgBZkUGEAnRjofr9ONlm+ecDD2advN
	Rry9ZPShrc7GyCuqMDE4mKTEgXwBiWlyeggRrxKQ4syCfgkmDgICqgVp1nmWkHAQOw6ANI0uZfkT5
	KI9sIs+v9kmL4W6rwaWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0vN1-006aP0-2k; Tue, 14 Jun 2022 01:29:27 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0vMx-006aOE-J0
	for linux-phy@lists.infradead.org; Tue, 14 Jun 2022 01:29:25 +0000
Received: from epcas2p1.samsung.com (unknown [182.195.41.53])
	by mailout4.samsung.com (KnoxPortal) with ESMTP id 20220614012918epoutp040a54860c72f32b042d9f88f0327bc624~4WH1cfpJ10169301693epoutp04D
	for <linux-phy@lists.infradead.org>; Tue, 14 Jun 2022 01:29:18 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com 20220614012918epoutp040a54860c72f32b042d9f88f0327bc624~4WH1cfpJ10169301693epoutp04D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1655170158;
	bh=09bej0yfRoQFZyioMYdykSTk5UJaGQ7QfX7QtDcHlkk=;
	h=Subject:Reply-To:From:To:CC:In-Reply-To:Date:References:From;
	b=Ho+obmDvuNH12LJzeUU7ToK0AZF0p27Qe5bUwnEZkJkVBsbrLvBcc3/hF4GnoiPad
	 nke9zJOhIt3SjwCbyAUX2XXVs58chcvPdfCTFfFOJb+Q+iTxV0/d7zfbBA+9yaI8UR
	 sUUJKj5YRjbx+RD9kWnwu1u0L6cUu0CoiNcUo7D8=
Received: from epsnrtp4.localdomain (unknown [182.195.42.165]) by
	epcas2p2.samsung.com (KnoxPortal) with ESMTP id
	20220614012917epcas2p215740c411f8508dec7d56477839e97b6~4WH0lMH4C0253902539epcas2p22;
	Tue, 14 Jun 2022 01:29:17 +0000 (GMT)
Received: from epsmges2p4.samsung.com (unknown [182.195.36.101]) by
	epsnrtp4.localdomain (Postfix) with ESMTP id 4LMW7K0F9Rz4x9Q1; Tue, 14 Jun
	2022 01:29:17 +0000 (GMT)
X-AuditID: b6c32a48-495ff700000025de-c4-62a7e46cf5f7
Received: from epcas2p3.samsung.com ( [182.195.41.55]) by
	epsmges2p4.samsung.com (Symantec Messaging Gateway) with SMTP id
	36.6C.09694.C64E7A26; Tue, 14 Jun 2022 10:29:16 +0900 (KST)
Mime-Version: 1.0
Subject: [PATCH v3 2/5] dt-bindings: phy: Add ARTPEC-8 PCIe phy
From: Wangseok Lee <wangseok.lee@samsung.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "krzk+dt@kernel.org"
	<krzk+dt@kernel.org>, "kishon@ti.com" <kishon@ti.com>, "vkoul@kernel.org"
	<vkoul@kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "jesper.nilsson@axis.com"
	<jesper.nilsson@axis.com>, "lars.persson@axis.com" <lars.persson@axis.com>,
	"bhelgaas@google.com" <bhelgaas@google.com>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>, "linux-pci@vger.kernel.org"
	<linux-pci@vger.kernel.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "lorenzo.pieralisi@arm.com"
	<lorenzo.pieralisi@arm.com>, "kw@linux.com" <kw@linux.com>,
	"linux-arm-kernel@axis.com" <linux-arm-kernel@axis.com>, "kernel@axis.com"
	<kernel@axis.com>
CC: Moon-Ki Jun <moonki.jun@samsung.com>, Sang Min Kim
	<hypmean.kim@samsung.com>, Dongjin Yang <dj76.yang@samsung.com>, Yeeun Kim
	<yeeun119.kim@samsung.com>
X-Priority: 3
X-Content-Kind-Code: NORMAL
In-Reply-To: <20220614011616epcms2p7dcaa67c53b7df5802dd7a697e2d472d7@epcms2p7>
X-CPGS-Detection: blocking_info_exchange
X-Drm-Type: N,general
X-Msg-Generator: Mail
X-Msg-Type: PERSONAL
X-Reply-Demand: N
Message-ID: <20220614012916epcms2p5cf8d55e7420dea10bb4a05d91aaf99dd@epcms2p5>
Date: Tue, 14 Jun 2022 10:29:16 +0900
X-CMS-MailID: 20220614012916epcms2p5cf8d55e7420dea10bb4a05d91aaf99dd
X-Sendblock-Type: AUTO_CONFIDENTIAL
X-CPGSPASS: Y
X-CPGSPASS: Y
CMS-TYPE: 102P
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrMJsWRmVeSWpSXmKPExsWy7bCmuW7Ok+VJBofbzCyWNGVYvDykaTH/
	yDlWi90zljNZzJx6htni+aFZzBafWlQtLjztYbN4Oesem0VDz29WiyNvPjJb7D++ksni8q45
	bBZn5x1ns5iw6huLxZvfL9gtzi3OtGjde4TdYuedE8wWv7b+YXIQ8Vgzbw2jx/V1AR4LNpV6
	bFrVyebx5Mp0Jo/NS+o9+rasYvQ4fmM7k8fnTXIBnFHZNhmpiSmpRQqpecn5KZl56bZK3sHx
	zvGmZgaGuoaWFuZKCnmJuam2Si4+AbpumTlATykplCXmlAKFAhKLi5X07WyK8ktLUhUy8otL
	bJVSC1JyCswL9IoTc4tL89L18lJLrAwNDIxMgQoTsjP2LFzIVtAnWvHj7lWWBsZ2gS5GTg4J
	AROJTX3rmLsYuTiEBHYwSvyceJexi5GDg1dAUOLvDmGQGmEBe4kJzVeZQWwhASWJHWvmMUPE
	9SWur+hmBbHZBHQl/i1+yQZiiwh8ZpW4vkcQZCazwAJGif2/9zFCLOOVmNH+lAXClpbYvnwr
	WJxTwE9i4dFJTBBxDYkfy3qZIWxRiZur37LD2O+PzYeaIyLReu8sVI2gxIOfu6HiUhILnhxi
	hbCrJfb//Q01s4FRov9+KshfEkBH77huDBLmFfCV2HX8Mth4FgFViW/dXVCrXCSatl0DG8ks
	IC+x/e0cZpBWZgFNifW79CGmKEscucUC81TDxt/s6GxmAT6JjsN/4eI75j2BOkZNYt7KncwT
	GJVnIcJ5FpJdsxB2LWBkXsUollpQnJueWmxUYAKP2uT83E2M4NSt5bGDcfbbD3qHGJk4GA8x
	SnAwK4nwTr64LEmINyWxsiq1KD++qDQntfgQoynQlxOZpUST84HZI68k3tDE0sDEzMzQ3MjU
	wFxJnNcrZUOikEB6YklqdmpqQWoRTB8TB6dUA1P0o608P14ea47vOuBlqFXj/702XO7b87dF
	tS1bk6sy/37I7pfXqeydJJtQsGWe92a/PUl775mXXNRxbt5qo3NQ9X2+UfTLmCvbOtONNjJv
	m6x+WIC18c/Eimnm3376KMebrbPlmvuFKeHipv7vy7qv5F0/XORaNlvvw/G7raH/cmbPXiEv
	Eb7q0Z5368vOiknE5rktrhec/XnbQabU+BU/Fa14z7gdnlC772hS9lEOsUNWciVR+76v35Mz
	23dqM7/Z7tUy/qHGWqbWdnovPau/bTTP4dXqP3B349R3/2wD4wVmKb7purZT6sXF8uhqpikP
	pK+xuxa4lhduavpfU7Bp/6S/q+ZWLjYTrc3ONldiKc5INNRiLipOBABzDfAlZgQAAA==
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20220614011616epcms2p7dcaa67c53b7df5802dd7a697e2d472d7
References: <20220614011616epcms2p7dcaa67c53b7df5802dd7a697e2d472d7@epcms2p7>
	<CGME20220614011616epcms2p7dcaa67c53b7df5802dd7a697e2d472d7@epcms2p5>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220613_182924_061281_9CE15D30 
X-CRM114-Status: GOOD (  19.43  )
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
and PCIe phy is designed based on SAMSUNG PHY.

Signed-off-by: Wangseok Lee <wangseok.lee@samsung.com>
---
v2->v3 :
-modify version history to fit the linux commit rule
-remove 'Device Tree Bindings' on title
-remove clock-names entries
-change node name to soc from artpec8 on excamples

v1->v2 :
-'make dt_binding_check' result improvement
-Add the missing property list
-Align the indentation of continued lines/entries
---
 .../bindings/phy/axis,artpec8-pcie-phy.yaml        | 73 ++++++++++++++++++++++
 1 file changed, 73 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/axis,artpec8-pcie-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/axis,artpec8-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/axis,artpec8-pcie-phy.yaml
new file mode 100644
index 0000000..316b774
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/axis,artpec8-pcie-phy.yaml
@@ -0,0 +1,73 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/axis,artpec8-pcie-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: ARTPEC-8 SoC PCIe PHY
+
+maintainers:
+  - Jesper Nilsson <jesper.nilsson@axis.com>
+
+properties:
+  compatible:
+    const: axis,artpec8-pcie-phy
+
+  reg:
+    items:
+      - description: PHY registers.
+      - description: PHY coding sublayer registers.
+
+  reg-names:
+    items:
+      - const: phy
+      - const: pcs
+
+  "#phy-cells":
+    const: 0
+
+  clocks:
+    items:
+      - description: PCIe PHY reference clock
+
+  num-lanes:
+    const: 2
+
+  lcpll-ref-clk:
+    const: 1
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - "#phy-cells"
+  - clocks
+  - clock-names
+  - samsung,fsys-sysreg
+  - num-lanes
+  - lcpll-ref-clk
+
+additionalProperties: true
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    soc {
+        #address-cells = <2>;
+        #size-cells = <2>;
+        pcie_phy: pcie-phy@16c80000 {
+            compatible = "axis,artpec8-pcie-phy";
+            reg = <0x0 0x16c80000 0x0 0x2000>,
+                  <0x0 0x16c90000 0x0 0x1000>;
+            reg-names = "phy", "pcs";
+            #phy-cells = <0>;
+            clocks = <&clock_cmu_fsys 53>;
+            clock-names = "ref";
+            samsung,fsys-sysreg = <&syscon_fsys>;
+            num-lanes = <2>;
+            lcpll-ref-clk = <1>;
+        };
+    };
+...
-- 
2.9.5

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
