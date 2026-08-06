Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2A0FC561E6
	for <linux-phy@archiver.kernel.org>; Thu,  6 Aug 2026 09:11:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uzbQluAzgIsCrin1KUZwz2/cVbhFyQ5XCnHSR6pR33I=; b=jea2LZsKZxBaKM
	Iy1QUjhu5VtdhnW1IuIB27+VsalRDqgs43+Ul03NQ3yChSyLW/naB1m1YI4REPJlzM3RDTTbVBtgt
	vCgMD4iioPIp9tsbpaUGYemawvBQOOleuGmDHu4fAwaNYwx/7Q8z6sPrrPPMjjy8pPA/WhdZkBTKR
	tzH6CZexFHxYg1WzBnQ1msCyXHKJk5HhEyK0Kgk8twBUsqwcmL/Njt0Gvq8zycPvt8QfnWdtt96C0
	bj21knvnvf8IbvgdjG6SALaWtGdyZ3f/NWpyDtjg1IT+s4hDJY3fPA1EYPQ9/qaWQ67HsRD/oBvXQ
	+EExI805htcLF4yh1Mtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wru8O-00000005Lcm-1pD9;
	Thu, 06 Aug 2026 09:11:28 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wru8K-00000005LZO-1Imp
	for linux-phy@lists.infradead.org;
	Thu, 06 Aug 2026 09:11:27 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-4956869750eso14268185e9.2
        for <linux-phy@lists.infradead.org>; Thu, 06 Aug 2026 02:11:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sigma-star.at; s=google; t=1786007482; x=1786612282; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=9NZE//qhYVqDwQNeSwWPNbj+8yIctxXpdgXBlE3dRzE=;
        b=VaCpELNdZwrgG6HwcqHgqSOaXq2+yODJg1rE97lIfkwZPPyoOnzJRI9MuPtpiVUo7s
         91Scs82nxdnLjPRZjhHBvaMM1uZqYvrhv5Yv+exZqajjhoXdKQGqgGzjK9M7MGoP40hV
         O9DvEQQLBFzen0bowVAvclktKKqtAGGi2sxMqTr8IIbyaITRQ04krGgXFRYyCidicgc4
         V06NlxkBDIZvK44Skwnd2jBmVEb+TGClL8aihK7VnBv4w+PqBuTHuMgldjddz5VgSHUi
         ORUesydLtePNVpz+SbNupNWawnuKI1YFtnqLdUjxtGZotbMcrCUUDTKB+YuxjLeoJeNL
         Kjgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786007482; x=1786612282;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=9NZE//qhYVqDwQNeSwWPNbj+8yIctxXpdgXBlE3dRzE=;
        b=Gpyqnd00QytKlZJk3Yx0mJFohXWyq5IVZpHE9QIHnO09/b7i3w7PPeo/Obhf3ysT0R
         Sen/IfeIi8Vnv+BGt8b9VmceJ2z2B66baRHScoA3RzgOeQB0Ugu7qngeVx5hVvnDyg1z
         0roC1tTRt6c0QoUH6luEdoM+6QUyKi9gAE6n4PneaXPVLWSm0AFjoyY4kxPHi4xVdfEB
         LEpBUl5cHmspurr083IhYCim/9QF5xloKFe3odkk/W51QxVGgf3A9+KoY3CCB2vxK7Oe
         oFPEqWLN2nNK+8LafFVJ7EL2ULIwBxMziTy2NB/+LayRgim4J9/2wRPFHG/ULJSyx/NX
         gAMQ==
X-Gm-Message-State: AOJu0Ywg518jtdwLdXpeuyqFah8anaKz3asH3HsQ5dX884+Oilc5wRkL
	c1+HO+D5JVGGeyGnX4gJLSMSSTthf7pGjhZhsroa3LcqO822Fzyw8l2CM5oI+13vfs56QtQn0MC
	X8LGF9HYk0g==
X-Gm-Gg: AR+sD12Rekh807xQUWZBduu5FYPNK4dakf/bZGYizBMzXspreLkrNxGk9XEFpQDBjmq
	vEr4wEYS7n6lbeO107HghS9dKCtolfwvfyahQ9ePDZHIeiuPa+ix4mcbu3qbvcFRs8HXgm05Uxk
	KhreBTI09R/8JF5co/fqBnDOXi3Y2LaoADxdObUeWBRMPHg+JQ1YbUWVJlBK0O2OgmQWNBwOc4U
	fQj+iq7czUm59aEfvmas0EuN/LZVe/WoF35KKb8mmciucpDNu1/9e4K5GVTWmzDULAnLSQq1WBC
	BJ19krKGfFgih30CjdTD0T1kfvBVUr/a1YgnkEkNJ+7p3Fp6+QjcmoPF5/kwEvZxrefNl3T0hXT
	wMu13axSpeXHzw/wjk6trTK/4Zc09ItSJrNynz+mb9UAK92p167yFpvrEXHAlEmMw8upsfC2yLW
	bWThFGsvoIJT01dzPTcZdxF8uoNLdWe4tFgBQB+8cwt0//Y12wGqmeVMLtvoFM0wqi+2UU65UKh
	un0Hym0DvTp/XB53K6F300EP/Bv
