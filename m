Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10805C001B0
	for <linux-phy@archiver.kernel.org>; Mon, 30 Oct 2023 09:48:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DIUZXGfma7J3lwK2uxlUxyx/KeNKpJcZTVT63t9ot5U=; b=OcPhjQHPmP1oXR
	KcaErWuMESu3bYRxoRHZtzATy+DQIWPkYRAOd2AwhT1FT3J1E+E+lRIWZQXFWfSQO3ckOjdy1odWL
	bhW9QeQJ+KlcvASrIOwe+igjCfeTcy+XxYJoBvfFxr9acWkcVlXbbE6gO5jUSzAhxWwNfNSZAQKBK
	K46un+bvBgMYTRTAbYZVnc5y+2J3r36ISbEdezlRJ1A8mt8vkzPBvz7nWY2J13FF3/YaEsZK/Tna5
	bvOksMs6Ap15wFWZBZ1TKLlwbVyHHaYygdExTcSgSnaTVr6Yo/U5L+2i/O+c95U5ucmQ85d+9//4V
	3x/BYL28RccG9ekmxfcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qxOss-002w5K-29;
	Mon, 30 Oct 2023 09:48:34 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qxOsm-002vxG-0T
	for linux-phy@lists.infradead.org;
	Mon, 30 Oct 2023 09:48:30 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-40859c466efso33288295e9.3
        for <linux-phy@lists.infradead.org>; Mon, 30 Oct 2023 02:48:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698659304; x=1699264104; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uDI+ZTdLxSi8PWzv3r7yJYlJcfM2WG+b7IpLA7iFA68=;
        b=ZITRQqJfjUG0Vf7/kGHw0DQkynAu6g9hSwY49i6vd04znzN4xAtNjGFgwLGSr13VGf
         r+J8lhJ4UsAuHfWHrRNPnIIshicEN0EyyxwBw5UkmUE4rSzOExpim+Cx/BV2LFg8GxTS
         KjjDEzN845l9ztYYY0lnU07TApdeS2sybHAbvdO+uh5mz8Miu/9C1zQ/V4y/VdCWfxkT
         KEhfwGo3Y/P5mzYJKo7fhS0m7XTJsynFMGj1w8sPdm9SYArVOP/rGXNaGKsfcYk2ZfH2
         gfbZ6KHXbmHKADUPwAUG0OicYXHUmoGxE0lpMvRibgRmCKLedyvUBKneWqbEepNOZlY7
         YGkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698659304; x=1699264104;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uDI+ZTdLxSi8PWzv3r7yJYlJcfM2WG+b7IpLA7iFA68=;
        b=teiIn0UbthxIilBbdD3Gm/+1NDDJpgJdbKj1kVf8gTuqzXK+T3HKYDz5WIfb3c75S7
         1aZxVxvKt6qncCWm5Iu1Aqo9w8AIhiIo38HrltEtHMDveAZisoIaqauca8PaXcfXcgDl
         yHjZD8SEhKUckoAmgTLMTKpq9XXK1BPsU2O6AKvAx81yX0Zg6yg1R1u9OaxfTkO0lwkI
         j8T5KmBw4wUMGM2Qf1OWfUQRYps0woqHuKtety/iOLRg0VDhF8axTbiRFmHpspG/rI9C
         9BZTu3yNqyWi4frViQZdbQaoX02/Qfu0PQUibz+EMr8ZuaDkLAPoK6m+hhVyjlPBOFys
         qB0A==
X-Gm-Message-State: AOJu0YzrMx0cFSP8QffSBBLzzCI0/vrS+tp1UzwPc9AVBp2qqwylaq46
	3e304BIlcTBW7As64IgvqhEJRQ==
X-Google-Smtp-Source: AGHT+IGxVy46ObeiVkf63uvCsjQq/OAiy0EjFOfx1prvjWtQb871K3UduH3d6wboTtM9TJE2nOma5A==
X-Received: by 2002:a5d:6ad2:0:b0:329:6b3e:d87d with SMTP id u18-20020a5d6ad2000000b003296b3ed87dmr6196864wrw.42.1698659304210;
        Mon, 30 Oct 2023 02:48:24 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id x14-20020a5d444e000000b0031980294e9fsm7854256wrr.116.2023.10.30.02.48.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Oct 2023 02:48:23 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 30 Oct 2023 10:48:18 +0100
Subject: [PATCH v2 2/7] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy:
 document the SM8650 QMP PCIe PHYs
MIME-Version: 1.0
Message-Id: <20231030-topic-sm8650-upstream-phy-v2-2-a543a4c4b491@linaro.org>
References: <20231030-topic-sm8650-upstream-phy-v2-0-a543a4c4b491@linaro.org>
In-Reply-To: <20231030-topic-sm8650-upstream-phy-v2-0-a543a4c4b491@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1487;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=vqp0R39R6XOLi73u87t9lfEkW+pxzsrFjm3NS2YeV3w=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlP3viWvR5lAGJi9KX6YQjzgrxzRUrtKm4TaRq0jMb
 JDhOrYOJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZT974gAKCRB33NvayMhJ0aaYD/
 9l8QsLy0Slqim7ZLm+3ty/KHBzvV8Wb9NjB+ZhhYpyUH8mVBd2jzV4QQjegTM4FAiKiALi2r+hlX0m
 ufBCZWvEhbTncgFrK2PBp0TOhxrfk1vxxa6IiNKXM8qtbUg6qpIWwstJQldch1cyiBZPuS00OB8pai
 QOil/WV/qsmbZeZ3djhvFVnxmUsWohhNAzFLJJNjLqyG4s11XhYpsZ5QWIa9R7SYuQOpEqYnezvtqN
 Sw6blt0DyVpbEylhEm4eztlKSdG7ETuATvdseUJi6EmkF0sVCM9bdGLbTnZ6dNXu14oX2QN6wE6EYW
 X1v4dLtdc0M+SSWG+Zh0o3JKOl15ePP9ktWdx7xkL1OA2hHmW1CLZ3Oc30IlRSwb1VA85CA0vbYvom
 qVCfXZd5Qh2TqEw+pcUnkXVttgY1uvoY3Jd6V5NPAMlVm2+VVnWAidyNo/kWVYAVg5RsL593A3e5DR
 tOrhO72JGdOvM7e5jiAWoNYUR4u2FYk3WGT9/bGVl6cS7sOIytH/R2vYHF2/oVRNr/tUxv7dIDdxSt
 2pMisLDgoXJbs1+4vJadZbc0bmUiu7BjPUyPsC5t2W37HBuMCtTBOHy3kxrYDSYLsCv2kBOn/899cd
 hjLLtvzAT3TfS+BaX+5TBOM4/SgC1sDeg9fZe0YXazYkEwblC+oljJZqbtKg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231030_024828_190499_407160D1 
X-CRM114-Status: UNSURE (   7.51  )
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

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
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
