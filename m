Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2415BE87846
	for <linux-phy@archiver.kernel.org>; Tue,  3 Feb 2026 16:19:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CBwDVtHAQchjDmAsvLUag+xfKSrmMqC8SvyT5miW2IQ=; b=ATnmcr2N1GTUo8
	43P/dyu8DmngDNshNtrHH3Y72FDqNxV07IBN6sj8eztJnKtlEPWcaQoKd06atYZokEYEJ6idceu7J
	GSLnO/RDyk4qz4qQcnZxdbDdKXlDTCmybFYPXsxfclmYdvdmgOtOIU2rCGsPeEgACU1e/CSTUXyQ7
	BsnexVOBKRtZNfY967sqv8NngsH9P8khP5xrs7QaPxeEoqpLvqHKhXclzy2jKLYvBb0EYznv+RJna
	TozmRJrUN2lXTlcWBA96iwbyicX9XehaAiFP4lQgrbTvrxL6LCX7jT5eRT7CK/szIvNXB5k7oM1K5
	mX4GvSejk2pRJhfV5OFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnJ7d-00000006v0D-34Rd;
	Tue, 03 Feb 2026 16:19:25 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnJ7a-00000006utY-18dD
	for linux-phy@lists.infradead.org;
	Tue, 03 Feb 2026 16:19:23 +0000
Received: by mail-wm1-x344.google.com with SMTP id 5b1f17b1804b1-4806e0f6b69so42808845e9.3
        for <linux-phy@lists.infradead.org>; Tue, 03 Feb 2026 08:19:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1770135560; x=1770740360; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j3Z4Yd2fRXfRsRi8a3YRl2niiXC4DwI7ABHuLbV15ig=;
        b=MPDx3z5M6B0Ac1H1gsnCTbG5zO3nZMvyvTjod5uXSqhGyXkpN7O35ILhI2KX8tTJjr
         bROyuAl85sfHLWvrDrqRjbsKi/MK0Z+9MNm8vJ2v+BQbNTX4EcnTtgK6uelP/+NBoIil
         KrvfnlUwv8Kz5HKEVFN36wuHbCCzrjZAXaDVfJYrwllCJQH+kIOKF4EnEpi8X1LgTdbd
         GSq/j3tRRkG4kMUjd70JpjrAo+iuW/F6jD1gNHo+M5YRszP+LZYZSFRVBVr/M6GZb9Df
         WgUBiPc77dGm+v25CYzFNqTQCxIQ6n3rTysRWynjWGhQAkiPw1VRbW7toplqBk6K21H1
         imdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770135560; x=1770740360;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=j3Z4Yd2fRXfRsRi8a3YRl2niiXC4DwI7ABHuLbV15ig=;
        b=XDEfeyq+H4EOq7t6QnO8GEN96vFPI4Tj7TUg8W+sJq8iEplXSd1neBx62HBDKLafe5
         ZOWR94IP69L/Ov5bShqOCnFPUAkt6xVZkNRxI0MpNQt8c1mTBTFcot3qrcSB0xpdQhaf
         XlbLlKXSjq3IW6rBxdAEu28ndI1QBECuW3qxQA1GxvgfHyTqqV8LWapL2fQmCp1iV64C
         IfAYudqfLIEazi4dbiViRbqrzjfvdeN0yV8A1uChasEnzJ8EFyj2TUWdztX99dVbbxn8
         sTk8cgBBbllIHQQivc2nc/hWG8L39JvF/IYXLXXWZvPf8TjMkLWRxa0kFa7J4FvTcL6x
         bUrg==
X-Forwarded-Encrypted: i=1; AJvYcCWCxAV/5V9qIz6s3J2HCt9W3HaGzWh0v4hJrJfiUnjFYYcxcu7UfrHLWq3KRQ0rKwYoEJFaiL7WxFQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YyvO8AIE55M3U9Ct0Bwxu0tZ7Oqj5H8uYvKFknEqywkmNFJOuCg
	ToQ+nU9L+I6kmGnL9RLldszXsMrE+Ys/vrfTf1a17FgKNgnJUqXuhf64XkJP5tKrf1M=
