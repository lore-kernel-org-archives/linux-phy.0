Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C65E5CCF9F0
	for <linux-phy@archiver.kernel.org>; Thu, 30 Oct 2025 22:03:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0C4HOwu0RnQvtauRM6nVNPEyPHZgffuFepJo7eRMnvc=; b=AOSgcF0geO/2LE
	/2DZFsBUEfiirlIEeRSafLhZPo0phIeCRPJcy5I/SKSsjrF5KIqRDYjVwbl7A9rfEBj/fX3+UxRsq
	HiFBawZgKIHm/n5IQJTwRRC8/2bD/Gr2atCji7vlOnpWwye722CUQD7chQ0bRWr8etaxkYspSPS8n
	8/B1JPj45XqOf7jIxNf0CHj4P1fIg5jcz2IHwIqalDdgTssGtg3/Ka+LKU6ftPdJJW7CZj0EFkcAK
	7Jy9ZgGZZ0pP4hjJFpe8whYKXsTm7lZEXIADy/qucLiTtgsdrOVHkjYF5nldrafWmy8tB7OhNkfqY
	xEdxVhUMeAsJcaMKUVaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEak2-000000051OA-2AEB;
	Thu, 30 Oct 2025 22:03:34 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEajk-000000051F8-06Fg
	for linux-phy@bombadil.infradead.org;
	Thu, 30 Oct 2025 22:03:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=gLTdLkz5qoTZ4VZft5RozafvHivyKGwCA/saZ7bnL/c=; b=gebBuM21aP42jHM544kEU/VQVu
	wDW3l98gM9WyXSdLgDHKS1K+e48dtoyydeUPR+4Ta1tbO15e7pyqkdTYmcWiAK0x242nTWtmANEn9
	zHmwDBYMtfUc4J7YMism5hRuP2QZLV38RxJTAfsb31u+TOoKzNOjG2V+PvXoWsIYl/GUmmrWM/1+/
	gq26QIEI7F3V/4nvXduyCMtij627mOTY7q1A1a3ULuvlj46Nj/st8IjmIFFrqoae3KfmWhdMfkjFR
	XgWOV32xt3ix6VJlRFFIM9Twk251c/rGiUbLukIl/1ot3E6sx/iHtGnAWceanyKFaCgRkF/Kjv9Na
	s0Eq9tdw==;
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEZru-0000000A5fX-3b2I
	for linux-phy@lists.infradead.org;
	Thu, 30 Oct 2025 21:07:42 +0000
Received: by mail-io1-xd44.google.com with SMTP id ca18e2360f4ac-93e2d42d9b4so70028839f.2
        for <linux-phy@lists.infradead.org>; Thu, 30 Oct 2025 15:03:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1761861786; x=1762466586; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gLTdLkz5qoTZ4VZft5RozafvHivyKGwCA/saZ7bnL/c=;
        b=ayxuIYOgtJ1yLjXZEGOoSXxKB+4vUGmqXpXEUyY+5ydo4MX2ttLPbdXORDrZQJDfio
         W6i4vLzQoVds1tmGngRms61lhvm3jVpFy2BPJ5KM1KVrsLIYr46nxnu3XlskTqCMicmM
         ZeZ1dPd7sjBte4/wc9hiVIyWS7jiRHSCwrN7atXKW7pfxJsVyOP/zHygB62ZMQ9Bd7Y6
         7tCz4llDJwwHUvmSYmQpg//NuSd0FG7xHBezhlYBKQRnTd1Y3JyQWzmp1mrtNED8LH3w
         J0ilJeSVbpkdsPvsC49IhVhoJ5036KwxBaau+CwmyzAl4iNKIFKkGdinVj1kN5kS2f+B
         9E5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761861786; x=1762466586;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gLTdLkz5qoTZ4VZft5RozafvHivyKGwCA/saZ7bnL/c=;
        b=m4mUECZmsl6NReP249z9RmKqQR1dyRMUzxtUFQG2kWQpLstvoZfvatlAX6g2U5L89Q
         OmL/ISbgfYl3bLNP1gy0dwnt2v3R3pGmLp001esV1TCEdzOB8Fbp3B9GNNhURqZY+pHR
         4CV8Zg2b2X0M1R2tr/mXc91QP40cKOapvWhEdWkjRq3Slreq4mGPGluPj/cJ88Tz2tjO
         EMZeQE1A72O9s4HsyYMLEAV5/vYqKbHBTMRp866aJtJfL3fTIAxn1ND5ctsPZ1IzBJyY
         d+I/+poAuseKTnxH2rJ7W1UqYqodbBA/EA39Y6WNi7wNpAHdVfpo6QINV0vir7hCM9Hk
         dZJw==
X-Forwarded-Encrypted: i=1; AJvYcCUL9uFkB2IpXRNq8zcFRa16LB4+f6+6EssgSz7R4OCPENqMT4JGcwNmOwn4FiuxUBLtjJ/2JNwkNGM=@lists.infradead.org
X-Gm-Message-State: AOJu0YwRWrQLzBi/fWdXGwfLDObpdErDPqeybpwysRl8E/R3XlFm2hXp
	YeBlrZfkwTNQQyEzMICc5qauhMul+7vY8a0PprH8A7tYCbOhCge5kktKQRDPLY2csts=
X-Gm-Gg: ASbGnctGmtyUptReL1tPC/BtO3DLJpzHFcqPVkIP4X9INSHf6bFmTNsKW+JnrAQHKjn
	rjskF4IybwDRMdGF2Set0xOdnKJ4kb79J+umNN5Ta16yeLibzurgXmseJKAIIsLlhdPANyYzpl8
	peQmX3Kp8HSfoOL+jRWkLblnbS2fGYVbAG4qEBnvWvlqLcPLQxS6WBXc8R1xshqR7jAOLGgX8Q8
	5IfPr/d/aoBreYlrWuVPyGf+4+4Ad1fbd6UI/ajL70iEpXcVCBK1Y03Wo2KI9U/jxw+cat9Pep+
	5kI9D+qWBC4rAY1BMp1dXUCAyWI0I/K50W6YmFH4uu0Td3ycfUlZdZT299VXix6Fp8qL3CsC2zi
	lrhk3xg3ZbBlpdSvVMo9k9nAE+DAUbTa+ZR/SH515LDtMUu6KgpDaslEWQKRaONgeXSDGhEgRWH
	nYWXUex/wdG7iah/+OPg8nJsEy1iCEde34hJVhi8HbnDujyP5eYlxWPg==
X-Google-Smtp-Source: AGHT+IERTz8/RfKm9GawJGpzZTmHeZoOg9wp59F2G+F2vF71sv/DVlu5xpB+F19/2euE1IqCd4PCrQ==
X-Received: by 2002:a05:6602:3c2:b0:945:ae17:9ae4 with SMTP id ca18e2360f4ac-94822918f39mr229079939f.1.1761861786258;
        Thu, 30 Oct 2025 15:03:06 -0700 (PDT)
Received: from zippy.localdomain (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id ca18e2360f4ac-94359efe149sm604118039f.13.2025.10.30.15.03.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Oct 2025 15:03:05 -0700 (PDT)
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
Subject: [PATCH v4 1/7] dt-bindings: phy: spacemit: add SpacemiT PCIe/combo PHY
Date: Thu, 30 Oct 2025 17:02:52 -0500
Message-ID: <20251030220259.1063792-2-elder@riscstar.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251030220259.1063792-1-elder@riscstar.com>
References: <20251030220259.1063792-1-elder@riscstar.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251030_210739_109890_77F4CD9F 
X-CRM114-Status: GOOD (  17.42  )
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
