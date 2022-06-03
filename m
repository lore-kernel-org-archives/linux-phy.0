Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37AD2CCA47D
	for <linux-phy@archiver.kernel.org>; Fri,  3 Jun 2022 02:32:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:Date:Message-ID:
	In-Reply-To:CC:To:From:Subject:Mime-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tzef8gtdMsTbP8gGRhG8r0KScojimiv+mNncAgDDkVo=; b=KCnS2gd+8DTO9t
	n7uLGqnydeSpXvaKxdf2RNMN174uJCL1u+Cx8jwdoAvyiTn5DsiIxjJkPTbCAqPSlEZLYNBbE0r6h
	e0ONbtbKItEGLjr/Ipbz+gFkJx2V1eoCKxslq5IKti75JcuMCv7UeJwbW0biKWSqVwkVndzHGQhBL
	R8gfLlSI5W7tTSO2JX8XKd2sFor9NPTRwu0hfIl7sOlBcrdYAETPHpWkW+NGl1VtjcWATreXNGc8t
	U/LRDlYclwcz/mUdBnABJgfy7BSJqNPCY2FiUZrpHiSvbqSjVZBfZcqjJ0iV9ztyxuQ4zs63WkTNy
	8v2p2DYENmOP0qkfmwWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwx6f-005Vre-Jo; Fri, 03 Jun 2022 02:32:09 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwx6c-005VqZ-1J
	for linux-phy@lists.infradead.org; Fri, 03 Jun 2022 02:32:08 +0000
Received: from epcas2p4.samsung.com (unknown [182.195.41.56])
	by mailout2.samsung.com (KnoxPortal) with ESMTP id 20220603023200epoutp023107afb134e5063aa37c1cdd2042cc0e~0_4cSgqLc2920829208epoutp02U
	for <linux-phy@lists.infradead.org>; Fri,  3 Jun 2022 02:32:00 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com 20220603023200epoutp023107afb134e5063aa37c1cdd2042cc0e~0_4cSgqLc2920829208epoutp02U
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1654223520;
	bh=QxCQT1a6tUptFcIJA2eYTcjG5C+yGcjbhcZAVaXzr+4=;
	h=Subject:Reply-To:From:To:CC:In-Reply-To:Date:References:From;
	b=U3Mn0db9dPruwdlsHy46x2hg3X6tyuBhsOji3jHphn5KhmraSw6E2EL7ce2XmTwFJ
	 ZY5r5SB3JID65oWvrZPwX3Daeh5f523JxuAjZeYEsG0dhTPkHfXy1M67LflSfmk0M6
	 iMUTUGAl26iqy08PyVpkSbFitbIz1CxGN5Rz+Qpc=
Received: from epsnrtp4.localdomain (unknown [182.195.42.165]) by
	epcas2p2.samsung.com (KnoxPortal) with ESMTP id
	20220603023159epcas2p2b48bfcc8bab2c3a409775774557baea9~0_4bArwPj1964619646epcas2p2P;
	Fri,  3 Jun 2022 02:31:59 +0000 (GMT)
Received: from epsmges2p4.samsung.com (unknown [182.195.36.69]) by
	epsnrtp4.localdomain (Postfix) with ESMTP id 4LDn2k3WkQz4x9Pv; Fri,  3 Jun
	2022 02:31:58 +0000 (GMT)
X-AuditID: b6c32a48-495ff700000025de-97-6299729e536f
Received: from epcas2p4.samsung.com ( [182.195.41.56]) by
	epsmges2p4.samsung.com (Symantec Messaging Gateway) with SMTP id
	3F.CF.09694.E9279926; Fri,  3 Jun 2022 11:31:58 +0900 (KST)
Mime-Version: 1.0
Subject: [PATCH v2 2/5] dt-bindings: phy: Add ARTPEC-8 PCIe phy
From: Wangseok Lee <wangseok.lee@samsung.com>
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
	"kernel@axis.com" <kernel@axis.com>, Moon-Ki Jun <moonki.jun@samsung.com>,
	Sang Min Kim <hypmean.kim@samsung.com>, Dongjin Yang <dj76.yang@samsung.com>
