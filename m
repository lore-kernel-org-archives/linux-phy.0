Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09069C43219
	for <linux-phy@archiver.kernel.org>; Mon, 28 Mar 2022 08:43:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:Date:Message-ID:CC
	:To:From:Subject:Mime-Version:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=M/o+Rw24fqEaFrbOQL72yLqsBZpumwlirhinqBzs9xU=; b=eZWMy0PYzw3/jK
	0k09s/gEh2M/+hLgsL12PkRgwfGwVxIUA3MY9OfYS7RygON/JYTpXy80lsTKk0CycHJKPkbFX6bCO
	wtRtrP5zikrEJI83wZQvR6Eqd6F4YU1rYFvGlWxsxPe/BcfktuEAcmeXqmDnAwT0HKq7/GqrJsmH3
	y5baS7X/f0cMWNOxs5vBkBLUhBJtW4m5k5kWyc3cS6PwXNVKum2H0uDiYnMViC05tGqsFU9h5SyJ/
	rxkIDdiIVtnuWiVVp5b2dcOYweZnkFxDzi+GOwMSkxs88KpT1OidbAoD616JgQ9s+dAiItOThCDI8
	Uk5VhcGUrWzSpYg8JMOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nYkyH-007sr4-GX; Mon, 28 Mar 2022 08:43:29 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nYkyE-007spm-LP
 for linux-phy@lists.infradead.org; Mon, 28 Mar 2022 08:43:28 +0000
Received: from epcas2p4.samsung.com (unknown [182.195.41.56])
 by mailout1.samsung.com (KnoxPortal) with ESMTP id
 20220328084322epoutp01bc5a5b116f88e83495394c726859cfdf~gfujo8fft1854318543epoutp01T
 for <linux-phy@lists.infradead.org>; Mon, 28 Mar 2022 08:43:22 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com
 20220328084322epoutp01bc5a5b116f88e83495394c726859cfdf~gfujo8fft1854318543epoutp01T
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1648457002;
 bh=q+HVAoGqH/dia7eZTAEaFllANNuLtxUgWBVlfJGeTSQ=;
 h=Subject:Reply-To:From:To:CC:Date:References:From;
 b=LG+3W0XjKQkNCoam+k7N+jbx410o6MAgKY9rSTgvUzw4BIlMxjHeeAYiqY1f2vx00
 svMuaeSeARxzifT6+NhxZbwjGdYTWCnfdsbCUblXAoY/xKCjZ8HZqxs5WzyjI4K54u
 KQpNNs5krEUEP8KxKeJ0gZ+4d/MBTKNq4SUtvq+k=
Received: from epsnrtp2.localdomain (unknown [182.195.42.163]) by
 epcas2p4.samsung.com (KnoxPortal) with ESMTP id
 20220328084321epcas2p4beb7cee7ab047cdbeb9531b88c180a5b~gfui0S8EY1900419004epcas2p4o;
 Mon, 28 Mar 2022 08:43:21 +0000 (GMT)
Received: from epsmges2p2.samsung.com (unknown [182.195.36.88]) by
 epsnrtp2.localdomain (Postfix) with ESMTP id 4KRmS76nKyz4x9Q4; Mon, 28 Mar
 2022 08:43:19 +0000 (GMT)
X-AuditID: b6c32a46-be9ff70000023ea8-c7-62417527a335
Received: from epcas2p3.samsung.com ( [182.195.41.55]) by
 epsmges2p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 E1.4C.16040.72571426; Mon, 28 Mar 2022 17:43:19 +0900 (KST)
