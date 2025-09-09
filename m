Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08DFACAC582
	for <linux-phy@archiver.kernel.org>; Tue,  9 Sep 2025 18:08:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tooqg6XiwZl6nVnenO1VZhFZgSy9RANcUpttLoHEUes=; b=QX7qvPbaHtP1Mw
	mqsE0cZ3R4Ea0Ew7SvCprC4xC0i3vwXaOFeQIx5hXHZecDVtOOcStbIWecO7tBbBtME+VuTLrPswN
	ycxSGf7larLMWrlCOHjuQcEco4+FoJTmZHuVu/5wKDYX2w6YY0aVYmgqPvfTMGlpPzIcjlWk17YZZ
	R+thGnpeElWkxZU3erbUKp6ZMnPufRoGLS49JzSZb7NWtm6d9CX4v2Y196Xwt+GiBXRV4oF4FoivH
	/wW6GhARS6F3/fNCyBlufwPapdNopc8IqB6QzYOxid4+43m+dPoLF1Y231MvEVIfxo8yyVAyu1nJi
	eHdLFS1rWsM4NQRlo01Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uw2lI-00000009Jk5-32uo;
	Tue, 09 Sep 2025 18:08:12 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uw2lG-00000009JhO-05Rm
	for linux-phy@lists.infradead.org;
	Tue, 09 Sep 2025 18:08:11 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-45dec1ae562so15018975e9.1
        for <linux-phy@lists.infradead.org>; Tue, 09 Sep 2025 11:08:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757441288; x=1758046088; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lN4DToaDlANZB4p+KEsGqlMY3d+oUTSup5pBeEXRT2o=;
        b=go81XVJA43sUl13zvnzgb8kICcP+aZsJuCW2ZFyCxDSG/vKg16IkUeE56fYf2UrcO2
         RCjDkHW1C1O68WVmzdDOdQmLz/LVPGSGFzuSne26++0ksulwRv2iLru1f2mtEQoqMzM+
         3HiSYPe1JOlrp683scQMSMb/B3PrG5Nz00jntfAKFkmTpdkJS1OiYdvWUL0w93JuOEQe
         xJab9mnKo3Rdsq9A1A+wpVtBFQxbQqiCPoTLHUx05NnJbWa9uVsg/5tE+R2uH+5tqcP9
         qSaahfV/sBAMC1EwQ7LI6yVqbXWvw/yMar+qcheGEt+II9YD4k8oyPRONGOxuoTzf7zM
         gNcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757441288; x=1758046088;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lN4DToaDlANZB4p+KEsGqlMY3d+oUTSup5pBeEXRT2o=;
        b=ZxSMl9IkiCzQ/SxAwz9f70FTN3nKeTlDMFlmFcluSC8Ul9Hzjc2CIk3k5/BRGcp6iR
         6y59DmhSgNzS2EAVJr3EjT3fsiOiF+LMYeJg1+8TrCpfuSB2NeLlcf9vQQlDDWsY/tbX
         o/9Ig2qiSPhEDxq5D0JEsNhsQCjaxVPy+MTWdqwv2PVkIWKJbCmzaMh8a4wts0qzx8lb
         sBx7ig1KOhxJSOMnfcuN7CddX7abjE8loP2uXzr247cydXxD/r5YPmDD44HPBSOetXVy
         r1yGW4xMSqLbWs2GKmWcA3AXnfMBRNjs42os641lCJ6kHezPgi4uJkTY1ovHrG+U6Kl2
         M4Vg==
X-Forwarded-Encrypted: i=1; AJvYcCUaCdCHQOGdqqvyMmBTvM4mq9J1SFDQHjGwY5OxBISWKatQ3hMWgYMqwJFFN2RDhFGufAs1Vh7yF5w=@lists.infradead.org
X-Gm-Message-State: AOJu0YzMf04RJh5E81oWSsVIfxDemxUqABZou6H3T2XKVSvXvDp++LAW
	lH7jNhsz1PtxDlEfbyvX5ZZGYzCA8Il/no1iX7pqsQzxlY5/srFyB+P10NdKL2krPTo=
