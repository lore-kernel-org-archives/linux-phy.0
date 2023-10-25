Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA5A4C25B70
	for <linux-phy@archiver.kernel.org>; Wed, 25 Oct 2023 07:34:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UkX0z8RAzYyfyv9OrCpAmy25oFgQ1XKcMQrU/TeFW7o=; b=tngb93LtT8lZin
	NxdwWUuqazI+/k0NWdmi4hbNhegZ7eKy4V9ayURwVEj59azKxPkFTd3upcewjlmBHfMOmGe5iX/2a
	ehwgVFsO5IvPE5zbXw7eClM4ZrKr18K8Vgcz7LQCoAQAtWCqWzg4SDtUBilE93qBdh6fJw5sEtCW2
	11dra5yBJYiOQug5t/Ikl20PDxky6/5atxJJ9Ow6yj6dPBPGn5t2+Ib3uIZzKAGlXosdHfYfUYuP5
	mlv7T9p5UvRHLP/QZZi27V+oV4flf53RjFXzqXUeNd1FCcghLuJDe9BZNov4Rg9cMAhe3OfinH6TN
	fDmoE85jThp7/ir89/2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qvYPV-00BaYi-1V;
	Wed, 25 Oct 2023 07:34:37 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qvYPS-00BaVa-00
	for linux-phy@lists.infradead.org;
	Wed, 25 Oct 2023 07:34:35 +0000
Received: by mail-wr1-x430.google.com with SMTP id ffacd0b85a97d-32dcd3e5f3fso3709962f8f.1
        for <linux-phy@lists.infradead.org>; Wed, 25 Oct 2023 00:34:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698219272; x=1698824072; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pVlwiJkgEOptZyxgmNkYyImFRkPkiQTz9Ix32yztC1Q=;
        b=WoKOFgZjxUi2vE89GgZfECWNtactplLwrIJQSzB/2ZVRcQIdpn1Zi6NKpdKQT97kEq
         q4+6NXMmwVGbZ54WytRFO9bjEd/ZI94aZiXRS6dLj4q6RuHPczJEI8bgMOJGvxOxaFpf
         IpNnfOgO5M8jBmCX+FeGfYjO2YYLsfDQPl2ko6Gvd0bD47weA2uuKQ6WN8OO9eYoS4Dw
         mu/oVlDESFOqYzDL1B763i9l9YC9tt414P2RONwKNBZl1JAaHRllpZf9UCndaLTQJwy7
         vfeJYuLn4I7EYRYLNQ666hqjexMtUJfl5v69tLuTIvWTfk98RbOsSV6N4lZh6aobr/qn
         fK7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698219272; x=1698824072;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pVlwiJkgEOptZyxgmNkYyImFRkPkiQTz9Ix32yztC1Q=;
        b=SzPuKlewYp6nMIged+XptzDqugiPgkG4gfYew1TK/zfT5uHGOKhADcgpE2b5bS7fWE
         seTnAiQ0HSLIYl88ZYL/EwL8di7KxOJfG3J8ySxryldtV+BrLXFizwqI0mvqoMVEHfEo
         0dvWaPSLKZAdiZoc+vJ3Xm3vlDRqvkXnfug25UX1xzUKYc7WQGadYWRG4Qjy1s6bSaP9
         U4KNDz+0sQ2a8MAWmWWsi6ROeCOdS7AzsIhZy2Gm2oO0FF/OLK1maao2M73GYVRmzKS0
         GxuJ5W6LrRnxoD/MrvVREAjrY7dk4DGf7hKWqolwIpxhWDJ7Rh19T7I3+DBEyz45hNNn
         dcsA==
X-Gm-Message-State: AOJu0YxBEQ3g0S+QTsTa8fzpwaicWralai2f/DzjnO+JZdY368dfTQDP
	3kVifL3LdU2j8A2QJuvSJhA9Lg==
