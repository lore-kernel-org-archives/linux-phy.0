Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9502C77B6E
	for <linux-phy@archiver.kernel.org>; Fri,  7 Apr 2023 06:11:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9is9XvRqqojbExTg75JRvHc86xUeT1CEmx+f1iV/ydc=; b=g7HwcPTVLjGNm1
	HIooiyi7Us/ekzKIreLvZROauYBaHJQkzda5wgO1/C2Bd8YmRlKRfmejAifJ/6njXLPqQzB+74j51
	4mQ/EBPwDsCKc1F8628P6xBkmy1IQtx78XMwVqrm35QJveEuNZR04wQbicp9DoumBYUK10oZYI4eH
	GRMQZ37/404xkIFtOpKvnoqEsBk28ffSFPba73wDZsD6reDQmcMAMHROA0VG3ze2lK31MkAxviI4d
	oENXt0RwvEff9u+bSI3Lg4LsQi7MI667UM7pAj/ffM74UxFPx5y/3rOrr+fNkn+WNxdhIDapZtpQE
	c90V3G3pxiK0wHeJrnKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pkfK2-009FDb-1B;
	Fri, 07 Apr 2023 06:11:42 +0000
Received: from mail-pj1-x1029.google.com ([2607:f8b0:4864:20::1029])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pkfK0-009FCr-06
	for linux-phy@lists.infradead.org;
	Fri, 07 Apr 2023 06:11:41 +0000
Received: by mail-pj1-x1029.google.com with SMTP id 98e67ed59e1d1-23f84d31716so38619a91.1
        for <linux-phy@lists.infradead.org>; Thu, 06 Apr 2023 23:11:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680847898;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wsyeQXy2xW6CfVtCD6z7F80PD3154E+msxA/B8ME+4s=;
        b=TxaHigEq/powxt8G0YFWCXnhy0gHw5R4nSEaBXCc2cQZqagDXWat0bd9Zh3uLL7zSO
         QsY7o+RvJ+WTiTAaFzURH7O76/opFYBjzsmtbkZWv5EpsTrPqSbMmbRDhXYYhh06vX0A
         d7sRTztRarC/f662JZc5E+dGQDLwX0mpFZrbzbzoq+c2vEh9VrKvlaC5msEMnBqyszgY
         wZDb8CDlOp5ExQugSSSK63+TJr61lWfanxcJsAm3kv9mny+/IrgN9SODSovp/8N3nyYB
         1n0oAe3EOrNQhpQCEyojkNCKRUcJZ2obdHmQcbM+JNvobXmcGZRmHx6dKBAzFg+FD/Zi
         M2SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680847898;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wsyeQXy2xW6CfVtCD6z7F80PD3154E+msxA/B8ME+4s=;
        b=mIhRBfA5YyudS5AWKDU8/zMOwci2gouJttHhorsamao6vn4orjvk5+XWzMfNyeDIki
         x15J4q1tdczxIyOZSSuj9Uo33xAVbd2PSl+pkqKOm7uKrT+9wal1BtRqBvFJBrhmNycB
         8QAnAgUOLFRliLIW5ryrkJaf3IoF8Yx8TAemcEkcAHbIna0Ix76boOh9ktRnjIcixf2n
         F5girDMSJe4j9PmDN54FxabOrPMaYpbEh/Cr0GH6/Kao0G5m2Un0iAGCkU34pPOMowDd
         LO05GrliJe4hoHvG0OqvYS24y1WVmrTUnPAKe4eP0H/Vh+hlfJiLE85pFBuXynxOu2HS
         yAeA==
X-Gm-Message-State: AAQBX9fLphZuPdwqa+/1HxG6lB1b3sWUD6Ux6k7pfEBSH7IwihlLTPxh
	vfRvHf+zNc9WJOfr7ojltT9nWQ==
X-Google-Smtp-Source: AKy350aR5pK8ttJepHEzseIhmBm6LXUUcc0dnTi5V1bRjzde3iRWNT3mv/x+VCZxMYrai5Vr70S1og==
X-Received: by 2002:a62:52d0:0:b0:62e:43ce:e6ab with SMTP id g199-20020a6252d0000000b0062e43cee6abmr1346096pfb.13.1680847898470;
        Thu, 06 Apr 2023 23:11:38 -0700 (PDT)
Received: from localhost.localdomain ([2401:4900:1c60:6a11:8ba1:beba:def7:a4ae])
        by smtp.gmail.com with ESMTPSA id u25-20020aa78399000000b0062d7e9bb17asm2253879pfm.81.2023.04.06.23.11.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Apr 2023 23:11:38 -0700 (PDT)
From: Bhupesh Sharma <bhupesh.sharma@linaro.org>
To: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org
Cc: agross@kernel.org,
	linux-kernel@vger.kernel.org,
	andersson@kernel.org,
	bhupesh.sharma@linaro.org,
	bhupesh.linux@gmail.com,
	krzysztof.kozlowski@linaro.org,
	robh+dt@kernel.org,
	konrad.dybcio@linaro.org,
	kishon@kernel.org,
	vkoul@kernel.org,
	krzysztof.kozlowski+dt@linaro.org
Subject: [PATCH v6 1/2] dt-bindings: phy: qcom,qmp-usb: Drop legacy bindings and move to newer one (SM6115 & QCM2290)
Date: Fri,  7 Apr 2023 11:41:21 +0530
Message-Id: <20230407061122.2036838-2-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230407061122.2036838-1-bhupesh.sharma@linaro.org>
References: <20230407061122.2036838-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230406_231140_069417_05DFDF2A 
X-CRM114-Status: UNSURE (   9.38  )
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

