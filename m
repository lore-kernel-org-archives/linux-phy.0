Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63B28C54735
	for <linux-phy@archiver.kernel.org>; Tue, 27 Aug 2024 11:57:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9wCR2vQMDLBnbPbIbnIiLH9b8s4y2aVTsTw8jTqj7r4=; b=A6jMSVRnSo3yAt
	ytMv9+9Xd43IDjTlu77QeUNfrHc3aq6378FyugnJoGEi0TGFMh3l41SO88FN4wSCkp0FJfkoaHz+9
	Vx/B8i9OPNUuJSqUihzX2R2gEqEbUdLJWAyyOhyIW+F5y7SWrjF/i7pJlefXNAU6dHxK8v/1aCLcu
	dxCyYJSJ8VkN7TKLdfG66KOutoSwv8r+oiw5WiVzfM5vaKmiz9IaKpfxO8O+OV7Y2MjKfnc7SrLu8
	p/nDpXLgYZC0xRJUrX7QVAw5brm/9rLD7VfSWhXu+T3p2Rk5CSApuiOMDZS9FcpwMKCqTgSHo48O3
	K5h+H9uGn1bHAafEYj/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siupI-0000000B7K6-076Z;
	Tue, 27 Aug 2024 11:57:32 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siupE-0000000B7IA-3SnN
	for linux-phy@lists.infradead.org;
	Tue, 27 Aug 2024 11:57:30 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id F0D61A4190A;
	Tue, 27 Aug 2024 11:57:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4B301C51E64;
	Tue, 27 Aug 2024 11:41:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724758882;
	bh=VYCX0E48ph+cth/n7E5awP96npB0EP6UJB3lBeYDBE8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZAl5WkB76UMZu/3JybqCIQUYRU6jgBeGbMAgKTlHR+QVcISzMmminsDdV+HdwggY3
	 ThIqfL82T80Yi/3+e3CrriedQwzjnsdgKZrhFM2CWGSEkpwV7Z1+KXZcwFiXwXMXtA
	 Vf5M/hsjXs2YAahwD0bAt2KwsMhz+EJxEx9ExVe8ULA/89F6O2osPb/iNlQ0EU8vCc
	 diFiGXzsGJOy02993ujsAfjRpE6E5Mdc2eVCqeY7p0WQRNkBDt0sgLHuPwmBCnMe/8
	 BlKmZQh4r1ThNGMwkxVDHByuR5W5NuBaQ+oYyoAdgXEcvrGg0wP7yWR+tJ5hZTvHLS
	 6sgB6WxQCJcDQ==
Date: Tue, 27 Aug 2024 13:41:18 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Qiang Yu <quic_qianyu@quicinc.com>
Cc: manivannan.sadhasivam@linaro.org, vkoul@kernel.org, kishon@kernel.org, 
	robh@kernel.org, andersson@kernel.org, konradybcio@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, mturquette@baylibre.com, sboyd@kernel.org, abel.vesa@linaro.org, 
	quic_msarkar@quicinc.com, quic_devipriy@quicinc.com, dmitry.baryshkov@linaro.org, 
	kw@linux.com, lpieralisi@kernel.org, neil.armstrong@linaro.org, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org, linux-clk@vger.kernel.org
Subject: Re: [PATCH 7/8] arm64: dts: qcom: x1e80100-qcp: Add power supply and
 sideband signal for pcie3
Message-ID: <haj2zmdk7raz4zcwaizzeyxoetrb5rcxwwkhjesuejphixgogb@gueq5pq7srcx>
References: <20240827063631.3932971-1-quic_qianyu@quicinc.com>
 <20240827063631.3932971-8-quic_qianyu@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240827063631.3932971-8-quic_qianyu@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240827_045728_996908_B0854C3F 
X-CRM114-Status: GOOD (  13.00  )
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

On Mon, Aug 26, 2024 at 11:36:30PM -0700, Qiang Yu wrote:
> Add perst, wake and clkreq gpio config. Add required power supply.
> 
> Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/x1e80100-qcp.dts | 116 ++++++++++++++++++++++
>  1 file changed, 116 insertions(+)
> 

Really, driver cannot depend on this patch. That's a no go.

> diff --git a/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts b/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts
> index 1c3a6a7b3ed6..0deb0c4bfea9 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts
> +++ b/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts
> @@ -254,6 +254,48 @@ vreg_nvme: regulator-nvme {
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&nvme_reg_en>;
>  	};
> +
> +	vreg_pcie_12v: regulator-pcie_12v {
> +		compatible = "regulator-fixed";
> +
> +		regulator-name = "VREG_PCIE_12V";
> +		regulator-min-microvolt = <12000000>;
> +		regulator-max-microvolt = <12000000>;
> +
> +		gpio = <&pm8550ve_8_gpios 8 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pcie_x8_12v>;
> +	};
> +
> +	vreg_pcie_3v3_aux: regulator-pcie_3v3_aux {

Please follow DTS coding style.

> +		compatible = "regulator-fixed";
> +
> +		regulator-name = "VREG_PCIE_3P3_AUX";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +
> +		gpio = <&pmc8380_3_gpios 8 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pm_sde7_aux_3p3_en>;
> +	};
> +
> +	vreg_pcie_3v3: regulator-pcie_3v3 {
> +		compatible = "regulator-fixed";
> +
> +		regulator-name = "VREG_PCIE_3P3";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +
> +		gpio = <&pmc8380_3_gpios 6 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pm_sde7_main_3p3_en>;
> +	};
>  };
>  
>  &apps_rsc {
> @@ -667,6 +709,57 @@ &mdss_dp3_phy {
>  	status = "okay";
>  };
>  
> +&pm8550ve_8_gpios {
> +	pcie_x8_12v: pcie_x8_12v_on {

Never tested.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
