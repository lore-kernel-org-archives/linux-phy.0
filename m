Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C943FC5DF74
	for <linux-phy@archiver.kernel.org>; Mon, 17 Aug 2026 21:48:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SSJoV1zDLg1xChdP5If+I0JZ0H4hf2SaFjjyux7zTjk=; b=FsgBYXOYN3tbb1
	MLLgoJmItokOY73V6yxKIP8Cz+x4i5yntuJUdep17P6GuXwAwhBvYq0QlzvKE2uLZylSEq6wMRmKC
	0KD3tqTgf2fa7Gr7MqNpOAyL8yAHbwCUu0Y524uV7F1xoS0MCMJK158nNmzpAY+BoviE8yHUykOBN
	Na205vfqT18n52JquJpMM7psKe8uKxCgqJccaK8uAkcSTCUQxOEODmhCCKGpbSCN+WA1V1Nt6iQnJ
	2zFmRGmI8bMr42XSk7+PJuEgAELrOSkFEB8oL8kcOuVkASWjpI0aYpbqowBtIF/nv6lB6Szjud2zL
	eOGGDdjVfNcCQD3EZvUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ww5Br-00000006sRO-25t7;
	Mon, 17 Aug 2026 21:48:19 +0000
Received: from mail-pl1-x62d.google.com ([2607:f8b0:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ww5Bp-00000006sQa-0EtJ
	for linux-phy@lists.infradead.org;
	Mon, 17 Aug 2026 21:48:18 +0000
Received: by mail-pl1-x62d.google.com with SMTP id d9443c01a7336-2cf49dc28ccso6969585ad.0
        for <linux-phy@lists.infradead.org>; Mon, 17 Aug 2026 14:48:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787003296; x=1787608096; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=QeyEkATwcVyf32pCUIMjXQkpsiUUb6eEEqeEp58watw=;
        b=Ge5EqQycHVpL+TDhSmTGyKAsN5Thek11ZMvcVmbHKRdn6yvwUsl1mU0SWx3QlUTAJ1
         3OTI6Vf8uvquYMR8OXTLxhrK3sSjj+BOfYvXz3EgLc7sJtONHfAUOJWUH/0/5Wf4bQru
         C3p/zpmPjEkVf60yb/wXMb9pwk9QrteNLzEKRsL63Vq7yJKZDln6HMMo8POHnq1vmBxd
         VJrfbQIjoF/HjOuRQKkr5P2TbGsS3uYAZUNcKEQin4qBP3UZISTK8QBiK23Jq65ZdCkQ
         BRp94D++bnN2Y/queWQNAgdymR56UNhdQfEFAvojeQkv0cJ9t2Vb5lsYMgyM3yzTBzRg
         P9Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787003296; x=1787608096;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=QeyEkATwcVyf32pCUIMjXQkpsiUUb6eEEqeEp58watw=;
        b=fpWR9v65lKRCDZQrEzdn2iw2BFKeOUi7G0EPBSyI+3w8yOk8f4xdNqr9ty0+6n+XaF
         aV2hepjwFvvOoBAu/2U57ZvroD3BEyO/iMqacLlsDD3TgQsnCaeYJT13+R7Z1pDyw0K/
         35jLWAVrrr6M7PyC/iF+Yr63qW2NeUMvYus6lr4KYicW0NKkij07SY6ivTav9X+1iAZW
         yySmd8SQBDgzw0W2ZnagCLLscgUqxsXhFS5xVlLxNOZ/A5cvaXVsqcqEXWFX3TD5N17o
         7NiKBUkVtZilKtrBmza9EsWbHfMb7fyVzNh1WnILa/we7M0e2Fzp4BD+moUnx/FRBpfE
         poUQ==
X-Forwarded-Encrypted: i=1; AHgh+Rr+RNO4beNWiu/mUoY8dFG1pQdlVtyUNsJ642hDsOuO8DunmKKNZJ5jcR7LNk2lSONZpajekaVrpbY=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy1uk0CQdvfxN5Zgv9Ao7NKgjyCl7Mw3ucZH9ypdqAi6PzbsdVr
	WhP0KnWcT3hcc3YRWpTw304G3Mko+5MFfTFT7TGV42p3IpO6aPDyT3c/
X-Gm-Gg: AR+sD10O4p2PwwTZ2tbhz7WcdO4PMkiyxwB9PzwW9G89R5ULJJfP7wZqbeQUjwHsjWI
	shE0xlRIYd/+53QEINFqwaZ/yFvX4lOff2j6ULFJ4PiWU51kYhip1/rEA7OvA7teBtkmx5d/Cjc
	xQZtLzSiBOnJWq6XQ6bw868wi996iq77CJQ7Sm2cRsRESeWOSsCjJ9/pxOKQU+/pZMfitgZVUHl
	YlWBV3gpDyG3VD0wlxNOwvQHFy5i1sHfuWb+7xeNqb/2IwdVA5nUMT72v6FXnFafc7bzh+ZMSYF
	kN3KA0p/wAKiLmyFILjEGaSBrmWFZixPxyug2rvTwYb7YkXj97ARB4ARlwP8wxqW2fO/bfCup3e
	NClM4SOG6a7OMrmzRuysjvS46ie2jqZBR9EtUEFSqUFydq88Lm06AXQaJqDUi/qCnfF6jOqdl9I
	6uvcYYi7lyHLlHv/S3aopo3ul+8I3uAxrWACGlJ99L8F+PXUa6aU6yxNYzldZpQYBBYsFisP8Q2
	g==
X-Received: by 2002:a17:903:2451:b0:2c9:d298:6c0a with SMTP id d9443c01a7336-2d3b0d7af99mr212300065ad.2.1787003296157;
        Mon, 17 Aug 2026 14:48:16 -0700 (PDT)
Received: from [10.112.173.252] ([2409:40c2:5053:3384:1c8f:aa2d:e07e:6d3d])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3267c388e3csm10153024eec.21.2026.08.17.14.47.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Aug 2026 14:48:15 -0700 (PDT)
From: Bhargav Joshi <j.bhargav.u@gmail.com>
Date: Tue, 18 Aug 2026 03:16:34 +0530
Subject: [PATCH 4/7] dt-bindings: usb: ti,musb-am33xx: Convert to DT schema
MIME-Version: 1.0
Message-Id: <20260818-ti-am33-usb-v1-4-69ac5f92df45@gmail.com>
References: <20260818-ti-am33-usb-v1-0-69ac5f92df45@gmail.com>
In-Reply-To: <20260818-ti-am33-usb-v1-0-69ac5f92df45@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1787003201; l=5118;
 i=j.bhargav.u@gmail.com; h=from:subject:message-id;
 bh=wwhZXC4XvmCwfuoKNU4F234NGLefy7XsbMAZo3F+Y58=;
 b=wSxbXMnuj+n3r6SFK6Mb7mHAgmpQMactsrA6ZkBtDCMNHn7nZBAIoqnbWz+wVfdnHNa9+Z1ZH
 ZZlYZYd4Ys9BXbo4py9RnSJoeS+StpUoru2SbW9QPlzN9dZOy8or5MO
X-Developer-Key: i=j.bhargav.u@gmail.com; a=ed25519;
 pk=IqNDwUZKECEA+n8wXctFLBbYL9NhFstZNbOznm/nX1k=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260817_144817_119561_55F98837 
X-CRM114-Status: GOOD (  18.92  )
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
 .../devicetree/bindings/usb/ti,musb-am33xx.yaml    | 111 +++++++++++++++++++++
 2 files changed, 111 insertions(+), 25 deletions(-)

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
index 000000000000..05909d5ca3d2
--- /dev/null
+++ b/Documentation/devicetree/bindings/usb/ti,musb-am33xx.yaml
@@ -0,0 +1,111 @@
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
