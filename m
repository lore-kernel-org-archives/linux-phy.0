Return-Path: <SRS0=ZbHx=IQ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50EBFC433DB
	for <linux-phy@archiver.kernel.org>; Thu, 18 Mar 2021 19:03:26 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D830F64F1F
	for <linux-phy@archiver.kernel.org>; Thu, 18 Mar 2021 19:03:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D830F64F1F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Q/r+xfi/+ow6CCNLhTAxePTjMFjd+C7cXypntH1m6Y0=; b=YKyFsCGJEej5VqXVWCq1AAAjH
	IT6uG+IFPSFQuCeh3Yrbnw3+dT0G2N4xodw8KcK4h+/Re8G4dOoO+skIDeFMIBOtcb7RJ54UcWwgm
	y3NM9ZEmj9d05dDPOk8VFW2hcgWoMWpnnb2ZINMuxsQAKlQf/Q6Sa40uNJ5+bfHHKuEGDcURXqgVx
	/xouNCUt8wiS8b03bjYxnxG4cPTkSEMMqRjczBObXoIcZBjd9wBlTjZW/b5p4ayulJWHM5+eqQQR+
	68wNdBVdsTtBC0QRvNBmkhR47HBWO6vxZ8smxWBCe95f/+vAqflS5SMYNc/ruEqmssXCkwaHGgM+a
	4GY5HOx7w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lMxvY-005uGg-C2; Thu, 18 Mar 2021 19:03:24 +0000
Received: from mail-pl1-x62d.google.com ([2607:f8b0:4864:20::62d])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lMxvO-005uFc-6u
 for linux-phy@lists.infradead.org; Thu, 18 Mar 2021 19:03:17 +0000
Received: by mail-pl1-x62d.google.com with SMTP id g1so1777570plg.7
 for <linux-phy@lists.infradead.org>; Thu, 18 Mar 2021 12:03:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=jzYmbJsYNi3i0nscDA/NehsT3XC8mxj376UPdeaOPtY=;
 b=aEvhOtbfQ0P5O2qrvvhEcfrziJnhRlhVHVYHfVno1nnbxalGv4HrF3IHqtTXJWWF0m
 RpDhKRf3W7h5RK70iH8wcJ//ecXPcaSMD63PcyJPoMdR8o5Qnfgm+7Kr3EM82gTV2vTV
 /O81pZGTCZV+KqWxgT3qu+UVz5TR6Hdt6BnJ0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=jzYmbJsYNi3i0nscDA/NehsT3XC8mxj376UPdeaOPtY=;
 b=mUd0EzGkaMGzfnkKN0eRrWwc2vR3cEIYZIIAKP5HqLqQJqoGtcWfT+Hs+Bj0+9yYrY
 NIM9pQ0OkYlKzYk80htNoQuR1JrJw55VlhvN2M8EoDITwDyl+zFBVzMIfQnupnlyTst7
 g//n8p+VZkFaqhcr+yWmIVM1LLDI0cK7MZ2QdOv5TriB4mVbJK6gtnnQ1jahD866GV6M
 5JYEEdTFYACWqmKROCNS2bTb7Mxi04Ai5yRsBBgnQ4GaqvXmGN7rabzwwbudDlucjt8C
 jeagyqCgEKVGhO77FcISBbRVsXv7awgpH+NYyz98An/Ty7fNmspsfE7R2OYBRpQ9ekwA
 t2fA==
X-Gm-Message-State: AOAM533tYW2CtMn/34W3R0s0AfGPszaEE9ri47ZqF1F9CjrBj1R/otwV
 xbnVzlCkAmb+eMWfWDj8oHQHJA==
X-Google-Smtp-Source: ABdhPJzvffbBNV9M06ao/xW4aOFm4nl9wv78KaCFqIhLgX17ravrDF6LjwDxIjhI+NmSSV01ZxEskw==
X-Received: by 2002:a17:902:f28b:b029:e4:5039:9f03 with SMTP id
 k11-20020a170902f28bb02900e450399f03mr11355163plc.62.1616094192773; 
 Thu, 18 Mar 2021 12:03:12 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:3cf8:6a09:780b:f65d])
 by smtp.gmail.com with UTF8SMTPSA id gm9sm2985867pjb.13.2021.03.18.12.03.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 18 Mar 2021 12:03:12 -0700 (PDT)
Date: Thu, 18 Mar 2021 12:03:10 -0700
From: Matthias Kaehlcke <mka@chromium.org>
To: Sandeep Maheswaram <sanm@codeaurora.org>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Wesley Cheng <wcheng@codeaurora.org>, Stephen Boyd <swboyd@chromium.org>,
 Doug Anderson <dianders@chromium.org>,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-usb@vger.kernel.org, Manu Gautam <mgautam@codeaurora.org>
Subject: Re: [PATCH 3/3] arm64: dts: qcom: sc7280: Add USB related nodes
Message-ID: <YFOj7lrOHZE1q2If@google.com>
References: <1615978901-4202-1-git-send-email-sanm@codeaurora.org>
 <1615978901-4202-4-git-send-email-sanm@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1615978901-4202-4-git-send-email-sanm@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210318_190314_315250_5353E6CA 
