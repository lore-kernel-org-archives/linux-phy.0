Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24661C3DA6E
	for <linux-phy@archiver.kernel.org>; Mon, 25 Dec 2023 12:03:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RhlhvHlPwcMnDkZtl4cnPd44ULagsQVSQnV6YMR1SoU=; b=gumdHn4nm7ebIT
	t/MVdKAhwArQvolBJrwtrnP8Ddj3l+FIqtBcTm30TTsBgjc3JypPX1OnlYly/zsHC/95HBn/SEcRY
	g0QY0DASm8qDpjyQUwp0FLlsEG2VRWX9hmVkj2EKtYuX7hgGCWLcoikdeFIu3GDwSqrZMlFhi8B05
	br8jU0gkopkGGlKtnooXb8fUKiwEI1oDP7iLxvAIJsbqoGmQLkLkaDWuumo3IygDkczvsX2LNb+f+
	Y5pvdQQnaZpGgoYv0mm2/mB9aBgU92GrmulDrw35En0Qnm9uwQxq/qz7Uy8iV4DOE1BFeQ8sILsDX
	LA83lOw2YpmaL69bOazg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rHjgP-00AmwZ-2j;
	Mon, 25 Dec 2023 12:03:45 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rHjgL-00AmqS-1J
	for linux-phy@lists.infradead.org;
	Mon, 25 Dec 2023 12:03:42 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-40d53297996so15479885e9.2
        for <linux-phy@lists.infradead.org>; Mon, 25 Dec 2023 04:03:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703505819; x=1704110619; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5YKKwCbE2bVC81oS/UxuxOltquOrU1cWJrPWd3LKzlY=;
        b=T5hooXfnlUIFzIZEo2Mqea4wHIq4pCfM9LPlr+hNOUQYDolQ2KQUQvF/NZ5hr/kYEL
         LBSEc9TshdmjZ8YKI1PrH1feHoXlXsAfbK0nLpxyu8J61ZaANaA3NwD8jggJ3ehnK37Z
         gIcoal+QwQ+5H4UHK6jCjJQ/AO1bMD2GTfyt9c85t/0oDJLY4hZE2kBUM8hZZHQ0JAil
         +TJl06KweERj6IVj+e1jjRZPo5RUgW9dghseP5O7+GMHWPW+ojK62SDqwdSBZXYs5q11
         5l52sV/WJYJW8/rYZVUmViDUjpeq5hS5O95cl7fBPlmAMaBDQghIlts2Q6HEzV/2KnXL
         JhnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703505819; x=1704110619;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5YKKwCbE2bVC81oS/UxuxOltquOrU1cWJrPWd3LKzlY=;
        b=DTTpmFX9NhAziGo3YoUZZwGqnX0WxJ4GUdP6DgAE5I2pORRuUKFeDrHSo0Xh0kUTHY
         EuKT4VrvNuiJATKOBuoyr68bJ/uCn1mu5i6Z4f3Ldlg+NFfKF2PSPPVdsg4s8/C4hgRp
         gWA3gy9/oiJWP1deRzFNMu5FC3stSwHwaRmcrGcJCOIJqjO4B6/503e0ZAGjfMwNeuC/
         l29kZC4O0ibwTJgnKRif2Ntp0/hnP6cAbJFWAe4xlOLZG10vC1zT1Cgi2hIM6fzf4x8s
         IDQPw6/y9PQpWmA+nxbGTO+9pRaEp1fSLnkXUsmkochBZB4QfTgT3HkhXfjWjY9Wluhx
         SWUQ==
X-Gm-Message-State: AOJu0YxXPzSc5e4VWiruz9pIhuKoynFi+FxcMrWJjZHtl4MLSxSGDF5o
	RHz3OKbXAN/BKZsNRnORRIs=
X-Google-Smtp-Source: AGHT+IEpfz+A8etqQOC+NaZ2PjlhBpNmJiqppfuewTa8F6Tdc1sMUi6TCz+W0Nu1qy1sOkX2ESOcZA==
X-Received: by 2002:a05:600c:4ca7:b0:40c:6de5:7613 with SMTP id g39-20020a05600c4ca700b0040c6de57613mr3161665wmp.173.1703505819430;
        Mon, 25 Dec 2023 04:03:39 -0800 (PST)
Received: from david-ryuzu.fritz.box ([178.26.111.208])
        by smtp.googlemail.com with ESMTPSA id 14-20020a05600c020e00b0040d23cea7bcsm6349456wmi.1.2023.12.25.04.03.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Dec 2023 04:03:39 -0800 (PST)
From: David Wronek <davidwronek@gmail.com>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	"David S . Miller" <davem@davemloft.net>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Joe Mason <buddyjojo06@outlook.com>,
	hexdump0815@googlemail.com
Cc: cros-qcom-dts-watchers@chromium.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-crypto@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-scsi@vger.kernel.org,
	~postmarketos/upstreaming@lists.sr.ht,
	phone-devel@vger.kernel.org,
	David Wronek <davidwronek@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 4/8] dt-bindings: arm: qcom: Add Xiaomi Redmi Note 9S
Date: Mon, 25 Dec 2023 12:59:57 +0100
Message-ID: <20231225120327.166160-5-davidwronek@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231225120327.166160-1-davidwronek@gmail.com>
References: <20231225120327.166160-1-davidwronek@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231225_040341_458263_7380544B 
X-CRM114-Status: UNSURE (   8.48  )
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

Document the Xiaomi Redmi Note 9S (curtana) smartphone, which is based
on the Qualcomm SM7125 SoC.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: David Wronek <davidwronek@gmail.com>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 1a5fb889a444..59430524dac6 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -988,6 +988,7 @@ properties:
 
       - items:
           - enum:
+              - xiaomi,curtana
               - xiaomi,joyeuse
           - const: qcom,sm7125
 
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
