Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19DB1C7EE2E
	for <linux-phy@archiver.kernel.org>; Tue, 23 May 2023 14:07:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wobwlDXjJD1tj3YX2i1CbYzG9ZWRov7ZlHSPR0r7H/E=; b=J+XMdsiSl6NzQk
	KxFwLNlCnaPyOfdaS5r1VuVOcncvpnJBEGmONCMjxQ9qlDVDpFuh8LwgdzdnbzaPlDTGojXGjxcmr
	HqwqnMq+iq96Izu3A2ri816+mKB75fhR9cq1TJE+6l9McyickGjCOR3zFraGH19qNUIks9cTH4yb+
	8p254O2krJ4YNiZzjf99jEuuOTAxh+0NFhHwIuAUbcfZ/WyMIR1loRoQZUPTv+4A/6zIX08mKRgTU
	IWx4Ih5NJoEZJ2j+1Gh5YmsdKjJvPF23oxDme9lTiIm+zhusChc8Jjp5Dnf2ji+d6/owFC4iuumWm
	lHySZKRdsF83m9mWExgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1Sfl-00ASce-2E;
	Tue, 23 May 2023 14:07:33 +0000
Received: from mail-lf1-f47.google.com ([209.85.167.47])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1Sfi-00ASYS-1g
	for linux-phy@lists.infradead.org;
	Tue, 23 May 2023 14:07:31 +0000
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-4f4bdcde899so908684e87.0
        for <linux-phy@lists.infradead.org>; Tue, 23 May 2023 07:07:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684850789; x=1687442789;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EDfmd2LIuPA0HfG9IqKD3+P6fxYepp/qyiFotzBuREY=;
        b=yOXW/G1QDsaAQQNpkxXpsb0NKccjnxTXVp15BbHbHVoMfBepGV14vktZyaZW2SSdTM
         +nGraDABo+SHIS8lSxUpdjTVHL2TDDCjPE5AAvXf7sIouMYygBIOVWhVs90rCG3IPyXd
         VaJmqIsZR68WwgwKanwYgBGHfM2ldTCrY9e4Kf+kWZDNnKYMdT64TmwxJTbYAf8f9IzM
         uKn2hzAatKBA0h7kqzftvKenqYhJhGTRX9t+gB4GRnYDRhLhKG2nMrGS6o4eYUbsYHsq
         AVUHiogSSUgKT67ZMYslQMAi2lp1g7cCTQh7agAXF6RKe7io8aBrquGROgnYFeTgLYBz
         D3Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684850789; x=1687442789;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EDfmd2LIuPA0HfG9IqKD3+P6fxYepp/qyiFotzBuREY=;
        b=iAC7ZJf21BOvZCy4vHw5/tKZkXPBLUFFuLkII+DyotEsnKnL6H3zJBxua/mZ0Z0P3q
         27HDxOqhGopftJ0xaGO24yPGS7h1yHECCKxbLuIOS4aVk2Zs8ezRT2OomK30CC2p0AvO
         sfsAXXKxHTSDP1gEyW7zM3B15/mYlrXYcbg7YAyjCqC8v9QWTPDxD4krjRPXHElU52hY
         +7WZXOwaqOj6IUx/9ZunYQEMRzL7to8i2zAv8DOZWmWAqhlCJJFDJ5SWii61FS++Dah8
         vhgKr+JffgfhsBH+pzkIimxE9kE2A2t4jcaTk95R3IjgR4DqxG26hI10uf32BIoEOVIP
         Pbhw==
X-Gm-Message-State: AC+VfDy1qcIu6+W2EbiIxHsQrhhupEyvL8WZdyL63eaNefjZGoPP1aed
	3jNlHifYdVdGiGe4p4Gz6+GMhW37KNCrb9zZ3d0=
X-Google-Smtp-Source: ACHHUZ5uAGMlv7gLQ78zmefjII54MYHtC0gPTq4eUFeXrGSgWkrw/Xtc4d4nu4jEwbNh1ac29uhvxA==
X-Received: by 2002:a2e:99cf:0:b0:2ac:862d:ad9e with SMTP id l15-20020a2e99cf000000b002ac862dad9emr4767749ljj.46.1684850789130;
        Tue, 23 May 2023 07:06:29 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id l1-20020a2e9081000000b002adbe01cd69sm1633536ljg.9.2023.05.23.07.06.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 May 2023 07:06:28 -0700 (PDT)
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
Subject: [PATCH v3 07/11] arm64: dts: qcom: sm6350: switch UFS QMP PHY to new style of bindings
Date: Tue, 23 May 2023 17:06:18 +0300
Message-Id: <20230523140622.265692-8-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230523140622.265692-1-dmitry.baryshkov@linaro.org>
References: <20230523140622.265692-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230523_070730_586796_3A3370BA 
X-CRM114-Status: UNSURE (   9.23  )
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
 arch/arm64/boot/dts/qcom/sm6350.dtsi | 18 ++++--------------
 1 file changed, 4 insertions(+), 14 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm6350.dtsi b/arch/arm64/boot/dts/qcom/sm6350.dtsi
index 18c4616848ce..a816bb212174 100644
--- a/arch/arm64/boot/dts/qcom/sm6350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6350.dtsi
@@ -943,7 +943,7 @@ ufs_mem_hc: ufs@1d84000 {
 			      <0 0x01d90000 0 0x8000>;
 			reg-names = "std", "ice";
 			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
-			phys = <&ufs_mem_phy_lanes>;
+			phys = <&ufs_mem_phy>;
 			phy-names = "ufsphy";
 			lanes-per-direction = <2>;
 			#reset-cells = <1>;
@@ -988,10 +988,7 @@ ufs_mem_hc: ufs@1d84000 {
 
 		ufs_mem_phy: phy@1d87000 {
 			compatible = "qcom,sm6350-qmp-ufs-phy";
-			reg = <0 0x01d87000 0 0x18c>;
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
+			reg = <0 0x01d87000 0 0x1000>;
 
 			clock-names = "ref",
 				      "ref_aux";
@@ -1001,16 +998,9 @@ ufs_mem_phy: phy@1d87000 {
 			resets = <&ufs_mem_hc 0>;
 			reset-names = "ufsphy";
 
-			status = "disabled";
+			#phy-cells = <0>;
 
-			ufs_mem_phy_lanes: phy@1d87400 {
-				reg = <0 0x01d87400 0 0x128>,
-				      <0 0x01d87600 0 0x1fc>,
-				      <0 0x01d87c00 0 0x1dc>,
-				      <0 0x01d87800 0 0x128>,
-				      <0 0x01d87a00 0 0x1fc>;
-				#phy-cells = <0>;
-			};
+			status = "disabled";
 		};
 
 		ipa: ipa@1e40000 {
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
