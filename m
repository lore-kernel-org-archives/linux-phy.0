Return-Path: <SRS0=T9my=PI=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1B777C433F5
	for <linux-phy@archiver.kernel.org>; Wed, 20 Oct 2021 13:07:09 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D51B16137C
	for <linux-phy@archiver.kernel.org>; Wed, 20 Oct 2021 13:07:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org D51B16137C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=7AhHbUn7871a7C7kB1MxZDw7hwysxEIhg6krcTfpxMY=; b=t3qP993t/PVjcO
	hRnFXdCBb+K64dUVKf2AB8RstnXHFTY7bmWkgAq0EqVsBA8ooY3LyGWogI6xDX0R9YMEoY4GtfNAr
	4UW1IKqRh5uHKcU8WSKQo46CNaWX6BfE6Siy4KhofSTTLp3lUtYcSHQFBT6cWVJyNWZK4Gqw/Iup8
	3nEA6is5aXfMMwQpFDaP5hauEcH/YVRgYAjkaTIzVtL4ltyLU/4MYFbBXtIRYJm2vYwrICwpM81Vs
	LdYl5S0xVWzPYIxG3DGaqSFTle8UJ4UyCwzsG1A0yCsst8CUOFtr1/+ehq3vaRth/3JhRbLZDIQeR
	0eFb4Wfv0YTF8y27DCdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mdBJE-004a4q-BS; Wed, 20 Oct 2021 13:07:08 +0000
