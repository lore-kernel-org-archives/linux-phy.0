Return-Path: <SRS0=o6wI=O7=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7DEA7C433FE
	for <linux-phy@archiver.kernel.org>; Mon, 11 Oct 2021 09:53:41 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 42F6B60F0F
	for <linux-phy@archiver.kernel.org>; Mon, 11 Oct 2021 09:53:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 42F6B60F0F
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N0G8JhObvPdP5QH0VJBvClhMbL0HYhmm2fKN1PEOB08=; b=HKMqxJnslX7XU/
	3UP8Ot4g3X/24kuuuTqdDwIzWldcajTpTx6rgyv5hrXioZF7UZvYlAY7Nj6FT1KiBUhjL5ruSxetc
	M18qtSAIUINL+OyUO+D2tcfMQ4D0NYaN3Y7Mzsm0Gs9EZKbDrfvZEh3Z4kVgHrgAyO1gAluKVXOB/
	0lBY83kZjIHmToscTxhrZc6g3fgH80Y549CZ8khlYSFSM38bggARZMAcr/49ftGAlj6dmYQyN84/d
	85YPPfXE2ql7ClsNtSk8rpNUmLbPgccLeaK4ehzqDLoxCg3St0kEG7orNAQu0bPE+VZskrwD4ksLW
	4M3rApAxW9XA/IetqnnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mZs04-008fd0-HY; Mon, 11 Oct 2021 09:53:40 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mZrtB-008cMx-Ge
 for linux-phy@lists.infradead.org; Mon, 11 Oct 2021 09:46:40 +0000
Received: by mail-wr1-x42f.google.com with SMTP id m22so54309388wrb.0
 for <linux-phy@lists.infradead.org>; Mon, 11 Oct 2021 02:46:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ARx59XBBf9xiaLASctE1UnOxwnjT+44aKGxoCxv5924=;
 b=wH5/AFiG/pk0F3/+fdIuZ5eutQLWnapkGISNxFkIZieo/UEz4Ix6re/D37+O2GyEqz
 W8x7fwu3lSc6hiK1eLI8vByqmWxRejpPJ2LnFrwIim9yf3LbAjOmqpLhKc9bdhoiYOop
 VmCN/qTe1mN4rYi+VjS2MW16iiJjDss7tpihdMox1Z7usShIm776pnW69N3O/drT8p2s
 ZfKjluXycxDVysWdy3x3e1za0tDy+5MCZ2DiVOqX2bmXrMJeBb+rqQA989yuE7kH0Qmo
 LCSzhPYjN5+rVYsyMuUkbzPNRhPEfuOE1xZX3kySP7f0GaLkY2MmL7UAjAeQO4Fdmf4C
 4ABQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ARx59XBBf9xiaLASctE1UnOxwnjT+44aKGxoCxv5924=;
 b=ti8Lj75Mk9dyKgCojjzcWy0/bgMJpLtE61L1e8CS30U8LD5XoN26u1MO7K15Bnxj0c
 Kqt709jTDVz+6bvCrFVCL95sxiobVp3vQUvKHbmiMcvca4mnBIaihDEpc41tS6RRm4tj
 OeE5pilSBVFUEo/7cxtOxnrfK5v8b9l4aRDpp2RHDzmJOfFBetBEhyUI5g0sJ3t4jhnB
 BtS+vpOc7hqOo7EsC8NiwK1TSsR7vwQh2nNHw8w40FDWAWjOHuqrW9Sy+Axm0MxD7vkK
 1gFZNSg70afDNigyPkZqFMiCNheB3YAvAP/eIfzdDlMTP38uYBGvpqmB0IvPn49Uj+qh
 XuJQ==
X-Gm-Message-State: AOAM532tC2U4Mt4Flg8d5kgge7vLVFT75I851joDoENRBXlTuT38s6xR
 pKGpWh5DgmydXZCBuNBphTegDA==
