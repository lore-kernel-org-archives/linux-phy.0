Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04F37C54E41
	for <linux-phy@archiver.kernel.org>; Thu, 29 Feb 2024 13:07:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L1tzpQj1Q5ceat2rUX6LAjuetx+5M6rIWDXS1tqfX4E=; b=XUOheRUSYcpS2P
	2IAdJj0SPfktVJcEmaWHgyc+rMYcKN3h3r/+tPxvZ/HZMMVjXbODZRwJBm20wxhndS9UEnex1TVuQ
	bHV0PH/CWs/ELa5BK8+gUj6VgYZFgCIB5ie0m6II3NLs1+mU7D/veCXPwCRTDQirtmv/6TqR84Ydf
	F2M8qkyaoHNIU9aE2P0iGQtRVnT5vccDisCNVqbMVD+/dgKmSTfQnN7/A4QrJEwfjEBt4YT/9ozIV
	nNd5JqVWX1v/RB6GZ2NLdXli9Xjlv0tj4ge3WBl/OGm3lFEd4JVayzrRL9Lh0gvbFm4gmxaueuVlh
	C0UDzEpyvAasHxLSH7Ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfg85-0000000DbI7-1llx;
	Thu, 29 Feb 2024 13:07:17 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfg82-0000000DbFw-18YA
	for linux-phy@lists.infradead.org;
	Thu, 29 Feb 2024 13:07:15 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-51320536bddso771733e87.3
        for <linux-phy@lists.infradead.org>; Thu, 29 Feb 2024 05:07:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709212032; x=1709816832; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YT8Y/OHXUcXm+kdXDY4DIbb1yI62HJpje5eqK4s6t4U=;
        b=ojQWIyjM53II4E1obpl7KgS/xVoe9RAW+iDVK02emUgHuj0fbmFK7gS5yozBGtv1XW
         sHIe/Vkplx2N7jHmhuLDVj3QyfshPR3rZS1OZOPYM1Wtx8rIyPePtHvZCvMqgd3WMoVc
         kmXoWhfNY6njRG2LhLyWvT1nys2wEGXRVE0jrYp5kDdSpKxEtpzgtPm5Um/Cf16KI+o9
         5y7BtWYbDEXFnlXvq1o36xrf8sJv1iRfst3sOa0lgQ+IOPBrIjSiPKvezEGWI2FnvmSa
         H7VLSrOWiNzTGrEb7e9yhfj4Y/5oAWE0FxkeWQcCT1yko3TnX/P+zE0IPkb3u3cMHAHp
         Vr6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709212032; x=1709816832;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YT8Y/OHXUcXm+kdXDY4DIbb1yI62HJpje5eqK4s6t4U=;
        b=G0ztUmnxzhpNUnFZ9RDLr/cLQlVhBCrIyMhE+8pnwkNtYTMoXfHRodtiucJeKE0LFq
         pgJOtLKytA14O2sM4ricC0nAySEhULhq+7rxNE78LULarwRplDxqR7KbybnKEBbQUTpG
         NPKV2owlMaXIzQRCTFm0aHKuw6BQflgQjnQOGCLCBsclaQu9InLRfG9lDVfVXzM7VEfU
         p0Xa5J7KOgPKv5rQcCdDcGaKv0JGuJ44sqv5rx6rCa6H1NKaLHy8sng72e0y2hlmtZLP
         eGMRr7eKJBo6JDVzo2dXjHet9Ye1zvXeaIBNjikUmXMt7ZrQd6FJ28Yz5CmuRDwHh79G
         M0Rw==
X-Forwarded-Encrypted: i=1; AJvYcCXQuhPwZxdLabwIQsdXkE1ceOIIeXLAkBcJTMxH8HxpkjQ9ICv46CIsQySgQxksM885kmRWVL6xIsMDLZZI3xJ9KbpY2teJvXG5z+O8yA==
X-Gm-Message-State: AOJu0YxSHL69/vcSJLQht3oW+IW7V8F17rSrm+L7lJApOn5f4G6qIcv0
	LDW7owTWVMCsp0M6JtEZJhpBdieKPWqcc2fqBydzrd43bxQXIByFX/fjjsSgarE=
