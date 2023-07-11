Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52C0DEB64DC
	for <linux-phy@archiver.kernel.org>; Tue, 11 Jul 2023 14:52:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9w9kJpHwQQgLSNKU9HekM3wx5i5xz5BTAZBC43TZHbs=; b=XFCOuDajr9+cuW
	8N6qfhzW2Y2wKiGz3OY6EUtDwZZKOLFrRq8fkiS2FGOkD6VjKjY15o2kEfVBE7aH+CQCjdbdyWk+i
	n6GynEEskt7wOqhSm0BKyzmI0B5I7YOT8r54BJzFjp5rfoq9AjyLuFDrPkE9cmqXG05MofYxmzHqc
	/8G7nFRPjqaDkQMNGLkie6uhEWr//+aiKihEv5TAFlTXOb2XFvg5WEw4in27j2FzYhmtsSTvKlLfp
	utiI5fpl+E7Sb5WzjlEBNHaDLRjmhM6uvDRmxojRYPTVHuJXHygDw7yHq7Focfa6qvp/Loqinmk6f
	JLqc1nfOjybiHT1maY4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJEij-00FBuD-31;
	Tue, 11 Jul 2023 14:52:05 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJEie-00FBq8-2L
	for linux-phy@lists.infradead.org;
	Tue, 11 Jul 2023 14:52:02 +0000
Received: by mail-lj1-x22c.google.com with SMTP id 38308e7fff4ca-2b70404a5a0so91676171fa.2
        for <linux-phy@lists.infradead.org>; Tue, 11 Jul 2023 07:52:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689087119; x=1691679119;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4TP85Sw52C7H7s8rcI4zy2XyYLS/5Z/UH1XDKXoCVO4=;
        b=UsHxGAH/Iaq+RcqvBtK+sBkQDtT1XhL7x+ZYGpxawd2B4tMabt1ncRpi7uRF34RTT+
         l3UMJ1gUpPdhU9iRJbMxjZAU/YEHLtJhk3GnKCkjognmo7DLCkRYx5t81pa8qprmYIDU
         9CQ858StoM1Vo+0AoZq/+2VtCnh0Cf4UIxsESTBcFsP6zdgxguYusI9whXFXEeisF5EI
         yLWpP2R2S1TWuX1DFW4iTfrZ8Ygr37CWRySuOmsq3ZSbBL3/cdIgzhL6h6TZAue/olQT
         9XWpMGDl5D+O1gQA0jne0jDAIuiwXr66PqGEWDj2LCX+2oxMSetoCCWgbA72fMh0e6JV
         TBDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689087119; x=1691679119;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4TP85Sw52C7H7s8rcI4zy2XyYLS/5Z/UH1XDKXoCVO4=;
        b=dgIxZ7ctcFlbmtfNEoWZF+KXoX+eNda4eHQbUcs/cjyFpg6KJQAvaX1e+AJfA1HVuF
         tk2j73Opd3m7/mHwbt8P+SDBHg+dyCdX2h56YStM8ezkzDd1YMHfAialIJEHnBbZ23og
         gtos1AEpsFUkH7h/ooO7mSvVOY5+uBHhHpa5XTiYVEaLJOGN25qyXW1m5VlTs1S/JBLP
         qGDnd0WmcaUDgKZoYc8+KO19XJDcoxpygjMVTcwIVajyvM+Zhs9vqt1eUInV67Vw2Kga
         5ZHPs/3oc9sqBIlg5XJYRXU47HyGPdyFoxSXm2AAlLIpAp1EG24IkF09pjSMzUeE8E1W
         5kug==
X-Gm-Message-State: ABy/qLYt0DJwOOKkDKtlpl2IFx2Mn2FTkZu+hjnxDOAwGFEXpCoAD3uD
	8PjOl4J6uYIJT22iulafSGH48Q==
X-Google-Smtp-Source: APBJJlHpl5PumBOs1mrv+4Zmv/il64KVeVC+wtC9GZma7JCd4jBp9YeEJ+i3cS14nOKaw25q7kNr2Q==
X-Received: by 2002:a2e:7a06:0:b0:2b6:bd82:80b1 with SMTP id v6-20020a2e7a06000000b002b6bd8280b1mr14235518ljc.37.1689087119027;
        Tue, 11 Jul 2023 07:51:59 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id a10-20020a2eb16a000000b002b6ee363337sm492454ljm.120.2023.07.11.07.51.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jul 2023 07:51:58 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Hovold <johan@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v4 06/11] arm64: dts: qcom: sm6115: switch UFS QMP PHY to new style of bindings
Date: Tue, 11 Jul 2023 17:51:48 +0300
Message-Id: <20230711145153.4167820-7-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230711145153.4167820-1-dmitry.baryshkov@linaro.org>
References: <20230711145153.4167820-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230711_075200_762809_E402A730 
X-CRM114-Status: UNSURE (   9.13  )
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

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm6115.dtsi | 17 +++++------------
 1 file changed, 5 insertions(+), 12 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm6115.dtsi b/arch/arm64/boot/dts/qcom/sm6115.dtsi
index 9f2c968e3ad7..0adbc827ee1b 100644
--- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
@@ -983,7 +983,7 @@ ufs_mem_hc: ufs@4804000 {
 			reg = <0x0 0x04804000 0x0 0x3000>, <0x0 0x04810000 0x0 0x8000>;
 			reg-names = "std", "ice";
 			interrupts = <GIC_SPI 356 IRQ_TYPE_LEVEL_HIGH>;
-			phys = <&ufs_mem_phy_lanes>;
+			phys = <&ufs_mem_phy>;
 			phy-names = "ufsphy";
 			lanes-per-direction = <1>;
 			#reset-cells = <1>;
@@ -1024,24 +1024,17 @@ ufs_mem_hc: ufs@4804000 {
 
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
