Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39B42C4332F
	for <linux-phy@archiver.kernel.org>; Thu, 10 Nov 2022 15:18:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XLP8OLAYYoqqPZvTfI0krsR0gtZQuLJ28XAMtuX/Khg=; b=acm5Qpz89p54jD
	u1D0SldJLrsCfTuOLMohcObqQOK087h8JSX9JJnARj3t/FF8DOlyKxBGt/DMMqWnV72VA5LA7lO5V
	Z6rX3/Wjtx8LoT/DRfDlgItZvP+FmOcTgc/Xpr6JaVjMKEYCLwgRexwPercoF+auu4AT/AfqIyYGX
	NNDD+Ee+yMu8qqd3f/+a8PA8fXN0dPhfNoxyp2Er9P6BQautoN2K0rZEaKQUrPyAxlTEjr2oPjCE6
	ateNniISVm1Daj8hWaHAZDowOfGmZC72khunzy4w4aaX6M/sCvDcgtLb+iJrBTto3po2wrKKFR9uh
	XYEx0P9vFR8/L2pSFPeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ot9JX-006gIe-Kk; Thu, 10 Nov 2022 15:17:59 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ot9JT-006gDj-NW
	for linux-phy@lists.infradead.org; Thu, 10 Nov 2022 15:17:56 +0000
Received: by mail-lf1-x12d.google.com with SMTP id b3so3878715lfv.2
        for <linux-phy@lists.infradead.org>; Thu, 10 Nov 2022 07:17:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PDlxhalLaPohTMht0sA6QtRq47J10Uk/KVFrQ+ly9+c=;
        b=ye+2+N3oa1WOQLv1C3P3U+LuFkPW9IVUm4owQLVVQk6s9yIFUNwUHvRl0l6yEJrEB8
         LAa6gfo1NnyQmqS0fcn5zQqHhAU9HIgXDy+5jEnvfg7OXnSz5pVIUKT4jbbI3auQOzkz
         MAJlJWn3PomljlYbC59xJfsz3D30fITK09lAP0xXbWfWQWUL7weEPCRYamMqsphay4nq
         uXAJXvfgK3VU/PNwQW65lkDl+upbpKyfps+gBuQaLaShY+bXLSudEj7m20sBWme/6JrX
         9TsubmYZJeG0YbIuDSBIzX9Lg3+mZTjiFfTtCjE3cArz/W3O1ThcLXyJ9CCnb++MlxM8
         +mfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PDlxhalLaPohTMht0sA6QtRq47J10Uk/KVFrQ+ly9+c=;
        b=XzilPnuif1h0z1hVNEMy+gIG8yDYe48M/b3WjTNHgcCm//UxEL1hJKzJP9pV0iIMV0
         udBlEtikJHjFHvB1xfdU3ZzHM47YHbnV8SWXvMzZVD2xnjeBfezuwoYCt+jhLzd8y4K8
         VuAoNiP5wyaTKP4jaYqxBBbajw5dNzSSqhq0Bkx8yNLcqZPOK0gYqZ8SiVsh7Gt39ngO
         +mxpttGGo15bNNEdVBBklhNipqajnKdNnmVX0GhCCr2/SSNUS5kKOFnItYKFRvMNU0DT
         K5K436THevG7zQzKW/EjdBWCQjRW55NCg0uoSsCkfVwO9xDB/EGh4tu1diTMHgzRGZf7
         Adsw==
X-Gm-Message-State: ACrzQf2L9JOpFmhj2ICpYlDn7G5NxcUMX6OtOxlnby1fOaFhvN0ZfGm9
	LbMD16+UTqBgDO0w23IJI9h0MA==
X-Google-Smtp-Source: AMsMyM5gF9sOQzOK81pQsLi3deVaccBBNhqAi5ATkXpxk3J6Auyv6jEzOjHQv1qFh9txKIHKdMtPNQ==
X-Received: by 2002:a19:f006:0:b0:4ab:faae:693b with SMTP id p6-20020a19f006000000b004abfaae693bmr1692441lfc.597.1668093471171;
        Thu, 10 Nov 2022 07:17:51 -0800 (PST)
Received: from eriador.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id p22-20020a2eb7d6000000b002774e7267a7sm2719591ljo.25.2022.11.10.07.17.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Nov 2022 07:17:50 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v7 3/4] arm64: dts: qcom: sm8450: fix gcc clocks order to follow the schema
Date: Thu, 10 Nov 2022 18:17:47 +0300
Message-Id: <20221110151748.795767-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221110151748.795767-1-dmitry.baryshkov@linaro.org>
References: <20221110151748.795767-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221110_071755_781657_AD320DCB 
X-CRM114-Status: UNSURE (   8.34  )
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

Move the sleep_clk to make sure the gcc device node follows the schema.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8450.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
index d32f08df743d..efb01fefe9c7 100644
--- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
@@ -720,13 +720,13 @@ gcc: clock-controller@100000 {
 			#reset-cells = <1>;
 			#power-domain-cells = <1>;
 			clocks = <&rpmhcc RPMH_CXO_CLK>,
+				 <&sleep_clk>,
 				 <&pcie0_lane>,
-				 <&pcie1_lane>,
-				 <&sleep_clk>;
+				 <&pcie1_lane>;
 			clock-names = "bi_tcxo",
+				      "sleep_clk",
 				      "pcie_0_pipe_clk",
-				      "pcie_1_pipe_clk",
-				      "sleep_clk";
+				      "pcie_1_pipe_clk";
 		};
 
 		gpi_dma2: dma-controller@800000 {
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
