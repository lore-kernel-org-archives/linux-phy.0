Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E68E9E77197
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jan 2025 13:03:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3XKM6r33S8fX6xiVc/HKsKTefEoBsM2/r0uwgqU8qfw=; b=sIdY0LMtI0kpl4
	LZzcPGsIJPoQEyz+eCmr2dHlOZ/rrJNk653Ly4Jz87X72QXrGYrZD99KJwBj9DTWSEjC5B5kZAgVz
	SpuM8JC1FMCH5rYdZHMHk8tCKADMsvTQLr+kcta9xZUxKvnph8woB/Y+wKgyxmpDmthCASsQQu6E6
	WWaQBbjPGmfvQRooVC6y2w3XdLbcPyBiC92AVyul0DaedFQbUGmOqgoMoFMDRdJW3ePyhznDW6K3Z
	BV4Mnks9v1SnhZNN3YuE+XIkocuWUG8zBDDMBzznYELBzJ0ReAS6red2UnahyPu0Zols0xwZlUoAg
	QAdttXExpbdrTVsSOOKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tV9F6-00000004td8-2wlV;
	Tue, 07 Jan 2025 13:03:32 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tV9AS-00000004sFm-091L
	for linux-phy@lists.infradead.org;
	Tue, 07 Jan 2025 12:58:47 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-434f398a171so14956945e9.2
        for <linux-phy@lists.infradead.org>; Tue, 07 Jan 2025 04:58:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736254722; x=1736859522; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=pYmy/ZFlRhEQrpy/3I/HaeTWSzbHsHs0t27m22eGelE=;
        b=AAa6faD1nu9kxr1iXd2nta7zpON6vhSFHKPxMlFReyghOZsrtPC+OBmneLKOqE8NfP
         trYxA5/kOI1KmSxdYP68PS6RW8a6mxJ7jq4K1cNusp1hrnq47zcl+c49fwX3Gwg8uGQm
         preI4OTD08W08yOGDoAERtJcVfnykIEwaEfQfBQqT3J/AAxA8Fcwa1Cwm2uTqJuZG0oK
         BpSlpYG+Ce9zSb+X9oaOTQN7Lgkzy0R7EpdJpWFz7e70vNch2JznrzTw8CRBO74yfK4v
         ZjexkuzuP111qzFFn6waI5btdazG8PFIA4Z+TjQhKpe/8mwFWEi3oKiC6SlRzcevR5fK
         ZtAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736254722; x=1736859522;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pYmy/ZFlRhEQrpy/3I/HaeTWSzbHsHs0t27m22eGelE=;
        b=cfkwbmztfM38aWS36Efg78ljHL5P/gxwQYQAcDV6M8Y/4ZSo2OcQOU4qYSrJ44UEaD
         YX0PDrF9aFomsvBI7wQBzAjQtqAc9u+6Y42Ikiu6CsWyyIJ1kmF2h8Fw8guRewiQJsan
         gUSsmdnQBxA5qZky/vQkFpSPKRF/r1X8iaVh7y6vrNH4TuIMEGIRgHNVk+in5mT1jjqW
         d0sZhwgb0+4YIOmfus2V562GBo0ywNd6SBQnTZYYV/N4wC4iG81nzpNeq5oIx3eeY67J
         SQa+eE9BMX2W2PNn/HUExeC3bBMk+QdB8/toZkP1Muxg0rDhvuF6mIZRTWRF6if/oPPf
         unRw==
X-Forwarded-Encrypted: i=1; AJvYcCWwLgxsCPGV6pne8dSW6JLPbevRkRyM/KsgG5PBlcUkSXa85mTbH6wmzpUtkTkLnh9dUOu5ycT102M=@lists.infradead.org
X-Gm-Message-State: AOJu0YwMOw4CjTHNEVGM8z6CcMyRvzPObVVcsm5FQXzKmlEJbYFoYzxd
	W64OpIytHyFVUU1/LR0tSe8gucJVZCQ7CvUWXUtT8cksByi/L7jVPFd9jCkPbMI=
