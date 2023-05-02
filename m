Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ABC7EC77B73
	for <linux-phy@archiver.kernel.org>; Tue,  2 May 2023 12:22:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JRyAQZPCF+dKm961FEUxQvzpugNWAfbdU9h2aGk1AL0=; b=OXng7twTY+rd9c
	eIP0DudX31/c3u5tDdvdVf/p7fPGPXcPQrQOayISKIrkiPSvORMdInq1Zep20fE5+GcUzkQcbW4k/
	f/gIqlICHakfbfYbnwWA2SJjY2wCwPcczra3wu1ZgmodeAraPYXEIZiju2IU5JulyvkfSHVF/aMCD
	/6dfeqCroILivmWBmiUPOUzekme41kdO+wCtq1P2lzfzVQ9/qUfWfAZe5n3cuH6ciY6/HW5OCHwx+
	Atn+fzUEFJGwab3k2D2VDPHDcIxiVd4rCiRANCbG4SVA97VKkZcpIqa9tSvvgUtqMrQpODwqTCjh2
	pmBsguLFU5PnMzb2yusw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptp1U-001NBY-0d;
	Tue, 02 May 2023 12:22:24 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptp1R-001N9j-0l
	for linux-phy@lists.infradead.org;
	Tue, 02 May 2023 12:22:22 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id C960D623BE;
	Tue,  2 May 2023 12:22:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2C1D2C433EF;
	Tue,  2 May 2023 12:22:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683030140;
	bh=F0jPa7tNnQ7D5aJHQ4nzmWOU1N0VFYe0lBrk9O1VlPE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rk6YMvjU9y/Qp3ns9rsftJIWNO8/ESFTf+Z9h2R3TytencJLZiVoZ3TWpLcd+5uWl
	 RnkW77KMyU/VgjCjV3fibO3kfBkgcgNnOym89+3IGbHOEtsC1l2UvKKjA8cLARdSYL
	 8yEexMexUq06xN72hlervrUJ26BrSpHFMPuHfXw4vv2OYA25tuYsXY0+TSiPTcxszh
	 RUe8PPTQNU2eWCdBn4L+Pvf5JmkcrbtU6Xv3VXruPjTtkXlkGyIkV6maTN/ZNjhVPD
	 QX9jxCN6oMYvhOBTGF4l/WbfG17eFQP1AmYyh2a51Gtth5wjWi+DnLY5zsuXyZtobO
	 IJRDAGyiuBF1w==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1ptp1S-0003lW-CA; Tue, 02 May 2023 14:22:23 +0200
Date: Tue, 2 May 2023 14:22:22 +0200
From: Johan Hovold <johan@kernel.org>
To: Bjorn Andersson <quic_bjorande@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 6/7] arm64: dts: qcom: sc8280xp-crd: Add QMP to
 SuperSpeed graph
Message-ID: <ZFEAfv2GnGeblk-x@hovoldconsulting.com>
References: <20230425034010.3789376-1-quic_bjorande@quicinc.com>
 <20230425034010.3789376-7-quic_bjorande@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230425034010.3789376-7-quic_bjorande@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_052221_347917_ED0FF354 
X-CRM114-Status: GOOD (  22.33  )
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

