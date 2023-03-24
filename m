Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5EC60C77B60
	for <linux-phy@archiver.kernel.org>; Fri, 24 Mar 2023 02:25:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ld03+Be0zBpsGzBNPZnXH8O8bffuws7Gdd1G4oYLFRk=; b=rzLrLvsGErYTMh
	/AUroOhCYEH4PNP0Ge0Zmi3NdUkJgEkPeoRnH4DHfDhr+DCn5uARKqBZGA8Hxf/birpPFGrXRsyvR
	suGK0tZJcwU3xatVcYbrhW9vlH6qy9Hk4iTUaD41DzD2eupFo9lrSOL8jtZgRZl0TdZ3ws3BS0UYr
	bhr6v0tbOXmEmNyG30mbjAasua/jKSL41egmDCuRV3XYXihdvBkwPo5ytO+Qgb0ucd2gnfzAPTpzq
	t8nx6+d4XXocnIKrxhmHBLfHC0znWNuXggQmZ0res2WlrxuIG/5W4DBWNWC1fMoAWYCuJtJpaH/Hn
	JiXShRCKsJQQatN09Q9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfX7g-003OKI-07;
	Fri, 24 Mar 2023 02:25:44 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfX7d-003OIW-0e
	for linux-phy@lists.infradead.org;
	Fri, 24 Mar 2023 02:25:42 +0000
Received: by mail-lf1-x12c.google.com with SMTP id i13so392624lfe.9
        for <linux-phy@lists.infradead.org>; Thu, 23 Mar 2023 19:25:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679624739;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=atFClGwQ0XMp49bKEj5oSBG6BjGyOFJoG72Sz+GxX2Q=;
        b=ULoQ5y1deT05+5mDkCkFf15Yc4+HSHPctYiBVpmAy0X/RNXR+hpJzyCYRs3kXxQXJ9
         xqkjeMIJ6QL4rQA4yh6R2pbs/ZVf6BxAjKYN/86Dtlj9rzJ/o8M6exZMAEmEHLqb4M9l
         rwNaDjj6Cfw6Js8lvGHG2mhYU4v51NPfS7zm/05jHbv4EEZmRL2yxqXU/jahx6kO0Qrr
         MZuyjxx964hpv0FysOL6zt85jM6cvTv1PCSVAXSvZH0Gy9q+dpFAjNnvMJmXZy3zDROD
         DLfN0fym36nV8oaLNV4SvjqOr9vJgnx8Wy3lzIx8YnZB25ypO+GUiE8b2sJZBgku1ChL
         SlKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679624739;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=atFClGwQ0XMp49bKEj5oSBG6BjGyOFJoG72Sz+GxX2Q=;
        b=ibpoUvTxCZnDxu/V0d1YC3K7PTeI/zYfNkSlUGp/5ylygN2cbuB1XGpgyv3QunYfMe
         z/zi7/kFmBCurWDgTPjXG49mi5pBkQNhqmqyWTA93KIVUMuCDYTs7isItPMOA6XKoW1Z
         GERIkONBVPk8XqUWqM1UR/7iVD1IFdE+k6jT6xaBDfEPveQ7tqmDQr3dBMiyH0R4juq6
         fpy3JI3pGjdp05L3dEIy0Nq5gG6Z9j+c5gC9opGQts9RAOuvfIA2EnLI1QtTPHVuVZwf
         9Pe508gQRo1GjMrvAm9VSdQPr24zWk9lEa6VC3Cn4JvvB1/iagomCASpoNSPWwSaPgIY
         Wz9Q==
X-Gm-Message-State: AAQBX9eSKKOzZbznIdpZ7N8G96FgXazYTugpJabssivUvOJVJv/vEmsu
	N6/61tJwyPPebFMtV0YfCcapTQ==
X-Google-Smtp-Source: AKy350Z90yTuRq47AwPYRJrJq8LPZkPCzfE2WFPiN9bhDNO3OAeLAO3KDP0ZVsGCPXfzJUkuaE809A==
X-Received: by 2002:ac2:4ac2:0:b0:4ea:f5dd:8aa1 with SMTP id m2-20020ac24ac2000000b004eaf5dd8aa1mr233684lfp.18.1679624739815;
        Thu, 23 Mar 2023 19:25:39 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id x4-20020a19f604000000b004db3aa3c542sm3162628lfe.47.2023.03.23.19.25.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Mar 2023 19:25:38 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 22/41] arm64: dts: qcom: msm8996: switch UFS QMP PHY to new style of bindings
Date: Fri, 24 Mar 2023 05:24:55 +0300
Message-Id: <20230324022514.1800382-23-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230324022514.1800382-1-dmitry.baryshkov@linaro.org>
References: <20230324022514.1800382-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230323_192541_238485_A743B062 
X-CRM114-Status: UNSURE (   8.35  )
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
 arch/arm64/boot/dts/qcom/msm8996.dtsi | 25 +++++++++----------------
 1 file changed, 9 insertions(+), 16 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8996.dtsi b/arch/arm64/boot/dts/qcom/msm8996.dtsi
index a811095fe93a..11e8d5287e6f 100644
--- a/arch/arm64/boot/dts/qcom/msm8996.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8996.dtsi
@@ -726,9 +726,9 @@ gcc: clock-controller@300000 {
 				 <&pciephy_1>,
 				 <&pciephy_2>,
 				 <&usb3phy>,
-				 <&ufsphy_lane 0>,
-				 <&ufsphy_lane 1>,
-				 <&ufsphy_lane 2>;
+				 <&ufsphy 0>,
+				 <&ufsphy 1>,
+				 <&ufsphy 2>;
 			clock-names = "cxo",
 				      "cxo2",
 				      "sleep_clk",
@@ -1994,7 +1994,7 @@ ufshc: ufshc@624000 {
 			reg = <0x00624000 0x2500>;
 			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
 
-			phys = <&ufsphy_lane>;
+			phys = <&ufsphy>;
 			phy-names = "ufsphy";
 
 			power-domains = <&gcc UFS_GDSC>;
@@ -2047,25 +2047,18 @@ ufshc: ufshc@624000 {
 
 		ufsphy: phy@627000 {
 			compatible = "qcom,msm8996-qmp-ufs-phy";
-			reg = <0x00627000 0x1c4>;
-			#address-cells = <1>;
-			#size-cells = <1>;
-			ranges;
+			reg = <0x00627000 0x1000>;
 
 			clocks = <&gcc GCC_UFS_CLKREF_CLK>;
 			clock-names = "ref";
 
 			resets = <&ufshc 0>;
 			reset-names = "ufsphy";
-			status = "disabled";
 
-			ufsphy_lane: phy@627400 {
-				reg = <0x627400 0x12c>,
-				      <0x627600 0x200>,
-				      <0x627c00 0x1b4>;
-				#clock-cells = <1>;
-				#phy-cells = <0>;
-			};
+			#clock-cells = <1>;
+			#phy-cells = <0>;
+
+			status = "disabled";
 		};
 
 		camss: camss@a00000 {
-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
