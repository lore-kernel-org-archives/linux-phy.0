Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78EC9CCF9E9
	for <linux-phy@archiver.kernel.org>; Wed, 29 Oct 2025 08:40:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pmUGzOZ6urLCQqpIvoOE9dUaAvnKqspZzg6BegRwWeg=; b=UWF5TjMlygSNzP
	CL5q85e+Lj28Amx2LbXrOk181+cUnvi3+TljHloEEPK7793R9/xvYfpvzMaTQyEqboJsHW0x8ExTt
	5XCU8FnlC1H/e4AemKQO8GWNm55l+7ae2LwRlN3CeNKfSaHt2E/nOFE1bXgkMURfCQM1K9tMWoHUQ
	ctJIYWobhWplq3ZtrwGla9C7MHh9M2vhNGuJCwoO/HJL0PnGv1/KsAxwlqNiDE9duCzmnlbqE9ATR
	lbRP1j/eiZ2FeETidagRkZVjUqCmq8sSV2OphLbRuLVsJMFcYxqljdL/+zoej2Jk4k01ft3taOqkc
	eqYo27FoqUUtmA15CrKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vE1jZ-00000000LYN-0BoK;
	Wed, 29 Oct 2025 08:40:45 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vE1jW-00000000LXL-2MZB
	for linux-phy@lists.infradead.org;
	Wed, 29 Oct 2025 08:40:43 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-47112edf9f7so45118795e9.0
        for <linux-phy@lists.infradead.org>; Wed, 29 Oct 2025 01:40:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761727240; x=1762332040; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5zDKBowBIfgO2OmsFcxAdae/8qYwuZcAE+WV1T/cljM=;
        b=fIXLpfBtbZ2tNSfxp+6VrTD0zCE82YrFOiDvKGdjfluuOqo+if0BSnqe5DTsvcljGK
         9GItmq4sK/LudTUTBFAJ7Rocj0Z+IdeWIbn3bvfnAYN20/f+8NyIHq8UOuIBjulcE2H8
         y1YbqiFbQnWOkyk5juT/+u2uc/Pyq9BOdEqINgxFxwgBmV+PRVWeNibM2ms9CXQVcicS
         bdJFlKnd+l26lanPRZ/gWDqAwUe2KypsrTiFlrTjtn3uULcipUNdwyoGSmHcdTqcR/RC
         FLiDkJ96JqOB/55EQFAh+nlxr6nD0CPjCe5GN4AmcwE9lSgtMw+PFd+MYsTgDnHzDFXJ
         +r9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761727240; x=1762332040;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5zDKBowBIfgO2OmsFcxAdae/8qYwuZcAE+WV1T/cljM=;
        b=l72QgMi4NuTX2ZBvCRIZTk84706zwuUiD+yc7xYaaSZznvYAQh6Eiitl0H0pDGim2j
         7bgz5avmrfBsLKj/fAafur5aS+7ITQ2iFQYuk6bSumuMkuIjJQQ0IWKDpI9j5PJmW1t3
         Wl1y9DLpBeKQTPn39YFa2PjmC7DgOx61dHO/v7XRykMn0uRpVE1P8TMIijjvJt0bkBHS
         dB4+c/RXYYiT47zWWK4t+wLX5EzLYnh5aW1n/Mbgjg1Qh7LsFY1AnYnRf2EGRNSdSNcy
         f8P6fow+vV3Ic9FXQzqdDvOeCtwAAkJbgkdDl5wnXr5FO5wNE7o1CbuhHc+ahhzmfyEK
         8shQ==
X-Forwarded-Encrypted: i=1; AJvYcCWpsW6G2Dt5Lna/H8u8FyKX95gEZTM6lEU57eWAoJpz9XoLQMkMl3JKx3P4qFSoSprC38b33kBlhZM=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw2qrA6uaCFxdkotWn5awffKlWbip7XUQ9yKD7i8LTuJtnUk8/B
	AeNzLv9rP/1cjDXTgjOAdd7zBsn6dyaKTk6hDPCgm9/W+rniOphZhWCS
X-Gm-Gg: ASbGnctdMV2+ROPEM1iPaYGeH7rAyex8zAvaMacivl/Q8v7Yq8YjmCFfsknksI/e1YC
	P3LNNSHUWUGd45AFE1aoYZM3cU6WRZZu+SrOIvt9Y6iY3qMb3gsgMj8njqLWiClNmqN0bxmTWD5
	X26jMJ5SGvk74a2H2Q8sWE/hUpAqJg8yi6O3bxUrrUYFc5qO0bprOxpB8yoFeGfPNWoZ6tZOxPI
	Hdd3Foh9p3jJZo/Wh+519B4HVf9S+vPCHyOZHKOIRUktDUqsRb/6F2+niub9v0sqwgxBTOTXTsw
	WuF+qJFMCHLdQmYXcKbJA5f6pjkc5CPlDl4vpup4YcNBWpZeu8nPeqQbHH9wD5z5i+Qbo6JjITk
	NH/KX74MRqhdiwbFAe/iIqZhE9Bf9zpb0h9/lcATvz7dmPZMnRcB/tcHgpgY1bvtQJF5fuZd3Pm
	cpuY9zoVJToxTMAVvAGNVD5uLk2veYSnJbnTKlP35n9f46f6mCtRHqVCikapVi
X-Google-Smtp-Source: AGHT+IF3LoH+MVR8GJt0HNUZBmCSpCGxlcDgvQw6PVT+Io7cZd3fZ9aRwEFQRwsDZ93XErw9fNatZA==
X-Received: by 2002:a05:600c:4e91:b0:46e:39e1:fc27 with SMTP id 5b1f17b1804b1-4771e16596fmr20457285e9.5.1761727239965;
        Wed, 29 Oct 2025 01:40:39 -0700 (PDT)
Received: from biju.lan (host86-162-200-138.range86-162.btcentralplus.com. [86.162.200.138])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4771e3a88fdsm39485785e9.10.2025.10.29.01.40.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 01:40:39 -0700 (PDT)
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
Subject: [PATCH v4 1/2] dt-bindings: phy: renesas: Document Renesas RZ/G3E USB3.0 PHY
Date: Wed, 29 Oct 2025 08:40:33 +0000
Message-ID: <20251029084037.108610-2-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251029084037.108610-1-biju.das.jz@bp.renesas.com>
References: <20251029084037.108610-1-biju.das.jz@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251029_014042_622249_06599B73 
X-CRM114-Status: GOOD (  12.22  )
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
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
v3->v4:
 * Collected tag from Geert.
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
