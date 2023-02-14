Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97F96C64EC7
	for <linux-phy@archiver.kernel.org>; Tue, 14 Feb 2023 15:36:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wb5j+tfCocs4xZhpwAA8YFRWeJaRsmShuSGz/pVmZ90=; b=EFmg6BmukzEYii
	hH+uIh7xVxOvq6mPHwGzbc8Aw4e0nFGqn4U9pVxQQEgYnLRd9xBYPZYGOwTUae8fMrE/0Oob6E1fN
	IqSYr1gywN+W0gEE/8J5RD58/tJcGFkX6f5KkJa8FphLWa9EZEDHzZ5W+RGs9IcW2+P9ELphLsyvX
	xHxp/3knmDLT1D+B0027hf+POxLV1yYQJxRAPpqWTwbU5/Ots/HhdUE/2O/DKkDzq0+y1IEGtxoPe
	wO9PzquvFElSjhabeq3u5Y2Kws1xkgFxbpHDmaM49k+y34T2Y+2GZjXpTEGH6MtEaTpTbE51aJXI2
	oVZ2PhfB9jzJAmwjzAQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRxM4-002dQH-Ua; Tue, 14 Feb 2023 15:36:28 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRxM2-002dP9-77
	for linux-phy@lists.infradead.org; Tue, 14 Feb 2023 15:36:27 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 80200B81E1B;
	Tue, 14 Feb 2023 15:36:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4D953C433D2;
	Tue, 14 Feb 2023 15:36:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676388982;
	bh=SUUZC64r6jozYPFZgHOdcKJ2XL7T3VA4vV3vgcIkpZw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=J8ubYdnPp+ayC/tfWvgz6Nra4BJzPHgJj5KDbiZBBzGo8d9piqINqrzDsfV/5RxQ5
	 jlsu4ohRkyOXS+vdVjZReJv2kGfiXRlKAb7zOOfurqThNTWdkmGoTeTxpVjfq1WNbf
	 w9NFXUkhwuvEpKRL07zIkaukxFh07ItJPmrfJpc0klt599BN+tGaoc3B8VoCX3ZcMQ
	 FjT+wLhnuqlfFRwzBSiLIH4A9Q1616fVu3qse+hBWze7B8JSsAlsxUZ/Ch7IQbGqcX
	 ldI5K1/UG3egqxzxwo5rVDR4Otl46XaxBysahq7C5ZjzFy6h7mw6oZvR8X0ygfnbhr
	 85EjWc8RBDZ3Q==
Date: Tue, 14 Feb 2023 21:06:17 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Abel Vesa <abel.vesa@linaro.org>, Lee Jones <lee@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v5 2/7] dt-bindings: mfd: qcom,spmi-pmic: Add pattern
 property for phy
Message-ID: <Y+uqcb+CZUy/8GYh@matsya>
References: <20230208190200.2966723-1-abel.vesa@linaro.org>
 <20230208190200.2966723-3-abel.vesa@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230208190200.2966723-3-abel.vesa@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230214_073626_417038_A7E0E8F5 
X-CRM114-Status: GOOD (  17.39  )
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

On 08-02-23, 21:01, Abel Vesa wrote:
> The phy pattern property will be used for providing eUSB2 repeater
> functionality. This will be modelled as a Qualcomm PHY driver.

Lee,

Can I get your ack and merge this thru phy tree


> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
> 
> The v4 is here:
> https://lore.kernel.org/all/20230207135551.1418637-3-abel.vesa@linaro.org/
> 
> Changes since v4:
>  * none
> 
> Changes since v3:
>  * made this the second patch rather than the first in the series
> 
>  Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml b/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
> index adf88245c409..1e6fadec1301 100644
> --- a/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
> +++ b/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
> @@ -135,6 +135,10 @@ patternProperties:
>      type: object
>      $ref: /schemas/pinctrl/qcom,pmic-gpio.yaml#
>  
> +  "phy@[0-9a-f]+$":
> +    type: object
> +    $ref: /schemas/phy/qcom,snps-eusb2-repeater.yaml#
> +
>    "pon@[0-9a-f]+$":
>      type: object
>      $ref: /schemas/power/reset/qcom,pon.yaml#
> -- 
> 2.34.1

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
