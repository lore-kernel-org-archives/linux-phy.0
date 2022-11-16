Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC55AC43219
	for <linux-phy@archiver.kernel.org>; Wed, 16 Nov 2022 13:15:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UafhWaX0bFaF8TGjfVijZzRSkxd1fNfwbpd7no6QzXc=; b=LH9dnEFWE0/J/q
	75LWUJE5DRCfdZngurH1qAI5R6RBIdnelnOq5+WWGlzix8ecaibF/iLcx02LAJdK3HEAF0slrZ5R7
	AJVBYYfkJzho3TVyWChB9by1pOpIjS3OSSB3Emd/BvaMaeasGYWnsu5G9bFj4TxpYfycagfRNCtb6
	wKCxEk0tyDovglJfJLrs2oTC6juxwLNfZRezAEpV2ThmZQ6bRjQpqfDv2pggIQ7gfPJ7ndoNbmUMj
	8qZe1q1R3RpX7H3JhDbnUeyVFXVM4e6LO5pHdXuLOJvGI2/RPZObvdu3GCweo0aZTiCCoA9WyLCHi
	E0HYtwnt02DYUUgZ5TFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovIGU-003mAE-2w; Wed, 16 Nov 2022 13:15:42 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovH7K-003Cxv-L9
	for linux-phy@lists.infradead.org; Wed, 16 Nov 2022 12:02:12 +0000
Received: by mail-wm1-x336.google.com with SMTP id h186-20020a1c21c3000000b003cfe48519a6so1478519wmh.0
        for <linux-phy@lists.infradead.org>; Wed, 16 Nov 2022 04:02:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NbN05C9BT6tZAtjV0AabjgssOqluzF/LcGggZBdfA3Y=;
        b=cb+9zjCvhyti0UbdoOAhiW4t2osa707snQDeVl/tfgL6UKX9USosoOrRjI/KmlDMSC
         XJWdZAbBEMqKOo7D4PD7wxVSTgOVQHjqy5HxXGX6UiKh5P2lJI3gFj6qYIB3FhvByPAI
         yClbjytPUjJSLafldxrVuHs3JQg6V0tO4/dI1Eqzqcs4vntKlDQSYgx2BXZu98oe5gPu
         1rfXWgv55yhgSsujNVxmfwcbi0aKoUBDvN4wyU9KQM9S7WJxj6zUvb2dXymglW12HCc7
         prIR0QULOIV75FEzzn0W9vKRTWHjCMpH1iwfonO6eS4lZ5ks5q+4E21rHSZRhqZaORnH
         4BpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NbN05C9BT6tZAtjV0AabjgssOqluzF/LcGggZBdfA3Y=;
        b=1whjM3PHS3Ppe4WBVLNr22xf4z2g/ErBix+0WiVS6/APtFROtPcXyuz/zS1kNLrxAG
         BWkPJlEUcUzsfmHqSnULsYYgx2l7fTE1Pbxvzixd4AAuPIDvDdSOn5PEvT7pqUtZvOFC
         j/0gB3N68dWkzEk3RKSaxmhRsOAGOQ/GRHBJCzFciBl0mVsvWh1y2btUbZNHHyPuMzc6
         X1qUF7Sn9PrxmzjJARaYVvpVpAN8+QkWrFJq1NyHmhffNzh4FAhbFw32+H76sLJRZ7vS
         g336+hBs6JNDhyaFrKEd9C05JlDtP6fnq8/POiWD++FgN6zfrf5plPGsIOKfJXUyQV3U
         z+xw==
X-Gm-Message-State: ANoB5pmZ/SUrhshxag3HorAbakrFXrdlmdjiJQABAckws0gpTdctDG0g
	Sq0/snp+WajmjB/5sM0E0mB4eQ==
X-Google-Smtp-Source: AA0mqf74aPoA9yYBiwn1d1okXUu7Mts0HlEy6QUf1H5Tar+cHcvbG7JpuIQAnQSA+WK4ip6PXwRHwA==
X-Received: by 2002:a05:600c:1d24:b0:3cf:6fd0:8168 with SMTP id l36-20020a05600c1d2400b003cf6fd08168mr1852303wms.206.1668600127891;
        Wed, 16 Nov 2022 04:02:07 -0800 (PST)
Received: from localhost.localdomain ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id r8-20020a056000014800b002206203ed3dsm15120109wrx.29.2022.11.16.04.02.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Nov 2022 04:02:07 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH 06/10] dt-bindings: phy: qcom,qmp-pcie: Document SM8550 compatible
Date: Wed, 16 Nov 2022 14:01:53 +0200
Message-Id: <20221116120157.2706810-7-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221116120157.2706810-1-abel.vesa@linaro.org>
References: <20221116120157.2706810-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221116_040210_710353_E2D3494C 
X-CRM114-Status: UNSURE (   9.20  )
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

Add SM8550 both G4 and G3 dual lane compatible strings, also add the
qref supply, the power domains, the reg entries and increase the number
of allowed clocks needed to support the mentioned platform.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 .../phy/qcom,ipq8074-qmp-pcie-phy.yaml        | 38 +++++++++++++++++--
 1 file changed, 35 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml
index 62045dcfb20c..e5752ad93f0a 100644
--- a/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml
@@ -32,6 +32,8 @@ properties:
       - qcom,sm8250-qmp-modem-pcie-phy
       - qcom,sm8450-qmp-gen3x1-pcie-phy
       - qcom,sm8450-qmp-gen4x2-pcie-phy
+      - qcom,sm8550-qmp-gen3x2-pcie-phy
+      - qcom,sm8550-qmp-gen4x2-pcie-phy
 
   reg:
     items:
@@ -47,11 +49,17 @@ properties:
 
   clocks:
     minItems: 2
-    maxItems: 4
+    maxItems: 5
 
   clock-names:
     minItems: 2
-    maxItems: 4
+    maxItems: 5
+
+  power-domains:
+    maxItems: 1
+
+  power-domain-names:
+    maxItems: 1
 
   resets:
     minItems: 1
@@ -65,6 +73,8 @@ properties:
 
   vdda-pll-supply: true
 
+  vdda-qref-supply: true
+
   vddp-ref-clk-supply: true
 
 patternProperties:
@@ -74,7 +84,7 @@ patternProperties:
     properties:
       reg:
         minItems: 3
-        maxItems: 6
+        maxItems: 7
 
       clocks:
         items:
@@ -206,6 +216,26 @@ allOf:
               - qcom,sm8250-qmp-gen3x2-pcie-phy
               - qcom,sm8250-qmp-modem-pcie-phy
               - qcom,sm8450-qmp-gen4x2-pcie-phy
+              - qcom,sm8550-qmp-gen3x2-pcie-phy
+    then:
+      patternProperties:
+        "^phy@[0-9a-f]+$":
+          properties:
+            reg:
+              items:
+                - description: TX lane 1
+                - description: RX lane 1
+                - description: PCS
+                - description: TX lane 2
+                - description: RX lane 2
+                - description: PCS_MISC
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sm8550-qmp-gen4x2-pcie-phy
     then:
       patternProperties:
         "^phy@[0-9a-f]+$":
@@ -218,6 +248,8 @@ allOf:
                 - description: TX lane 2
                 - description: RX lane 2
                 - description: PCS_MISC
+                - description: LN_SHRD
+            vdda-qref-supply: true
 
   - if:
       properties:
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
