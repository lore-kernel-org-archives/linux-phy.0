Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4212D3B7CE
	for <linux-phy@archiver.kernel.org>; Tue, 26 Nov 2024 09:21:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8ydu/Sl5ONITqkwvQDdV0lxPUxwY6txdk6qbQ9R4OnA=; b=otQfsI9qTz2OjH
	4hSVLR3CnmMXq9HKR0+oKysUV14m9wy/ewgpq1jZKGJyKLgSLW3lNIvv1oOVritbP8X4canwDOLCl
	Wk7S33BjkzjU29x8OEkrydaPOVyHno5sLrWzBNL0n+1ShMinCr+mCtOC0unK2xthn6p/LX28jfPVQ
	ECCUu3zSeSX1sUyqL1Tl67guD1gT/mmG5u1JvAmxHdgG46RbnBB531lA+nq9LOwvURBFe/6vvwqZg
	SxOMGbpBo/nQVWyzo4F1sVvkprQl/dipXFCKvgJWvtIlGD6dAnpEVMasWk5M3lEuDjvPEXsU38YbS
	NwskVoEc2D3ojDrzWThQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFrlC-0000000A7Fn-1JY5;
	Tue, 26 Nov 2024 09:21:30 +0000
Received: from mail-wr1-f50.google.com ([209.85.221.50])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFrkr-0000000A72T-1k61
	for linux-phy@lists.infradead.org;
	Tue, 26 Nov 2024 09:21:14 +0000
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-382588b7a5cso3426331f8f.3
        for <linux-phy@lists.infradead.org>; Tue, 26 Nov 2024 01:21:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1732612867; x=1733217667; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oQlGMIlStcYoMIShuvfUaEr5YyWxZQ2PUL1/5BTbV6c=;
        b=Oa/Gch4OZfhr2L9gjwrvWUBfIVk+yxRsp5Hq0wX6fH8aAZomxB/nMazqVlBQaQE0PG
         uRPk2c6K/M+oLIPkHFh4h9pe6BacphX7cuJxp2/Litrx8TPOQCfjG/9+/dyXnSID+jsu
         YVnzy5ego+f1zYTp60N3F6TRm4ihJbSm7fFgtITHhRuk+wpqHMdPrlWc5j0Vh+fygox8
         2IN8omTrVI4Omx0wuj8gZUKZCL7pu1oyjuuFuTL/BiBacr7JUjUHcnrkmhBysVzsbtpF
         ug7ZV95oZxc+KDaFGb4TYlQRduo7kC90IWlNztL2qoI05dlLJJ3eyz15LcgQ3VW93Yq6
         UXcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732612867; x=1733217667;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oQlGMIlStcYoMIShuvfUaEr5YyWxZQ2PUL1/5BTbV6c=;
        b=QLCmurN83TnClG3KNX11ByuIhsu3ShRv7nhAq1Ogn/jZzclyyB7ZzRnGQQxQRvaH83
         p6fR8i9FH8B/Wok+HZDJrFOkGfb5aAX9Qb8jAiHo3xtFupQTsi4jT0B+SkMF2A1L0SGA
         WrfF7O9TEZGTLwp3s5HH4cuScgMIRRQ4oeINW9andBV5cmxo7mAe3LwGetX3cExFgfGl
         QSOv8kYuZ9JiXploDe6/260Kl8Ku3ck4TSKWtQA47EYd8buL5xqeb41cbqwvuZCERfkI
         lIInRNcCoY3i5vHXw6xX2nvy4giIXS3aQd7kuM5bp9oh5HwNczAVe1upOZ4GtJl2RSkS
         07RQ==
X-Gm-Message-State: AOJu0Yx03ECcOW1lDs05Rj8UKsPfmqJ3VRONp9Y+Z+ejSkSAb/fnmUaH
	Gek3LHJ1F2vo8RMCW8HrSvn2enHLNSt6FgKnRIDGkuYlHWa/3hJE7lCksd2/JlA=
X-Gm-Gg: ASbGncsJ26s9Ubbf7HNWFylA22HCbP1GCvQaZxKiDIq9XM+nXWKfCy5FIBRzQKJ+4LM
	djX28ZT0a4yb88ggYKdqwcaJf2NGQMMwFDZIsjfpS+/IObcttbGMntvQ3yzs7mtn9vd3s39Mkgn
	ubekfnuvhZykR1OlgIJFm3hrzeoav+3E4I51lqexOqjQgqXsIX2K99W/DpNkV2GJU/z7+LARTXg
	FHC+7FPX9rP/y+cEOPojnnfw6d1HWLGpa2YygNgjhnCoL9UTws0Dn5/7a0BUNMQcRqfHC0Gs5kv
	ZjY=
