Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A7ACC77B7A
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jun 2023 11:19:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lqml7I+5w/Kg9ts+BMxQ46V1EL8T4SPHZcBaRBfpyoo=; b=aub6lT7k+v1GlTXZxaKzYRFdeK
	U72uc5UjEjZm9tlgV4Itu7Y4dgRi4LrDc/h1roKfHWy/sv9i/nAyI8NAObyVR8YpmcMd10+RJ6nee
	qVB0IBUmRM2Zsmfq+HOjtERyqiRUc8YnqaRGMRSlCwdbqa2wBiWEtHS+Vi8PkfDZQk/xQIe9PQNM3
	PQGbgXVU5bAKq0oaTVgCrTWPGMiIny5pbS3aLvDboB1XFAM9ePUNvHtFB2ZCLp5A7wNl1nNDhlwlW
	MBvnFZEE0KyyzL0bDeCHyjVRnIqxuBG4FOOt7ZMQwZgfnuFY8oJ5gc6nR+eAneU2OXvnv44xH0pKO
	R5Z+7TCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6rCA-005crx-2i;
	Wed, 07 Jun 2023 11:19:18 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6rC7-005cqg-1u
	for linux-phy@lists.infradead.org;
	Wed, 07 Jun 2023 11:19:17 +0000
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-2af189d323fso5753811fa.1
        for <linux-phy@lists.infradead.org>; Wed, 07 Jun 2023 04:19:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686136751; x=1688728751;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fjko3QRj+cFplx9h7zbRwTk/CwypS2aJGQpsJdnJBcU=;
        b=laRSDrsJNF9p2Ofs3Yfy7ka0nQNTWbKYMLIRRWEmQCnnCfuI+YpId+dWWU1TyPxBm5
         6Cmq3E/iMw+YsFNd5yjGx3NZnByip7EmAV9SHAEjtlw9byALWWELgRy3SYJKPWKGBQoA
         zd7Wx2S3Juto5ptbe+9OaIjOGSYJwY8qUnXwJ0mqTgROVxtyWUzZ4oFsGJL3roCX2sRO
         Y9TGulY7Yqn6MCizksVHMlD+JKfiPgjQ1QLNlr3CUB3MxpTlgwcWNJXjkbSqFCSvOL13
         QV332ueIJ64er8ta6wCXOPEjMGrVvRSizPJPSFBRJIB7bdpzGeMDVnBcH0iZ265hLEcE
         w+SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686136751; x=1688728751;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fjko3QRj+cFplx9h7zbRwTk/CwypS2aJGQpsJdnJBcU=;
        b=J114ExUggGzx9/4w1A0NCVvBocihGXXwrqEb3v4Xoj+0sLrRTrfy7cbVxNqd9PmrHC
         WfgnSpH52pKA64D/7DD/CSNNXPul0Qq/wxaqFfDCPdpHi13H+wSmYwTXpBma3PxlpmcM
         NegSctGhVDr06JZPXpzrxN+gLNwMg+hg6IK2vEr5jyMuzFlXuEleX2DcZNmV6zv4vJ2U
         NipnT5yMkM6fhAYX7jDDyW28K6QoLs6B+GXcSrdmOZ8bIhXZva3MhAWc0vIYmpUPIX/y
         2VFN1+e0+W74BJU/0O5fdG8pZXm68V344yfQL9k1uDD/ZGBar9JfKED/DG34S7jenfiR
         ZvJw==
X-Gm-Message-State: AC+VfDwJwYqFhrbqgegh1PRC2O4Kkz1Wd3mv/0rcBdqUJdnDmanAgkab
	IUwRHVvi1kswjhzwKJ6vCSk/xw==
X-Google-Smtp-Source: ACHHUZ5rgUIGYC9F4mfa/BwfD2kpufU+Xaf6Czj/chjjh9l/L1hLFCcM7s7tAr6X1R3s3BfQCW9tiA==
X-Received: by 2002:a05:651c:2050:b0:2b0:2214:f808 with SMTP id t16-20020a05651c205000b002b02214f808mr4542941ljo.16.1686136751092;
        Wed, 07 Jun 2023 04:19:11 -0700 (PDT)
Received: from ?IPV6:2001:14ba:a0db:1f00::8a5? (dzdqv0yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::8a5])
        by smtp.gmail.com with ESMTPSA id x13-20020a2e7c0d000000b002ad90c2d0dasm2222771ljc.71.2023.06.07.04.19.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jun 2023 04:19:10 -0700 (PDT)
Message-ID: <87810fde-c824-d494-17b3-b6ff34237bea@linaro.org>
Date: Wed, 7 Jun 2023 14:19:09 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH 4/9] clk: qcom: ipq5332: Fix USB related clock defines
Content-Language: en-GB
To: Varadarajan Narayanan <quic_varada@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, gregkh@linuxfoundation.org, catalin.marinas@arm.com,
 will@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
 p.zabel@pengutronix.de, arnd@arndb.de, geert+renesas@glider.be,
 neil.armstrong@linaro.org, nfraprado@collabora.com, broonie@kernel.org,
 rafal@milecki.pl, quic_srichara@quicinc.com, quic_varada@quicinc.org,
 quic_wcheng@quicinc.com, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org
