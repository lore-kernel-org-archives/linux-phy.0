Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73BCDC19F32
	for <linux-phy@archiver.kernel.org>; Wed,  5 Mar 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wkiQ6h829QakbMXY3fd34qYI6u8ANVPAnebRA3k+Jrk=; b=KMT/5F3QykmG67
	CcQMOtTfY3LlBX7RBhflSxrOHO8sPPKUHCR/9RzLNvW2+vw9jfQQhLTGfDIdEovbyrsV6//4PKhZD
	hVxG2T3Nh00d6SGupdhxrjkc7vjzLnIIynMtQvfmonqmbdcV0rvE/ObcWy9Z04+ZsVS6MdvvP4l9k
	3OehoUxWvzDSWOwoBA51og5qfjKm6Fsinclhx7T42cJcQs5rO16egwxfJQmpQc7ILvI2qwQzzBU6N
	e1tKd3Ku8lG2eBfsvsvlJmBY5aVKTLngFv4nAChXVWT0X8UjpZc/XrtYZ2U6dNhRsc/DlOUTtFeXa
	rVfCpnGLB4JTLDxio10g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpfvE-00000006vI8-22Cf;
	Wed, 05 Mar 2025 03:59:52 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpexO-00000006qPJ-10C6
	for linux-phy@bombadil.infradead.org;
	Wed, 05 Mar 2025 02:58:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=K8qDHMP0/psqxw/XtRcA0VzgZ/XpGSLC12c3xrF1aPA=; b=Jiir7HGqieRUXRZnXm/3ZhPr/3
	ub4I7awZA2yTLrIEM7iEQQ6suJEkeikXJeGFfM+CosEZvuiLCXJlIsAbY1OXUDfVR0U08uEmM0RGE
	WJBGKH351hQJ8B/9SyRc31PNpKyZtOJpDBHQhA5ASmZqlEnzGrho0yKSDKcF/qpFGUoUS4TDA+9nW
	4bJ+24HwrIdy1xC4ffsAnjAmTPGpbYIidzozmS/vE4g3ET7x/O8mdDAqfhF9ruPOKkZBw8+xHJwAg
	q0Mv0Xpy7swT0PNv8YskfEbLdfAMPjydbipJAzA8Z0oqCNSFSXCpoo0KQnT8Ekzue8qMRxRWX4iGM
	gLHceeVw==;
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by casper.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpexJ-00000004aXg-3s09
	for linux-phy@lists.infradead.org;
	Wed, 05 Mar 2025 02:58:01 +0000
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-5497e7bf2e0so244758e87.3
        for <linux-phy@lists.infradead.org>; Tue, 04 Mar 2025 18:57:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741143473; x=1741748273; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=K8qDHMP0/psqxw/XtRcA0VzgZ/XpGSLC12c3xrF1aPA=;
        b=pcpj7Wr5IKvfh1o8yaBGhdLSUUKWvHKD+C0988wzDXQwxmjGxescY5vNAI4b4ZmDGV
         br06J/fJik6KjhHuxLgyiUUQ3ALVS+rUJ2xkcAn7hNNwKOZr4AzuzzsbXgNxyIYmAPnG
         TFYLGXRzdjAqK6o5R9P+m/WZN4moUuLxqff7Hxz7yTOpCBeb1OBAKsPBTDzEkT8w+n3K
         ZHPoBUQfbgS+euiofjwosntSKZq0rAZx8Y12Q6sv07DHV6SXwrNLV9Deno5ObJQjOThH
         PO4ahM5nd7q85c5XxpwwlV3MIj7NUGFE4wG+4upJLeTZZzdNpxxjTW5MoDNtPcUVG5LW
         pAKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741143473; x=1741748273;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=K8qDHMP0/psqxw/XtRcA0VzgZ/XpGSLC12c3xrF1aPA=;
        b=AI0MkP5XlUn0dKFLKc0LUTZUd+2VHzpeUWXsEVdW7ROURyJfjyXy2NdnoRwJ4o7Jto
         BbonRkEvoIC9ORZg3+KibCno9Kbgl9SSuAY6WHNvET0C7/GXBJ+d3wk1Nbc4Sqpb5vOU
         oRIzph93uxeX0es00N2tY/EenX56FZxZ00sv0RfH4ya6Gy66JJKsIEpFMwU3dOoiM1IP
         XheS1VCQ9orI8ni25VN4kFqmXXLdHgOYM0y25/V9eU1lbhgtWAtTaqYmZmsW9JU09tP8
         TWJyvNuiahDpI280M9YQKEynqaC9UQduuLTrvCCKj0/RkUXVqY6ojVb4wUs31hc/Z22a
         mvOg==
