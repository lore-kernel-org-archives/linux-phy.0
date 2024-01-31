Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF1BBC47258
	for <linux-phy@archiver.kernel.org>; Wed, 31 Jan 2024 07:09:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3xrmQBwd42bIeLzijXwFUdXH45r69QNHcOjLRPB6pxA=; b=e2iIiEq8rDaaaH
	8Gn8SSMhD4pIWWWIU3dbxeZSRW9W/bDNaBWUQgKoKPYGnHI7+psid/AGsQidRUrwXxvr+2Iq93AxK
	8+7veu0/URjsWy1QqskluqstIUes5OklmcKp8F0esiHA2jxq5Vp0d9xmBcrlJAv4YULUr5TPo9Wjd
	NYhvZmVBDF32VKn/jzdZfJ98mRtA3W4VV3/sdtbWuWIdBONVw+iy9ydAfqRMVmysNlX4N72YvU/hF
	zAhXY3Wst056RzeRez/UvReNEHjfvL+5HjMnnPIaGwZs0h7Eur+oVRjNnvJctuGAoC6szKayL8dlS
	CSf9Fm2NuMPtyjK310rg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rV4is-00000001jXs-268k;
	Wed, 31 Jan 2024 07:09:26 +0000
Received: from mail-oi1-x235.google.com ([2607:f8b0:4864:20::235])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rV4ip-00000001jWe-1Twk
	for linux-phy@lists.infradead.org;
	Wed, 31 Jan 2024 07:09:25 +0000
Received: by mail-oi1-x235.google.com with SMTP id 5614622812f47-3bba50cd318so3935661b6e.0
        for <linux-phy@lists.infradead.org>; Tue, 30 Jan 2024 23:09:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706684962; x=1707289762; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=By2qz/vvhRjEPGW0+7mtr6OKhriVYbn3cusAD58pKKQ=;
        b=M64gFa2LUEuF8bdeDzEijx4091enxEoed2rKqVAaxqepSlCe84YtUgPuwYNWHI+F5y
         1fzzRwIffzIrqX5oe+JJqVcxkiDD4zU7UGyWEY+N+efRW3qhgIxGBdzCwFrqKzm+73Iy
         6pFUmxNalEenMj1/v1e5TZPlvORiuoe2omsNLm88NWrTygnMKs61YiQZBK6Dnk6AH8vX
         tKCwVQGqeZuk+S2rzy7qfUW45ac0nQrY+6BkD7CiDL6BAuUEYXSlQTrFcAH8P43Z+XYq
         f6DSAt7MU0kxKVxl8pbZpU54OV3/Chs4Hd+kEQ0BkRnqnZEIR/Z5RPY9bQ5H8q76qWCM
         0o0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706684962; x=1707289762;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=By2qz/vvhRjEPGW0+7mtr6OKhriVYbn3cusAD58pKKQ=;
        b=jprI6BW0CaBAlstGy6X7GbTpGZaETZZlo5MHkpAH00ZUIYpgmLrlDc32wu3qZg4xrz
         w1oKw2PrDnNGqIhRzhb2oOOaJm+yCdfZgEuGcK9ElNPe0w3JrEPKATsr/+5vqa3MuldY
         XWOfQNDyQ8pMIk6FA791ugCBPYyJiSyBV7w5Sr2Tnr2J7zD4Rw7x1PYwehmOqBNNpzyd
         WmaOsV71V7g1/dWI54DkF4QKxmfKPutemfwAzJKuCK2bh6GdKDXyFBzquA5aPl0/K3bE
         bS+p9b+3mCfec93zxfburqcRbob7qZaRvO08ZvPXiYksC/J9cyYjhXh7uI0POBZQP3RT
         bNug==
X-Gm-Message-State: AOJu0Yz4m54cjXLiriYS9mN5n/eoyk6+ilyxe2jyT2yjPqhzNY9ca/0E
	7y5QZdxEN788KbhbVN3Ikq6SQGZo1glqCr0mA3jJ2CN/6I9Yv1fzkhn92Y39bQ==
