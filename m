Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1FDD4C433EF
	for <linux-phy@archiver.kernel.org>; Wed,  8 Jun 2022 15:54:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NcJHXX8KcgW4JRpEDBaFVGhr7xzYzsdhvqGtvoP0yF0=; b=167JPAsTZT65PV
	I47nAuxe2PhLF8rHVQwrAM6Efxj0r+HNFUpBXL8jNGJ7+q8TSUIZinIj3rhpTmwptDKLJjhKs3T2c
	KGp9JTbflZpWN48xq6mDVjIKeoSyISzpbE/nP3NuhmaOvKhERKpB1N3lQoLDjHLbx2gh9GnsRqgEN
	08jeuNyIMCB3+m7oH9eFP5V05y8+5IoGaaTywHGPTWHPNfbUAGOWuRvs+1LV5A9sl51lwBzZs9hNL
	FruWwxPDDaRNcMmQtC7CK3au5ghoKhvDFkEfKCD4a3C2o3DUf+aZdG6xeXY9ZUAgyGv9kCb+Rx+k8
	H6Dq5OaLicx6KkP4bLnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyy0N-00E9Rz-5l; Wed, 08 Jun 2022 15:53:59 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyy0J-00E9Q4-65
	for linux-phy@lists.infradead.org; Wed, 08 Jun 2022 15:53:57 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id D7968B82615;
	Wed,  8 Jun 2022 15:53:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AC017C34116;
	Wed,  8 Jun 2022 15:53:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1654703632;
	bh=8I9ndSA8ysJ7knYeBSEFb57EYrZdMtUNTBUVavgL6Ps=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iNqS7+kwRIEJTkFaKfhMjyNuUif81BXeSUlY3Bm+JAsumIZ2HOzTGPasB8FI0/LtI
	 6N3cvj0pjeDeELM+xWcvAW3cf/WOl4tuMASrBgk+cNKa8+ir1oLlDcMlYLfA2blNHD
	 jpKxukCE41eG9rXu3LoPMz8zf2ebJmfKFJ+dbeNjNknQQmT9PTZWhi5nstYkhPSCqm
	 Ks3boxM2pa/rJyX3lr4Es30CY/B8k+2L2aV9xM16E3L9MuVvenUY0ptSKUrPXezYaN
	 cr+oeUcVhJ6MnMHh48V93QGLmTNt1qC6iDk/5cd+mjytZotTftD18AF9//nEtcIGcE
	 l2TeD0jCVfARg==
Date: Wed, 8 Jun 2022 21:23:47 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Krishna Kurapati <quic_kriskura@quicinc.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>, Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Stephen Boyd <swboyd@chromium.org>,
	Doug Anderson <dianders@chromium.org>,
	Matthias Kaehlcke <mka@chromium.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>, devicetree@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	quic_pkondeti@quicinc.com, quic_ppratap@quicinc.com,
	quic_vpulyala@quicinc.com,
	Sandeep Maheswaram <quic_c_sanm@quicinc.com>
Subject: Re: [PATCH v8 1/3] dt-bindings: phy: qcom,usb-snps-femto-v2: Add phy
 override params bindings
Message-ID: <YqDGCxWFvxYWWoZh@matsya>
References: <1654066564-20518-1-git-send-email-quic_kriskura@quicinc.com>
 <1654066564-20518-2-git-send-email-quic_kriskura@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1654066564-20518-2-git-send-email-quic_kriskura@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220608_085355_583807_FA071942 
X-CRM114-Status: GOOD (  23.38  )
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

