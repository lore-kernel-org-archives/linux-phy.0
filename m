Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D195C87FD3
	for <linux-phy@archiver.kernel.org>; Wed,  6 Aug 2025 21:57:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wUXdahmvNYmOjtfmYAD0es+Gn/sae/X+7PaiSb5vjpw=; b=bJd4sYuryI6Wj9
	09tptU3FkDKWtu+2aYMl51wuLo331PJQfPFos/sgwcGJTrqfeSwcXC9174PJdR5M9j6QVD+cgYfCk
	1NQy+GJXxcK6Wctx1Sx4KhOgpc/bFsfl+TaGtfcJ/zgtN7LErpkDTeNdAZy6WLTQGyyW5HPDK/D6I
	uBo44SJJ5z+2F2UsbajNx7Cb8/4JxKoZnbGs5LBufpXNXHgm0TEnXxtw/PI1RxcXjzWPAnrBRt1DT
	9oORI/UWIOqn9Ob3DLLmeENpcCE/fcloPKtVCKaDxbacU5vGj4w53TDG/ryqPL+qZQl/49/LAmHCt
	1uvZc5zN6UG587seCPSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujm8j-0000000Gepc-385t;
	Wed, 06 Aug 2025 21:57:41 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujkKf-0000000GIUb-3HZu
	for linux-phy@lists.infradead.org;
	Wed, 06 Aug 2025 20:01:54 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id AF33FA4B8E9;
	Wed,  6 Aug 2025 20:01:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 43537C4CEE7;
	Wed,  6 Aug 2025 20:01:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754510512;
	bh=ENuhQnWSBLUUvO045kXVHvexc+1xjK+dZXnhyBbllu0=;
	h=From:To:Cc:Subject:Date:From;
	b=RuF/qgy79ZAcqA3EvIwTtm8CJbW1KeU0eGbyAHeCfztqsZ2OU/zVIeGldN/QX/2KF
	 jRsF97QjqSAIIUOb40ZvAHnIbVCMdHLrSuhTG6S7M6CYBvUhD8y0kZr/NyrNUvR/+H
	 OHjv7CAKdjIujhUgyqgB2Btyfm3yxogNytbwBxmF7ntIt9BSPL5/CuFQ96Po5AYMMZ
	 KflyaztP5HxKEiKAioCz0s03Jf1eHoq7gQm29UcaUIk7aZrKdAYfpRERXk6zPfEk8W
	 wC8zyjXiPS0ihkPdktn9IqBk8RINnuGxnDMT3BQa9nrAYGzHILY1uXLFLmnXmx47Hw
	 nr6eMvhXuebmQ==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: phy: marvell,comphy-cp110: Fix clock and child node constraints
Date: Wed,  6 Aug 2025 15:01:37 -0500
Message-ID: <20250806200138.1366189-1-robh@kernel.org>
X-Mailer: git-send-email 2.47.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250806_130153_886868_260F36F6 
X-CRM114-Status: UNSURE (   7.84  )
X-CRM114-Notice: Please train this message.
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

In converting marvell,comphy-cp110 to schema, the constraints for clocks on
marvell,comphy-a3700 are wrong, the maximum number of child nodes are wrong,
and the phy nodes may have a 'connector' child node:

phy@18300 (marvell,comphy-a3700): clock-names: False schema does not allow ['xtal']
phy@120000 (marvell,comphy-cp110): 'phy@3', 'phy@4', 'phy@5' do not match any of the regexes: '^phy@[0-2]$', '^pinctrl-[0-9]+$'
phy@120000 (marvell,comphy-cp110): phy@2: 'connector' does not match any of the regexes: '^pinctrl-[0-9]+$'

Fixes: 50355ac70d4f ("dt-bindings: phy: Convert marvell,comphy-cp110 to DT schema")
Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../bindings/phy/marvell,comphy-cp110.yaml    | 29 ++++++++++++++-----
 1 file changed, 21 insertions(+), 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/marvell,comphy-cp110.yaml b/Documentation/devicetree/bindings/phy/marvell,comphy-cp110.yaml
index d9501df42886..c35d31642805 100644
--- a/Documentation/devicetree/bindings/phy/marvell,comphy-cp110.yaml
+++ b/Documentation/devicetree/bindings/phy/marvell,comphy-cp110.yaml
@@ -47,21 +47,19 @@ properties:
     const: 0
 
   clocks:
+    minItems: 1
     maxItems: 3
-    description: Reference clocks for CP110; MG clock, MG Core clock, AXI clock
 
   clock-names:
-    items:
-      - const: mg_clk
-      - const: mg_core_clk
-      - const: axi_clk
+    minItems: 1
+    maxItems: 3
 
   marvell,system-controller:
     description: Phandle to the Marvell system controller (CP110 only)
     $ref: /schemas/types.yaml#/definitions/phandle
 
 patternProperties:
-  '^phy@[0-2]$':
+  '^phy@[0-5]$':
     description: A COMPHY lane child node
     type: object
     additionalProperties: false
@@ -69,10 +67,14 @@ patternProperties:
     properties:
       reg:
         description: COMPHY lane number
+        maximum: 5
 
       '#phy-cells':
         const: 1
 
+      connector:
+        type: object
+
     required:
       - reg
       - '#phy-cells'
@@ -91,13 +93,24 @@ allOf:
 
     then:
       properties:
-        clocks: false
-        clock-names: false
+        clocks:
+          maxItems: 1
+        clock-names:
+          const: xtal
 
       required:
         - reg-names
 
     else:
+      properties:
+        clocks:
+          minItems: 3
+        clock-names:
+          items:
+            - const: mg_clk
+            - const: mg_core_clk
+            - const: axi_clk
+
       required:
         - marvell,system-controller
 
-- 
2.47.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
