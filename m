Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0558FC27C79
	for <linux-phy@archiver.kernel.org>; Fri, 14 Jun 2024 08:35:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vb3/th1cc7NzMMdfc/nV8OUD49ePIvTF9Ykk6+fWcY0=; b=2Hkgkktm5VcSll
	fwWPJ2bOAmUKC9+t3J7PjdfbLNGtPoUsAfKYSDYzDFX0y65L+zsdLnexOl9pOAfmm35NF31nH7Yph
	34pr2dJXbCD+z2uRrsCtWbHc3IHrJFuheE4roMyEMX+Zc4G5lcKYchmd+qHB6oUyOkoTYLjmyn5yo
	ggGrlZF9EKU6WqPg6TLP8aTs0OHdOl5IZ1MhNzSP3nwQLBzW6wabZPjylIhalt2g98miUZcUyA/co
	w88R2mu1SIAlb66QbG871bcgURwpqw3aOBDQl+PikaNGgE1Tqkno//fm8yyB42GcewltZiNXKKOSM
	atFD3WPzLI1sDMLHJTww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sI2PP-000000022L2-32MY;
	Fri, 14 Jun 2024 08:35:43 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sI2PN-000000022JQ-0cPc
	for linux-phy@lists.infradead.org;
	Fri, 14 Jun 2024 08:35:42 +0000
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-52bbf73f334so2153593e87.2
        for <linux-phy@lists.infradead.org>; Fri, 14 Jun 2024 01:35:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718354139; x=1718958939; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9exy3tODP6D6SB8BPoapzrGAVV2VEaTDfn4vpIL8sTA=;
        b=di4WuIikuBcw5cF/ANnxwSfZAlIGVw5Mh5g/4+hWxaFL6BHl7b/xpXdlYCB5l/NsVe
         fWTBIHFxW3TFs41dtJbu4FKswxbHCj0Ca7ePzi9UdYbDwOgffE18yHNNxCVJCMv3g67/
         f28CdBmYoDQ0yWwh/uQwtPqKvIyJbe4VcqPTOdxAxd1r7IImxU3IV4QeRbIUKyFyDEti
         tcNZFnD3QGXDa4Fdikhw7c1mnRP8nnCFJlxAsg2xyIuTBY5c87/4RUT1AaCaahgW2mPQ
         2ewTLHeFzgj5Pzyupn+pizVlAKEgVoM6Z1pnHl6lLDy8Qml8FddiY/XnsJsigoVo5w1b
         rRfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718354139; x=1718958939;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9exy3tODP6D6SB8BPoapzrGAVV2VEaTDfn4vpIL8sTA=;
        b=SME4uze3LgKvqzAToO0tdqZ0/MUSEyhYRc81TJU8n0YElbydRI8f2kyc99hipBiqdZ
         5w3EVQjDhTLv/QUmJ6LazJ4D5Q6+PSIB1WzRk4AheFRFeHfexhhp4vgjknKGvLGCwuBs
         QyYDhuC9cLnre4OCtPHOqLWb66HjFXGVDrwyfSuBp3Q+HukY3W1w35T4zKe76O5kPCz6
         um+oOKees/FIl5p9YhVcpBrjHnw5DryH9IJuKDL6b0Gt4lPR/f7WGQ/H+FwVkR07Lzee
         udgFVqyxS84qeL3cpuTIm/qJ751nFOxWrOzliRDxHe5Cirws9/+ez/lnXk2qwtYYHDGH
         Dajw==
X-Forwarded-Encrypted: i=1; AJvYcCXLIK7bj9P+h5a87SkZVGKOYCnFl7gJN0NNNpV1daZbuj8R1zbZ+ySK/dLZsAqq4s8bEvv8+dhH5FOjXA2X2HMa77rFKjXnd9O1uJNoIg==
X-Gm-Message-State: AOJu0Yxqoeb3Z/bnd4MA4Y0LDaMGHcJF+JR79hACt6d2uOrrdBhq6+Br
	n7sfc54bGsrel8pvrHeUBE8l0X9SMvriOlHZ0P3JyTU3sk+2YkLY7iubQqYu/b0=
X-Google-Smtp-Source: AGHT+IHTbmeczb/9lcCgLK16cJp1SreY1FK+nJgmHVIjpUBegYARLy52/Iu4pgHJLW+a67FN2MKxHA==
X-Received: by 2002:a05:6512:1313:b0:52a:e529:16bd with SMTP id 2adb3069b0e04-52ca6e99a33mr1603420e87.58.1718354138727;
        Fri, 14 Jun 2024 01:35:38 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52ca282f1dbsm444776e87.110.2024.06.14.01.35.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Jun 2024 01:35:38 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 14 Jun 2024 11:35:35 +0300
Subject: [PATCH v2 2/2] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: drop
 second output clock name
MIME-Version: 1.0
Message-Id: <20240614-fix-pcie-phy-compat-v2-2-990863ea53bf@linaro.org>
References: <20240614-fix-pcie-phy-compat-v2-0-990863ea53bf@linaro.org>
In-Reply-To: <20240614-fix-pcie-phy-compat-v2-0-990863ea53bf@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 devicetree@vger.kernel.org, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1663;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=5IhnbDeMfhrQJFjppRaXrqKXHovo12yYiCutUlaZxUk=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmbADYaE9TZu9NEvq7Nc0XurtFlswavE28Gqrn+
 08e2niAvR6JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZmwA2AAKCRCLPIo+Aiko
 1XGACACjyFeiP1G2iAmP7ZCpeanYDEvJ9RCTKWgAuxN/3fxI8NnL5GjK6s93tmLoI+lSflRCXnf
 n7F+5T01SlF3tnRAvYc6sDG9zBqu4po77g1qi7GcncqjtYWemV6rZoOhpvWRvVGQ9Ws17xesRTv
 9yam18U2ubqTtFp90x/T+WEO0qPZpxSzOoK6nvTJb+moCmQO5mWng9mw3dTexw/bFnFpV41UMBY
 q4o2uD+9aDJXXbrj4Wu4ksmME55R5Tc8o+xDP2PwXEflg85EDZiD+9EEB2y3kuYssYEn0/EmNBx
 EobPu9qSVlDXE2QTaV7Ztvg8MLnfcpsjbJKlXuHeqzwm+VTA
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240614_013541_222608_274A0A26 
X-CRM114-Status: UNSURE (   7.86  )
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

There is no need to specify exact name for the second (AUX) output
clock. It has never been used for the lookups based on the system clock
name. Partially revert commit 72bea132f368 ("dt-bindings: phy:
qcom,sc8280xp-qmp-pcie-phy: document PHY AUX clock on SM8[456]50 SoCs"),
returning compatibility with the existing device tree: reduce
clock-output-names to always contain a single entry.

Fixes: 72bea132f368 ("dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: document PHY AUX clock on SM8[456]50 SoCs")
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml        | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index 16634f73bdcf..03dbd02cf9e7 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -91,8 +91,7 @@ properties:
   "#clock-cells": true
 
   clock-output-names:
-    minItems: 1
-    maxItems: 2
+    maxItems: 1
 
   "#phy-cells":
     const: 0
@@ -222,14 +221,10 @@ allOf:
               - qcom,sm8650-qmp-gen4x2-pcie-phy
     then:
       properties:
-        clock-output-names:
-          minItems: 2
         "#clock-cells":
           const: 1
     else:
       properties:
-        clock-output-names:
-          maxItems: 1
         "#clock-cells":
           const: 0
 

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