X-Forwarded-Encrypted: i=1; AJvYcCWSvM956Lp723xzqbB7YIcyBgSU9Ln3e4eh/YOBKeTUAeF9h7NqBxDZEG3KRTbFMoGtSseWDH13UJ8=@lists.infradead.org
X-Gm-Message-State: AOJu0YxJ5msqx69HPKo3vkvi7A0yj9F4VeNvg7BS+fMZtHg/K2Ue7r92
	HURcQwHEArR16Ey+CV8EJXZ65W+epNlZoAR3mNnnWwuBtzljWLYbrf6tcwY3htI=
X-Gm-Gg: ASbGncur09GZIjPIHvcKA5ab1oZh0/rBmTxXtWDe4dBL95NjQ9P0batcpKtWnE2C68K
	R5jTYY0ycxCyn+LzXkRskSAzQpbP3RurIrTpQmVJ8CWKzbKRrPAPeS7lBpho/vU+DMNH5/kRLf5
	/ApAEgHzkfHIXbbU3UF1VbL7Gvi0zQTGOOMA7TQR/fgRyBs3e2toa8qHVqxndLIDu0gyCtzencs
	NqDioCqIUq8ImzsmjTxj3PvvNgTTz2AvNoaij8Z6LFxpM4awE10jrEMe838g99tirM+CNaD6Z6a
	E8YpRtno2bsRIcKGCNUzhBsi/+dImjfx08p1yH6be8ldQ5JnSOZS7x1Humpngl1s94QSwevs+FO
	uIV037tQil+xhzU2lJ9G7VzYx
X-Google-Smtp-Source: AGHT+IHGOGwNINTW4ac1tC6VSgjqBJC0+1KyVOaHFcHtINPFKwdR1g09IOAfwlXr5N6PwikUjAqrUg==
X-Received: by 2002:a05:6512:ac7:b0:545:2335:6597 with SMTP id 2adb3069b0e04-5497d383726mr462845e87.50.1741143473438;
        Tue, 04 Mar 2025 18:57:53 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5494efff26esm1486481e87.73.2025.03.04.18.57.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Mar 2025 18:57:52 -0800 (PST)
Date: Wed, 5 Mar 2025 04:57:50 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Melody Olvera <quic_molvera@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 7/9] arm64: dts: qcom: sm8750: Add USB support to
 SM8750 SoCs
Message-ID: <qr5vsq5b4pf5po3uq4esrozfjkmzq5q55tqlxxc74fh2pcygzi@vb7txcm5wpst>
References: <20250304-sm8750_usb_master-v2-0-a698a2e68e06@quicinc.com>
 <20250304-sm8750_usb_master-v2-7-a698a2e68e06@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250304-sm8750_usb_master-v2-7-a698a2e68e06@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250305_025758_063431_9F2F5A26 
X-CRM114-Status: GOOD (  17.91  )
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

