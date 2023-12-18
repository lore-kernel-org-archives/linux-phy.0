Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7BCC7C35274
	for <linux-phy@archiver.kernel.org>; Mon, 18 Dec 2023 12:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=skbh9IwQxql/Pf3v1EDX2s9yyK00IwaVZmE8Ga7I36s=; b=pSFBcGq293YzRD
	Fvw2i1/lJeNvi6Vs08+t6C9vvI59VD+nKq+g1clhGJYT5E3G/O7Pcelw8LLlBxm780oleBiltICrh
	jrbYkxbU5365zEE/fBwWqgV/+qiR8F7KsO/q6sCjGuUMqMIppgNoCteDun+3O7dEYWVHtxQ9VQwhp
	G+E+lh2muA4ofCLqiBQ++00CwkHm//wwU3r//wfIg0FLaPlu8tZmv3PMBZZejg7JzbG20pJk6BxhQ
	fRocjQ/wWvuYyoqZ8pakYzlosCH+2P0P49QPBqr0wnbuvOk8DiOArIreDHQ40bM/UW94nHhspxGx8
	16u/PW4xOR7PVniveW/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFCQX-00AYgs-0i;
	Mon, 18 Dec 2023 12:08:53 +0000
Received: from mail-pl1-x630.google.com ([2607:f8b0:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFCQU-00AYf2-1p
	for linux-phy@lists.infradead.org;
	Mon, 18 Dec 2023 12:08:51 +0000
Received: by mail-pl1-x630.google.com with SMTP id d9443c01a7336-1d39afa1eecso15677995ad.2
        for <linux-phy@lists.infradead.org>; Mon, 18 Dec 2023 04:08:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702901328; x=1703506128; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RTvHTb3eBsG5jFvbdhGh0zasO09G1PrRZVvH3m7yDqQ=;
        b=VQXgHP1qACnLfxYLBzbgBSE63IRJ3SsK5iRWv7m463UBLMC5XWmvzj1PeueUmZhfUv
         x47tBWKKSslFBzreSC3jAIFr39cC7ua/CN9sIgYj//h3UhucD43ReqzoXQT90cctOwMZ
         jBzqINhlJDhBe90s5lfKSBUESgBUnDQrDRmvkLaoReOjNCVKh/qdvXaiZf7CzuCv5bWh
         7I2o/RnOHq28UsTsBeMwdrUGq0pNWGl1O1Msx5BZXmZEXJ+c9orguIC0a5D0l0Dby2tk
         6dEwxmb2bNMFDUJzxrfJ0egE9URHcE2bLSHXM9OaW25aVdhNl/bKEQfeVBuy99xj1dKw
         mF0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702901328; x=1703506128;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RTvHTb3eBsG5jFvbdhGh0zasO09G1PrRZVvH3m7yDqQ=;
        b=tzsnYyJ7LlCLCyvglA7VIVIJdgU1QtTrZIdQrcRnEY4Kpmjw3aJAyXpHc4OkLCyJ7B
         sBkEvnFbQ5cvgcDPmJJvFTSgRzoyjJITiiDWbC7aWl9UfBM9JTJIgJWqMyek4mVSZZjN
         AAOfxsWDKqJe/dzghQnb0NxNX5FYiP1mZ/P5G1X655diRRZBqxz0nT/zYGmTYf13cBW0
         ei5oqyfhvW5BhM/xehmO9TYReXz3NXcviAx/0NWm0RR7AxZUHn5FeLrz5IumjiPoaC4g
         Uk0yiowCzB4uG44kA9PeCOEiy5HcSrf3KeoGtOQb9XWK+DfNAvJbdLItVNZMnThsx++u
         wG4Q==
X-Gm-Message-State: AOJu0YyrLi6poF02iUu/KKPwUxzq5693/iZI0cQODAkEhCxpidu/MppP
	63Xrf+5gntJQGJx6/YgEfW2c
X-Google-Smtp-Source: AGHT+IHfpzfQ7Ho4J5k5zn3DQtdaxoP2BboWND0BEobz+wq9+jlz0BY2a2FXfVNGhh1hdWdcLpfjzg==
X-Received: by 2002:a17:902:ce8c:b0:1d0:9228:575e with SMTP id f12-20020a170902ce8c00b001d09228575emr19580256plg.43.1702901328528;
        Mon, 18 Dec 2023 04:08:48 -0800 (PST)
Received: from localhost.localdomain ([117.207.27.21])
        by smtp.gmail.com with ESMTPSA id j18-20020a170902c3d200b001d368c778dasm1285709plj.235.2023.12.18.04.08.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Dec 2023 04:08:48 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: andersson@kernel.org,
	konrad.dybcio@linaro.org,
	vkoul@kernel.org,
	sboyd@kernel.org,
	mturquette@baylibre.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	quic_cang@quicinc.com,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v2 14/16] arm64: dts: qcom: sc8280xp: Fix UFS PHY clocks
Date: Mon, 18 Dec 2023 17:37:10 +0530
Message-Id: <20231218120712.16438-15-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231218120712.16438-1-manivannan.sadhasivam@linaro.org>
References: <20231218120712.16438-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231218_040850_601974_52E441ED 
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

QMP PHY used in SC8280XP requires 3 clocks:

* ref - 19.2MHz reference clock from RPMh
* ref_aux - Auxiliary reference clock from GCC
* qref - QREF clock from GCC

Fixes: 152d1faf1e2f ("arm64: dts: qcom: add SC8280XP platform")
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc8280xp.dtsi | 18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
index cad59af7ccef..37344abbe8bf 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
@@ -2256,9 +2256,12 @@ ufs_mem_phy: phy@1d87000 {
 			compatible = "qcom,sc8280xp-qmp-ufs-phy";
 			reg = <0 0x01d87000 0 0x1000>;
 
-			clocks = <&gcc GCC_UFS_CARD_CLKREF_CLK>,
-				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>;
-			clock-names = "ref", "ref_aux";
+			clocks = <&rpmhcc RPMH_CXO_CLK>,
+				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
+				 <&gcc GCC_UFS_CARD_CLKREF_CLK>;
+			clock-names = "ref",
+				      "ref_aux",
+				      "qref";
 
 			power-domains = <&gcc UFS_PHY_GDSC>;
 
@@ -2318,9 +2321,12 @@ ufs_card_phy: phy@1da7000 {
 			compatible = "qcom,sc8280xp-qmp-ufs-phy";
 			reg = <0 0x01da7000 0 0x1000>;
 
-			clocks = <&gcc GCC_UFS_1_CARD_CLKREF_CLK>,
-				 <&gcc GCC_UFS_CARD_PHY_AUX_CLK>;
-			clock-names = "ref", "ref_aux";
+			clocks = <&rpmhcc RPMH_CXO_CLK>,
+				 <&gcc GCC_UFS_CARD_PHY_AUX_CLK>,
+				 <&gcc GCC_UFS_1_CARD_CLKREF_CLK>;
+			clock-names = "ref",
+				      "ref_aux",
+				      "qref";
 
 			power-domains = <&gcc UFS_CARD_GDSC>;
 
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
