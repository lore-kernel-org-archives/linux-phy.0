Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7FEEBC38142
	for <linux-phy@archiver.kernel.org>; Wed, 18 Jan 2023 00:53:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WwXe2FCUwUuQqhuGgG/f4jGynrK/VFMFEWo8b8IXOCQ=; b=kRUv+cUdMzVFO8
	ntguLMA9pYvu2n7T0UeLfW79I0Dn/sS+cirPYnRwM+t6+TOUU8SAz+pFmnIqSyONP5h7RB5zRQsWm
	5Ygq6/hn9iMIoTu9TU0y8eqXuzoWGPkdFPWIlkNkWbf7pkCtlgr11e3hy7t7PMb5DeCkepPvV+z14
	vaEkWZLg+/eyRzw+b+DWgGSJQhq77SD6YiuxgaBdXbvhlgnOUyFu4GszRb3PNS1Tq50bCYQkrsPFE
	8PSpYgndzyw8tCKryqBDsAT0f4T7Avml3FcGNINCs9EgCKkRPxDy1ThqGS8qbFjvv0Gm1QgwLrl5d
	pdEizdCf1stZjhG2Px3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHwht-00GMrn-TY; Wed, 18 Jan 2023 00:53:37 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHwhr-00GMqE-42
	for linux-phy@lists.infradead.org; Wed, 18 Jan 2023 00:53:36 +0000
Received: by mail-wr1-x42b.google.com with SMTP id b5so11231612wrn.0
        for <linux-phy@lists.infradead.org>; Tue, 17 Jan 2023 16:53:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DalCKvROcpvlYWdSE2CkbjgOeJTZvI5I/bYR1P95SZg=;
        b=lUy8laUTabeuWhRq2uq0HYvvuYEBOkaYXm8HogYtOXuPPzS0T/YzhoTC+DvdLMMw2l
         EEP+jpndhZDQTM3a9V1v/yuSBEOv/LPxTVZ6y+YaS+2rhu//XZ00LFVZ/k5kAG0hDKcT
         aDQ/RVGfN0pkQuwNcgFtwhaJeT6hI9rmJwDsO4L2DyMgBc2kXbl4YCXbj7ppZCS8F1re
         BHm3N3X+Exm51/XBS7i2HWcd1rvK8fxP6qO8uoUNnta5gxbRbE5U94HtAhqxaa2TRVoX
         tknIWml9JlaauvLJtJ/+BC+3rb0vavvjYiLs/P8AdtLktOOg35CRq6AixXn2f1OKcneg
         UByA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DalCKvROcpvlYWdSE2CkbjgOeJTZvI5I/bYR1P95SZg=;
        b=O4OzmKlENsT2yqgGeB1QaE/uaGfXtQXliu04HeVQD14yQntcIdesxTQfIHpuEyWQ6E
         ZwXAv0CSkuuLUaynipr7yTTuSBsfjK8LOoGogYebwfNCkEZjk0/y5Rp80bSfm+quR72O
         PSq4XFBlQFLlvg6+WUKEqhyKRWkP+29Uh4gUVDfF+jkSMw7LLm9TlflPwLjRWwbLEAUd
         tht1UvND6qqlkyJbvEQeg5MG3p9wb0TgFq7nCP3Jbumvb52y9mgbMndhfTD2x8GBxfSK
         qtxkzyaNlrFFfeacIgnCSiEMcRJj09WZ7dWVllhS0CbLPHY3HupsdkSD66p77BAmd8cJ
         rREw==
X-Gm-Message-State: AFqh2koQmijLsnj7xgNFmlMkrOKt3FpI4xMCQhg/ZzanjY9xKQ9eKW1A
	2q7UROPvwNa8MtfVPpZNTMqyVA==
X-Google-Smtp-Source: AMrXdXsa6fqwlhsBt+oOnfgrFCzuV/PxFrYKxo8v/+NPuvbW95EznmuuPfTvqILwrCLL0czmP4PbVQ==
X-Received: by 2002:a5d:63cd:0:b0:273:6845:68ef with SMTP id c13-20020a5d63cd000000b00273684568efmr4076091wrw.60.1674003212740;
        Tue, 17 Jan 2023 16:53:32 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id t17-20020a05600001d100b00241d21d4652sm29609705wrx.21.2023.01.17.16.53.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jan 2023 16:53:32 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Johan Hovold <johan@kernel.org>
Subject: [PATCH v3 1/8] dt-bindings: phy: Add QMP PCIe PHY comptible for SM8550
Date: Wed, 18 Jan 2023 02:53:21 +0200
Message-Id: <20230118005328.2378792-2-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230118005328.2378792-1-abel.vesa@linaro.org>
References: <20230118005328.2378792-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230117_165335_177317_B436FCB0 
X-CRM114-Status: UNSURE (   8.60  )
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

Document the QMP PCIe PHY compatible for SM8550.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml     | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index 8a85318d9c92..65f26cfff3fb 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -20,6 +20,8 @@ properties:
       - qcom,sc8280xp-qmp-gen3x2-pcie-phy
       - qcom,sc8280xp-qmp-gen3x4-pcie-phy
       - qcom,sm8350-qmp-gen3x1-pcie-phy
+      - qcom,sm8550-qmp-gen3x2-pcie-phy
+      - qcom,sm8550-qmp-gen4x2-pcie-phy
 
   reg:
     minItems: 1
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