Received: from mail-pg1-x52b.google.com ([2607:f8b0:4864:20::52b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mdBJC-004a48-AB
 for linux-phy@lists.infradead.org; Wed, 20 Oct 2021 13:07:07 +0000
Received: by mail-pg1-x52b.google.com with SMTP id j190so15727302pgd.0
 for <linux-phy@lists.infradead.org>; Wed, 20 Oct 2021 06:07:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to;
 bh=cLHt1Q5LZV5kZERGaF5WFeq4nFIY0B4p1p8uZPXEb/E=;
 b=NeB1wz48puGnb+MMS/pk7h498WOtKopBnXwpEPOZuXpqFjYRxlsZppuF3Q3FbCRC+D
 l70YhD/l5Ky35Zbkm1yzqOu6i+pC3Nbix/LZCCcHU/fOIiW+Sl+te+R4Gx/uYjd+EdDR
 gJ+2Oe3yiTbxID5iiB/dQOf0wbguBfuL5KL/iPD/rDjzEMQetFH/B7U6JRKpVBIw+Rb/
 MQ3MD1EB0/YcUCqZgvmGVrJnx+wE7di5wmI8dzSlU4JMSpnrX7CPnlYLpiVeDmLbu4yk
 h5kD5D+gJ11Z8PcoeDpxzdMi/Oe3othHCYVZa8yEfkrVT3CJcgHwzSOrwWqHB4i3zUe8
 DbRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to;
 bh=cLHt1Q5LZV5kZERGaF5WFeq4nFIY0B4p1p8uZPXEb/E=;
 b=DZY4JHnU8gabuPzkJw6rzkVigx0QuFwz5sckmdOiA6+kpOFbGB+YPQjQ77dIPqM58p
 rE5RBJKQ6FMxhlpN76U59v1wu3rM4A/eCNn6vUTRIZo6mQNHiLzUlxRnSbFUndk8O0rx
 3n4VD00bC1GXMeOyTFTsIAqiy6rP4DhhSVDn85ZDQcgdpv7CSx6gysCOqcu4e8J85HPM
 6LFZhO+tasXbWTLLl08GQUDWdcfJk4TD9gXBI5F44IqnvFxod3gobEGF8Z/OhN5lEj0H
 oY2smZREVrcnqlTYCIFtMxt2yX/t1weislFrUXtBbAVTvcyrHEtK6bUHxsdz0Mdd6cAG
 zSOQ==
X-Gm-Message-State: AOAM530BBXNtZgLDFspu+FMIdxq4bCO1HXKhPD+7q9c49ONGTEB2nfX0
 /kQKwZEiUOzlk/I6NpOqI+iscWsFizM=
X-Google-Smtp-Source: ABdhPJykFU+IX6bdVX4DIL0QI08lOvBOF+umL/jmYbqQ6yMOrhzIgmCJJ+HllyDZ4dvVqEx7ZJxmUA==
X-Received: by 2002:a62:1d14:0:b0:44d:3b0b:d027 with SMTP id
 d20-20020a621d14000000b0044d3b0bd027mr6278328pfd.60.1634735224249; 
 Wed, 20 Oct 2021 06:07:04 -0700 (PDT)
Received: from localhost.localdomain (80.251.214.228.16clouds.com.
 [80.251.214.228])
 by smtp.gmail.com with ESMTPSA id q73sm2765784pfc.179.2021.10.20.06.07.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Oct 2021 06:07:03 -0700 (PDT)
From: Shawn Guo <shawn.guo@linaro.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Shawn Guo <shawn.guo@linaro.org>
Subject: [PATCH RESEND 02/10] dt-bindings: phy: qcom,
 qmp: IPQ6018 and IPQ8074 PCIe PHY require no supply
Date: Wed, 20 Oct 2021 21:06:34 +0800
Message-Id: <20211020130634.26194-1-shawn.guo@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210929034253.24570-3-shawn.guo@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211020_060706_382371_50B0BAD1 
X-CRM114-Status: UNSURE (   7.53  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

The qmp-phy driver suggests that 'vdda-phy-supply' and 'vdda-pll-supply'
are not required for IPQ6018 and IPQ8074 QMP PCIe PHY.  Update the
bindings to reflect it.

While at it, also correct the clock properies for IPQ8074 QMP PCIe PHY.
And as the result, 'qcom,ipq8074-qmp-pcie-phy' and
'qcom,ipq6018-qmp-pcie-phy' share the same clock, reset and supply
bindings.

Signed-off-by: Shawn Guo <shawn.guo@linaro.org>
---
Rebase to resolve conflict during applying.

 .../devicetree/bindings/phy/qcom,qmp-phy.yaml | 55 +++++++++++--------
 1 file changed, 31 insertions(+), 24 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
index 99aa2d08dfcb..688a63ca1936 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
@@ -113,8 +113,6 @@ required:
   - clock-names
   - resets
   - reset-names
-  - vdda-phy-supply
-  - vdda-pll-supply
 
 additionalProperties: false
 
@@ -147,6 +145,9 @@ allOf:
           items:
             - const: phy
             - const: common
+      required:
+        - vdda-phy-supply
+        - vdda-pll-supply
   - if:
       properties:
         compatible:
@@ -173,6 +174,9 @@ allOf:
           items:
             - const: phy
             - const: common
+      required:
+        - vdda-phy-supply
+        - vdda-pll-supply
   - if:
       properties:
         compatible:
@@ -201,6 +205,9 @@ allOf:
             - const: phy
             - const: common
             - const: cfg
+      required:
+        - vdda-phy-supply
+        - vdda-pll-supply
   - if:
       properties:
         compatible:
@@ -230,6 +237,9 @@ allOf:
           items:
             - const: phy
             - const: common
+      required:
+        - vdda-phy-supply
+        - vdda-pll-supply
   - if:
       properties:
         compatible:
@@ -250,6 +260,9 @@ allOf:
         reset-names:
           items:
             - const: ufsphy
+      required:
+        - vdda-phy-supply
+        - vdda-pll-supply
   - if:
       properties:
         compatible:
@@ -275,34 +288,16 @@ allOf:
         reset-names:
           items:
             - const: ufsphy
-  - if:
-      properties:
-        compatible:
-          contains:
-            enum:
-              - qcom,ipq8074-qmp-pcie-phy
-    then:
-      properties:
-        clocks:
-          items:
-            - description: pipe clk.
-        clock-names:
-          items:
-            - const: pipe_clk
-        resets:
-          items:
-            - description: reset of phy block.
-            - description: phy common block reset.
-        reset-names:
-          items:
-            - const: phy
-            - const: common
+      required:
+        - vdda-phy-supply
+        - vdda-pll-supply
   - if:
       properties:
         compatible:
           contains:
             enum:
               - qcom,ipq6018-qmp-pcie-phy
+              - qcom,ipq8074-qmp-pcie-phy
     then:
       properties:
         clocks:
@@ -353,6 +348,9 @@ allOf:
         reset-names:
           items:
             - const: phy
+      required:
+        - vdda-phy-supply
+        - vdda-pll-supply
   - if:
       properties:
         compatible:
@@ -384,6 +382,9 @@ allOf:
           items:
             - const: phy
             - const: common
+      required:
+        - vdda-phy-supply
+        - vdda-pll-supply
   - if:
       properties:
         compatible:
@@ -411,6 +412,9 @@ allOf:
           items:
             - const: phy
             - const: common
+      required:
+        - vdda-phy-supply
+        - vdda-pll-supply
   - if:
       properties:
         compatible:
@@ -437,6 +441,9 @@ allOf:
           items:
             - const: phy_phy
             - const: phy
+      required:
+        - vdda-phy-supply
+        - vdda-pll-supply
 
 examples:
   - |
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
