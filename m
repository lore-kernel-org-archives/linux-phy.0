Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69B5CC47DA2
	for <linux-phy@archiver.kernel.org>; Sat, 13 Jan 2024 05:42:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wBx3BEnJ9bRouOzWziJUUM3nHmlLp4FA2uKPV42WNp0=; b=yyxWto4SSq/5wF
	QLEtN3xT48ysFsLrthi/uaeC/O1xPtV7XsCv1kiAJcBs4agLB/5ITVybB61jueUj+ojuC1f3LboPk
	B1RVOnUCbs74hSiEOjDd7ArfwP/YdVon7Cx0NXFOA1Mllp1NUxPR6+0r4z0aenvTNsFJ6hnpDxQRJ
	c8O33zpi3zFXAD/WIK3Gkix6hVmZfPgmDuwSoVhF6TwfSCbiNFIxZd6t2JrH9P17LAJezp+0TjEbQ
	Z4WbfQoBUu06liuE+U3KHJ9ysnkSDYz9daK6Gzg1xMzaK8tznxVE5GwkA8NJz/DDeCr47eMVskQSm
	LfQfvCaLXIHGvEYZZMBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rOWnF-004ZhD-3D;
	Sat, 13 Jan 2024 05:42:54 +0000
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rOWnC-004Zdc-0X
	for linux-phy@lists.infradead.org;
	Sat, 13 Jan 2024 05:42:51 +0000
Received: by mail-lj1-x22f.google.com with SMTP id 38308e7fff4ca-2cd81b09e83so34381851fa.2
        for <linux-phy@lists.infradead.org>; Fri, 12 Jan 2024 21:42:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705124564; x=1705729364; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1plu6Fal9qcn1Wtuu6vQETPtirp4Q/rK0fLCOiwCIQY=;
        b=KYlB1op/yov0ERo5fSv9bGuuD7ylzL6B0joh6H6Tx7LjptMfo4g6QRzwyX4BEoGlvc
         Y7K2/ORpTPG9riJx4cllK4Uifh0cntqEmOrVGBBoE/0jdH4TZ5dhgPgF0ZMSZQlRKyya
         p5RIEn/aBLKEa4KTduEyyeTU1BQezXshdFWjyLi6q7cMowwfBKvmuIf5MTUkqvAzMSWf
         IqGJavaU/tXGOuCKeYsmMu/S8PUS+H8KHa06PcvRcZ3euUvNB75V4/LKKA0YXgCmlGmO
         jtfD7jWsda3ts7UXnZy/DkJuY0mvRjO2QHjJESUVoxx4jCnyXODTJZDoCbnTqHvvtBVA
         L/WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705124564; x=1705729364;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1plu6Fal9qcn1Wtuu6vQETPtirp4Q/rK0fLCOiwCIQY=;
        b=oW+wLCyUYIGk7xa+MRydd6qXIQbgE9BheKJVq5PM9n7Lxsp6wTutBKhA9L1OySmX+G
         WMcvV8PuZOxQYCZ9h9cbRI3JxD/cYn7dlhwHdGwwkWLNcs3uWZZib3HllfBm9uo7V9sC
         YMo/kc9MXLRS0z0Q/8tyBr3XtopVJaZL1DnUCfGBCpY3bt2eY7NZ4ZVQgzG0pOFgujip
         3f1ND36qSq7m4eF+P5L6rfo5F5EJoMaMfH4v0dPCYgRyG13tHnTdCykdWEhfj5JcFQSj
         2mRzujTSy2Zro6lIg1WQXV1LohX8TI5kbrY6F+AgaZ4yzSyp1tWW/YYfjLFu37Lrj88L
         gZ2Q==
X-Gm-Message-State: AOJu0YwupmAj4wcP4GFvKzRRpV484uX/vUcwZO4suetVbGktvO4upYMa
	F++QipHwdGYm5ZttXs/5VmaL3UkqEBPELA==
X-Google-Smtp-Source: AGHT+IFd1jPpJPDKDRrkgYEFhTbv5z5l7BYXN+JECjDlZMmNU14o63+C2Gmf4IDFn8+YmejCRRIslQ==
X-Received: by 2002:a2e:9614:0:b0:2cc:c895:7140 with SMTP id v20-20020a2e9614000000b002ccc8957140mr637588ljh.73.1705124563714;
        Fri, 12 Jan 2024 21:42:43 -0800 (PST)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id r22-20020a2eb616000000b002cc71e9168csm677719ljn.129.2024.01.12.21.42.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jan 2024 21:42:43 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 13 Jan 2024 07:42:38 +0200
Subject: [PATCH 01/13] dt-bindings: regulator: qcom,usb-vbus-regulator: add
 support for PMI632
MIME-Version: 1.0
Message-Id: <20240113-pmi632-typec-v1-1-de7dfd459353@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1073;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=VO6sCRtukMYbFqUkroEE9VOEtJ3mqzFoVaUfeIJHtBE=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBloiLQLfTXIowNMw1HcfpGXvc8pKu+5bdoQQ0PL
 deZL6vAXBeJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZaIi0AAKCRCLPIo+Aiko
 1c1BB/9X3V4VUltARNirVryclPWLymp+ODlBtn2/MwSLhsc4VHMGsr3DnsRZmZUwzjgFw4SXtwB
 3N6Lx9lYkcDDwmjixCxUaC+84PZkqj0TgX3diLz3ioz4U+F3OUGLVMaoE6MJloAe9ISaJJLFI2r
 ipbJEbX7X5qK8g8HkJa4ngBTh49qG6HgPUsIftLwCAR/sNPcrI7NbxE4Jbpi81N65HFmmTcAMCE
 LNK6xeCXRkHGQF/IY3sofOkqqiq+7emxD+EIyUtPK5PkaAIoaIDTIeXHj2j+GOmZfMb9iPiHd22
 3hk6RdL6gqy9ykUlI+/VhhkF7qLXmScxPILjdChVlxregXY1
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240112_214250_204343_E28E8662 
X-CRM114-Status: UNSURE (   8.72  )
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
