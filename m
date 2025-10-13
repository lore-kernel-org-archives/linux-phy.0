Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 546D4CCD183
	for <linux-phy@archiver.kernel.org>; Mon, 13 Oct 2025 15:35:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=93x9cG5MxzRXLDfSkFVePcMGD7MoI9tKpxSHwbNvLP0=; b=H7dv4lg9Jqq1B7
	s5D4tQOwsmDu+JohCCu/x4h9KlsRpMl2IhxlxZ5XNDYZSRLEyLdXU+uyvOrgMWtF04eB+vbmBaHSG
	gnpriH2BXNmjYPwnATNH+Q+f+GJ+9tqjxiJ9Bqqg9ts6HYXSXv1z8e+zF0yQGJRdYQgrE1hOgi7C3
	qnNF/hIEySI1Osp+JkADF1KIBWkxPC+6BXIw5oyZZkuQUSsoe9B4i6XibmzYZyc6FmeZW4iRsC3TB
	D5uKnw7dfWW+boxQHk9oogzBKqIxm215YRZseq3TEMr4G6d2no9K4foBL/ORgioOIq28JBA5Ot6sl
	/sbh+3F2IqAeEf4SGvnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8KaI-0000000Di6P-0LhM;
	Mon, 13 Oct 2025 15:35:38 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8KaD-0000000Di16-2yhQ
	for linux-phy@lists.infradead.org;
	Mon, 13 Oct 2025 15:35:35 +0000
Received: by mail-io1-xd41.google.com with SMTP id ca18e2360f4ac-912d4135379so174756139f.1
        for <linux-phy@lists.infradead.org>; Mon, 13 Oct 2025 08:35:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1760369733; x=1760974533; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RoI6kMthZduzT8ZYZ3qN3cAQpgGG6MRRgU4QbQyijoo=;
        b=XQf1ENGp3PKoO3KyVF1yY7Z/21EuH6v3nZMNEQ16fZ9W2ihUdQpBon3n/7cUgT4m2l
         crB8d3VFQOa5+hgNLZdQB5cnVAtw7CSJN23mHjHBhe+AmuHSEzaCpSeO/748s63wE5Jb
         QFT50LbAlw35m28+tLXtIqGGntXlAbfiUiDdi6RUgceu/vc265kRi8I7dGQqitXipAzJ
         8wjYJqlWjAwZuJFQGybgkD56rjsyDispyUvO2t8O8hoCc7BZSZDPp1+rVupeWpCEifwe
         yRlWEwgXh8d2SvrA86uUk2brzadPborrVN1uLMzhtv3z5f/Yd97mWFO9pJeO55YYTHiR
         MaQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760369733; x=1760974533;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RoI6kMthZduzT8ZYZ3qN3cAQpgGG6MRRgU4QbQyijoo=;
        b=wRojQVRx+/QaUdpcXap0J04AXPp0sahqE7Nu7mfXSFNuVmgMDVxXdOH3AaYA9jQh0l
         zjc/4yR8CvTlarj5R9LAeL4MJdIHSVi6d66QxwIvJAAzoqMk2/BEidzEu9XqF10taUrc
         klCRZWk4p1sVDF6ci2rE7Ee4cRJqOL4mMxEXJ36uGwzVYUy1hSFbDXfapCB5z2abnjet
         x4IFlfPmFIZdw8Gdpnz8iGmaa9Gv5Pt8pWPhdrF9VoLkurUfwxzJPH8ldGfaytGBl+JE
         MiR2q0e7vb9RtO1dkvtdZK1JoRSbB9B+e7Rp7tv1uqSjqHYY0P1nNIrT2B7uAS+v5GZN
         7ydg==
X-Forwarded-Encrypted: i=1; AJvYcCVeHejlGvnlHfiReF0WlnYuxBRwpQ5dG7OGWsQLjwWX6uP7VS4nvckNxGE8P75ajR6WfWNOLXJRL2Q=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxu4QYD1PQ0I/7SkOYzWkieTbyWZQ7lOJHsxmj/L/82IsaYL57f
	dyZQk6Y+PTvsTkSPJtCIy+br4jk/+2COMdySFb/p5E/5pySQLKswVG8E8w6MZ2J8w6k=
