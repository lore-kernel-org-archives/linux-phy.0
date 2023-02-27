Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B325BC64ED6
	for <linux-phy@archiver.kernel.org>; Mon, 27 Feb 2023 08:47:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=itJhFpFEvX9ZC6HYlLlfkx1omziz3834UFLvbY1eZuY=; b=1W0FLn5SilLAvf
	hrmafynOjsp3ZdQK5OVsLeaQMzu65FAnZgAu/Wx4IBV9UxwGyU7tcrLlC516FsTEQRUjnK1Cg+z4F
	4Oz0hy6K/t+jPSofC+DCCekyBV5YXleXFvR31v2TkY5jt1Hh656diME0QicZjmYe1yReKjVCeselZ
	/xU5MfmNYhDIsnEXx4+siq3FDaOXR5UShuwZ/6ic1sz/KXPns9cd13dAFeY44jpsPO5sVDyvZ445j
	7DXX1UodGmCWEOfAS1RY0tKZj034TDWc9KT53Tbu+rlZXrcHwErNoXWeFhzhz7LYt+0GENPPx4Cqf
	yCG5cf0t3MtNLTTeJ0lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pWZAF-008uCI-14; Mon, 27 Feb 2023 08:47:19 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pWZAB-008uBk-R5
	for linux-phy@lists.infradead.org; Mon, 27 Feb 2023 08:47:17 +0000
Received: by mail-lf1-x12d.google.com with SMTP id r27so7473785lfe.10
        for <linux-phy@lists.infradead.org>; Mon, 27 Feb 2023 00:47:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1677487633;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vGEvxiIce6M0SGXJ5oF+mxzxGYDkt2DuO9DUSxA4Nhc=;
        b=DbYxzYd2egvjqQVaE54QMDImLRBvo2tB+2pSsAFL6cS0WM2EON5MTROQQHlYJlzbv7
         eOkA1276kEfRKLawg17GO6ur3BDp2eOeBieMhTSSArIzg34xSekrFJhzS/yogKQZutlM
         GEpUL9/znyFxZCy/DUxzjslBwsG91jFZHBJ8u83foePcb1eErY1GsRkOBI+GQapxxL3U
         UU1ArqCqJre2wSzeWuHJUf199TMel7PmWVUGfucOQD9nfmarDaepqONWqqKRS3pRX4aK
         fZmlNicKzjlYudQadii3pDFAmd6brtZxMhhQEe+M8iZx+kiYSfyRNopsnzt8r4Xho9SD
         pxPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677487633;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vGEvxiIce6M0SGXJ5oF+mxzxGYDkt2DuO9DUSxA4Nhc=;
        b=1rYIfqekoAkFEM4ZVcH851NgWCGffYJTrB8AwLgTcVTNTaQE/TWXmc4vHBzJpJhVHb
         1GKTK7dYD7hU0O1U22L7FHTuxTg+sWYA92AYz31gZyP8ijA/MAWWfar1PN19gXv0awMy
         GtLt1hzqwC/AT6qbmJVBsFhGgjvKrm7FyivH7ay7layiPk3ZndrYLlAT6lCdYjJK07gT
         VqBrYri1RVKpRo3iHgfXSHVIWfIuqeHD7kZue6l+Gr5czQbsf7qM+2TEFyW7eVq8qyvK
         Wlmn2wBhhetjFk8bxxLzOn+LyLuhyPGIi1fhYnaV0BeAnYvhuP2pT9Vxg0Wv6CagJnek
         SSWQ==
X-Gm-Message-State: AO0yUKVSYTRtIteG5Gn+eaZkGY72YEk+GLW0YTiuzE9gkZJyrWhkXxgs
	d8bwc1RBjRnvHrnJhGZXlYXmwg==
X-Google-Smtp-Source: AK7set+jRlP3Ws0pk91xzP8Ph3OLMg+5mB5YM01sUtHzwiuA+FFG2+OP37l/eZVFlbwMvoHRKPydiw==
X-Received: by 2002:ac2:5a5c:0:b0:4d7:58c8:5f44 with SMTP id r28-20020ac25a5c000000b004d758c85f44mr7382294lfn.12.1677487633674;
        Mon, 27 Feb 2023 00:47:13 -0800 (PST)
Received: from [192.168.1.101] (abym99.neoplus.adsl.tpnet.pl. [83.9.32.99])
        by smtp.gmail.com with ESMTPSA id a7-20020a2eb547000000b00290716d65dcsm641925ljn.136.2023.02.27.00.47.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Feb 2023 00:47:13 -0800 (PST)
Message-ID: <8991446f-88f0-9f83-e284-be67b376b1f6@linaro.org>
Date: Mon, 27 Feb 2023 09:47:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v2 09/13] ARM: dts: qcom: sdx55-t55: Enable PCIe RC
 support
Content-Language: en-US
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 andersson@kernel.org, lpieralisi@kernel.org, robh@kernel.org, kw@linux.com,
 krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org
Cc: bhelgaas@google.com, kishon@kernel.org, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org
References: <20230224105906.16540-1-manivannan.sadhasivam@linaro.org>
 <20230224105906.16540-10-manivannan.sadhasivam@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230224105906.16540-10-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230227_004715_913016_498E8B70 
X-CRM114-Status: GOOD (  11.88  )
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



On 24.02.2023 11:59, Manivannan Sadhasivam wrote:
> Enable PCIe RC support on Thundercomm T55 board.
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm/boot/dts/qcom-sdx55-t55.dts | 42 ++++++++++++++++++++++++++++
>  1 file changed, 42 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/qcom-sdx55-t55.dts b/arch/arm/boot/dts/qcom-sdx55-t55.dts
> index 7ed8feb99afb..6339af791b0b 100644
> --- a/arch/arm/boot/dts/qcom-sdx55-t55.dts
> +++ b/arch/arm/boot/dts/qcom-sdx55-t55.dts
> @@ -242,6 +242,23 @@ &ipa {
>  	memory-region = <&ipa_fw_mem>;
>  };
>  
> +&pcie_phy {
> +	vdda-phy-supply = <&vreg_l1e_bb_1p2>;
> +	vdda-pll-supply = <&vreg_l4e_bb_0p875>;
> +
> +	status = "okay";
> +};
> +
> +&pcie_rc {
> +	perst-gpios = <&tlmm 57 GPIO_ACTIVE_LOW>;
> +	wake-gpios = <&tlmm 53 GPIO_ACTIVE_HIGH>;
> +
> +	pinctrl-0 = <&pcie_default>;
> +	pinctrl-names = "default";
> +
> +	status = "okay";
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
