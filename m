Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1952DCA0EDC
	for <linux-phy@archiver.kernel.org>; Wed, 20 Aug 2025 21:42:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y7W3fpo2CXJGtLkRZra7dDz4bwHbKQtWCd94el56LfI=; b=RU9oNhLl4dLjFn
	TZB3ASU4pwCYvY4MTUT/y+Mfcn5Az4ZTBQxbzv8VeGl6ui1jdlLT9M7bGBCPX/VUfB7MhlzV1ayN5
	OlaFsCYgtq5IuZIiOI8dKl0Ll2vfEtjpEW45rdNWFSxrHsoNy9lq0m/cW+1WWGOD3yPgQa4MC+6LB
	3zAaRoieLKLM3ifdYA1Kb3SykZXVD8jkEAfl9gNmInHzuJBfGDCy3e+OM0+Y7Iaayt7HXwMv0r3na
	mK7gE/qMim2OEiomt9VV2I0jH5e+s/jMErfuYUp9iQHTHwM5r+EM25HHr0brHHv8dgggwJQpkCr4V
	UsfcT9kYpYaRZoyTHUuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoqa8-0000000F19V-3eLB;
	Wed, 20 Aug 2025 21:42:56 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uomS2-0000000EVy9-2ui0
	for linux-phy@lists.infradead.org;
	Wed, 20 Aug 2025 17:18:19 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-45a1b004954so878655e9.0
        for <linux-phy@lists.infradead.org>; Wed, 20 Aug 2025 10:18:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1755710297; x=1756315097; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jd0cJlVtD4YuBE4veqF0I1l636Raj/8hz5v+Q0cDwzM=;
        b=ZOuX6Mdy5KwgUarlWW3E4hdWgO4WPjj3FdgqF2+9Kr9DlnhXbvrREauGXf7SZBYtop
         bsE8RSSZQ0KPKxXyd71SAxHbdh6dk/HOiIpK81HEU/2UmhzBl/PVeSY84aIsfl3F1pwA
         jMHBU0HVrHwXXvrY3WmxEI2FYJrKkYjPvU/HV57R6cH2Nf1v2ca3o9uGvyxz9oc2+dtP
         ZPdmL4EOnbmvxXqSBFjec6mptOlzyhR+fZ3DB64VH6Oe98BnT5EzAjdkCSxomLT+mbVj
         tpLtP5/pvsQ5On5N85FhmKLActVLo1Qy0Mun6csnqvAZV7D/waZHZzIkhaxqI07MYqKy
         sljw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755710297; x=1756315097;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jd0cJlVtD4YuBE4veqF0I1l636Raj/8hz5v+Q0cDwzM=;
        b=B7Wvz+FyGEstMEgkaZXoVa3gsHIBWuGl3dJIAccc/OuTqLIunBZ+TNMm6CueNjovRT
         OpGBfvGhSZm5gghMeL5jkfJii9uvERCLs5LmSrrA/DUekHkhepcvbId/buYi0EZLD9WL
         Vh8xb63dlAvrWdelY6Fn2onaSwvz6h4FpHt9Jg5Id6bSBN8muMEdTlLRjDtvGiRQtrUz
         LcZo0/twzhR16n13gzQIm6wA7oafnGI0BbLRHSMt6asVuD1i2llp6KQE5T2pVX+qoggl
         9aGic2YXNraITO3GsWaebca3b7OZjcry2Z3l0zISroGi+DFyIoI0bBs/1WiNHJ1d98GN
         ch+w==
X-Forwarded-Encrypted: i=1; AJvYcCX20M/t5udk3klSZsZ9g9Bb342nj1+wcEDCxCUMQR5AsI/dFy+TV3DDB9jjVNmtnNeMC54CDTjCjHM=@lists.infradead.org
X-Gm-Message-State: AOJu0YwIwx52vZ/THUKnnNSqsuTdfxoVx//HO0I25seWBD+qLCWg79Dv
	+vL7luQievfoJwo3aWduhJJxM65fcRAYDDFXdPSNhyexEg9Y3JV3s0/n
X-Gm-Gg: ASbGncvLWI0hcZMJhS40DZz7mAdSGXUJjck2w15wX5Qe1tvjfGweZTJMyneoN8o3EF3
	oAmkqqD3/9J9wZVpSR4q39w08bexUIXW82fgvRIETS0HwyEF0tuXTBaX61IYDc6QqOCx+cw+VdY
	4VfqZNcDzzR8FXo7fhIUzRAp6xa3GVUPPXRknDBUJ+JmoKcf9G4HaIC+04+ducw/v2F81+TC8Oe
	CuaKrUa9GN9ZwzdcS3oaAm3IHX8w89SL2e3RZaCOMP/rwYEV7pLoa3Xp0uBhcutJo6jk/baiscj
	I8xzmo6IRk7HIwVaxFBeFdJNDqE8weZ3Jh3Ib9rdApCTxPQ233D4Yz0Pz1OPrnXiY265HrX0B3Z
	NOdK0nBNcwJ/qLCfwvJHdJsFYIw/JmC1NT2GOXUStm47FI/DeGzqMo51nW1cR+yceaPN3FeIP8Q
	==
X-Google-Smtp-Source: AGHT+IGzdd8mJQ6iri2cNB7MnOGxpU/zG8lZAY25Eq5vECsbTOYpF1BVraL10rdUESg6mBOiy+mU4A==
X-Received: by 2002:a05:600c:35c3:b0:456:1dd9:943 with SMTP id 5b1f17b1804b1-45b4b1c14edmr19064945e9.3.1755710296775;
        Wed, 20 Aug 2025 10:18:16 -0700 (PDT)
Received: from biju.lan (host31-53-6-191.range31-53.btcentralplus.com. [31.53.6.191])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b47c2865dsm40319815e9.2.2025.08.20.10.18.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Aug 2025 10:18:16 -0700 (PDT)
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
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH 03/11] dt-bindings: phy: renesas: Document Renesas RZ/G3E USB3.0 PHY
Date: Wed, 20 Aug 2025 18:17:50 +0100
Message-ID: <20250820171812.402519-4-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250820171812.402519-1-biju.das.jz@bp.renesas.com>
References: <20250820171812.402519-1-biju.das.jz@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_101818_734562_E760C80F 
X-CRM114-Status: GOOD (  12.68  )
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

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
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
