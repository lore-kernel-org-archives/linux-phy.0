Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC93F606A31C
	for <linux-phy@archiver.kernel.org>; Tue, 10 Nov 2026 12:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=kmLVVJp0;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=KgWoyy9O
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=dVEZVS3T+E/FVboc/oMR766KEmDoDA9UihlPsC+uAFw=; b=kmLVVJp0O96+YV6Joqh3Xa8KhA
	5QGr4PrnnEIF5G9gpoHcOGY9QDYX4k5+mIBRhUWOaAu0YFqNRH8UW6oSTepo6dJqRr2ehibHbWnRZ
	FxM6qyfMVHJ2ToAWlOZhZnvCxjWPwMWakMukbFfrggfWLWBRQeck8m9v46fm/ZW5BDcb+jENN/gco
	JE11MwiYOZ+K7dyhXFtszAh1GgAQKLtanQl3CsY5dSfhvR+KVi/WLYBCBRphJ8UVBSQlFILOEgv2A
	xGSsLbHVd4wzV6pQUscpwYQsk8hfWXYjfHm+Ana5XrE5/KSSh4T//+TZUKXNwcpkX+wNPFMNkSCjL
	AsxkxCpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQkbV-00000003jp9-2JFP;
	Tue, 10 Nov 2026 12:05:33 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQkbR-00000003jnm-0Oby
	for linux-phy@lists.infradead.org;
	Tue, 10 Nov 2026 12:05:32 +0000
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-5bcdae234ecso2193969e87.3
        for <linux-phy@lists.infradead.org>; Tue, 10 Nov 2026 04:05:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794312326; x=1794917126; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=I5T5peH0PUnCrtzemSjuLVp2+YwXJuyEpiqwvId8VNA=;
        b=KgWoyy9OjGaT8+X3ebUQZnvARgqvCosSsWSCwpkbVTrpXE9vI8ayCNNhzJo1b5XWcq
         COGNlWthcBcJ2HGGQAG3a08WY9MzDR/ke40P4yWIW+U5cYmTN2DnkC9hDczUOhIBHdCW
         BAEZ/ygLz4BWMAIIZQZuNxVYN0mV9mRU7MvxEAgDKGmemz04TaHV9iUIfhWWCybjqscr
         1Et4AruiljfGJi21YUjRJYPJfMHwA/I/pzA0v96cCe/LSQH31ORW2DKECdUxjzMFbulw
         trp8rV+Qme17/HCKt48dXxLknhwDrlwJT14Q78vusjm1gjZrXBfQRCmMs2L8N05MxOmo
         t2Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794312326; x=1794917126;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=I5T5peH0PUnCrtzemSjuLVp2+YwXJuyEpiqwvId8VNA=;
        b=lKQkdlPwI+PcS37S+nQQ79hehc+qYrLl3nIhcrq3Z1Mvf9bZGi2vm21/GKC9qPbu3U
         epX+AHxsjyS766tNjU2wadgEkCTJFw7DuaQiykWlKewzH5tSnmprIAVjoQZDW8NA/j1D
         lei8QljyHCLpw7ZkcRpPaubDGPPy3/8SIEUrOQqsjj3XeR8Czf+rNbqHoNl364Oegvqb
         yCkdM0MNlw4ZjykPXXA5KAYb4NiSMjNTCk5YgttFYhivr7WmN+fHQN8ZNxNwkw4DiUJC
         eDVXJu+YO1MTWKMg38WrODNXui8XX20J86itvh3nVby6x2/3PElBRa4Oy2LJLpLTE6rv
         cHuw==
X-Forwarded-Encrypted: i=1; AL+hErEc45Ogn46PPbU+pPcy1awIF14lFFbRQz7VG9wqse9is9XOor58nhEptReq/6pzj2+xmP37xDdZWPM=@lists.infradead.org
X-Gm-Message-State: APuU4Z/9FxquTW6JznDJalJQg/NCsZvBIRsyscRhsDIUQMIsEjGmhmpm
	24s7tCotYZwBRn4/Is8NGG/wDs46oKEo7DivSe+vZ67bb9ZiKLInXm//
