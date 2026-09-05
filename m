Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 353BBC624DB
	for <linux-phy@archiver.kernel.org>; Sat,  5 Sep 2026 21:16:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9M2WLXxVxPTpQetA64Hi5EXfULxTpVpyim6ZS83jHEY=; b=dmTpPolnpn6KWx
	XS1VIqrQ6+dwzwCqQNk2Q4qO8NRQGmoQbLRTVxWeU3d6hSj3CCWeoQ2EUwZhDcLLO/Vk2ykh+H619
	OqdP//RCTmsVvoMMC/NEg6CYNUbqb0fR7b/Ow4PDXMRuYjM6qcuxoMkprYJ0Ig2JNsWdWFwifHYGk
	7AV49fKWsos6DM1Hyk26UZ+iWd41IFFbFbjiUDEpqmHx0C0zleNGBv4x+wQRPQ4jqDXQkprS/6r46
	tf082dJIAxvzhfMUHvw+Cm65+9YAmRrq6J7mWQ6WMle0DHhelYEi3aE8kdBqEqIH+XIhdAu/8quB3
	AcD0K8XaobhXBUSbrHZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2xkD-00000004QEJ-1bsL;
	Sat, 05 Sep 2026 21:16:13 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2xkA-00000004QDE-07nG
	for linux-phy@lists.infradead.org;
	Sat, 05 Sep 2026 21:16:12 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-49ccfae359fso19056655e9.3
        for <linux-phy@lists.infradead.org>; Sat, 05 Sep 2026 14:16:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sigma-star.at; s=google; t=1788642966; x=1789247766; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=DcPh6S6yPO5PSnIUjNx8RtmS3hZ6VbQMqkL2Bvi+uPc=;
        b=fQHO01gV5pqsKZ8wUT7HFxQf+P9kPN3k5hvNPVJA8GpEkGUDYNV7pUYVFnvUvF83kW
         /meBQMZdYQ+TR4/WBOq1ZMOEtKNswc4nHl6AeAJwA/udNVkyAU+kdIJ/0/w18z8uhpYc
         5rcPjYhEjzRTcoLtt5fiS5LeMxWSDXMdtT3DR2SmDLMt6fJ9eXQbk52+SirKMDVy9NVo
         jQdLOuP+I3YlkbcfLrmpfaXFjuFTlWVUdzSE6rwhdLumrptwLW7U3ckdHl/AEUtcjaFj
         1XqK1oIVxqQZywT6GqkXlYmTHiotwKs0JBk2T1Lpznl4hRn3GrU0rzyxYtbnf3p/Bic1
         iAxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788642966; x=1789247766;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=DcPh6S6yPO5PSnIUjNx8RtmS3hZ6VbQMqkL2Bvi+uPc=;
        b=f5lSJ1dSudsP3+d4vz7C9XJM3dx4J+x1ymNVJHfEApifUAO1xS8493oD3FCxVXxy0m
         hiXcnaHJE+W/YiS5GnPcDnfsEx+IzMXPTw0uq69L0xck8U6CljbjEy0BmblQ2NvV2LMw
         HrYwBP7ZHgL3BYHnxn4IpRc/gJIHOHC/YIs77DUcQVv/yerdxZkj3ccI5vwEiwtg5RvH
         KgEkdbTSUumY2vfg4RdC3jHz/psaIvkZ5mTfX7MQ7aHurtTFXbAVz4IUl0eTM7KezKUP
         Lr1eLIrliZbr9h9Mr4ujCHdikwDit7+Uu7T8lWtlww1ClWrZ+kUEaoOizC/l2f8sdscx
         P1Qw==
X-Gm-Message-State: AFuF++lCGdMK3nFYkfP4cRFftzmOS6JNrFCZt/WmQfpvkeSnR3LSbR+n
	GN7gOauzNVvxw7FLzrzRddgqIPmHZABRyQ6//7bivLKr21fBAz8c1rspr4S7OPYdye2JRl4mAit
	T/6+bTcA1xQ==
X-Gm-Gg: AYBFou1VGclAarDsuETT1CLbA0WkushqwzghWSuEPKq9LRQGW23oJFniBpFVFC78UjC
	rJnj2r6VOwBbGdg2dr2FtRuW0BCjUEtIbv0uApNSRYUWR6syDY5xChkQNRm5peABdwuDzoyX2eg
	oJYTxRGyPhT62HOGNGPeR7E+jSOEHQ9o0Y42IhiNX11roXpiM3UjMewQbym1xcihD8OppT/LzQ9
	ehJKXgw6UFFpr7uzIKp5tY9auxlabHvgcRPBZim5aTRL/bznOvJ5JMQstEevCLT7adKkD0VSn0Q
	23jaRALaNVfXCpEP+OCiZY+ZrYUjSQOY5JqkUVHycj6nobxXPizLIlQ5mnRP/oEQOpbxIG0W/cB
	oescqbVX4p2m4XxIaiTrSsDzfiBZx0ObCM5UVgDejpEaNQKHbM7WOGEAT+O2/xXg8U35OMv17g9
	htBQwRZgidstaLTekcucO04VZ1Llc49GvDQ1LYNP94kBe/iwyx85JgSa0bsvLYfkBuhoAGP5bvk
	QAVzuyZcTdNj7/A9NmeKoe1jMDJJ7RANW7Yk6YhzwNigqcu6wiIRQ==
X-Received: by 2002:a05:600c:4e8e:b0:49c:dada:f57f with SMTP id 5b1f17b1804b1-49cf823cd42mr129389095e9.7.1788642966595;
        Sat, 05 Sep 2026 14:16:06 -0700 (PDT)
Received: from localtoast.fritz.box (clnet-p04-043.ikbnet.co.at. [83.175.81.43])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49ce5952560sm261416695e9.3.2026.09.05.14.16.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Sep 2026 14:16:06 -0700 (PDT)
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
Subject: [PATCH v3 1/2] dt-bindings: phy: ti,phy-usb3: Add aspcie reference clock setting
Date: Sat,  5 Sep 2026 23:15:54 +0200
Message-ID: <20260905211555.15944-2-david.oberhollenzer@sigma-star.at>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20260905211555.15944-1-david.oberhollenzer@sigma-star.at>
References: <20260905211555.15944-1-david.oberhollenzer@sigma-star.at>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260905_141610_265981_CFA63D37 
X-CRM114-Status: GOOD (  11.32  )
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
 .../devicetree/bindings/phy/ti,phy-usb3.yaml  | 38 +++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/ti,phy-usb3.yaml b/Documentation/devicetree/bindings/phy/ti,phy-usb3.yaml
index 84f538aa587c..41e7bb42cbbe 100644
--- a/Documentation/devicetree/bindings/phy/ti,phy-usb3.yaml
+++ b/Documentation/devicetree/bindings/phy/ti,phy-usb3.yaml
@@ -52,6 +52,20 @@ properties:
       enum: [wkupclk, sysclk, refclk, dpll_ref,
              dpll_ref_m2, phy-div, div-clk]
 
+  ti,syscon-acspcie-tx-rx:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    description:
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
@@ -94,6 +108,15 @@ allOf:
     else:
       properties:
         syscon-pllreset: false
+  - if:
+      not:
+        properties:
+          compatible:
+            contains:
+              const: ti,phy-pipe3-pcie
+    then:
+      properties:
+        ti,syscon-acspcie-tx-rx: false
 
 required:
   - reg
@@ -135,4 +158,19 @@ examples:
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
