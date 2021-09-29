Return-Path: <SRS0=Qt1L=OT=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A0E3C4332F
	for <linux-phy@archiver.kernel.org>; Wed, 29 Sep 2021 03:43:14 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 28BBE6139D
	for <linux-phy@archiver.kernel.org>; Wed, 29 Sep 2021 03:43:14 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 28BBE6139D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q44nZx4PzyH0ICSE5r4Y4gLx3Ovp9eOzozfSSgrk1WY=; b=ddQ9uoIYZuQwN3
	0F7DwWod0u3ooYAOXKjMTEivxzLmcUKAM9J7u+hvi17MY8Yp4aG5kqrOustaEvGjKNC36WubVGE7H
	o2US2g7K7VytdNSAlvzoTH/OKoShlcf5iUUpa1CB/4/J3eujusCSpRAizN7kGV4/cpX7DGYnrQUdB
	FRA21PY0o2KAMa6G5n9Aj5fYkEjX0E8r5DkopijoJ/VZVtYsm4Bcykj8krVjn3FkAUOal5Szbhl1A
	8TZdKYIxPDbtmn3HGzq8xbzncBBMwnCwGjmrexq7acnfJc2U1zxcGWi1TQbB38jQgQuF5XdKWsOD8
	DFTLxYI9ZlsyDxEyo1Sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mVQUz-009pzn-Od; Wed, 29 Sep 2021 03:43:13 +0000
Received: from mail-pl1-x631.google.com ([2607:f8b0:4864:20::631])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mVQUw-009pyT-K0
 for linux-phy@lists.infradead.org; Wed, 29 Sep 2021 03:43:12 +0000
Received: by mail-pl1-x631.google.com with SMTP id c4so580135pls.6
 for <linux-phy@lists.infradead.org>; Tue, 28 Sep 2021 20:43:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=abFTFmuowhNWr1sh/rZmGCZE7/q4bRx8HdmPJpdl9es=;
 b=tJvxk1DqNMcFK2RE/5ScJjAzsZvbhqkii1vOHmPUesraorVNGMf0TXD+QphpZCaiot
 +myZ8gCorzzu7r0elg42e5Zg27/7o7pjsE6OXtWVgupuJKClsGIqZfNueM6XQ9R1mCSM
 lgjy9BBFYww9zS+VPrB6SJC7DRkmMIEkwTu+Ra8OqNdykupByZG796qkdIP67AhqPTGI
 QEUJypHgGEvjWm0PIOBxlgAfyf/nt+ZU2sQPoW38+qtB6olJGcmaAEP1TqtM8EMUNBwR
 /EmFVFznqQ/F2FpjX6PYSaSx5N6a2iQS/QS0FQLdFWmtrLWU6oSQarESViCi8adLOMCH
 UMRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=abFTFmuowhNWr1sh/rZmGCZE7/q4bRx8HdmPJpdl9es=;
 b=XkSIOt5Fc/v/eDMon5TvFqNmVoDt7xUPkrZfxSk04q7b+tLu7tM2GfaF8wZN3YBA0+
 O04zQQMJbIJvQOhCM0G3WebDCD4Xpny5iMuJIVac9hwbgT40o940544lj+osvWGJ6zQ5
 qrmkmvifABIIo+E+fOlNBGIhl5nxql3149/IZ3vja2FvwCWXy+302xa3fZnLcecfAFYu
 EF+3ZvSQGqa4Sz5Ozw13IjxPvIx4imvx5SjELdWFPm3ddDxhf9spRtNUv73U4t+hf6Ok
 aBIr+6llznCzM0fnNBmjH1GD/SoMdpcl61HmTHGFmX+KnOgqo4naI+iC0PWfKkjxjZk0
 ndKw==
X-Gm-Message-State: AOAM5326rwDoUq32kSTKrroAihJhSjVdEZpjyqvGZdxD0I1cHEPuvHen
 4lSwAk3FMdKgEs1YnYpL/4/tTA==
X-Google-Smtp-Source: ABdhPJxX75SOgD5icVOwlMHV7sXoBhHdx5l7DdpEIlt6uxE8a0diYRPF7VpKCrCFYaETOCKfkMXWzQ==
X-Received: by 2002:a17:902:8c98:b0:13e:51d1:6fbd with SMTP id
 t24-20020a1709028c9800b0013e51d16fbdmr4595687plo.45.1632886989518; 
 Tue, 28 Sep 2021 20:43:09 -0700 (PDT)
Received: from localhost.localdomain (80.251.214.228.16clouds.com.
 [80.251.214.228])
 by smtp.gmail.com with ESMTPSA id b7sm533032pfb.20.2021.09.28.20.43.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Sep 2021 20:43:09 -0700 (PDT)
From: Shawn Guo <shawn.guo@linaro.org>
To: Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Shawn Guo <shawn.guo@linaro.org>
Subject: [PATCH 02/10] dt-bindings: phy: qcom,
 qmp: IPQ6018 and IPQ8074 PCIe PHY require no supply
Date: Wed, 29 Sep 2021 11:42:45 +0800
Message-Id: <20210929034253.24570-3-shawn.guo@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210929034253.24570-1-shawn.guo@linaro.org>
References: <20210929034253.24570-1-shawn.guo@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210928_204310_690398_71BBC065 
X-CRM114-Status: UNSURE (   9.43  )
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
 .../devicetree/bindings/phy/qcom,qmp-phy.yaml | 52 ++++++++++---------
 1 file changed, 28 insertions(+), 24 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
index 604435e46623..ed62dde5f97d 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
@@ -112,8 +112,6 @@ required:
   - clock-names
   - resets
   - reset-names
-  - vdda-phy-supply
-  - vdda-pll-supply
 
 additionalProperties: false
 
@@ -146,6 +144,9 @@ allOf:
           items:
             - const: phy
             - const: common
+      required:
+        - vdda-phy-supply
+        - vdda-pll-supply
   - if:
       properties:
         compatible:
@@ -172,6 +173,9 @@ allOf:
           items:
             - const: phy
             - const: common
+      required:
+        - vdda-phy-supply
+        - vdda-pll-supply
   - if:
       properties:
         compatible:
@@ -200,6 +204,9 @@ allOf:
             - const: phy
             - const: common
             - const: cfg
+      required:
+        - vdda-phy-supply
+        - vdda-pll-supply
   - if:
       properties:
         compatible:
@@ -229,6 +236,9 @@ allOf:
           items:
             - const: phy
             - const: common
+      required:
+        - vdda-phy-supply
+        - vdda-pll-supply
   - if:
       properties:
         compatible:
@@ -249,6 +259,9 @@ allOf:
         reset-names:
           items:
             - const: ufsphy
+      required:
+        - vdda-phy-supply
+        - vdda-pll-supply
   - if:
       properties:
         compatible:
@@ -274,34 +287,16 @@ allOf:
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
@@ -352,6 +347,9 @@ allOf:
         reset-names:
           items:
             - const: phy
+      required:
+        - vdda-phy-supply
+        - vdda-pll-supply
   - if:
       properties:
         compatible:
@@ -383,6 +381,9 @@ allOf:
           items:
             - const: phy
             - const: common
+      required:
+        - vdda-phy-supply
+        - vdda-pll-supply
   - if:
       properties:
         compatible:
@@ -410,6 +411,9 @@ allOf:
           items:
             - const: phy
             - const: common
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
