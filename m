Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 317BBC4706C
	for <linux-phy@archiver.kernel.org>; Sat, 13 Jan 2024 20:56:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wBx3BEnJ9bRouOzWziJUUM3nHmlLp4FA2uKPV42WNp0=; b=Gf1qmISvBRqars
	Rayxu/iwvOJUAl6piZj60DIuR/ZeEVFgXKmkLXU+Lsdw0IMAV6yMhRxbT9woEKgolDgD0s+IdeXNN
	JBpuKzTrxjhzOxk7CATkO1ixM702phWsyhJ/N2+OSOPy28wT9Vgc4V67DsaFIgE+FNQgmrrw6iIFj
	0/bw4o30errkJPlkt3sqS7qY+0IQ7WsuiPAUYhNRWaUChlMSg2+MnnIZDqqAYi8wA5jTF5d+Chiy5
	WXaYL7Rsefo0VCr0XlwgZndZu4vOi6FnLzo3Ih4AWQswCqnEffG4Tx4P2Uc+PL7Br75/kS6XjqIH1
	bTr9Zl9THKPxtt4yFx7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rOl2x-005gj6-2T;
	Sat, 13 Jan 2024 20:56:03 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rOl2s-005gf0-0O
	for linux-phy@lists.infradead.org;
	Sat, 13 Jan 2024 20:56:00 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-50ea9e189ebso8471158e87.3
        for <linux-phy@lists.infradead.org>; Sat, 13 Jan 2024 12:55:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705179354; x=1705784154; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1plu6Fal9qcn1Wtuu6vQETPtirp4Q/rK0fLCOiwCIQY=;
        b=t8f1nkBO9UT8ormoiJsbbb6/y+vO3zSzGLMXmKNoqmZFFs1uF3ZTBAsE6thqAn1VV6
         mBNp9W6WMPJQakh5A8nE7EdSavKhOcZyjZz8xpcD70Fe89MK94dEhB4YYU8tfgz8xYSo
         TGLsx/bltuN9TogdPSPXj5GeVpgZL3DCKazF0y0Lx6dBpUSmYMRIxxl0YQUNQ1d5iPri
         +f6YImdGtsP2Nvti/7fCTKHAE4H4wZ6dHKZ4gbMYNUyCmi6Pe6idisa4wX1eJoTz1nBa
         RFs2BdwVpQMH7UhidEyG4lsPuA1K/FpKd59DLb/1W2865G+fLHuEO7CdzUzCjCQeK7Vb
         VU5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705179354; x=1705784154;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1plu6Fal9qcn1Wtuu6vQETPtirp4Q/rK0fLCOiwCIQY=;
        b=JK60leyILny+UB2VaM7San4mT/uGlA909fpLJgcdcFriViDQawmmo8WhtiDlhotgST
         1Ht5uqM7jIj9Jgbi+ZYe+ramTue4KRWkcke02vK4/4CNEd6PKRsbgF72DhsPFI8JSqN+
         MjtCdlldlW8YeM8xEOTPy0ofNP1Nendkq+lvyK3FHqHYICDnQGKLrf+GiwFvJCZcYTcJ
         8ubOYzfbCf2a3l1DCmVB8L4DtiTEzG5LA+NKGmoIO9hy0HeNfH2yMIGk3w1owZa0czz6
         01yLenenS3RhaLnv2hQbw5sog9s2kGF2Y4m41pPvlYLeFHcG1+H6kvRxRzB7oVg4UK0+
         uKZg==
X-Gm-Message-State: AOJu0YwEd9TNfg0cffMBa+qTqfT7FfeCdPhG8bZ40P1dQPZA8M3MLsDn
	36R7s85+asH0PRmTGLxAhrpL82a8FUVN2g==
X-Google-Smtp-Source: AGHT+IHORlq9+U1/d6OKAala6qvGFXXcT/6vQiMppG/2djQE9ccrg+xAnQp4SuIWs9e263XdPhtkkg==
X-Received: by 2002:a05:6512:1093:b0:50e:76ca:f772 with SMTP id j19-20020a056512109300b0050e76caf772mr1858405lfg.32.1705179354550;
        Sat, 13 Jan 2024 12:55:54 -0800 (PST)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id p14-20020a056512328e00b0050e9355d7eesm919802lfe.103.2024.01.13.12.55.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Jan 2024 12:55:53 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 13 Jan 2024 22:55:44 +0200
Subject: [PATCH v2 01/15] dt-bindings: regulator: qcom,usb-vbus-regulator:
 add support for PMI632
MIME-Version: 1.0
Message-Id: <20240113-pmi632-typec-v2-1-182d9aa0a5b3@linaro.org>
References: <20240113-pmi632-typec-v2-0-182d9aa0a5b3@linaro.org>
In-Reply-To: <20240113-pmi632-typec-v2-0-182d9aa0a5b3@linaro.org>
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
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-usb@vger.kernel.org, linux-phy@lists.infradead.org
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1073;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=VO6sCRtukMYbFqUkroEE9VOEtJ3mqzFoVaUfeIJHtBE=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBlovjW7nZvT4zErpZjmTbBBPpayrTlb/U+ld6ZT
 TNO51eWMViJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZaL41gAKCRCLPIo+Aiko
 1aKRB/9T87tU2zgTRJrbRdVu/6xwFDLYjttlV8t8cBlJkGj6+rNwF/WsD3D4S6v4zHiQSxjLSBH
 rk6JLOaz5bzEYv2q6OdZRT1yd2b5VXDhqwkOs9ofgCkv8ukCADqL5nplKN9hxwRBMR3kVNEUZLB
 vkXnWnSimW09fQIxo5gY2l5DbeZP+zvuwV9CDGxIVF//Q/1hhfve4JuF7nvp+gYbaFBJSW9K6H4
 id1sh/0OYL6qzsCqphACfPchFXreLG1XnE1piM0TmFSLJxnwF5xMrk0WEV1MhhUgAM/j6LBs1Ng
 SYUbuwFIoGwU0oooy+x14OtaPUAmGCcBbkXBBXuWHKpDm59V
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240113_125558_157614_1371C481 
X-CRM114-Status: UNSURE (   8.66  )
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

The VBUS register block on the PMI632 PMIC shares the design with the
PM8150B one. Define corresponding compatible string, having the
qcom,pm8150b-vbus-reg as a fallback.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../devicetree/bindings/regulator/qcom,usb-vbus-regulator.yaml   | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/regulator/qcom,usb-vbus-regulator.yaml b/Documentation/devicetree/bindings/regulator/qcom,usb-vbus-regulator.yaml
index 534f87e98716..66dcd5ce03e6 100644
--- a/Documentation/devicetree/bindings/regulator/qcom,usb-vbus-regulator.yaml
+++ b/Documentation/devicetree/bindings/regulator/qcom,usb-vbus-regulator.yaml
@@ -19,8 +19,13 @@ allOf:
 
 properties:
   compatible:
-    enum:
-      - qcom,pm8150b-vbus-reg
+    oneOf:
+      - enum:
+          - qcom,pm8150b-vbus-reg
+      - items:
+          - enum:
+              - qcom,pmi632-vbus-reg
+          - const: qcom,pm8150b-vbus-reg
 
   reg:
     maxItems: 1

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
