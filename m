Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4033CD1292
	for <linux-phy@archiver.kernel.org>; Thu,  4 Apr 2024 12:26:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R/wG6Hxu4cTkTMUGmHn32cyeH6xKavG7j3o4IZP6tGI=; b=DHSiWdYGI64Gm/
	HGZ3EBYl/OiXkREt0g71PXkOJMaqLfPEWXVn3fzNCoy6f4khClnXnYX8wOtzc3QKNqKDuAitxyL99
	mbX8h3cD8nyz7zTisUNba3q70n0g4hy5qgNL3ac6OjcLmE/OzABnpCeplLkfglYNisuE3x2pP45cZ
	2ENFxHajBHdV6ukvHs6Y7B2T+oVLnbupFKPP/y466KczrG9qZRyhhQq5EvRt4Kxe4tWvJ8RUKGCQs
	6sD38Jdv85hs3V5XGgmIJCRfFl1dUPiZ88QTFcfJvRfKad1/AiqtZnVSHQF+fYavwYMCG2ldVYILN
	5oD8XaIr84GL7VtPE8zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsMAx-00000002alW-1jD7;
	Thu, 04 Apr 2024 12:26:39 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsMAq-00000002ahH-20yF
	for linux-phy@lists.infradead.org;
	Thu, 04 Apr 2024 12:26:36 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-41551500a7eso7206575e9.2
        for <linux-phy@lists.infradead.org>; Thu, 04 Apr 2024 05:26:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712233591; x=1712838391; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rpr5fIy7/+AgecNd2HAhXB49zsFIL2WrvHb8ogKvFrI=;
        b=n/BJOBmrBMgsaN0kdvizEoNEcgNzczZIWdVzEMBp/hMxKcvgL5h3E4ILzeOJgWy2ZJ
         s3v4Cz4S4nWtEXDnVlRvxpMTaa+rgkRxw6S/8XKloXM/B+f+y/PibHMfFSgnHA+Y9wN4
         mIHf6EGiW+TKlnbxw7MCQeJ3vW1StTvOm8PAhD8lbxtCLXKIaAk9WfNi9RBUMSamevT6
         fQ9gLZuU4pyB9TBVUlz9tEQSSb1oGzydZKPe/puGdm0PaCrAp+FJVHr8hQ2zBKkeys30
         kTMDj7ujjg8cNInsbE1DWBQJNr/ZQePuIYOBZxWh/fjg/9a/OTNmNcmWEq2J0C0dNPcJ
         FBcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712233591; x=1712838391;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rpr5fIy7/+AgecNd2HAhXB49zsFIL2WrvHb8ogKvFrI=;
        b=BjoqC8R1io/hcoUNqV8B3IQlBaoDOC9KxXW68sOIdlsqwSn30Ad4T7K5Xyz1XtyM0/
         +WrHgsB8X25l5QtdIp5BZXAvNra8he1m/JOyGncVszTDCSrYA7W+JUldL5YTf6WZUZAD
         qfNrUafxXizQ3hWsmZWt+yaOy3CNY62jYw2MN7Ojv6X1DionSx2xWIgMBd9uYGUuR5ZD
         cQf2EIMS9ZmqoVoyFskM3VK4p55pvXDMwSlOtNiCNTPRVuGeqJ0AlIlnvu0AlvokjANi
         6Uo0QTTx6eWmpgr9cuva58G6fvLRzxFVR54Kl05YvQ0qBdx+c1/SOkZ//8S1YhHGPZhC
         9uyQ==
X-Forwarded-Encrypted: i=1; AJvYcCVqC6DxFKiV/xH8c9aBlnBz2HjkifuqcFF+ECVL2EHv63ueqSSrMqk/9W7j97+muHVA3bDIja/AasUgndCUv/4u7JWUkUgV35Dfcl0mTQ==
X-Gm-Message-State: AOJu0YxQT5bhHFes/tkqxXB5UpK8oeUJ6WOdYVF8McpLVTQirG/29KDX
	LzesuFdeIz6o8//m7cGUkhPOSRToC6OfFgtwgNbCSsFBvRkbsDGERt8FBDn77iI=
