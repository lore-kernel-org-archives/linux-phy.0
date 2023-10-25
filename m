Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 285B2C25B72
	for <linux-phy@archiver.kernel.org>; Wed, 25 Oct 2023 07:34:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zpmfZcbRKDHbamXnYSFHJpwouAyAsPVKX26Pe3p7KB4=; b=b5wqgmy5kQn3JC
	PjFyskcoIWbRbXprlWQjYZIVrXknBrpqYuG86Uz/iKo7CivDcXiz+RjoaLbtpO9vK5eZKwKJ4cyD+
	rBqz77dyPvTaGiJGO4z9ONtfI8kt/3uQ+MR6oPsy6R1tAbolm3VKpCArlFaJWS+RzmwlBkGqLcMRM
	xj9tdgfjuWS37iyc4JpK0R1+KdgrlueBl8/r3uOaKHZbLn3P0EoFuIpYkUIYSUkQYIsCmOuH3LSPg
	QoPVcb28cvX1ZSIMf0uq14WQL46GChqrsuWx6qzCYaZDw83OhVGqGZgmkAEz4KzRMpZ69a/K114UT
	aMwAX4U+mZckLbGfXXSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qvYPV-00BaYy-2U;
	Wed, 25 Oct 2023 07:34:37 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qvYPS-00BaW0-2z
	for linux-phy@lists.infradead.org;
	Wed, 25 Oct 2023 07:34:36 +0000
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-507c5249d55so7710513e87.3
        for <linux-phy@lists.infradead.org>; Wed, 25 Oct 2023 00:34:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698219272; x=1698824072; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wbrvIzvdzq/AFVOVjbVafR3T9nNAQ5I5GLW0AHPZ5/k=;
        b=cjuq/Lsre/wXuJcpsvB8u9sgQ36sH83SRmPeDLmThWUdSsyUj1nEugZnnj9Ad9AuCz
         bwfbo2AES55YzFzdPr6Zj33CI768rl8no+ICyGjoISWonmVw+fLme1VoIdOBhZoF0xYU
         2O1Pig7NyoqyANGpARUoKDWYJEj2W4V9cbgA0cLqtu042b+4Cqiduv5a6DQ017U599kH
         C7r3EkPg+QMDOWiIq/WG8XQ3LArAsbHyDf/JEVlV63cDAcXlk1DsBS0gk3RwlS4biFgH
         eGaXAaIup9cskPQXXWTqoSoTutnyWwMuMrWIZ6d1fBOhC51Ne249CV8t0o2kjkA3j87h
         bRXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698219272; x=1698824072;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wbrvIzvdzq/AFVOVjbVafR3T9nNAQ5I5GLW0AHPZ5/k=;
        b=Jk7JfkKo9lySLXd6rznA9WJJuwto3Ta/lDE3LRDXwmE6wCZwK/GS/qn8V3r5uMyVdf
         z85/CVju0x45PJTJHV5ftqAfKXr6N1CfbrQTO5soQT45BC9HsrnOt7CUubcB3Ezy5dFn
         st18rPQDpk3t/ILMpF0j5UI4zc++xrdt4hIXnOqYyvTEfuCho2SpBscfyYNiE0+FWbYl
         hENt2KHcVaGh8zu03nWH2YYyBLzerKxteaC8YWJqG9h8Kgga1PCwlnz8ZyAUPoirnDGs
         KrBuu5f9dAU72D/shCBKUkUzZEksPVU6n3y4wv6NsOQcUCMIkB/1Eg3FT2yW844QeQZ+
         rlNA==
X-Gm-Message-State: AOJu0YxVeFAElAdZAWeNMaLkfFaQq2LxtM3mpc+gxdpxqT+psneIH4fu
	kFqq0NMvy1VBvm7IDF1Mnc+yUA==