References: <cover.1686126439.git.quic_varada@quicinc.com>
 <3840e5b5795ef55ecbf25d0faa8c328f09c6d976.1686126439.git.quic_varada@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <3840e5b5795ef55ecbf25d0faa8c328f09c6d976.1686126439.git.quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230607_041915_694377_CF7678D4 
X-CRM114-Status: GOOD (  19.86  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 07/06/2023 13:56, Varadarajan Narayanan wrote:
> Fix the USB related clock defines and add details
> referenced by them
> 
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
>   drivers/clk/qcom/gcc-ipq5332.c | 34 +++++++++++++++++++++++-----------
>   1 file changed, 23 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/clk/qcom/gcc-ipq5332.c b/drivers/clk/qcom/gcc-ipq5332.c
> index a75ab88..2b58558 100644
> --- a/drivers/clk/qcom/gcc-ipq5332.c
> +++ b/drivers/clk/qcom/gcc-ipq5332.c
> @@ -351,6 +351,16 @@ static const struct freq_tbl ftbl_gcc_adss_pwm_clk_src[] = {
>   	{ }
>   };
>   
> +static const struct clk_parent_data gcc_usb3phy_0_cc_pipe_clk_xo[] = {
> +	{ .fw_name = "usb3phy_0_cc_pipe_clk" },
> +	{ .fw_name = "xo" },

gcc-ipq5332 uses DT indices, please don't mix that with .fw_name.

> +};
> +
> +static const struct parent_map gcc_usb3phy_0_cc_pipe_clk_xo_map[] = {
> +	{ P_USB3PHY_0_PIPE, 0 },
> +	{ P_XO, 2 },
> +};
> +
>   static struct clk_rcg2 gcc_adss_pwm_clk_src = {
>   	.cmd_rcgr = 0x1c004,
>   	.mnd_width = 0,
> @@ -1101,16 +1111,18 @@ static struct clk_rcg2 gcc_usb0_mock_utmi_clk_src = {
>   	},
>   };
>   
> -static struct clk_regmap_phy_mux gcc_usb0_pipe_clk_src = {
> +static struct clk_regmap_mux usb0_pipe_clk_src = {
>   	.reg = 0x2c074,
> +	.shift = 8,
> +	.width = 2,
> +	.parent_map = gcc_usb3phy_0_cc_pipe_clk_xo_map,
>   	.clkr = {
> -		.hw.init = &(struct clk_init_data) {
> -			.name = "gcc_usb0_pipe_clk_src",
> -			.parent_data = &(const struct clk_parent_data) {
> -				.index = DT_USB_PCIE_WRAPPER_PIPE_CLK,
> -			},
> -			.num_parents = 1,
> -			.ops = &clk_regmap_phy_mux_ops,
> +		.hw.init = &(const struct clk_init_data){
> +			.name = "usb0phy_0_cc_pipe_clk_src",
> +			.parent_data = gcc_usb3phy_0_cc_pipe_clk_xo,
> +			.num_parents = 2,
> +			.ops = &clk_regmap_mux_closest_ops,
> +			.flags = CLK_SET_RATE_PARENT,
>   		},

Soo... As you are reverting this. Is USB0 PIPE clock required to be 
parked to the XO? I was going to write 'before turning USB0_GDSC' off, 
but then I noticed that gcc-ipq5332 doesn't declare GDSCs. Does this 
platform have GDSCs?

>   	},
>   };
> @@ -3041,8 +3053,8 @@ static struct clk_branch gcc_usb0_pipe_clk = {
>   		.enable_mask = BIT(0),
>   		.hw.init = &(const struct clk_init_data) {
>   			.name = "gcc_usb0_pipe_clk",
> -			.parent_hws = (const struct clk_hw*[]) {
> -				&gcc_usb0_pipe_clk_src.clkr.hw,
> +			.parent_names = (const char *[]){
> +				"usb0_pipe_clk_src"

complete and definitive NAK. Do not use parent_names, we have just 
stopped migrating from them.

>   			},
>   			.num_parents = 1,
>   			.flags = CLK_SET_RATE_PARENT,
> @@ -3580,7 +3592,7 @@ static struct clk_regmap *gcc_ipq5332_clocks[] = {
>   	[GCC_PCIE3X2_PIPE_CLK_SRC] = &gcc_pcie3x2_pipe_clk_src.clkr,
>   	[GCC_PCIE3X1_0_PIPE_CLK_SRC] = &gcc_pcie3x1_0_pipe_clk_src.clkr,
>   	[GCC_PCIE3X1_1_PIPE_CLK_SRC] = &gcc_pcie3x1_1_pipe_clk_src.clkr,
> -	[GCC_USB0_PIPE_CLK_SRC] = &gcc_usb0_pipe_clk_src.clkr,
> +	[GCC_USB0_PIPE_CLK_SRC] = &usb0_pipe_clk_src.clkr,
>   };
>   
>   static const struct qcom_reset_map gcc_ipq5332_resets[] = {

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
