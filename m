Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CCC78EB2717
	for <linux-phy@archiver.kernel.org>; Tue, 10 Feb 2026 20:48:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FUhENO8FKonFi4LhPbusbYGesKSOePOBJrq08TGDrxM=; b=K4+y9QEYcSP/Ld
	nNXZV7GdiDYdrYvMvK8DD4hm67W9sh/0uCGRjO5oOf5Rw1L5lAHkX/vWeMKATutvlD6j91WPiwFeN
	GOHu8n1WQohZDanwAUqyAPAkBipZAzpl6/YpdBsSLFa3iD0/3+UTdShsrWtg81eax6bnK/cxuG8OK
	soaqcy+Ci9WzUHzORC2O0yBOkEO1FFA4TsFTe1EfUJcBL7J+T3iAd46HTFh3+QiTXYhnx6rz0cjjl
	8jYj/d9xjb3I0/LUCpCMRC+pEshBA5sMHXBdFv+asXGCIHUTkoLnNiHi2+cjTWmY26KGITpOm7hRl
	EO2TG5C5lS2vwGyjInHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpuet-0000000HUUH-1XdZ;
	Tue, 10 Feb 2026 20:48:31 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpuep-0000000HUT6-3L29
	for linux-phy@lists.infradead.org;
	Tue, 10 Feb 2026 20:48:29 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-4806853efb5so6926985e9.0
        for <linux-phy@lists.infradead.org>; Tue, 10 Feb 2026 12:48:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770756506; x=1771361306; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=qyFgyNWHXU64SHJN29WjtJtR7uYHlrJZAim1yoRlcII=;
        b=de/JXA867dMXLMdysJPM5MIpkbylcE/MN1a4m+m60SXKblkPidU0auwHUNHkHD8MD4
         76hZXEwFTkRJEyLpA5vOVtPZKXePAz4R187+Iai6I56CIX4vyXCFjfzKdUbg2N99ApAW
         zmrgFLl4XPlpLirfRATHPUQbhpybn7tnS8D+6o/4OJXtmxJeIOuPF9iAPw+U1/mt4Qc3
         u2waSdzAusEF6pIAVXsxGfLJ03E9M/XLyrpuA3p9WklaoD44CYEg1gRwB5Hkb8gmviZV
         i13kUXqwhvYMr4O+EgiBGdgyTvJWk6/HSQVNJnZ9NqPnMfH0Hf3uPS/UnVZ9qAInI/Bt
         LS4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770756506; x=1771361306;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qyFgyNWHXU64SHJN29WjtJtR7uYHlrJZAim1yoRlcII=;
        b=Nf6S1P5r9DRn6Ll3ViBsl0ne+0ynHJr451mW0YSkD8FwbWEuJcRRcL2OI70qhAZ2KJ
         Rm120R0ugVLE1u8CP+14ttlQzUpp3zDfe/XfBdX2tnTuqOQ0APsOS6F8EJ6PtzcMyAJN
         alZnUUUPodRgnrRXJ6b9GjLdDdAgX9bzyZjb1JYgg3QEVEW8i3Cd4AePEyd1PMpXR1Qt
         ULYTsiP6kGCs5nB9EEWOFh82Bxuqc9KIFpKSDOoddNhLm0zuQZdJH4EBzMoNPxwz5bB0
         vR5Wzrzp1GhjcMxgnY15BBYgSEbHVWAK8IPbkBNHGiphZKPQYLGlgl9+0DRRFevPXWNr
         sqUA==
X-Forwarded-Encrypted: i=1; AJvYcCVJ7u8yKjS8f+d2J8nYprWH5WDae8amgXa/RwvU/IVvva2RwM/0K1yX7bMmSjLC+ANQqvPbUmaX+io=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyy7fU4FBLEIQOoly7zSMuje1ddY/mhemv1/4nw/37iFpXqETNV
	EwfuAyrpTJmMm20TcVtCPLC1GBc5lYianRylkrF7oYT7SrRBb/hQoojM
