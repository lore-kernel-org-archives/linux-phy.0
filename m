Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9685C4707C
	for <linux-phy@archiver.kernel.org>; Sat, 13 Jan 2024 05:42:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cfBOJb+TBsVJw2zt5Fs+Q6jZEdPLgzXSZc10GtltPNU=; b=ycoPSJu8BPt2Uz
	pyDjt0wD1eZzBN01uaxArQggAoj7ROcBjiL9HSqp2atEqHqgKW0mQvdq7d3LThsKeq3ihfHRmBhE2
	15O5T+E59+LCu6OpsposaXDvcgbweSkGaCWSR6iI1hGmhp+wLTckq36lC6sK+lLTPnpxGfIXHj3eK
	N9rA2dwlIc6M05XdbeEgQ3zKfwi+iz7NF8Gv+v5MctZiqpBa492r5jQm0Di5iNOBZ+TaV8UoF0OXD
	5IJnpBXz3ymIEv/2bik9otTpi7o+NtfQ51dvvB6talXDvIM4J0IFF35HxK0epnCNd9xVieMavmoxz
	mLm/0+AJRPctoGzwoWwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rOWnC-004ZeI-0z;
	Sat, 13 Jan 2024 05:42:50 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rOWn9-004Zct-2U
	for linux-phy@lists.infradead.org;
	Sat, 13 Jan 2024 05:42:49 +0000
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-2cd2f472665so76976441fa.2
        for <linux-phy@lists.infradead.org>; Fri, 12 Jan 2024 21:42:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705124564; x=1705729364; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DzrJM8QIfM/1QzKMEFRc6idiXrxZyO3gy6dlkw+D8i8=;
        b=gEsVJmRrUSMKFWtKZF0ocwvNOf7OhNitjjExJxVkftDeKHLb6ZIgA2o7Tz17fCIiep
         2STKrVTnbk9lmFj+XE1/sMjgOP8ubEAXwiRfqqzJCYcA0cRRyypKoB8TLNmusZ4btdS9
         Si0cyRGoAnAQ6SRUEboJVW1nosJ3djBRcu8OQj6AzCFSDgmrMs9HDDnCaumwo5LCyQLp
         lUtdFkIbR94V01RMqKE2Zy9pL420xcuv2SsL9mMxuHJ0Bgub50tmhUiN6a1zjhHgTK4v
         qmNeTHcEt25iJSGF+d+jfq2S2d/0c5b75HzYhauJykqa8WJhJtgcxOimSrcyR8u7qR8T
         mpPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705124564; x=1705729364;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DzrJM8QIfM/1QzKMEFRc6idiXrxZyO3gy6dlkw+D8i8=;
        b=VbcY4KPRgUNFSOoPO8UuGY8hDhLSCYmHriAMeebOP/wITmRQhLdgj5dbkFy21pP/Up
         8Q14S7xH9IosZihC6HZHsh7HjtBM2BDuOW6h3Ck4bsTuydqF+oARiLxDeTJS+VU+YyBy
         JsYM87eLwMuFRt/RROV+W83zplGl7qkxXSbTJquzXueJ4nqhHw3NOSfCH1dsIFbYwkXd
         AboijlEEEymHNiUA4J/7f7hiLEEd3ZbkwupbWZPqL5D0N2JMg4U17L9JBLilv4eoj4Bp
         OJLqAcrBVN8DQWxPFm8STuGJyuYhRDF9/E0BnOd+N9CW7onRbDp8ocRahICKZQX2qOvx
         nNrA==
X-Gm-Message-State: AOJu0YzId6DqdmYSWxDNgoPTkqw60YwkD8ejRlasSRq2XQ3mbifDkkbF
	3o77pybmTY+8SF+VJdYzriWUR/dnkENOdg==
X-Google-Smtp-Source: AGHT+IEpKMBLvUDGMsy6EyzDqQEVn5r4TekwH1NRVdrXHEPYxaxQOAqCjiqrIA+ksnmxliiYSsjQjA==
X-Received: by 2002:a2e:3903:0:b0:2cd:60cd:d375 with SMTP id g3-20020a2e3903000000b002cd60cdd375mr1111169lja.9.1705124564395;
        Fri, 12 Jan 2024 21:42:44 -0800 (PST)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id r22-20020a2eb616000000b002cc71e9168csm677719ljn.129.2024.01.12.21.42.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jan 2024 21:42:44 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 13 Jan 2024 07:42:39 +0200
