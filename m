Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ABD83C5DF74
	for <linux-phy@archiver.kernel.org>; Tue, 18 Aug 2026 14:30:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+cXC9eWb/BDXFtFdSYUHO6/1FLopfPqGBsVghr90b4w=; b=IsNzKj5QZafqCj
	Gs4gWjX4dHSOTIJtx9M03eBNxq3jeh7J9q8ppGCYgoTOfMtg3hoCJ8yXHsShq3wdrgrY9wvO8O0GP
	5nSjNiZxkv65Jds/72U5VDNiUU6dkLK0XZZZFGZNe6XtQIri+nYyHd4hYYvKmrqSBh2Uv/nxebSYX
	fUvLy6qHYH8SX0d0MRyfkZdpvO1ylQSKX4eE1muMc15/UZRXfQ7+RvNksTaBRfWscSsTThw8wx0fw
	lPnlX3LEK9++v7621/KvLgQ/kIH24xFZDJLXfBJXUuUNkpseKfoYKuUixTnXtxRsgLMQJUIk24Ext
	XprroakUccdz/OU1vrbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwKpx-00000008B2A-1aND;
	Tue, 18 Aug 2026 14:30:45 +0000
Received: from mail-pl1-x635.google.com ([2607:f8b0:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwKps-00000008B11-2UlA
	for linux-phy@lists.infradead.org;
	Tue, 18 Aug 2026 14:30:43 +0000
Received: by mail-pl1-x635.google.com with SMTP id d9443c01a7336-2cffd93cdedso6531425ad.3
        for <linux-phy@lists.infradead.org>; Tue, 18 Aug 2026 07:30:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787063439; x=1787668239; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=sTsQwO4vbh3rP+YLndWD6GA/YwGvOBXmACUttpnYLcY=;
        b=HVBwdgxQ8/0UOP3hSoF8qowk+0/kBj2wtdOtRZmyfkvf38KLw15DNPEaQRKSUYA3bE
         DWInKnHJ5R3ITdDfEdrC09yMfx+6DtMcUkxqV4+aqlGvbOQr54GOJ1t1jPSammkuaHD5
         0ctyk8B+aH89e+Ss6P6fQM1wsarmYD9FxUH0wKT7+mB6lgjP4DipaDzAnzDOXkXMeWsa
         YmUW6FlUrvKbKkm1Bj1rfQY1f+n0pYpw6YwEpYWGIOHM83gngoaB78eGz4SJwptntYyX
         uGH9cQTARkKKMor5S9/fAi4FL2aM9Hobgl19ASr13Bx8wfQrUG4AVJKUNHEygqjUxb2g
         wvCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787063439; x=1787668239;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=sTsQwO4vbh3rP+YLndWD6GA/YwGvOBXmACUttpnYLcY=;
        b=hYXwE9xk/Vb+L8yg0cMQOk4GYK35QjXx7iU23inUmfNtDgvYYo0O3pPpaTU99Ez1Ys
         MTeU4YZJSGVleq7KAbmMQIC+LtycEiTFzv6hTrXQVOKuZtzM2y97u995OFJZnjwYcDYD
         6HmuvmEdxH8H0CGHHGOyfUvMQ7IDLm4yX7rQzpSdL78qyjBmQ/KEeAHR9NUijFSsDcLl
         EYJ+AsErsNke2r2EBD/TkLBimE6gFvanZYSd0rPAIHzecN3Heh/Bl3SYu1hGcxZggeqL
         Mu4wqjJAlrEOoEcGxhwqmUu07LOf17i9GE4E9U4jZ7gcm54/sOLcH7NNES0ugeNBoKXL
         zFzQ==
X-Forwarded-Encrypted: i=1; AHgh+RptbtpSp/vVFfa4vUguuxTEPZq8JpXeb+24iy90kcGHHir8O8HaWvaVPQhBAp8GLUurTBoZfF8kGSw=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz8lBj59LTndKmu1PsmxDAdX08aqFp8GAFQXQOrkCZDk4/hUEqC
	1nUS46pzn0uRRAEMfAQ48jSm6jhT8TB/nWmA6/fNGn2oHThuf2AQSaK2
X-Gm-Gg: AR+sD110FBfEhutKiRBNcBHql/bvVjgxo9Sw9yyZRbI90Qd/Ouxh0B1aukddJKOeKgS
	x9klmsiQSHWz41gA5nERO4w7wfyV5UPgXnOuYQWezI7mAOavrVKcbP9E49Vl2v0KLrmCtLlerFs
	8cvRx6HsP6LwywgIfnQIJpGkLFcWKq31tZCIVxC8fVi2U3LBxJtxhAD1dHKXP4yECAv/Xtalk1s
	7e3xPhmM/1Ahx2p50R/s6o4EGBx3p/0aG04NEWdE5UZal0q4R4o0529oS6I7rEujvfdlZeunYXw
	TkkyU6+yFr4zFhnPoAkkBNA+SYG5ig2rNw3m2naEWyMqPYe6thvXmfKcmbdeHn9ht9NxfkWUYI+
	pK5+mHBb2xUXfOvMtiik2G0T1EwC77GOxMzAAqkUABcxdETRCgRbZy+vFCF40ttGKQwx7wvuxGY
	2ntdXlt+LaBeRE5PCCwZ+umeF368GVXnMSS3lUExl/O1c5ZC4LxItLGUnAxS/WeWjd2/cG25Rg
X-Received: by 2002:a17:903:2ce:b0:2c7:ef84:c58e with SMTP id d9443c01a7336-2d3b0827041mr272587835ad.1.1787063437133;
        Tue, 18 Aug 2026 07:30:37 -0700 (PDT)
Received: from [10.90.163.252] ([2409:40c2:501a:6e15:dc3f:c23f:e55e:d03d])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-327b43d488dsm9043527eec.29.2026.08.18.07.30.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Aug 2026 07:30:36 -0700 (PDT)
From: Bhargav Joshi <j.bhargav.u@gmail.com>
Date: Tue, 18 Aug 2026 19:58:46 +0530
Subject: [PATCH v2 4/7] dt-bindings: usb: ti,musb-am33xx: Convert to DT
 schema
MIME-Version: 1.0
Message-Id: <20260818-ti-am33-usb-v2-4-66fd44d66824@gmail.com>
References: <20260818-ti-am33-usb-v2-0-66fd44d66824@gmail.com>
In-Reply-To: <20260818-ti-am33-usb-v2-0-66fd44d66824@gmail.com>
To: Vignesh Raghavendra <vigneshr@ti.com>, Vinod Koul <vkoul@kernel.org>, 
 Frank Li <Frank.Li@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Andrzej Siewior <bigeasy@linutronix.de>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Aaro Koskinen <aaro.koskinen@iki.fi>, 
 Andreas Kemnade <andreas@kemnade.info>, Kevin Hilman <khilman@baylibre.com>, 
 Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>, 
 Ravi B <ravibabu@ti.com>, Kumar Gupta <ajay.gupta@ti.com>, 
 Sergei Shtylyov <sshtylyov@ru.mvista.com>
Cc: dmaengine@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-omap@vger.kernel.org, 
 goledhruva@gmail.com, m-chawdhry@ti.com, daniel.baluta@gmail.com, 
 simona.toaca@nxp.com, j.bhargav.u@gmail.com
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1787063337; l=5174;
 i=j.bhargav.u@gmail.com; h=from:subject:message-id;
 bh=RjKB54fZ+ycZa3KNSkC+6RK1Py5Hy0qRNAElwR43XCo=;
 b=xyff7burBnQ3TJ4gTsz8zLFzT2xvB6mMe4FZPf2B7MbG+j43SU7iw690LvBHMXGhE6aIvVMwM
 sOYdWZ5iyImDzIKs5OFddLrsXwU39r6CsBJIu3aXckV7pRwOL0zNEyT
X-Developer-Key: i=j.bhargav.u@gmail.com; a=ed25519;
 pk=IqNDwUZKECEA+n8wXctFLBbYL9NhFstZNbOznm/nX1k=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260818_073040_647376_7DD77D46 
X-CRM114-Status: GOOD (  19.35  )
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

Convert the TI AM33xx MUSB text bindings to DT schema.
Changes during conversion:
- Allow an optional vbus interrupt used in am335x-bone-common.
- Add the interface-type and phy-names properties natively used by the
  dm816x hardware.
- Allow 0 or 1 for mentor,multipoint. While the text binding mandated 1,
  the Mentor USB IP natively supports both single and multipoint
  configurations as used in existing DTS.

Signed-off-by: Bhargav Joshi <j.bhargav.u@gmail.com>
---
 .../devicetree/bindings/usb/am33xx-usb.txt         |  25 -----
 .../devicetree/bindings/usb/ti,musb-am33xx.yaml    | 113 +++++++++++++++++++++
 2 files changed, 113 insertions(+), 25 deletions(-)

diff --git a/Documentation/devicetree/bindings/usb/am33xx-usb.txt b/Documentation/devicetree/bindings/usb/am33xx-usb.txt
index 8832843c7d7c..5973f88bcc65 100644
--- a/Documentation/devicetree/bindings/usb/am33xx-usb.txt
+++ b/Documentation/devicetree/bindings/usb/am33xx-usb.txt
@@ -17,31 +17,6 @@ Reset module
 - reg-names: "phy_ctrl" for the "USB control registers" and "wakeup" for
   the USB wake up control register.
 
-USB
-~~~
-- compatible: ti,musb-am33xx
-- reg: offset and length of "USB Controller Registers", and offset and
-  length of "USB Core" register space.
-- reg-names: control for the ""USB Controller Registers" and "mc" for
-  "USB Core" register space
-- interrupts: USB interrupt number
-- interrupt-names: mc
-- dr_mode: Should be one of "host", "peripheral" or "otg".
-- mentor,multipoint: Should be "1" indicating the musb controller supports
-  multipoint. This is a MUSB configuration-specific setting.
-- mentor,num-eps: Specifies the number of endpoints. This is also a
-  MUSB configuration-specific setting. Should be set to "16"
-- mentor,ram-bits: Specifies the ram address size. Should be set to "12"
-- mentor,power: Should be "500". This signifies the controller can supply up to
-  500mA when operating in host mode.
-- phys: reference to the USB phy
-- dmas: specifies the dma channels
-- dma-names: specifies the names of the channels. Use "rxN" for receive
-  and "txN" for transmit endpoints. N specifies the endpoint number.
-
-The controller should have an "usb" alias numbered properly in the alias
-node.
-
 Example:
 ~~~~~~~~
 The following example contains all the nodes as used on am335x-evm:
diff --git a/Documentation/devicetree/bindings/usb/ti,musb-am33xx.yaml b/Documentation/devicetree/bindings/usb/ti,musb-am33xx.yaml
new file mode 100644
index 000000000000..cc01edc75d11
--- /dev/null
+++ b/Documentation/devicetree/bindings/usb/ti,musb-am33xx.yaml
@@ -0,0 +1,113 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/usb/ti,musb-am33xx.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: TI AM33xx/DM816 MUSB
+
+maintainers:
+  - Ravi B <ravibabu@ti.com>
+  - Ajay Kumar Gupta <ajay.gupta@ti.com>
+
+allOf:
+  - $ref: /schemas/usb/usb-drd.yaml#
+
+properties:
+  compatible:
+    enum:
+      - ti,musb-am33xx
+      - ti,musb-dm816
+
+  reg:
+    maxItems: 2
+
+  reg-names:
+    items:
+      - const: mc
+      - const: control
+
+  interrupts:
+    minItems: 1
+    maxItems: 2
+
+  interrupt-names:
+    minItems: 1
+    items:
+      - const: mc
+      - const: vbus
+
+  mentor,multipoint:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: Indicates the musb controller supports multipoint.
+    enum: [0, 1]
+
+  mentor,num-eps:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: Specifies the number of endpoints.
+    const: 16
+
+  mentor,ram-bits:
+    description: Specifies the ram address size.
+    const: 12
+
+  mentor,power:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: Controller supply capacity (in mA) when operating in host mode.
+    const: 500
+
+  phys:
+    maxItems: 1
+
+  dmas:
+    minItems: 1
+    maxItems: 30
+
+  dma-names:
+    minItems: 1
+    maxItems: 30
+    items:
+      pattern: "^(rx|tx)([1-9]|1[0-5])$"
+
+  phy-names:
+    const: usb2-phy
+
+  interface-type:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: Describes the type of interface between the controller and the PHY.
+    enum: [ 0, 1 ]
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - interrupts
+  - interrupt-names
+  - dr_mode
+  - mentor,multipoint
+  - mentor,num-eps
+  - mentor,ram-bits
+  - mentor,power
+  - phys
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    usb@47401000 {
+        compatible = "ti,musb-am33xx";
+        reg = <0x47401400 0x400>,
+              <0x47401000 0x200>;
+        reg-names = "mc", "control";
+        interrupts = <18>;
+        interrupt-names = "mc";
+        dr_mode = "otg";
+        mentor,multipoint = <1>;
+        mentor,num-eps = <16>;
+        mentor,ram-bits = <12>;
+        mentor,power = <500>;
+        phys = <&usb0_phy>;
+        dmas = <&cppi41dma 0 0 &cppi41dma 1 0>;
+        dma-names = "rx1", "tx1";
+    };
+

-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