On Mon, Apr 24, 2023 at 08:40:09PM -0700, Bjorn Andersson wrote:
> With support for the QMP combo phy to react to USB Type-C switch events,
> introduce it as the next hop for the SuperSpeed lanes of the two USB
> Type-C connectors, and connect the output of the DisplayPort controller
> to the QMP combo phy.
> 
> This allows the TCPM to perform orientation switching of both USB and
> DisplayPort signals.
> 
> Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sc8280xp-crd.dts | 28 ++++++++++++++++---
>  arch/arm64/boot/dts/qcom/sc8280xp.dtsi    | 34 +++++++++++++++++++++++
>  2 files changed, 58 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc8280xp-crd.dts b/arch/arm64/boot/dts/qcom/sc8280xp-crd.dts
> index 547277924ea3..33c973661fa5 100644
> --- a/arch/arm64/boot/dts/qcom/sc8280xp-crd.dts
> +++ b/arch/arm64/boot/dts/qcom/sc8280xp-crd.dts
> @@ -64,7 +64,7 @@ port@1 {
>  					reg = <1>;
>  
>  					pmic_glink_con0_ss: endpoint {
> -						remote-endpoint = <&mdss0_dp0_out>;
> +						remote-endpoint = <&usb_0_qmpphy_out>;
>  					};
>  				};
>  
> @@ -99,7 +99,7 @@ port@1 {
>  					reg = <1>;
>  
>  					pmic_glink_con1_ss: endpoint {
> -						remote-endpoint = <&mdss0_dp1_out>;
> +						remote-endpoint = <&usb_1_qmpphy_out>;
>  					};
>  				};
>  
> @@ -412,7 +412,7 @@ &mdss0_dp0 {
>  
>  &mdss0_dp0_out {
>  	data-lanes = <0 1>;
> -	remote-endpoint = <&pmic_glink_con0_ss>;
> +	remote-endpoint = <&usb_0_qmpphy_dp_in>;
>  };

It's a bit hard to follow what going on when using place holder nodes
from the dtsi like this (instead of describing all the ports directly in
the board dts). IIRC we went a bit back and forth over this earlier and
we already use this scheme for the display port controllers, so I guess
this is the price we pay for being consistent.

>  &mdss0_dp1 {
> @@ -421,7 +421,7 @@ &mdss0_dp1 {
>  
>  &mdss0_dp1_out {
>  	data-lanes = <0 1>;
> -	remote-endpoint = <&pmic_glink_con1_ss>;
> +	remote-endpoint = <&usb_1_qmpphy_dp_in>;
>  };
>  
>  &mdss0_dp3 {
> @@ -670,9 +670,19 @@ &usb_0_qmpphy {
>  	vdda-phy-supply = <&vreg_l9d>;
>  	vdda-pll-supply = <&vreg_l4d>;
>  
> +	orientation-switch;
> +
>  	status = "okay";
>  };
>  
> +&usb_0_qmpphy_dp_in {
> +	remote-endpoint = <&mdss0_dp0_out>;
> +};
> +
> +&usb_0_qmpphy_out {
> +	remote-endpoint = <&pmic_glink_con0_ss>;
> +};
> +
>  &usb_0_role_switch {
>  	remote-endpoint = <&pmic_glink_con0_hs>;
>  };
> @@ -697,9 +707,19 @@ &usb_1_qmpphy {
>  	vdda-phy-supply = <&vreg_l4b>;
>  	vdda-pll-supply = <&vreg_l3b>;
>  
> +	orientation-switch;
> +
>  	status = "okay";
>  };
>  
> +&usb_1_qmpphy_dp_in {
> +	remote-endpoint = <&mdss0_dp1_out>;
> +};
> +
> +&usb_1_qmpphy_out {
> +	remote-endpoint = <&pmic_glink_con1_ss>;
> +};
> +
>  &usb_1_role_switch {
>  	remote-endpoint = <&pmic_glink_con1_hs>;
>  };
> diff --git a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
> index 0e691bb0120c..1eb3a295e8fa 100644
> --- a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
> @@ -3006,6 +3006,23 @@ usb_0_qmpphy: phy@88eb000 {
>  			#phy-cells = <1>;
>  
>  			status = "disabled";
> +
> +			ports {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +
> +				port@0 {
> +					reg = <0>;
> +
> +					usb_0_qmpphy_out: endpoint {};
> +				};
> +
> +				port@1 {
> +					reg = <1>;
> +
> +					usb_0_qmpphy_dp_in: endpoint {};
> +				};
> +			};
>  		};

The binding describes three ports, where dp-in is port 2.

Perhaps you don't need to describe ss-in yet, but shouldn't the port
numbers match? Should some of these be described as required in the
binding?

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
