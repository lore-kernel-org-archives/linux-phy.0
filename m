Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2A1CC5B543
	for <linux-phy@archiver.kernel.org>; Sat,  7 Jun 2025 21:27:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ehJLPQ4mupYKtgnLyQYmwwg5vT7JfBfoCAKHiV2XXCk=; b=J3IGIMA/hws4CT
	9keB0rVzXJF2VtpA+RDuBu8eBFf0ja3lRmj54/DDDR9hkY+X5g1q8RU0wR4Sg2jFEEmJ5PCf32WZO
	sHes++FgoOwiUwIturL8VD3xQE3c2+fVNrJlfJ9o6H4EZh1vqunZqhEezHTt4EQ4kp3N/55l7gUuV
	an/sBjfkwBxGXhRY6NUY7/jxObQYRDo3TjgknqF/Twd2YI2m3ELToCtkRiMw5Ulc5cqr/Qc2ejk3P
	Ic4JDjqQpNSypHWzv+Aty/1fBnNrRj92vpXSnxMrDnEjG0LMwF0WL7iIlE5h4dzG9UyDwU6nV87O5
	Q4+CgbHc2jBzZRfKP5Ug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uO14j-000000027km-2t2f;
	Sat, 07 Jun 2025 21:27:37 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uO12Z-000000027BK-2Bwu
	for linux-phy@lists.infradead.org;
	Sat, 07 Jun 2025 21:25:24 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 238505C58A2;
	Sat,  7 Jun 2025 21:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 818EAC4AF09;
	Sat,  7 Jun 2025 21:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749331522;
	bh=uY8/U0KeeEqTksjlG8Tey8xZTBa6AbGenLLUPHv2utY=;
	h=From:To:Cc:Subject:Date:From;
	b=Q/Z5F9r8+sjhbCx38iB1BgJcln0WwPIAZAVs+JOcA9mS1jU6Txgs9gzUg0tUzOq7Q
	 m+/ou88NXCfFJWRY4O7aBw12VilM8lsVVSMkEbsQ6e8ZZn4/yfpxkyx71NRZS4yJIs
	 58iS2kwytdlm6IRsW+dtGgzfNwKPyh4d6U1zfYRWc4+ZA/Ljn1E/Nflm4sEPKk3qRu
	 mkGV2ifM1iocYsE9yFmfxvfPFw8PY59DNN4l/cSvw6WWssforDFOTzL7WiKhoyi2cS
	 JVAE6IkxZRcdPDXpUa8ygvQrJMahypiVULaIDN9bhSzr/ID/cg2A07PAcfkT3vBkg6
	 of4AG3mTgXTjg==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jiancheng Xue <xuejiancheng@huawei.com>
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: phy: Convert hisilicon,hix5hd2-sata-phy to DT schema
Date: Sat,  7 Jun 2025 16:25:18 -0500
Message-ID: <20250607212520.741588-1-robh@kernel.org>
X-Mailer: git-send-email 2.47.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250607_142523_646022_57DCA000 
X-CRM114-Status: GOOD (  10.63  )
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

Convert the HiSilicon HIX5HD2 SATA PHY binding to DT schema format. It's
a straight forward conversion.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../phy/hisilicon,hix5hd2-sata-phy.yaml       | 48 +++++++++++++++++++
 .../devicetree/bindings/phy/hix5hd2-phy.txt   | 22 ---------
 2 files changed, 48 insertions(+), 22 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/hisilicon,hix5hd2-sata-phy.yaml
 delete mode 100644 Documentation/devicetree/bindings/phy/hix5hd2-phy.txt

diff --git a/Documentation/devicetree/bindings/phy/hisilicon,hix5hd2-sata-phy.yaml b/Documentation/devicetree/bindings/phy/hisilicon,hix5hd2-sata-phy.yaml
new file mode 100644
index 000000000000..2993dd6b40a8
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/hisilicon,hix5hd2-sata-phy.yaml
@@ -0,0 +1,48 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/hisilicon,hix5hd2-sata-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: HiSilicon hix5hd2 SATA PHY
+
+maintainers:
+  - Jiancheng Xue <xuejiancheng@huawei.com>
+
+properties:
+  compatible:
+    const: hisilicon,hix5hd2-sata-phy
+
+  reg:
+    maxItems: 1
+
+  '#phy-cells':
+    const: 0
+
+  hisilicon,peripheral-syscon:
+    description: Phandle of syscon used to control peripheral
+    $ref: /schemas/types.yaml#/definitions/phandle
+
+  hisilicon,power-reg:
+    description: Offset and bit number within peripheral-syscon register controlling SATA power supply
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    items:
+      - description: Offset within peripheral-syscon register
+      - description: Bit number controlling SATA power supply
+
+required:
+  - compatible
+  - reg
+  - '#phy-cells'
+
+additionalProperties: false
+
+examples:
+  - |
+    phy@f9900000 {
+        compatible = "hisilicon,hix5hd2-sata-phy";
+        reg = <0xf9900000 0x10000>;
+        #phy-cells = <0>;
+        hisilicon,peripheral-syscon = <&peripheral_ctrl>;
+        hisilicon,power-reg = <0x8 10>;
+    };
diff --git a/Documentation/devicetree/bindings/phy/hix5hd2-phy.txt b/Documentation/devicetree/bindings/phy/hix5hd2-phy.txt
deleted file mode 100644
index 296168b74d24..000000000000
--- a/Documentation/devicetree/bindings/phy/hix5hd2-phy.txt
+++ /dev/null
@@ -1,22 +0,0 @@
-Hisilicon hix5hd2 SATA PHY
------------------------
-
-Required properties:
-- compatible: should be "hisilicon,hix5hd2-sata-phy"
-- reg: offset and length of the PHY registers
-- #phy-cells: must be 0
-Refer to phy/phy-bindings.txt for the generic PHY binding properties
-
-Optional Properties:
-- hisilicon,peripheral-syscon: phandle of syscon used to control peripheral.
-- hisilicon,power-reg: offset and bit number within peripheral-syscon,
-	register of controlling sata power supply.
-
-Example:
-	sata_phy: phy@f9900000 {
-		compatible = "hisilicon,hix5hd2-sata-phy";
-		reg = <0xf9900000 0x10000>;
-		#phy-cells = <0>;
-		hisilicon,peripheral-syscon = <&peripheral_ctrl>;
-		hisilicon,power-reg = <0x8 10>;
-	};
-- 
2.47.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
