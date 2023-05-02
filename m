Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 658FBC77B73
	for <linux-phy@archiver.kernel.org>; Tue,  2 May 2023 05:48:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FpHb1H45b1EFx8Ykkp8H9qkRwt0tqpxoIfOzdFiG27A=; b=eTB4cxg0dCbBP1
	04n2hwqywWFUQZA2ze+OvcauhwA9IIUARLHqQIsIFx58zbyhUkbmcoFVcw2qiGLU99dW30YG7FK9y
	beHrxvkmHkHp0IPj3YgyuSE4fE11PFhzmTsGcMvjfM+MQftb7CO02D2oR++LW6Nyy45FlE8dPRIW3
	eZdrpwvsgJUyszqDEE2E/IGZ5W/geZqHJeByUly9jp8wS+aQf7U0GVlH+7tyURvPkNCxKMx7+/0Or
	Hb0AuApbPF+2JG0jRmsIWcUQwEe9ufrKa+YkYLBzu5YgUi9DlgP9Pr2jNuCFnHjXK6sOTDdl34UYP
	FswrjwStPDrnbLcJuFXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptisZ-000GKN-09;
	Tue, 02 May 2023 05:48:47 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptisX-000GJm-36
	for linux-phy@bombadil.infradead.org;
	Tue, 02 May 2023 05:48:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=vNbPmr5bNbBTGpERvChrdW2sKTJp+U0aa0vtTqIBezc=; b=R0fmUU0Ir0v1sYmWEitFIriZO3
	BtYsIq+YgSnqQ/HJaVGtWNwR3DaUOy/jhQ70p3eBptM/P1iZi+rW6vvMvdGnZ8E8GTkafN/GJtHUX
	/PkQndowzz8/eEMMQiOhIj5QhTArD0ovqEdC/bkk8XCbWJeUoD4xNsJq4/QH4iHardC9E9Nbd+itX
	m/avmAugiJEplsC+J7eA0Df3hy0J+moKI5FyMNR3hx/d6MJPQMzLIfst/hLuyfftUvCXT64gIFnuf
	O9NDhHbt9FChQ++J4m/Aw4Z+thMZC8oX/7YjxAUHJNJImMIIB9neMMYHtmvz7IsFLEXFSR7h6Qjk2
	ckfaF7qA==;
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptdgy-00F3sE-1a
	for linux-phy@lists.infradead.org;
	Tue, 02 May 2023 00:16:30 +0000
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-4efec123b28so4156137e87.1
        for <linux-phy@lists.infradead.org>; Mon, 01 May 2023 17:16:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682986585; x=1685578585;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vNbPmr5bNbBTGpERvChrdW2sKTJp+U0aa0vtTqIBezc=;
        b=hPtiT8DyZ40DxiHCHZDQgHQwzj1/Cv6zfCU9uuNqkyFsJQ8jvE4NE5IdL4h6TjQcC8
         l7bwXgr1vSoi4V6XPvy7FYFbT9d19qXn81S+3zGgtvgQfLd27DfO3W0QnbVJPdrN+xne
         E2S5SaMHxT6HtE7c0H7uzUg3VaO7vWWS15S2WeX/H0Kbd490bJMXjasJGHDbuiIILAWP
         EdlLPfKN1szRJTSIfF0baGIc/NPI9rwSYA1WtlBZOoD/y3A2Kt+Sbwvr7g1wme/9jS6e
         mcFnom5TmRQYbAvFyA9WdrgG9Ujq4z8mJVbk0OG3ZyRkyIrmM2mwj6FMPPQhU02htgMX
         SH7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682986585; x=1685578585;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vNbPmr5bNbBTGpERvChrdW2sKTJp+U0aa0vtTqIBezc=;
        b=ZZGJc1UeKNAoRSZslOtSAXUPl9qwXafHoKCA9nvejM0cIovCqWosqMm/iF0z2VQRJX
         xnvuD2jZO5YkAs5Hem3hnXzTTAgWJKqpIhUfPe6CV3Y8UkaQEYCsa7GsJ/G7oEOLrRVa
         j1ZcWmZjZfm6sNtXEK34aRm73tIvwOgEMjTlL2uN8DS9IoAeGUUfjNPVDJ+kB5YYS8Pb
         dMMcQe7ixU8m3VfRNBUrwxfTyVAQX9iOyuQFFlnzvtc1wm2wzZvYbGE5iMutrkQhGL7E
         jljwAYegC+w4JSTvgGJ1x8ZMS7lvzPoDvi4fqdCU9RlPptmmCrvE5At8oy9MZPLhUwM6
         6Hcw==
