Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AAB70D6D230
	for <linux-phy@archiver.kernel.org>; Thu, 18 Dec 2025 15:12:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0C4HOwu0RnQvtauRM6nVNPEyPHZgffuFepJo7eRMnvc=; b=o3vB4+1BKk4bRk
	KEEUBaSYYLXkezYovn9RVKuRdE1uE0MWAogp3Ny8SX5nPugy4oDmu8LE3keGvB166S8heoiE9BbHb
	XBlt+gEU8gSsqdEGLKe/Ubo7A3jRFAarjbpfKWz8CYJDY40trzZ74l2tJiU4IlK2qEQ7ehRDHkvc/
	kDOtGSrqrOoK1vqhFZGy29iBTKWprShMaphQpNDJ1lQ2dLkUgC3ok704sA+Mu1orl2RDwMpZ7vb+q
	NzTq11dasZsfBTW+xmF4R37lGFE2y73GrEg88x0gfN0CaY6jNWz4Cg3o3q2H/NKnESJnke7gSgaTB
	Bdg63PFC2jnVSKFPtckw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWFgM-00000008fCz-1EH0;
	Thu, 18 Dec 2025 15:12:46 +0000
Received: from mail-qk1-x72a.google.com ([2607:f8b0:4864:20::72a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWFgI-00000008fA5-3axW
	for linux-phy@lists.infradead.org;
	Thu, 18 Dec 2025 15:12:44 +0000
Received: by mail-qk1-x72a.google.com with SMTP id af79cd13be357-8c07bc2ad13so19574185a.2
        for <linux-phy@lists.infradead.org>; Thu, 18 Dec 2025 07:12:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1766070761; x=1766675561; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gLTdLkz5qoTZ4VZft5RozafvHivyKGwCA/saZ7bnL/c=;
        b=gftSd7T0slzrtHsM2rPEUKi7jC6svsKfPkODZbxsQ4/JzVBH1i90HIG3mjIiFJtMdA
         yMg20j2bUq6Njt+HHLQyt2a1JY16WpU9y2Q1sSDEWE7lTfyZXwsVQ9pKEpFcXPr07+gq
         G80K/l77TZj/gtkMIjdrkjQNlhDhAmR+w7R2FcvpXRTgc0roY8E6VKONExQWQmV/EMWQ
         SRvVpKlG5REk66mQi5oYDxbOsiHN81hKSXneIR4/BvFoZZiTSovlKuIiWNp8b1Zklpul
         4Et+QXZf+7Qt0Eu06WkzNBsC9NV9sZhvW5KumjXJjGj2CWO2R2bMWmTJDuYSuehzh3e+
         Jfdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766070761; x=1766675561;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=gLTdLkz5qoTZ4VZft5RozafvHivyKGwCA/saZ7bnL/c=;
        b=u4RNdgc6J1Nve+iBkMvtFq0oId5B/k3Mf0oP8+aGQJG1ntJiX4Kz2hUzXc51bDWzHB
         ygqGt+ZOtOXD0mrjypC9lR7bkx0AH9oUJ/Di+kr3WIy50QRVKSVs1xqqYEVZEPjCkUkC
         z0q3seim8e7/wfn5MsUVhkdax/v1HV8Ornjvpa5MwoBkgXPt+HtqpzfAOLIgUv2kFqwT
         q8RwV1gPSbkppA71vSYToQ4OfT5rLHdmC3annOcureyq7yPOf9WuKC9tbvBHF0gJS9hs
         VUbXSrB3p0vW40nM8VD/tu6b8+trRUdNFyGvKMDCo4E9kEfWZu5BxtghBrHLyJcrPIDK
         tRqw==
X-Forwarded-Encrypted: i=1; AJvYcCWBdwOk9cRA2Kpwiw1LubxHT/XPEEm9qlyC35lNzV8w+sZSzCPnFkSTjJ5YacG72rl2k+esmD2nA94=@lists.infradead.org
X-Gm-Message-State: AOJu0YxT4r1ZFNsIxpzCzsDtOVUayaT/DhCGe7GBCPx2FULVHWX9zJF0
	PQ/wbFGqR1HEA/MW9ux9zgtot78AS5L6nHDginISirz17Ydghl3H3XOOWOIBTkOrMU+z6V8ed5s
	hAjfy
X-Gm-Gg: AY/fxX6urHvHXgL0lsPmP1od/YU/TyFz9KKLniw2UXfAPHRqH3vk4VZUTNg97EoLOwi
	R8VB9OEYmjy7DhY2flKM7fsESmc2lmkDzmBOZ4AASp7TE7ESB6IUHDkyOewl8rtZ5vEtHeEVnIu
	aNX/w/hquNwOQYoDer3KCFv8va4kf4uzAQmsVAzL/igg2jK+0FX1XNdTk9rQEo74zlGU9x3D/de
	PHQRjQvCfX97QDTc6WUTwo9ZDupQq/tH7nACqYjRwTzqYLcZyNNxRAoYErivPXGUCVoQn8oEFYh
	4Y301Wa1yZJALhClXZKNs0yyvP+t/ojPD5Q6KKw2CaSSqgP6iSqtOR09TVvTri2Z7nwn8UYEv/G
	MCsRLQSgSvuJMA6p5n58xdaywDc5m9pXGdrvSV+qAIptwhd1/mms/XnF2XDmTBczyBIWKpJy9d1
	DUM/4CpCSr/3atZnJVb8O1b/D8s++dj2jySrb02fukP1OFl5cgsYa9dA==
X-Google-Smtp-Source: AGHT+IHSKbVF665YqEXD6O7jBmj3jVOl2qS/oc2FAj0GURakfZVq9yDRUofhfwxuBkxQ2pFqUC7fSw==
X-Received: by 2002:a05:620a:6919:b0:8b2:e88e:a518 with SMTP id af79cd13be357-8bb3a384dafmr3194221685a.68.1766070761282;
        Thu, 18 Dec 2025 07:12:41 -0800 (PST)
Received: from zippy.localdomain (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8beeb5d6952sm186866985a.3.2025.12.18.07.12.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Dec 2025 07:12:41 -0800 (PST)
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
Subject: [PATCH v7 1/5] dt-bindings: phy: spacemit: Add SpacemiT PCIe/combo PHY
Date: Thu, 18 Dec 2025 09:12:27 -0600
Message-ID: <20251218151235.454997-2-elder@riscstar.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251218151235.454997-1-elder@riscstar.com>
References: <20251218151235.454997-1-elder@riscstar.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_071242_908920_A2B3E83B 
X-CRM114-Status: GOOD (  17.31  )
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
