Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 747D8C5B56A
	for <linux-phy@archiver.kernel.org>; Tue, 11 Aug 2026 12:47:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=trpUMpIJ8tewo+vu6nkWHryHkbZNRUC+utubeVOtWLg=; b=s4vlzJlLgDmDd5
	cvb3GinSur9MjVcCQVQ8lemNzF909Nph1shglSwQW1jmeyqRd+2fOqi38brMa61Vboy4wym9VKJJS
	nuj2hM4shqWBXPo2lEN7H20E61rCqNRXH5L+KQmAkJwXu/McsqCRHWH0f/M25TUNZIS/XyMoXREt+
	U4wbb7zAxmaHEDLNVRrq1VaO+01a/48+geqPYcc1rI4AVPCMGVB37ELSc50xK8rWbyJslHY3sYmTb
	OKLTnmgMOcJT4gQaOJs8asqWTPXFL+VUfPKfRd83KEmHOMoKibWkbxYMJITnxRpmyWgEcGoPhv/yS
	+uluTkLmg6qroaJcnzKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtltJ-0000000E2y3-0pWX;
	Tue, 11 Aug 2026 12:47:37 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtltH-0000000E2xI-15lo
	for linux-phy@lists.infradead.org;
	Tue, 11 Aug 2026 12:47:36 +0000
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-47f7872abb6so1534384f8f.3
        for <linux-phy@lists.infradead.org>; Tue, 11 Aug 2026 05:47:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786452453; x=1787057253; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=EcSpluxem6KSuAknXHTGcr8nUevidmfU4kqJoK66tLM=;
        b=h9UiBZGL1ipVAslmYgjc0G2NVpRFFEoF5obaNWhGD+/EW9HautdNFTvnQvpuCRTU/z
         wT5EU7Gmdm21Pus0ar9tbpk6JHHVXeQAyoHtxkUKCesuxPUS607OTCxPcoeSCnAzg7G6
         nk2csFZd3FvCk2VlunwxsWDlDOWD4LE4pv8bsmeiqxj02Y30Ii5GtrQxwHUeFIZwqec1
         5uzjO7ZFDdJlmyDuaOvUqiqVF7o/UGLD44e2yi7fuXett2tx6emU40/KvvjfFq06tf/R
         oQq0DAMG5tyEEyXaToGYL0P6x5qKHy/EpGl0m/ldvgHztKDsypzomfRKgp5ijp5+7/Xi
         bVxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786452453; x=1787057253;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=EcSpluxem6KSuAknXHTGcr8nUevidmfU4kqJoK66tLM=;
        b=DUKA/6VINx+9WDYthYB0gO8ACTh2t39usWaxBFsi++h7OuSARmzRb+A9lRaIStCTcw
         ZRtnMpEzi6XQQImjfpNbUnadnt3t94Zg6K0wA/7LfOY0YbxtkM2j+wWgZ0jGnzDq9lcA
         CYGdkQm097aOuWsTbr4NasS09muz2O1Uw16ipIN5uBUCeD5rq1KizsvvAH9RrbZGH76H
         t0yHNLpYFVG6EoaCSpvM2qzkrOX7FTVcKfaDClULzMAyWVoYcH49XrgJudnIZKuatlUO
         1JA88M1Vs/SISwGhJ/n+iXHFYfDtOaeDSgiUE/rupztMqJeWUhJJNjFKTC3Q64fPH8eg
         sWOg==
X-Forwarded-Encrypted: i=1; AHgh+RoR2N1BVtIOUQtf+DX6lgXfFu0OsWXAMKW5dBHZ6AqKJXHbiLYLA80VuUu6TEZNWOqa0DLs1ytzzQ4=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx9SQjBtis1K/DyW1u0UIOBo2NMJ1VZp4FDVrcsWbwcES9ilJ71
	YwE8bNT1y8rm7ayayhEYTchCpFhDKLpELhzA7Yyrjesj8OEyjhxZH4BJ55Ta5TMw
