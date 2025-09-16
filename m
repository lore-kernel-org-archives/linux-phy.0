Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96E2BCAC599
	for <linux-phy@archiver.kernel.org>; Tue, 16 Sep 2025 15:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5cI1cllVK1R6xIXrYwFOWTVLVu8qVdCkqkgNOeyGahU=; b=yAZ/t6roFZZa5i
	kIN1BONvtFf0kYqG/OETfmtTlrcjxjAS0L6vjMwZIFE1Xgt3f9H1tUzCl99bDgA1gkHpteNYnptmm
	OmzCISFzkomMMEYiBHWcVFuHBntGrCV9UpdMSbJp5UTalfiJ+Uv7G6bdDQ7GNibSimmxmaLJy2g6H
	1vrpWW/RsnVqioVkFeReTXH1MfJ8s0iYIlAzjMyF9LKAKbrkDFxI+IyscG2FUmRTQOe6nMCEt2+4s
	mYXETIl/sVygR13//ZEWxvljx97dBGIvhQUk4hq/dL1NfxTCqgCWL3NMI64/ic1BB3DZIn8M1ld0s
	dKojrr7h8jeXAWmkkF6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyXD2-00000008E6f-1bsu;
	Tue, 16 Sep 2025 15:03:08 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyXCw-00000008E3E-3jEr
	for linux-phy@lists.infradead.org;
	Tue, 16 Sep 2025 15:03:06 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-45ed646b656so47756705e9.3
        for <linux-phy@lists.infradead.org>; Tue, 16 Sep 2025 08:03:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758034981; x=1758639781; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g0POxPhipsvlSGEEjXqnf+oNP1ubhTQm01K/BJGNzx0=;
        b=EiU3HPVfodZNnFSM+n4QRlSKrJN1W40RSKkHYTDxeXNK7f11EHTrGe0f9XP0TjR8aU
         MpZDh8L1di2R14aCTaMWwXf3xizXL62oShjDj57QGvFCXXM7JTYmT/Bp9PkvL1jWItfn
         tnYP+aARhsaIcJKc6fPk0yAmhb/9ersH1zk2rcL5aHGgVpdS9YSZm2PuMyOK718IaSTw
         7G0PpeVj1HBoy1/yue/VEt1Mc3TpbSZ0mkTwUhFnDoOYDXr9Zo0GZgd8FI3TvP2zEL/a
         5TnJ3bR4h4IW3U6f2aS+RRkZq+l+4HcE+rvwzxme+W6/SyZYFeKRIrc88MM9SDzfKnTZ
         EF2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758034981; x=1758639781;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g0POxPhipsvlSGEEjXqnf+oNP1ubhTQm01K/BJGNzx0=;
        b=D/ksPESESfbmA5ewcw+9SQrhS1+XdPs+kBtSghl6qsVjluhUQEIB/uQ76pwSL1gLOQ
         f9ogj+k9qOpZeSZL86NQikvzJ6DewxtsHDST03bm50uncVcpDASXpjStnyouqThKKGge
         8Y/S0lgkGx/Yk5YGF2CY2aCgyM/H2jxX66hieos1NjEi+5RmeqX1aseMmQ2m/QdGC4VL
         tllkbi+w2T92kMnzkD2JNol+0TNiqnv8nSYDH+mjlDqi68jHYhVhIlb1kmwWbVfMzZYU
         9VWzMlXiUIFc3EeRgwHwcyAgC54eVgKUYem/ZBAZvx2UFS89WVfgsPF8XaPgOoNlUbbD
         a3zA==
X-Forwarded-Encrypted: i=1; AJvYcCXYUtL3fP1A9cGJPPP/8EZb71AbVU/GkwryM/OXtqKT9rPZnQ2B6brPkR//QVApEzVwSrdHWQq2eXw=@lists.infradead.org
X-Gm-Message-State: AOJu0YxNbOOmAK2CqoV4QZCy8HAkO3PhFrcdXOUvxTJv03IIYvT8nTp8
	HnBUUMOV9a2l0cii067F3yfpqqKNqMlPyRvM/0eCx1zg9E4PSbLeufC+