X-CRM114-Status: GOOD (  18.30  )
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

On Wed, Mar 17, 2021 at 04:31:41PM +0530, Sandeep Maheswaram wrote:
> Add nodes for DWC3 USB controller, QMP and HS USB PHYs.
> 
> Signed-off-by: Sandeep Maheswaram <sanm@codeaurora.org>
> ---
>  arch/arm64/boot/dts/qcom/sc7280-idp.dts |  39 +++++++++
>  arch/arm64/boot/dts/qcom/sc7280.dtsi    | 149 ++++++++++++++++++++++++++++++++
>  2 files changed, 188 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc7280-idp.dts b/arch/arm64/boot/dts/qcom/sc7280-idp.dts
> index 54d2cb3..251a5b5 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280-idp.dts
> +++ b/arch/arm64/boot/dts/qcom/sc7280-idp.dts
> @@ -257,3 +257,42 @@
>  		bias-pull-up;
>  	};
>  };
> +
> +&usb_1 {
> +	status = "okay";
> +};
> +
> +&usb_1_dwc3 {
> +	dr_mode = "host";
> +};
> +
> +&usb_1_hsphy {
> +	status = "okay";
> +
> +	vdda-pll-supply = <&vreg_l10c_0p8>;
> +	vdda33-supply = <&vreg_l2b_3p0>;
> +	vdda18-supply = <&vreg_l1c_1p8>;
> +};
> +
> +&usb_1_qmpphy {
> +	status = "okay";
> +
> +	vdda-phy-supply = <&vreg_l6b_1p2>;
> +	vdda-pll-supply = <&vreg_l1b_0p8>;
> +};
> +
> +&usb_2 {
> +	status = "okay";
> +};
> +
> +&usb_2_dwc3 {
> +	dr_mode = "peripheral";
> +};
> +
> +&usb_2_hsphy {
> +	status = "okay";
> +
> +	vdda-pll-supply = <&vreg_l10c_0p8>;
> +	vdda33-supply = <&vreg_l2b_3p0>;
> +	vdda18-supply = <&vreg_l1c_1p8>;
> +};
> diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> index 39cf0be..a785f65 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> @@ -305,6 +305,155 @@
>  			};
>  		};
>  
> +		usb_1_hsphy: phy@88e3000 {
> +			compatible = "qcom,sc7280-usb-hs-phy",
> +				     "qcom,usb-snps-hs-7nm-phy";
> +			reg = <0 0x088e3000 0 0x400>;
> +			status = "disabled";
> +			#phy-cells = <0>;
> +
> +			clocks = <&rpmhcc RPMH_CXO_CLK>;
> +			clock-names = "ref";
> +
> +			resets = <&gcc GCC_QUSB2PHY_PRIM_BCR>;
> +		};
> +
> +		usb_2_hsphy: phy@88e4000 {
> +			compatible = "qcom,sc7280-usb-hs-phy",
> +				     "qcom,usb-snps-hs-7nm-phy";
> +			reg = <0 0x088e4000 0 0x400>;
> +			status = "disabled";
> +			#phy-cells = <0>;
> +
> +			clocks = <&rpmhcc RPMH_CXO_CLK>;
> +			clock-names = "ref";
> +
> +			resets = <&gcc GCC_QUSB2PHY_SEC_BCR>;
> +		};
> +
> +		usb_1_qmpphy: phy@88e9000 {
> +			compatible = "qcom,sm8250-qmp-usb3-phy";
> +			reg = <0 0x088e9000 0 0x200>,
> +			      <0 0x088e8000 0 0x20>;
> +			reg-names = "reg-base", "dp_com";
> +			status = "disabled";
> +			#clock-cells = <1>;

IIUC this means that the PHY is a clock provider. Which clocks does it
provide? How would a possible consumer specify the clock it wants to
use? I couldn't find the corresponding definitions in the header of the
binding

> +			#address-cells = <2>;
> +			#size-cells = <2>;
> +			ranges;
> +
> +			clocks = <&gcc GCC_USB3_PRIM_PHY_AUX_CLK>,
> +				 <&rpmhcc RPMH_CXO_CLK>,
> +				 <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>;
> +			clock-names = "aux", "ref_clk_src", "com_aux";
> +
> +			resets = <&gcc GCC_USB3_DP_PHY_PRIM_BCR>,
> +				 <&gcc GCC_USB3_PHY_PRIM_BCR>;
> +			reset-names = "phy", "common";
> +
> +			usb_1_ssphy: lanes@88e9200 {
> +				reg = <0 0x088e9200 0 0x200>,
> +				      <0 0x088e9400 0 0x200>,
> +				      <0 0x088e9c00 0 0x400>,
> +				      <0 0x088e9600 0 0x200>,
> +				      <0 0x088e9800 0 0x200>,
> +				      <0 0x088e9a00 0 0x100>;
> +				#phy-cells = <0>;
> +				clocks = <&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>;
> +				clock-names = "pipe0";
> +				clock-output-names = "usb3_phy_pipe_clk_src";
> +			};
> +		};
> +
> +		usb_2: usb@8cf8800 {
> +			compatible = "qcom,sc7280-dwc3", "qcom,dwc3";
> +			reg = <0 0x08cf8800 0 0x400>;
> +			status = "disabled";
> +			#address-cells = <2>;
> +			#size-cells = <2>;
> +			ranges;
> +			dma-ranges;
> +
> +			clocks = <&gcc GCC_CFG_NOC_USB3_SEC_AXI_CLK>,
> +				 <&gcc GCC_USB30_SEC_MASTER_CLK>,
> +				 <&gcc GCC_AGGRE_USB3_SEC_AXI_CLK>,
> +				 <&gcc GCC_USB30_SEC_MOCK_UTMI_CLK>,
> +				 <&gcc GCC_USB30_SEC_SLEEP_CLK>;
> +			clock-names = "cfg_noc", "core", "iface","mock_utmi",
> +				      "sleep";
> +
> +			assigned-clocks = <&gcc GCC_USB30_SEC_MOCK_UTMI_CLK>,
> +					  <&gcc GCC_USB30_SEC_MASTER_CLK>;
> +			assigned-clock-rates = <19200000>, <200000000>;
> +
> +			interrupts-extended = <&intc GIC_SPI 240 IRQ_TYPE_LEVEL_HIGH>,
> +				     <&pdc 13 IRQ_TYPE_EDGE_RISING>,
> +				     <&pdc 12 IRQ_TYPE_EDGE_RISING>;
> +			interrupt-names = "hs_phy_irq",
> +					  "dm_hs_phy_irq", "dp_hs_phy_irq";
> +
> +			power-domains = <&gcc GCC_USB30_SEC_GDSC>;
> +
> +			resets = <&gcc GCC_USB30_SEC_BCR>;
> +
> +			usb_2_dwc3: dwc3@8c00000 {
> +				compatible = "snps,dwc3";
> +				reg = <0 0x08c00000 0 0xe000>;
> +				interrupts = <GIC_SPI 242 IRQ_TYPE_LEVEL_HIGH>;
> +				iommus = <&apps_smmu 0xa0 0x0>;
> +				snps,dis_u2_susphy_quirk;
> +				snps,dis_enblslpm_quirk;
> +				phys = <&usb_2_hsphy>;
> +				phy-names = "usb2-phy";
> +				maximum-speed = "high-speed";
> +			};
> +		};
> +
> +		usb_1: usb@a6f8800 {
> +			compatible = "qcom,sc7280-dwc3", "qcom,dwc3";
> +			reg = <0 0x0a6f8800 0 0x400>;
> +			status = "disabled";
> +			#address-cells = <2>;
> +			#size-cells = <2>;
> +			ranges;
> +			dma-ranges;
> +
> +			clocks = <&gcc GCC_CFG_NOC_USB3_PRIM_AXI_CLK>,
> +				 <&gcc GCC_USB30_PRIM_MASTER_CLK>,
> +				 <&gcc GCC_AGGRE_USB3_PRIM_AXI_CLK>,
> +				 <&gcc GCC_USB30_PRIM_MOCK_UTMI_CLK>,
> +				 <&gcc GCC_USB30_PRIM_SLEEP_CLK>;
> +
> +			clock-names = "cfg_noc", "core", "iface", "mock_utmi",
> +				      "sleep";
> +
> +			assigned-clocks = <&gcc GCC_USB30_PRIM_MOCK_UTMI_CLK>,
> +					  <&gcc GCC_USB30_PRIM_MASTER_CLK>;
> +			assigned-clock-rates = <19200000>, <200000000>;
> +
> +			interrupts-extended = <&intc GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH>,
> +					      <&pdc 14 IRQ_TYPE_EDGE_BOTH>,
> +					      <&pdc 15 IRQ_TYPE_EDGE_BOTH>,
> +					      <&pdc 17 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "hs_phy_irq", "dp_hs_phy_irq",
> +					  "dm_hs_phy_irq", "ss_phy_irq";
> +
> +			power-domains = <&gcc GCC_USB30_PRIM_GDSC>;
> +
> +			resets = <&gcc GCC_USB30_PRIM_BCR>;
> +
> +			usb_1_dwc3: dwc3@a600000 {
> +				compatible = "snps,dwc3";
> +				reg = <0 0x0a600000 0 0xe000>;
> +				interrupts = <GIC_SPI 133 IRQ_TYPE_LEVEL_HIGH>;
> +				iommus = <&apps_smmu 0xe0 0x0>;
> +				snps,dis_u2_susphy_quirk;
> +				snps,dis_enblslpm_quirk;
> +				phys = <&usb_1_hsphy>, <&usb_1_ssphy>;
> +				phy-names = "usb2-phy", "usb3-phy";

The 'maximum-speed' isn't specified in difference to the other controller.
According to commit d3d245aee0b1 ("arm64: dts: qcom: sc7180: Add
maximum speed property for DWC3 USB node") the max speed is used to
configure the interconnect bandwidth. dwc3_qcom_interconnect_init() falls
back to super speed if the max speed is unknown, so it should be fine to
omit it, unless it is needed for something else.


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
