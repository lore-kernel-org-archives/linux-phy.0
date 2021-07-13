Return-Path: <SRS0=EtwH=MF=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5ABCFC07E96
	for <linux-phy@archiver.kernel.org>; Tue, 13 Jul 2021 19:35:22 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1E74F60725
	for <linux-phy@archiver.kernel.org>; Tue, 13 Jul 2021 19:35:22 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1E74F60725
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mELUh3WBui8BtQkxXs98WGqBICUvSHsXtEC7wi8Mcao=; b=IRD80vuaesSTEC
	fwq5ngFQxDFziQU0c445+yqt01GM0WzDgoqbsWHFXBkbL0dKvDd4wEqH2Tih1LaKnWGyDhC3Etiir
	uCCZRzHrLr9gbW1WnnIx3YU4DIXuYRzfaRw3sPJaqakL0ia/XhpbXku4pdNsOqkFJXp7dLR/j5uWc
	uPeDMahybnLkpYKwzjUgc7Ot+PvidzXdCy0Or7RFTtwJbLER61YK/tvDxyn5ijb9MXp6LxzN7Atja
	hvuFOBAoMPPnPSiWL8b32pZb4FzD7SqiAj613kBxegQDmZJZL7rrmcuB8Ojk+EmtcgKIIi19v0zDa
	BVM/T1R4jmYAaAbjxYUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m3OBd-00BF5A-KL; Tue, 13 Jul 2021 19:35:21 +0000
Received: from mail-io1-f49.google.com ([209.85.166.49])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m3OBa-00BF4c-Od
 for linux-phy@lists.infradead.org; Tue, 13 Jul 2021 19:35:20 +0000
Received: by mail-io1-f49.google.com with SMTP id l5so28629576iok.7
 for <linux-phy@lists.infradead.org>; Tue, 13 Jul 2021 12:35:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=uTODzrzCCYkqmU43lyE/fyW+NoXwq5Q/GjDtygunFEc=;
 b=t8ZT2moLDFOtullb/FShA/bwUMzi6WeAOPZZDhqRy0ultCGU5jYiw/nGggusYaHRdJ
 QxEs6R9gqb6M9r9ONjKgjd9Kh10csezofHE7Y61EPVJ54CAp2uI9Bm4yI1a3FKHrEAyX
 kMqq+izTzT7uITtEdgMJ0Dgr74u+mN+mVzedG81xK2iR1OsDJUe/6AXF1orh7HJmLCsS
 YJUq8XZjvnUNuO7Qi0FAxgCSK8o3yFKiD5hCu75AG4+L2dkgLrpHcyMST8ixdkMh+b/9
 rjweNsP9+9HauTX9tfTDL3xXzDGxwGsstYOlh6Evy+bs8HMNdPgQcUkyV6PWF+sWkadU
 8qKg==
X-Gm-Message-State: AOAM532PVJZbYYq5oA3GxzFW7hiS+ijYuXAzRw++Rqe4nYKRLKkDiy3Y
 vmWKjssxpTMq2lfV/V5u2g==
X-Google-Smtp-Source: ABdhPJy4/+C32k6S27yxBU2pwjcIfGXKihXQFOQZytH7CySUiWd9fjMmFBmQ8QxsNTWxPOytTbn37Q==
X-Received: by 2002:a6b:f813:: with SMTP id o19mr4273065ioh.49.1626204917690; 
 Tue, 13 Jul 2021 12:35:17 -0700 (PDT)
Received: from xps15.herring.priv ([64.188.179.248])
 by smtp.googlemail.com with ESMTPSA id b2sm7219964ioj.19.2021.07.13.12.35.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Jul 2021 12:35:17 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, Jean Delvare <jdelvare@suse.com>,
 Guenter Roeck <linux@roeck-us.net>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Saravanan Sekar <sravanhome@gmail.com>,
 Mark Brown <broonie@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>,
 Troy Kisky <troy.kisky@boundarydevices.com>, linux-hwmon@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-spi@vger.kernel.org