X-Gm-Gg: ASbGncuClUlCVCDKOiLA8J2Ki/4ZLxxVVgEBoXia4Z6/10B/kIKb/yWIB78Gw8E6gSK
	ebfebAmL8OPBucXYkSTiu5RNP5qrfvzMXu6MvKUBhDNiVHzQlZLlCZ6UqvG/Xq6QKLlrvMqeDuu
	9Cac5Dxe92fXw0R9P0fIFzUoFCGbaz9fx4IzTo9RFukdCy2qykCb2kahmeIOfhjHosVcDzWr0l6
	D9rdRROPF1RCtixcYcPtG+IfjZW2QCWCsLIMbCiBe4AT5vfUYSUGAaAz0SCrK0IKCcf+jYRrIWo
	G4irkJL00+N06j4H3sCDRLyRATlr4vuSLIqzaqwn7M/fHS9FSWXuOqbUBeP8uFQYEGJAVCck8CG
	wJJUsTrOkLl2rITXXa3Bm7VDWKJJgTZNSFsn0fauZ95/750uyuI4KigGkWwAaC+VIEY5wval42g
	IwUQ==
X-Google-Smtp-Source: AGHT+IGmHQXV8zQi20PQ52rZ3kLQAtv5qtMfgvNSWWyv309LLe9kOE/hMbr49hkrS3kibkVDg/cw+w==
X-Received: by 2002:a05:6000:605:b0:3ea:e0fd:290b with SMTP id ffacd0b85a97d-3eae0fd2d75mr7793579f8f.40.1758034979184;
        Tue, 16 Sep 2025 08:02:59 -0700 (PDT)
Received: from biju.lan (host86-139-30-37.range86-139.btcentralplus.com. [86.139.30.37])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3ecdc2deb20sm932154f8f.47.2025.09.16.08.02.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Sep 2025 08:02:58 -0700 (PDT)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v3 1/9] dt-bindings: phy: renesas: Document Renesas RZ/G3E USB3.0 PHY
Date: Tue, 16 Sep 2025 16:02:37 +0100
Message-ID: <20250916150255.4231-2-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250916150255.4231-1-biju.das.jz@bp.renesas.com>
References: <20250916150255.4231-1-biju.das.jz@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250916_080302_945415_C340621D 
X-CRM114-Status: GOOD (  12.58  )
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

From: Biju Das <biju.das.jz@bp.renesas.com>

Document Renesas RZ/G3E USB3.0 PHY. This IP is connected between
USB3HOST and PHY module. The main functions of the module are
as follows:
 - Reset control
 - Control of PHY input pins
 - Monitoring of PHY output pins

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v2->v3:
 * No change.
v1->v2:
 * Collected tag.
---
 .../bindings/phy/renesas,rzg3e-usb3-phy.yaml  | 63 +++++++++++++++++++
 1 file changed, 63 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/renesas,rzg3e-usb3-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/renesas,rzg3e-usb3-phy.yaml b/Documentation/devicetree/bindings/phy/renesas,rzg3e-usb3-phy.yaml
new file mode 100644
index 000000000000..b86dc7a291a4
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/renesas,rzg3e-usb3-phy.yaml
@@ -0,0 +1,63 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/renesas,rzg3e-usb3-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Renesas RZ/G3E USB 3.0 PHY
+
+maintainers:
+  - Biju Das <biju.das.jz@bp.renesas.com>
+
+properties:
+  compatible:
+    const: renesas,r9a09g047-usb3-phy
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: APB bus clock
+      - description: USB 2.0 PHY reference clock
+      - description: USB 3.0 PHY reference clock
+
+  clock-names:
+    items:
+      - const: pclk
+      - const: core
+      - const: ref_alt_clk_p
+
+  power-domains:
+    maxItems: 1
+
+  resets:
+    maxItems: 1
+
+  '#phy-cells':
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - power-domains
+  - resets
+  - '#phy-cells'
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/renesas,r9a09g047-cpg.h>
+
+    usb-phy@15870000 {
+        compatible = "renesas,r9a09g047-usb3-phy";
+        reg = <0x15870000 0x10000>;
+        clocks = <&cpg CPG_MOD 0xb0>, <&cpg CPG_CORE 13>, <&cpg CPG_CORE 12>;
+        clock-names = "pclk", "core", "ref_alt_clk_p";
+        power-domains = <&cpg>;
+        resets = <&cpg 0xaa>;
+        #phy-cells = <0>;
+    };
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
