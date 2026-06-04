Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40B47CD6E6B
	for <linux-phy@archiver.kernel.org>; Thu,  4 Jun 2026 10:12:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ngrwXcPjfwwbw0QEpZHK7Q73F7lpBnyjSG39vAJznls=; b=GEd+SSC0m3ik5A
	ojpSbfSOrcShst0TczZ8RhAwPlwvZZ7WaejnL9UYNuOq+pdvCexUpCcOnZXxEbpVhIUPD4rRLg7gz
	pDCQeioLTOpysyLKOT8UliKFYR4P52Xex3nVEsAPXl1UcdWJDh4MkoNOy73bZZBpQvPymU/7gP85M
	3R+vlLjKL934llYAtcMfJDKEY0LZe0YOiBvyONL+YItV9gCl6QFr8c2Kj/8cxsE1RrkUZKJ3PXKhF
	T2Gnl2MS7TjVosqZKLwJF06XI/5tJNlk64rlS4xVIntqxbhRE82gF8oUB267O7Nzy02XmMpVXMmnY
	z7HxGib8WW9PrIXnzw9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV53x-0000000GYB5-3G8l;
	Thu, 04 Jun 2026 10:12:33 +0000
Received: from mail-pj1-x1032.google.com ([2607:f8b0:4864:20::1032])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV53v-0000000GY9t-45uW
	for linux-phy@lists.infradead.org;
	Thu, 04 Jun 2026 10:12:33 +0000
Received: by mail-pj1-x1032.google.com with SMTP id 98e67ed59e1d1-36b7b7b7a80so886938a91.1
        for <linux-phy@lists.infradead.org>; Thu, 04 Jun 2026 03:12:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780567951; x=1781172751; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=du3ehlF1Uyll9z9fTITCQGImnBetFueZCw24wEt4ZU8=;
        b=PGFFknxRKh2OagMUfzMM5xCd8HO/Rij4IOe5eXPL9Sf3ej1osuOCUl8AOy4p6erlB1
         3cU5LnilgCmk4w/yrjFtPQ345QCjtyvhsJqavS83SXGYiWu12rTs0K2cKaRlp9Q0+gAf
         5O/3QJ2kiiiJc5VXi+CQ/LVq7XiGe2ykNaHt8Vx+Cctod6B+gBleAzOqjKD16A4wtH6m
         1+PpSlO5WIDpN4tb/pklfk8wWFxsJdRdIDCZlOshAJKg/RG4yi7hAdSBTnADNRPur9M7
         mlKxkR1azneRJ3Zd9lpTiehkp9wL2HbdvO522BQEj+dznq/EyxzMRATk1y/zBthpej2u
         AWLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780567951; x=1781172751;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=du3ehlF1Uyll9z9fTITCQGImnBetFueZCw24wEt4ZU8=;
        b=mw+ZdeDV3ZYV+B6LSqDc2S0jqenfdICeqOGCUBzpv0UKvDpSvflUc7qFc+4wRd9LXc
         GuK4SguiMSxDPAJ5xGWrDfUZmWkkCsygqSABZBcJY5uH8vtuRtSEG2RgIf6+JQLnGNjA
         Sg/cNsviy+slxReD1sF96zCRi71c3Is0Ix/xovUCi/c+YGZYzsp/GvaWflaRio89hyD3
         bPJRrXoS6pTcE4YvwDQaQmkK3r/mYIPWyQsiBr/dEKAQVvDeYauyRmLpuKjyXHejmIHY
         JroZCg8/cj095tHPeeKM81luWTOT8/coiYsavAAC+pujr7R9rTSGK7b/ElmgLvUbK7yh
         jd2g==
X-Forwarded-Encrypted: i=1; AFNElJ8jc/u8OOSK+8ULSaBi19qgeXfeKqPzfXon41cQvUaRnCa3iomRykDYTzayYtsr4W41bzea6PUPVhc=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywvkk6cQ3+qdvljH6+uKKighemzpOTaBH418+Hw3PEpaslsHupJ
	FFNZaET4GgUtb68Zp3WxgpZQD0Pqz5O2hbgN9xaoVBa25nMDKOUimroM
X-Gm-Gg: Acq92OHsILOerWd3ci3CqExXAjzCr4Ekzbb6kSVVPlbYG9qS/6TEmhkRIEk+1J1YJHK
	Uym7LN5sxjNWu9Kx8r/cpAMsSESwArqTioPkdJw2R47eKpcdfHAwo58z58g56sTRoxPB8sQk/pw
	Ggomy4BWPUPwtY7EeX5u8HyCJWx+NqhBpUGDNkMiFUiBz+z6i5zezWlao0F7IeDDFnle0yR3SSX
	9jM7QHBO99PXHHSf+m2ZCT+93pHKDUw+b5SbX7clzDd7rRgI4Ej3480ZcPjCxh+t00PyK3z/n6k
	AHiNj0mv8zdSOGI75M7/pYUWiZIpa/HcAxorkjFP8KCGOT3Nixlk5iHqRNbWn1SGmccvfahuqUh
	YT8GnL9HWMmxqdRMAYGgAM5hhQKJzNpZem9BP6t8bpDXVN4wNriczAA3H+BkJaW8VnyaD84Sou2
	MOokIyEYYZz68ElIq0OzhLeYP1/V1nNSZ+hFx7di0iPIOtTq1WZzyNXenpH04QVurM1LiMxJthS
	cpPFwygzlpStdZtSEt9Wk4=
