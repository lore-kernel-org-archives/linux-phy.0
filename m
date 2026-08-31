Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D14F7C61DD3
	for <linux-phy@archiver.kernel.org>; Mon, 31 Aug 2026 23:24:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BXZ3dZYMRfb0a09Ha0PFiiG+em/nzCla+t/KEDwRe7k=; b=yooAIjcOAWm1v5
	FyRLftK4uwB0x5E+zRxrRp4aOh8ce2e0adbcDVCJvTFll1pfOEzmJQ9QxCDNaOo88LKB18cTFtsPp
	Gj1j7uXC7xnZjy77W99045c5sASjRUv/Mc66CFV7PnvMi8DMvjfi+ZZ8PiRz8z8TMBcITU43XvOEy
	IEL+qO5Pq4Uo3QRU7Wvc1ysN1s0piQyuid2wFrPeycF4xqzXHOPvzdUt47M0i9VlLwRhuNrNAjLOE
	mtal726qt/p4b+7u7UILyaY2LyxwUxw4y08f3pIx+w2qoh65OHwNeumeKwha3qNP/fC3kWvxL8rGf
	7l92xnmOduaML9rb1ldg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1BMo-0000000AedI-1vxJ;
	Mon, 31 Aug 2026 23:24:42 +0000
Received: from mail-pj1-x1036.google.com ([2607:f8b0:4864:20::1036])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1BMl-0000000Aecy-1AWh
	for linux-phy@lists.infradead.org;
	Mon, 31 Aug 2026 23:24:40 +0000
Received: by mail-pj1-x1036.google.com with SMTP id 98e67ed59e1d1-396555b8c7cso550356a91.3
        for <linux-phy@lists.infradead.org>; Mon, 31 Aug 2026 16:24:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788218678; x=1788823478; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=aBzDYqJz1rhOo2qIbSAQbkR5tnylL7yY6lbPSQMXgwo=;
        b=NBgiF54unLz1B65TSm3+Ze/jXoCUHgUR+4ymG1eBle8oTkmdKHviDb6uRNS4A1DzS8
         8F/MMtXG5BfFFSdVfcctvmXrExFmu8AVoDl7x4jx7E91pvjk0Mvh1PRsc4vyQ5+dnfwt
         Np3NMH+sFhpxOSB7gWfGNVQcTp1dk2GMjqoEfGOWg7cUSk5tFKHqMhl8RAvmxocY403K
         wjIxNCIyhrgK8ac2qniU7LKkz9ZHUdk3qtZ9h7ZgmGQbUpfakfcOYVd1krjiQtB0UrPO
         xkx8KzgxFL9aGcTKJOCvOYa6dwDXPF1tanrD2D+sNUXGPLFWNM+8Wobs4JULVM0JIZfS
         sxdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788218678; x=1788823478;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=aBzDYqJz1rhOo2qIbSAQbkR5tnylL7yY6lbPSQMXgwo=;
        b=NXIKEPI2KPuomKa5l/FtqCwPmEv9yuycXIu0BI3KbFO2WNrP8Cil47xhHJ7vgR2hMQ
         yXtO5f56//kNjaoL3EePg7Q1la1z3smVW9d4GkhYVKL/jcm2dZiWqJN0o2lSbaBTru/N
         Voi6HdlOUNJRcIlU2uOuu+tOrU7yn7gqYPaTf8UbagtOOde8U51h2Ct6gXKqQO97JXDq
         27SPWATpTQNt7ceL0fRYJUhAjhFzBBcaB+ai6B4d+Q+YKnJ7oqcg1gTg+XpjUpMSALZR
         /sbgYgu9Z7L+SrkLAgw3BSyzrEaDZ6TdN5dz2aNsNbW1KHmaXC7wjIUtIx6FCu/oMmRM
         BVRw==