X-Gm-Gg: AYBFou3XWAnF1RBYapVCL4NoDfzZfh6vb3Vd93M7aOkwKjnd47AB7aJ6iYloWKV8GBk
	d2qlFshYi9LHfAoRN/hVjgQMZ2eela7Wtzwgu3g+7ILcIoDop03WwZ3N7fEiKGpO9oO+lsv4CYE
	x3QBlzwFwj0+qr5X81AVGmNr8ghEMOGyGnUy0qel0vpNJQvlIMp3BeP1xIM+Q0TGxjReGOjklJA
	qSMYM4PkTnQ/v2Ksv+qSjewvc614iwLNbkpQm8GFXWP9OjnO0FEnjRPJU7KfJgJEqeiGqHn3+F/
	9tSfmWavQLC0YY1UNAiV2toiIl40t7Z2M1n38kEF+9JgZE+dbqECdeuPWS9shVhkNbK1nEUeca6
	mAe/Vgx6mNz9sk0oa9jAVvQNzLQJFFGpV8dbc6i5ONwM31AXo3lbekBh0maVdrZMzdjI6v9Q/25
	r2U+ZzEWpOTUBKXsWzYO0A6xv/fIrCAmZqTWOa+MYGqmARFB97MbHh8u9qhtNNCQ7XLhudvV03K
	M5Zw6ItHLgb+Qq678ubZSg+ooaC/amKVCuBP2k7jqCnwfplA+HtvFvQ7B0MtMqeQzwK2E39Zg6c
	corZ4IRcyhQ6v4Ra1IVPgQxXlJvBwAiHffmp2A+ykQXiFqpaYZjb+mg=
X-Received: by 2002:a05:6512:1302:b0:5c0:4e3:a416 with SMTP id 2adb3069b0e04-5c156e375a3mr617826e87.1.1794312326336;
        Tue, 10 Nov 2026 04:05:26 -0800 (PST)
Received: from [10.127.122.226] ([5.195.0.150])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5c159702ae0sm240512e87.20.2026.11.10.04.05.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Nov 2026 04:05:25 -0800 (PST)
Message-ID: <91a4fdf2-638c-442b-be29-59e05c8ba396@gmail.com>
Date: Tue, 10 Nov 2026 16:05:22 +0400
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: exynos5-usbdrd: fix HS phy init count imbalance on
 Exynos2200
To: Soheyb <soheyb_boulaa@proton.me>, Vinod Koul <vkoul@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Peter Griffin <peter.griffin@linaro.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org
References: <20261109221522.2796426-1-soheyb_boulaa@proton.me>
Content-Language: en-US
From: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
In-Reply-To: <20261109221522.2796426-1-soheyb_boulaa@proton.me>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261110_040529_153259_11CFA3AD 
X-CRM114-Status: GOOD (  20.79  )
X-Spam-Score: -1.9 (-)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-12.3 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 11/10/26 02:15, Soheyb wrote:
> exynos2200_usbdrd_utmi_init() calls phy_init() on the high-speed phy,
> but exynos2200_usbdrd_phy_exit() never calls phy_exit() on it. The init
> count of the high-speed phy therefore never drops back to zero: after
> the first init, every later phy_init() of it returns early, and its
> clocks and supplies stay enabled across an exit of the UTMI phy.
>
> When the high-speed phy loses power while the controller is suspended,
> it is thus not set up again on resume, and the DWC3 core soft reset
> times out:
>
>    dwc3 11210000.usb: DWC3 controller soft reset failed
>
> Exit the high-speed phy when the UTMI phy exits, first, in the reverse
> order of the init.
>
> Fixes: cc52a697f87e ("phy: exynos5-usbdrd: support Exynos USBDRD 3.2 4nm controller")
> Cc: stable@vger.kernel.org
> Signed-off-by: Soheyb <soheyb_boulaa@proton.me>
> ---
> Tested on a Google Pixel 9 (Tensor G4) with an out-of-tree port that
> uses the Exynos2200 phy ops and powers the USB block off in system
> sleep: without this change the soft reset failed on the first resume;
> with it, USB came back after each of two system sleeps. Not tested on
> Exynos2200 hardware.
>
>   drivers/phy/samsung/phy-exynos5-usbdrd.c | 7 +++++++
>   1 file changed, 7 insertions(+)
>
> diff --git a/drivers/phy/samsung/phy-exynos5-usbdrd.c b/drivers/phy/samsung/phy-exynos5-usbdrd.c
> index 087d552..0bee928 100644
> --- a/drivers/phy/samsung/phy-exynos5-usbdrd.c
> +++ b/drivers/phy/samsung/phy-exynos5-usbdrd.c
> @@ -1486,6 +1486,13 @@ static int exynos2200_usbdrd_phy_exit(struct phy *phy)
>   	u32 reg;
>   	int ret;
>   
> +	/*
> +	 * The UTMI init initializes the high-speed phy; exit it in turn, so
> +	 * that the next init sets it up again after it lost power.
> +	 */

I think the function is pretty self-explanatory, so could drop the
comment. Otherwise looks good to me, nice catch!

Acked-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>

Best regards,
Ivaylo

> +	if (inst->phy_cfg->id == EXYNOS5_DRDPHY_UTMI)
> +		phy_exit(phy_drd->hs_phy);
> +
>   	ret = clk_bulk_prepare_enable(phy_drd->drv_data->n_clks, phy_drd->clks);
>   	if (ret)
>   		return ret;


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
