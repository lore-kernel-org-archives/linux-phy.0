Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC3A1C0032E
	for <linux-phy@archiver.kernel.org>; Mon, 30 Oct 2023 09:48:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JOrVhNHzG/Ym3kN1u9NTfvs5HzN8hx1Ju3YXvk7DvyU=; b=yp8CVFzB7QWcpG
	gCwNT9F4/tiWO4Okk3vYYTijeO6ni+tWKF0JrNXM1CMyOyTLN4xzJc9Hbh9ZiKuokKXYPbZUHac9A
	8+gkUIzyEAAmMaOuDCcaphOpN5OwLhh5uU+jOWuUW66mHi+lPzde6q9kmnVOuJzSu+HwiowhJ1OKP
	LNQL/jJMWO4A1xSesdX2gDsnlw9tZjYB0Q+mm5nvz7j1yWnrPVs2xQeT62dY6Avw4VM26Z+RJB2EH
	Kh8Xc9VL06pHuY2JzlvBaOBDBtj0cYFjKGe8b00L4UkrbN7ysHD3a6qpbKAid2w8aA6wWXjNcswkx
	rkOEpymUvNx12Q2kOd8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qxOsw-002w9k-0J;
	Mon, 30 Oct 2023 09:48:38 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qxOsq-002w0T-1C
	for linux-phy@lists.infradead.org;
	Mon, 30 Oct 2023 09:48:34 +0000
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-2c54c8934abso59663731fa.0
        for <linux-phy@lists.infradead.org>; Mon, 30 Oct 2023 02:48:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698659309; x=1699264109; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wQM5616W4VpYt3Uuf+LKbgadEdoylnFckH0iKGfwQfw=;
        b=F3Tcyq5sMsYRhKu3M5e6rHJQan4WeTGYH79lTvdBl4pxg2zXlmevxq13292ucoQrRx
         8fh9qYOt5U3GA53QGD4dUWDSmZYog09rm9oSWCzcSyyrdwD7wYrn/CWGIfChlZSk6Aa+
         Idpb1VOBUXUjDv5nK4K7Mi+pdAG0XX1PWWvkwH/HX38rM4OPPxtnxyyS2OiCFxrz1NOL
         3j9pSWOsNQOvkwhm6ZAxxrQJrNY0b9PkgBzqZPcsrhTauId551BsNKMSh0TvZSyL1FgN
         /QsagQTD0czD8c/FH5RUfv2pIzvoiLMBpLkZofST2XIW3wfuaIy0ZtCCAyTVFPavdePY
         VksA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698659309; x=1699264109;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wQM5616W4VpYt3Uuf+LKbgadEdoylnFckH0iKGfwQfw=;
        b=q1vFVW8Rusk0iwPY/Y3dHEPBeSDjKki+JqSU2UDWhQ/K7+L3sqZLpRe7cuve1sjUQU
         n01+LzddwLnqpUP3PDr0Z9R8lMu15Vk5BBN0NsS0nFVsZN+V1oiTlxR0EfVrrhieNA+/
         ISSrSlvyA78EX6TtMDcLQlHmuFwpLQhQbLAXCfF6qtOsjaacptICNzvMJC72ujJGLTgI
         5EvxnhPuumk8f1A2DNX+XKkQeJfPrKc3/kC0Q49iZZse7zJ7UwO4PDsajU+ks4Y+Esoe
         w2oN37psZ6n1L5z5lr2MTTlMtnkC+MZl0GExVighpp0Tksop+9V/+t92ok6/xl4WiG8P
         PVvg==
X-Gm-Message-State: AOJu0YxaA4OLvuWLvoh5WwO04sCyJmcvn8Y1ZMDVhauStx+4ACNF9RAl
	Xp7201ou0kmEGzwys5Hc3ef2SA==
X-Google-Smtp-Source: AGHT+IEwwsBExwDoPhElKWqXZ5jo2UJT+EbWVeyrD2yKAaZbvCmWwcsGRiRieS0xTn3OYYsWmp7tzw==
X-Received: by 2002:a2e:86c3:0:b0:2c5:94a:ac96 with SMTP id n3-20020a2e86c3000000b002c5094aac96mr7794942ljj.9.1698659309336;
        Mon, 30 Oct 2023 02:48:29 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id x14-20020a5d444e000000b0031980294e9fsm7854256wrr.116.2023.10.30.02.48.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Oct 2023 02:48:28 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 30 Oct 2023 10:48:23 +0100
Subject: [PATCH v2 7/7] phy: qcom: qmp-combo: add QMP USB3/DP PHY tables
 for SM8650
MIME-Version: 1.0
Message-Id: <20231030-topic-sm8650-upstream-phy-v2-7-a543a4c4b491@linaro.org>
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
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=868;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=Za5suk8CkzX7Dik/mXEOJCOXHPTYwiAgMf2jppXrNEE=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlP3vkgmrXVXmBDf3YHDwYcAoiOGICGmldBybhSgCm
 bxpZpPqJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZT975AAKCRB33NvayMhJ0SR5EA
 Ckn/nIBO8v0WhjeI9FXREPxSrtrxC85E/pZ+D9lqmjrXgVZAs8qNlI2bwcg6zLCTE0gsOwKCM1iWUY
 HBnHGSyx4kTc0LGJo2GOc/h41fF0xs/O0soEuM2tq7TTHeA5hgZNvAFGmHBi9lbeTZ7TYpNApda+N5
 VaLG3jFZQjY/ovdvExCIl2T1fUfn122kMu15Up5h3xjRAUMwbQ++bGqaghY+02i9uI27ZJcONMdEyA
 QHYN2/KsApsmDb8d7+i7WoOndBLsz62LWDo7hMmfP4onPe5uCPRuZFccgzDYUmLY4awjwygzOtpg6W
 +SC4Oy1fRc5oGHY7WlSsPvcr2pShnVWvSXxBstCKY/qqIfb/Zfg8vRuxnTIKJpYImhT+aLMw/meWus
 Ub5CBGxWU2KHlgfMMk1wdOt9UUMdp4V6iTF6ZG52AIm7PoQlrhA8rQavz8x9nSrkiEWl+k8jaMIkmj
 dQt+htF/Vt9bUKNISDnUgOx9NC/KPv7YOeLfQL4LqZLHj9owy2aJxeUDlxwMXjHplt+iCMSgvU7+Qu
 itLZjXlaLaOBLWb0WMq/5xOa0VovwLDs2DEPlfwS741it/XGEnJ4bd86XRSs821HyQELobiPtIhoXl
 gT1J++3T5q4BlzzP2RUW+Y8R0to3+lin5M4xc2g1Lf1EExOx0T8ENoOM94oQ==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231030_024832_420536_E555EE45 
X-CRM114-Status: UNSURE (   9.44  )
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

Add QMP USB3/DP Combo PHY support for the SM8650 platform.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 9c87845c78ec..0417856b8e7b 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -3558,6 +3558,10 @@ static const struct of_device_id qmp_combo_of_match_table[] = {
 		.compatible = "qcom,sm8550-qmp-usb3-dp-phy",
 		.data = &sm8550_usb3dpphy_cfg,
 	},
+	{
+		.compatible = "qcom,sm8650-qmp-usb3-dp-phy",
+		.data = &sm8550_usb3dpphy_cfg,
+	},
 	{ }
 };
 MODULE_DEVICE_TABLE(of, qmp_combo_of_match_table);

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
