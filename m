Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01E41C38142
	for <linux-phy@archiver.kernel.org>; Fri, 27 Jan 2023 12:53:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pftG15tWlZ8CyP+8pBUf0IBrgT5YScXEqjIYP96TO9I=; b=KQkzKio/IIHj8+
	CQS0Bqx7PeacDOGj29Fx5mTN0PkTxo94f/w/Nm7PAfbdVJqktcyFjGLy0rAPzK0OEL+NArcs/0jaq
	5wkVcQ08+INQJ2y0YMQZMHC8LXH5LhFoe/1Yx7iKSa9WPoSMkNyDRSiKNRh5Qe2uwVvJNLuiPQvqq
	v/M7hNj81a9fn1/aPJwgm96uJEzT9wgCd2+aX1/kb35s0JQCGMa9Eh6orS4klB6JhBxIyFwSomieU
	t0af5GAdW66NrtcdoM6pL2UzF2+GDuy49hmZK5EWV6H7kqxIFruGjIc+njFX48T2+VjHUMIpzBvZN
	AI+oKxzArQrQT/Fer/ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLOEY-00Ejl3-1G; Fri, 27 Jan 2023 12:53:34 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLNJo-00EJZE-8k
	for linux-phy@lists.infradead.org; Fri, 27 Jan 2023 11:54:58 +0000
Received: by mail-wm1-x334.google.com with SMTP id l8so3268565wms.3
        for <linux-phy@lists.infradead.org>; Fri, 27 Jan 2023 03:54:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=bTM0gFp5KxvcXFhrslPw+2Glr7b468eMGXFy1OhWB+c=;
        b=q06hgvOj+Xtn4s9r6mKV94U0o/76CmKN2XFV44pfrJXqydcWHnGkl9+zZBVstEWD5j
         uIgSSUMLUDY9xHtF41eTajQov9fIYDlhpXmxN10ksuBh1HbT/GyKJ1jttPoEWkciOGdb
         QSilNDacy2NVZ62EcC5PAVLpwSc0+uLOACXLhIFAt7EC6Dwg+CGEIP9dNm5hAxHy0q5E
         iwOXVcoRghCmVcVgil96Cie0MecNKK2pPPvCdoVWlZ+sMidKdzTvSnFc9VQTPKGvhGYY
         dNJocB9NZvp0kkDdavHRZWnkJnFlWEugi+9YD86YLxZ6JPWf6jAzeWzVVgK53GIYLJg9
         Bj3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bTM0gFp5KxvcXFhrslPw+2Glr7b468eMGXFy1OhWB+c=;
        b=beldcA2tWGmQwVq9KRIWdnoV3K2qu+eDzhwN7TgvkZTLwAJmrs2GQ7Hi8NFAlhB36U
         f6HEWhb5vJmTkDhB7TL6uHXvW79yzK2NPEltzVvNgb7J2f2Q/ZwxMxvu3r/0QYAG480v
         mijFFQ7oEE2SphrjNC6ONV9pvsnaj/m99e8om+T46yLR2JPW9P02m/9EjKnl6F0Y3KCL
         Liicj9XhalElWxqZNggmg3Ie1+T5h8O37/vIZ1BhJUw9sJIULGkmlWE98ijHbNTe0DiS
         X3Png/99b2OQfvng4bI64KZfjLizQRHc9pJIihNynseWkDYmgcpxkVtxT48Snbeys0y+
         YOEg==
X-Gm-Message-State: AFqh2koLngNLWzJnsrZubDF/zYRFCXnziQRdk9pzIcPLUlROAQlyYLfh
	8X1E5Jc9rPMtUG3fKie97tfLzw==
X-Google-Smtp-Source: AMrXdXs5wVjJyw/spbdn3FgvnpaB52FILs+zVilUoFZzcqbG4OecsUQD3ZOFRjBOJvhGJ9LJ26nDxg==
X-Received: by 2002:a05:600c:1906:b0:3da:1d51:ef9d with SMTP id j6-20020a05600c190600b003da1d51ef9dmr40163633wmq.15.1674820491790;
        Fri, 27 Jan 2023 03:54:51 -0800 (PST)
Received: from linaro.org ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id g12-20020a05600c310c00b003db012d49b7sm15012012wmo.2.2023.01.27.03.54.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jan 2023 03:54:51 -0800 (PST)
Date: Fri, 27 Jan 2023 13:54:49 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	"vkoul@kernel.org" <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v2 7/8] arm64: dts: qcom: sm8550: Add USB PHYs and
 controller nodes
Message-ID: <Y9O7iVXN1AgsRQKi@linaro.org>
References: <20230126124651.1362533-1-abel.vesa@linaro.org>
 <20230126124651.1362533-8-abel.vesa@linaro.org>
 <2d368c6f-5240-8aec-ef27-a86b2a361856@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2d368c6f-5240-8aec-ef27-a86b2a361856@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230127_035456_361841_521D96F3 
X-CRM114-Status: GOOD (  21.46  )
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

