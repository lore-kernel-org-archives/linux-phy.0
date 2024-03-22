Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 324DAC47DD9
	for <linux-phy@archiver.kernel.org>; Fri, 22 Mar 2024 09:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VRS9tThbhc74+ydiwkJt+Nrj9kCQFFIgIHKR72D0aeE=; b=LUIA1J9HYCbC8F
	SqiM6CO55dtvZb8Pf6viuuD3LwQrFdj+iCG8uF5LnYR/oQ40WpyJ9Zt1VOA/pCGEjyzWypEQDnGla
	oK2181m8/RvkjQuGtU8ZgJ5W4txM8oLfBdZXChiAPBxswv7mgrflHT7bjPt1LvWGDT3P9rFLKX/5e
	PLmZJN8dtBtN8kCtC0b3GrzSUECaW38G54jsHvszYDpatUEBRuXLbZoSdA1R6W5OZ5fNsYY/fNK4L
	ZBF2rdVwErKAzp49oP9DS/zJoVJK2n5oYFey2/d3L/BMtZTiwAusbhBf0oXNC4OlQSbX1PdGGDAxw
	oioQlS9wcSymRCOPHKJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnbQK-00000006dW1-3Bsq;
	Fri, 22 Mar 2024 09:42:52 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnbQH-00000006dTs-37h5
	for linux-phy@lists.infradead.org;
	Fri, 22 Mar 2024 09:42:50 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-41477211086so11806855e9.1
        for <linux-phy@lists.infradead.org>; Fri, 22 Mar 2024 02:42:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711100567; x=1711705367; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SCVeYwWPRSz03B1OM4VXzQEUZALrlERjZIgaPDXj1aU=;
        b=kNZKI58INSelV2++JUDswatR7DhfIdntu1TVW9Z7Mh3buucNiQjJSW/crFk4Qn8Hfy
         DkCf1WrEHujCtUHfjuKfGYEw8lZMll/8h15yrqRq5JgJalNg1QFDfyijxyTTW7H0Ejw4
         yGYOobM7hHydVdKxPhkbsQbYyWwVZDEsoenqrpaQq5I4gHegaKHQ9WZymqryZR7+vkCx
         AzTuif6M5XhfxYwrPvu5TmDIfHGGCf8x3g52hVArEuZlnNaLeVDPszwCRU0FymX5U9r0
         1q33EeQyrdpGviXrbLWWdUMaf8KzTaKT5Wdz6PWRuX48bK8g7d7xXD+ujlEEaGMe4nA+
         7UXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711100567; x=1711705367;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SCVeYwWPRSz03B1OM4VXzQEUZALrlERjZIgaPDXj1aU=;
        b=uf5Cujmjy6P3rmI/vqCWikluCWTXcZ0H3jWfPOQ7/IQFoOF28G6gIeVOYEJOvjSufM
         6fE45P60Q7A8nAmPyehFvG+6jxQ4Fk9qq390DULkBzpj8G2wz36Kx2wtSoNPRIciiI6/
         w7cEvIS+vWypkBmiLUBcpXssanrJoYfW2V6UsmJ0nDOC0oKPboA3mZloho6eoOc++CC3
         Gmv+jYA2TMrT8n8byRe8hJma1zeb/3Ey9OgOuzb0y8vFBi92FPTEdcsIWhZ+GpUQGPz8
         F4dMcDn4IXeoLV+Z4b62WbimKQz2CxfKkbMY/1CbOEtL51YLF7eGvMUYSSTbnxhURC2S
         +ucQ==
X-Forwarded-Encrypted: i=1; AJvYcCW4QZDt0+maQjq7Q8B2mlMV2wMR+rE3b2AImkaPI1tGOxqBAzvLhxFqKnjKFvorvH+J3ZUOpQu47jNLu1Ar0O8YH7xr2YyaiLp3FbrdRg==
X-Gm-Message-State: AOJu0Yz6gkJLhW4H+isnfVGvMvJvB0meczrEEDNs9I9jh6m5Z/IdKC3t
	aLSZ9oZCD8cN595s1V9NNP3M3EwAKnXEB8YK3Bb2bqbn0AJqX3uGgxH1OEHqhGFYhYopmrWEdSv
	hKE8=
X-Google-Smtp-Source: AGHT+IHuvX98vufxnj4c0MPkLoSPVwneu2E3xOT/4wRhqnWE78lQbmyGtmWzSybZTB5mt/SGHh2JpQ==
X-Received: by 2002:a05:600c:3b99:b0:413:286c:4fc0 with SMTP id n25-20020a05600c3b9900b00413286c4fc0mr1244065wms.34.1711100566636;
        Fri, 22 Mar 2024 02:42:46 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id j9-20020a05600c190900b0041461a922c2sm2547845wmq.5.2024.03.22.02.42.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Mar 2024 02:42:46 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Fri, 22 Mar 2024 10:42:39 +0100