Subject: [PATCH 02/13] dt-bindings: usb: qcom,pmic-typec: add support for
 the PMI632 block
MIME-Version: 1.0
Message-Id: <20240113-pmi632-typec-v1-2-de7dfd459353@linaro.org>
References: <20240113-pmi632-typec-v1-0-de7dfd459353@linaro.org>
In-Reply-To: <20240113-pmi632-typec-v1-0-de7dfd459353@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Guenter Roeck <linux@roeck-us.net>, 
 Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-usb@vger.kernel.org, linux-phy@lists.infradead.org
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=2092;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=71F8jVd5iMgdX+Ru5jFbd+dpcbcyYwGu9AyNI4zYLro=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBloiLQ3fkdawR6pA6T4wUoOe0MuRgyevCWaKNRr
 dFKIYJNmhyJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZaIi0AAKCRCLPIo+Aiko
 1Z7RCACJqMUS6NROuFUm9IDdloUScDGEan4oF/pAB2i0pWGpHkEZTzHN+SD4gnmsvHe3I2r63NH
 IghG0jU39IEAcSvF3jlcYHrU4DZCQHyNHorb56REXhio6vtTSniHt8pPuWDqZs1kvkGSfTbp+Bg
 kly5/Wd7vxpm6A4X1TLM2jdJVOvl0dVdqmZZaY6hV34p86JET7qoF4FtTd2r3CFhSMKFLT7XUsx
 HKsqUvlpOevQ3vowC+e8YQMrqGZHB0bHg8NmviXsSIeXWRO2PFECjqzH49KOau5K2v0fFsumggG
 uFAdrgL/VOiRc77uHu5ibnWNDW7gySvK0ZcVWQJucgoqdWFZ
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240112_214247_870134_4C7AA3CB 
X-CRM114-Status: GOOD (  10.24  )
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

The PMI632 PMIC has the same Type-C register block as the PM8150B.
However this PMIC doesn't support USB Power Delivery. As such it doesn't
have the second region used by the existing pm8150b bindings. Add if
clauses to handle the PMI632 usecase.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../devicetree/bindings/usb/qcom,pmic-typec.yaml   | 28 +++++++++++++++++++++-
 1 file changed, 27 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/usb/qcom,pmic-typec.yaml b/Documentation/devicetree/bindings/usb/qcom,pmic-typec.yaml
index 55df3129a0bc..e9f44750d580 100644
--- a/Documentation/devicetree/bindings/usb/qcom,pmic-typec.yaml
+++ b/Documentation/devicetree/bindings/usb/qcom,pmic-typec.yaml
@@ -15,6 +15,7 @@ description:
 properties:
   compatible:
     enum:
+      - qcom,pmi632-typec
       - qcom,pm8150b-typec
 
   connector:
@@ -24,9 +25,11 @@ properties:
 
   reg:
     description: Type-C port and pdphy SPMI register base offsets
+    minItems: 1
     maxItems: 2
 
   interrupts:
+    minItems: 8
     items:
       - description: Type-C CC attach notification, VBUS error, tCCDebounce done
       - description: Type-C VCONN powered
@@ -46,6 +49,7 @@ properties:
       - description: Power Domain Fast Role Swap event
 
   interrupt-names:
+    minItems: 8
     items:
       - const: or-rid-detect-change
       - const: vpd-detect
@@ -81,7 +85,29 @@ required:
   - interrupts
   - interrupt-names
   - vdd-vbus-supply
-  - vdd-pdphy-supply
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,pmi632-typec
+    then:
+      properties:
+        interrupts:
+          maxItems: 8
+        interrupt-names:
+          maxItems: 8
+        vdd-pdphy-supply: false
+    else:
+      properties:
+        interrupts:
+          minItems: 16
+        interrupt-names:
+          maxItems: 16
+      required:
+        - vdd-pdphy-supply
 
 additionalProperties: false
 

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
