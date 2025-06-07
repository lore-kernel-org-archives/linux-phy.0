Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4431BC61DB8
	for <linux-phy@archiver.kernel.org>; Sat,  7 Jun 2025 21:27:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iu44eNKB/ZhTel7XNFUh+peaqRVtdx+A000W49CxIIA=; b=WI9bokMeeznUpI
	IJ1moKkW4CfigieNvwhPe7ECTSEK4XcqkwAsValuX0l+awhJDdQDDzvn30bezZEvCk6aELskvaC/v
	DpCTjk8fg2b1h9Wr/O+Iz+y+csCSW5ZBP4mZNahX1Ng6J/pJ7n66r2+FGhxFsZGivPmnlKDYofzgu
	ixbd8Pz/9zm8gV4DnJ4ICqOhGWEKclJ9ETfvG/EKTnbc8jfhJPoAjGHjSPhFMbhhYY9xUm9Tmii4t
	LyDSpjNzbYb7uT7nx88IniFQDafWM3yY9dXhYk/qUoyrRSXmDyDaqsag0wKq1wUVNUTVXIOQvCVMz
	Wet+Klfz78gHyBN1Thfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uO14j-000000027kz-48sd;
	Sat, 07 Jun 2025 21:27:37 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uO12d-000000027Cv-1Keq
	for linux-phy@lists.infradead.org;
	Sat, 07 Jun 2025 21:25:28 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 3C58644021;
	Sat,  7 Jun 2025 21:25:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E353AC4CEF0;
	Sat,  7 Jun 2025 21:25:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749331526;
	bh=ea5qHAZuGW1xZWYr28L6Te4D1gCaDMmRu4ewn8DvuFY=;
	h=From:To:Cc:Subject:Date:From;
	b=ql4/wObDTEORzkHj/UTH276EqnroWJzooq5a7dKJe10eWXzvtGR8Q3Mx+SR/tOu8Z
	 XRbZRFW6zrU2rSLNbbKpHBbn51RMz2udNOXO5ANvJAQq/IpIB8dSpFD93jLihih09Z
	 Z8hPCCsKtbOrXLnXGth+XbEMFOtpI2NKLL/oxbBkVHNPf+iF3MnNr6IWOnDgUVJG7x
	 GV8ZDyVbtCYENKkEaSzopK1rZ9F3D3KXR5Q5aTR4mlKBrkE9RDCjoqujlcTzKjZShh
	 vsYefLGHTUO2RDj9YaEfCF0O4qNNOTC4l8NGB0NNi0RHCCIewAaayy1n444vd/NknP
	 LiXI9M9iBugFQ==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Zhangfei Gao <zhangfei.gao@linaro.org>
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: phy: Convert hisilicon,hi6220-usb-phy to DT schema
Date: Sat,  7 Jun 2025 16:25:23 -0500
Message-ID: <20250607212524.741770-1-robh@kernel.org>
X-Mailer: git-send-email 2.47.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250607_142527_375073_6F82F0E6 
X-CRM114-Status: GOOD (  10.32  )
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

Convert the HiSilicon HI6220 USB PHY binding to DT schema format. It's a
straight forward conversion.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../phy/hisilicon,hi6220-usb-phy.yaml         | 35 +++++++++++++++++++
 .../bindings/phy/phy-hi6220-usb.txt           | 16 ---------
 2 files changed, 35 insertions(+), 16 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/hisilicon,hi6220-usb-phy.yaml
 delete mode 100644 Documentation/devicetree/bindings/phy/phy-hi6220-usb.txt

diff --git a/Documentation/devicetree/bindings/phy/hisilicon,hi6220-usb-phy.yaml b/Documentation/devicetree/bindings/phy/hisilicon,hi6220-usb-phy.yaml
new file mode 100644
index 000000000000..376586a666e7
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/hisilicon,hi6220-usb-phy.yaml
@@ -0,0 +1,35 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/hisilicon,hi6220-usb-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Hisilicon hi6220 USB PHY
+
+maintainers:
+  - Zhangfei Gao <zhangfei.gao@linaro.org>
+
+properties:
+  compatible:
+    const: hisilicon,hi6220-usb-phy
+
+  '#phy-cells':
+    const: 0
+
+  phy-supply:
+    description: PHY power supply.
+
+  hisilicon,peripheral-syscon:
+    description: Phandle to the system controller for PHY control.
+    $ref: /schemas/types.yaml#/definitions/phandle
+
+additionalProperties: false
+
+examples:
+  - |
+    usbphy {
+        compatible = "hisilicon,hi6220-usb-phy";
+        #phy-cells = <0>;
+        phy-supply = <&fixed_5v_hub>;
+        hisilicon,peripheral-syscon = <&sys_ctrl>;
+    };
diff --git a/Documentation/devicetree/bindings/phy/phy-hi6220-usb.txt b/Documentation/devicetree/bindings/phy/phy-hi6220-usb.txt
deleted file mode 100644
index f17a56e2152f..000000000000
--- a/Documentation/devicetree/bindings/phy/phy-hi6220-usb.txt
+++ /dev/null
@@ -1,16 +0,0 @@
-Hisilicon hi6220 usb PHY
------------------------
-
-Required properties:
-- compatible: should be "hisilicon,hi6220-usb-phy"
-- #phy-cells: must be 0
-- hisilicon,peripheral-syscon: phandle of syscon used to control phy.
-Refer to phy/phy-bindings.txt for the generic PHY binding properties
-
-Example:
-	usb_phy: usbphy {
-		compatible = "hisilicon,hi6220-usb-phy";
-		#phy-cells = <0>;
-		phy-supply = <&fixed_5v_hub>;
-		hisilicon,peripheral-syscon = <&sys_ctrl>;
-	};
-- 
2.47.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