Subject: [PATCH v2 2/7] phy: qcom: qmp-pcie: refactor clock register code
MIME-Version: 1.0
Message-Id: <20240322-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v2-2-3ec0a966d52f@linaro.org>
References: <20240322-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v2-0-3ec0a966d52f@linaro.org>
In-Reply-To: <20240322-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v2-0-3ec0a966d52f@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1993;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=Kx4iMHJO5z5RGLzsJX88ltZJ+Wx+25o5A/I8DsYjDng=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBl/VKRV3QKxg4v+M8JT2fAbX1GHt2A5QnD7QKumt8Z
 s4yRYgKJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZf1SkQAKCRB33NvayMhJ0RfpD/
 4yoc9hDH+2tgpOUGvP8Jz8d3R1kJ7/9B9wDT3JPRVWRiBiP/dGO1eJl/Iwj+DgYHugvFp+iEPuCUHA
 /xOMr9SDEZy85xLhmLDBYZCHAQZtLyoYNi02ZwyHJ+cJM1MGMzq8H0NFLoDYVWxVkYJWzVAPOybBwF
 ojmpu7U1uJSMfycX6t9LfFetWI3+FUu0CZ+jchqV0vk9Io9hUEelywc7t7egRzf5r9XombNqjEaARg
 7MIC2yGMb4iC/0T8SOf8fE2w80fzJSgOQuF97GMuEsOCTagBoZTnk6bI8RgKoLbm3X1UewEQXIumaP
 gw975Bfz02lsG02mE+eeehjA5kiZ8cw4/CUysHJbBMFtvXaCV2pp1ldMpt8l5lgH//+lJFw9/+Cryn
 j5U9fJxmqF0Si79c1OPURBBqDp1/eluNm7MXx6eDBQ39NILu7Q3qtPolPXyhlQSnwJIz0+dKWkyS0m
 Zlc3vsrtaoVF3kKYoYios8inatr8RQ8gRd9t/FisXA2OXBU2ylgPMVaavxpeyaGxqKGCuk6g0/o/51
 3w6Z1plxH2RdQYlv47OYSI0wae7mKQjttKsd/Gi4opqjTbpWuOeoYaDcakKNAblF7ySlLHYz1Ck616
 N082i3ZTsAm26Wgulfz3NipQxmoU85imns6bilNEwAMOxMnuoxLnT4qvmfYA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240322_024249_828379_72C11AFD 
X-CRM114-Status: GOOD (  11.38  )
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

The PCIe Gen4x2 PHY found in the SM8[456]50 SoCs have a second clock,
in order to expose it, split the current clock registering in two parts:
- CCF clock registering
- DT clock registering

Keep the of_clk_add_hw_provider/devm_add_action_or_reset to keep
compatibility with the legacy subnode bindings.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 15 +++++++++++----
 1 file changed, 11 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 8836bb1ff0cc..e8da2e9146dc 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -3664,7 +3664,7 @@ static int phy_pipe_clk_register(struct qmp_pcie *qmp, struct device_node *np)
 	struct clk_init_data init = { };
 	int ret;
 
-	ret = of_property_read_string(np, "clock-output-names", &init.name);
+	ret = of_property_read_string_index(np, "clock-output-names", 0, &init.name);
 	if (ret) {
 		dev_err(qmp->dev, "%pOFn: No clock-output-names\n", np);
 		return ret;
@@ -3683,11 +3683,18 @@ static int phy_pipe_clk_register(struct qmp_pcie *qmp, struct device_node *np)
 
 	fixed->hw.init = &init;
 
-	ret = devm_clk_hw_register(qmp->dev, &fixed->hw);
+	return devm_clk_hw_register(qmp->dev, &fixed->hw);
+}
+
+static int qmp_pcie_register_clocks(struct qmp_pcie *qmp, struct device_node *np)
+{
+	int ret;
+
+	ret = phy_pipe_clk_register(qmp, np);
 	if (ret)
 		return ret;
 
-	ret = of_clk_add_hw_provider(np, of_clk_hw_simple_get, &fixed->hw);
+	ret = of_clk_add_hw_provider(np, of_clk_hw_simple_get, &qmp->pipe_clk_fixed.hw);
 	if (ret)
 		return ret;
 
@@ -3899,7 +3906,7 @@ static int qmp_pcie_probe(struct platform_device *pdev)
 	if (ret)
 		goto err_node_put;
 
-	ret = phy_pipe_clk_register(qmp, np);
+	ret = qmp_pcie_register_clocks(qmp, np);
 	if (ret)
 		goto err_node_put;
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