X-Google-Smtp-Source: ABdhPJzRNgDcBGyRyTExetCumakD9+88IM6+d91MTPJf4q5LLxEXlaKFMJ6bv7zxNMY3zF0cUaw7RQ==
X-Received: by 2002:a05:600c:1c97:: with SMTP id
 k23mr2586839wms.80.1633945591075; 
 Mon, 11 Oct 2021 02:46:31 -0700 (PDT)
Received: from blmsp.lan ([2a02:2454:3e6:c900::97e])
 by smtp.gmail.com with ESMTPSA id o8sm21349291wme.38.2021.10.11.02.46.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Oct 2021 02:46:30 -0700 (PDT)
From: Markus Schneider-Pargmann <msp@baylibre.com>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 Vinod Koul <vkoul@kernel.org>
Cc: Sam Ravnborg <sam@ravnborg.org>, dri-devel@lists.freedesktop.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 Markus Schneider-Pargmann <msp@baylibre.com>
Subject: [PATCH v4 1/7] dt-bindings: mediatek,dpintf: Add DP_INTF binding
Date: Mon, 11 Oct 2021 11:46:18 +0200
Message-Id: <20211011094624.3416029-2-msp@baylibre.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211011094624.3416029-1-msp@baylibre.com>
References: <20211011094624.3416029-1-msp@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211011_024633_596125_7C7E04A4 
X-CRM114-Status: GOOD (  14.84  )
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

DP_INTF is a similar functional block to mediatek,dpi but is different
in that it serves the DisplayPort controller on mediatek SoCs and uses
different clocks. Therefore this patch creates a new binding file for
this functional block.

Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---

Notes:
    Changes v3 -> v4:
    - Fixed clock names in the example as the clock patch series is merged into
      next now
    - Add missing ports decleration to the example
    
    Changes v1 -> v2:
    - Move the devicetree binding from mediatek,dpi into its own binding file.

 .../display/mediatek/mediatek,dpintf.yaml     | 86 +++++++++++++++++++
 1 file changed, 86 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,dpintf.yaml

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,dpintf.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,dpintf.yaml
new file mode 100644
index 000000000000..3b5e0c148c97
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,dpintf.yaml
@@ -0,0 +1,86 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/mediatek/mediatek,dpintf.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Mediatek DP_INTF Controller Device Tree Bindings
+
+maintainers:
+  - CK Hu <ck.hu@mediatek.com>
+  - Jitao shi <jitao.shi@mediatek.com>
+
+description: |
+  The Mediatek DP_INTF function block is a sink of the display subsystem
+  connected to the display port controller.
+
+properties:
+  compatible:
+    enum:
+      - mediatek,mt8195-dpintf
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: hf_fmm Clock
+      - description: hf_fdp Clock
+      - description: Pixel Clock
+      - description: DP_INTF PLL
+
+  clock-names:
+    items:
+      - const: hf_fmm
+      - const: hf_fdp
+      - const: pixel
+      - const: pll
+
+  port:
+    $ref: /schemas/graph.yaml#/properties/port
+    description:
+      Output port node. This port should be connected to the input port of an
+      attached display port controller.
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+  - port
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/clock/mt8195-clk.h>
+
+    dp_intf1: dp_intf1@1c113000 {
+        compatible = "mediatek,mt8195-dpintf";
+        reg = <0 0x1c113000 0 0x1000>;
+        interrupts = <GIC_SPI 513 IRQ_TYPE_LEVEL_HIGH 0>;
+        clocks = <&vdosys1 CLK_VDO1_DP_INTF0_MM>,
+             <&vdosys1 CLK_VDO1_DPINTF>,
+             <&topckgen CLK_TOP_DP>,
+             <&topckgen CLK_APMIXED_TVDPLL2>;
+        clock-names = "hf_fmm",
+                  "hf_fdp",
+                  "pixel",
+                  "pll";
+
+        ports {
+            port {
+                dpintf1_out: endpoint {
+                    remote-endpoint = <&dp_in>;
+                };
+            };
+        };
+    };
+
+...
-- 
2.33.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
