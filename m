Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B000CCA482
	for <linux-phy@archiver.kernel.org>; Tue, 28 Jun 2022 12:45:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5n5H/i2GyAFfLu0zDZ5FJWeLREUg8bcsQVcIFkkGW+I=; b=OEFO6kr7GWkdBd
	AUE+1g47xXplJvbCBYLKVMZaCdUy3zlIgFaYG7XlbSB85u847iJ4FulD/7e8rQ5hOl8sCS1BTKO34
	a2E4FcGbLV8iu5ZmZju7qsgy5ZOyMpDiIl4xHblVDEYn1ywLFQtdGmcKm9u9ZNCo2jDbQUh5G1QfA
	HnKLz0uWo5KEOowcNYMbpaHk2ds1x7/QjJpf0fsIBK2eNZcc0ywM0MuPzWMMDgjwbVF1wnuI3Z9Cr
	JIap/Uz0Wg9n+OlpUNa6bBU908EodUI6yF/KE5MkTXLJ7WOonbiyOM2DxlanZ1/14lM+IGLVLT0nA
	JwU04GQhhK7Q0XfNWr0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6Aaq-006Dmh-Kt; Tue, 28 Jun 2022 12:45:24 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6Aan-006Dk2-1J
	for linux-phy@lists.infradead.org; Tue, 28 Jun 2022 12:45:22 +0000
Received: by mail-ed1-x534.google.com with SMTP id z19so17350354edb.11
        for <linux-phy@lists.infradead.org>; Tue, 28 Jun 2022 05:45:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=cnf6pcj5vpCMbTgtadV2bK80NwflBsx3RadXRu/q84M=;
        b=B+j85IdQS+Xntj9SF6zbCBxyVHzt4nedW5mC16gCblDiLxqEwiEKaGjBWnJxNbbxza
         WRQlNzQSy1+kmCH2Mao/5NdE5KOWsSMSQM5COm2vNU25odKJ17pCD+mW/MLQkVTPx3ZL
         ELDxzTSrWCbKZvdjGL3Igh0lMSffAp6M8J6cIBVsaQpd8Yg4APdkUH39sbEP3qRecjOe
         Ev0Ag1R6uY6KX3MS49lehzdzuU+SMTY3kyMBDd1v32FavGke7XXu89oKCXW4+ybqeaj3
         yUoAimTthTjprexnZ0sntVrw/LKYm0xQmRrPstdQn7ApzHnlsm2HPMm3FJ7y//POtGN2
         i6cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=cnf6pcj5vpCMbTgtadV2bK80NwflBsx3RadXRu/q84M=;
        b=FD4FY6nTPpTOS/JIYqtVHaB0SrucdHygtsSJUgttknbhJojVruSHq5Hf+Kh4aIiIYD
         wfwmq5/jvLj10z0QDsds24qMxXerdhvifgIrpyZfGmEGx2TAdQVPQxnwYYQtiQQKVlj6
         Dr4wqviD2SK7W0IagA3pWkbUjcvkirRPmVujFgREDHsj2L3CCRsav8r8+q5/icTJ64BE
         pjCfWJwXtY0vOKinlKVWudm0wsPFdTVJjFnNlwX8tBArzAt0S++xVyi1WXlJC4FTvmM0
         Q5TwetfFSEgy+d8jfbcwWcM2DCaCf7vyIwzUaxheSnq+PwM1Ickp6ajL3xShIix9Wre8
         gBMw==
X-Gm-Message-State: AJIora98hy6xEUfThxCXWR+grYszlcpxxaIcUKBDmSthMtmeXak/Sn0O
	Zfc/BvNAWf2wQkZDjM9gZgEXPnNzjRM=
X-Google-Smtp-Source: AGRyM1uwTe6v4t4C+Cj8uTSAWOl21YQ49mX5FGF++g1vgFNyOS/JkYzaDrYYbPLO26Eiax2DA4KF1g==
X-Received: by 2002:a05:6402:27c8:b0:435:d40e:c648 with SMTP id c8-20020a05640227c800b00435d40ec648mr23155962ede.200.1656420319512;
        Tue, 28 Jun 2022 05:45:19 -0700 (PDT)
Received: from localhost.localdomain (dynamic-095-114-061-215.95.114.pool.telefonica.de. [95.114.61.215])
        by smtp.googlemail.com with ESMTPSA id f13-20020a170906824d00b00726e108b566sm622871ejx.173.2022.06.28.05.45.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jun 2022 05:45:19 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	p.zabel@pengutronix.de
Cc: linux-kernel@vger.kernel.org,
	linux-mips@vger.kernel.org,
	vkoul@kernel.org,
	kishon@ti.com,
	rtanwar@maxlinear.com,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: [PATCH v1 3/9] dt-bindings: reset: intel,rcu-gw: Update bindings for "legacy" SoCs
