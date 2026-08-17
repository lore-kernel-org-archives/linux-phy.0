Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5DFABC5B572
	for <linux-phy@archiver.kernel.org>; Mon, 17 Aug 2026 21:49:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lYXaikaQK+xpY7RtH2fdN9DV9pHLLNtbEIKkuUSHunE=; b=gJgMmT07v61ydK
	CJ1gZ2iUlJvt78l36vGBu4KUTzsow9pgdnb74GAxYIzbugUq5wTbifE5QDbaKmlyxCWOJpbnctI5y
	15cSAdW68r9mFnuhlyNz6xfq88Qjj1HhtEZE0bZWb+JkSFqsQJUEQWotxBanc7pfXJP7UkFHZmrx1
	tcPiQw1UuRGe6D/tDlK7y8253jxS1hlnOP0iJ71mEfQBTd5NdXE5mHThxnjWCayAUtdU1WxmxlgtV
	4GgP5ULbXJKQCSd1v44EpDCo/pjvnppcsgyXBkGAKTg5dAxhOjjiRak2z1KhPf97Dwu8tMlUUulX4
	7SVxfZXJbYoNeRIs2U0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ww5Cm-00000006sZM-3ZHc;
	Mon, 17 Aug 2026 21:49:18 +0000
Received: from mail-pj1-x1033.google.com ([2607:f8b0:4864:20::1033])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ww5Ck-00000006sZ1-0gAu
	for linux-phy@lists.infradead.org;
	Mon, 17 Aug 2026 21:49:15 +0000
Received: by mail-pj1-x1033.google.com with SMTP id 98e67ed59e1d1-392af6bda98so460137a91.0
        for <linux-phy@lists.infradead.org>; Mon, 17 Aug 2026 14:49:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787003353; x=1787608153; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=+G9INpV1JzdGArVnG3ONEDuNklD+1EBL8YVEgjDjB8I=;
        b=rGypAKEECidvyoTUNHAIyAjU7r4CqnEtEJgwrNLUKuZ8bOADfBSl4k60zeNiS3Estw
         AwUs26aO/fBVxOaNL4iYd7EBSHJbCp10cwWna80jZEyFjreyYsRcCa2H7AvSOxcD5EzO
         0pe30QA+f2yVMpzWb6eJX3/A5qlDrN24P/Z0bKpyDuGywzjWq4uXXISU4ELlI+X80nTi
         uE0df7DLh4/fWLsCzNm2cJO9it8XukuEk3FwlKr9ihd38MhDq+83EFO6waGoFcSDOxxd
         inz535gTGWImXMsLzw/recyDlVrOeCLHl0KUXRT80xipvwC6Igd9ct7qQ18ofH7n6pOt
         sUfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787003353; x=1787608153;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=+G9INpV1JzdGArVnG3ONEDuNklD+1EBL8YVEgjDjB8I=;
        b=ReelcQ1tprfIs9ZaNtssCyDlIn4GcAec54kFdzSef62Mn5H5JpqXumfR6Hzxx5weQI
         JZGjsfVBfrDJIJh4xnvl2z1NlI89GS0RNpKtRpCXjIvAwMsTtONm7qMqTwIrdKjy45r6
         yFyEXDIthLgfMFuHDUfHxqMAZunv5keuvMH5UKd2bif6nTlOtf2ZoSzSszRmnApAcDUS
         iuKcHjuo74d5qwvN101rhs6syJaHZ1vdbMt5V9uNgjazzG3bamRdnPr+IKhkGYdssmUe
         BNAcYr3Z5y87ZANEwJ5f0Ay4zmfg+KgJnT2vnNxiWTWpF2E1nAaIoMVIIZHVS9w0lU09
         JY/A==
X-Forwarded-Encrypted: i=1; AHgh+Rp9uOS2e85Hgh6j/JbPH7Ag92ID9jEUljRUyQz2CM8K5rzOlrl2eDQg/3x6CmgoqfFipUocFlWmMj8=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzq6bIIn1IM+zWQAy7ogI+Nyvi6wUy/ZQ9lEWglfeN0VeOzVyzz
	w4KB/pat0hKC35n854E0FqwpR+btT0OngByX1YjR9t/9dBf7xIBmixAFjTdmUQ==
X-Gm-Gg: AR+sD13DXOlPHBTXXqDRCfKhROU5iKbgEmLELFY/EtDSkLZ6l3g+hToF7NqHaE3eB1J
	gAVlYaPEghT2EmcDwbkO03Nn2Uo3N8T2p7Yvqo4FVqI1P1CxQbxO8AdnqUSNq6JbiweGrGnhQo0
	53rPz0AfNbUh3pQu0cGelLFQTUyp3nRaQNodh73A6bb73PRyI3rFMTHh7gLsJB8W1oOngFM+o+w
	sbXbu7JZGkH4EC103PwWmnqf8RxEHuGD9BhGRChxcKPErNAP1LTt06iyZY6mWXpU+7u4n4m/NGt
	XqdCaGelPw+dymjte2pARwe6pDiMG6d3ITJg8O2Twsd8gID9J1/9l0VF40cuWIiIzQFDt1FRfI8
	gY/yc/h9GlFRScM9YT9wmBSLrwznLbnlaTYMaaAyairmiqW1uFTd32jyneNdqMhlDNFql9mjBqH
	dH0+DJC7zXNPjf3uIQdlb7RGpeoJV4T2Whyl5CnNoLyH2zs9Uzi5GMfryIg6n0qFZrbXNE5XvN5
	Q==
X-Received: by 2002:a17:903:3c63:b0:2ca:ecf6:9115 with SMTP id d9443c01a7336-2d3b0c57980mr238021985ad.2.1787003353382;
        Mon, 17 Aug 2026 14:49:13 -0700 (PDT)
Received: from [10.112.173.252] ([2409:40c2:5053:3384:1c8f:aa2d:e07e:6d3d])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3267c388e3csm10153024eec.21.2026.08.17.14.48.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Aug 2026 14:49:12 -0700 (PDT)
From: Bhargav Joshi <j.bhargav.u@gmail.com>
Date: Tue, 18 Aug 2026 03:16:37 +0530
Subject: [PATCH 7/7] dt-bindings: usb: ti,da830-musb: Convert to DT schema
MIME-Version: 1.0
Message-Id: <20260818-ti-am33-usb-v1-7-69ac5f92df45@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1787003201; l=5185;
 i=j.bhargav.u@gmail.com; h=from:subject:message-id;
 bh=ExC1AV2gtMJSKMPZKdYscruJxgrxKcI9UQBd1QnnFaU=;
 b=dvxbJeNDLdyKd/EJ2RV/+vW65rTnYEZRoC6Gt3kFS8z0n5v2jRb/XcN7QbSIiuPH76dQg8Jye
 zcSsXDJ9eLQAckmZ3hoo9GrU6sXfETKNCd2APr5gbEs1CQ6N3X8Csys
X-Developer-Key: i=j.bhargav.u@gmail.com; a=ed25519;
 pk=IqNDwUZKECEA+n8wXctFLBbYL9NhFstZNbOznm/nX1k=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260817_144914_240579_AD299EE9 
X-CRM114-Status: GOOD (  14.98  )
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
 .../devicetree/bindings/usb/ti,da830-musb.yaml     | 111 +++++++++++++++++++++
 2 files changed, 111 insertions(+), 69 deletions(-)

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
index 000000000000..c54bdfb4d1ad
--- /dev/null
+++ b/Documentation/devicetree/bindings/usb/ti,da830-musb.yaml
@@ -0,0 +1,111 @@
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