On 23-01-27 12:51:05, Krzysztof Kozlowski wrote:
> On 26/01/2023 13:46, Abel Vesa wrote:
> > Add USB host controller and PHY nodes.
> > 
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > ---
> > 
> > NOTE: This patch has been already merged. It is here only to provide
> > context for the rest of the patchset. There is a change with respect to the
> > clocks, but that will be sent as a separate/individual fix patch.
> > 
> >  arch/arm64/boot/dts/qcom/sm8550.dtsi | 92 +++++++++++++++++++++++++++-
> >  1 file changed, 91 insertions(+), 1 deletion(-)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> > index 4daf1f03d79f..6801454bbe10 100644
> > --- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> > @@ -13,6 +13,7 @@
> >  #include <dt-bindings/mailbox/qcom-ipcc.h>
> >  #include <dt-bindings/power/qcom-rpmpd.h>
> >  #include <dt-bindings/soc/qcom,rpmh-rsc.h>
> > +#include <dt-bindings/phy/phy-qcom-qmp.h>
> >  #include <dt-bindings/thermal/thermal.h>
> >  
> >  / {
> > @@ -652,7 +653,7 @@ gcc: clock-controller@100000 {
> >  				 <&ufs_mem_phy 0>,
> >  				 <&ufs_mem_phy 1>,
> >  				 <&ufs_mem_phy 2>,
> > -				 <0>;
> > +				 <&usb_dp_qmpphy QMP_USB43DP_USB3_PIPE_CLK>;
> >  		};
> >  
> >  		ipcc: mailbox@408000 {
> > @@ -1924,6 +1925,95 @@ opp-202000000 {
> >  			};
> >  		};
> >  
> > +		usb_1_hsphy: phy@88e3000 {
> > +			compatible = "qcom,sm8550-snps-eusb2-phy";
> > +			reg = <0x0 0x088e3000 0x0 0x154>;
> > +			#phy-cells = <0>;
> > +
> > +			clocks = <&tcsr TCSR_USB2_CLKREF_EN>;
> > +			clock-names = "ref";
> > +
> > +			resets = <&gcc GCC_QUSB2PHY_PRIM_BCR>;
> > +
> > +			status = "disabled";
> > +		};
> > +
> > +		usb_dp_qmpphy: phy@88e8000 {
> > +			compatible = "qcom,sm8550-qmp-usb3-dp-phy";
> > +			reg = <0x0 0x088e8000 0x0 0x3000>;
> > +
> > +			clocks = <&gcc GCC_USB3_PRIM_PHY_AUX_CLK>,
> > +				 <&rpmhcc RPMH_CXO_CLK>,
> > +				 <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>,
> > +				 <&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>;
> > +			clock-names = "aux", "ref", "com_aux", "usb3_pipe";
> > +
> > +			power-domains = <&gcc USB3_PHY_GDSC>;
> > +
> > +			resets = <&gcc GCC_USB3_DP_PHY_PRIM_BCR>,
> > +				 <&gcc GCC_USB3_PHY_PRIM_BCR>;
> > +			reset-names = "phy", "common";
> > +
> > +			#clock-cells = <1>;
> > +			#phy-cells = <1>;
> > +
> > +			status = "disabled";
> > +		};
> > +
> > +		usb_1: usb@a6f8800 {
> > +			compatible = "qcom,sm8550-dwc3", "qcom,dwc3";
> > +			reg = <0x0 0x0a6f8800 0x0 0x400>;
> > +			#address-cells = <2>;
> > +			#size-cells = <2>;
> > +			ranges;
> > +
> > +			clocks = <&gcc GCC_CFG_NOC_USB3_PRIM_AXI_CLK>,
> > +				 <&gcc GCC_USB30_PRIM_MASTER_CLK>,
> > +				 <&gcc GCC_AGGRE_USB3_PRIM_AXI_CLK>,
> > +				 <&gcc GCC_USB30_PRIM_SLEEP_CLK>,
> > +				 <&gcc GCC_USB30_PRIM_MOCK_UTMI_CLK>,
> > +				 <&rpmhcc TCSR_USB3_CLKREF_EN>;
> > +			clock-names = "cfg_noc",
> > +				      "core",
> > +				      "iface",
> > +				      "sleep",
> > +				      "mock_utmi",
> > +				      "xo";
> > +
> > +			assigned-clocks = <&gcc GCC_USB30_PRIM_MOCK_UTMI_CLK>,
> > +					  <&gcc GCC_USB30_PRIM_MASTER_CLK>;
> > +			assigned-clock-rates = <19200000>, <200000000>;
> > +
> > +			interrupts-extended = <&intc GIC_SPI 130 IRQ_TYPE_LEVEL_HIGH>,
> > +					      <&pdc 17 IRQ_TYPE_LEVEL_HIGH>,
> > +					      <&pdc 15 IRQ_TYPE_EDGE_RISING>,
> > +					      <&pdc 14 IRQ_TYPE_EDGE_RISING>;
> > +			interrupt-names = "hs_phy_irq",
> > +					  "ss_phy_irq",
> > +					  "dm_hs_phy_irq",
> > +					  "dp_hs_phy_irq";
> > +
> > +			power-domains = <&gcc USB30_PRIM_GDSC>;
> > +			required-opps = <&rpmhpd_opp_nom>;
> 
> This part was merged but it is not correct without [1]. Are we going to
> revive [1] or should we drop it?

Well, but this one has been merged as well for sc8280xp:
https://lore.kernel.org/all/20230112135117.3836655-1-quic_bjorande@quicinc.com/

> 
> [1] https://lore.kernel.org/all/YXcBK7zqny0s4gd4@ripper/
> 
> Best regards,
> Krzysztof
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
