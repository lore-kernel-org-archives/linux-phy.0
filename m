Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA23AC35274
	for <linux-phy@archiver.kernel.org>; Mon, 18 Dec 2023 12:07:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M8KK3qvIfUle56XFCoPUC/WOO7y3bZ2q6wX8b5M4J48=; b=odsDXDIrNYRi1b
	dPcvtQgAWZm7QejS/Q4UF33s2dGx2NbGIFsV5qlVcQ9oMgMNBuh+ZGXbtxbCV2rrgMol2VYkHn4sc
	8CLgJM67leJFUWvdrnRsGRJi++jxtPPYynTSLzxUb3KIQwXkvlN5dc3r/e3D9Iq+UhaJD0itSetSG
	D4ZhJf/AJh7bHUYhtkbiNRzKmpThhhiK4bHCA5gNBjxEsCWlfN+uhtIjav7WmvTuEakMbzu3N37u2
	rDhCcis2KZtkxon7l+xdRXAsWPLMiV5A5aC+xxnCilHPxGZvWRAt1tLIjN/DX1luK/MLhxokjGvRo
	67a5muavGTkOIHaWEC9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFCPV-00AYK6-2C;
	Mon, 18 Dec 2023 12:07:49 +0000
Received: from mail-pl1-x62e.google.com ([2607:f8b0:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFCPS-00AYF7-1G
	for linux-phy@lists.infradead.org;
	Mon, 18 Dec 2023 12:07:48 +0000
Received: by mail-pl1-x62e.google.com with SMTP id d9443c01a7336-1d045097b4cso9770195ad.0
        for <linux-phy@lists.infradead.org>; Mon, 18 Dec 2023 04:07:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702901252; x=1703506052; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6XGN0l4V5lK+pzpRjICmG52cyuWi32BoHlDHyX2fzxU=;
        b=FECzST3V9t3EW/QZHC81i6Lz0J3DeKYk2QtCwK8umCVuraIw/mHqrou/in2Kfo8Z7E
         pyqLZvfa8iTcT/MIYHA+dS61KTJULbjoocKWO38s1yYINV1JZ7divRj7oQkUkxQny98r
         bhfnljGoRTISxCGDijGpiy6QXEI+5tp1xh0czVpfo/w/v3sxc+X72HJuyV4lJgHWtggZ
         cWOKTwe6Ms40C8bPX8MHg6BypoNcSvkozymJ62bjAN16vPF/KP08kmW4rNJ+Oe+NerAh
         r3z3wIQAC5AJFDavA6pMl092JmjXMzPJDQu8an8PLUy8aiK8+kJn1r4fogSsNtZfJgZB
         vqPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702901252; x=1703506052;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6XGN0l4V5lK+pzpRjICmG52cyuWi32BoHlDHyX2fzxU=;
        b=VVkhhshln0y+tAdgL9S9ErUZFOdnf6UF4O5a3Cnr4rHAadDt1A9tkB69KfyksBn1UX
         aZYfPF4bcMAGkZjMKXy7KQuylJDqthLwTwjV9na3goRJ3FGl3eVl3cXrOKe2vY2rRPBb
         NwGi+NZpIhWkKN06955OIVK4l2yEzBAQ6cmQpwqjufUmX8CxCDQwAl0dmJaRvpgxqYp4
         070RCYiK0VZGlmSm2TlgQKpcHuoI3qEqSbh+AdXCXZRoiyaRriwdtpaM0I3yNy6X1IYI
         1lU7bd07vPo97zXF93kEg9MuPl8fPNnfd/ciVKJLor1AlSjX4PZzMRI5E1wyDiUSFH3S
         zM+Q==
X-Gm-Message-State: AOJu0Yz9l09c0TOKeEORFHJwd3yHNkldaymhKmtBbd0WnJZ6VwIHu/IL
	Xr25r3+ovEB4QAXgwkdJi5c5
X-Google-Smtp-Source: AGHT+IHktLh27UF6SwWXcuTMGgrd5PzOnnwJaNZnTznA+SHt8DnQ7XBNQGfcgy37yKImL7SiBzdycw==
X-Received: by 2002:a17:902:ce91:b0:1d0:6ffd:ceb7 with SMTP id f17-20020a170902ce9100b001d06ffdceb7mr9928945plg.112.1702901252088;
        Mon, 18 Dec 2023 04:07:32 -0800 (PST)
Received: from localhost.localdomain ([117.207.27.21])
        by smtp.gmail.com with ESMTPSA id j18-20020a170902c3d200b001d368c778dasm1285709plj.235.2023.12.18.04.07.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Dec 2023 04:07:31 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: andersson@kernel.org,
	konrad.dybcio@linaro.org,
	vkoul@kernel.org,
	sboyd@kernel.org,
	mturquette@baylibre.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	quic_cang@quicinc.com,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v2 01/16] dt-bindings: phy: qmp-ufs: Fix PHY clocks
Date: Mon, 18 Dec 2023 17:36:57 +0530
Message-Id: <20231218120712.16438-2-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231218120712.16438-1-manivannan.sadhasivam@linaro.org>
References: <20231218120712.16438-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231218_040746_426530_EAE0F58B 
X-CRM114-Status: UNSURE (   9.25  )
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

All QMP UFS PHYs except MSM8996 require 3 clocks:

* ref - 19.2MHz reference clock from RPMh
* ref_aux - Auxiliary reference clock from GCC
* qref - QREF clock from GCC or TCSR (since SM8550)

MSM8996 only requires 'ref' and 'qref' clocks. Hence, fix the binding to
reflect the actual clock topology.

This change obviously breaks the ABI, but it is inevitable since the
clock topology needs to be accurately described in the binding.

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 .../phy/qcom,sc8280xp-qmp-ufs-phy.yaml        | 47 +++++++++----------
 1 file changed, 21 insertions(+), 26 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
index f3a3296c811c..800f11b29dcd 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
@@ -37,15 +37,12 @@ properties:
     maxItems: 1
 
   clocks:
-    minItems: 1
+    minItems: 2
     maxItems: 3
 
   clock-names:
-    minItems: 1
-    items:
-      - const: ref
-      - const: ref_aux
-      - const: qref
+    minItems: 2
+    maxItems: 3
 
   power-domains:
     maxItems: 1
@@ -85,22 +82,9 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,msm8998-qmp-ufs-phy
               - qcom,sa8775p-qmp-ufs-phy
               - qcom,sc7280-qmp-ufs-phy
-              - qcom,sm8450-qmp-ufs-phy
-    then:
-      properties:
-        clocks:
-          minItems: 3
-        clock-names:
-          minItems: 3
-
-  - if:
-      properties:
-        compatible:
-          contains:
-            enum:
-              - qcom,msm8998-qmp-ufs-phy
               - qcom,sc8180x-qmp-ufs-phy
               - qcom,sc8280xp-qmp-ufs-phy
               - qcom,sdm845-qmp-ufs-phy
@@ -111,13 +95,18 @@ allOf:
               - qcom,sm8150-qmp-ufs-phy
               - qcom,sm8250-qmp-ufs-phy
               - qcom,sm8350-qmp-ufs-phy
+              - qcom,sm8450-qmp-ufs-phy
               - qcom,sm8550-qmp-ufs-phy
     then:
       properties:
         clocks:
-          maxItems: 2
+          minItems: 3
+          maxItems: 3
         clock-names:
-          maxItems: 2
+          items:
+            - const: ref
+            - const: ref_aux
+            - const: qref
 
   - if:
       properties:
@@ -128,22 +117,28 @@ allOf:
     then:
       properties:
         clocks:
-          maxItems: 1
+          minItems: 2
+          maxItems: 2
         clock-names:
-          maxItems: 1
+          items:
+            - const: ref
+            - const: qref
 
 additionalProperties: false
 
 examples:
   - |
     #include <dt-bindings/clock/qcom,gcc-sc8280xp.h>
+    #include <dt-bindings/clock/qcom,rpmh.h>
 
     ufs_mem_phy: phy@1d87000 {
         compatible = "qcom,sc8280xp-qmp-ufs-phy";
         reg = <0x01d87000 0x1000>;
 
-        clocks = <&gcc GCC_UFS_REF_CLKREF_CLK>, <&gcc GCC_UFS_PHY_PHY_AUX_CLK>;
-        clock-names = "ref", "ref_aux";
+        clocks = <&rpmhcc RPMH_CXO_CLK>, <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
+                 <&gcc GCC_UFS_REF_CLKREF_CLK>;
+
+        clock-names = "ref", "ref_aux", "qref";
 
         power-domains = <&gcc UFS_PHY_GDSC>;
 
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