On 01-06-22, 12:26, Krishna Kurapati wrote:
> From: Sandeep Maheswaram <quic_c_sanm@quicinc.com>
> 
> Add device tree bindings for SNPS phy tuning parameters.
> 
> Signed-off-by: Sandeep Maheswaram <quic_c_sanm@quicinc.com>
> Signed-off-by: Krishna Kurapati <quic_kriskura@quicinc.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  .../bindings/phy/qcom,usb-snps-femto-v2.yaml       | 96 ++++++++++++++++++++++
>  1 file changed, 96 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
> index 1ce251d..daeeb04 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
> @@ -53,6 +53,102 @@ properties:
>    vdda33-supply:
>      description: phandle to the regulator 3.3V supply node.
>  
> +  qcom,hs-disconnect-bp:
> +    description:
> +      This adjusts the voltage level for the threshold used to
> +      detect a disconnect event at the host. Possible values are.
> +      The values defined are in multiples of basis points (1bp = 0.01%).
> +      The hardware accepts only discrete values. The value closest to the
> +      provided input will be chosen as the override value for this param.
> +    minimum: -272
> +    maximum: 2156
> +
> +  qcom,squelch-detector-bp:
> +    description:
> +      This adjusts the voltage level for the threshold used to
> +      detect valid high-speed data.
> +      The values defined are in multiples of basis points (1bp = 0.01%).
> +      The hardware accepts only discrete values. The value closest to the
> +      provided input will be chosen as the override value for this param.
> +    minimum: -2090
> +    maximum: 1590
> +
> +  qcom,hs-amplitude-bp:
> +    description:
> +      This adjusts the high-speed DC level voltage.
> +      The values defined are in multiples of basis points (1bp = 0.01%).
> +      The hardware accepts only discrete values. The value closest to the
> +      provided input will be chosen as the override value for this param.
> +    minimum: -660
> +    maximum: 2670
> +
> +  qcom,pre-emphasis-duration-bp:
> +    description:
> +      This signal controls the duration for which the
> +      HS pre-emphasis current is sourced onto DP<#> or DM<#>.
> +      The HS Transmitter pre-emphasis duration is defined in terms of
> +      unit amounts. One unit of pre-emphasis duration is approximately
> +      650 ps and is defined as 1X pre-emphasis duration.
> +      The values defined are in multiples of basis points (1bp = 0.01%).
> +      The hardware accepts only discrete values. The value closest to the
> +      provided input will be chosen as the override value for this param.
> +    minimum: 10000
> +    maximum: 20000
> +
> +  qcom,pre-emphasis-amplitude-bp:
> +    description:
> +      This signal controls the amount of current sourced to
> +      DP<#> and DM<#> after a J-to-K or K-to-J transition.
> +      The HS Transmitter pre-emphasis current is defined in terms of unit
> +      amounts. One unit amount is approximately 2 mA and is defined as
> +      1X pre-emphasis current.
> +      The values defined are in multiples of basis points (1bp = 0.01%).
> +      The hardware accepts only discrete values. The value closest to the
> +      provided input will be chosen as the override value for this param.
> +    minimum: 10000
> +    maximum: 40000
> +
> +  qcom,hs-rise-fall-time-bp:
> +    description:
> +      This adjusts the rise/fall times of the high-speed waveform.
> +      The values defined are in multiples of basis points (1bp = 0.01%).
> +      The hardware accepts only discrete values. The value closest to the
> +      provided input will be chosen as the override value for this param.
> +    minimum: -4100
> +    maximum: 5430
> +
> +  qcom,hs-crossover-voltage-microvolt:
> +    description:
> +      This adjusts the voltage at which the DP<#> and DM<#>
> +      signals cross while transmitting in HS mode.
> +      The values defined are in milli volts. The hardware accepts only
> +      discrete values. The value closest to the provided input will be
> +      chosen as the override value for this param.
> +    minimum: -31000
> +    maximum: 28000
> +
> +  qcom,hs-output-impedance-micro-ohms:
> +    description:
> +      In some applications, there can be significant series resistance
> +      on the D+ and D- paths between the transceiver and cable. This adjusts
> +      the driver source impedance to compensate for added series
> +      resistance on the USB. The values defined are in milli ohms.
> +      The hardware accepts only discrete values. The value closest to the
> +      provided input will be chosen as the override value for this param.
> +    minimum: -2300000
> +    maximum: 6100000
> +
> +  qcom,ls-fs-output-impedance-bp:
> +    description:
> +      This adjusts the low- and full-speed single-ended source
> +      impedance while driving high. The following adjustment values are based
> +      on nominal process, voltage, and temperature.
> +      The values defined are in multiples of basis points (1bp = 0.01%).
> +      The hardware accepts only discrete values. The value closest to the
> +      provided input will be chosen as the override value for this param.
> +    minimum: -1053
> +    maximum: 1310

do we need all these values in DT, till now we have these in driver..
what is the reasoning to add these in DT instead?

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