X-Gm-Gg: ASbGncsJvWfhauV3S7o2tfAhsUndyl/QfdK6lmGB3Dx4k7D7hTo9buNnzJPXKZlSbIs
	2Pm+v2/PhfTgQuSRhQHEXd8kMqq/0YhVMwwyPpzGS6nk7aR7rm5BwP8yNhoPxccb2XZlZFEbnoz
	N93fOh1iq10cR5GdTWb0av3u5knnTd8O5orVEmLsix6Ai3xPiilQwam122f44R3ZZqRVUVoqTAq
	3LcxDuIZxCd054FJ9KSyBp8Nl56VqlP/WaYQHCpx+BU8rbGu5czl12bQnUTDqTOa/JpyGM=
X-Google-Smtp-Source: AGHT+IHBl7XHmC1RA81mGhJt6SzB/Fa0mvqref325DHpS6shLKNQYqH/e3NarQU23diWE2Xv+3T06g==
X-Received: by 2002:a05:6000:1a89:b0:385:fc70:829 with SMTP id ffacd0b85a97d-38a221f7726mr21400744f8f.6.1736254722572;
        Tue, 07 Jan 2025 04:58:42 -0800 (PST)
Received: from krzk-bin.. ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a1c828e3fsm50965003f8f.5.2025.01.07.04.58.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jan 2025 04:58:42 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Andre Przywara <andre.przywara@arm.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: phy: Correct indentation and style in DTS example
Date: Tue,  7 Jan 2025 13:58:39 +0100
Message-ID: <20250107125840.225982-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250107_045844_081740_A6F15A2F 
X-CRM114-Status: UNSURE (   9.27  )
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

DTS example in the bindings should be indented with 2- or 4-spaces and
aligned with opening '- |', so correct any differences like 3-spaces or
mixtures 2- and 4-spaces in one binding.

No functional changes here, but saves some comments during reviews of
new patches built on existing code.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/phy/calxeda-combophy.yaml        | 10 +-
 .../bindings/phy/ti,phy-j721e-wiz.yaml        | 98 +++++++++----------
 2 files changed, 54 insertions(+), 54 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/calxeda-combophy.yaml b/Documentation/devicetree/bindings/phy/calxeda-combophy.yaml
