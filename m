Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41260CCFA19
	for <linux-phy@archiver.kernel.org>; Fri,  7 Nov 2025 19:16:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zd28kDDoCvVY7r+JSfgO6L5iVxjstQPOMxuz3QUqKpQ=; b=vucojwJl+4POT0
	83lJ28hiXZFOqxcf2fk8bqJ1JZEeHvZasmsx+3pwewPSnlfCrclu14KwW6fb7C5s1C279Qr2t4U1l
	QYYJ2BxOy4zK4k6xdQeeJ/rjcBsNDZU4cIQgGF2PoXEeXsC0ivbDfxF2pgswvIOK/skPw6TufnFVo
	wlet7+HS5kjAF8o2+RGN7S74OMz6h+fWEHH6n1aOPRLJe/TkCvWHCKPeTfuNXIUw7AHMd8ZqlK4x3
	THNaANJEYkueh6YnsWw9Mssx1WbRPP7jUmXHKDXBZ2fx7bC/7CAUJ00S2oZ23ov5+ujnWQovMkHg9
	+5z2ZpwcMPjUymw66scw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHRwU-00000000fg6-2BuK;
	Fri, 07 Nov 2025 19:16:14 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHRwL-00000000fYy-3SLz
	for linux-phy@lists.infradead.org;
	Fri, 07 Nov 2025 19:16:12 +0000
Received: by mail-io1-xd42.google.com with SMTP id ca18e2360f4ac-93e2d42d9b4so38972239f.2
        for <linux-phy@lists.infradead.org>; Fri, 07 Nov 2025 11:16:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1762542965; x=1763147765; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ay3vJcZn8gR8uhIOX8xdTsiqp7cEn/zrhd4VkngAbaw=;
        b=0kF3NFmh7MNBkUYnnHwxRe54a17sEmUb/Dc7wWGCG5DP5+sw582DEZ/m+gzNpwHEFl
         AuKbfTjVRTHLFCoUqpcQFNFDtQPVV6nnb7Cjwo3n26s0T1v95kI/DkyMF5hiUGmAzZ2r
         kzpy/qTYxzI/j38ritF9cJ9L9wkeOnt4MnYwRS8+cxI44R+z+eLz2QVWYX7k2vW9zJlH
         I6dLJYMtBWx5iDLePeWuG2NDJ4WaCrE+MEkS8EtVo5JQAB8Yzn/x+zFI5p9VgqE5h1pt
         PJaKJDlrzOWx5wdunP4xzhtS3OZAv0+uo7n2yDXReTC0PCH9X1mDTd25iSpAD/1m0GwZ
         QQzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762542965; x=1763147765;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Ay3vJcZn8gR8uhIOX8xdTsiqp7cEn/zrhd4VkngAbaw=;
        b=qPaMidJoczGSRAutC/XhqD5aNZCYBpwHvW3GHAyz3MeJQs9u48fKbDBKWgb3n7X8pP
         JqYIk8ufUoCfTy8Co/dZACMGGNZPKN54NtlaVFVJi9L6O2hHNFMk72qN832Eekt8KXqh
         +GK39hk/GeyC/Ks4CbbIny2KP4GPHyjn22Cik4rFc+VOoV7KYoBrLFwizitzXW1zLThG
         Vq/4tre6w37U50aQaZJiLY+xa1PpHOeYRzmbBZIAdJckjm0g+6CBmfUXOQQ+V01cx+wB
         z91/9ZMt7ONfX3IaNhr+r3PKSge5LR4v5y0Ha+pDMBE7yC+CEueSPRxPDnwanaXWeob9
         xPnA==
X-Forwarded-Encrypted: i=1; AJvYcCWXNInD+wtHZLyJFGATzC8ItxtH0ay0JjrRcB99GUsLk40BvCsGUGESc4AAQSXPnc/RemwBwWgoUmk=@lists.infradead.org
X-Gm-Message-State: AOJu0YwOEY7lYxeQ8eDex1+QlX7X3fH/mMznWhIJceiTX7vFtrvmkMTM
	VrFWNwjedIwLRoOQTfPmpn9GpDSUi8Tg/+PpLk6RPu2EWzpEO9qR+HurYPMVx/y6Q3I=
X-Gm-Gg: ASbGncvqlxvgjKs1GvpGGy7V7qUlBzziOSUEojbOvvfwQnf4Wdxrecy/vaxn6xTS/z2
	Pgj/RX5FZqgmz3Txkk74PAivGdiTNuaL95AAeXvWdZTq2e1PL+Q2lEILlDaqJxRBXjRxuj+TQZV
	CPXbptYJswqA+gTt1QUZNYX5MO5UhZ36mTIfxtNHV9F7aO4Zemmst8ncEGzIExM2fIOLtcs44KQ
	d8jaMkYrHzH1qjZIuaZud7fP3z7Nr/27EO4Wc5iAJjSTQfUwGSvd1dAjMPDn/7btyYj4xVfyg1q
	qvBG2mjEMKBViPaOovc3d7b0cteM/FXwv2qFYSxIhCcen62rf3jdRKUiYH2oSEHX8rOesHHaizb
	FXNuGdUd81ejojyxGGzpEsF5PrYIDQlLfdXmeJA1dNGghD8XzrOMpfrvYbzjY89AecoQUyITxFG
	BY/Sv6apmpMMJfNq0Cj3LYcO0vudTQEvBNSsRilce/wMk=
X-Google-Smtp-Source: AGHT+IHCQMw8gkgpun15fOExG5Sy7WYN+BCNzSaipPURAOzJ4FqM/yDv4HIDN8wPjwaYW4Sy0gZ/Fw==
X-Received: by 2002:a05:6602:15cf:b0:948:7c51:1977 with SMTP id ca18e2360f4ac-94895f83afemr60413039f.4.1762542965062;
        Fri, 07 Nov 2025 11:16:05 -0800 (PST)
