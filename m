Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36EF0C5DF74
	for <linux-phy@archiver.kernel.org>; Tue, 18 Aug 2026 14:31:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o/zSXrvkmQ9pjMS5c2viQ2ttXI8yPwjmheRkiIumsVA=; b=mliWMZEZEXs6mq
	SV7r8lJDlaAI9ZkNmU5pKc+IE/wsWLxWONtSoHicaxDptP0KW5x3SCwePomoLXHtsqSywjtPyY93h
	slN31HkWcaw7+zyGgVOKJ/hIxWMfDW5niHy6sPAOvMIf+xOK0lkV15J1xTTWuJPd45t8TiDKYu9nH
	tyjrA7KlYhmE6hTl/Oz/9OU93S5iRAi3XDKZsWhI8COzenFDwJg51MKEnV49Gx1XDpqPbxe2lwGE1
	AyD/D1v5OzMn3bWt1m+uWVk6eAXZU/T03yE4iGgHlUW+QmhmNU2iN70I2gEIFZAs9mRWygRWtvqzT
	GsqXRLsrbCDJCKzv85bQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwKqt-00000008B8x-2vvA;
	Tue, 18 Aug 2026 14:31:43 +0000
Received: from mail-pj1-x1030.google.com ([2607:f8b0:4864:20::1030])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwKqr-00000008B8T-09OP
	for linux-phy@lists.infradead.org;
	Tue, 18 Aug 2026 14:31:42 +0000
Received: by mail-pj1-x1030.google.com with SMTP id 98e67ed59e1d1-38fe113c792so532535a91.3
        for <linux-phy@lists.infradead.org>; Tue, 18 Aug 2026 07:31:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787063500; x=1787668300; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=RE21JFz7XFYmP4oZ5LDGVF5TCaoOBdwIPAfKGxU/5ig=;
        b=mrJRJS92NMH4VeVGGS0VNgAsaN8dqwXGDoNjpW1v4+Q8XPbb7xHJWQ6yAumuQ+Mlqc
         o6tXYxrs7Zenk2xRhlf6cZyA9H0miO9NaUHQKdt0VpAc3Sd+ywGNYttDAcT/ZHFP5cjF
         EGn/Eh4zDhZPcuUh5IGOBTnLJCKI/VR73X2atR4Ro6QAto4euXPI+srjKpFb22u8HAye
         7cM6dkG700jEyjGRikbPNAgxi6jmoCEoJzr8VIk4WkxmzWt+3FwllfM69G8iZlOl9tML
         dcgUpxt9GowFgvHpSATwA2WAEDm1yZ8RTJIM5s2gT8IayAkMNvG8YXhsUK5KtqLo+/PA
         JCPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787063500; x=1787668300;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=RE21JFz7XFYmP4oZ5LDGVF5TCaoOBdwIPAfKGxU/5ig=;
        b=dvmhlnZTOKNXzGkGqtT21DurX91sDJ65J+U7CtrARB3dr2QbR9wYrFlNItkT+Mq1eV
         /YPDgXp+ijfZBCvQ9Jp7dRXEcKQN9yP9gFXifAdGSdZZoSr9JfukSSUoXyLpIMFa8DS5
         RFdm6ambWfp7g6t8X/SG0ixXowwNdm0+Atlfh8MzEpEFgs0sWX5oglf+6BS46seMX7Oj
         8PTcTTeEqb+gurrEWXiQ/A9tJFW/RofK87X+0vFiF9Z0pRLC8vHFxrYDUGtbPujEpoQl
         d/0zMpvSbvR8HEs1+qWRsZyWxQYFGP0nNsyzhp0vixHhukYNXMsb5nikfvDFhw7fd8+y
         +r8Q==
X-Forwarded-Encrypted: i=1; AHgh+RqZdc3zK5Nr/NymL0YAxOwHf+5fJa0Dl2GxBFqtA2M0IE0z5SrdhB0MEVezVv0ykHiiH/cm9kXflQ8=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy1fkg4ohOXxk2zt/kfWEhl9/c/ORGF1IGv5yrmn0++WyzY8DUe
	d+aPtk16pjbyKv56KjRYEWLh0Wa1Y+sPhVn1mLOlbptcnYxh37CfQmZU
