Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD4EFC25B78
	for <linux-phy@archiver.kernel.org>; Sat, 25 May 2024 17:59:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q8ZNXplNyqNa+xBLRjYOwcjqfhbU5vTj/TKlb9PJYyI=; b=wFRSAdQj1p/pbq
	jQc0muOnWMJHPGdWFfsLZw2VDLftl/6iWwhHSmRCe+6xPbnWu3PnkMCT9B7sPGFRjCSh2L9qZi6P0
	SkRcDz6M158p8P5/5oHJDBbU0MUFygh/RdGXaqF7nmHJ9ypC6tQnF/CauI5ZbK1lj74REMa5VyieP
	5kdmXzPXoDNKXpQn8wzcfw42c53KMS5Xf7oWmsaYwEBvjRD3W6NjuQHMZYCH/K+DwXMZ/zyXRSzdk
	3Y3LQ1q+5ugR2bYmAQr1qTHxkJ0s7m38vldfR47BJy8qVqOwM/7quo3O5y9pwHKVvkpy+R394zriV
	kpvifsIG8VQKdDX3Cz0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sAvfr-0000000BSpm-1BDb;
	Sat, 25 May 2024 17:59:19 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sAvfo-0000000BSma-0WLx
	for linux-phy@lists.infradead.org;
	Sat, 25 May 2024 17:59:17 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id EEA7A63583;
	Sat, 25 May 2024 17:59:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 77CDCC4AF09;
	Sat, 25 May 2024 17:59:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716659955;
	bh=kKBQ+V1STVv37u+gh6B1hIEDYj1HFZs8V021y3zgYSc=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=IFGUivNp34Ds1IMolxu/szdceAtScMwmHQFPS7gAUHPKHj36Bp8NO+DIfz0ft3Ngn
	 7uKWVUclffLp1CMQPF0Py02XATzB8e6gv5akJUzP57yw2pJtnD9JnzC0VnjvBoPpCs
	 AcY6cs+UY4Hz1+KM7yPb92ZbYkO2KBUX3GEkTPCMsky+lSxNGKtYrei0XJ4y/Q076y
	 kGqizQyePtGvfJEyh77wz0sNvkOorX01FlpY4Izug5VNHDXo47HuzTRdoJm4vjUYJy
	 SPxRF2WinXZYkTc7Pz55eWcvVGXgFYaa0KZhaFu8Pp9U/3JbWOHUkHPboMPBXD7Olz
	 HZDn4LT+fTP/A==
