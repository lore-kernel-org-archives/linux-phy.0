Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EFC13C7EE23
	for <linux-phy@archiver.kernel.org>; Wed, 31 May 2023 02:34:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sj29EktBl+pEdwkxldrSH+6lCT+a2IPeu63kWdWI7QM=; b=PeIerQpnByDuot
	+JRolEkMDaLOVasAFtBthkSTCgA52UtaYa0S3G3RWRVLh7E9nV1JAlInHfv5T5zzzi2w622MbxcsL
	gShqTuCk5PrmK9uxNU1Qwz3Zi/N4wP0AapaKhIGHCKACtCNICUAO9m4WKHLKe9pJITjRrRgnJGkRq
	ugppWuz1urXLMB76XhK0IGIdBZuDKaOq+JDcC3fCZnUHxveVve5MovacKD/Yx5zl8ncxE+AUXY5rg
	wjrdS/cQPNc1yMe/vBqCHEoq+9U2aS1hEIqkDqfUdfhF7nmNJmW3JABw2CNSVuHcrsHu+AXX3hZ14
	R2g25jcVsoxGBzn1AvIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4BfM-00FoCN-2A;
	Wed, 31 May 2023 02:34:24 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4BfI-00Fo9Y-2w
	for linux-phy@lists.infradead.org;
	Wed, 31 May 2023 02:34:22 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-4f3b4ed6fdeso5640634e87.3
        for <linux-phy@lists.infradead.org>; Tue, 30 May 2023 19:34:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685500459; x=1688092459;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=U9zLR0yP0kogO77MGa+xMkoNoJiQn2OaX0oS+mqXb24=;
        b=jB0nFWryhuVDAC6Q+Q4btxdFcpTyXL8VZLNlgjNxjWLNBjKR51Gzlr9tyNq4/QN+mX
         rQXblbOlnW9pyrEzmss0XhPwx1oUEc1Vt+RqgOCeM3YoiytuiXd9r7cbX19Z/2t0o85G
         zMCJEuM3ecDEaovV/ZntTZZVGKWndicTbLnKbrkAg+0cMjcLPzl0a0PgtPWClJ+nijQy
         YNGlGhptCOeEhTsqAICG+mabw+zSCUFpMnV5nA6f8WPmOUYDpMRLWt1Ml8iPL1LW7uaN
         AdbBYFEhFNae9WPRXP159qf16uqjMi3jN8k1+BeRlykbddIuYIY4YzOWs3vkOh26dvR/
         zJ1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685500459; x=1688092459;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=U9zLR0yP0kogO77MGa+xMkoNoJiQn2OaX0oS+mqXb24=;
        b=ZcWioEJ3AlcVPVtOuP/lej6cKL/yvZdzbnTLkYjOR3DtuwNY6nxKA8tkwXy9QVzBRr
         RLl3WbgB55k0O0X3k+XmEXl+rDEX0ntuZOI5mbMPgVvfUKzKktecgo19XVIbNZPGRpI2
         BJTr2l9fM47QS+aKb+udkzro8ctZQVSPced3h+XiCn2esyeYw5N/Ohrp4NT5Zm5ei/wa
         Zr27s5RH2RQTfnUX1w9uwogSdlooWnJXK6cSCi6KkQLsn4mc6O921bjPKlqbuRvlEMFW
         jMnb8DP1bKKHFXUnWkwF11dN+kCVcL+5VuWPRWIVvPNpX3XFc58FOIcd+i3NYs+cf2NW
         JT4w==
X-Gm-Message-State: AC+VfDwJ8PSNRhoHpbDck6fwYo+1xINnqooE8RRqZapRat4Tx4NR91pI
	H0nM7tr3N/no78DOzi5sBkf3cg==
X-Google-Smtp-Source: ACHHUZ60rItDq5LvcJMChOqD+GSONQMDeEKpsEJY02Y0vS+KdsHwFA7ECIqUJncobVIOSsryTE2GSw==
X-Received: by 2002:ac2:5973:0:b0:4f4:ca61:82ba with SMTP id h19-20020ac25973000000b004f4ca6182bamr1714795lfp.67.1685500459638;
        Tue, 30 May 2023 19:34:19 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id v24-20020ac25618000000b004f3787d8006sm524096lfd.128.2023.05.30.19.34.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 May 2023 19:34:19 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Caleb Connolly <caleb.connolly@linaro.org>
Subject: [PATCH v3 3/5] arm64: dts: qcom: sm8150: turn first USB PHY into USB+DP PHY
Date: Wed, 31 May 2023 05:34:13 +0300
Message-Id: <20230531023415.1209301-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230531023415.1209301-1-dmitry.baryshkov@linaro.org>
References: <20230531023415.1209301-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230530_193420_953037_1EC17B2D 
X-CRM114-Status: UNSURE (   9.51  )
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

The first USB PHY on the sm8150 platform is really the USB+DP combo
PHY. Add the DP part of the PHY.

Tested-by: Caleb Connolly <caleb.connolly@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8150.dtsi | 19 ++++++++++++++-----
 1 file changed, 14 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
index 2273fa571988..95789bdbdb02 100644
--- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
@@ -3399,25 +3399,24 @@ usb_2_hsphy: phy@88e3000 {
 		};
 
 		usb_1_qmpphy: phy@88e9000 {
-			compatible = "qcom,sm8150-qmp-usb3-phy";
+			compatible = "qcom,sm8150-qmp-usb3-dp-phy";
 			reg = <0 0x088e9000 0 0x18c>,
-			      <0 0x088e8000 0 0x10>;
+			      <0 0x088e8000 0 0x38>,
+			      <0 0x088ea000 0 0x40>;
 			status = "disabled";
 			#address-cells = <2>;
 			#size-cells = <2>;
 			ranges;
-
 			clocks = <&gcc GCC_USB3_PRIM_PHY_AUX_CLK>,
 				 <&rpmhcc RPMH_CXO_CLK>,
 				 <&gcc GCC_USB3_PRIM_CLKREF_CLK>,
 				 <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>;
 			clock-names = "aux", "ref_clk_src", "ref", "com_aux";
-
 			resets = <&gcc GCC_USB3_DP_PHY_PRIM_BCR>,
 				 <&gcc GCC_USB3_PHY_PRIM_BCR>;
 			reset-names = "phy", "common";
 
-			usb_1_ssphy: phy@88e9200 {
+			usb_1_ssphy: usb3-phy@88e9200 {
 				reg = <0 0x088e9200 0 0x200>,
 				      <0 0x088e9400 0 0x200>,
 				      <0 0x088e9c00 0 0x218>,
@@ -3430,6 +3429,16 @@ usb_1_ssphy: phy@88e9200 {
 				clock-names = "pipe0";
 				clock-output-names = "usb3_phy_pipe_clk_src";
 			};
+
+			usb_1_dpphy: dp-phy@88ea200 {
+				reg = <0 0x088ea200 0 0x200>,
+				      <0 0x088ea400 0 0x200>,
+				      <0 0x088eaa00 0 0x200>,
+				      <0 0x088ea600 0 0x200>,
+				      <0 0x088ea800 0 0x200>;
+				#clock-cells = <1>;
+				#phy-cells = <0>;
+			};
 		};
 
 		usb_2_qmpphy: phy@88eb000 {
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