X-Google-Smtp-Source: AGHT+IFc7Pb2WMzbrtd7ampAIBoyCVgaoFRQIr5Fh3lsPV+AX2fcxD43nyyuB/iUSnkSJaBI4ZhFmA==
X-Received: by 2002:a05:6808:220d:b0:3bd:c19f:2fa3 with SMTP id bd13-20020a056808220d00b003bdc19f2fa3mr972423oib.51.1706684962159;
        Tue, 30 Jan 2024 23:09:22 -0800 (PST)
Received: from [127.0.1.1] ([103.28.246.26])
        by smtp.gmail.com with ESMTPSA id lp17-20020a056a003d5100b006ddd182bf1csm9087956pfb.46.2024.01.30.23.09.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jan 2024 23:09:21 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Date: Wed, 31 Jan 2024 12:37:38 +0530
Subject: [PATCH v3 15/17] arm64: dts: qcom: sm8350: Fix UFS PHY clocks
MIME-Version: 1.0
Message-Id: <20240131-ufs-phy-clock-v3-15-58a49d2f4605@linaro.org>
References: <20240131-ufs-phy-clock-v3-0-58a49d2f4605@linaro.org>
In-Reply-To: <20240131-ufs-phy-clock-v3-0-58a49d2f4605@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-clk@vger.kernel.org, quic_cang@quicinc.com, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1273;
 i=manivannan.sadhasivam@linaro.org; h=from:subject:message-id;
 bh=5wbR3f4WW33GGHcau/dlVX6ejvxsZODVew8hP0iyu30=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBlufG+ICNR7eXSqIf5LkQALNH6WwX5hS65s0f1P
 gR4bRoFmd+JATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCZbnxvgAKCRBVnxHm/pHO
 9ZtdB/9rx0FMamEyvNE2jqwXSD23OtJPpAeAr9uHMNnP1rK/dYROtanBVFSUFFJBTE1YtKurm8M
 GmB4ukc1uVBQGraGxO2K2m+shVq8/Mfi9CeDe2rWF/F4+D8ObSrOkyGViInOxOye2qDXOEMGHO3
 lvbtm1+BNv2O62BDqePZk2u5S7ugjxeS163tUCEbJCHTfUwuWHScpuGkHE5XorYoSxCiFT5yOCG
 qQs/XnNQyc1i5XLyi0iOkOtXgk1urCndOUplRbH5WFWgIS0dF/UZLahpTRItvVo4MDCUG0pTYbJ
 GkkOBT99n6i69R3ksSt4cw+FXmhAO+QsPrigtmB2zRsj2YSC
X-Developer-Key: i=manivannan.sadhasivam@linaro.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240130_230923_488084_7D7E6FDF 
X-CRM114-Status: UNSURE (   9.62  )
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

QMP PHY used in SM8350 requires 3 clocks:

* ref - 19.2MHz reference clock from RPMh
* ref_aux - Auxiliary reference clock from GCC
* qref - QREF clock from GCC

While at it, let's move 'clocks' property before 'clock-names' to match
the style used commonly.

Fixes: 59c7cf814783 ("arm64: dts: qcom: sm8350: Add UFS nodes")
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8350.dtsi | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8350.dtsi b/arch/arm64/boot/dts/qcom/sm8350.dtsi
index 506400992596..65d425f56583 100644
--- a/arch/arm64/boot/dts/qcom/sm8350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8350.dtsi
@@ -1746,10 +1746,12 @@ ufs_mem_phy: phy@1d87000 {
 			compatible = "qcom,sm8350-qmp-ufs-phy";
 			reg = <0 0x01d87000 0 0x1000>;
 
-			clock-names = "ref",
-				      "ref_aux";
 			clocks = <&rpmhcc RPMH_CXO_CLK>,
-				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>;
+				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
+				 <&gcc GCC_UFS_1_CLKREF_EN>;
+			clock-names = "ref",
+				      "ref_aux",
+				      "qref";
 
 			resets = <&ufs_mem_hc 0>;
 			reset-names = "ufsphy";

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
