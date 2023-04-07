Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 844AEC77B6F
	for <linux-phy@archiver.kernel.org>; Fri,  7 Apr 2023 18:17:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uNQFgHr+SO1kzp8ndhk2OgAKmQEeMgkWmRq5oaTyxc0=; b=laGEYLvy190fSO
	FosvLahmwQRzq2kiGtp5OeYtDJXZXoxiZO0uIIZJXRwLjm/fSrGMpNIL7/IwMfZVUgROR17mxBsyq
	bPoLqdZPKK5f/t4BLaPOL42DkG0ma64Q1EZ82CYCsb2Vr/WMLEINqJjP3sS/bxLP5E4TBSPVJr1A6
	ZIGidXfcwSvV6x8PzCJ/Tg3ARreNYadUUhB9j/1sjcaEz+nzD8LsQTZn8raKrhXuWklatdDvHLkYm
	eoXcm04mqHe60FbkQfjhden73VsmIq8RbbMcZt+mofbIfvuXw0KuAHrj9H3HZWABhSH8qMYE8nhC9
	lb54JhovQAobLHGhsAdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pkqdy-00AsPX-0Z;
	Fri, 07 Apr 2023 18:17:02 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pkqdw-00AsP7-0D
	for linux-phy@lists.infradead.org;
	Fri, 07 Apr 2023 18:17:01 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 6E7EB61298;
	Fri,  7 Apr 2023 18:16:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DE5E2C433D2;
	Fri,  7 Apr 2023 18:16:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680891418;
	bh=nlGs0z60ePPeH9ynWhO9z3Rb6vbWuERkglpKDbMvf+w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Son3MB9M+oY3QMchIgnPKi2xqLCX2gUY4KncD/Q6Z1OhuQrUYt8/OosXyAinfKq+S
	 +dOjChSqfTgDxckIm4nIhGAHTb5iuAkeCEQKEWbfbQ5e7n42jQm2YXKaIdX4rpwVGC
	 uOf3uVK4f5Wn1GJADEDgUzjtfBnCwLEE0AdonX9D+RZwCsLFhMhVtlimP2Hau5Ko9t
	 Jot0Kwib3/r0oZ0V/pWoWwlTB+IZcR676tx0IyKmoOqSWFaVm9h39hHBOF2XzD3j+7
	 KCuk7wznRxjtGktcUI+Kkpd9b4WpJnlI6kZbTjBMXOQKVYVa8Y8oWY80ML3IGPW/1J
	 6SzJ8/O8AuOCA==
Date: Fri, 7 Apr 2023 11:19:48 -0700
From: Bjorn Andersson <andersson@kernel.org>
To: Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org, agross@kernel.org,
	linux-kernel@vger.kernel.org, bhupesh.linux@gmail.com,
	krzysztof.kozlowski@linaro.org, robh+dt@kernel.org,
	konrad.dybcio@linaro.org, kishon@kernel.org, vkoul@kernel.org,
	krzysztof.kozlowski+dt@linaro.org
Subject: Re: [PATCH v6 2/2] arm64: dts: qcom: sm6115: Add USB SS qmp phy node
Message-ID: <20230407181948.4oetuqojeylpnaij@ripper>
References: <20230407061122.2036838-1-bhupesh.sharma@linaro.org>
 <20230407061122.2036838-3-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230407061122.2036838-3-bhupesh.sharma@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230407_111700_184435_7F4C49D0 
X-CRM114-Status: GOOD (  16.53  )
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