X-Gm-Message-State: AC+VfDw2vrKkrVO6Cd0BLJdZiOnrjIz2Mt6MvgrUuonboVWYA7+olP2g
	920P6cUr70WlUGoEavY6HPTIhQ==
X-Google-Smtp-Source: ACHHUZ4gLX7H8mWJSHjWdjvuUfToGQ1BcPPIcO9rw7RnG2M0fdeOMyF40KfTWVA763tBb2KTcJ6sVw==
X-Received: by 2002:a19:ee0c:0:b0:4ea:f526:5bef with SMTP id g12-20020a19ee0c000000b004eaf5265befmr5192356lfb.28.1682986585453;
        Mon, 01 May 2023 17:16:25 -0700 (PDT)
Received: from ?IPV6:2001:14ba:a0db:1f00::8a5? (dzdqv0yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::8a5])
        by smtp.gmail.com with ESMTPSA id u18-20020ac24c32000000b004efe8d7891esm4302694lfq.161.2023.05.01.17.16.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 May 2023 17:16:25 -0700 (PDT)
Message-ID: <4f88dc8a-0e8c-156f-bf7c-4fcf30df1037@linaro.org>
Date: Tue, 2 May 2023 03:16:24 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH v9 4/4] arm64: dts: qcom: qrb4210-rb2: Enable USB node
Content-Language: en-GB
To: Bhupesh Sharma <bhupesh.sharma@linaro.org>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org
Cc: agross@kernel.org, linux-kernel@vger.kernel.org, andersson@kernel.org,
 bhupesh.linux@gmail.com, krzysztof.kozlowski@linaro.org, robh+dt@kernel.org,
 konrad.dybcio@linaro.org, kishon@kernel.org, vkoul@kernel.org,
 krzysztof.kozlowski+dt@linaro.org
References: <20230501192432.1220727-1-bhupesh.sharma@linaro.org>
 <20230501192432.1220727-5-bhupesh.sharma@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20230501192432.1220727-5-bhupesh.sharma@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_011629_001996_84178E76 
X-CRM114-Status: GOOD (  13.05  )
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

On 01/05/2023 22:24, Bhupesh Sharma wrote:
> Enable the USB controller and HS/SS PHYs on qrb4210-rb2 board.
> 
> Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> ---
>   arch/arm64/boot/dts/qcom/qrb4210-rb2.dts | 24 ++++++++++++++++++++++++
>   1 file changed, 24 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
> index dc80f0bca767..eae3024ce003 100644
> --- a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
> +++ b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
> @@ -222,6 +222,30 @@ &uart4 {
>   	status = "okay";
>   };
>   
> +&usb {
> +	status = "okay";
> +};
> +
> +&usb_dwc3 {
> +	maximum-speed = "super-speed";
> +	dr_mode = "peripheral";
> +};
> +
> +&usb_hsphy {
> +	vdd-supply = <&vreg_l4a_0p9>;
> +	vdda-pll-supply = <&vreg_l12a_1p8>;
> +	vdda-phy-dpdm-supply = <&vreg_l15a_3p128>;
> +
> +	status = "okay";
> +};
> +
> +&usb_qmpphy {
> +	vdda-phy-supply = <&vreg_l4a_0p9>;
> +	vdda-pll-supply = <&vreg_l12a_1p8>;
> +
> +	status = "okay";
> +};
> +
>   &xo_board {
>   	clock-frequency = <19200000>;
>   };

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