X-Received: by 2002:a05:600c:3226:b0:490:e5c1:b8bf with SMTP id 5b1f17b1804b1-4994e7ce0dcmr119162315e9.13.1786007482532;
        Thu, 06 Aug 2026 02:11:22 -0700 (PDT)
Received: from localtoast.corp.sigma-star.at ([82.150.214.1])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47ff7b31975sm4035213f8f.33.2026.08.06.02.11.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Aug 2026 02:11:22 -0700 (PDT)
From: David Oberhollenzer <david.oberhollenzer@sigma-star.at>
To: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	vkoul@kernel.org,
	neil.armstrong@linaro.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	johan@kernel.org,
	rogerq@ti.com
Cc: Julian.FRIEDRICH@frequentis.com,
	upstream+omap@sigma-star.at,
	David Oberhollenzer <david.oberhollenzer@sigma-star.at>
Subject: [PATCH v2 1/2] dt-bindings: phy: ti,phy-usb3: Add aspcie reference clock setting
Date: Thu,  6 Aug 2026 11:11:11 +0200
Message-ID: <20260806091112.164695-2-david.oberhollenzer@sigma-star.at>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20260806091112.164695-1-david.oberhollenzer@sigma-star.at>
References: <20260806091112.164695-1-david.oberhollenzer@sigma-star.at>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260806_021124_676533_B104CFB8 
X-CRM114-Status: GOOD (  12.02  )
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

The PHY control logic in the OMAP PCIe PHY subsystem has a
configurable reference clock selection. It can either use
the ljcb_clkp/ljcb_clkn pin as inputs, recovering the clock
from the bus (RX mode), or generate the reference clock
internally, driving the bus pins as outputs (TX mode).

The setting is exposed through a register in a system controller.
A device tree property is added to specify the syscon node,
register offset and mode value.

Signed-off-by: David Oberhollenzer <david.oberhollenzer@sigma-star.at>
---
 .../devicetree/bindings/phy/ti,phy-usb3.yaml  | 39 +++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/ti,phy-usb3.yaml b/Documentation/devicetree/bindings/phy/ti,phy-usb3.yaml
index 84f538aa587c..11787b042345 100644
--- a/Documentation/devicetree/bindings/phy/ti,phy-usb3.yaml
+++ b/Documentation/devicetree/bindings/phy/ti,phy-usb3.yaml
@@ -52,6 +52,20 @@ properties:
       enum: [wkupclk, sysclk, refclk, dpll_ref,
              dpll_ref_m2, phy-div, div-clk]
 
+  ti,syscon-acspcie-tx-rx:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    description: |
+      Syscon register and setting to configure the clock buffer to run
+      in RX mode (clock pins are inputs, the clock is recovered from
+      the bus), or in TX mode (pins are outputs, internal reference
+      clock drives the bus).
+    maxItems: 1
+    items:
+      items:
+        - description: Phandle to the system control module
+        - description: Register offset of CTRL_CORE_SMA_SW_6
+        - description: Setting for PCIE_TX_RX_CONTROL
+
   syscon-phy-power:
     $ref: /schemas/types.yaml#/definitions/phandle-array
     maxItems: 1
@@ -94,6 +107,17 @@ allOf:
     else:
       properties:
         syscon-pllreset: false
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: ti,phy-pipe3-pcie
+    then:
+      properties:
+        ti,syscon-acspcie-tx-rx: true
+    else:
+      properties:
+        ti,syscon-acspcie-tx-rx: false
 
 required:
   - reg
@@ -135,4 +159,19 @@ examples:
         syscon-pllreset = <&scm_conf 0x3fc>;
         #phy-cells = <0>;
     };
+
+  - |
+    /* TI PIPE3 PCIE PHY */
+    pcie-phy@4a0a4000 {
+        compatible = "ti,phy-pipe3-pcie";
+        reg = <0x4a0a4000 0x80>,  /* phy_rx */
+              <0x4a0a4400 0x64>;  /* phy_tx */
+        reg-names = "phy_rx", "phy_tx";
+        clocks = <&dpll_pcie_ref_ck>, <&dpll_pcie_ref_m2ldo_ck>;
+        clock-names = "dpll_ref", "dpll_ref_m2";
+        #phy-cells = <0>;
+        syscon-phy-power = <&scm_conf_pcie 0x1c>;
+        syscon-pcs = <&scm_conf_pcie 0x10>;
+        ti,syscon-acspcie-tx-rx = <&scm_conf1 0x10 0x2>;
+    };
 ...
-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