On Tue, Mar 04, 2025 at 01:56:40PM -0800, Melody Olvera wrote:
> From: Wesley Cheng <quic_wcheng@quicinc.com>
> 
> Add the base USB devicetree definitions for SM8750 platforms.  The overall
> chipset contains a single DWC3 USB3 controller (rev. 200a), SS QMP PHY
> (rev. v8) and M31 eUSB2 PHY.  The major difference for SM8750 is the
> transition to using the M31 eUSB2 PHY compared to previous SoCs.
> 
> Enable USB support on SM8750 MTP and QRD variants. SM8750 has a QMP combo
> PHY for the SSUSB path, and a M31 eUSB2 PHY for the HSUSB path.
> 
> Signed-off-by: Wesley Cheng <quic_wcheng@quicinc.com>
> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sm8750.dtsi | 163 +++++++++++++++++++++++++++++++++++
>  1 file changed, 163 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
> index 3bbd7d18598ee0a3a0d5130c03a3166e1fc14d82..e543e65c7aba3213ca0b8a8f6dbaf1371ed8317e 100644
> --- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
> @@ -10,6 +10,7 @@
>  #include <dt-bindings/interconnect/qcom,icc.h>
>  #include <dt-bindings/interconnect/qcom,sm8750-rpmh.h>
>  #include <dt-bindings/interrupt-controller/arm-gic.h>
> +#include <dt-bindings/phy/phy-qcom-qmp.h>
>  #include <dt-bindings/power/qcom,rpmhpd.h>
>  #include <dt-bindings/power/qcom-rpmpd.h>
>  #include <dt-bindings/soc/qcom,rpmh-rsc.h>
> @@ -1966,6 +1967,168 @@ lpass_lpicx_noc: interconnect@7420000 {
>  			#interconnect-cells = <2>;
>  		};
>  
> +		usb_1_hsphy: phy@88e3000 {
> +			compatible = "qcom,sm8750-m31-eusb2-phy";
> +			reg = <0x0 0x88e3000 0x0 0x29c>;
> +
> +			clocks = <&tcsrcc TCSR_USB2_CLKREF_EN>;
> +			clock-names = "ref";
> +
> +			resets = <&gcc GCC_QUSB2PHY_PRIM_BCR>;
> +
> +			#phy-cells = <0>;
> +
> +			status = "disabled";
> +		};
> +
> +		usb_dp_qmpphy: phy@88e8000 {
> +			compatible = "qcom,sm8750-qmp-usb3-dp-phy";
> +			reg = <0x0 0x088e8000 0x0 0x4000>;
> +
> +			clocks = <&gcc GCC_USB3_PRIM_PHY_AUX_CLK>,
> +				 <&rpmhcc RPMH_CXO_CLK>,
> +				 <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>,
> +				 <&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>;
> +			clock-names = "aux",
> +				      "ref",
> +				      "com_aux",
> +				      "usb3_pipe";
> +
> +			resets = <&gcc GCC_USB3_PHY_PRIM_BCR>,
> +				 <&gcc GCC_USB3_DP_PHY_PRIM_BCR>;
> +			reset-names = "phy",
> +				      "common";
> +
> +			power-domains = <&gcc GCC_USB3_PHY_GDSC>;
> +
> +			#clock-cells = <1>;
> +			#phy-cells = <1>;
> +
> +			orientation-switch;
> +
> +			status = "disabled";
> +
> +			ports {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +
> +				port@0 {
> +					reg = <0>;
> +
> +					usb_dp_qmpphy_out: endpoint {
> +					};
> +				};
> +
> +				port@1 {
> +					reg = <1>;
> +
> +					usb_dp_qmpphy_usb_ss_in: endpoint {
> +						remote-endpoint = <&usb_1_dwc3_ss>;
> +					};
> +				};
> +
> +				port@2 {
> +					reg = <2>;
> +
> +					usb_dp_qmpphy_dp_in: endpoint {
> +					};
> +				};
> +			};
> +		};
> +
> +		usb_1: usb@a6f8800 {
> +			compatible = "qcom,sm8750-dwc3", "qcom,dwc3";
> +			reg = <0x0 0x0a6f8800 0x0 0x400>;
> +			status = "disabled";

Status should be the last property

> +			#address-cells = <2>;
> +			#size-cells = <2>;
> +			ranges;
> +
> +			clocks = <&gcc GCC_CFG_NOC_USB3_PRIM_AXI_CLK>,
> +				 <&gcc GCC_USB30_PRIM_MASTER_CLK>,
> +				 <&gcc GCC_AGGRE_USB3_PRIM_AXI_CLK>,
> +				 <&gcc GCC_USB30_PRIM_SLEEP_CLK>,
> +				 <&gcc GCC_USB30_PRIM_MOCK_UTMI_CLK>,
> +				 <&tcsrcc TCSR_USB3_CLKREF_EN>;
> +			clock-names = "cfg_noc",
> +				      "core",
> +				      "iface",
> +				      "sleep",
> +				      "mock_utmi",
> +				      "xo";
> +
> +			assigned-clocks = <&gcc GCC_USB30_PRIM_MOCK_UTMI_CLK>,
> +					  <&gcc GCC_USB30_PRIM_MASTER_CLK>;
> +			assigned-clock-rates = <19200000>, <200000000>;
> +
> +			interrupts-extended = <&intc GIC_SPI 130 IRQ_TYPE_LEVEL_HIGH>,
> +						  <&intc GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH>,

Misaligned

> +					      <&pdc 14 IRQ_TYPE_EDGE_BOTH>,
> +					      <&pdc 15 IRQ_TYPE_EDGE_BOTH>,
> +					      <&pdc 17 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "pwr_event",
> +					  "hs_phy_irq",
> +					  "dp_hs_phy_irq",
> +					  "dm_hs_phy_irq",
> +					  "ss_phy_irq";
> +
> +			power-domains = <&gcc GCC_USB30_PRIM_GDSC>;
> +			required-opps = <&rpmhpd_opp_nom>;
> +
> +			resets = <&gcc GCC_USB30_PRIM_BCR>;
> +
> +			interconnects = <&aggre1_noc MASTER_USB3_0 0 &mc_virt SLAVE_EBI1 0>,

QCOM_ICC_TAG_ALWAYS

> +					<&gem_noc MASTER_APPSS_PROC 0 &config_noc SLAVE_USB3_0 0>;
> +			interconnect-names = "usb-ddr", "apps-usb";
> +

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
