Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1597C001B5
	for <linux-phy@archiver.kernel.org>; Mon, 30 Oct 2023 09:48:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VKQFyFYzyAoX+pgL3CPsmw+1gL7QmJAepHXvOmgk4aY=; b=uHv2//k+3uY199
	y6u9fs4LunDw3edxFLPGHSLYemp0GeyRzFG5hCHe6JcKZVtGyd8nLh95d51APzi/KT1XdZz7sx6aL
	IE59huNFssbnZF+SIG93ex3WA/ACk8hjsOhji+KZtqVHbo6o6dR0F+JlArG+M0+SMitq7D4nvc1cB
	vEK1/uhfmJ+docr6xoWVIfcHc2xvzUk7C8NvRN/zWp4RL3Z67W9qFjD6QzVOwYCIIfz2xiaXyPFys
	yOKNgenvbsxWMl0FgTuD2qZjBv3OYiSGRRhkZaYnbeVUipfeSXKFyQvRroX70iF8ZWEu2WAhrV74z
	SUjcdojgOzWdxy/+G+ug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qxOst-002w6T-1t;
	Mon, 30 Oct 2023 09:48:35 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qxOsn-002vy9-02
	for linux-phy@lists.infradead.org;
	Mon, 30 Oct 2023 09:48:31 +0000
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-32db188e254so2934261f8f.0
        for <linux-phy@lists.infradead.org>; Mon, 30 Oct 2023 02:48:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698659306; x=1699264106; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uCuSfSLgFx8Z/IvwoSAQd+YCkV42twFc29IgX5SJkTg=;
        b=owcPDn3lbX1dCnb63CeAXa78eDddX39GW5AK2c04ZSb7H/5LAZceFSYuGTVi4DLkXv
         SpgB2vezPjlx+2umG/3FdCT23bFSysC1DAhIMQFHYyATmxwefW3TRxVUeB8MqOaFflFX
         2HNOnSbCl5LrqyMu7hv7g2s+dc46TsyF/NyVGGbhP6HjxJ+hfTAtNIHfWz9yC/QdulCk
         5vpcsV1edngltL6+aQ6n7XTerurA5FRWyWpqhBMHkdAX1rhVZ/TnigofLcLXvbPlRV5x
         tDheeD+FfK0S0KH5DvXaikFmcZm8fmvGz/gDFYcXFRg6iSKmh1E8bCpd1XTamzNdvyGX
         nfXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698659306; x=1699264106;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uCuSfSLgFx8Z/IvwoSAQd+YCkV42twFc29IgX5SJkTg=;
        b=TEWwLYVkphSADaVa+xYOSKwQ+MzNKgZwOgO+C/Qv3+nzap2FaLyBlt+gWayVpEmm9P
         t2q0DmUfeztuFtT4FkA32wmiWX9lGpee6vMSQyb4fPje4/eySDzONfcpYI19+wK8gebC
         24fzArwD39TMhzfBe1PV+A94ASO2gPR8xjTSzVxB9vSt0B/cazgVoOcAcxN6wp5cxE33
         wvzOixoIrsm464EZNFaWoWPNeEhi8zed4FsmVx3z7vr1cNFH7OvNecBrm8f/smmZoQpQ
         o9mRzWt+IATHi0EeI0JtEbdN1nswRHx6y2Ss2EjOX/cA610kzyLvpjiUVazvDBwU+tRm
         bZOw==
X-Gm-Message-State: AOJu0YyYaTqUxAjjHt11BGEmD7qIV8apsUY7GTnsx7O3mgJc4V3SzidY
	n6Ev/jkgM877FceV+IRqHQfOOA==
X-Google-Smtp-Source: AGHT+IHW/xU5Ij0aGLUm73LSiJoZHAEsd+ik2nIPYqzPQsf0fl7/4XS3gnokOk2EzQoCAHfj6y/kpg==
X-Received: by 2002:adf:fa85:0:b0:32d:a221:446 with SMTP id h5-20020adffa85000000b0032da2210446mr6682171wrr.59.1698659306186;
        Mon, 30 Oct 2023 02:48:26 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id x14-20020a5d444e000000b0031980294e9fsm7854256wrr.116.2023.10.30.02.48.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Oct 2023 02:48:25 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 30 Oct 2023 10:48:20 +0100
Subject: [PATCH v2 4/7] dt-bindings: phy: qcom,snps-eusb2: document the
 SM8650 Synopsys eUSB2 PHY
MIME-Version: 1.0
Message-Id: <20231030-topic-sm8650-upstream-phy-v2-4-a543a4c4b491@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=919;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=uDr4gwg1jv7yeRi5cBz8xYb4ZzzFE6+VBH4HpIqP6lE=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlP3vjH4uGW9TyY3ekMitgroXCau0sfpQjVnZfbqiH
 yJNM9fqJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZT974wAKCRB33NvayMhJ0WonD/
 4rK2+ac0h/7aAFux75W9E5oGIohRphOpiw0/MhpGXzOgcKxAHhIER/vVWUFv0qv0jcTf/vGSymHo+d
 gCfpsPxZWRjXBXQ4nv369sLAn+jb8+5ODwSWR+khqU81ODLRRe6WskynZ2NMzMFX8JmBzfhBbnbjYI
 wt7efHKzmEGhGXX2itP6f6xKSWINRCWFMrEky2Qpp27bgCGDgXiWcZd9FvgZfpfz9nhEl5E+SKPeSg
 olKaDv0QyNjAk9TM1OSwEMbB3GafzbCK7xLk+QS1rTuRPjWWWpfiLLCLbHb++5mYCbANSyqcK1W4wr
 heHaxu8qacQfD8YoVZWAjndiZQSOmzwrfWgnFmfBjzyY0dj2e077PBFygyd9/qRZmbTQ8Bmt5X7WPN
 1lsWVAMIRMUHLyjCaNkp8Ho7KnXd7mYYk2IkKmbSzKW+r26hvPTtDtzr80JDswjH06fL4R0oSAPePU
 nKeAUGbfp+aAKWXRtHd0479s6o0WWGyml7MygMWH8hP4x2Xw/LSokngWogAkzHi3duM4sUZ9eIeM3d
 fsLZIekuS5cuZYjY6SEd30edMT/C/xft7nwxSmPcXGzVg6p4OOkEHLiYTCribY+liJUZ0jF1c0SdX4
 VKR98rpQEOhYBOFGnMImQkKFcBzt92pM4oNmoVcQdyPUzW0Xro8FqNTX3FKA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231030_024829_079154_B7A654CF 
X-CRM114-Status: UNSURE (   7.96  )
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

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
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
