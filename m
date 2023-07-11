Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6267C05051
	for <linux-phy@archiver.kernel.org>; Tue, 11 Jul 2023 14:52:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=egBdR92l8lEPl+QSm3oRGWhBjo4np52U6ZTRt56Wgpo=; b=lqvkRhQ/YheKpO
	50Trc40qLevzdj/UC7/Ro4zfAuUd/47vqh6CWInW7vfNSODfx888J2Yx4wRlyhg4VL6c+gfEkFGLR
	xf8AwQeMjQyBgXWniTuzkc6Nepyt8QMgJ2tOEmx3EGy/apJ+f/+gU2JhCDXGCYQdhzYg7R/+dP2pC
	jHJuG2DofcirKUNHche5p1IJqnQGAeMCTH/PDMNE/GhdNMrUk2MV3lE9auPoEhEUr/65H//l+fpNt
	0aWwnqJBDDVyJe/vGp5d4vgPjdvk5k/dFWz1s9A0PCLkMVisiCfYgPUZgdMu5lSvV5Zx80+htES8L
	L0BzwIldIe/oaSNej2AQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJEik-00FBua-1X;
	Tue, 11 Jul 2023 14:52:06 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJEig-00FBrH-20
	for linux-phy@lists.infradead.org;
	Tue, 11 Jul 2023 14:52:03 +0000
Received: by mail-lj1-x229.google.com with SMTP id 38308e7fff4ca-2b698937f85so95136351fa.2
        for <linux-phy@lists.infradead.org>; Tue, 11 Jul 2023 07:52:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689087121; x=1691679121;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7dErEvYLmRlIV1rxHMjDe/kO5lvnWUZ0gQiQRSSG5cc=;
        b=RMQ8wa3L3Q0JGMxtTBoCS5z1ud3qXSPOQsGel4a35xilBvZasCWWf4qkmZB4Q300Gf
         wQ/XvDPrtVGCTVSM2obH2p8KywPwvWw3CT35PGwr3dgd8iaxA8PNhTw1OVchsC0/mB3M
         cuzBFutdB4DYC3hnFzQylnmsqrccTG2xOovZB/3vAzYUc2uFb5SP6+VhukPNKULmKuyu
         2klGtOsQ4sG0ZoFQfVBJUU1B6merzgHdW/t05ZWihjQtpwQRJFU33QDbX4KxJx/B5+iy
         ul2cJvyQllBatCfv+DkgMGhDiHKuEwAZCNcinLc2S0H+3orRWVoDTLsTG9pi8jwsCzzE
         idrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689087121; x=1691679121;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7dErEvYLmRlIV1rxHMjDe/kO5lvnWUZ0gQiQRSSG5cc=;
        b=TbCyc83BwxLNeWRXCFISBYm0I4ZIfprZd/TROIGW2TL++PT4Paawj2UZWsc3/+ll0x
         4PmiXew5JkdeCkmDZw3S597IUaIzUbFZngB9bY+y7gTpvne7H2Y/4Zhpa36ge2OUxFlM
         pONXa19Hp3NYsUPGUIml4zDkNFkXh5QHsH1emr51mfTPd/xhTTJrLPDe8F0VVEFrgnK/
         OHr0aiEG9mPNSsVa3rYtGxBSahNY9RApdjwMxG6l0G+reLqyNFDSebqk2ofDey/+fCK+
         j6jljBKj+kTZX5cf7EVmOKDSZVrOZa5awsgtRmXDIcSiYoF8hSp89IHfw9DQ0ESk7EzM
         2eGQ==
X-Gm-Message-State: ABy/qLZJxhVN+XaoCqTDNCE8gxJbabkP+4lYzwFytTmA7tmL523sihhj
	RzX49mN0+llP2frMdlUrSHkC2A==
X-Google-Smtp-Source: APBJJlHRe3n7NWwTDlLJyoOiDBPc89XFmkVeyDkfXstvOPbHKWJgApj36OXu/k2i0+juGepChjf/iQ==
X-Received: by 2002:a2e:8902:0:b0:2b6:de6d:8148 with SMTP id d2-20020a2e8902000000b002b6de6d8148mr13435207lji.31.1689087121104;
        Tue, 11 Jul 2023 07:52:01 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id a10-20020a2eb16a000000b002b6ee363337sm492454ljm.120.2023.07.11.07.52.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jul 2023 07:52:00 -0700 (PDT)
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
Subject: [PATCH v4 09/11] arm64: dts: qcom: sm8250: switch UFS QMP PHY to new style of bindings
Date: Tue, 11 Jul 2023 17:51:51 +0300
Message-Id: <20230711145153.4167820-10-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230711145153.4167820-1-dmitry.baryshkov@linaro.org>
References: <20230711145153.4167820-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230711_075202_659803_D90BCC2D 
X-CRM114-Status: UNSURE (   9.15  )
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
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 20 ++++++--------------
 1 file changed, 6 insertions(+), 14 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index d522dea65ba7..ee6a16ed0a91 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -2169,7 +2169,7 @@ ufs_mem_hc: ufshc@1d84000 {
 				     "jedec,ufs-2.0";
 			reg = <0 0x01d84000 0 0x3000>;
 			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
-			phys = <&ufs_mem_phy_lanes>;
+			phys = <&ufs_mem_phy>;
 			phy-names = "ufsphy";
 			lanes-per-direction = <2>;
 			#reset-cells = <1>;
@@ -2213,10 +2213,8 @@ ufs_mem_hc: ufshc@1d84000 {
 
 		ufs_mem_phy: phy@1d87000 {
 			compatible = "qcom,sm8250-qmp-ufs-phy";
-			reg = <0 0x01d87000 0 0x1c0>;
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
+			reg = <0 0x01d87000 0 0x1000>;
+
 			clock-names = "ref",
 				      "ref_aux";
 			clocks = <&rpmhcc RPMH_CXO_CLK>,
@@ -2224,16 +2222,10 @@ ufs_mem_phy: phy@1d87000 {
 
 			resets = <&ufs_mem_hc 0>;
 			reset-names = "ufsphy";
-			status = "disabled";
 
-			ufs_mem_phy_lanes: phy@1d87400 {
-				reg = <0 0x01d87400 0 0x16c>,
-				      <0 0x01d87600 0 0x200>,
-				      <0 0x01d87c00 0 0x200>,
-				      <0 0x01d87800 0 0x16c>,
-				      <0 0x01d87a00 0 0x200>;
-				#phy-cells = <0>;
-			};
+			#phy-cells = <0>;
+
+			status = "disabled";
 		};
 
 		cryptobam: dma-controller@1dc4000 {
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