X-Gm-Gg: ASbGncuySvP82HVQik9Xc3AbazWfMKfuPQnNUQXJ7wWSfGeIno8JNYuhzhHVzbU7Gba
	aNtlICQz5xyZ9AxPnQPUTM1rFeWzlullYXXpC/bobCTn8fRIUZFrHWc7QjNdAsebqGT49AIh9Cv
	r6eTxCrg7LZ/roV8+IMdioka23hoAPX5vQIC1YXYWDboIubWH5GDUMFfC6sSHw2iV5zUqxn9pHw
	5VinkuV+CqCvscfTLd1/6YNsn/6jVLto6iXiHjBXmqIpB2tkNJyc2gi374cExQsZ6ReQHZLqqq9
	RLnN99DWaLXawpfhJ7+XrS1/kcoqFOep6pL4cwSE48Jf8se9EAQQnaeHTcr3XrAOiJcP2Ol3eB8
	d1xaB3Vb63C+tyfYtzygn1ZJ5nx7rOrIXdj+8NK/lohodLDRTJCPmCT0GN8spN5WJ3GziU6ME7H
	3vAmoEWm7ZsAh9
X-Google-Smtp-Source: AGHT+IFOJ3S7z7BVPcwRlYAxLfjX01xLWVuU5j/vQzOH9gPBw/v5mV18PZ2b/6VxeAAxnmPJdSxIgQ==
X-Received: by 2002:a05:600c:3583:b0:459:d3d0:650e with SMTP id 5b1f17b1804b1-45df6558689mr9373205e9.13.1757441287991;
        Tue, 09 Sep 2025 11:08:07 -0700 (PDT)
Received: from biju.lan (host86-139-30-37.range86-139.btcentralplus.com. [86.139.30.37])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45df679a4c9sm4174015e9.3.2025.09.09.11.08.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Sep 2025 11:08:07 -0700 (PDT)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v2 03/11] dt-bindings: phy: renesas: Document Renesas RZ/G3E USB3.0 PHY
Date: Tue,  9 Sep 2025 19:07:48 +0100
Message-ID: <20250909180803.140939-4-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250909180803.140939-1-biju.das.jz@bp.renesas.com>
References: <20250909180803.140939-1-biju.das.jz@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250909_110810_084122_1FF20372 
X-CRM114-Status: GOOD (  12.95  )
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

From: Biju Das <biju.das.jz@bp.renesas.com>

Document Renesas RZ/G3E USB3.0 PHY. This IP is connected between
USB3HOST and PHY module. The main functions of the module are
as follows:
 - Reset control
 - Control of PHY input pins
 - Monitoring of PHY output pins

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v1->v2:
 * Collected tag.
---
 .../bindings/phy/renesas,rzg3e-usb3-phy.yaml  | 63 +++++++++++++++++++
 1 file changed, 63 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/renesas,rzg3e-usb3-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/renesas,rzg3e-usb3-phy.yaml b/Documentation/devicetree/bindings/phy/renesas,rzg3e-usb3-phy.yaml
new file mode 100644
index 000000000000..b86dc7a291a4
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/renesas,rzg3e-usb3-phy.yaml
@@ -0,0 +1,63 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/renesas,rzg3e-usb3-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Renesas RZ/G3E USB 3.0 PHY
+
+maintainers:
+  - Biju Das <biju.das.jz@bp.renesas.com>
+
+properties:
+  compatible:
+    const: renesas,r9a09g047-usb3-phy
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: APB bus clock
+      - description: USB 2.0 PHY reference clock
+      - description: USB 3.0 PHY reference clock
+
+  clock-names:
+    items:
+      - const: pclk
+      - const: core
+      - const: ref_alt_clk_p
+
+  power-domains:
+    maxItems: 1
+
+  resets:
+    maxItems: 1
+
+  '#phy-cells':
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - power-domains
+  - resets
+  - '#phy-cells'
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/renesas,r9a09g047-cpg.h>
+
+    usb-phy@15870000 {
+        compatible = "renesas,r9a09g047-usb3-phy";
+        reg = <0x15870000 0x10000>;
+        clocks = <&cpg CPG_MOD 0xb0>, <&cpg CPG_CORE 13>, <&cpg CPG_CORE 12>;
+        clock-names = "pclk", "core", "ref_alt_clk_p";
+        power-domains = <&cpg>;
+        resets = <&cpg 0xaa>;
+        #phy-cells = <0>;
+    };
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
