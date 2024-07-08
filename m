Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59C2EC3DA42
	for <linux-phy@archiver.kernel.org>; Mon,  8 Jul 2024 12:10:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q3QATbjkBnMjbRcOveuK7Cw7CciRLyOUjYCnifd1hSU=; b=W5RNuVsP4DxPmn
	/I5ntqoAh0IUQwFWtpjhmt9Yb8e7QQfBOgirj2U4bimWQDL5VSJrrpQNiHC8BOQ6OYle/7bwGi1vz
	xc/rV9prDDds4soZC5LS7IuxGK3ndHLETI6rVINrre66zKw03WP4lq8Yy8NB/oDskHGs89s1od4jQ
	xFj9gf/+D9ksfuwfwdWBWSgmxFkMaUHlwSE9aRmCkVIL82LZfsBtKnf+SruhW4uBa79ipmBqaAZIw
	Mkpu5OG6e+buaawIQCNiISVN0MXngB/c8RP1YXHERpzQUk8+q8eH4zI+uGbytoaeouMgK17111LyA
	ijjDUVN2yjWYgq8A7gvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sQnCC-00000003ir8-3zY4;
	Mon, 08 Jul 2024 12:10:16 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sQnC9-00000003ipl-3uW3;
	Mon, 08 Jul 2024 12:10:16 +0000
Received: from localhost (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id B9501412FF;
	Mon,  8 Jul 2024 14:10:12 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
	by localhost (disroot.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VukL3U4tSXAs; Mon,  8 Jul 2024 14:10:11 +0200 (CEST)
From: Yao Zi <ziyao@disroot.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1720440578; bh=W88ii+VfQhuEdGWbttUWogaLqMfwR4mJCLxGUb+XKZA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=FaVrGCUPGQKHQMZ+rI+7D5essaiCHjtjUJKnR19ECuJdP8cSUDVcf6jLBXQLkPVPC
	 /g19/dYim2gSTHwW5cWXCaNJy6Yl2uSxAB26cfwEY95YiZSaglbgaK2FvtCwfnamro
	 APHVPDhua17q7A51wzGg0CPn6j3lPCHHDybuONtvRiInCeRKNfwmOjnKNHF6F6TU0v
	 zWLMaaeL9KW4BTWVgPYES4kmRY0MsAn6OyYNfo0Cx+aD5j7/XsacPhJZ1L0Fs9Mfj+
	 U46Evwial+surXNRiHSVSMJS00zTx7eTlhrnmz9ZAeo1eLIpM6BrbUpYFbUrrxRraj
	 +D8yhRBrXxa9Q==
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen Wang <unicorn_wang@outlook.com>,
	Inochi Amaoto <inochiama@outlook.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Jisheng Zhang <jszhang@kernel.org>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org
Cc: Yao Zi <ziyao@disroot.org>
Subject: [PATCH 1/3] dt-bindings: phy: add YAML schema for cv1800-usb-phy driver bindings
Date: Mon,  8 Jul 2024 12:08:28 +0000
Message-ID: <20240708120830.5785-2-ziyao@disroot.org>
In-Reply-To: <20240708120830.5785-1-ziyao@disroot.org>
References: <20240708120830.5785-1-ziyao@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240708_051014_250193_3D7B1B43 
X-CRM114-Status: GOOD (  10.73  )
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

cv1800-usb-phy driver supports USB 2.0 phys integrated in Sophgo
Cv1800/SG200x SoCs. Add YAML schema for its binding.

Signed-off-by: Yao Zi <ziyao@disroot.org>
---
 .../bindings/phy/sophgo,cv1800-usb-phy.yaml   | 67 +++++++++++++++++++
 1 file changed, 67 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/sophgo,cv1800-usb-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/sophgo,cv1800-usb-phy.yaml b/Documentation/devicetree/bindings/phy/sophgo,cv1800-usb-phy.yaml
new file mode 100644
index 000000000000..0403d899e23b
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/sophgo,cv1800-usb-phy.yaml
@@ -0,0 +1,67 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright 2019 BayLibre, SAS
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/sophgo,cv1800-usb-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Sophgo CV1800 USB PHY
+
+maintainers:
+  - Yao Zi <ziyao@disroot.org>
+
+properties:
+  compatible:
+    enum:
+      - sophgo,cv1800-usb-phy
+
+  reg:
+    maxItems: 2
+
+  reg-names:
+    items:
+      - const: phy
+      - const: pin
+
+  clocks:
+    maxItems: 4
+
+  clock-names:
+    items:
+      - const: apb
+      - const: 125m
+      - const: 33k
+      - const: 12m
+
+  "#phy-cells":
+    const: 0
+
+  dr_role:
+    enum:
+      - host
+      - device
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - clocks
+  - clock-names
+  - "#phy-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/sophgo,cv1800.h>
+    usb_phy: usb-phy@3006000 {
+        compatible = "sophgo,cv1800-usb-phy";
+        reg = <0x300600 0x60>, <0x3000048 0x4>;
+        reg-names = "phy", "pin";
+        clocks = <&clk CLK_APB_USB>,
+                 <&clk CLK_USB_125M>,
+                 <&clk CLK_USB_33K>,
+                 <&clk CLK_USB_12M>;
+        clock-names = "apb", "125m", "33k", "12m";
+        #phy-cells = <0>;
+    };
-- 
2.45.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