X-Gm-Gg: AR+sD12Gm1SuqYtKISTeKYZiQylTKFOIIRe5jq/bUhnBtIRsR0/nHHuqBdRXrdNkrNr
	PpYyvMebdadyI20jg37bj4wo++CbrONWWpmOAfpMAg6ZqXEsqZepazsE7p6e97vwZ7ZGZR9I/7H
	mV56fqWiN3ajzyC/n45O7ihOh3jE85lJ3M0YovrWxGEBnatiiI1WypoHy8gRkHAq4QtkDOEg+GB
	EuuxOU/Qn2yj+CJF7RpcKi/cdvoNOPZpoP2lQ2n3IXtmOf61KZvRNrPcaHjcC5wmZBIT9fbkGQD
	u/zLPmnzDl5U30ocJu7OknlkctF4EhwfrGxF/ibppgJJTOjME+Eol6rykKQ8oe9RBUcpWkHsEQN
	oqkKDSSvY+sKWWBX2Roz7PYyTQWWehWav18joDyAxqnokmSnlm0XWXzvQ+0ZxDPdJ5nrF3SzK52
	nqwCyKyg5EdIsZWEbzq7710W9iSbqzbp//npF3+ENUQSplgdsxjcQNr/UeuThogqgAPMXnboNA
X-Received: by 2002:a17:90b:164b:b0:38e:76f8:fcbb with SMTP id 98e67ed59e1d1-3933b95a6b0mr24932418a91.4.1787063499757;
        Tue, 18 Aug 2026 07:31:39 -0700 (PDT)
Received: from [10.90.163.252] ([2409:40c2:501a:6e15:dc3f:c23f:e55e:d03d])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-327b43d488dsm9043527eec.29.2026.08.18.07.31.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Aug 2026 07:31:39 -0700 (PDT)
From: Bhargav Joshi <j.bhargav.u@gmail.com>
Date: Tue, 18 Aug 2026 19:58:49 +0530
Subject: [PATCH v2 7/7] dt-bindings: usb: ti,da830-musb: Convert to DT
 schema
MIME-Version: 1.0
Message-Id: <20260818-ti-am33-usb-v2-7-66fd44d66824@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1787063337; l=5232;
 i=j.bhargav.u@gmail.com; h=from:subject:message-id;
 bh=bJqIbElUcpqQLiMeMmTF1fWVKJqAYL76gZjzfUU7oAc=;
 b=ajK8gPvHZukbS3OTmoaPWtiAJLKyEZ4GPUFMq/CpE/Is60UY8/yuYcdWqrtu0dzz4DNm5f3F8
 Xln7lr2e1j+Bnn0KSAPjfBGJwlj+o/H8ZUzSgbPQCIDrSgByE2tgdsM
X-Developer-Key: i=j.bhargav.u@gmail.com; a=ed25519;
 pk=IqNDwUZKECEA+n8wXctFLBbYL9NhFstZNbOznm/nX1k=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260818_073141_228571_E2AC2A3A 
X-CRM114-Status: GOOD (  15.30  )
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

Convert the TI DA8xx/OMAP-L1x MUSB text bindings to DT schema. Since
DA8xx MUSB node acts as a parent bus for the CPPI41 DMA controller add
required #address-cells, #size-cells, and ranges properties.

Signed-off-by: Bhargav Joshi <j.bhargav.u@gmail.com>
---
 .../devicetree/bindings/usb/da8xx-usb.txt          |  69 -------------
 .../devicetree/bindings/usb/ti,da830-musb.yaml     | 113 +++++++++++++++++++++
 2 files changed, 113 insertions(+), 69 deletions(-)