From: Bjorn Andersson <andersson@kernel.org>
Date: Sat, 25 May 2024 11:03:58 -0700
Subject: [PATCH 05/10] dt-bindings: usb: qcom,dwc3: Add SC8180X compatibles
MIME-Version: 1.0
Message-Id: <20240525-sc8180x-usb-mp-v1-5-60a904392438@quicinc.com>
References: <20240525-sc8180x-usb-mp-v1-0-60a904392438@quicinc.com>
In-Reply-To: <20240525-sc8180x-usb-mp-v1-0-60a904392438@quicinc.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Wesley Cheng <quic_wcheng@quicinc.com>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-clk@vger.kernel.org, linux-usb@vger.kernel.org, 
 Bjorn Andersson <quic_bjorande@quicinc.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=2247;
 i=quic_bjorande@quicinc.com; h=from:subject:message-id;
 bh=N4n+wQsIpQ6gV1gQhqd7keI6q9G66m1V/hA0aZNldN4=;
 b=owEBgwJ8/ZANAwAIAQsfOT8Nma3FAcsmYgBmUigM0Lq5y7erhHEHacXi1mEF7ZbJBeQz26gx4
 CwbduSiKCCJAkkEAAEIADMWIQQF3gPMXzXqTwlm1SULHzk/DZmtxQUCZlIoDBUcYW5kZXJzc29u
 QGtlcm5lbC5vcmcACgkQCx85Pw2ZrcUWTA//a4rL49W/cpkzoUoUaeirBQ2GbiNyJ7aGIMdO84d
 f7BRqJxfxocyw60D8AUMmj3lzbwm33XLivP8TNJ1DDXrJO7YNOAZZxq2kcP2+r7bD4qhOmwkxVi
 4xCs+nUGCH8uUVlUe65chk188BcFU4nIaHcSAEA88XiE9wWChY935FvvJIcbG09OnZs1wYRMAI0
 XrGXD8XzMFyPYWO7GSw5id9sAbohwsDIgYkdc8gt105q7JCUTHKlz650/09apLuL3x6DT6Qkutn
 iIWw8GFxWF8HwxoUQYrOhr4F5whjy0DkA2siuU+5AhH54m2gNa52C2VRYaetjOGHZpe87EcMHPN
 0SycDQgG6X9tk9QTjWqLH3sFEx7BXYkyutwlXOjpTDiToO7SLabUQ101cX9fYC+HLi8IFH1EFw1
 Qwn4VWUr+2iHUyihMvs4YTRysnP0dYaNCOpP3JyB6+oqgo4nroc3vMCsQTsU/sW2I5EXOJTy0bk
 kiyXMVP/LmW+mxeZBeY1TyUrkZ0XbOnuW+Xw+4zB4QrZyJD570wdLeTMuX1Uv1kU3h1HPjAIvRl
 HX/Y2HnnLvIUBtubM9Fyn5Q5u+hZoVfC7an4r4esXr39gk9GR70fl443CP3dLL9PWwt0ok450w3
 pAo2FzC9k+/UuQtR6kWRwa+RZ+JKYNzH1k8X3zErrLcE=
X-Developer-Key: i=quic_bjorande@quicinc.com; a=openpgp;
 fpr=05DE03CC5F35EA4F0966D5250B1F393F0D99ADC5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240525_105916_521001_F60ED83E 
X-CRM114-Status: UNSURE (   7.33  )
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

From: Bjorn Andersson <quic_bjorande@quicinc.com>

The SC8180X platform has two single port DWC3 instances and a two-port
DWC3 instance. Add compatibles for these to the binding.

Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
---
 .../devicetree/bindings/usb/qcom,dwc3.yaml         | 29 ++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
index cf633d488c3f..efde47a5b145 100644
--- a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
@@ -30,6 +30,8 @@ properties:
           - qcom,sa8775p-dwc3
           - qcom,sc7180-dwc3
           - qcom,sc7280-dwc3
+          - qcom,sc8180x-dwc3
+          - qcom,sc8180x-dwc3-mp
           - qcom,sc8280xp-dwc3
           - qcom,sc8280xp-dwc3-mp
           - qcom,sdm660-dwc3
@@ -334,6 +336,8 @@ allOf:
           contains:
             enum:
               - qcom,qcm2290-dwc3
+              - qcom,sc8180x-dwc3
+              - qcom,sc8180x-dwc3-mp
               - qcom,sm6115-dwc3
               - qcom,sm6125-dwc3
               - qcom,sm8150-dwc3
@@ -448,6 +452,7 @@ allOf:
               - qcom,sa8775p-dwc3
               - qcom,sc7180-dwc3
               - qcom,sc7280-dwc3
+              - qcom,sc8180x-dwc3
               - qcom,sc8280xp-dwc3
               - qcom,sdm670-dwc3
               - qcom,sdm845-dwc3
@@ -475,6 +480,30 @@ allOf:
             - const: dm_hs_phy_irq
             - const: ss_phy_irq
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sc8180x-dwc3-mp
+    then:
+      properties:
+        interrupts:
+          minItems: 10
+          maxItems: 10
+        interrupt-names:
+          items:
+            - const: pwr_event_1
+            - const: pwr_event_2
+            - const: hs_phy_1
+            - const: hs_phy_2
+            - const: dp_hs_phy_1
+            - const: dm_hs_phy_1
+            - const: dp_hs_phy_2
+            - const: dm_hs_phy_2
+            - const: ss_phy_1
+            - const: ss_phy_2
+
   - if:
       properties:
         compatible:

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