X-Google-Smtp-Source: AGHT+IEZO5QiKOjC2lbTgrH0pnqsb9TCUneqoGjzkdruJYssC7pozOdxX1CYD6R9k55MHLVaDaAZrg==
X-Received: by 2002:a19:7015:0:b0:503:7be:c85d with SMTP id h21-20020a197015000000b0050307bec85dmr10051522lfc.35.1698219272614;
        Wed, 25 Oct 2023 00:34:32 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id y7-20020a5d4ac7000000b0032dde679398sm11431392wrs.8.2023.10.25.00.34.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 00:34:32 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 25 Oct 2023 09:34:25 +0200
Subject: [PATCH 3/7] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy:
 document the SM8650 QMP USB/DP Combo PHY
MIME-Version: 1.0
Message-Id: <20231025-topic-sm8650-upstream-phy-v1-3-6137101520c4@linaro.org>
References: <20231025-topic-sm8650-upstream-phy-v1-0-6137101520c4@linaro.org>
In-Reply-To: <20231025-topic-sm8650-upstream-phy-v1-0-6137101520c4@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1095;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=KnCaelpeaszap3KN0CRLC15V35wlkNa/TjtN4fP9oFk=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlOMUCl3WwZsvJzEEGEdGRKVUDhdZTxdbatOrOyBLX
 s7Vj1yyJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZTjFAgAKCRB33NvayMhJ0a6WD/
 9zb9fqAocbGRCVJVVlWKfgXMeW5q9BF3FDnpm0+DCjwMQofCx5JE5amlasApZRsXBj/ibGanI9bEOt
 aMd0P5edbATNkInvjw3wdjRYVQedWyQ3kug1t/937mZXnyPImgFJoc+la5QA2NwE9uHcAEBGTLjXgO
 /BwyJJniPPKhfkBPHKjU/EQ4rLTT9M+uixKRcjLE3Uj7AwUbAzRI/x6Fqw23xwWJr9j8WyhsFJxjpR
 U/JsAJrpvDeUgKyiiPt/OcKrhxPdKJ8E9/H4/2IpipbqCRtZzbnS7ng508hZ3Elwo5lwcFHRz/HqBB
 Hadwunpcvcvg8z9qNyx7Orh0cIndmcGyV0yZFYas6KZx+romuNw5QAPCufPWazVp4QvYevDuNekKy2
 Ze3jy97x8WboWjcN1rNSRIAIATNWCBsIfjkSDsPLaYQAsd8f8Og0SjthZ6rqiiiHDmOfftmEa3F7hz
 9OukfROqYx1SmRIpUxROzbil572WwRtMsEQv/MFnClf9c8wSpfp18hqK2ch71IxWTrWNDTS17XVaWA
 QiG+yDqmYUORl3gBaH4SqlQODzrj2mqfflWjLVqeotYUNkSMtpdRN8deA/QCmqrh2gdN16I+CqMLue
 Ah8pEekWifx4QjCuw/5lifCrAKSR4KTwIqCeKNmbnzNOqQhJbBHPljXv0Szw==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231025_003434_964333_3E947275 
X-CRM114-Status: UNSURE (   7.50  )
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

Document the QMP USB/DP Combo PHY on the SM8650 Platform.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml          | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
index 9af203dc8793..ae83cb8cb21f 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
@@ -27,6 +27,7 @@ properties:
       - qcom,sm8350-qmp-usb3-dp-phy
       - qcom,sm8450-qmp-usb3-dp-phy
       - qcom,sm8550-qmp-usb3-dp-phy
+      - qcom,sm8650-qmp-usb3-dp-phy
 
   reg:
     maxItems: 1
@@ -128,6 +129,7 @@ allOf:
             - qcom,sc8280xp-qmp-usb43dp-phy
             - qcom,sm6350-qmp-usb3-dp-phy
             - qcom,sm8550-qmp-usb3-dp-phy
+            - qcom,sm8650-qmp-usb3-dp-phy
     then:
       required:
         - power-domains

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