X-Priority: 3
X-Content-Kind-Code: NORMAL
In-Reply-To: <20220603015431epcms2p6203908cebe6a320854136559a32b54cb@epcms2p6>
X-CPGS-Detection: blocking_info_exchange
X-Drm-Type: N,general
X-Msg-Generator: Mail
X-Msg-Type: PERSONAL
X-Reply-Demand: N
Message-ID: <20220603023158epcms2p6949f6cd93926b9e811e1b4d52fbef91b@epcms2p6>
Date: Fri, 03 Jun 2022 11:31:58 +0900
X-CMS-MailID: 20220603023158epcms2p6949f6cd93926b9e811e1b4d52fbef91b
X-Sendblock-Type: AUTO_CONFIDENTIAL
X-CPGSPASS: Y
X-CPGSPASS: Y
CMS-TYPE: 102P
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrPJsWRmVeSWpSXmKPExsWy7bCmhe68oplJBg8nSlksacqweHlI02L+
	kXOsFrtnLGeymDn1DLPF80OzmC0+tahaXHjaw2bxctY9NouGnt+sFkfefGS22H98JZPF5V1z
	2CzOzjvOZjFh1TcWize/X7BbnFucadG69wi7xc47J5gdhD3WzFvD6HF9XYDHgk2lHptWdbJ5
	PLkynclj85J6j74tqxg9jt/YzuTxeZNcAGdUtk1GamJKapFCal5yfkpmXrqtkndwvHO8qZmB
	oa6hpYW5kkJeYm6qrZKLT4CuW2YO0D9KCmWJOaVAoYDE4mIlfTubovzSklSFjPziElul1IKU
	nALzAr3ixNzi0rx0vbzUEitDAwMjU6DChOyM3dfPsBa0C1f8nvaDrYHxAF8XIyeHhICJxM2b
	t9m7GLk4hAR2MEpMa1/A1MXIwcErICjxd4cwSI2wgL3E1J9vGEFsIQEliR1r5jFDxPUlrq/o
	ZgWx2QR0Jf4tfskGMkdE4CyTxM2721lBHGaBOSwS15s/sEJs45WY0f6UBcKWlti+fCvYVE4B
	P4lzX7rYIOIaEj+W9TJD2KISN1e/ZYex3x+bzwhhi0i03jsLVSMo8eDnbqi4lMSCJ4egdlVL
	7P/7mwnCbmCU6L+fCvKYBNDVO64bg4R5BXwltnx6AHYOi4CqxOSZnVBjXCTuXPoDFmcWkJfY
	/nYOM0grs4CmxPpd+hBTlCWO3GKBeaph4292dDazAJ9Ex+G/cPEd855AHaMmMW/lTuYJjMqz
	EAE9C8muWQi7FjAyr2IUSy0ozk1PLTYqMIHHbXJ+7iZGcMrW8tjBOPvtB71DjEwcjIcYJTiY
	lUR4S3ZNTRLiTUmsrEotyo8vKs1JLT7EaAr05URmKdHkfGDWyCuJNzSxNDAxMzM0NzI1MFcS
	5/VK2ZAoJJCeWJKanZpakFoE08fEwSnVwDTtokqHkORqqUm7O+e9K2Dn8Y/Wu8CflGzG+qQg
	9+7+b9Kn2CaelNz0w739uu58vgqXT6w9jLP3PT/6ymuP1J9poZaKDYISB64t0375Wq5mr/Zq
	Dich2bjwKknb8++NfHa/P+C4hYvZilOb67ts5IQn31b0lUz9WX0h5eaufycOJfNU7HxxKeLa
	ROu2czH+zVWpC6Nzk96KpzB47/xn+vXn2153tjXbNSs4buvyzLSuXZz/4dvMH5bnLnBv1gky
	uPTqouuSXPcDu2znqZ7b4yvHNPVVw1djuyvLDKYq1P/n/rTcZ/o2W74tttlKR3Y7rTVPzOs6
	w7yt3z0iMmtyuNU130W7pJh6pygu2npayUiJpTgj0VCLuag4EQDsSJEYYgQAAA==
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20220603015431epcms2p6203908cebe6a320854136559a32b54cb
References: <20220603015431epcms2p6203908cebe6a320854136559a32b54cb@epcms2p6>
	<CGME20220603015431epcms2p6203908cebe6a320854136559a32b54cb@epcms2p6>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220602_193206_603941_BB2FE35B 
X-CRM114-Status: GOOD (  18.69  )
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

changes since v1 :
-'make dt_binding_check' result improvement
-Add the missing property list
-Align the indentation of continued lines/entries

Signed-off-by: Wangseok Lee <wangseok.lee@samsung.com>
---
 .../bindings/phy/axis,artpec8-pcie-phy.yaml        | 70 ++++++++++++++++++++++
 1 file changed, 70 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/axis,artpec8-pcie-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/axis,artpec8-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/axis,artpec8-pcie-phy.yaml
new file mode 100644
index 0000000..ab9766f
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/axis,artpec8-pcie-phy.yaml
@@ -0,0 +1,70 @@
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
+  "#phy-cells":
+    const: 0
+
+  clocks:
+    items:
+      - description: PCIe PHY reference clock
+
+  clock-names:
+    items:
+      - const: ref_clk
+
+  num-lanes:
+    const: 2
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - "#phy-cells"
+  - clocks
+  - clock-names
+  - num-lanes
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    artpec8 {
+        #address-cells = <2>;
+        #size-cells = <2>;
+        pcie_phy: pcie-phy@16c80000 {
+            compatible = "axis,artpec8-pcie-phy";
+            reg = <0x0 0x16c80000 0x0 0x2000>,
+                  <0x0 0x16c90000 0x0 0x1000>;
+            reg-names = "phy", "pcs";
+            #phy-cells = <0>;
+            clocks = <&clock_cmu_fsys 53>;
+            clock-names = "ref_clk";
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