X-Gm-Gg: ASbGncvnOcNpl58jZo2aDDnSGuz1CfI2E1A6eDZvw7oxMVg8sqyeSn+b/LC7mc6IdYw
	qFPFkSaA3tGnskUiEdf5u9hLFECS8+1IJ2mpqc2bhsXuP1ceM3+KL2kwDTJMGunj6XkMrPn/JyY
	DTBNmvAD2LG1p29Nl9wsegttZdbrvrUS4j607+ITsMX7CMGiENlwL2h0W9uhFIslE04s5LEZi4b
	PtbfMcD1/yeGHYcL+6UKd28Ml6phIUWJ9wDWrtYgd74oTJruRK4uLbfDt5PNt952VX+MwfBazvj
	0rE/esl2wKQQzQz7Wzz2WIdDMoSrNstr2tcZ32bnqZydrKOu257d9ApSEMN2klp1e46tqCn6AiU
	6CleZw2Ib05QxmEh8siBLQL2xLxAsTnInmv3GPM7BhO3E5j2SF7mY9o0LkQl4+ePDpFe8JtJhW+
	pHaw1FTsKH
X-Google-Smtp-Source: AGHT+IHNZy44agm51sCB0W97tyTX1zzziU2yBhjgQ7PRISv17V55+lCQRt+SG1OTrzoY5/d0w7/HeA==
X-Received: by 2002:a05:6602:492:b0:900:1fa2:5919 with SMTP id ca18e2360f4ac-93bd19882e8mr2625044139f.9.1760369732669;
        Mon, 13 Oct 2025 08:35:32 -0700 (PDT)
Received: from zippy.localdomain (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-58f6c49b522sm3910266173.1.2025.10.13.08.35.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 08:35:32 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	bhelgaas@google.com,
	lpieralisi@kernel.org,
	kwilczynski@kernel.org,
	mani@kernel.org,
	vkoul@kernel.org,
	kishon@kernel.org
Cc: dlan@gentoo.org,
	guodong@riscstar.com,
	pjw@kernel.org,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	p.zabel@pengutronix.de,
	christian.bruel@foss.st.com,
	shradha.t@samsung.com,
	krishna.chundru@oss.qualcomm.com,
	qiang.yu@oss.qualcomm.com,
	namcao@linutronix.de,
	thippeswamy.havalige@amd.com,
	inochiama@gmail.com,
	devicetree@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/7] dt-bindings: phy: spacemit: add SpacemiT PCIe/combo PHY
Date: Mon, 13 Oct 2025 10:35:18 -0500
Message-ID: <20251013153526.2276556-2-elder@riscstar.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251013153526.2276556-1-elder@riscstar.com>
References: <20251013153526.2276556-1-elder@riscstar.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251013_083533_779397_F60D07E5 
X-CRM114-Status: GOOD (  17.84  )
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

Signed-off-by: Alex Elder <elder@riscstar.com>
---
v2: - Added '>' to the description, and reworded it a bit
    - Added an external oscillator clock, "refclk"
    - Renamed the "global" reset to be "phy"
    - Renamed a phandle property to be "spacemit,apmu"
    - Dropped the label and status property from the example

 .../bindings/phy/spacemit,k1-combo-phy.yaml   | 114 ++++++++++++++++++
 1 file changed, 114 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/spacemit,k1-combo-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/spacemit,k1-combo-phy.yaml b/Documentation/devicetree/bindings/phy/spacemit,k1-combo-phy.yaml
new file mode 100644
index 0000000000000..6e2f401b0ac27
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
+      - description: DWC PCIe Data Bus Interface (DBI) reset
+      - description: DWC PCIe application AXI-bus Master interface reset
+      - description: DWC PCIe application AXI-bus slave interface reset
+      - description: PHY reset; must be deasserted for PHY to function
+
+  reset-names:
+    items:
+      - const: dbi
+      - const: mstr
+      - const: slv
+      - const: phy
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
+        resets = <&syscon_apmu RESET_PCIE0_DBI>,
+                 <&syscon_apmu RESET_PCIE0_MASTER>,
+                 <&syscon_apmu RESET_PCIE0_SLAVE>,
+                 <&syscon_apmu RESET_PCIE0_GLOBAL>;
+        reset-names = "dbi",
+                      "mstr",
+                      "slv",
+                      "phy";
+        spacemit,apmu = <&syscon_apmu>;
+        #phy-cells = <1>;
+    };
-- 
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
