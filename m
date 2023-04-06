Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB482C77B74
	for <linux-phy@archiver.kernel.org>; Thu,  6 Apr 2023 19:47:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Py/rzTgw0mz5fjkAWDIzWQ1kAlu1/g/h2TuBrEYgGU=; b=WyaxXKStxgrZci
	RPZ3EacsfVTCDM2LJr28vSU8osXRS+vHkFk7XC5DTZYsfHfGe9EDarqRggYlNTFYIoQL5qjXgMUkG
	QpBGBQbj0yvbcKjkjLvexCVbWe4tqxbsAcnkDto5B65yAhCBZ8CNhqoGANpctsk5EH/bqy8og4tkW
	xLgp9j7g25SI/OHIjbJHXMRuX+DmN1Wu49bwhaY5F++DCe4m7vBMJHf41t3P5qnQFzJtZJPAVKkXx
	3JF/vvNidPaHCkRL5yIOAXjsfjtgQ1Cjo0dmNGt/EJ69QZ0WNyirUqat0tt/sPZpXW3lHjFgp9gmA
	rPiJeTHCPIPUhjBACMeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pkVZp-008QkA-1w;
	Thu, 06 Apr 2023 19:47:21 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pkVZm-008Qha-00
	for linux-phy@lists.infradead.org;
	Thu, 06 Apr 2023 19:47:19 +0000
Received: by mail-wr1-x432.google.com with SMTP id v1so40612969wrv.1
        for <linux-phy@lists.infradead.org>; Thu, 06 Apr 2023 12:47:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112; t=1680810436;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f5sfPGzO1STsPzlQrWslwAin54ULr2+T5tjHgZP/ZV4=;
        b=B1Uvu4kNEzTZzr8QGACBcWsbST+cABawIcqZ8MAHy54OGWGLeRj39VR24chDaT53+n
         7CYyaYyxx1PkNXSHFx7HA1rBERqsiZ8cb0zrTOoPXaW0pX6+rMWx+U3AzRQri9otK2ws
         JAJqi1zRRmOn3upvufbPBGf/I9w17o7BxOC7Xe/JRqMcfAfiF60jNh25+UQ3kZD89qzy
         A42Zz4Ktyrj8m9/h66fZJOsmdAUs0p+K6ID/F/iDVT7A9P9UmhO1IEUHZUVi7hPNmanN
         2LwqQRL8qm22+1ypHLZaJ8SXfaWOt8yjjUGdI9vDZ7oc+kJheBXwBwQb6tCsEJUb9+Ba
         WOWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680810436;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=f5sfPGzO1STsPzlQrWslwAin54ULr2+T5tjHgZP/ZV4=;
        b=gqFF/l6qvm6KNb+BLJCJ1Uv3CXE5LCkvXFpk3ddFcmtUNTMoWgZtjWd9C2NsIpa4yH
         VQFo/Xf4KibxVJzKpdZ8FeNIySY9hptAS2DwfdVsYZXARr51Nsy/V1h7PuFQvSltqK/E
         5MjMTp0tmMafkvOVKHRjGnE5C6NrO59GQZEfUGRliCLnPC/kNrF9p6t2e5I2TIpBQhIP
         2WoXaNsrAiQxRXiqfCP0qs28zPDE7g8LHagRZREBWlBYZSM2o0dk0Xzl6mihkIro/5lA
         Q4tfHqUK+v4DPPrrZLIzec9+7QKNl8luXTueItMJ+nwRjG0AdTso3sxwxhkdeGWAtXMk
         MYcw==
X-Gm-Message-State: AAQBX9eYsLYnsorM91/7yfXsmpV5ArY9P4uBQCo6a11HKn+FS6FZxv2a
	t2JQHg+0sACis0VZm3fNPODXHQ==
X-Google-Smtp-Source: AKy350a7PMoisImA1feIeh8bMsC902JwVI3F6n4X2Vs+gqUuOBsqMi7TxwU2WibveU+6QsFju8IgWw==
X-Received: by 2002:a05:6000:118c:b0:2e2:730a:c7de with SMTP id g12-20020a056000118c00b002e2730ac7demr7846317wrx.24.1680810435705;
        Thu, 06 Apr 2023 12:47:15 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:4793:cb9a:340b:2f72])
        by smtp.gmail.com with ESMTPSA id k15-20020a056000004f00b002c71dd1109fsm2593323wrx.47.2023.04.06.12.47.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Apr 2023 12:47:15 -0700 (PDT)
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
Subject: [PATCH v2 2/5] dt-bindings: phy: qmp-ufs: describe the UFS PHY for sa8775p
Date: Thu,  6 Apr 2023 21:47:00 +0200
Message-Id: <20230406194703.495836-3-brgl@bgdev.pl>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230406194703.495836-1-brgl@bgdev.pl>
References: <20230406194703.495836-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230406_124718_039337_CD633732 
X-CRM114-Status: UNSURE (   9.48  )
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
 .../phy/qcom,sc8280xp-qmp-ufs-phy.yaml        | 26 ++++++++++++++++++-
 1 file changed, 25 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
index cd0fbbd3593d..5bc93acccbad 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
@@ -16,6 +16,7 @@ description:
 properties:
   compatible:
     enum:
+      - qcom,sa8775p-qmp-ufs-phy
       - qcom,sc8280xp-qmp-ufs-phy
       - qcom,sm6125-qmp-ufs-phy
       - qcom,sm7150-qmp-ufs-phy
@@ -25,12 +26,15 @@ properties:
     maxItems: 1
 
   clocks:
-    maxItems: 2
+    minItems: 2
+    maxItems: 3
 
   clock-names:
+    minItems: 2
     items:
       - const: ref
       - const: ref_aux
+      - const: qref
 
   power-domains:
     maxItems: 1
@@ -52,6 +56,26 @@ properties:
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
+          maxItems: 3
+    else:
+      properties:
+        clocks:
+          maxItems: 2
+        clock-names:
+          maxItems: 2
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
