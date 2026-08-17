Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9D84C5B572
	for <linux-phy@archiver.kernel.org>; Mon, 17 Aug 2026 21:47:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OGhOB3VXVp7daKsjpVrZ/0r4TYa0JdQQPrt34Imvybc=; b=t28s/cXoY3OFE8
	fVYlfgA4NkqXEaO/8SdAupRhEOxQN7slUUnDSm1J1tE5SWWj/tY/fuC8GDk9blB3UqV4tsc/HwTGQ
	KYPHboGLsDFk10Qg8iClxh/LyAKMh+cEbDFucXDU3i5ADz/toetwsP0UxciFlHrBBfSvpPv5/Rco3
	MYzX89mBeSpo3gyxn930T82Qhkr6GivBpKglUrkbeFt8lgybILlBsdf379pzG3Pgrw329POGGZ695
	4pChnCBVYbz9HL89SI37qGEyMDB9igrzHC8KBIkCxsYjyoFRGaV9ZWGHzpji2kGAmi6SjXxzgngA/
	6K0USfa8OHDmfVGUSyRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ww5BG-00000006sKc-2PjO;
	Mon, 17 Aug 2026 21:47:42 +0000
Received: from mail-pl1-x62a.google.com ([2607:f8b0:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ww5BD-00000006sK4-36O5
	for linux-phy@lists.infradead.org;
	Mon, 17 Aug 2026 21:47:41 +0000
Received: by mail-pl1-x62a.google.com with SMTP id d9443c01a7336-2d30c22b1eeso6725115ad.0
        for <linux-phy@lists.infradead.org>; Mon, 17 Aug 2026 14:47:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787003259; x=1787608059; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=AbV7RIHYMEgMD35kCL1q43FBlvr9xDn3Pi9g2Kfmf8I=;
        b=sJKpjJLVAefl+u8LDagoao8f4TzQRg4dT6H5UMlrNse8msgN41awsJ6wQ2hxp7Iis8
         RopOoDG6ec3pK2z3f6GJ1N+nsHETVL7KQ/hcxiu82j1Uc6WgiXHR8366QTndHpf3EwPS
         jfjT5T9omXSMm4sqWu2EC7Hxc/dKbpuP7G31JZXbXmHtjp7ErosnL10foUakEWAyEIjX
         IyFVZhvoJhD9TvS3Bvn6qNWfy9+iX2SMpBumDFeMCV/ZaQWrgVexNw+bAC0pr2hmVfTi
         fwPuwhTj6UG6WO3yndwoCgxrwJUzBeR/fRwlxcK3lOIq9jSQMkdE1HWQfFPDfz+h+Tbr
         aUKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787003259; x=1787608059;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=AbV7RIHYMEgMD35kCL1q43FBlvr9xDn3Pi9g2Kfmf8I=;
        b=TPcymo0R1g6lXMSNofxq1Sr9SQxzuUJ+lShVS73ELtK7alZMF7N+VDPNSxI12EH+6Q
         JBci2csMMtRGel8Kq8nJOjPV8uGv0tnAdcWfwVdP8LxkzOiURcWiZMxcpx1+IxgJggiN
         RrE69lBJ/3L/eFOpUp48h0/1qOmVVneZrkhOdGF+BUGSNsMNALvd9Btzsjolq6HxgkAk
         AzwP7XPkNZfn45bVUh4TXe/wJQjludHjWL+TK/DQVKOSK0R0+TAS4zYXYY2UV54OZq7g
         nhW5ctkSp1zNGaI7gpiII/5+llFpcZLWiix86vL/I1johQSZa7akRfdspjIIF6pvm//1
         KLfA==
X-Forwarded-Encrypted: i=1; AHgh+RrBbHiYgvSH1CFI3KuBAUQ7kuYcNjHjDcve8YQUVeg96txEz+qOcONvxAXBwcYZLfq62yleHA80xd0=@lists.infradead.org
X-Gm-Message-State: AOJu0YwHdB6t7IfyNECuNkoOHsGC0HzkCJ5FOvWHhjSdcBGDQx0MdiiR
	mhtCemDRQV0skHvWF5TUAejEpQlGY+jWV7mcMXD6foDrBWQ2uhYYuZXK
X-Gm-Gg: AR+sD108bSgIkgVSDs4mfy5qMJ3dnvsrPqSOwzmzBcFtjZ6lvueQiMkfvnJdFxR3H+r
	cnlkZJr8+a700cE/h7NyaF9ja7/P3i6c7d/dpPs/4cOrps2MFEbs1Rj1a4/Rv35OEvR+fc+AWPi
	Uag171jCdZpv0llihRTlhTl2pYe6dvpvfgwrouVmF8KlOPocHdsucCKNXAitjKxjLMZBY5Oh+3l
	k2M3LemWwXU9VelqNCP2iRfpg+sgo9r+BpOnz72EdwbtQ0NCk2Ol1WlqCAOb7BsqplYXCtOCJcf
	UehJQnIDvAx3JK2ytmb9mEyh3uKvTcXm+9WCbvC6tSSveuLu7ujLRU/CG30Lg2YNArItOkRRoqI
	DL0itx1oPFVQK1TJxGc/WdyF69IFfpt5U26gDberjnDKPspNqJqjMWYhWIOqfsQ681IGRo8agGA
	bbkoBJ1sP6JPxYcDkYaxANteOqBKTxVEI0zvMTOXFLG2GFKzs704RDRYQk5U9eGpnjs/q1IudIa
	Q==
X-Received: by 2002:a17:903:2ce:b0:2c7:ef84:c58e with SMTP id d9443c01a7336-2d3b0827041mr219544715ad.1.1787003258858;
        Mon, 17 Aug 2026 14:47:38 -0700 (PDT)
Received: from [10.112.173.252] ([2409:40c2:5053:3384:1c8f:aa2d:e07e:6d3d])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3267c388e3csm10153024eec.21.2026.08.17.14.47.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Aug 2026 14:47:38 -0700 (PDT)
From: Bhargav Joshi <j.bhargav.u@gmail.com>
Date: Tue, 18 Aug 2026 03:16:32 +0530
Subject: [PATCH 2/7] dt-bindings: phy: ti,am335x-usb-phy: Convert to DT
 schema
MIME-Version: 1.0
Message-Id: <20260818-ti-am33-usb-v1-2-69ac5f92df45@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1787003201; l=2477;
 i=j.bhargav.u@gmail.com; h=from:subject:message-id;
 bh=x82f2rFO1TTjFpVekp+USEIM8EAiJutd+tABMnyaNHw=;
 b=xQkPjwuZse8OJWLFHr5jkhzUEk1s0slcPTBDT1bUKVvPkldm8oswiucbLVPFXWOV3PZZEUBPk
 OnGAKmqQ+gIBh2C+PSzghXuJkChgNxDAZePiB4N03yFOUP1Unchuq+e
X-Developer-Key: i=j.bhargav.u@gmail.com; a=ed25519;
 pk=IqNDwUZKECEA+n8wXctFLBbYL9NhFstZNbOznm/nX1k=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260817_144739_981090_42BD2AD0 
X-CRM114-Status: GOOD (  13.77  )
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

Convert the TI AM335x USB PHY text bindings to DT schema.
Add undocumented vcc-supply property to match existing DTS usage.

Signed-off-by: Bhargav Joshi <j.bhargav.u@gmail.com>
---
 .../devicetree/bindings/phy/ti,am335x-usb-phy.yaml | 49 ++++++++++++++++++++++
 .../devicetree/bindings/usb/am33xx-usb.txt         |  9 ----
 2 files changed, 49 insertions(+), 9 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/ti,am335x-usb-phy.yaml b/Documentation/devicetree/bindings/phy/ti,am335x-usb-phy.yaml
new file mode 100644
index 000000000000..b28cd42ece5e
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/ti,am335x-usb-phy.yaml
@@ -0,0 +1,49 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/ti,am335x-usb-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: TI AM335x USB PHY
+
+maintainers:
+  - Sebastian Andrzej Siewior <bigeasy@linutronix.de>
+
+properties:
+  compatible:
+    const: ti,am335x-usb-phy
+
+  reg:
+    maxItems: 1
+
+  reg-names:
+    const: phy
+
+  ti,ctrl_mod:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description: Reference to the reset module node.
+
+  "#phy-cells":
+    const: 0
+
+  vcc-supply:
+    description: Phandle to the regulator that provides power to the PHY.
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - ti,ctrl_mod
+  - "#phy-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    usb-phy@47401300 {
+        compatible = "ti,am335x-usb-phy";
+        reg = <0x47401300 0x100>;
+        reg-names = "phy";
+        ti,ctrl_mod = <&ctrl_mod>;
+        #phy-cells = <0>;
+    };
diff --git a/Documentation/devicetree/bindings/usb/am33xx-usb.txt b/Documentation/devicetree/bindings/usb/am33xx-usb.txt
index 8431de346129..8832843c7d7c 100644
--- a/Documentation/devicetree/bindings/usb/am33xx-usb.txt
+++ b/Documentation/devicetree/bindings/usb/am33xx-usb.txt
@@ -17,15 +17,6 @@ Reset module
 - reg-names: "phy_ctrl" for the "USB control registers" and "wakeup" for
   the USB wake up control register.
 
-USB PHY
-~~~~~~~
-compatible: ti,am335x-usb-phy
-reg: offset and length of the "USB PHY" register space
-ti,ctrl_mod: reference to the "reset module" node
-reg-names: phy
-The PHY should have a "phy" alias numbered properly in the alias
-node.
-
 USB
 ~~~
 - compatible: ti,musb-am33xx

-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