X-Forwarded-Encrypted: i=1; AKwUvBzd+pqeetVk3LD84rbeBQReWcMqF83/rlLJN2w6yR9xCTd7SwcMEUQcMWFrPlbUYM6sU5VNczrNNfQ=@lists.infradead.org
X-Gm-Message-State: AFuF++lXaU/RlZi9ezPZkTs8k95TfiA/uTrUvLFMpts6+XMqtOXqHwgr
	A2ueQXWA1MqJvMgBSh8wMChU51OA7kqoGIgt29diClu6t635lYOFWevY
X-Gm-Gg: AYBFou1PPM742UKtqTi4VtrECw6L+VhDwAhxmG2xL/9lUHGMy+Ezb91BNLPr1PyOYgn
	CBUtqwqZpneeFKRH+bHHX5Ihz2Q747RBknlraurNe3PJ2ei6usICmIikIlpwbn9/VqANQkVjthu
	fxF70ynmo4aRLFJ1E9PZwoRol5S9ZIwC/YtUwo3kWJvKMPXSmD+tzfrFzCJc5HxOaOt3yysWwMz
	RoWgrYzn0xDD1gVp4YHaYU4K9SQPjG7mFFkziMwyomK1Hnh0d+xfW2zI2LB6sQFmB5iLbHY26+A
	0nXBx5duIG7yVnJZOSQi/V3133jD24glXg9znfSWOL4Yye91ber9pzPN/h8SwyvOgfURmq1kbmS
	Z8U2v44m73JLD+qUtTwCiEecoNYgAZI2PNQdVtS/5qCsT60veijnbwufwSlm9GFZ6SHtwnz3d30
	L5YLCfvvR2oEOEu7v2Fx8/tupeiJa+FopY+s1P4A0G5WOperz76WJp+SlEqf78+d/VHb4QfUw=
X-Received: by 2002:a17:90b:58c8:b0:38e:480b:99a5 with SMTP id 98e67ed59e1d1-398bab4a682mr15575622a91.2.1788218678209;
        Mon, 31 Aug 2026 16:24:38 -0700 (PDT)
Received: from [10.60.78.252] ([2409:40c2:5002:4362:354a:8f21:7ceb:c8a6])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3990d75fc49sm1963213a91.12.2026.08.31.16.24.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Aug 2026 16:24:37 -0700 (PDT)
From: Bhargav Joshi <j.bhargav.u@gmail.com>
Date: Tue, 01 Sep 2026 04:53:07 +0530
Subject: [PATCH v3 3/6] dt-bindings: usb: ti,musb-am33xx: Convert to DT
 schema
MIME-Version: 1.0
Message-Id: <20260901-ti-am33-usb-v3-3-5e15c617d2e9@gmail.com>
References: <20260901-ti-am33-usb-v3-0-5e15c617d2e9@gmail.com>
In-Reply-To: <20260901-ti-am33-usb-v3-0-5e15c617d2e9@gmail.com>
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
 Manivannan Sadhasivam <mani@kernel.org>, Bin Liu <b-liu@ti.com>
Cc: dmaengine@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-omap@vger.kernel.org, 
 goledhruva@gmail.com, m-chawdhry@ti.com, daniel.baluta@gmail.com, 
 simona.toaca@nxp.com, j.bhargav.u@gmail.com
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788218595; l=5224;
 i=j.bhargav.u@gmail.com; h=from:subject:message-id;
 bh=eP2GsusgnC1pbU80sJIT0eWrfLWddFQwIfPwMIT9cmQ=;
 b=QKEENH/pj3ZaAy5ezfELNDe8pUzU+tFPVnNjJtdxDFCz4/6NtxPSN1SnnaeXP7MXy6zDXGJdZ
 kLUrMckFkwTBgWUvFyjKaYnWZ7kD0k3h5Eiy2kJtstOdTebdX2jbHpl
X-Developer-Key: i=j.bhargav.u@gmail.com; a=ed25519;
 pk=IqNDwUZKECEA+n8wXctFLBbYL9NhFstZNbOznm/nX1k=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_162439_335827_DEAB2310 
X-CRM114-Status: GOOD (  19.63  )
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

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
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
