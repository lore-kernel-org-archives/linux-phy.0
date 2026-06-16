Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F3FBCD98E7
	for <linux-phy@archiver.kernel.org>; Tue, 16 Jun 2026 13:27:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HgVJxeK/Bp4mdJjOyD3zEzAbXNhs+4gsg8i+mrRHqdE=; b=n95yEwieAwpNpB
	Z5xfJbfh/QvC3O/skjH3c57KsOtGatqwybXQxWyI8oIQcURm7UXpnmjNgn5UEkbXr/CvAGuLbBfC9
	askdvAXzzfmPNBZmqmDIhy2rPWOpk/6wlucZ+BDxfUL3kbL2C0JFXS90NWKlH/BPev7+CGWSCI9XM
	8Td/TxQUDS+rdcpzq9UZQhonjG3N4LqA7+Z3ynBWrk8tqnGwCTYcK1eX5vrcssNbs4nj2WtK8LTxJ
	PMJl6U1LI+caWalQMGjOx1olpCofAhbGMS1h8Pon8856gvf5xafUmpkmcwpcPN6R8FeTbQdeWXOz+
	r1CPZnxma+53B+M9fx7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZTou-0000000Fq2a-0bVv;
	Tue, 16 Jun 2026 13:27:12 +0000
Received: from outbound7.mail.transip.nl ([136.144.136.7])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZTon-0000000FpzE-3YzG
	for linux-phy@lists.infradead.org;
	Tue, 16 Jun 2026 13:27:10 +0000
Received: from submission10.mail.transip.nl (unknown [10.103.8.161])
	by outbound7.mail.transip.nl (Postfix) with ESMTP id 4gfnp63TSJzQvtnC;
	Tue, 16 Jun 2026 15:26:54 +0200 (CEST)
Received: from [127.0.1.1] (180-93-184-31.ftth.glasoperator.nl [31.184.93.180])
	by submission10.mail.transip.nl (Postfix) with ESMTPA id 4gfnp55Ppcz1g93Pb;
	Tue, 16 Jun 2026 15:26:53 +0200 (CEST)
From: Herman van Hazendonk <github.com@herrie.org>
Date: Tue, 16 Jun 2026 15:26:53 +0200
Subject: [PATCH v3 1/2] dt-bindings: phy: qcom,usb-hs-phy: add
 qcom,hs-drv-slope
MIME-Version: 1.0
Message-Id: <20260616-submit-phy-usb-hs-vendor-init-seq-v3-1-7d21fb1d1484@herrie.org>
References: <20260616-submit-phy-usb-hs-vendor-init-seq-v3-0-7d21fb1d1484@herrie.org>
In-Reply-To: <20260616-submit-phy-usb-hs-vendor-init-seq-v3-0-7d21fb1d1484@herrie.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Nathan Chancellor <nathan@kernel.org>, 
 Nick Desaulniers <nick.desaulniers+lkml@gmail.com>, 
 Bill Wendling <morbo@google.com>, Justin Stitt <justinstitt@google.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 llvm@lists.linux.dev, Herman van Hazendonk <github.com@herrie.org>, 
 konrad.dybcio@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1781616413; l=4470;
 i=github.com@herrie.org; s=20240417; h=from:subject:message-id;
 bh=zfSdy8NMKbr7R5wDqh8mH+/O4+c8Z/5ivVV70uaSLEY=;
 b=d/r+0Pua3XyjOfyk/Da25wn9aBabd+DW5o9spMJyRwEvfmfWRhNvHO1X8M0Z4uTTS0xH/w0fU
 XiVqpGH3zjICHcIx+IGFSuhYT8xXvTrP5H3gg0m/RVjJsolNgKnuRFi
X-Developer-Key: i=github.com@herrie.org; a=ed25519;
 pk=YYxdq8fb5O9vhkW3n2dCH044FPZZO5718v/du7fRhFw=
X-Scanned-By: ClueGetter at submission10.mail.transip.nl
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 s=transip-a; d=herrie.org; t=1781616414; h=from:subject:to:cc:
 references:in-reply-to:date:mime-version:content-type;
 bh=4jUT/kMxqvdedR3A2AsCnpYyG9Jp0zuNsETOPERT+1A=;
 b=oG+rHt9nUMhZHk9J6Xc2BBrGKt5gyM/TxGzNnX3QbzYNhoRoPTFvTpehREqqYRkFSiuYKM
 VEFbwjz9YflLnhW4j38iIsevEmg/usvGn488Yi90zicvKS/yXXcqd1T0sO2/o6ziHDUrOo
 sjxWwL1hrRUUST04Eu58peFbkz8RgnlMCk8flPIbIYhwQxvH4MbcaVb/Z7ESH3Z4Ku8JIJ
 a/j3AMin3anWt8B2Lv0EOq3/VBP7RmH+dDWocjfodwgJqRe93M3cVDdquUn4pMfp0CpTZ/
 /Jwga6CMlB5bocJZW0iCnbqjXDOQy6QI6mAdMq/TXadGLb6spLLR7P+eJCAZng==
