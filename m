Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DEF2BC7EE2F
	for <linux-phy@archiver.kernel.org>; Sun, 21 May 2023 21:45:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pCFCrTN67LXu5YNmXjpk3seW3GKpGfvW3R+OLTwIPQ8=; b=LCUlr1sirL6M34
	m/fCHccgsguYOjt7dtGVkmhwAZs0XdMds+GV1l09lJDHcyM5GgrGf0X7yLE8dW9jL13tYAF82rKF/
	awNhv3S5WrGHjl2rNeDB9LkhdA8P7Wy0Ys/D7b1W6+zCuUjdxGyF8Uq8QOxgRx5utSNJtnRYqQKN7
	Ry2IofG2jo75ATIEvIAGlTvbh/cTWoMfEYJm8ZDIaoXdSDVSVfSWet/jtKM4AvGq00VZI9oxfD1QE
	6BYMZy5WrGfm2sbc/aGWI8yEvosjZeeYZ4aBCPh27vAxLXP8WxUcdOgaDfB+k4jm6ul7jq9JyJxf4
	M0k1lGpEOghlPcnQe6Rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q0qrX-004itR-1p;
	Sun, 21 May 2023 21:45:11 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q0ppC-004cvv-1d
	for linux-phy@lists.infradead.org;
	Sun, 21 May 2023 20:38:43 +0000
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-4f2510b2b98so5765309e87.3
        for <linux-phy@lists.infradead.org>; Sun, 21 May 2023 13:38:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684701520; x=1687293520;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XM5bLMfHigpVdJoq5ZxEoz7OtTkvdwEjGH8t5nLaKbM=;
        b=K7kunTTV4UnCywremU5tiRRGwhf10zZ9xtRy/R2R65LajnZTVO0hf03MABIa1zDPAZ
         4eZNTgYGR62YXzb5QjB79oNEuRu4GMy1bZDGr8Pv9C5iDzbxXZMXDVchnIRhb+NkLktk
         AiS9xD2pY8hgSinG3EBAZ7G3YPiMXRNOmIKhBey0OOpvyOa2iKO0oOy/obWeoF9Qitus
         A0vKEDbXX40wwFUEelLd5giDUDlETXQxwAdLdK+PY9m2VyOu57NdDAq0aNvhcSsCpWQO
         cIpsRJW4NLVjmL2A5nGKcL6sJlodiVbfOXcMAFKHMfgk3V+a0Nn95z1bahqJRxc+ZmzK
         3rjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684701520; x=1687293520;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XM5bLMfHigpVdJoq5ZxEoz7OtTkvdwEjGH8t5nLaKbM=;
        b=XUsCRhEMqhDayvJXD3Vp9zNkuwFF/CP6iIXmuslqHRv6QOgvjcb66C2l9s6QiyN/mq
         qn5y91YDIhkSM0Pvy6e9C9YzoIUJM1mEG5+kG63ShBFt9p5nMB5UheCOuq0bAPhHndca
         eGlm1B9a5vHoeWS5/aLj6t0g1tc9cPOEwvrksv5eDcPBFKpBf2iVhMG+bTBllQ3B3GAe
         uDu0XNK1RoMbk63FxuPJwHSJyXFDkhDzLuhxWBDC63tGDoTrYlxTBAOeqOi31C8A+WWI
         4274wYtAIdjx9HAELP/Uq5ziBdkyfotQHMGZk0dEoYbXI4BY0WF2mEdmn22v6oceDziQ
         d+hA==
X-Gm-Message-State: AC+VfDznJfCyETvqRHIT9QNrx56Uw2KK2bY/dR6gknQ/rSCNNOWiXHN8
	yuecO2Js6exHEEthdDn2XuO0oQ==
X-Google-Smtp-Source: ACHHUZ73RqZnDZWVHnJA0HofjS+IO/YUUybq8JUeXLKLmPSn0F/KlOHfp8GBgD7hfB+bcE4jJ4OesA==
X-Received: by 2002:ac2:53b3:0:b0:4f3:b222:1eed with SMTP id j19-20020ac253b3000000b004f3b2221eedmr1705337lfh.2.1684701519939;
        Sun, 21 May 2023 13:38:39 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id a15-20020a056512020f00b004f3886a63d1sm718894lfo.298.2023.05.21.13.38.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 May 2023 13:38:39 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Johan Hovold <johan@kernel.org>
Subject: [PATCH v2 06/11] arm64: dts: qcom: sm6115: switch UFS QMP PHY to new style of bindings
Date: Sun, 21 May 2023 23:38:29 +0300
Message-Id: <20230521203834.22566-7-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230521203834.22566-1-dmitry.baryshkov@linaro.org>
References: <20230521203834.22566-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230521_133842_546766_6D4A9D4D 
X-CRM114-Status: UNSURE (   8.90  )
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

Change the UFS QMP PHY to use newer style of QMP PHY bindings (single
resource region, no per-PHY subnodes).

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm6115.dtsi | 17 +++++------------
 1 file changed, 5 insertions(+), 12 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm6115.dtsi b/arch/arm64/boot/dts/qcom/sm6115.dtsi
index 631ca327e064..289b96d31414 100644
--- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
@@ -784,7 +784,7 @@ ufs_mem_hc: ufs@4804000 {
 			reg = <0x0 0x04804000 0x0 0x3000>, <0x0 0x04810000 0x0 0x8000>;
 			reg-names = "std", "ice";
 			interrupts = <GIC_SPI 356 IRQ_TYPE_LEVEL_HIGH>;
-			phys = <&ufs_mem_phy_lanes>;
+			phys = <&ufs_mem_phy>;
 			phy-names = "ufsphy";
 			lanes-per-direction = <1>;
 			#reset-cells = <1>;
@@ -825,24 +825,17 @@ ufs_mem_hc: ufs@4804000 {
 
 		ufs_mem_phy: phy@4807000 {
 			compatible = "qcom,sm6115-qmp-ufs-phy";
-			reg = <0x0 0x04807000 0x0 0x1c4>;
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
+			reg = <0x0 0x04807000 0x0 0x1000>;
 
 			clocks = <&gcc GCC_UFS_CLKREF_CLK>, <&gcc GCC_UFS_PHY_PHY_AUX_CLK>;
 			clock-names = "ref", "ref_aux";
 
 			resets = <&ufs_mem_hc 0>;
 			reset-names = "ufsphy";
-			status = "disabled";
 
-			ufs_mem_phy_lanes: phy@4807400 {
-				reg = <0x0 0x04807400 0x0 0x098>,
-				      <0x0 0x04807600 0x0 0x130>,
-				      <0x0 0x04807c00 0x0 0x16c>;
-				#phy-cells = <0>;
-			};
+			#phy-cells = <0>;
+
+			status = "disabled";
 		};
 
 		gpi_dma0: dma-controller@4a00000 {
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
