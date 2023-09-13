Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48F4ECA5531
	for <linux-phy@archiver.kernel.org>; Wed, 13 Sep 2023 09:54:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2O7Wa9CGKYKv9GKkcRaiLbKzKRvBUcOQsUkKWTFeDoA=; b=N4VLZd87PmP+nK
	xQS3QttZ/Mpzyigmbj8BcikcqyPeElGLrxFtiCRgsVJkqGcqr7fYP7WeIeWW1yr/5CNb6TpoaXTzZ
	hm8/udkA5aaJkU5gKjngmz8ZrfIpnUmSxKGJrEKwBXhLZYJb2Y9VcbOKcCNvWyliwR85ytFb4Cm2X
	O6q2UiHBfX6xPEsKIdFv0WlulSapY7NTeGYLpBvu8em5mhXnzPXV5ifVCdF6TPRNtuUNcLDnl5A/j
	U9xrFhehDemgXMyaNOJxLpaIQe3zA1BRCiYzfhQJn0Fj2sl6xMStrRvc1wTcipC2Hp5ZIoZekMGfK
	AprhzMgfC/Y9b7JkNg9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qgMZP-005M13-3D;
	Wed, 13 Sep 2023 09:54:04 +0000
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qgMZN-005Lzq-1x
	for linux-phy@lists.infradead.org;
	Wed, 13 Sep 2023 09:54:02 +0000
Received: by mail-lj1-x22a.google.com with SMTP id 38308e7fff4ca-2b703a0453fso113613971fa.3
        for <linux-phy@lists.infradead.org>; Wed, 13 Sep 2023 02:54:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694598839; x=1695203639; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bGEWNaFOSGbgLmGphSZoYFcO8R5kpnOWxma4oPpmrkM=;
        b=Q1c2KMuRf1JF40a6X6eanNCSWyvjDjjOiGeM5bsM0T8ggen1mIkXKJBLxLNDCowfDJ
         tN522rLM7BNCdbDgNJk3s+sMBlL7TnTSTv+c5qLmryiFRqL0tLq81FDcpsD6dwoypADp
         +s3nrRzFzd642PcAo/O4IoPh+lpsWeDFUj6r4nVqAUUC+tSmRDdQPI7QHmO1zbWQRWyI
         yoL5Y4atLjkltnvozoj1m1qN0URzg/EMpSQoMo5hGeJaZM3XUYezJs26E8LXBFl6RLMY
         nbcNAk7p/4+YZcHIlaRY0Ec4WUtjppgAvJdsyByT6c+trVob3hToj/3UGg2QM8RIN3wX
         Kryw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694598839; x=1695203639;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bGEWNaFOSGbgLmGphSZoYFcO8R5kpnOWxma4oPpmrkM=;
        b=f6S8n/oxkejF4JwdZgPA2oWfRfbv9yRIEoO4M9c53tDJkE1KNTY5hFPIOAUOLX9/fY
         II5A6hBAuZyUoMUEF51v7T6osQ3JVWxGnC7AEWrwkYyXkWdndcj3YJ61eh6MHBd9Oq+H
         CpIO2Uh9+74qe44livcg05QHK3oKlz0vTjy8xyQz1DMywFqtAMgAdDyfamHzAx49yVwd
         L0wxCZ9AvEHCMjcBL3k9ds9VJXY2OoXXDxFantX2pyleB6Q58Mw2gA6arJqzXJToLbce
         uM54SCNS9EOEJsQAAVPH3dzdyU3sVhn9OlAj5Q6j5Sg69b82EhV+MMc0z6mWav8XcIom
         49iA==
X-Gm-Message-State: AOJu0YxgpXuNSiRke4GUuUsULluoocjBlUcjzWIQmlbttkMHQxNemE2d
	Tu6l6GpbfOwnkWuN2PdhO+Eztg==
X-Google-Smtp-Source: AGHT+IGRBzDoV6q1Yg7xSUFIzw7/wQfW9voe7rkKcePRlezQHiH+2VWYtd85objRfoUB5jzbALjOiQ==
X-Received: by 2002:a2e:9806:0:b0:2b9:e6a0:5c3a with SMTP id a6-20020a2e9806000000b002b9e6a05c3amr1705981ljj.48.1694598839540;
        Wed, 13 Sep 2023 02:53:59 -0700 (PDT)
Received: from [10.167.154.1] (178235177106.dynamic-4-waw-k-1-1-0.vectranet.pl. [178.235.177.106])
        by smtp.gmail.com with ESMTPSA id l21-20020a170906939500b00985ed2f1584sm8092669ejx.187.2023.09.13.02.53.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Sep 2023 02:53:59 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Wed, 13 Sep 2023 11:53:23 +0200
Subject: [PATCH v2 1/4] dt-bindings: phy: qcom,snps-eusb2-repeater: Add
 magic tuning overrides
MIME-Version: 1.0
Message-Id: <20230830-topic-eusb2_override-v2-1-7d8c893d93f6@linaro.org>
References: <20230830-topic-eusb2_override-v2-0-7d8c893d93f6@linaro.org>
In-Reply-To: <20230830-topic-eusb2_override-v2-0-7d8c893d93f6@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1694598835; l=1475;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=+WkmKOaL4o5Pf6bG2lB645yeG0HwBKcy91tPmktunQA=;
 b=Ma2LEKDh/8hk+rsvOx7vD/eD/ZV5DGMbX+SL8VQxrsc3O3sKPGbAoG7NjjqSM31BPA4Bth27J
 GG9ZG6Qx8DuD2gA7zYTmHwQrUqRI6EMbl/lzO269iELzs75JLwQRn/9
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230913_025401_640539_C3DBF72B 
X-CRM114-Status: UNSURE (   8.35  )
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

The EUSB2 repeater requires some alterations to its init sequence,
depending on board design.

Add support for making the necessary changes to that sequence to make USB
functional on SM8550-based Xperia 1 V.

They all have lackluster description due to lack of information.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 .../bindings/phy/qcom,snps-eusb2-repeater.yaml      | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
index 029569d5fcf3..24c733c10e0e 100644
--- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
@@ -32,6 +32,27 @@ properties:
 
   vdd3-supply: true
 
+  qcom,tune-usb2-disc-thres:
+    $ref: /schemas/types.yaml#/definitions/uint8
+    description: High-Speed disconnect threshold
+    minimum: 0
+    maximum: 7
+    default: 0
+
+  qcom,tune-usb2-amplitude:
+    $ref: /schemas/types.yaml#/definitions/uint8
+    description: High-Speed trasmit amplitude
+    minimum: 0
+    maximum: 15
+    default: 8
+
+  qcom,tune-usb2-preem:
+    $ref: /schemas/types.yaml#/definitions/uint8
+    description: High-Speed TX pre-emphasis tuning
+    minimum: 0
+    maximum: 7
+    default: 5
+
 required:
   - compatible
   - reg

-- 
2.42.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
