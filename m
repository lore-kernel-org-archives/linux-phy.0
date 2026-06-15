Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B7E7CD98C5
	for <linux-phy@archiver.kernel.org>; Mon, 15 Jun 2026 05:49:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IkAeAsf58IC7s8pCDPRDS8tvIJ1ieaTpCjUIS/vLElw=; b=P1b3Z60wuaCcBq
	4Fc8H9wB0T/ny2FPsv/qwNbAwaWeYyaCYTlWNdqUOM5JhthUl/NtUJL1kYrs8xebXofzxDE0deybB
	B40BH8H9b3JTaGkyhr/BunMpOkIrNms88yw3sCmv6h8LTNC9WQ8sKQXHYmXnSyKgywYXChl36Iw3K
	j7wsWOyduLSpUhhdSSsCuStNW+CiQcwMU5ibYKNxZat+qGiyyaHj96zIHm1r1Yis89Alpbwxg6YDb
	uui9fPFKqboOa3JIRUt7Y5OZVXdVCm4wHFbcC3NuBbCwbUfTsGoR9We+B/zCJCiI0/q+32UH84VmM
	qovy6wUor4aNz8tcNJPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ0CN-0000000De0T-2m7b;
	Mon, 15 Jun 2026 05:49:27 +0000
Received: from mail-dl1-x122a.google.com ([2607:f8b0:4864:20::122a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ0CI-0000000Ddxt-3z8G
	for linux-phy@lists.infradead.org;
	Mon, 15 Jun 2026 05:49:24 +0000
Received: by mail-dl1-x122a.google.com with SMTP id a92af1059eb24-137335bc3caso3283156c88.0
        for <linux-phy@lists.infradead.org>; Sun, 14 Jun 2026 22:49:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781502562; x=1782107362; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GD68h9MMT+UECQIssPO5nRF88/8ApCFVC30JnkmQtnQ=;
        b=E//S5njm0YghORglA6RlCzl87QMc7e4vYzfWCquSmKWbJKZtdKp7Mx+IR8tylNzAea
         /iM4fZ36U1y3sHIAXFAl6eKX2dyk3NodtyH7fQZYTwJNeB11NEa0CGHLjRKQQuQjcvzZ
         sHrKYiP5OaheCx6HCtQuSR59Wp41419tsQwcY8ZoHS6yvk91598dU9kI+DwkzFOKncBP
         3L6hustCWPsFwmATKEWBkgpWtJ+rW6sy51hOvuYG8lgtFRdaPHmeaEPOqy/YA16qx0Cn
         sG5lwWst5yyfqvCjHhd2iPzII7YWBdWaWv+6YPQ/LpijDyV/h+tH/4Hn+40e9RPDWJNN
         zk7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781502562; x=1782107362;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=GD68h9MMT+UECQIssPO5nRF88/8ApCFVC30JnkmQtnQ=;
        b=LSkeCB+VA60ukTjoWVUIk4fdQYuZp4oSgbwrc3vJvlMP40MKnC1iGTy4ATrMNcF6/+
         UV2FfQKjlUIA6JProeexwVmQku8K1AzKd8MW6BfXd1wLgfLhBjwEV5n7/X2R6bACMqKI
         sgECrvnXUI6tyMLCKBckyyXtFmuzlAMdp4op0xCq1n8lXQfzTPOcINQz+L2WloZ0kQdr
         AvMRDUzkiF2NkzZtcKfZUD5d55lUUBfwJaIovCWFgYXyJque1Y2dTo5UB3Xv2ENGoU3x
         egr9FE1wGk5BTZHQIerzqPB2BLnG5HEzLbWjWrzFDmyba00coWwG2294LssnVu5t3xq3
         OnjQ==
X-Forwarded-Encrypted: i=1; AFNElJ/Ui5IFinldIl5d9mOlN0ZRcDEjngay57iGZqR15y8G8GNUAB2nuvWknUz7ZlMEDgglo7I4lkoZiog=@lists.infradead.org
X-Gm-Message-State: AOJu0YzxY14VTfkdoYXuXBOz+4R+h8gID3KrjthNUwiLMTqAvvyvi3bp
	LNmUfB3E4IvytjrMhVVC6Gf9HxG6EAOviBN/9mIQRvIdhgZx4Q5Y5UAp
X-Gm-Gg: Acq92OHpVqRCEfrZiUBYhLtIB3uwtLf+WLkd+8Rw5nnSNgSIlH6pOnDRe7QJoKPsHIo
	KGpWrMGdL9gyFVPlhEoDtT5gSEj7cJJh+C0VF5b/mdDRktZEaPPf6O+0WofxkTbDI1Q0ur4nNbY
	RFUY9Qd0ueiFXgXgLqHrrZ74ijQigi60rnQ/vhDp0iyXBF/AkqUC4wUfoiJM3S30F1KzBu5tKuP
	82HmhMG7F0WOelKoM7zHoLW+C7AYYGJ4AuE4rD5aSrFrIJL0Uu6xTUndqzF6h/iOUw5KX86N1Uh
	iWP4m3PDAt27Ir84cqoqzDkL8fktO1XbFoQXbNEs7dcvanNdCXy6ZvKsDmnOx+ynvP3Tgx8oZVR
	HMEppFb0vVudcMQl7Yk6b4M9oieSQmjj8OQcZ+D6dPQe1K5PIQfu6EffP4lg5KsLsV6yFD8LoPd
	T7W8mYRtm737mCITAm+ezncOkODJAEL7pSTBwarr54NbOs2Eoi6287nN+IrC6vAPUr2L/rW6ra6
	7q6Vx0IEWjX
X-Received: by 2002:a05:693c:2293:b0:303:f26f:df30 with SMTP id 5a478bee46e88-30820094315mr7031697eec.23.1781502561888;
        Sun, 14 Jun 2026 22:49:21 -0700 (PDT)
Received: from localhost.localdomain (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3081ddaf69asm14295300eec.0.2026.06.14.22.49.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Jun 2026 22:49:21 -0700 (PDT)
From: Joey Lu <a0987203069@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Jacky Huang <ychuang3@nuvoton.com>,
	Shan-Chun Hung <schung@nuvoton.com>,
	Hui-Ping Chen <hpchen0nvt@gmail.com>,
	Joey Lu <yclu4@nuvoton.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Joey Lu <a0987203069@gmail.com>
Subject: [PATCH 1/3] dt-bindings: phy: nuvoton,ma35d1-usb2-phy: extend for dual-port OTG support
Date: Mon, 15 Jun 2026 13:49:09 +0800
Message-ID: <20260615054911.48821-2-a0987203069@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260615054911.48821-1-a0987203069@gmail.com>
References: <20260615054911.48821-1-a0987203069@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260614_224922_991393_81561EF5 
X-CRM114-Status: GOOD (  14.97  )
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

The MA35D1 has two USB PHY ports managed by the same hardware block:

  - PHY0 (index 0): OTG port shared between the DWC2 gadget controller
    and EHCI0/OHCI0 host controllers.  A hardware mux follows the USB
    ID pin automatically.

  - PHY1 (index 1): dedicated host-only port for EHCI1/OHCI1.

Extend the existing binding to cover both ports:

  - The PHY node is now a child of the system-management syscon node
    with a reg property.  The nuvoton,sys phandle and clocks
    properties are removed; the driver derives the regmap from its
    parent, and clock gating is owned by each individual USB controller.

  - #phy-cells changes from 0 to 1: the cell selects the PHY port.

  - Two optional board-tuning properties are added: nuvoton,rcalcode
    for per-port resistor trim and nuvoton,oc-active-high for
    over-current polarity.

Signed-off-by: Joey Lu <a0987203069@gmail.com>
---
 .../bindings/phy/nuvoton,ma35d1-usb2-phy.yaml | 62 ++++++++++++++-----
 1 file changed, 48 insertions(+), 14 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/nuvoton,ma35d1-usb2-phy.yaml b/Documentation/devicetree/bindings/phy/nuvoton,ma35d1-usb2-phy.yaml
index fff858c909a0..dde045aff44e 100644
--- a/Documentation/devicetree/bindings/phy/nuvoton,ma35d1-usb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/nuvoton,ma35d1-usb2-phy.yaml
@@ -8,38 +8,72 @@ title: Nuvoton MA35D1 USB2 phy
 
 maintainers:
   - Hui-Ping Chen <hpchen0nvt@gmail.com>
+  - Joey Lu <yclu4@nuvoton.com>
+
+description:
+  USB 2.0 PHY for the Nuvoton MA35D1 SoC.  The PHY node is a child of the
+  system-management syscon node and covers both PHY ports.
+
+  PHY0 (index 0) is the OTG port whose signals are routed to either the DWC2
+  gadget controller or the EHCI0/OHCI0 host controller by a hardware mux that
+  follows the USB ID pin automatically.
+
+  PHY1 (index 1) is a dedicated host-only port used by EHCI1/OHCI1.
 
 properties:
   compatible:
     enum:
       - nuvoton,ma35d1-usb2-phy
 
+  reg:
+    maxItems: 1
+
   "#phy-cells":
-    const: 0
+    const: 1
+    description:
+      The single cell selects the PHY port. 0 selects the OTG port (USB0,
+      shared with DWC2 gadget controller) and 1 selects the host-only port
+      (USB1).
 
-  clocks:
-    maxItems: 1
+  nuvoton,rcalcode:
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    minItems: 1
+    maxItems: 2
+    items:
+      minimum: 0
+      maximum: 15
+    description:
+      Resistor calibration trim codes for PHY0 and, optionally, PHY1.
+      Each value is written to the RCALCODE field in USBPMISCR for the
+      corresponding PHY. The 4-bit value adjusts the PHY's internal
+      termination resistance. When absent the hardware reset default is used.
 
-  nuvoton,sys:
-    $ref: /schemas/types.yaml#/definitions/phandle
+  nuvoton,oc-active-high:
+    type: boolean
     description:
-      phandle to syscon for checking the PHY clock status.
+      When present, the over-current detect input from the VBUS power switch
+      is treated as active-high. The default (property absent) is active-low.
+      This setting is shared by both USB host ports.
 
 required:
   - compatible
+  - reg
   - "#phy-cells"
-  - clocks
-  - nuvoton,sys
 
 additionalProperties: false
 
 examples:
   - |
-    #include <dt-bindings/clock/nuvoton,ma35d1-clk.h>
+    system-management@40460000 {
+        compatible = "nuvoton,ma35d1-reset", "syscon", "simple-mfd";
+        reg = <0x0 0x40460000 0x0 0x200>;
+        #reset-cells = <1>;
+        #address-cells = <1>;
+        #size-cells = <1>;
 
-    usb_phy: usb-phy {
-        compatible = "nuvoton,ma35d1-usb2-phy";
-        clocks = <&clk USBD_GATE>;
-        nuvoton,sys = <&sys>;
-        #phy-cells = <0>;
+        usb-phy@60 {
+            compatible = "nuvoton,ma35d1-usb2-phy";
+            reg = <0x60 0x14>;
+            #phy-cells = <1>;
+        };
     };
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