X-Google-Smtp-Source: AGHT+IHAGjKxePRM19PhYeF3oCHG3b9njF0cJVMtL4PGOHKkoPvn68B6+gWqFkZVzVFHyq/HzEnKkQ==
X-Received: by 2002:a5d:4e06:0:b0:32d:a686:dedf with SMTP id p6-20020a5d4e06000000b0032da686dedfmr9812039wrt.57.1698219271597;
        Wed, 25 Oct 2023 00:34:31 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id y7-20020a5d4ac7000000b0032dde679398sm11431392wrs.8.2023.10.25.00.34.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 00:34:31 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 25 Oct 2023 09:34:24 +0200
Subject: [PATCH 2/7] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: document
 the SM8650 QMP PCIe PHYs
MIME-Version: 1.0
Message-Id: <20231025-topic-sm8650-upstream-phy-v1-2-6137101520c4@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1420;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=Yg0TVyiYsosBLzL1a2yrBPOz0lVUOibz3FSYURBPVy8=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlOMUCUf8sE0aibMiV0kIEPpnQdLNqym/SMs4a7+z3
 YBq+aDaJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZTjFAgAKCRB33NvayMhJ0dorD/
 4ge+60cPByERIZrdK4nSqpOR2twsY54BM1cNi25fPEnXeQ1WZ48honBLxai5rHSee554jueYW5JoUq
 pLIrM8s36DszEGrAc7S60rQ1yHLiuCYqHPN9Ctdz39xLourEQx7rxtvaGcvZh85rnQm/n0/fhTYox4
 ea4YoTlsV5tUYKEiAh8pkN1/ZDBirFWFKOO+UTUhDDnum0+yxZyvsRGYmzkH5TyFV+sK+hjJWGRKwM
 Z3oyrcHMuoVME4Wr0LQw3gRWv2XBiuYy4vScNd2OpZx4pIRJriM7LHuZRAAlAPAWQl7WOb5l1hTkl4
 BkcTbH0K95N9uQ7QoY9vyEFb/cM4pUfDNU+WRbZW3DVtlMI1tjTHW9waNKGKPClmAHkIPeMUefND1r
 VYZ5eB8eMb5RQufIECd5EoDRS1fsdx+9SLwVLQ5DdiyO3MOuu5U1dm1sakb1RZ8QGPlV5HZCpYaI+1
 UZ8sXCyaa3UDaRWk7P4ecZzkXEuIojHzrWxgdjdhVvBPkyqexJXjD/jsVCX/absJmtcij54THx7WgT
 UMkw/22VomDx7hl2h6OaGnFqN2s5JH++RpeaKOK4q7v2HOgMNU76wPZjOIOSMBq5OZj8cRoHh0+Q/i
 FjKnCAZLpcsrnefQvYx5EuS4L9qO4BXNd6CQyMlA7hOMuVKz6Qk9xy6NXWLA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231025_003434_037135_D6AD85B1 
X-CRM114-Status: UNSURE (   7.43  )
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

Document the QMP PCIe PHYs on the SM8650 Platform.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml          | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index 2c3d6553a7ba..6c03f2d5fca3 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -36,6 +36,8 @@ properties:
       - qcom,sm8450-qmp-gen4x2-pcie-phy
       - qcom,sm8550-qmp-gen3x2-pcie-phy
       - qcom,sm8550-qmp-gen4x2-pcie-phy
+      - qcom,sm8650-qmp-gen3x2-pcie-phy
+      - qcom,sm8650-qmp-gen4x2-pcie-phy
 
   reg:
     minItems: 1
@@ -147,6 +149,8 @@ allOf:
               - qcom,sm8450-qmp-gen3x2-pcie-phy
               - qcom,sm8550-qmp-gen3x2-pcie-phy
               - qcom,sm8550-qmp-gen4x2-pcie-phy
+              - qcom,sm8650-qmp-gen3x2-pcie-phy
+              - qcom,sm8650-qmp-gen4x2-pcie-phy
     then:
       properties:
         clocks:
@@ -189,6 +193,7 @@ allOf:
           contains:
             enum:
               - qcom,sm8550-qmp-gen4x2-pcie-phy
+              - qcom,sm8650-qmp-gen4x2-pcie-phy
     then:
       properties:
         resets:

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
