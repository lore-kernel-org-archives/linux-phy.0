Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6131EC77B61
	for <linux-phy@archiver.kernel.org>; Thu, 27 Apr 2023 19:07:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8S2k4IlVpfXix0xpBwZSojahoZKYOwJorCNpwJMJelA=; b=kgTmgrOonmwpOD
	BxC2anVJ4eu67M+ei4kTbKNDuJX90/kQDWw1slFQlDFZn4Fqxz6nygNv6BDcyitdwsIeKQE5Ut+p9
	o/0wEYPnToopKn7/W7+rAc5a7FO6NUSvXCHmwo7fQvjA0jkvfR4yIDzzrPKF2IYZ8HmUcT1QOEEGQ
	Piz9B72fImBNddvTlGzyqNPmm7eO8wBVcJoz3ZUVqrsRawp+6liqYsJC+9HE/QsWBh0pqLhZGDoc5
	FFTMwsDYoW3SdQiNcnuAxw0NgX5hDNV2tlTwqzZ4v70Mh8nKscdLN8gMHMrbaLPBcY/wHtpwR9UZ9
	y1Sd6fzSMmA1B7Q/3dEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ps6xs-007IEK-06;
	Thu, 27 Apr 2023 19:07:36 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ps6xo-007ICk-2q
	for linux-phy@lists.infradead.org;
	Thu, 27 Apr 2023 19:07:34 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-3f315712406so35555385e9.0
        for <linux-phy@lists.infradead.org>; Thu, 27 Apr 2023 12:07:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682622447; x=1685214447;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1DD/i3pbFgHoXQYJbjBQbgWQpfiH0mY/V+lPtAi5i5E=;
        b=KYfywVJpr98BpGpUIMqxiOWLoVzT8wTs6KkJbyntKqr1amFwN4b1tANgZotb31/3Tr
         dV1pjRe8tKdaAl6HOWDQ3K+bZo7pMh76x84iLn4BaG7KwdzQFAfOMomj7I0V9G3gA76H
         8CJYQjapq5+VBAmdu916oOuPUT91BUQAlsLKLVaJnt/vPlm62OaJ+3v/MxmMh07DDnml
         3SIAiVH5I1m5oYEc8JJMxPZjtE2jLpHMZi1Px2lgsUXW+iv2G7F4qytfXTfdJTXSgEYa
         YilTrc3ZX4Hv+mzrIdJduqriNZDI2f554NjTYB5tqQNCSXrpx2+uM23KE0KSAt/CEW8L
         qyFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682622447; x=1685214447;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1DD/i3pbFgHoXQYJbjBQbgWQpfiH0mY/V+lPtAi5i5E=;
        b=SM/evZCa4XYm0n4pH1VOS1n1CaOz88W/WTIKzXb+847K54YtdBsFgI6jx/bBmusWpz
         gmujV7Rz7bC8oAfGeWIh/yyQ+SFpUUYpPAOYNG+bWZaZt9DdvEvogWgFdhYSS/GwIGB3
         DVeyYhW15yMZD1rOOw9oG1HYuwlBSZ2H9HzMfO2CL+/3Q5lxVtXYBnO1r+0PGHqcChqP
         genGZWUbnzFWJ6AoFBLfkXb0DFKLADvmNNp/kCTGQz1VDSMVLB8JJmv0l1lkcF4UkxCh
         nCB+K7dfipn7Nx6Epzkd+F/hNdfU0b74s96ARccaVvcKzYrhrp1eXpdD5Or3FPXowppw
         jm4g==
X-Gm-Message-State: AC+VfDwfpNdV2LzS5Pc0QrRsbz50gvNGR87hs3CKpHQ0e4wYEQIaHhXE
	hNvkKUDpZthPXOEk7HkCTq0=
X-Google-Smtp-Source: ACHHUZ6YOdz4pEj5ILXL0eZIKrBh1KFvZPGv9RzTwKeNdO3k5tHQ12aCAisCbRh5jM2+tRbYYlKFlw==
X-Received: by 2002:adf:f5c1:0:b0:2f5:dad1:41a4 with SMTP id k1-20020adff5c1000000b002f5dad141a4mr2302395wrp.6.1682622447461;
        Thu, 27 Apr 2023 12:07:27 -0700 (PDT)
Received: from standask-GA-A55M-S2HP ([188.123.113.247])
        by smtp.gmail.com with ESMTPSA id d14-20020a5d538e000000b002efac42ff35sm19217573wrv.37.2023.04.27.12.07.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Apr 2023 12:07:27 -0700 (PDT)
Date: Thu, 27 Apr 2023 21:07:25 +0200
From: Stanislav Jakubek <stano.jakubek@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>
Cc: bcm-kernel-feedback-list@broadcom.com, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: phy: brcm,kona-usb2-phy: convert to YAML
Message-ID: <20230427190725.GA7730@standask-GA-A55M-S2HP>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230427_120732_936292_C4388529 
X-CRM114-Status: GOOD (  13.25  )
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

Convert Broadcom Kona family USB 2.0 PHY bindings to DT schema.

Signed-off-by: Stanislav Jakubek <stano.jakubek@gmail.com>
---
 .../bindings/phy/brcm,kona-usb2-phy.txt       | 15 --------
 .../bindings/phy/brcm,kona-usb2-phy.yaml      | 36 +++++++++++++++++++
 2 files changed, 36 insertions(+), 15 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/phy/brcm,kona-usb2-phy.txt
 create mode 100644 Documentation/devicetree/bindings/phy/brcm,kona-usb2-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/brcm,kona-usb2-phy.txt b/Documentation/devicetree/bindings/phy/brcm,kona-usb2-phy.txt
deleted file mode 100644
index 3dc8b3d2ffbb..000000000000
--- a/Documentation/devicetree/bindings/phy/brcm,kona-usb2-phy.txt
+++ /dev/null
@@ -1,15 +0,0 @@
-BROADCOM KONA USB2 PHY
-
-Required properties:
- - compatible: brcm,kona-usb2-phy
- - reg: offset and length of the PHY registers
- - #phy-cells: must be 0
-Refer to phy/phy-bindings.txt for the generic PHY binding properties
-
-Example:
-
-	usbphy: usb-phy@3f130000 {
-		compatible = "brcm,kona-usb2-phy";
-		reg = <0x3f130000 0x28>;
-		#phy-cells = <0>;
-	};
diff --git a/Documentation/devicetree/bindings/phy/brcm,kona-usb2-phy.yaml b/Documentation/devicetree/bindings/phy/brcm,kona-usb2-phy.yaml
new file mode 100644
index 000000000000..d7faeb81f7a7
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/brcm,kona-usb2-phy.yaml
@@ -0,0 +1,36 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/brcm,kona-usb2-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Broadcom Kona family USB 2.0 PHY
+
+maintainers:
+  - Florian Fainelli <f.fainelli@gmail.com>
+
+properties:
+  compatible:
+    const: brcm,kona-usb2-phy
+
+  reg:
+    maxItems: 1
+
+  '#phy-cells':
+    const: 0
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
+    usb-phy@3f130000 {
+        compatible = "brcm,kona-usb2-phy";
+        reg = <0x3f130000 0x28>;
+        #phy-cells = <0>;
+    };
+...
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