Received: from zippy.localdomain (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id ca18e2360f4ac-94888c34c6asm118772939f.10.2025.11.07.11.16.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Nov 2025 11:16:04 -0800 (PST)
From: Alex Elder <elder@riscstar.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	vkoul@kernel.org,
	kishon@kernel.org
Cc: dlan@gentoo.org,
	guodong@riscstar.com,
	devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 1/7] dt-bindings: phy: spacemit: Add SpacemiT PCIe/combo PHY
Date: Fri,  7 Nov 2025 13:15:50 -0600
Message-ID: <20251107191557.1827677-2-elder@riscstar.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251107191557.1827677-1-elder@riscstar.com>
References: <20251107191557.1827677-1-elder@riscstar.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251107_111605_868946_3C1E5F8F 
X-CRM114-Status: GOOD (  17.25  )
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

Add the Device Tree binding for the PCIe/USB 3.0 combo PHY found in
the SpacemiT K1 SoC.  This is one of three PCIe PHYs, and is unusual
in that only the combo PHY can perform a calibration step needed to
determine settings used by the other two PCIe PHYs.

Calibration must be done with the combo PHY in PCIe mode, and to allow
this to occur independent of the eventual use for the PHY (PCIe or USB)
some PCIe-related properties must be supplied: clocks; resets; and a
syscon phandle.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Alex Elder <elder@riscstar.com>
---
v5: - Wrap lines at 80 columns

 .../bindings/phy/spacemit,k1-combo-phy.yaml   | 114 ++++++++++++++++++
 1 file changed, 114 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/spacemit,k1-combo-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/spacemit,k1-combo-phy.yaml b/Documentation/devicetree/bindings/phy/spacemit,k1-combo-phy.yaml
new file mode 100644
index 0000000000000..b59476cd78b57
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/spacemit,k1-combo-phy.yaml
@@ -0,0 +1,114 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/spacemit,k1-combo-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: SpacemiT K1 PCIe/USB3 Combo PHY
+
+maintainers:
+  - Alex Elder <elder@riscstar.com>
+
+description: >
+  Of the three PHYs on the SpacemiT K1 SoC capable of being used for
+  PCIe, one is a combo PHY that can also be configured for use by a
+  USB 3 controller.  Using PCIe or USB 3 is a board design decision.
+
+  The combo PHY is also the only PCIe PHY that is able to determine
+  PCIe calibration values to use, and this must be determined before
+  the other two PCIe PHYs can be used.  This calibration must be
+  performed with the combo PHY in PCIe mode, and is this is done
+  when the combo PHY is probed.
+
+  The combo PHY uses an external oscillator as a reference clock.
+  During normal operation, the PCIe or USB port driver is responsible
+  for ensuring all other clocks needed by a PHY are enabled, and all
+  resets affecting the PHY are deasserted.  However, for the combo
+  PHY to perform calibration independent of whether it's later used
+  for PCIe or USB, all PCIe mode clocks and resets must be defined.
+
+properties:
+  compatible:
+    const: spacemit,k1-combo-phy
+
+  reg:
+    items:
+      - description: PHY control registers
+
+  clocks:
+    items:
+      - description: External oscillator used by the PHY PLL
+      - description: DWC PCIe Data Bus Interface (DBI) clock
+      - description: DWC PCIe application AXI-bus Master interface clock
+      - description: DWC PCIe application AXI-bus slave interface clock
+
+  clock-names:
+    items:
+      - const: refclk
+      - const: dbi
+      - const: mstr
+      - const: slv
+
+  resets:
+    items:
+      - description: PHY reset; remains deasserted after initialization
+      - description: DWC PCIe Data Bus Interface (DBI) reset
+      - description: DWC PCIe application AXI-bus Master interface reset
+      - description: DWC PCIe application AXI-bus slave interface reset
+
+  reset-names:
+    items:
+      - const: phy
+      - const: dbi
+      - const: mstr
+      - const: slv
+
+  spacemit,apmu:
+    description:
+      A phandle that refers to the APMU system controller, whose
+      regmap is used in setting the mode
+    $ref: /schemas/types.yaml#/definitions/phandle
+
+  "#phy-cells":
+    const: 1
+    description:
+      The argument value (PHY_TYPE_PCIE or PHY_TYPE_USB3) determines
+      whether the PHY operates in PCIe or USB3 mode.
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - resets
+  - reset-names
+  - spacemit,apmu
+  - "#phy-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/spacemit,k1-syscon.h>
+    phy@c0b10000 {
+        compatible = "spacemit,k1-combo-phy";
+        reg = <0xc0b10000 0x1000>;
+        clocks = <&vctcxo_24m>,
+                 <&syscon_apmu CLK_PCIE0_DBI>,
+                 <&syscon_apmu CLK_PCIE0_MASTER>,
+                 <&syscon_apmu CLK_PCIE0_SLAVE>;
+        clock-names = "refclk",
+                      "dbi",
+                      "mstr",
+                      "slv";
+        resets = <&syscon_apmu RESET_PCIE0_GLOBAL>,
+                 <&syscon_apmu RESET_PCIE0_DBI>,
+                 <&syscon_apmu RESET_PCIE0_MASTER>,
+                 <&syscon_apmu RESET_PCIE0_SLAVE>;
+        reset-names = "phy",
+                      "dbi",
+                      "mstr",
+                      "slv";
+        spacemit,apmu = <&syscon_apmu>;
+        #phy-cells = <1>;
+    };
-- 
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
