Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62D8DC7EE26
	for <linux-phy@archiver.kernel.org>; Tue, 23 May 2023 14:07:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x12fUCXoSE3zB5OmjkaeqNknoZTTBCk5eVRwE+M9f3Q=; b=uiJ8aLJp2kJR1N
	x4BYO247IncpnPjXII/kWO4fI1eFLyHYIk9UduFOr/mNPBy2ahZCosnr0+9Z45pqPjHzaQAQNgiCK
	TYGhqkg4eLjQzJANJa1kYhkgRE1HqSfxLe/EXKfmwwiTNmhw6/rNxflsRDOE116Es/DVhS/TZOn8S
	7V/b1ZIL1d5IVesW39ynonGreb4ypZmPOW8gdnsjx3LU/j5thbIXowZQiJfycn8smJlR+BDv/98QF
	IJtVIwwsenCSstefSJluDjVMoe6mZAKzKAopS2KQAP6sUH7dymKH2ajygUeInEAQA0YvMRKgCnu4B
	4X4rwKp7aJyQGGTZL1RA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1Sfi-00ASZt-36;
	Tue, 23 May 2023 14:07:30 +0000
Received: from mail-lf1-f46.google.com ([209.85.167.46])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1Sff-00ASVz-14
	for linux-phy@lists.infradead.org;
	Tue, 23 May 2023 14:07:28 +0000
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-4f3a873476bso6227958e87.1
        for <linux-phy@lists.infradead.org>; Tue, 23 May 2023 07:07:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684850786; x=1687442786;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JpWnc1zBcRxuJ08XPjlOy+/0E7QF+n2iCuXt7UnGnk0=;
        b=LJ7X/fjQgggMHQ54N+o8Dg6swYXxPBpx9IS1a1h8jNiREeMNqJZHwhDcLpmWShBzKW
         b1f0NHgS7hl7J388UTT9xr4/GceX1WDd4t3Bl5WuMksjoeDfi4xH7L9wKz16iiAPZ94+
         fUuauTjhCQJM/5DNJxKN+xvjvVo8q0H/54z8PwGJmr1VhLEcrb7jDJMpm0mpGRWYaZ6r
         6eVoJ9TMCI9y5SONdUjnHFrF8ToidLWZ84bMuvgVZF155N6GRxG9N9phx8Qd2/P51+Np
         ZdQbJpdLzcVeEwh7Vpvsc9KXt4Cze09hehQATDv4kt/WuVHTaYCVyvxnZTN3ZkmTHuHP
         Y6YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684850786; x=1687442786;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JpWnc1zBcRxuJ08XPjlOy+/0E7QF+n2iCuXt7UnGnk0=;
        b=AoYha39RLg4o1YnBmZNBYfF/idDwVqPn8Mg5M3kOoyIgt2UepoEOZ5hxteVSaJx+Xb
         phAzq5+M+UNwbU3a1h6KPiSmAMnGg4SGMvtr3Gi29xJGaJr2OljgrBkxBsSWNU6rPpFX
         uP8MZCuqvgALqjZmRUt8Opxlnd6F8PAhjSRa7A1oP1ehwFqHjpxNVgyx6neEVzhCG+In
         W5ZtxN3XDZCFZ6g+uhBxyHeLGasTXr3NL6IgUGIE2/B5CO4+AKcroPhHF/cFSIjXYu3C
         D6rs1w9UpzRidGxjlzgBjpBGpmXFAR0HK5DeBRuIDNi8tjOhx/purs2af3+TZj6YmoRZ
         DeLw==
X-Gm-Message-State: AC+VfDxVXzgSY5xg+h4Il1uVvI7QTGwl2nB4gbj23dDNZ8wAhFxJyR1T
	qlgTpLPgyUpbSv5GBUtYQXurOg==
X-Google-Smtp-Source: ACHHUZ4LV/KGts4l2QvOhv+3rEbyYEgXjKiJuXJjmbKGAhx266yOWGurqRP65cQ+JkTumr/r8P9CKw==
X-Received: by 2002:a2e:b209:0:b0:2a7:96bd:9eb3 with SMTP id l9-20020a2eb209000000b002a796bd9eb3mr4853150ljm.3.1684850785959;
        Tue, 23 May 2023 07:06:25 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id l1-20020a2e9081000000b002adbe01cd69sm1633536ljg.9.2023.05.23.07.06.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 May 2023 07:06:25 -0700 (PDT)
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
	devicetree@vger.kernel.org
Subject: [PATCH v3 03/11] arm64: dts: qcom: msm8996: switch UFS QMP PHY to new style of bindings
Date: Tue, 23 May 2023 17:06:14 +0300
Message-Id: <20230523140622.265692-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230523140622.265692-1-dmitry.baryshkov@linaro.org>
References: <20230523140622.265692-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230523_070727_364307_986CEFA2 
X-CRM114-Status: UNSURE (   9.35  )
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
 arch/arm64/boot/dts/qcom/msm8996.dtsi | 25 +++++++++----------------
 1 file changed, 9 insertions(+), 16 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8996.dtsi b/arch/arm64/boot/dts/qcom/msm8996.dtsi
index 2b35cb3f5292..2b65c608a57e 100644
--- a/arch/arm64/boot/dts/qcom/msm8996.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8996.dtsi
@@ -726,9 +726,9 @@ gcc: clock-controller@300000 {
 				 <&pciephy_1>,
 				 <&pciephy_2>,
 				 <&ssusb_phy_0>,
-				 <&ufsphy_lane 0>,
-				 <&ufsphy_lane 1>,
-				 <&ufsphy_lane 2>;
+				 <&ufsphy 0>,
+				 <&ufsphy 1>,
+				 <&ufsphy 2>;
 			clock-names = "cxo",
 				      "cxo2",
 				      "sleep_clk",
@@ -1993,7 +1993,7 @@ ufshc: ufshc@624000 {
 			reg = <0x00624000 0x2500>;
 			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
 
-			phys = <&ufsphy_lane>;
+			phys = <&ufsphy>;
 			phy-names = "ufsphy";
 
 			power-domains = <&gcc UFS_GDSC>;
@@ -2046,25 +2046,18 @@ ufshc: ufshc@624000 {
 
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
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
