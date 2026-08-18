Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 849E2C5DF7D
	for <linux-phy@archiver.kernel.org>; Tue, 18 Aug 2026 14:30:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OGhOB3VXVp7daKsjpVrZ/0r4TYa0JdQQPrt34Imvybc=; b=1GV4QJURYpqyj7
	XHH98GOvD7RA0ufrG/KQ85ItXZtK3433bX6AuxK9THuktXHCWTOcexD9MwBK2JQSarzIlueMfL/GW
	+XGlADol3MMbjrOwIoJADoKRR1Jlvztvk4q7hkT4Qja8PzJ++yJtIAkJ3Gjp2YYxYf694OSUPgbv2
	9khmrgZeByGQCkpPXOs+GzLa+mnWvHlTbMaWw+/hM7n6XFgg4dH4s5g1Pcgl9sOVpi35QueCbXCcY
	B7s7AfwHlYfBBM17SggRN2SPcekb61A0B6sXlpV0JmuSIjLHARUu5uiG4f/hg3TWebFpNu7IYkSmz
	qsuIcgeF0G9A65Dh5WLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwKpE-00000008Aq3-0eok;
	Tue, 18 Aug 2026 14:30:00 +0000
Received: from mail-pl1-x634.google.com ([2607:f8b0:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwKpB-00000008AoE-1EqV
	for linux-phy@lists.infradead.org;
	Tue, 18 Aug 2026 14:29:58 +0000
Received: by mail-pl1-x634.google.com with SMTP id d9443c01a7336-2cf49dc28ccso8109065ad.0
        for <linux-phy@lists.infradead.org>; Tue, 18 Aug 2026 07:29:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787063396; x=1787668196; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=AbV7RIHYMEgMD35kCL1q43FBlvr9xDn3Pi9g2Kfmf8I=;
        b=UhL6VOOvnmBQSlC1IlvsNpp3+Ex8nZ34t1oiR3yHElqAvPFP78zALTQdNF0/oqAubv
         cLO82u8bsAbb2W4CUppA7sCbEKOXVbvwtv5O8wsPhEHSGc7RIFfC2mk354ifUcGNnDeZ
         YwPo7Aw+v+xSreo8OPNQB6lSthA6ml+JSej9DDCjp45bbBnKrzI2/WqgEMpRN973zBd9
         g7eUYqMggFm8IT0rBUHqr4tau1mk556nQXPPs8oa1boGpixEN/Lzt0jEzMzaDdxaZqfd
         G10cxu0lpejsYPPsWRKgSTEqlXgq0AQAaNbiiymzOsd0sRnB4+ZCCRAJp+UH2IL38/tR
         PJfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787063396; x=1787668196;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=AbV7RIHYMEgMD35kCL1q43FBlvr9xDn3Pi9g2Kfmf8I=;
        b=B1upysmdaAQNkGusrz8ia7jez4J66inyzJPABtbQ/OqgkTZtFt6J+ycwcwk20iMLHZ
         eAJ6veWzd1ZQPz3HtlImJXsaGgQvaw+4lEx5oyPJEjlw+TxS12mTJB5drEV5vnJyLstN
         JeFyXut/Ybj0DOZ1XsN+KVVyNWaVgMevXiR789X4jS79P2GQJnY4gNxZaqIXE1RAB+d4
         04KIS8vSIw79t8c8mg7QGmCISr9WmcDMc6LVmFjPLIHUuEYF+PuWJcXr2A8zxbSAx1GA
         OLKW6dM7rM92YfbkI4tIlDNWK5PoH2q8t2TK0GG0WJj7U/bF/SfNzsb6qxeFgGFCL7hl
         q5dQ==
X-Forwarded-Encrypted: i=1; AHgh+RqZ/HTIKniRNAau7Ust9obVaNafyCeCV6CnnsoZ81Ej+7uCidhe9quKmyYId2fAPi72bAf7kGisApA=@lists.infradead.org
X-Gm-Message-State: AOJu0YwYMs/iZrFN01fKvxe9gfY2mMltbdNkCF6M8iPNMxolakRpfcAN
	on4nVRCs+rBlhrvPynv9zXau34ep/xBp8g9vsn4ZkJfHVTDgFZUFpw27
X-Gm-Gg: AR+sD12Dxlt2LEvSWK94DG63emmYv/GbfluZSUdSEYq34mbbRcI4O4ISXCzmgVqfr3S
	pkKtDSLfe5nZPZE06MKLXgytgNQWeaLiQjnWwdy6m4dWpYU9X8lrZfiIPBLWabPTLiTXb/Idi0D
	WqwfYIBerEYQ6f3b85cgzhS4hPMCnIsZvABWx87iCHMxHS4WLA2GSLdo7b72fl5Z59vwBMk/dU0
	SNam/8Pc/BhwYOcS8pw18odY0oP6lfakG/UnsoT7+WqfjLisV4mRGownirUdhYOhRO0ZDnVq+/8
	GlLNe157AgrRuF45/Rkp7A5Jo9B5IZ2jpH48cVzMOcVJqIXZaI80RvKBohba9LGZMDTvch8lfxF
	KsV7tZlXvgh1cgnezFj+XF8K2yqmrOhyj3IIO+NfvpxwIdG0MfTyRxRL9Y1ECnymI4m11sl/8+Q
	wQbM9SVX/nEsiA5TE1oIY2qAuwAmJpnTHLsK4KIYny24prBLIrLfNXE3wmiSRwvdS8uFUJrQlF
X-Received: by 2002:a17:903:2451:b0:2c9:d298:6c0a with SMTP id d9443c01a7336-2d3b0d7af99mr259247595ad.2.1787063395970;
        Tue, 18 Aug 2026 07:29:55 -0700 (PDT)
Received: from [10.90.163.252] ([2409:40c2:501a:6e15:dc3f:c23f:e55e:d03d])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-327b43d488dsm9043527eec.29.2026.08.18.07.29.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Aug 2026 07:29:55 -0700 (PDT)
From: Bhargav Joshi <j.bhargav.u@gmail.com>
Date: Tue, 18 Aug 2026 19:58:44 +0530
Subject: [PATCH v2 2/7] dt-bindings: phy: ti,am335x-usb-phy: Convert to DT
 schema
MIME-Version: 1.0
Message-Id: <20260818-ti-am33-usb-v2-2-66fd44d66824@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1787063337; l=2477;
 i=j.bhargav.u@gmail.com; h=from:subject:message-id;
 bh=x82f2rFO1TTjFpVekp+USEIM8EAiJutd+tABMnyaNHw=;
 b=sEuhDNSAfdBHS5mDJZE37ho8OYAT2uqjvOXGzw1LAuvfii4SuSCLU7ba2h4sAFx31yOczsJ2D
 G/PaEK37gq3Aq50W06wrpN9eRGRBiRUA1FB4xK1Gl2W6MS2H+4a/Ekj
X-Developer-Key: i=j.bhargav.u@gmail.com; a=ed25519;
 pk=IqNDwUZKECEA+n8wXctFLBbYL9NhFstZNbOznm/nX1k=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260818_072957_342189_1AFF96B9 
X-CRM114-Status: GOOD (  14.11  )
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
