Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52A3DC77B6C
	for <linux-phy@archiver.kernel.org>; Fri, 31 Mar 2023 19:59:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1vgyyhOcRjeJGUkenRya04v7EPKwB7rGb6RuRrVwtQk=; b=r+0tkMZCWYzs89
	lccuVsYMT95Af+ezoaoqVHv1ABc6rbEQM/UtjGVMrYEP52jxKvi1yr0oQCV7ei8fp1xEv/tqiS6SW
	w2SYvt65kQ8VRHYiM2T5If5mdQTLws+qrF3VzVFepcHk26M2JRRfi/s09wmOBeCDsgxesKOwVYv6d
	ygyzuPAS/evu+y+PTgRY8bgYioDh9Ub1zXjfZelK3xgnwR7+JO9/H9PqsqDp9+D6Dbu3VOxCGkF/M
	fNFeVrGexi19lKxXbVeq1Va9+phi9jX+Lzxy/U2a0avoicDFFEwqBPgxUSWHjyllXTS8AZCFXziHN
	YLIP6bp7NlEI1wipQtSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1piKuR-008h72-2x;
	Fri, 31 Mar 2023 19:59:39 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1piKuN-008h31-0Y
	for linux-phy@lists.infradead.org;
	Fri, 31 Mar 2023 19:59:36 +0000
Received: by mail-wr1-x429.google.com with SMTP id l27so23587194wrb.2
        for <linux-phy@lists.infradead.org>; Fri, 31 Mar 2023 12:59:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112; t=1680292773;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=llCiBCLkZ3VwD0RdupEiXDCSemDbuwgN30QJGJfgAvk=;
        b=AfHuBDpHyPAv0Wy3bgsU4YhWoDX8Zu+eGv/I6Fcp1ntbuuU6LHIcH1Q3CfUg3QbEYi
         o4+0BOp9nZjApWH3SDeKmpfyloF19qwgCTU7wujO/1899fH3wI5vF5n5KsSiaMZqbEh8
         wlTYyX/cpu7wUy9tWcn6lYBInPsK7r+3LUspILEljf2ULmfRk9zUmxXqCyXmSGgM5vab
         ZVXwjEXMb7C6YJt39sDj0R5GDAHz+ven7V26NnHiZ5V9Gay6H+6x9wgw6eo6Se6bmNBr
         OhS4zkrK35OH76td3Atl4WDcZib8U85t6oaYHJY7xURVCxof1ZKZZVmm0zokcC+gxCIm
         EtRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680292773;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=llCiBCLkZ3VwD0RdupEiXDCSemDbuwgN30QJGJfgAvk=;
        b=1CAuOKb/BIkVIEjyZCaIFR1cRSsxrKC8Ufpx1GTnFjaWiBLiPPQZvo7zX3iS4f+run
         iHVMhZhgJ0pwc/jjtSYu3F5BJu1oTHcP7dICTMf9n+KR9/ego++EHZYzkv9/wZJsQxI8
         Wpbr6aDn0BtLwTripTMAy99fQmI5o8OckE54i/PDhaAFwEj8joqq/MF51QW27P3JblaI
         ayyIdPcKwHGHu/8e/ojrRigtP2ZOwrvw/8NcC8a1FEiPiUECI+fH7Dn/C/BuuhDWz3Oa
         gHqQTOSqwzBbHeL1FMZ9y3riYcmvTBJCvEIlfEXpKm1PaPefebFQVAyIfnGRnbpkJOjB
         12jw==
X-Gm-Message-State: AAQBX9dPmw2DCoP4sHaNyv3WKmIIQQ0EjWh4k/esM5zddM/2MgoE6Fkp
	bpWXvA6d6vsD/6a9TZoFpyuNoA==
X-Google-Smtp-Source: AKy350Z43aVx6tVoB3aq8wwPWgiTRQKjqg/qlDEz/CWtiCxXW8luW2LS9OgXhLxuZRTlAJhcWZrp2Q==
X-Received: by 2002:adf:e68d:0:b0:2c7:d575:e8a4 with SMTP id r13-20020adfe68d000000b002c7d575e8a4mr21366630wrm.65.1680292773088;
        Fri, 31 Mar 2023 12:59:33 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:1dc:d1f:e44f:2a1d])
        by smtp.gmail.com with ESMTPSA id c13-20020a5d4ccd000000b002cff0e213ddsm2990286wrt.14.2023.03.31.12.59.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Mar 2023 12:59:32 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-scsi@vger.kernel.org,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH 2/5] dt-bindings: phy: qmp-ufs: describe the UFS PHY for sa8775p
Date: Fri, 31 Mar 2023 21:59:17 +0200
Message-Id: <20230331195920.582620-3-brgl@bgdev.pl>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230331195920.582620-1-brgl@bgdev.pl>
References: <20230331195920.582620-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230331_125935_209157_82262F3F 
X-CRM114-Status: UNSURE (   9.10  )
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

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Add a new compatible for the QMP UFS PHY found on sa8775p platforms and
update the clocks property to accommodate three clocks.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 .../phy/qcom,sc8280xp-qmp-ufs-phy.yaml        | 34 ++++++++++++++++---
 1 file changed, 30 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
index 64ed331880f6..a414b2c2d9cc 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
@@ -16,6 +16,7 @@ description:
 properties:
   compatible:
     enum:
+      - qcom,sa8775p-qmp-ufs-phy
       - qcom,sc8280xp-qmp-ufs-phy
       - qcom,sm6125-qmp-ufs-phy
       - qcom,sm8550-qmp-ufs-phy
@@ -24,12 +25,12 @@ properties:
     maxItems: 1
 
   clocks:
-    maxItems: 2
+    minItems: 2
+    maxItems: 3
 
   clock-names:
-    items:
-      - const: ref
-      - const: ref_aux
+    minItems: 2
+    maxItems: 3
 
   power-domains:
     maxItems: 1
@@ -51,6 +52,31 @@ properties:
   "#phy-cells":
     const: 0
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sa8775p-qmp-ufs-phy
+    then:
+      properties:
+        clocks:
+          maxItems: 3
+        clock-names:
+          items:
+            - const: ref
+            - const: ref_aux
+            - const: qref
+    else:
+      properties:
+        clocks:
+          maxItems: 2
+        clock-names:
+          items:
+            - const: ref
+            - const: ref_aux
+
 required:
   - compatible
   - reg
-- 
2.37.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