X-Google-Smtp-Source: AGHT+IGI0oRvCFt0+el7beJ3sqJpYurlpJRXVhgZ8B7Fm1nl0mXZqOm336eD0Jk9r0hr/gWwN+UFVg==
X-Received: by 2002:ac2:5f7a:0:b0:513:1a44:9a47 with SMTP id c26-20020ac25f7a000000b005131a449a47mr1225576lfc.21.1709212031850;
        Thu, 29 Feb 2024 05:07:11 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id t7-20020a05600c198700b00412a38e732csm2071473wmq.35.2024.02.29.05.07.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Feb 2024 05:07:11 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Thu, 29 Feb 2024 14:07:01 +0100
Subject: [PATCH RFT 1/7] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp: Add
 mode-switch
MIME-Version: 1.0
Message-Id: <20240229-topic-sm8x50-upstream-phy-combo-typec-mux-v1-1-07e24a231840@linaro.org>
References: <20240229-topic-sm8x50-upstream-phy-combo-typec-mux-v1-0-07e24a231840@linaro.org>
In-Reply-To: <20240229-topic-sm8x50-upstream-phy-combo-typec-mux-v1-0-07e24a231840@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1216;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=gUhmXpw+40NNDKZNzyOCoORFZuCEOLT0lZh0KAJVHT0=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBl4IF7kYVKYuwXLg3gaQZ28Ht2PLc+SXmc7J18PML8
 11ZSL6iJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZeCBewAKCRB33NvayMhJ0YGcD/
 kBQWdidfAXzh48Vrdai5QHAlUStkyw45ln9BSqmR0P6Wb00UqLymCONEjPKSgM8Hg2jxxUUpdUfNv6
 75ZPLweTyFFPjVzqmY5SnhbFryhkkYAyyHjRfO8XvILuHpBxW/cdom8FiU/dNrticUc7LhkjBIPqmr
 x/nCDnb4kOgXl1lZBiSQgNrySA3FZ15Fw57yTS3QOer7+cpnJv1yR+ZNUBZzVTDPIBCmOzWdWIxE35
 D2VkUz3BddkAWIq/pgmAhRdvzSrExJxFaX+fOEWzn+licnmR0k2F7+JCCQgjRFUX096rWbrPfkS9dn
 H0OC/uNZGMsEdngZYO7E9gf60oYqIOy+JtdyURs7x8WviFuf4tmjbzfEKRPo49+JYs9juh6WcuMA5v
 EB4OZaD96YUJ7QkGHzuT2H7GogusWJUp87dVFhKJkcmqQ28pUttZ75fOGZ1DJ5P9zHWQbDXNs/Sg4Y
 eKesY4z3/n7bIcbJ/80u5hJ3VYQUa0k8fOyfhXJUuWage4DB+blWUjKhom2FFftWLGBl44WI+gbFP0
 HwO5ut9YFkIPvZpBAtkCv8IuF16O5JNxih7+jVJgwYj4v2TBDS8bXrvFLnHAQ/9Q/4MYuZGo9xVxvo
 dwucpiW4w5+FRfn9UZUmhgkPXf8Dc7IB0ekRVrTX/aE7YP0XTcQ22PluEFog==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240229_050714_352534_05854014 
X-CRM114-Status: UNSURE (   7.40  )
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

The QMP USB3/DP Combo PHY can work in 3 modes:
- DisplayPort Only
- USB3 Only
- USB3 + DisplayPort Combo mode

In order to switch between those modes, the PHY needs to receive
Type-C events, allow marking to the phy with the mode-switch
property in order to allow the PHY to Type-C events.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml       | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
index 2d0d7e9e6431..49c6539b9df0 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
@@ -71,6 +71,11 @@ properties:
     description:
       See include/dt-bindings/phy/phy-qcom-qmp.h
 
+  mode-switch:
+    description:
+      Flag the PHY as possible handler of USB Type-C altmode switching
+    type: boolean
+
   orientation-switch:
     description:
       Flag the PHY as possible handler of USB Type-C orientation switching

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
