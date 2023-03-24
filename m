Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C7F5C6FD20
	for <linux-phy@archiver.kernel.org>; Fri, 24 Mar 2023 21:56:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7gkaRcdIf6WqKBQkiJ5CvBJhDP3jnR5GNbaWwGqj4LY=; b=LJhkU6Etz6wjzQ
	35Kk8Kop72tfRmKSUTcko9CrFfi1ZykCpiVickAY+k55vpxTM8HmkES/cjlgO9g2e9/CKLdG6YBkh
	Hk+G56wl+7/AfgGslgr/hyRnQ6P6XrJWc98gp5qu+eaoR1POds0AFFxBPK/2x8+OtJ+7Qi3nXARwA
	Yd5HP51iFwd33wj5lnLWSDB56vsugWa50dcEGATG5+iadSCvO+Eipel2bqm71fbCKYw6rWjQxO8mk
	jHXFOf4Ope3T8mDEoRRIIK2LG4yKfalgYK1ymJznzZt2RKdqRhx96xa2F8aZTRXFg8rL9oGpYL2SO
	E7tqW63VVeidLPr9KhIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfpOI-005gmL-2R;
	Fri, 24 Mar 2023 21:56:06 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfpOE-005gi5-15
	for linux-phy@lists.infradead.org;
	Fri, 24 Mar 2023 21:56:03 +0000
Received: by mail-lf1-x12f.google.com with SMTP id k37so4003825lfv.0
        for <linux-phy@lists.infradead.org>; Fri, 24 Mar 2023 14:55:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679694954;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gDuXl+rlvE0S+MQ2OTZzIJEdMNUWgkN8TMRASNkhtuY=;
        b=tionj0+vjUoh6Y9xW8aTtCN3pUnVzHGQLtOnnAEaOzOGaWZWyJT8/6lgQuujzj/8Z3
         aPa7gOJlFzA3JCA5pX4caKefnjapXuzAiNp5o7+mCPl4Zssi3iGepCsBNMIuowWNEc+k
         Zr6zUSxEsvJfaz0NmFw+kkORgfcwZG3YGTIlr5M5MgATjCB52UaNzRyIh4p4AuQ1LadV
         B3ywXvhNsVpX+Flaj5oU0sc9SewHkG8gALbUMUmL48hj4JK70307RoQ2KWRnfLGeRZdr
         LWb6FqzFktUr45pYZ8hf2L9il1h8ni/OGEUexRheUCzl/4WKEG0tHvjwYo3BaUodxM+O
         NEUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679694954;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gDuXl+rlvE0S+MQ2OTZzIJEdMNUWgkN8TMRASNkhtuY=;
        b=OblwPpga6qMMbzdsnhgJb1rxFUbOXF83OmkDMQxLE75y7ezEOI3NE4wAf6M+MP1Tg4
         5A0qM0uRgjyMXvCoMMKJGt9TX1PD7oQ8gF6WbnrESbmzJU8kjNdnDRwCUw73aIPqqIpb
         +onI665M/7XfbKE47gRcjH/cV7Q8U6IT8OhPCee2BWPwKRkqBv9cLBZO2D4OEAbioBN4
         IBZi9xyqPqp7RDV2Z3jwM7EnHD5v0FTtSUo7pHtUhTian2oWdykyEEH/8gn0HkhGS4bm
         SD/1e3kTWr3nF1enhmss1ZfpwCccLul2Y57TbP1EkZ4LE5n509OmzOCJ+tq2k4b+ayGp
         4x6Q==
X-Gm-Message-State: AAQBX9e2EhwaVSlVjXyjty6P9EjXlM9/8RIs902LnMv47/e9wnMPSxWv
	7UszHJZNnPeRUWSM+jwdk5Qmyg==
X-Google-Smtp-Source: AKy350Y3737OLOidlbPQ2HUCI6UZEQUuCTbMWzspr7u0eqoMYD/wQkrEJ4aRp1VytTUsSZOQ8xh3TA==
X-Received: by 2002:a19:7007:0:b0:4df:51a7:a92 with SMTP id h7-20020a197007000000b004df51a70a92mr1154724lfc.11.1679694954619;
        Fri, 24 Mar 2023 14:55:54 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id y1-20020a197501000000b004dcf20843efsm3488285lfe.239.2023.03.24.14.55.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Mar 2023 14:55:54 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan+linaro@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH 3/5] arm64: dts: qcom: sm8150: turn first USB PHY into USB+DP PHY
Date: Sat, 25 Mar 2023 00:55:48 +0300
Message-Id: <20230324215550.1966809-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230324215550.1966809-1-dmitry.baryshkov@linaro.org>
References: <20230324215550.1966809-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230324_145602_374320_900A3C3E 
X-CRM114-Status: UNSURE (   8.93  )
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

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8150.dtsi | 17 +++++++++++++----
 1 file changed, 13 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
index 9491be4a6bf0..a618218f7b68 100644
--- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
@@ -3392,20 +3392,19 @@ usb_2_hsphy: phy@88e3000 {
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
@@ -3423,6 +3422,16 @@ usb_1_ssphy: phy@88e9200 {
 				clock-names = "pipe0";
 				clock-output-names = "usb3_phy_pipe_clk_src";
 			};
+
+			usb_1_dpphy: phy@88ea200 {
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
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