Mime-Version: 1.0
Subject: [PATCH 2/5] dt-bindings: phy: Add ARTPEC-8 PCIe phy
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
Message-ID: <20220328084319epcms2p3670d7836bb111e0d9c648aeebfde8603@epcms2p3>
Date: Mon, 28 Mar 2022 17:43:19 +0900
X-CMS-MailID: 20220328084319epcms2p3670d7836bb111e0d9c648aeebfde8603
X-Sendblock-Type: AUTO_CONFIDENTIAL
X-CPGSPASS: Y
X-CPGSPASS: Y
CMS-TYPE: 102P
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrMJsWRmVeSWpSXmKPExsWy7bCmua56qWOSwbJ9phZLmjIsXh7StJh/
 5ByrxfNDs5gtPrWoWlx42sNm8XLWPTaLhp7frBZH3nxktth/fCWTxeVdc9gszs47zmYxYdU3
 Fos3v1+wW5xbnGnRuvcIu8XOOyeYHQQ91sxbw+hxfV2Ax4JNpR6bVnWyeTy5Mp3JY/OSeo++
 LasYPY7f2M7k8XmTXABnVLZNRmpiSmqRQmpecn5KZl66rZJ3cLxzvKmZgaGuoaWFuZJCXmJu
 qq2Si0+ArltmDtAXSgpliTmlQKGAxOJiJX07m6L80pJUhYz84hJbpdSClJwC8wK94sTc4tK8
 dL281BIrQwMDI1OgwoTsjLPn9rIXNApVNDytb2C8wtvFyMkhIWAiceTyZJYuRi4OIYEdjBJr
 /rQzdzFycPAKCEr83SEMUiMsYCPxZ/dsZhBbSEBJYseaecwQcWuJT1Mus4DYbAKWEhdbHzKC
 zBEROMskcfPudlYQh1ngNrPE/OfvWSC28UrMaH8KZUtLbF++lRHC1pD4sayXGcIWlbi5+i07
 jP3+2HyoGhGJ1ntnoWoEJR783A0Vl5JY8OQQK4RdLbH/728mCLuBUaL/firIMxIC+hI7rhuD
 hHkFfCWeXpoFNoZFQFVi9+lOqHIXiVsX94DFmQXkJba/nQMOB2YBTYn1u/QhpihLHLkF90jD
 xt/s6GxmAT6JjsN/4eI75j2Bmq4mMW/lTmaIMTISW1/6T2BUmoUI51lI1s5CWLuAkXkVo1hq
 QXFuemqxUYERPGaT83M3MYJTs5bbDsYpbz/oHWJk4mA8xCjBwawkwit71j5JiDclsbIqtSg/
 vqg0J7X4EKMp0MMTmaVEk/OB2SGvJN7QxNLAxMzM0NzI1MBcSZzXK2VDopBAemJJanZqakFq
 EUwfEwenVANT8SPd/vvnGiYfSV8UIqD0/snco60XVt32vLC4y+rKSfbJLwRafNPeFt8OUvsf
 03Lijnj6dO1asfCiY3XLJkgJpc708PJUKvP/lcP9t4ohdfvVcCHtt58ZXidVvrlzZO0KowfX
 /r0JWNgwq7qTzbhLwc7ov2SLtvKFPMVfK58b3u1kTvzsPK/vTPb6lZtOvBE9e+qd6vnTkxf0
 zOT1mHtvtbBEpEQfK8fZPazMLveu7Dr57v1up8ehgXu62GtCdus+Vd19LbDw7FtjhtzKfc22
 nkW7Hi7eefPE5H+O/c+nvN/z2rt3TiinzDbvEI/Il/OThWf3Zi10y1Z4ceH//+o7r7KKrmo3
 7/pe/0z2lt4DNyWW4oxEQy3mouJEAM2QofZWBAAA
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20220328084319epcms2p3670d7836bb111e0d9c648aeebfde8603
References: <CGME20220328084319epcms2p3670d7836bb111e0d9c648aeebfde8603@epcms2p3>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220328_014327_194552_72A5084D 
X-CRM114-Status: GOOD (  20.13  )
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
 .../bindings/phy/axis,artpec8-pcie-phy.yaml        | 67 ++++++++++++++++++++++
 1 file changed, 67 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/axis,artpec8-pcie-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/axis,artpec8-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/axis,artpec8-pcie-phy.yaml
new file mode 100644
index 0000000..f5f4166
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/axis,artpec8-pcie-phy.yaml
@@ -0,0 +1,67 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/axis,artpec8-pcie-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: ARTPEC-8 SoC PCIe PHY Device Tree Bindings
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
+  clocks:
+    items:
+      - description: PCIe PHY reference clock
+
+  clock-names:
+    items:
+      - const: ref_clk
+
+required:
+  - compatible
+  - "#phy-cells"
+  - reg
+  - reg-names
+  - clocks
+  - clock-names
+  - samsung,fsys-sysreg
+  - num-lanes
+
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    artec8 {
+        #address-cells = <2>;
+        #size-cells = <2>;
+        pcie_phy: pcie-phy@16c80000 {
+            compatible = "samsung,artpec8-pcie-phy";
+            #phy-cells = <0>;
+            reg = <0x0 0x16c80000 0x0 0x2000>,
+                    <0x0 0x16c90000 0x0 0x1000>;
+            reg-names = "phy", "pcs";
+            clocks = <&clock_cmu_fsys 53>;
+            clock-names = "ref_clk";
+            samsung,fsys-sysreg = <&syscon_fsys>;
+            num-lanes = <2>;
+        };
+    };
+...
-- 
2.9.5

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
