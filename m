Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7AE0BC27C46
	for <linux-phy@archiver.kernel.org>; Wed, 25 Oct 2023 07:34:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=duMNzXKL9KlQn8mMXXf029bTM2qHhDnRSto8YljMKpg=; b=HtD1Qq/FyDxdJv
	SaAhTOOWFvdLj8dcraq7axgxmRYf5zzH/GkQoP9noRhEFiqSN0vFP0d6JVLKywoBA62gNJTk4HtUn
	Gh7G8oBcO2pAfT0yp81NHpza+T347JnDakveu9TXiC8ACxa/hQB7GmOX4EEFhhvOSe65jrk7Ves48
	YLcI4THtPS2FfqPI94ND3X7ssFzmxLH1Nx7NbXazVBtGBUSg8dGROTHvDEbWrWkGMs96VvBhcIeZj
	dTrtevhppi538BDVE9TQ/UtLbo4YcRJWlApiDM+cr+fsUKv+92lNFxPfPbN3Ow+TtwHrfFrlz6jlE
	v4Is7B4JdlXi4eC8STUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qvYPW-00BaZQ-08;
	Wed, 25 Oct 2023 07:34:38 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qvYPT-00BaWd-2W
	for linux-phy@lists.infradead.org;
	Wed, 25 Oct 2023 07:34:36 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-4084095722aso43391475e9.1
        for <linux-phy@lists.infradead.org>; Wed, 25 Oct 2023 00:34:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698219273; x=1698824073; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=s1uFHDOXASZ5BH047ZzhsjZxg7GSsbR+WOPLJZ6Hp9E=;
        b=yIhXiE90fqmpC0eIOZIB+OI5CqEp6O96c0X7z1hWwTyxO8TWCJatOWBhGjBrMXHEe3
         ZlDMlB4Q1f3gHUrpP5wcph/bPyWhC+jIPOpYGQS/8LHoTSaW6p+KkwPNXlQd30patcFY
         z1LhRwmu4Z3PZSBIy1b9QTx6MXHlaHmmPclH5gyhdkRnS9X6tixX73WsYJULwPFAc1dX
         VCfGv/j9Ll57U9cVmn0xVtbvAulo6edMz7qmCn4j1hmZkWB8QXiDGe45+cX/wkjx9S0b
         GOz6Vls3Lgeb1LHHApkKSvl91aT/5BINFSbLbG0Cm5JPc0d1ZTVhpxQnZbGU039S75T8
         UpEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698219273; x=1698824073;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=s1uFHDOXASZ5BH047ZzhsjZxg7GSsbR+WOPLJZ6Hp9E=;
        b=GDHa3wGT3hgOqPNinLxiqLeST7WoFMBiVo/2XbMoU3NW4qO48kkBL1bsRY/camZ/zF
         5/wWYpwg0cgoiu98HJyYf+fcoPjRE6U2x6v/YjO1Kb9vGy6D3g7E8VaXR/BSUkmDBXcn
         C+LuVu+gL2Riy7gdeQrhHXaLYgaR5vkVjY0f63XyG/AT02E2cWbOshPQO3+yLTUJI8Eq
         ckLvDvhILVmvfiDYLEc5ZaFuYvnN3dpaDAGPUKMVv9khsuKc0kdOWsY0P4QbazLet9iw
         YzHdENxsaX2ajD4ogk25SJ28IBDCKIja33QaesQ5O7yf19ZyAS+7ueJuhYdv83TiYZZZ
         BLkg==
X-Gm-Message-State: AOJu0YwhzeKLmXt3SuSinhMJmvVDEqpfm4fX29ur+STKfTF8Ki3FcfjI
	YZIPjyjvdaSVUnW0QADBzopM9w==
X-Google-Smtp-Source: AGHT+IGJnIErfrQCVfiSkmXIczIEjoeTOW46/Ip+i3/h4jKFjegCr2NzuU21K8KRzPu52K3Pt85S0Q==
X-Received: by 2002:adf:fd0b:0:b0:32d:d756:2cc7 with SMTP id e11-20020adffd0b000000b0032dd7562cc7mr10529309wrr.58.1698219273685;
        Wed, 25 Oct 2023 00:34:33 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id y7-20020a5d4ac7000000b0032dde679398sm11431392wrs.8.2023.10.25.00.34.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 00:34:33 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 25 Oct 2023 09:34:26 +0200
Subject: [PATCH 4/7] dt-bindings: phy: qcom,snps-eusb2: document the SM8650
 Synopsys eUSB2 PHY
MIME-Version: 1.0
Message-Id: <20231025-topic-sm8650-upstream-phy-v1-4-6137101520c4@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=852;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=8xmswTD2ELDmxMqIqnHD3lBOLsWcHOrJVpLKjghNNJU=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlOMUCZ4bwlw5KtKD4yj4JPbB3O8CUhPn6Rd+hvv09
 59F2Xy+JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZTjFAgAKCRB33NvayMhJ0ZeIEA
 DIE8pSKteDYwap9zVfyGM9gWhGOQ6owg+5EWGZ04w9Zn9jH5ssQ22uwMKNVxWKzFH4ROqf0MZs0p6/
 Km6aG+YiT0VjsKyLXARUyaEB8o9xN3R7bNVGLhiah6pkHObEc8nfU/gvxo+n/2nncRJoW6BGN5WpPq
 xvH21Q1pUHpS/oGLIG5ETE/HlE3IYAh2UHlmm1AZUJtSL6vzmGpflot3puheg6KuGRc3PIJ5IPkrD/
 JC+KvfxtIj/ls/IXY37rPc+snze4AXMqIRaexIOur15z30EmzRhlT4h3+9/s/X90QRWJ5KSrtF+ig3
 0UTyVQJvu5pnGvyp+rownBSKQVas//MM0qa4UkEOqflm4Bx1ifZXcGdv7EYjMXo2basT7TdcCzyAIX
 r+X4LrNTiNTp0MFEeGqq4SZIbyME4lJlFE7eykPZXi5R7evISN1zyP+DUoSYKCQcnk5EW7aSjJ84Sh
 GMcAOHJoJ0DRhBL/x4YfRVpS4OyaEORzhqUwL5eiHoX1G6n8FlWn+uGOjfYlxDVmAfvCknXLOIFbEy
 Cxxi4ULZYtWPBkLapwWC+wmwVjYNpSsFBzf5vsMQEylulruTcvXbQXhaEjlTu7gLiMKxQn7H3rBuyp
 QBHyUkFIrk1e0+qNY0T7fhFPtwLiKolTu2/nEXflxsrLEScRD3zyHM+5yOtA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231025_003435_818568_824783AE 
X-CRM114-Status: UNSURE (   7.88  )
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

Document the Synopsys eUSB2 PHY on the SM8650 Platform by using
the SM8550 as fallback.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
index c95828607ab6..8f5d7362046c 100644
--- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
@@ -18,6 +18,7 @@ properties:
       - items:
           - enum:
               - qcom,sdx75-snps-eusb2-phy
+              - qcom,sm8650-snps-eusb2-phy
           - const: qcom,sm8550-snps-eusb2-phy
       - const: qcom,sm8550-snps-eusb2-phy
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