X-Google-Smtp-Source: AGHT+IFOW2d5Hgxn6C1COoMc+9kLYdSgseWR2Irqv7clovzwdGD/0iiv1jH47LxU9xQ839LZEWufjg==
X-Received: by 2002:a05:600c:358b:b0:414:8a28:6c82 with SMTP id p11-20020a05600c358b00b004148a286c82mr1880403wmq.2.1712233590958;
        Thu, 04 Apr 2024 05:26:30 -0700 (PDT)
Received: from gpeter-l.roam.corp.google.com ([148.252.128.204])
        by smtp.gmail.com with ESMTPSA id bu14-20020a056000078e00b003434b41c83fsm12106303wrb.81.2024.04.04.05.26.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Apr 2024 05:26:30 -0700 (PDT)
From: Peter Griffin <peter.griffin@linaro.org>
To: mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	vkoul@kernel.org,
	kishon@kernel.org,
	alim.akhtar@samsung.com,
	avri.altman@wdc.com,
	bvanassche@acm.org,
	s.nawrocki@samsung.com,
	cw00.choi@samsung.com,
	jejb@linux.ibm.com,
	martin.petersen@oracle.com,
	chanho61.park@samsung.com,
	ebiggers@kernel.org
Cc: linux-scsi@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	tudor.ambarus@linaro.org,
	andre.draszik@linaro.org,
	saravanak@google.com,
	willmcvicker@google.com,
	Peter Griffin <peter.griffin@linaro.org>
Subject: [PATCH 03/17] dt-bindings: ufs: exynos-ufs: Add gs101 compatible
Date: Thu,  4 Apr 2024 13:25:45 +0100
Message-ID: <20240404122559.898930-4-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.44.0.478.gd926399ef9-goog
In-Reply-To: <20240404122559.898930-1-peter.griffin@linaro.org>
References: <20240404122559.898930-1-peter.griffin@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240404_052632_684928_FCD0FDB8 
X-CRM114-Status: UNSURE (   7.94  )
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

Add dedicated google,gs101-ufs compatible for Google Tensor gs101
SoC.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 .../bindings/ufs/samsung,exynos-ufs.yaml      | 51 +++++++++++++++----
 1 file changed, 42 insertions(+), 9 deletions(-)

diff --git a/Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml b/Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml
index b2b509b3944d..898da6c0e94f 100644
--- a/Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml
+++ b/Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml
@@ -12,12 +12,10 @@ maintainers:
 description: |
   Each Samsung UFS host controller instance should have its own node.
 
-allOf:
-  - $ref: ufs-common.yaml
-
 properties:
   compatible:
     enum:
+      - google,gs101-ufs
       - samsung,exynos7-ufs
       - samsung,exynosautov9-ufs
       - samsung,exynosautov9-ufs-vh
@@ -38,14 +36,12 @@ properties:
       - const: ufsp
 
   clocks:
-    items:
-      - description: ufs link core clock
-      - description: unipro main clock
+    minItems: 2
+    maxItems: 5
 
   clock-names:
-    items:
-      - const: core_clk
-      - const: sclk_unipro_main
+    minItems: 2
+    maxItems: 5
 
   phys:
     maxItems: 1
@@ -72,6 +68,43 @@ required:
   - clocks
   - clock-names
 
+allOf:
+  - $ref: ufs-common.yaml
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: google,gs101-ufs
+
+    then:
+      properties:
+        clocks:
+          items:
+            - description: ufs link core clock
+            - description: unipro main clock
+            - description: fmp clock
+            - description: ufs aclk clock
+            - description: ufs pclk clock
+
+        clock-names:
+          items:
+            - const: core_clk
+            - const: sclk_unipro_main
+            - const: fmp
+            - const: ufs_aclk
+            - const: ufs_pclk
+    else:
+      properties:
+        clocks:
+          items:
+            - description: ufs link core clock
+            - description: unipro main clock
+
+        clock-names:
+          items:
+            - const: core_clk
+            - const: sclk_unipro_main
+
 unevaluatedProperties: false
 
 examples:
-- 
2.44.0.478.gd926399ef9-goog


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