diff --git a/Documentation/devicetree/bindings/usb/da8xx-usb.txt b/Documentation/devicetree/bindings/usb/da8xx-usb.txt
deleted file mode 100644
index 00320d92d3bb..000000000000
--- a/Documentation/devicetree/bindings/usb/da8xx-usb.txt
+++ /dev/null
@@ -1,69 +0,0 @@
-TI DA8xx MUSB
-~~~~~~~~~~~~~
-For DA8xx/OMAP-L1x/AM17xx/AM18xx platforms.
-
-Required properties:
-~~~~~~~~~~~~~~~~~~~~
- - compatible : Should be set to "ti,da830-musb".
-
- - reg: Offset and length of the USB controller register set.
-
- - interrupts: The USB interrupt number.
-
- - interrupt-names: Should be set to "mc".
-
- - dr_mode: The USB operation mode. Should be one of "host", "peripheral" or "otg".
-
- - phys: Phandle for the PHY device
-
- - phy-names: Should be "usb-phy"
-
- - dmas: specifies the dma channels
-
- - dma-names: specifies the names of the channels. Use "rxN" for receive
-   and "txN" for transmit endpoints. N specifies the endpoint number.
-
-Optional properties:
-~~~~~~~~~~~~~~~~~~~~
- - vbus-supply: Phandle to a regulator providing the USB bus power.
-
-Example:
-	usb_phy: usb-phy {
-		compatible = "ti,da830-usb-phy";
-		#phy-cells = <0>;
-	};
-	usb0: usb@200000 {
-		compatible = "ti,da830-musb";
-		reg = <0x00200000 0x1000>;
-		ranges;
-		#address-cells = <1>;
-		#size-cells = <1>;
-		interrupts = <58>;
-		interrupt-names = "mc";
-
-		dr_mode = "host";
-		vbus-supply = <&usb_vbus>;
-		phys = <&usb_phy 0>;
-		phy-names = "usb-phy";
-
-		dmas = <&cppi41dma 0 0 &cppi41dma 1 0
-			&cppi41dma 2 0 &cppi41dma 3 0
-			&cppi41dma 0 1 &cppi41dma 1 1
-			&cppi41dma 2 1 &cppi41dma 3 1>;
-		dma-names =
-			"rx1", "rx2", "rx3", "rx4",
-			"tx1", "tx2", "tx3", "tx4";
-
-
-		cppi41dma: dma-controller@201000 {
-			compatible = "ti,da830-cppi41";
-			reg =  <0x201000 0x1000
-				0x202000 0x1000
-				0x204000 0x4000>;
-			reg-names = "controller", "scheduler", "queuemgr";
-			interrupts = <58>;
-			#dma-cells = <2>;
-			dma-channels = <4>;
-		};
-
-	};
diff --git a/Documentation/devicetree/bindings/usb/ti,da830-musb.yaml b/Documentation/devicetree/bindings/usb/ti,da830-musb.yaml
new file mode 100644
index 000000000000..0faf2a1a17c7
--- /dev/null
+++ b/Documentation/devicetree/bindings/usb/ti,da830-musb.yaml
@@ -0,0 +1,113 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/usb/ti,da830-musb.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: TI DA8xx MUSB
+
+maintainers:
+  - Sergei Shtylyov <sshtylyov@ru.mvista.com>
+
+allOf:
+  - $ref: /schemas/usb/usb-drd.yaml#
+
+properties:
+  compatible:
+    const: ti,da830-musb
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  interrupt-names:
+    const: mc
+
+  phys:
+    maxItems: 1
+
+  phy-names:
+    const: usb-phy
+
+  dmas:
+    minItems: 1
+    maxItems: 8
+
+  dma-names:
+    minItems: 1
+    maxItems: 8
+    items:
+      pattern: "^(rx|tx)[1-4]$"
+
+  vbus-supply:
+    description: Phandle to a regulator providing the USB bus power.
+
+  clocks:
+    maxItems: 1
+
+  clock-ranges: true
+
+  ranges: true
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 1
+
+patternProperties:
+  "^dma-controller@[0-9a-f]+$":
+    $ref: /schemas/dma/ti/ti,cppi41.yaml#
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - interrupt-names
+  - phys
+  - phy-names
+  - ranges
+  - "#address-cells"
+  - "#size-cells"
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    usb@200000 {
+        compatible = "ti,da830-musb";
+        reg = <0x00200000 0x1000>;
+        ranges;
+        #address-cells = <1>;
+        #size-cells = <1>;
+        interrupts = <58>;
+        interrupt-names = "mc";
+
+        dr_mode = "host";
+        vbus-supply = <&usb_vbus>;
+        phys = <&usb_phy 0>;
+        phy-names = "usb-phy";
+
+        clocks = <&psc1 1>;
+        clock-ranges;
+
+        dmas = <&cppi41dma 0 0>, <&cppi41dma 1 0>,
+               <&cppi41dma 2 0>, <&cppi41dma 3 0>,
+               <&cppi41dma 0 1>, <&cppi41dma 1 1>,
+               <&cppi41dma 2 1>, <&cppi41dma 3 1>;
+        dma-names = "rx1", "rx2", "rx3", "rx4",
+                    "tx1", "tx2", "tx3", "tx4";
+
+        dma-controller@201000 {
+            compatible = "ti,da830-cppi41";
+            reg = <0x201000 0x1000>,
+                  <0x202000 0x1000>,
+                  <0x204000 0x4000>;
+            reg-names = "controller", "scheduler", "queuemgr";
+            interrupts = <58>;
+            #dma-cells = <2>;
+            dma-channels = <4>;
+        };
+    };

-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