X-Gm-Gg: AZuq6aJ9PwK/1gscokdsWwTIgqfrjNuLq+dUzDDvsBMiIXMgyksuEtNhN7YrOF/iD7x
	vmFr+NZ8IOS7DEVdXqd8bHluv80N7LDzB2AXxcl29TzC/M4WmskKigSE0NdczyR3OSvxdlnrGsB
	tfnnoBDcwf8mMAZmS+vcYGlGEUisca9qhBXyo1WO+LdZelInOQ22m9PdvnQx8ppAUU+RoIANYko
	+2f+joYUtHoQQV61rICjuCX4IvmX2j4R8n8DP5Mr84tJRXIIvvyWqxk0+0ZydQ7RBZppTe36jB5
	yXZ8T1f1K8NeqSkX3Nz8ymiU7cavNSSkdz1Mn9lIbFMMkFX9PwqVVfs0bbs2ewZsxXuPgW9Mxde
	YnjUrT/HsZTcZuNr8htt6UVzDN/yMsydokZybPWKAgiQLtAagPjpobYmIztO/aSWJAjkB6w4A9x
	vBkuOEgbeOEfiFQFYqZmw=
X-Received: by 2002:a05:600c:8489:b0:483:ea6:8767 with SMTP id 5b1f17b1804b1-4830ea687b8mr681395e9.36.1770135560329;
        Tue, 03 Feb 2026 08:19:20 -0800 (PST)
Received: from vingu-cube.. ([2a01:e0a:f:6020:81d1:b874:c1dc:42e5])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-482dbd21f5dsm144120785e9.8.2026.02.03.08.19.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Feb 2026 08:19:19 -0800 (PST)
From: Vincent Guittot <vincent.guittot@linaro.org>
To: vkoul@kernel.org,
	neil.armstrong@linaro.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	ciprianmarian.costea@oss.nxp.com,
	s32@nxp.com,
	p.zabel@pengutronix.de,
	linux@armlinux.org.uk,
	ghennadi.procopciuc@nxp.com,
	Ionut.Vicovan@nxp.com,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	netdev@vger.kernel.org,
	horms@kernel.org
Cc: Frank.li@nxp.com
Subject: [PATCH 1/4 v2] dt-bindings: serdes: s32g: Add NXP serdes subsystem
Date: Tue,  3 Feb 2026 17:19:14 +0100
Message-ID: <20260203161917.1666696-2-vincent.guittot@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260203161917.1666696-1-vincent.guittot@linaro.org>
References: <20260203161917.1666696-1-vincent.guittot@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260203_081922_339546_82512B76 
X-CRM114-Status: GOOD (  12.35  )
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

Describe the serdes subsystem available on the S32G platforms.

Signed-off-by: Vincent Guittot <vincent.guittot@linaro.org>
---
 .../bindings/phy/nxp,s32g-serdes.yaml         | 154 ++++++++++++++++++
 1 file changed, 154 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/nxp,s32g-serdes.yaml