Subject: [PATCH] dt-bindings: Move fixed string 'patternProperties' to
 'properties'
Date: Tue, 13 Jul 2021 13:35:14 -0600
Message-Id: <20210713193514.690894-1-robh@kernel.org>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210713_123518_848586_14EB26A7 
X-CRM114-Status: GOOD (  15.13  )
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

There's no need for fixed strings to be under 'patternProperties', so move
them under 'properties' instead.

Cc: Jean Delvare <jdelvare@suse.com>
Cc: Guenter Roeck <linux@roeck-us.net>
Cc: Kishon Vijay Abraham I <kishon@ti.com>
Cc: Vinod Koul <vkoul@kernel.org>
Cc: Saravanan Sekar <sravanhome@gmail.com>
Cc: Mark Brown <broonie@kernel.org>
Cc: Jagan Teki <jagan@amarulasolutions.com>
Cc: Troy Kisky <troy.kisky@boundarydevices.com>
Cc: linux-hwmon@vger.kernel.org
Cc: linux-phy@lists.infradead.org
Cc: linux-spi@vger.kernel.org
Signed-off-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/hwmon/adt7475.yaml    | 22 ++++----
 .../bindings/phy/ti,phy-j721e-wiz.yaml        | 56 +++++++++----------
 .../bindings/regulator/mps,mpq7920.yaml       |  6 +-
 .../regulator/nxp,pf8x00-regulator.yaml       |  3 +-
 .../bindings/spi/spi-controller.yaml          | 32 +++++------
 5 files changed, 60 insertions(+), 59 deletions(-)

diff --git a/Documentation/devicetree/bindings/hwmon/adt7475.yaml b/Documentation/devicetree/bindings/hwmon/adt7475.yaml
index ad0ec9f35bd8..7d9c083632b9 100644
--- a/Documentation/devicetree/bindings/hwmon/adt7475.yaml
+++ b/Documentation/devicetree/bindings/hwmon/adt7475.yaml
@@ -39,17 +39,7 @@ properties:
   reg:
     maxItems: 1
 
-patternProperties:
-  "^adi,bypass-attenuator-in[0-4]$":
-    description: |
-      Configures bypassing the individual voltage input attenuator. If
-      set to 1 the attenuator is bypassed if set to 0 the attenuator is
-      not bypassed. If the property is absent then the attenuator
-      retains it's configuration from the bios/bootloader.
-    $ref: /schemas/types.yaml#/definitions/uint32
-    enum: [0, 1]
-
-  "^adi,pwm-active-state$":
+  adi,pwm-active-state:
     description: |
       Integer array, represents the active state of the pwm outputs If set to 0
       the pwm uses a logic low output for 100% duty cycle. If set to 1 the pwm
@@ -61,6 +51,16 @@ patternProperties:
       enum: [0, 1]
       default: 1
 
+patternProperties:
+  "^adi,bypass-attenuator-in[0-4]$":
+    description: |
+      Configures bypassing the individual voltage input attenuator. If
+      set to 1 the attenuator is bypassed if set to 0 the attenuator is
+      not bypassed. If the property is absent then the attenuator
+      retains it's configuration from the bios/bootloader.
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [0, 1]
+
 required:
   - compatible
   - reg
diff --git a/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml b/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml
index 5272b6f284ba..dcd63908aeae 100644
--- a/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml
+++ b/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml
@@ -77,6 +77,34 @@ properties:
       Type-C spec states minimum CC pin debounce of 100 ms and maximum
       of 200 ms. However, some solutions might need more than 200 ms.
 
+  refclk-dig:
+    type: object
+    description: |
+      WIZ node should have subnode for refclk_dig to select the reference
+      clock source for the reference clock used in the PHY and PMA digital
+      logic.
+    properties:
+      clocks:
+        minItems: 2
+        maxItems: 4
+        description: Phandle to two (Torrent) or four (Sierra) clock nodes representing
+          the inputs to refclk_dig
+
+      "#clock-cells":
+        const: 0
+
+      assigned-clocks:
+        maxItems: 1
+
+      assigned-clock-parents:
+        maxItems: 1
+
+    required:
+      - clocks
+      - "#clock-cells"
+      - assigned-clocks
+      - assigned-clock-parents
+
 patternProperties:
   "^pll[0|1]-refclk$":
     type: object
