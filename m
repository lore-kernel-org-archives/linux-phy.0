Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03BADC77B61
	for <linux-phy@archiver.kernel.org>; Mon, 10 Apr 2023 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nXh/z9itIwE9fSc7oeiglR8ejs3vSXpU+JidCsjOKH4=; b=OXdnLtjsVqOGE6
	mVUwpW9VS5XHZ7oXxfoUZEcM07sSIQfXZHLi2HQcdxnopBlhoBwy4TlbqLyfYiARmIBUkK1JKAofB
	ntfJmrLcZn+9SQ75vWnVLiBFiQ5hdV3lXjQknp7V2i3DmicdcAMTbDiBBFBtZXHwhhda/CUlDqDyO
	hVB1sIPSrMckyFvRvc352OnSMaYn0JP83Z9kEpQuL/QXDElqznwhDg71n+acekX46kEEbG7xCf6B7
	gbD4UtV4ikG/jpg7zVPliNLF+rhaxVI3QexIhQ2ZwILNcAkbo0Dm7SJZKnsRZuV/CC6csHfSiAGb3
	yuAUZi93zpcWb2TehO9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1plv2H-00FcQq-1y;
	Mon, 10 Apr 2023 17:10:33 +0000
Received: from mail-pj1-x1034.google.com ([2607:f8b0:4864:20::1034])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1plv2F-00FcPF-0A
	for linux-phy@lists.infradead.org;
	Mon, 10 Apr 2023 17:10:32 +0000
Received: by mail-pj1-x1034.google.com with SMTP id c3so5955613pjg.1
        for <linux-phy@lists.infradead.org>; Mon, 10 Apr 2023 10:10:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681146625;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jPsBIL7uoiC5DZZtXnqdAvBon8Zv1+SeehoREZW26xk=;
        b=WKyH+NU7O1lfEavsxV/DZ9NCp2jLzdTEt+/XQkis4p3kHfa8SgP9vg+U1LVQmVr5Hu
         HeEUVtzjSMcBtHMqvbr1zyXxqsxY5dsVgQm7cjPxvvxUuKiUT1ZXWip42C1XyY3QL+ly
         QMJvWDCddS8b09celm9RPxai9ilrLXRGT1LAtKjIYQyINuuBakuKX1eVQv/ZBfFDU2e7
         ffxeu3Weefh2yNky2GR1hiX+akwB4lO75pap6K3xWIcKF9roCM8e05QKlBdURTFPkOgh
         KMIzyHW4gvBOmurqlR4AmBSyA5qRrzVmth1eGTHhmq3+OP0b7TXxaP9yi6p8CX/pie+b
         446Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681146625;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jPsBIL7uoiC5DZZtXnqdAvBon8Zv1+SeehoREZW26xk=;
        b=my0vq2r35u2a2Vdi2KtR6hYQ/BkQI6H4H1k9l6af8sCqfgX+OxXQwEyHCqumUgbRNj
         iI4xIZKfwoQFkrsfsopZ/5+BVEbO9GCDHOlLoK8EFHCJd1u5EN07ihdQGklWMWYgjP2M
         tmUwv6AiUR/EhGyzfOrjtFt30cqq7OTueBw2xTBvQErGzW2o7PbXmDj8Pv67bMyQWXmU
         ARO+INNth8JuQJ2DlMZGOtCyQgD0b8RuXGVKbz9GmH3+pcuGWAUPzCGoYBr24cvenA7Y
         38U1crmqM+FkbnYKBufG2dqRTFK6fz+hblYfXJ701R9r2sxspD285blyUe3Oy4lTm32q
         /GKg==
X-Gm-Message-State: AAQBX9d1arVBNq2d9xk+qoh5QP2MFbmU4Brajaw4BCaxWi+75V8ALlsF
	mgRfRNObEDnRQpmu/VPYWSLGjg==
X-Google-Smtp-Source: AKy350b3DDWOlO2n8vNw3HQCLtQ8mZg6WZOCWMj5plEYAij8yx0YBSiPoOZxzYa44rMF9ePQb9SjFQ==
X-Received: by 2002:a05:6a20:671d:b0:d8:a2ee:6b60 with SMTP id q29-20020a056a20671d00b000d8a2ee6b60mr7681531pzh.42.1681146624663;
        Mon, 10 Apr 2023 10:10:24 -0700 (PDT)
Received: from localhost.localdomain ([2401:4900:1c60:6a11:8ba1:beba:def7:a4ae])
        by smtp.gmail.com with ESMTPSA id q11-20020a63cc4b000000b0050bc4ca9024sm7187818pgi.65.2023.04.10.10.10.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Apr 2023 10:10:24 -0700 (PDT)
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
Subject: [PATCH v8 1/2] dt-bindings: phy: qcom,qmp-usb: Drop legacy bindings and move to newer one (SM6115 & QCM2290)
Date: Mon, 10 Apr 2023 22:40:09 +0530
Message-Id: <20230410171010.2561393-2-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230410171010.2561393-1-bhupesh.sharma@linaro.org>
References: <20230410171010.2561393-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230410_101031_087762_98F5E775 
X-CRM114-Status: UNSURE (   9.23  )
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
 .../phy/qcom,msm8996-qmp-usb3-phy.yaml        | 27 ------------
 .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml   | 44 ++++++++++++++++---
 2 files changed, 39 insertions(+), 32 deletions(-)

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
index 16fce1038285..05335e6bbb58 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
@@ -16,7 +16,9 @@ description:
 properties:
   compatible:
     enum:
+      - qcom,qcm2290-qmp-usb3-phy
       - qcom,sc8280xp-qmp-usb3-uni-phy
+      - qcom,sm6115-qmp-usb3-phy
 
   reg:
     maxItems: 1
@@ -25,11 +27,7 @@ properties:
     maxItems: 4
 
   clock-names:
-    items:
-      - const: aux
-      - const: ref
-      - const: com_aux
-      - const: pipe
+    maxItems: 4
 
   power-domains:
     maxItems: 1
@@ -71,6 +69,42 @@ required:
 
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
+          maxItems: 4
+        clock-names:
+          items:
+            - const: cfg_ahb
+            - const: ref
+            - const: com_aux
+            - const: pipe
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
 examples:
   - |
     #include <dt-bindings/clock/qcom,gcc-sc8280xp.h>
-- 
2.38.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
