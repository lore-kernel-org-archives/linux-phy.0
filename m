Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 75A8FC636D7
	for <linux-phy@archiver.kernel.org>; Thu,  2 Feb 2023 13:38:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R4t6PsgHnlG8o/81KQoPeVPCToMLYu0gTvjegRA+ask=; b=dqXk6lFCEnpLDn
	xAqCZSQKtZSh2rBOapHC437CGo8YnPj97k4MUz6NH5majdJ/cQQGNqmBAGvMnz9rm7mgDAwABx9c2
	HfgpDssvBUYCUsiiptTovBl6svZnXmXvpeLe82647R8bmicANLguTJQ/Kf/qwtZCu/h8aHxyRabql
	EOEcKWx0kXZWWlZ2Un/0/uHhcqKTBocwCl9vuKDawKcATZzBFjJYFGLLH96pYZkb6rdWNbepi0xkO
	d2u9acl+lqWJpUF9z3gEET6suh8QDxfm6KluTlL94RHnT1Zo4DLlUbGVTTUEt0Kuf4cQiA8zsUKkq
	nCw0nmzD8IZGchniH3Iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNZnL-00G2VO-QC; Thu, 02 Feb 2023 13:38:31 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNZnJ-00G2UI-Bp
	for linux-phy@lists.infradead.org; Thu, 02 Feb 2023 13:38:30 +0000
Received: by mail-wm1-x32a.google.com with SMTP id d4-20020a05600c3ac400b003db1de2aef0so1423716wms.2
        for <linux-phy@lists.infradead.org>; Thu, 02 Feb 2023 05:38:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KlnEmmK+mxpU2hlLI+Gvfd0nScZypGzNM1BgswRGTnA=;
        b=D/nQ4GR3dSQbLqg6I6//g3oBsSG/b41aAlnM5Yufajj05bmK/+DsKRO+n9oumxgDRI
         G2RhKUVYG8EWkwk6AquEpFY7mo7ENGkqqn9/58rzLIrcphE9KFK8LotJnFGF98o5eG/j
         BBta75jGyHpzijTzIe80l9wsn1ehQxvKs3ekgQPdjzOv9zk7Amqm1mrZX6G4RnG7IA+1
         mYyLuKLlxJ0VYsKRZtajgxpjwnm1tu/6nrev06GFZlHlRiA1Ae6MCpgK3AlpewhOHCJx
         mGgvHPsLmEUYGm5niLk2stCIBSRLnZAuKNPmbCSLOAbis4w56YgkUD/GSiZJWEyr9rOo
         8vmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KlnEmmK+mxpU2hlLI+Gvfd0nScZypGzNM1BgswRGTnA=;
        b=1OYF1evirYC+/e0X6pDhjP6M2jFKcOjGX2TTBq6rjA9qP51XEBa1pn1tLpE5DWp4WZ
         N8YB1bfGvXmD33LiKuB3chld8T/DOBtBkcp8Uj1zgVhhPhpnMYsbr96uLMB4ka2iZzFJ
         DSNxMsicIC6F78J3UZK4e78fEbFz3ebBHo2NHOyAxLYrlgwOAwnCU9+c/Hi0J5LioMYO
         6D2B+FqGfgFmFsBZ5qJh0zF6QDTV3OTikZRVOkJwKxP9U/kle3tq6yaqr1wfVdsRtc1F
         1SIrLp4Bx+LjQ831Js9QFX46piN/62T5DTvODr0sbgZqq12/4VrovG6l7lbRIIZ+TC4S
         HKLA==
X-Gm-Message-State: AO0yUKWsW4ColTwmMuzk5DAddx2bNEGutifOaRAIqLuzbWKFXL+rSINI
	u4Kjs+D2p9FnwISZ+NtWk7/VxQ==
X-Google-Smtp-Source: AK7set/HruKLuPPKZqpPir9fHCiHYxHpi8qYjeVph/FYB2s7tGyUsL58Of7GtXwbLYNB13s2fnE7gg==
X-Received: by 2002:a7b:cc83:0:b0:3de:25f2:3aee with SMTP id p3-20020a7bcc83000000b003de25f23aeemr5981561wma.31.1675345107899;
        Thu, 02 Feb 2023 05:38:27 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id y10-20020a05600c364a00b003daf7721bb3sm4672657wmq.12.2023.02.02.05.38.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Feb 2023 05:38:27 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Lee Jones <lee@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	linux-phy@lists.infradead.org
Subject: [RFC v3 1/7] dt-bindings: mfd: qcom,spmi-pmic: Add pattern property for phy
Date: Thu,  2 Feb 2023 15:38:10 +0200
Message-Id: <20230202133816.4026990-2-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230202133816.4026990-1-abel.vesa@linaro.org>
References: <20230202133816.4026990-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230202_053829_417270_A7EDCA95 
X-CRM114-Status: UNSURE (   8.93  )
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

The phy pattern property will be used for providing eUSB2 repeater
functionality. This will be modelled as a Qualcomm PHY driver.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml b/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
index adf88245c409..1e6fadec1301 100644
--- a/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
+++ b/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
@@ -135,6 +135,10 @@ patternProperties:
     type: object
     $ref: /schemas/pinctrl/qcom,pmic-gpio.yaml#
 
+  "phy@[0-9a-f]+$":
+    type: object
+    $ref: /schemas/phy/qcom,snps-eusb2-repeater.yaml#
+
   "pon@[0-9a-f]+$":
     type: object
     $ref: /schemas/power/reset/qcom,pon.yaml#
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