X-Google-Smtp-Source: AGHT+IGG2IQ+U6IJTaeTyTNQI6LGmc4AjJAHShu01o6855LNNPFEdIbHv35w4G1l6XXNHmNrrqLTjw==
X-Received: by 2002:a5d:5984:0:b0:382:415e:a144 with SMTP id ffacd0b85a97d-382608a4b7bmr12377286f8f.0.1732612867211;
        Tue, 26 Nov 2024 01:21:07 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.28])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3825fbc3a47sm13027694f8f.73.2024.11.26.01.21.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Nov 2024 01:21:06 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	p.zabel@pengutronix.de,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	gregkh@linuxfoundation.org,
	yoshihiro.shimoda.uh@renesas.com,
	christophe.jaillet@wanadoo.fr
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-usb@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v2 01/15] dt-bindings: soc: renesas: renesas,rzg2l-sysc: Add #renesas,sysc-signal-cells
Date: Tue, 26 Nov 2024 11:20:36 +0200
Message-Id: <20241126092050.1825607-2-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20241126092050.1825607-1-claudiu.beznea.uj@bp.renesas.com>
References: <20241126092050.1825607-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241126_012109_459119_BBA882C6 
X-CRM114-Status: GOOD (  14.89  )
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

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

The RZ/G3S system controller (SYSC) has registers to control signals that
are routed to various IPs. These signals must be controlled during
configuration of the respective IPs. One such signal is the USB PWRRDY,
which connects the SYSC and the USB PHY. This signal must to be controlled
before and after the power to the USB PHY is turned off/on.

Other similar signals include the following (according to the RZ/G3S
hardware manual):

* PCIe:
- ALLOW_ENTER_L1 signal controlled through the SYS_PCIE_CFG register
- PCIE_RST_RSM_B signal controlled through the SYS_PCIE_RST_RSM_B
  register
- MODE_RXTERMINATION signal controlled through SYS_PCIE_PHY register

* SPI:
- SEL_SPI_OCTA signal controlled through SYS_IPCONT_SEL_SPI_OCTA
  register

* I2C/I3C:
- af_bypass I2C signals controlled through SYS_I2Cx_CFG registers
  (x=0..3)
- af_bypass I3C signal controlled through SYS_I3C_CFG register

* Ethernet:
- FEC_GIGA_ENABLE Ethernet signals controlled through SYS_GETHx_CFG
  registers (x=0..1)

Add #renesas,sysc-signal-cells DT property to allow different SYSC signals
consumers to manage these signals.

The goal is to enable consumers to specify the required access data for
these signals (through device tree) and let their respective drivers
control these signals via the syscon regmap provided by the system
controller driver. For example, the USB PHY will describe this relation
using the following DT property:

usb2_phy1: usb-phy@11e30200 {
	// ...
	renesas,sysc-signal = <&sysc 0xd70 0x1>;
	// ...
};

Along with it, add the syscon to the compatible list as it will be
requested by the consumer drivers. The syscon was added to the rest of
system controller variants as these are similar with RZ/G3S and can
benefit from the implementation proposed in this series.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v2:
- none; this patch is new


 .../soc/renesas/renesas,rzg2l-sysc.yaml       | 23 ++++++++++++++-----
 1 file changed, 17 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/soc/renesas/renesas,rzg2l-sysc.yaml b/Documentation/devicetree/bindings/soc/renesas/renesas,rzg2l-sysc.yaml
index 4386b2c3fa4d..90f827e8de3e 100644
--- a/Documentation/devicetree/bindings/soc/renesas/renesas,rzg2l-sysc.yaml
+++ b/Documentation/devicetree/bindings/soc/renesas/renesas,rzg2l-sysc.yaml
@@ -19,11 +19,13 @@ description:
 
 properties:
   compatible:
-    enum:
-      - renesas,r9a07g043-sysc # RZ/G2UL and RZ/Five
-      - renesas,r9a07g044-sysc # RZ/G2{L,LC}
-      - renesas,r9a07g054-sysc # RZ/V2L
-      - renesas,r9a08g045-sysc # RZ/G3S
+    items:
+      - enum:
+          - renesas,r9a07g043-sysc # RZ/G2UL and RZ/Five
+          - renesas,r9a07g044-sysc # RZ/G2{L,LC}
+          - renesas,r9a07g054-sysc # RZ/V2L
+          - renesas,r9a08g045-sysc # RZ/G3S
+      - const: syscon
 
   reg:
     maxItems: 1
@@ -42,9 +44,17 @@ properties:
       - const: cm33stbyr_int
       - const: ca55_deny
 
+  "#renesas,sysc-signal-cells":
+    description:
+      The number of cells needed to configure a SYSC controlled signal. First
+      cell specifies the SYSC offset of the configuration register, second cell
+      specifies the bitmask in register.
+    const: 2
+
 required:
   - compatible
   - reg
+  - "#renesas,sysc-signal-cells"
 
 additionalProperties: false
 
@@ -53,7 +63,7 @@ examples:
     #include <dt-bindings/interrupt-controller/arm-gic.h>
 
     sysc: system-controller@11020000 {
-            compatible = "renesas,r9a07g044-sysc";
+            compatible = "renesas,r9a07g044-sysc", "syscon";
             reg = <0x11020000 0x10000>;
             interrupts = <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>,
                          <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH>,
@@ -61,4 +71,5 @@ examples:
                          <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH>;
             interrupt-names = "lpm_int", "ca55stbydone_int", "cm33stbyr_int",
                               "ca55_deny";
+            #renesas,sysc-signal-cells = <2>;
     };
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