On Fri, Apr 07, 2023 at 11:41:22AM +0530, Bhupesh Sharma wrote:
> Add USB superspeed qmp phy node to dtsi.
> 
> Make sure that the various board dts files (which include sm4250.dtsi file)
> continue to work as intended.
> 
> Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> ---
>  .../boot/dts/qcom/sm4250-oneplus-billie2.dts  |  3 ++
>  arch/arm64/boot/dts/qcom/sm6115.dtsi          | 36 +++++++++++++++++--
>  .../boot/dts/qcom/sm6115p-lenovo-j606f.dts    |  3 ++
>  3 files changed, 40 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm4250-oneplus-billie2.dts b/arch/arm64/boot/dts/qcom/sm4250-oneplus-billie2.dts
> index a1f0622db5a0..75951fd439df 100644
> --- a/arch/arm64/boot/dts/qcom/sm4250-oneplus-billie2.dts
> +++ b/arch/arm64/boot/dts/qcom/sm4250-oneplus-billie2.dts
> @@ -242,6 +242,9 @@ &usb {
>  &usb_dwc3 {
>  	maximum-speed = "high-speed";
>  	dr_mode = "peripheral";
> +
> +	phys = <&usb_hsphy>;
> +	phy-names = "usb2-phy";
>  };
>  
>  &usb_hsphy {
> diff --git a/arch/arm64/boot/dts/qcom/sm6115.dtsi b/arch/arm64/boot/dts/qcom/sm6115.dtsi
> index 2505c815c65a..f42065a0a71d 100644
> --- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
> @@ -651,6 +651,38 @@ usb_hsphy: phy@1613000 {
>  			status = "disabled";
>  		};
>  
> +		usb_qmpphy: phy@1615000 {
> +			compatible = "qcom,sm6115-qmp-usb3-phy";
> +			reg = <0x0 0x01615000 0x0 0x200>;
> +			clocks = <&gcc GCC_AHB2PHY_USB_CLK>,
> +				 <&gcc GCC_USB3_PRIM_CLKREF_CLK>,
> +				 <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>;
> +			clock-names = "cfg_ahb",
> +				      "ref",
> +				      "com_aux";
> +			resets = <&gcc GCC_USB3_PHY_PRIM_SP0_BCR>,
> +				 <&gcc GCC_USB3PHY_PHY_PRIM_SP0_BCR>;
> +			reset-names = "phy", "phy_phy";
> +			status = "disabled";
> +			#address-cells = <2>;
> +			#size-cells = <2>;
> +			ranges;
> +
> +			usb_ssphy: phy@1615200 {

Please don't introduce the old-style QMP binding in new platforms.

Thanks,
Bjorn

> +				reg = <0x0 0x01615200 0x0 0x200>,
> +				      <0x0 0x01615400 0x0 0x200>,
> +				      <0x0 0x01615c00 0x0 0x400>,
> +				      <0x0 0x01615600 0x0 0x200>,
> +				      <0x0 0x01615800 0x0 0x200>,
> +				      <0x0 0x01615a00 0x0 0x100>;
> +				#clock-cells = <0>;
> +				#phy-cells = <0>;
> +				clocks = <&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>;
> +				clock-names = "pipe0";
> +				clock-output-names = "usb3_phy_pipe_clk_src";
> +			};
> +		};
> +
>  		qfprom@1b40000 {
>  			compatible = "qcom,sm6115-qfprom", "qcom,qfprom";
>  			reg = <0x0 0x01b40000 0x0 0x7000>;
> @@ -1101,8 +1133,8 @@ usb_dwc3: usb@4e00000 {
>  				compatible = "snps,dwc3";
>  				reg = <0x0 0x04e00000 0x0 0xcd00>;
>  				interrupts = <GIC_SPI 255 IRQ_TYPE_LEVEL_HIGH>;
> -				phys = <&usb_hsphy>;
> -				phy-names = "usb2-phy";
> +				phys = <&usb_hsphy>, <&usb_ssphy>;
> +				phy-names = "usb2-phy", "usb3-phy";
>  				iommus = <&apps_smmu 0x120 0x0>;
>  				snps,dis_u2_susphy_quirk;
>  				snps,dis_enblslpm_quirk;
> diff --git a/arch/arm64/boot/dts/qcom/sm6115p-lenovo-j606f.dts b/arch/arm64/boot/dts/qcom/sm6115p-lenovo-j606f.dts
> index 10c9d338446c..d60cc024749b 100644
> --- a/arch/arm64/boot/dts/qcom/sm6115p-lenovo-j606f.dts
> +++ b/arch/arm64/boot/dts/qcom/sm6115p-lenovo-j606f.dts
> @@ -280,6 +280,9 @@ &usb {
>  &usb_dwc3 {
>  	maximum-speed = "high-speed";
>  	dr_mode = "peripheral";
> +
> +	phys = <&usb_hsphy>;
> +	phy-names = "usb2-phy";
>  };
>  
>  &usb_hsphy {
> -- 
> 2.38.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