X-Gm-Gg: AR+sD11U5/KCT/+22zy2XPfHdCkydSbLEu0fPDlojzGjwSIawa/dYNHPC+scLVpY9B3
	e3jn9Y5tBpgZDuUyRcS3BRiAKX/SGFwxUUtn7zflryScwMLY5EEhhf+FiwU+wGGzEhwr6PqA70u
	GlC3uNBthzbgsInVS0mnagDthSpXR7Jzb0SZOqNvEdd3cTI+oUWXnhNH+jcmKSNyF2YFSV/Hjke
	WS47lXJ926YfXN28X2H9bWTOqJGRO+ukOyQgdgyTJN1nil9vrbBoXnz5byxc34BoOVy0ozToboi
	oYncgsaIxOu7//ISaOo7Jy1nj1MDVZ/UIddYacY88EIm8+YD0ALKklVuIaVUzPLRSRstTmzueFj
	Wvr1RAyQkxuxDRr76xfetuUSwUG2N6drns0ET8nQ9oynl58dZLUgzeKpSezBsnBJIA2FwOmanGP
	0Av4nIO+D2mspYlnkUCQIoH1qZIrgj7++V1mlnALF29h9QDb0VmUSlTD4DmDwkvj2/S2Z/DTUEZ
	PeHf2OVtINJKG2XGGlf7iUJ6K6gLIL9ARHNQOgfKMorhzuyzIsZziOPCdk=
X-Received: by 2002:a5d:5e85:0:b0:47f:f4a9:ff34 with SMTP id ffacd0b85a97d-4814ade7cb5mr5716045f8f.30.1786452452943;
        Tue, 11 Aug 2026 05:47:32 -0700 (PDT)
Received: from Ansuel-XPS24.localdomain (host-87-20-3-207.retail.telecomitalia.it. [87.20.3.207])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-4814a7165a3sm4118207f8f.26.2026.08.11.05.47.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Aug 2026 05:47:32 -0700 (PDT)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Christian Marangi <ansuelsmth@gmail.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/2] dt-bindings: phy: Add documentation for Airoha AN7583 USB PHY
Date: Tue, 11 Aug 2026 14:47:22 +0200
Message-ID: <20260811124724.702467-2-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260811124724.702467-1-ansuelsmth@gmail.com>
References: <20260811124724.702467-1-ansuelsmth@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260811_054735_335243_44CEEF6A 
X-CRM114-Status: GOOD (  14.78  )
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

Add documentation for Airoha AN7583 USB PHY that describe the USB PHY
for the USB controller.

Airoha AN7583 SoC support a maximum of 2 USB port. The USB 2.0 mode is
always supported. The USB 3.0 mode is optional and depends on the Serdes
mode currently configured on the system for the relevant USB port.

To correctly calibrate, the USB 2.0 port require correct value in
"airoha,usb2-monitor-clk-sel" property. Both the 2 USB 2.0 port permit
selecting one of the 4 monitor clock for calibration (internal clock not
exposed to the system) but each port have only one of the 4 actually
connected in HW hence the correct value needs to be specified in DT
based on board and the physical port. Normally it's monitor clock 1 for
USB1 and monitor clock 2 for USB2.

To correctly setup the Serdes mode attached to the USB 3.0 mode, a phys
property is required with the phandle pointing to the correct Serdes port
provided by the SCU node. Providing the phys property is optional if USB
3.0 is not used.

The second USB PHY on Airoha AN7583 SoC is used for PCIe Gen2 usage and
similar to USB 3.0 require a phys property to configure the serdes.

Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
---
 .../bindings/phy/airoha,an7583-usb-phy.yaml   | 205 ++++++++++++++----
 1 file changed, 168 insertions(+), 37 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/airoha,an7583-usb-phy.yaml b/Documentation/devicetree/bindings/phy/airoha,an7583-usb-phy.yaml
index a6e2c0b1acc4..46b311040e02 100644
--- a/Documentation/devicetree/bindings/phy/airoha,an7583-usb-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/airoha,an7583-usb-phy.yaml
@@ -26,64 +26,195 @@ description: >
 
 properties:
   compatible:
-    const: airoha,an7583-usb-phy
+    enum:
+      - airoha,an7583-usb-phy
+      - airoha,an7583-pcie-phy
 
   reg:
-    items:
-      - description: phy register
-      - description: ana register
-      - description: pma register
-      - description: dig register
+    minItems: 3
+    maxItems: 4
 
   reg-names:
-    itmes:
-      const: phy
-      const: ana
-      const: pma
-      const: dif
+    minItems: 3
+    maxItems: 4
 
-  usb2-phy:
+  '#address-cells':
+    const: 1
+
+  '#size-cells':
+    const: 0
+
+  usb3-phy:
     type: object
 
     properties:
-      reg: [0, 0x1000]
+      phys:
+        items:
+          - description: phandle to Serdes PHY
 
-    airoha,usb2-monitor-clk-sel:
-      description: Describe what oscillator across the available 4
-        should be selected for USB 2.0 Slew Rate calibration.
-      $ref: /schemas/types.yaml#/definitions/uint32
-      enum: [0, 1, 2, 3]
+      '#phy-cells':
+        description: The cell contains the mode, PHY_TYPE_USB2 or PHY_TYPE_USB3,
+          as defined in dt-bindings/phy/phy.h.
+        const: 1
 