diff --git a/Documentation/devicetree/bindings/phy/nxp,s32g-serdes.yaml b/Documentation/devicetree/bindings/phy/nxp,s32g-serdes.yaml
new file mode 100644
index 000000000000..fad34bee2a4f
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/nxp,s32g-serdes.yaml
@@ -0,0 +1,154 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/nxp,s32g-serdes.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NXP S32G2xxx/S32G3xxx SerDes PHY subsystem
+
+maintainers:
+  - Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>
+
+description: |
+  The SerDes subsystem on S32G SoC Family includes two types of PHYs:
+    - One PCIe PHY: Supports various PCIe operation modes
+    - Two Ethernet Physical Coding Sublayer (XPCS) controllers
+
+  SerDes operation mode selects the enabled PHYs and speeds. Clock frequency
+  must be adapted accordingly. Below table describes all possible operation
+  modes.
+
+  Mode  PCIe	XPCS0		XPCS1		PHY clock	Description
+                SGMII		SGMII		  (MHz)
+  -------------------------------------------------------------------------
+  0	Gen3	N/A		N/A		100		Single PCIe
+  1	Gen2	1.25Gbps	N/A		100		PCIe/SGMII
+  2	Gen2	N/A		1.25Gbps	100		PCIe/SGMII
+  3	N/A	1.25Gbps	1.25Gbps	100,125		SGMII
+  4	N/A	3.125/1.25Gbps	3.125/1.25Gbps 	125		SGMII
+  5	Gen2	N/A	        3.125Gbps     	100		PCIe/SGMII
+
+properties:
+  compatible:
+    oneOf:
+      - enum:
+          - nxp,s32g2-serdes
+      - items:
+          - const: nxp,s32g3-serdes
+          - const: nxp,s32g2-serdes
+
+  reg:
+    maxItems: 4
+
+  reg-names:
+    items:
+      - const: ss_pcie
+      - const: pcie_phy
+      - const: xpcs0
+      - const: xpcs1
+
+  clocks:
+    minItems: 4
+    maxItems: 5
+
+  clock-names:
+    items:
+      - const: axi
+      - const: aux
+      - const: apb
+      - const: ref
+      - const: ext
+    minItems: 4
+
+  resets:
+    maxItems: 2
+
+  reset-names:
+    items:
+      - const: serdes
+      - const: pcie
+
+  nxp,sys-mode:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: |
+      SerDes operational mode. See above table for possible values.
+
+  '#address-cells':
+    const: 1
+
+  '#size-cells':
+    const: 0
+
+patternProperties:
+  '^serdes[0,1]_lane@[0,1]$':
+    description:
+      Describe a serdes lane.
+    type: object
+
+    properties:
+      compatible:
+        enum:
+          - nxp,s32g2-serdes-pcie-phy
+          - nxp,s32g2-serdes-xpcs
+
+      reg:
+        maxItems: 1
+
+      '#phy-cells':
+        const: 0
+
+    required:
+      - reg
+      - compatible
+
+    unevaluatedProperties: false
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - clocks
+  - clock-names
+  - resets
+  - reset-names
+  - nxp,sys-mode
+  - '#address-cells'
+  - '#size-cells'
+
+additionalProperties: false
+
+examples:
+  - |
+    bus {
+        #address-cells = <2>;
+        #size-cells = <2>;
+        serdes0: serdes@40480000 {
+          compatible = "nxp,s32g3-serdes", "nxp,s32g2-serdes";
+            reg = <0x0 0x40480000 0x0 0x108>,
+                  <0x0 0x40483008 0x0 0x10>,
+                  <0x0 0x40482000 0x0 0x800>,
+                  <0x0 0x40482800 0x0 0x800>;
+            reg-names = "ss_pcie", "pcie_phy", "xpcs0", "xpcs1";
+            clocks = <&clks 1>,
+                     <&clks 2>,
+                     <&clks 3>,
+                     <&clks 4>,
+                     <&serdes_100_ext>;
+            clock-names = "axi", "aux", "apb", "ref", "ext";
+            resets = <&reset 9>,
+                     <&reset 8>;
+            reset-names = "serdes", "pcie";
+            nxp,sys-mode = <1>;
+            #address-cells = <1>;
+            #size-cells = <0>;
+            phy_pcie0: serdes0_lane@0 {
+              compatible = "nxp,s32g2-serdes-pcie-phy";
+              #phy-cells = <0>;
+              reg = <0>;
+            };
+            phy_xpcs0_0: serdes0_lane@1 {
+              compatible = "nxp,s32g2-serdes-xpcs";
+              reg = <0>;
+            };
+        };
+    };
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