@@ -121,34 +149,6 @@ patternProperties:
       - clocks
       - "#clock-cells"
 
-  "^refclk-dig$":
-    type: object
-    description: |
-      WIZ node should have subnode for refclk_dig to select the reference
-      clock source for the reference clock used in the PHY and PMA digital
-      logic.
-    properties:
-      clocks:
-        minItems: 2
-        maxItems: 4
-        description: Phandle to two (Torrent) or four (Sierra) clock nodes representing
-          the inputs to refclk_dig
-
-      "#clock-cells":
-        const: 0
-
-      assigned-clocks:
-        maxItems: 1
-
-      assigned-clock-parents:
-        maxItems: 1
-
-    required:
-      - clocks
-      - "#clock-cells"
-      - assigned-clocks
-      - assigned-clock-parents
-
   "^serdes@[0-9a-f]+$":
     type: object
     description: |
diff --git a/Documentation/devicetree/bindings/regulator/mps,mpq7920.yaml b/Documentation/devicetree/bindings/regulator/mps,mpq7920.yaml
index 12b8963615c3..c2e8c54e5311 100644
--- a/Documentation/devicetree/bindings/regulator/mps,mpq7920.yaml
+++ b/Documentation/devicetree/bindings/regulator/mps,mpq7920.yaml
@@ -36,12 +36,12 @@ properties:
           switching frequency must be one of following corresponding value
           1.1MHz, 1.65MHz, 2.2MHz, 2.75MHz
 
-    patternProperties:
-      "^ldo[1-4]$":
+      ldortc:
         type: object
         $ref: regulator.yaml#
 
-      "^ldortc$":
+    patternProperties:
+      "^ldo[1-4]$":
         type: object
         $ref: regulator.yaml#
 
diff --git a/Documentation/devicetree/bindings/regulator/nxp,pf8x00-regulator.yaml b/Documentation/devicetree/bindings/regulator/nxp,pf8x00-regulator.yaml
index 8761437ed8ad..aabf50f5b39e 100644
--- a/Documentation/devicetree/bindings/regulator/nxp,pf8x00-regulator.yaml
+++ b/Documentation/devicetree/bindings/regulator/nxp,pf8x00-regulator.yaml
@@ -83,7 +83,8 @@ properties:
 
         unevaluatedProperties: false
 
-      "^vsnvs$":
+    properties:
+      vsnvs:
         type: object
         $ref: regulator.yaml#
         description:
diff --git a/Documentation/devicetree/bindings/spi/spi-controller.yaml b/Documentation/devicetree/bindings/spi/spi-controller.yaml
index faef4f6f55b8..8246891602e7 100644
--- a/Documentation/devicetree/bindings/spi/spi-controller.yaml
+++ b/Documentation/devicetree/bindings/spi/spi-controller.yaml
@@ -79,22 +79,7 @@ properties:
     description:
       The SPI controller acts as a slave, instead of a master.
 
-allOf:
-  - if:
-      not:
-        required:
-          - spi-slave
-    then:
-      properties:
-        "#address-cells":
-          const: 1
-    else:
-      properties:
-        "#address-cells":
-          const: 0
-
-patternProperties:
-  "^slave$":
+  slave:
     type: object
 
     properties:
@@ -105,6 +90,7 @@ patternProperties:
     required:
       - compatible
 
+patternProperties:
   "^.*@[0-9a-f]+$":
     type: object
 
@@ -180,6 +166,20 @@ patternProperties:
       - compatible
       - reg
 
+allOf:
+  - if:
+      not:
+        required:
+          - spi-slave
+    then:
+      properties:
+        "#address-cells":
+          const: 1
+    else:
+      properties:
+        "#address-cells":
+          const: 0
+
 additionalProperties: true
 
 examples:
-- 
2.27.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