-    '#phy-cells':
-      description: The cell contains the mode, PHY_TYPE_USB2 or PHY_TYPE_USB3,
-        as defined in dt-bindings/phy/phy.h.
-      const: 1
+    required:
+      - phys
+      - '#phy-cells'
 
-  usb3-phy:
+    additionalProperties: false
+
+  pcie-phy:
+    type: object
+
+    properties:
+      phys:
+        items:
+          - description: phandle to Serdes PHY
+
+      '#phy-cells':
+        description: The cell contains the mode, PHY_TYPE_PCIE or PHY_TYPE_USB3,
+          as defined in dt-bindings/phy/phy.h.
+        const: 1
+
+    required:
+      - phys
+      - '#phy-cells'
+
+    additionalProperties: false
 
-  phys:
-    items:
-      - description: phandle to Serdes PHY. Optional if USB 3.0 is not used.
+patternProperties:
+  '^usb2-phy@[0-9-a-f]+$':
+    type: object
+
+    properties:
+      reg:
+        enum: [0x0, 0x1000]
 
+      airoha,usb2-monitor-clk-sel:
+        description: Describe what oscillator across the available 4
+          should be selected for USB 2.0 Slew Rate calibration.
+        $ref: /schemas/types.yaml#/definitions/uint32
+        enum: [0, 1, 2, 3]
+
+      '#phy-cells':
+        description: The cell contains the mode, PHY_TYPE_USB2 or PHY_TYPE_USB3,
+          as defined in dt-bindings/phy/phy.h.
+        const: 1
+
+    required:
+      - reg
+      - airoha,usb2-monitor-clk-sel
+      - '#phy-cells'
+
+    additionalProperties: false
 
 required:
   - compatible
   - reg
-  - airoha,usb2-monitor-clk-sel
-  - '#phy-cells'
-
-additionalProperties: false
+  - reg-names
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          const: airoha,an7583-usb-phy
+
+    then:
+      properties:
+        reg:
+          items:
+            - description: phy register
+            - description: ana register
+            - description: pma register
+            - description: dig register
+
+        reg-names:
+          items:
+            - const: phy
+            - const: ana
+            - const: pma
+            - const: dig
+
+        pcie-phy: false
+
+      required:
+        - '#address-cells'
+        - '#size-cells'
+
+  - if:
+      properties:
+        compatible:
+          const: airoha,an7583-pcie-phy
+
+    then:
+      properties:
+        reg:
+          items:
+            - description: ana register
+            - description: pma register
+            - description: dig register
+
+        reg-names:
+          items:
+            - const: ana
+            - const: pma
+            - const: dig
+
+        usb3-phy: false
+
+        '#address-cells': false
+
+        '#size-cells': false
+
+      patternProperties:
+        '^usb2-phy@[0-9a-f]+$': false
+
+unevaluatedProperties: false
 
 examples:
   - |
-    #include <dt-bindings/soc/airoha,scu-ssr.h>
-
     phy@1fac0000 {
-        compatible = "airoha,an7581-usb-phy";
-        reg = <0x1fac0000 0x10000>;
+        compatible = "airoha,an7583-usb-phy";
+        reg = <0x1fac0000 0x11ff>,
+              <0x1fa6f000 0xff>,
+              <0x1fa6e000 0x3ff>,
+              <0x1fa6a000 0x8ff>;
+        reg-names = "phy", "ana", "pma", "dig";
+
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        usb2-phy@0 {
+            reg = <0x0>;
+            airoha,usb2-monitor-clk-sel = <0>;
+
+            #phy-cells = <1>;
+        };
+
+        usb2-phy@1000 {
+            reg = <0x1000>;
+            airoha,usb2-monitor-clk-sel = <1>;
+
+            #phy-cells = <1>;
+        };
+
+        usb3-phy {
+            phys = <&serdes_phy>;
+
+            #phy-cells = <1>;
+        };
+      };
+
+    phy@1fa5f000 {
+        compatible = "airoha,an7583-pcie-phy";
+        reg = <0x1fa5f000 0xff>,
+              <0x1fa5e000 0x3ff>,
+              <0x1fa5a000 0x8ff>;
+        reg-names = "ana", "pma", "dig";
 
-        airoha,usb2-monitor-clk-sel = <1>;
-        phys = <&scu AIROHA_SCU_SERDES_USB1>;
+        pcie-phy {
+            phys = <&serdes_phy>;
 
-        #phy-cells = <1>;
+            #phy-cells = <1>;
+        };
     };
-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