X-Gm-Gg: AZuq6aKMGwPhfOC8LbyHzABSnD8G+vOnho/61C+BAfCSJRMSXGDAa6fKdyIbnUuVAe4
	AEn0KkiGLkld07ZATN+mk6C4jxVpKUWK2EXtebiUvYZWZBtoLDk20BM7Mj3+aBgbWRBfG320CBj
	AskwAN9FyWRvZq9vJjkBg/xF8aeZyuCG9O6GeXl183UeOVcl8B/JonDrTslyD/dhLXhKqd85t5D
	QvOn8bIBo99LnTYQ32+7Ly19/DzjQ57mc0f8OcXWjDeEnTjuPIMGwtsoRSUKQvaxYGb7pj5Lugl
	eLX65KCgsWbr5bCJT/d3MVJsIH2basJ41emQhAP7WRM2+Sxt+/2J1V0IRp51AdLfecyZ9A4Aegf
	b78s27sahT/NkSTvTlaYl6447P7esw8zLYGfWNTHzNQBDNywHVUZtw1APya/VmvPkBWH/0aC23P
	XqIu2MkFY9eMYpkG4=
X-Received: by 2002:a05:600c:64cc:b0:477:5ca6:4d51 with SMTP id 5b1f17b1804b1-483511ccf92mr29460685e9.3.1770756505624;
        Tue, 10 Feb 2026 12:48:25 -0800 (PST)
Received: from skbuf ([2a02:2f04:d501:d900:d8ac:c964:9b43:1b13])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4834d5d8ebfsm133863775e9.2.2026.02.10.12.48.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 12:48:24 -0800 (PST)
Date: Tue, 10 Feb 2026 22:48:22 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Janne Grunau <j@jannau.net>
Cc: Sven Peter <sven@kernel.org>, Neal Gompa <neal@gompa.dev>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Philipp Zabel <p.zabel@pengutronix.de>, asahi@lists.linux.dev,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	Dan Carpenter <dan.carpenter@linaro.org>
Subject: Re: [PATCH phy-next] phy: apple: apple: Check the actual ioremap
 return value
Message-ID: <20260210204822.jr22el4rlyosin2q@skbuf>
References: <20260207-phy-apple-resource-err-ptr-v1-1-78735b07ed2d@jannau.net>
 <20260207-phy-apple-resource-err-ptr-v1-1-78735b07ed2d@jannau.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260207-phy-apple-resource-err-ptr-v1-1-78735b07ed2d@jannau.net>
 <20260207-phy-apple-resource-err-ptr-v1-1-78735b07ed2d@jannau.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260210_124827_856653_A0E8B26A 
X-CRM114-Status: GOOD (  20.53  )
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

Hello Janne,

On Sat, Feb 07, 2026 at 05:40:34PM +0100, Janne Grunau wrote:
> The address where the devm_ioremap_resource() return value is stored is
> always a valid pointer. Check the actual return value instead as that
> that might be an error value.
> 
> Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
> Closes: https://lore.kernel.org/asahi/aYXvX1bYOXtYCgfC@stanley.mountain/
> Fixes: 8e98ca1e74db ("phy: apple: Add Apple Type-C PHY")
> Signed-off-by: Janne Grunau <j@jannau.net>
> ---
>  drivers/phy/apple/atc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/apple/atc.c b/drivers/phy/apple/atc.c
> index dc867f368b68748ea953e594ad998d7f965d8d1d..c144e273a555a741b49adfccbe046df83d193e03 100644
> --- a/drivers/phy/apple/atc.c
> +++ b/drivers/phy/apple/atc.c
> @@ -2206,7 +2206,7 @@ static int atcphy_map_resources(struct platform_device *pdev, struct apple_atcph
>  	for (int i = 0; i < ARRAY_SIZE(resources); i++) {
>  		res = platform_get_resource_byname(pdev, IORESOURCE_MEM, resources[i].name);
>  		*resources[i].addr = devm_ioremap_resource(&pdev->dev, res);
> -		if (IS_ERR(resources[i].addr))
> +		if (IS_ERR(*resources[i].addr))
>  			return dev_err_probe(atcphy->dev, PTR_ERR(resources[i].addr),
>  					     "Unable to map %s regs", resources[i].name);

This does not seem correct - every call site that tests a pointer for
IS_ERR() also decodes the error using PTR_ERR(). Whereas you are here
creating the pattern "if (IS_ERR(*a)) return PTR_ERR(a)".

Proven practice seems to tell us that insisting to save the
devm_ioremap_resource() return code directly in *resources[i].addr
is too complex here.

Would you consider creating a temporary "void __iomem *addr" local
variable, and set "*resources[i].addr = addr" only once it's validated?
This would make the code obviously correct upon review.

>  
> 
> ---
> base-commit: dbeea86fecef7cf2b93aded4525d74f6277376ef
> change-id: 20260207-phy-apple-resource-err-ptr-5923d1130465
> 
> Best regards,
> -- 
> Janne Grunau <j@jannau.net>
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