'qcom,msm8996-qmp-usb3-phy.yaml' defines bindings for several PHYs
which predate USB -> USB+DP migration. Since SM6115 and QCM2290
nodes for USB QMP phy are being added to dtsi files by followup patches,
move these bindings instead to the newer style
'qcom,sc8280xp-qmp-usb3-uni-phy.yaml' file.

Since no device trees use these bindings presently, so we have no ABI breakages
with this patch.

Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 .../phy/qcom,msm8996-qmp-usb3-phy.yaml        |  27 -----
 .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml   | 109 +++++++++++++++++-
 2 files changed, 104 insertions(+), 32 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
index e81a38281f8c..4c96dab5b9e3 100644
--- a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
@@ -23,14 +23,12 @@ properties:
       - qcom,ipq8074-qmp-usb3-phy
       - qcom,msm8996-qmp-usb3-phy
       - qcom,msm8998-qmp-usb3-phy
-      - qcom,qcm2290-qmp-usb3-phy
       - qcom,sc7180-qmp-usb3-phy
       - qcom,sc8180x-qmp-usb3-phy
       - qcom,sdm845-qmp-usb3-phy
       - qcom,sdm845-qmp-usb3-uni-phy
       - qcom,sdx55-qmp-usb3-uni-phy
       - qcom,sdx65-qmp-usb3-uni-phy
-      - qcom,sm6115-qmp-usb3-phy
       - qcom,sm8150-qmp-usb3-phy
       - qcom,sm8150-qmp-usb3-uni-phy
       - qcom,sm8250-qmp-usb3-phy
@@ -248,29 +246,6 @@ allOf:
             - const: phy
             - const: common
 
-  - if:
-      properties:
-        compatible:
-          contains:
-            enum:
-              - qcom,qcm2290-qmp-usb3-phy
-              - qcom,sm6115-qmp-usb3-phy
-    then:
-      properties:
-        clocks:
-          maxItems: 3
-        clock-names:
-          items:
-            - const: cfg_ahb
-            - const: ref
-            - const: com_aux
-        resets:
-          maxItems: 2
-        reset-names:
-          items:
-            - const: phy_phy
-            - const: phy
-
   - if:
       properties:
         compatible:
@@ -318,12 +293,10 @@ allOf:
             enum:
               - qcom,ipq6018-qmp-usb3-phy
               - qcom,ipq8074-qmp-usb3-phy
-              - qcom,qcm2290-qmp-usb3-phy
               - qcom,sc7180-qmp-usb3-phy
               - qcom,sc8180x-qmp-usb3-phy
               - qcom,sdx55-qmp-usb3-uni-phy
               - qcom,sdx65-qmp-usb3-uni-phy
-              - qcom,sm6115-qmp-usb3-phy
               - qcom,sm8150-qmp-usb3-uni-phy
               - qcom,sm8250-qmp-usb3-phy
     then:
diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
index 16fce1038285..ae207ce5f0c0 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
@@ -16,20 +16,28 @@ description:
 properties:
   compatible:
     enum:
+      - qcom,qcm2290-qmp-usb3-phy
       - qcom,sc8280xp-qmp-usb3-uni-phy
+      - qcom,sm6115-qmp-usb3-phy
 
   reg:
     maxItems: 1
 
+  "#address-cells":
+    enum: [ 1, 2 ]
+
+  "#size-cells":
+    enum: [ 1, 2 ]
+
+  ranges: true
+
   clocks:
+    minItems: 3
     maxItems: 4
 
   clock-names:
-    items:
-      - const: aux
-      - const: ref
-      - const: com_aux
-      - const: pipe
+    minItems: 3
+    maxItems: 4
 
   power-domains:
     maxItems: 1
@@ -55,6 +63,42 @@ properties:
   "#phy-cells":
     const: 0
 
+patternProperties:
+  "^phy@[0-9a-f]+$":
+    type: object
+    description: single PHY-provider child node
+    properties:
+      reg:
+        minItems: 3
+        maxItems: 6
+
+      clocks:
+        items:
+          - description: PIPE clock
+
+      clock-names:
+        deprecated: true
+        items:
+          - const: pipe0
+
+      "#clock-cells":
+        const: 0
+
+      clock-output-names:
+        maxItems: 1
+
+      "#phy-cells":
+        const: 0
+
+    required:
+      - reg
+      - clocks
+      - "#clock-cells"
+      - clock-output-names
+      - "#phy-cells"
+
+    additionalProperties: false
+
 required:
   - compatible
   - reg
@@ -71,6 +115,61 @@ required:
 
 additionalProperties: false
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,qcm2290-qmp-usb3-phy
+              - qcom,sm6115-qmp-usb3-phy
+    then:
+      properties:
+        clocks:
+          maxItems: 3
+        clock-names:
+          items:
+            - const: cfg_ahb
+            - const: ref
+            - const: com_aux
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sc8280xp-qmp-usb3-uni-phy
+    then:
+      properties:
+        clocks:
+          maxItems: 4
+        clock-names:
+          items:
+            - const: aux
+            - const: ref
+            - const: com_aux
+            - const: pipe
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,qcm2290-qmp-usb3-phy
+              - qcom,sm6115-qmp-usb3-phy
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
 examples:
   - |
     #include <dt-bindings/clock/qcom,gcc-sc8280xp.h>
-- 
2.38.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