index d05a7c793035..7d75678f2ec1 100644
--- a/Documentation/devicetree/bindings/phy/calxeda-combophy.yaml
+++ b/Documentation/devicetree/bindings/phy/calxeda-combophy.yaml
@@ -43,8 +43,8 @@ additionalProperties: false
 examples:
   - |
     combophy5: combo-phy@fff5d000 {
-                   compatible = "calxeda,hb-combophy";
-                   #phy-cells = <1>;
-                   reg = <0xfff5d000 0x1000>;
-                   phydev = <31>;
-               };
+        compatible = "calxeda,hb-combophy";
+        #phy-cells = <1>;
+        reg = <0xfff5d000 0x1000>;
+        phydev = <31>;
+    };
diff --git a/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml b/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml
index 3f16ff14484d..ce3071fc3553 100644
--- a/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml
+++ b/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml
@@ -201,59 +201,59 @@ examples:
     #include <dt-bindings/soc/ti,sci_pm_domain.h>
 
     wiz@5000000 {
-           compatible = "ti,j721e-wiz-16g";
-           #address-cells = <1>;
-           #size-cells = <1>;
-           power-domains = <&k3_pds 292 TI_SCI_PD_EXCLUSIVE>;
-           clocks = <&k3_clks 292 5>, <&k3_clks 292 11>, <&dummy_cmn_refclk>;
-           clock-names = "fck", "core_ref_clk", "ext_ref_clk";
-           assigned-clocks = <&k3_clks 292 11>, <&k3_clks 292 0>;
-           assigned-clock-parents = <&k3_clks 292 15>, <&k3_clks 292 4>;
-           num-lanes = <2>;
-           #reset-cells = <1>;
-           ranges = <0x5000000 0x5000000 0x10000>;
+        compatible = "ti,j721e-wiz-16g";
+        #address-cells = <1>;
+        #size-cells = <1>;
+        power-domains = <&k3_pds 292 TI_SCI_PD_EXCLUSIVE>;
+        clocks = <&k3_clks 292 5>, <&k3_clks 292 11>, <&dummy_cmn_refclk>;
+        clock-names = "fck", "core_ref_clk", "ext_ref_clk";
+        assigned-clocks = <&k3_clks 292 11>, <&k3_clks 292 0>;
+        assigned-clock-parents = <&k3_clks 292 15>, <&k3_clks 292 4>;
+        num-lanes = <2>;
+        #reset-cells = <1>;
+        ranges = <0x5000000 0x5000000 0x10000>;
 
-           pll0-refclk {
-                  clocks = <&k3_clks 293 13>, <&dummy_cmn_refclk>;
-                  #clock-cells = <0>;
-                  assigned-clocks = <&wiz1_pll0_refclk>;
-                  assigned-clock-parents = <&k3_clks 293 13>;
-           };
+        pll0-refclk {
+            clocks = <&k3_clks 293 13>, <&dummy_cmn_refclk>;
+            #clock-cells = <0>;
+            assigned-clocks = <&wiz1_pll0_refclk>;
+            assigned-clock-parents = <&k3_clks 293 13>;
+        };
 
-           pll1-refclk {
-                  clocks = <&k3_clks 293 0>, <&dummy_cmn_refclk1>;
-                  #clock-cells = <0>;
-                  assigned-clocks = <&wiz1_pll1_refclk>;
-                  assigned-clock-parents = <&k3_clks 293 0>;
-           };
+        pll1-refclk {
+            clocks = <&k3_clks 293 0>, <&dummy_cmn_refclk1>;
+            #clock-cells = <0>;
+            assigned-clocks = <&wiz1_pll1_refclk>;
+            assigned-clock-parents = <&k3_clks 293 0>;
+        };
 
-           cmn-refclk-dig-div {
-                  clocks = <&wiz1_refclk_dig>;
-                  #clock-cells = <0>;
-           };
+        cmn-refclk-dig-div {
+            clocks = <&wiz1_refclk_dig>;
+            #clock-cells = <0>;
+        };
 
-           cmn-refclk1-dig-div {
-                  clocks = <&wiz1_pll1_refclk>;
-                  #clock-cells = <0>;
-           };
+        cmn-refclk1-dig-div {
+            clocks = <&wiz1_pll1_refclk>;
+            #clock-cells = <0>;
+        };
 
-           refclk-dig {
-                  clocks = <&k3_clks 292 11>, <&k3_clks 292 0>,
-                          <&dummy_cmn_refclk>, <&dummy_cmn_refclk1>;
-                  #clock-cells = <0>;
-                  assigned-clocks = <&wiz0_refclk_dig>;
-                  assigned-clock-parents = <&k3_clks 292 11>;
-           };
+        refclk-dig {
+            clocks = <&k3_clks 292 11>, <&k3_clks 292 0>,
+                     <&dummy_cmn_refclk>, <&dummy_cmn_refclk1>;
+            #clock-cells = <0>;
+            assigned-clocks = <&wiz0_refclk_dig>;
+            assigned-clock-parents = <&k3_clks 292 11>;
+        };
 
-           serdes@5000000 {
-                  compatible = "ti,sierra-phy-t0";
-                  reg-names = "serdes";
-                  reg = <0x5000000 0x10000>;
-                  #address-cells = <1>;
-                  #size-cells = <0>;
-                  resets = <&serdes_wiz0 0>;
-                  reset-names = "sierra_reset";
-                  clocks = <&wiz0_cmn_refclk_dig_div>, <&wiz0_cmn_refclk1_dig_div>;
-                  clock-names = "cmn_refclk_dig_div", "cmn_refclk1_dig_div";
-           };
+        serdes@5000000 {
+            compatible = "ti,sierra-phy-t0";
+            reg-names = "serdes";
+            reg = <0x5000000 0x10000>;
+            #address-cells = <1>;
+            #size-cells = <0>;
+            resets = <&serdes_wiz0 0>;
+            reset-names = "sierra_reset";
+            clocks = <&wiz0_cmn_refclk_dig_div>, <&wiz0_cmn_refclk1_dig_div>;
+            clock-names = "cmn_refclk_dig_div", "cmn_refclk1_dig_div";
+        };
     };
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
