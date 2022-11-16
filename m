Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44C14C433FE
	for <linux-phy@archiver.kernel.org>; Wed, 16 Nov 2022 12:02:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9PSi8ws/+tJWQFDyHe/3CVsMWooV6iqxw/JsjKxC6qg=; b=sAr1qmAljmBPee
	LLB7/HlDMFALdPlQxq1f+3EDxvSiV+f4TKAseN5/sylkzRTGkgPyGcoFecqLzrikZvflTAgjvTlsm
	/wxQK+Ks7cWA5RgBeQTdP8j//8PK24r+zNSCCxqd0xTj/AmHaQfBKjJs5wqABZGok61Faq7DpOR3s
	7Wp/yejuHjfhUZi9n4JIX8u2NbDN/Ww+0ht9GfGezqH14qacRB1XTERylklxwKBULcHWFG/ripm2G
	cKftnjqWvRD7nETrDhX5/g6eAiGccUeKAOq7vfPwAkOwjaCmkqC9G4z5yWhqLjbjjaDv48xPzxqvB
	8Iz6jwoMjRMp1ZLbbWoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovH7G-003CxB-L7; Wed, 16 Nov 2022 12:02:06 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovH7E-003Cvm-Ch
	for linux-phy@lists.infradead.org; Wed, 16 Nov 2022 12:02:05 +0000
Received: by mail-wm1-x32e.google.com with SMTP id ja4-20020a05600c556400b003cf6e77f89cso2930408wmb.0
        for <linux-phy@lists.infradead.org>; Wed, 16 Nov 2022 04:02:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Qi/VS5VU4Lm5i+pPezZIpAbB2sXalMrX/FqWASjjTY4=;
        b=HTXP5c1AMiiqA6OJWfHeApmyLBRuAId/J3xeLB/MYOlCgnOXMexGuzWthoqR9fvUKM
         QRrhtaMBebFYZaqGi2ckcUshJ0Hpk9iZLYscGeBTPNEWbr0HKymHxQpVp1x+5n57bwAu
         Hd6rnN+NhuhalBfdUBqDnmKExGC2FPH+eu/fAJPTA5sWX5vd9vKdozLM2GNBdmWekLYD
         IsCVPp0zt+PLpal/pXLV4jDZ+SPuF0vLgxWEhQKt4K51LYrN8kFdxy5w7P0pmrpQL+2l
         VJyzexydDoJSq3Shz2H2R/LNNYI8AgBtgg8vKjJpyjAjGqOqUQtMj5/OM2Si6q3xNOrp
         MdEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Qi/VS5VU4Lm5i+pPezZIpAbB2sXalMrX/FqWASjjTY4=;
        b=c6sZOVbTH4WWzafcW6Oi20QBoS+pPV+nCxDRPhUfCrvj45HQ53XMBwsjBH6oChZgYe
         DjTCZv6OVfgkyrSXRaO98I4tKkqj0iKq1SXI/DrHEUzO46WF6t5l6YrxQlNKNhrJm310
         P6F8RbH1yBJJYTgIqn79GItQp7CwmZOFoBPBvyzHCGTOPqjJxa3t0EkVGma+Dh5wwRg5
         1lr1cpKiPDEWHl/mAOUg1ygGDon7vx51d4UZlOEIQJOPYSQhek0haLef5iA022RtWphV
         hxUumftMATqi3QmT+eJD8Di4mYsUThhZXIwfnr2euOslGcGT3nZytkPSTvnQS9xU3utO
         AC6A==
X-Gm-Message-State: ANoB5pnfWTSbDxf8c0ynWpj/AsbjJZP080EnDz1L834IkstxPYVk/EUe
	30EFaw6cA87sR84WdTFN0A+7hw==
X-Google-Smtp-Source: AA0mqf4fOLACjnLE9fIXpNv9sG0VipGyempsJNgg7PdnvDVWB/g2Gj9AY7m8qIWsfgVPRFGJlH2ayw==
X-Received: by 2002:a05:600c:4d24:b0:3c6:a8c7:755e with SMTP id u36-20020a05600c4d2400b003c6a8c7755emr1859789wmp.167.1668600122929;
        Wed, 16 Nov 2022 04:02:02 -0800 (PST)
Received: from localhost.localdomain ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id r8-20020a056000014800b002206203ed3dsm15120109wrx.29.2022.11.16.04.02.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Nov 2022 04:02:02 -0800 (PST)
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
Subject: [PATCH 02/10] dt-bindings: phy: Add QMP UFS PHY comptible for SM8550
Date: Wed, 16 Nov 2022 14:01:49 +0200
Message-Id: <20221116120157.2706810-3-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221116120157.2706810-1-abel.vesa@linaro.org>
References: <20221116120157.2706810-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221116_040204_444772_88349BA4 
X-CRM114-Status: UNSURE (   8.63  )
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

Document the QMP UFS PHY compatible for SM8550.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 .../phy/qcom,msm8996-qmp-ufs-phy.yaml         | 24 +++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-ufs-phy.yaml
index be41acbd3b6c..1ea5fcd4a59e 100644
--- a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-ufs-phy.yaml
@@ -29,6 +29,7 @@ properties:
       - qcom,sm8250-qmp-ufs-phy
       - qcom,sm8350-qmp-ufs-phy
       - qcom,sm8450-qmp-ufs-phy
+      - qcom,sm8550-qmp-ufs-phy
 
   reg:
     items:
@@ -66,6 +67,9 @@ properties:
 
   vddp-ref-clk-supply: true
 
+  vdda-phy-max-microamp: true
+  vdda-pll-max-microamp: true
+
 patternProperties:
   "^phy@[0-9a-f]+$":
     type: object
@@ -141,6 +145,7 @@ allOf:
           contains:
             enum:
               - qcom,sm8450-qmp-ufs-phy
+              - qcom,sm8550-qmp-ufs-phy
     then:
       properties:
         clocks:
@@ -163,6 +168,7 @@ allOf:
               - qcom,sm8250-qmp-ufs-phy
               - qcom,sm8350-qmp-ufs-phy
               - qcom,sm8450-qmp-ufs-phy
+              - qcom,sm8550-qmp-ufs-phy
     then:
       patternProperties:
         "^phy@[0-9a-f]+$":
@@ -209,6 +215,24 @@ allOf:
                 - description: RX
                 - description: PCS
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sm8550-qmp-ufs-phy
+    then:
+      patternProperties:
+        "^phy@[0-9a-f]+$":
+          properties:
+            vdda-phy-max-microamp:
+              description:
+                Specifies max. load that can be drawn from VDDA PHY supply.
+
+            vdda-pll-max-microamp:
+              description:
+                Specifies max. load that can be drawn from VDDA PLL supply.
+
 examples:
   - |
     #include <dt-bindings/clock/qcom,gcc-sm8250.h>
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