X-Received: by 2002:a17:90b:2c8c:b0:368:65d1:893 with SMTP id 98e67ed59e1d1-36f75f9c22bmr2777074a91.5.1780567951044;
        Thu, 04 Jun 2026 03:12:31 -0700 (PDT)
Received: from localhost.localdomain (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-36f70a29cd6sm2483385a91.11.2026.06.04.03.12.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jun 2026 03:12:30 -0700 (PDT)
From: Joey Lu <a0987203069@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jacky Huang <ychuang3@nuvoton.com>,
	Shan-Chun Hung <schung@nuvoton.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Joey Lu <a0987203069@gmail.com>
Subject: [PATCH 1/2] dt-bindings: phy: nuvoton: Add MA35D1 USB2 OTG PHY  binding
Date: Thu,  4 Jun 2026 18:12:19 +0800
Message-ID: <20260604101220.1092822-2-a0987203069@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260604101220.1092822-1-a0987203069@gmail.com>
References: <20260604101220.1092822-1-a0987203069@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260604_031232_017846_997E6C9B 
X-CRM114-Status: GOOD (  15.70  )
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

Add device tree binding documentation for the Nuvoton MA35D1 USB 2.0
OTG PHY driver (nuvoton,ma35d1-usb2-phy-otg).

PHY index 0 (USB0) is an OTG port whose signals are routed by a hardware
mux to either the DWC2 device controller or the EHCI0/OHCI0 host
controllers depending on the USB ID pin state.  PHY index 1 (USB1) is a
dedicated host-only port.

Optional properties allow board-specific resistor calibration trim
(nuvoton,rcalcode) and over-current detect polarity configuration
(nuvoton,oc-active-high).

Signed-off-by: Joey Lu <a0987203069@gmail.com>
---
 .../phy/nuvoton,ma35d1-usb2-phy-otg.yaml      | 79 +++++++++++++++++++
 1 file changed, 79 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/nuvoton,ma35d1-usb2-phy-otg.yaml

diff --git a/Documentation/devicetree/bindings/phy/nuvoton,ma35d1-usb2-phy-otg.yaml b/Documentation/devicetree/bindings/phy/nuvoton,ma35d1-usb2-phy-otg.yaml
new file mode 100644
index 000000000000..19f074565cc6
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/nuvoton,ma35d1-usb2-phy-otg.yaml
@@ -0,0 +1,79 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/nuvoton,ma35d1-usb2-phy-otg.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Nuvoton MA35D1 USB 2.0 host PHY
+
+maintainers:
+  - Joey Lu <yclu4@nuvoton.com>
+
+description:
+  USB 2.0 PHY driver for the Nuvoton MA35D1 SoC, used by the EHCI and
+  OHCI host controllers.
+
+  USB0 (PHY index 0) is an OTG port whose physical signals are routed to
+  either the DWC2 device controller or the EHCI0/OHCI0 host controller by
+  a hardware mux that follows the USB ID pin.
+
+  USB1 (PHY index 1) is a dedicated host port with no OTG capability.
+
+properties:
+  compatible:
+    const: nuvoton,ma35d1-usb2-phy-otg
+
+  clocks:
+    maxItems: 1
+
+  nuvoton,sys:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    items:
+      - items:
+          - description: phandle to the system management syscon.
+          - description: PHY instance index.
+            enum:
+              - 0   # USB0, OTG port (shared with DWC2 gadget controller)
+              - 1   # USB1, host-only port
+    description:
+      A phandle to the syscon node covering the SYS register block, with
+      one argument selecting the PHY instance. Index 0 selects the OTG
+      port PHY (USB0) and index 1 selects the host-only PHY (USB1).
+
+  "#phy-cells":
+    const: 0
+
+  nuvoton,rcalcode:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    minimum: 0
+    maximum: 15
+    description:
+      Resistor calibration trim code written to the RCALCODE field in
+      USBPMISCR. The 4-bit value adjusts the PHY's internal termination
+      resistance. When absent the hardware reset default is used.
+
+  nuvoton,oc-active-high:
+    type: boolean
+    description:
+      When present, the over-current detect input from the VBUS power
+      switch is treated as active-high. The default (property absent) is
+      active-low. This setting is shared by both USB host ports.
+
+required:
+  - compatible
+  - clocks
+  - nuvoton,sys
+  - "#phy-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/nuvoton,ma35d1-clk.h>
+
+    usb_hphy0: usb-host-phy {
+        compatible = "nuvoton,ma35d1-usb2-phy-otg";
+        clocks = <&clk HUSBH0_GATE>;
+        nuvoton,sys = <&sys 0>;
+        #phy-cells = <0>;
+    };
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
