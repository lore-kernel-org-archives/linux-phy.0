Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CBB0EC636D6
	for <linux-phy@archiver.kernel.org>; Wed, 22 Feb 2023 16:04:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tcZwJ+fqo2exaFJwpOP5b/JUeGP987E0GB9j7ydINmw=; b=ZpbRVqNTE9+Peb
	amgnIZC1bwM9D7um7bhBf6pP7bYaqbk0KhRT03/9ws37Lh8/rmN8OvvMXxT5dsVoQw1N+2FG5l7/6
	weuf5SJ6naEXwDK1wdSWVZogIh9j+7cXRnlVDxTQWSkG6S+QqV8ae/yICzKze7ceKkmLrgrRW1xfS
	ZuCE11LXCY03P5kl18R1aOtpWxC4Ms8t6HdY1wM9NOkwT8v2a0rCwFHulO3PeWhBbKVxbUXcXOqxr
	ycZIjAR68NcYdciGZhm2lipcdkS1/dM0hQi4Exu6J1tYOMXkxJ3lAp/WPFKPFCjAk3F+sQDp6wD8h
	B+McT2YSiru1MzFPEQrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUrbz-00Cxr1-8c; Wed, 22 Feb 2023 16:04:55 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUrbw-00Cxp6-70
	for linux-phy@lists.infradead.org; Wed, 22 Feb 2023 16:04:53 +0000
Received: by mail-lf1-x12e.google.com with SMTP id w27so10718703lfu.4
        for <linux-phy@lists.infradead.org>; Wed, 22 Feb 2023 08:04:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BvtXsgYaNMgfCwPa3NcjCA/fALryuRunmE0yTYigCgo=;
        b=qoW4bUeWwS3k/GeJaiLUn+XPhE41MVVyIyPtGkL2v5O83xBjix2Li2DkYmR1Ku3+V0
         6pZ4CHdTYNIxyAV4MxYwmrCKG9yvLX2uPBgEmz/EEpWva9Gngw36j5MLkX50UAG/phaV
         orIrc8mVF8QtEI7vBIROBOQwHU/l/0938GUTpX20WIXFLnhwl2ujow0uJkBomUFAEhT6
         aqIWpsGuUQMRZlKET39VjpzeuREyMxAHynJFxpMPW0v1wLFqI2/+z+GpqNVZz230UXIU
         8p3fyxSTQNKRsUniIGrRo2fm1meAtoCveeLqYAi1UGsKO8RZgbB/pUYO9AS9+jqN9npv
         n3xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BvtXsgYaNMgfCwPa3NcjCA/fALryuRunmE0yTYigCgo=;
        b=W3R2XFBOnbE09AB1U177OezzT4DaxuhIpncCOzo5dkIGuLiAPpRcvF72ecloWTV9KD
         5f9PjAY/j+5gagzBukHbMMZT97G6mqhujFs9Qgi88A9TCXf1cgJPa3HBcroE1PblJG8r
         253UrNrsWGZuzbcuxkNzTPKpbV+A/ecbfDJNXa350sorVUlDUE6v7dZSWwvcFuHnRmYm
         Nch9QAB7RNNaDGo/DeI/iT02tfAkzkSrRe30MWWkM/ZVml3HfMOw+M340ToghMH0QyiD
         GFLD3zLas1bsiqrKfprTWj8EZM9UggfKuNTmsJQT6XMNgHjx9clW6Ry7oTgw6inzSCH7
         rJ/g==
X-Gm-Message-State: AO0yUKVdEFjWbK5uBD0N6HcpoqFtFNvcJzgY4/v+/4huFpQ0lbeBMDXg
	x3E2SwMmt2fd+m3fML4z/54JJg==
X-Google-Smtp-Source: AK7set9PDpRvUR4ICYarWP/6Zlh9mGyGPgoNTdoaMGmA0Ed4tTtpS9C8shCpz0IFX+FNFdEYYwfy+w==
X-Received: by 2002:a19:f609:0:b0:4b5:b06d:4300 with SMTP id x9-20020a19f609000000b004b5b06d4300mr2917956lfe.29.1677081886617;
        Wed, 22 Feb 2023 08:04:46 -0800 (PST)
Received: from [192.168.1.101] (abxi151.neoplus.adsl.tpnet.pl. [83.9.2.151])
        by smtp.gmail.com with ESMTPSA id f14-20020ac251ae000000b004db3eff4b12sm2203398lfk.171.2023.02.22.08.04.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Feb 2023 08:04:46 -0800 (PST)
Message-ID: <ac05fec4-138c-2f1e-a953-8d498d3bb598@linaro.org>
Date: Wed, 22 Feb 2023 17:04:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 08/11] ARM: dts: qcom: sdx55-t55: Enable PCIe RC support
Content-Language: en-US
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 andersson@kernel.org, lpieralisi@kernel.org, robh@kernel.org, kw@linux.com,
 krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org
Cc: bhelgaas@google.com, kishon@kernel.org, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org
References: <20230222153251.254492-1-manivannan.sadhasivam@linaro.org>
 <20230222153251.254492-9-manivannan.sadhasivam@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230222153251.254492-9-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230222_080452_290524_8A65DB20 
X-CRM114-Status: GOOD (  13.31  )
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



On 22.02.2023 16:32, Manivannan Sadhasivam wrote:
> Enable PCIe RC support on Thundercomm T55 board.
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
>  arch/arm/boot/dts/qcom-sdx55-t55.dts | 42 ++++++++++++++++++++++++++++
>  1 file changed, 42 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/qcom-sdx55-t55.dts b/arch/arm/boot/dts/qcom-sdx55-t55.dts
> index 7ed8feb99afb..fb5b9264077c 100644
> --- a/arch/arm/boot/dts/qcom-sdx55-t55.dts
> +++ b/arch/arm/boot/dts/qcom-sdx55-t55.dts
> @@ -242,6 +242,23 @@ &ipa {
>  	memory-region = <&ipa_fw_mem>;
>  };
>  
> +&pcie_phy {
> +	status = "okay";
'status' should go last. Since you're introducing new nodes,
changing the order in the existing ones would be appreciated.

> +
> +	vdda-phy-supply = <&vreg_l1e_bb_1p2>;
> +	vdda-pll-supply = <&vreg_l4e_bb_0p875>;
> +};
> +
> +&pcie_rc {
> +	status = "okay";
> +
> +	perst-gpios = <&tlmm 57 GPIO_ACTIVE_LOW>;
> +	wake-gpios = <&tlmm 53 GPIO_ACTIVE_HIGH>;
> +
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pcie_default>;
property-
property-names

Konrad
> +};
> +
>  &qpic_bam {
>  	status = "ok";
>  };
> @@ -265,6 +282,31 @@ &remoteproc_mpss {
>  	memory-region = <&mpss_adsp_mem>;
>  };
>  
> +&tlmm {
> +	pcie_default: pcie-default-state {
> +		clkreq-pins {
> +			pins = "gpio56";
> +			function = "pcie_clkreq";
> +			drive-strength = <2>;
> +			bias-pull-up;
> +		};
> +
> +		perst-pins {
> +			pins = "gpio57";
> +			function = "gpio";
> +			drive-strength = <2>;
> +			bias-pull-down;
> +		};
> +
> +		wake-pins {
> +		       pins = "gpio53";
> +		       function = "gpio";
> +		       drive-strength = <2>;
> +		       bias-pull-up;
> +	       };
> +	};
> +};
> +
>  &usb_hsphy {
>  	status = "okay";
>  	vdda-pll-supply = <&vreg_l4e_bb_0p875>;

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