X-Report-Abuse-To: abuse@transip.nl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260616_062706_175279_39659023 
X-CRM114-Status: GOOD (  10.93  )
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

The MSM8x60 / APQ8060 PHY needs three vendor ULPI register tweaks for
stable USB operation: pre-emphasis level, CDR auto-reset and SE1
gating in registers 0x32 and 0x36.  A survey of MSM8x60-class
downstream board files (Qualcomm SURF/FFA/Fluid/Dragon, Samsung
Galaxy S2 family, Sony Xperia, HTC and HP TouchPad) shows that those
three values are identical across every reference board and can be
hardcoded in the driver behind the existing
qcom,usb-hs-phy-msm8660 compatible.

The only board-specific value is the 4-bit HS driver slope in bits
[3:0] of register 0x32:

  HP TouchPad                                  5
  HTC MSM8660 ports                            1
  Qualcomm / Samsung / Sony reference boards   0 (silicon default)

Add a qcom,hs-drv-slope property carrying that 4-bit value, valid
only on the qcom,usb-hs-phy-msm8660 variant.  When the property is
absent the driver leaves the silicon default in place, matching the
behaviour of the Qualcomm reference platform.

No public Qualcomm documentation describes how the 4-bit value maps
to an actual slew rate, V/ns or %; the bits are an opaque hardware
control whose meaning only Qualcomm knows.  The legal range (0..15)
comes from the field width in the downstream
arch/arm/mach-msm/include/mach/msm_hsusb_hw.h
(ULPI_HSDRVSLOPE_MASK == 0x0F).  Boards must therefore copy the
value from their downstream/vendor kernel; this is a measured /
tuned-per-layout knob, not a derived one.

Assisted-by: Claude:claude-opus-4-7 dt_binding_check checkpatch
Assisted-by: Sashiko:claude-opus-4-7
Signed-off-by: Herman van Hazendonk <github.com@herrie.org>
---
 .../devicetree/bindings/phy/qcom,usb-hs-phy.yaml   | 89 +++++++++++++++-------
 1 file changed, 63 insertions(+), 26 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
index e03b516c698c..e605f5683f7d 100644
--- a/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
@@ -9,32 +9,43 @@ title: Qualcomm's USB HS PHY
 maintainers:
   - Bjorn Andersson <bjorn.andersson@linaro.org>
 
-if:
-  properties:
-    compatible:
-      contains:
-        enum:
-          - qcom,usb-hs-phy-apq8064
-          - qcom,usb-hs-phy-msm8660
-          - qcom,usb-hs-phy-msm8960
-then:
-  properties:
-    resets:
-      maxItems: 1
-
-    reset-names:
-      const: por
-
-else:
-  properties:
-    resets:
-      minItems: 2
-      maxItems: 2
-
-    reset-names:
-      items:
-        - const: phy
-        - const: por
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,usb-hs-phy-apq8064
+              - qcom,usb-hs-phy-msm8660
+              - qcom,usb-hs-phy-msm8960
+    then:
+      properties:
+        resets:
+          maxItems: 1
+
+        reset-names:
+          const: por
+
+    else:
+      properties:
+        resets:
+          minItems: 2
+          maxItems: 2
+
+        reset-names:
+          items:
+            - const: phy
+            - const: por
+
+  - if:
+      not:
+        properties:
+          compatible:
+            contains:
+              const: qcom,usb-hs-phy-msm8660
+    then:
+      properties:
+        qcom,hs-drv-slope: false
 
 properties:
   compatible:
@@ -85,6 +96,15 @@ properties:
             the address is offset from the ULPI_EXT_VENDOR_SPECIFIC address
         - description: value
 
+  qcom,hs-drv-slope:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: >
+      4-bit HS driver slope written to bits [3:0] of ULPI vendor
+      register 0x32. Board-specific tuning value; absent means
+      leave silicon default. Only valid on qcom,usb-hs-phy-msm8660.
+    minimum: 0
+    maximum: 15
+
 required:
   - clocks
   - clock-names
@@ -114,3 +134,20 @@ examples:
         };
       };
     };
+
+  - |
+    usb-controller {
+      #reset-cells = <1>;
+
+      ulpi {
+        phy {
+          compatible = "qcom,usb-hs-phy-msm8660", "qcom,usb-hs-phy";
+          #phy-cells = <0>;
+          clocks = <&clk 0>, <&clk 1>;
+          clock-names = "ref", "sleep";
+          resets = <&otg 0>;
+          reset-names = "por";
+          qcom,hs-drv-slope = <5>;
+        };
+      };
+    };

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