Date: Tue, 28 Jun 2022 14:44:35 +0200
Message-Id: <20220628124441.2385023-4-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220628124441.2385023-1-martin.blumenstingl@googlemail.com>
References: <20220628124441.2385023-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220628_054521_124579_40F25DF6 
X-CRM114-Status: GOOD (  14.72  )
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

The Lantiq Amazon-SE, Danube, xRX100 and xRX200 SoCs have up to two USB2
PHYs which are part of the RCU register space. The RCU registers on
these SoCs are using big endian. Update the binding for these SoCs to
properly describe this IP:
- Add compatible strings for Amazon-SE, Danube and xRX100
- Rename the xRX200 compatible string (which is not used anywhere) and
  switch to the one previously documented in mips/lantiq/rcu.txt
- Allow usage of "simple-mfd" and "syscon" in the compatible string so the
  child devices (USB2 PHYs) can be described
- Allow #address-cells and #size-cells to be set to 1 for describing the
  child devices (USB2 PHYs)
- #reset-cells must always be 3 (offset, reset bit and status bit) on the
  legacy SoCs while LGM uses a fixed value of 2 (offset and reset bit -
  status bit is always identical to the reset bit).

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 .../bindings/reset/intel,rcu-gw.yaml          | 84 +++++++++++++++++--
 1 file changed, 79 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/reset/intel,rcu-gw.yaml b/Documentation/devicetree/bindings/reset/intel,rcu-gw.yaml
index be64f8597710..b90913c7b7d3 100644
--- a/Documentation/devicetree/bindings/reset/intel,rcu-gw.yaml
+++ b/Documentation/devicetree/bindings/reset/intel,rcu-gw.yaml
@@ -11,9 +11,16 @@ maintainers:
 
 properties:
   compatible:
-    enum:
-      - intel,rcu-lgm
-      - intel,rcu-xrx200
+    oneOf:
+      - items:
+          - enum:
+              - lantiq,ase-rcu
+              - lantiq,danube-rcu
+              - lantiq,xrx100-rcu
+              - lantiq,xrx200-rcu
+          - const: simple-mfd
+          - const: syscon
+      - const: intel,rcu-lgm
 
   reg:
     description: Reset controller registers.
@@ -33,8 +40,6 @@ properties:
         maximum: 31
 
   "#reset-cells":
-    minimum: 2
-    maximum: 3
     description: |
       First cell is reset request register offset.
       Second cell is bit offset in reset request register.
@@ -43,6 +48,43 @@ properties:
       reset request and reset status registers is same. Whereas
       3 for legacy SoCs as bit offset differs.
 
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 1
+
+  big-endian: true
+
+patternProperties:
+  "^usb2-phy@[0-9a-f]+$":
+    type: object
+    $ref: "../phy/lantiq,xway-rcu-usb2-phy.yaml"
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: intel,rcu-lgm
+    then:
+      properties:
+        "#reset-cells":
+          const: 2
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - lantiq,ase-rcu
+              - lantiq,danube-rcu
+              - lantiq,xrx100-rcu
+              - lantiq,xrx200-rcu
+    then:
+      properties:
+        "#reset-cells":
+          const: 3
+
 required:
   - compatible
   - reg
@@ -67,3 +109,35 @@ examples:
         #pwm-cells = <2>;
         resets = <&rcu0 0x30 21>;
     };
+  - |
+    rcu_xrx200: rcu@203000 {
+        compatible = "lantiq,xrx200-rcu", "simple-mfd", "syscon";
+        reg = <0x203000 0x100>;
+        big-endian;
+
+        #address-cells = <1>;
+        #size-cells = <1>;
+
+        #reset-cells = <3>;
+        intel,global-reset = <0x10 30 29>;
+
+        usb_phy0: usb2-phy@18 {
+            compatible = "lantiq,xrx200-usb2-phy";
+            reg = <0x18 4>, <0x38 4>;
+            status = "disabled";
+
+            resets = <&rcu_xrx200 0x48 4 4>, <&rcu_xrx200 0x10 4 4>;
+            reset-names = "phy", "ctrl";
+            #phy-cells = <0>;
+        };
+
+        usb_phy1: usb2-phy@34 {
+            compatible = "lantiq,xrx200-usb2-phy";
+            reg = <0x34 4>, <0x3c 4>;
+            status = "disabled";
+
+            resets = <&rcu_xrx200 0x48 5 5>, <&rcu_xrx200 0x10 4 4>;
+            reset-names = "phy", "ctrl";
+            #phy-cells = <0>;
+        };
+    };
-- 
2.36.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
