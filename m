Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82790CD128A
	for <linux-phy@archiver.kernel.org>; Tue,  9 Apr 2024 19:08:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ySbQ1eTH9GWfVTYs1nVms+RH8mmI7PfEKoYk4zEc69g=; b=DVuRdtyrY1exLb
	r6O7k+Wm6JavGrLpQfwcV7lG+w1QdDsDoSyPnEe9Y1nj7RfsnL7FE6/FV67biq5R6GHNJGNk2PmC+
	W6oiscwd8KtBcPgj4Z0CAtuM4V7oVXKEGqXKkAEWlfGaXEExHNWihVHgzgfd6qja0iEI6V28tZfcx
	2EZbiPgWmqjbPN23EiwPxM1Ig930tBM6T1EaBkvJCXSIjU85/zHsRahwHidSRCIBNZjI8eBeWKU0u
	GygIQQXFp1xhJ6K5SQINmEYJS8BQqrtD7ftCQ2KhYLAGJgB2sM9+cyRCnpyxEqs6pUKJAaRIfbKx7
	/Ra0SuTVZMra0cUywedA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruGpu-00000003SDB-3eJB;
	Tue, 09 Apr 2024 19:08:50 +0000
Received: from mail-oo1-xc2b.google.com ([2607:f8b0:4864:20::c2b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruGpr-00000003SC8-3eDr
	for linux-phy@lists.infradead.org;
	Tue, 09 Apr 2024 19:08:49 +0000
Received: by mail-oo1-xc2b.google.com with SMTP id 006d021491bc7-5aa27dba8a1so1792161eaf.0
        for <linux-phy@lists.infradead.org>; Tue, 09 Apr 2024 12:08:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1712689726; x=1713294526; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KZgmkaydqDgMItdlvtLLtr4XRisZHdvGf+UHvwLYIo0=;
        b=TAee/j+oezhXs4p5C8Q4WP2WGLY6nlOd+v2+8tNfkIPJp6U6niLx9oswtL9iUZbzr6
         dR5j++ZJkl6xgQb1eK320HCrhLjgfDJOjhDDWg1AR/rIC+4vQlmyzkM759d1eClte5RV
         H5H8jrL8ydGZhqiIAUBQ0c3mMln10KFlA5AWXBk3sFYRNeCMc8gEXZQZ+9xqD9X5FtKI
         dtKKX1XR5Oi7MZDUN1o3igHVhPYTSxqYD+HV4Ozqx3Bt9r/s+z4oCoDmhnBU+Sfu6gZn
         W4j3wGIp/oZdsh1Q4NFllr9F8lAPNlgShmy9QLAyj6IzbIbnhB9/LouxJeyRkYY4PNOQ
         SvBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712689726; x=1713294526;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KZgmkaydqDgMItdlvtLLtr4XRisZHdvGf+UHvwLYIo0=;
        b=UiJSz+LTgdtbpyHpmFei7MeRQ0LA7F5IBX/XpTspLd5IcuqgzTB6Zt1M4cvQJq6ZVa
         F8Cf2YUcWVY7p6oa3epvzIlBvmFfiLcpMvapJ0wLi5Nb2Kp+LJtXlJYTIvoesVqab+9v
         LU+OW3fUtt+DKJ/Cp2uP0/QRoHf8vYzM2aVpGE/2dSt4qGgZOQq8uIC6E15V1WSGGqF2
         UunxaRj4olCaCe0/HqpxFlydNv5QQe/f9reDGiBlNIOYOppUU1IXwkiEll6igI1K0IKi
         EnaZQaf/OJhq2/e5fGrIQIITkCEMCpajzBjMKMc7UMFeol1YK900J6UTQb+Onwhno82T
         l/vA==
X-Forwarded-Encrypted: i=1; AJvYcCU/hhcbaIaW2WB0SwqqN1CYRJjMCRHIgZpVmuVoYpTv3OpaU3mburNMvg9CicGk31IQKrcYtT8GzT2BzJkFRHkriNCpkZd6vXv3ZvaZ9g==
X-Gm-Message-State: AOJu0Yxug9aT3bM7asachifyrR3dah8MAYDM4CIAdqAE4lDQnn3FQSd/
	cyTgZffN9N1QCi13Tk5Cu8hNku8jQuBk3AbqYj0q1MIXszfnKRTrpCutIDJaUOmQgg==
X-Google-Smtp-Source: AGHT+IGiME8d4pJkFeFHGfQFDyNAq9/Vl7xfXdxtFnHfzc4Tw8Y6pdQ+xVXSrnZR01C24EMRzlNnog==
X-Received: by 2002:a05:6820:1e02:b0:5a5:21df:7eef with SMTP id dh2-20020a0568201e0200b005a521df7eefmr877211oob.2.1712689726402;
        Tue, 09 Apr 2024 12:08:46 -0700 (PDT)
Received: from nukework.lan (c-98-197-58-203.hsd1.tx.comcast.net. [98.197.58.203])
        by smtp.gmail.com with ESMTPSA id f11-20020a9d7b4b000000b006ea1cf91a8dsm674920oto.40.2024.04.09.12.08.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Apr 2024 12:08:45 -0700 (PDT)
From: Alexandru Gagniuc <mr.nuke.me@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Alexandru Gagniuc <mr.nuke.me@gmail.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 5/7] dt-bindings: phy: qcom,ipq8074-qmp-pcie: add ipq9574 gen3x2 PHY
Date: Tue,  9 Apr 2024 14:08:31 -0500
Message-Id: <20240409190833.3485824-6-mr.nuke.me@gmail.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240409190833.3485824-1-mr.nuke.me@gmail.com>
References: <20240409190833.3485824-1-mr.nuke.me@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240409_120848_012416_90A1E471 
X-CRM114-Status: UNSURE (   8.59  )
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

The IPQ9574 gen3x2 PHY is very similar to IPQ6018. It requires two
extra clocks named "anoc" and "snoc". Document this, and add a
new compatible string for this PHY.

Signed-off-by: Alexandru Gagniuc <mr.nuke.me@gmail.com>
---
 .../phy/qcom,ipq8074-qmp-pcie-phy.yaml        | 31 ++++++++++++++++++-
 1 file changed, 30 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml
index 634cec5d57ea..017ad65a9a3c 100644
--- a/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml
@@ -19,19 +19,22 @@ properties:
       - qcom,ipq6018-qmp-pcie-phy
       - qcom,ipq8074-qmp-gen3-pcie-phy
       - qcom,ipq8074-qmp-pcie-phy
+      - qcom,ipq9574-qmp-gen3x2-pcie-phy
 
   reg:
     items:
       - description: serdes
 
   clocks:
-    maxItems: 3
+    minItems: 3
 
   clock-names:
     items:
       - const: aux
       - const: cfg_ahb
       - const: pipe
+      - const: anoc
+      - const: snoc
 
   resets:
     maxItems: 2
@@ -61,6 +64,32 @@ required:
   - clock-output-names
   - "#phy-cells"
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,ipq6018-qmp-pcie-phy
+              - qcom,ipq8074-qmp-gen3-pcie-phy
+              - qcom,ipq8074-qmp-pcie-phy
+    then:
+      properties:
+        clocks:
+          maxItems: 3
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,ipq9574-qmp-gen3x2-pcie-phy
+    then:
+      properties:
+        clocks:
+          minItems: 5
+          maxItems: 5
+
 additionalProperties: false
 
 examples:
-- 
2.40.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
