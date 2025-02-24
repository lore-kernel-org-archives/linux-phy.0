Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43EEAC021A4
	for <linux-phy@archiver.kernel.org>; Mon, 24 Feb 2025 10:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CgfG0DtUAJPjFxxVHzySl2Xoru6GGO8dhpa9rD3J7aM=; b=tiFDKHRkhtWeHR
	KeuhoMF8AOWf+eyAEok33HLXeopWQAwr1XtDILfXiTT7/eynRLe9aKKNz3tqvzxDTCn3Qvv2xYNp7
	iFv0l0sFfJfMo1CabdBD1wmBEhxEgx7yo2jnjeF1mpUnt0jcUOdwXHVPGi6CfybAOtmn1yUUTBKF6
	G8ynqsmwr522nmTiYXtLYWmGItR073+s9GnrG3IAwYNtkYY6Prz5QHPXgobEJELHimRPVRFB3LtoK
	DzVOmWtmiEI90AbbrpCoA/q370xrAXE2D+wPYQuIVg1IbEm0jz0az3msoIkqOgzA7vv6ODyCfoCU7
	EcpAxgegIDBQfB6D6bZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tmVa0-0000000D6D9-1TGn;
	Mon, 24 Feb 2025 10:20:52 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tmVRQ-0000000D4Ce-0Vje
	for linux-phy@lists.infradead.org;
	Mon, 24 Feb 2025 10:12:01 +0000
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-5e050b1491eso9081491a12.0
        for <linux-phy@lists.infradead.org>; Mon, 24 Feb 2025 02:11:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740391918; x=1740996718; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=CU8WACFROSgTLo9Ox03v99I3iVcvKceQqegZUMUwxvk=;
        b=gbX9N1sKKWAZdg9AzFplvbGBcKlTq12qFoo9KTwaS4h27cCB/QrT5mc+lK8fP3zR/z
         SU8Cr/lRFmuMRYbPjD2ckcqQlgcLeekCZmtqcCR6sZG3WZgIuG3gN+ysrkHuvLNAxY2Y
         y57IIxfmQqEQHzKUWVynm4IzJ2mcXJOEk1qkXCKE+31y0zW4mRjQooTPYrUsoAg3m+n0
         ncpLzavXRcIgUNi5j4IUIbL57Ibktj7fW2l1239lAoiqyjIxZ4Jqzgpzm4k3KQmfV/hu
         Of6gpYNtZHtGy2arTAB6EMzsqIO4BsPoe7DMdTqrEd6/MiTIB3qZggihorvMIKL6htZ+
         a6Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740391918; x=1740996718;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CU8WACFROSgTLo9Ox03v99I3iVcvKceQqegZUMUwxvk=;
        b=LxrKFfbE8VLN44uDXrc04gL4Xt6f377d2V60YqA8cc7Gwqo2P1PyIDiBgaowX7pndX
         HjnjRqPo6poocupaMMMD1HXay1uEBPM3Y8frZ9TfvPLbEdgZA27Q9LrCqJ0oiLUbMzzV
         THuIs0KEvzNZmxBwi3U4Qx4kg7Onf0D1D89XoCzgkMqZGECDUufBpLCQzvqrnauv70uP
         D6kYlyIoJm3TvCIvvhnlKD2SKMs81D+DBYnwovIXYbBvmvG3KLz/ULufFMqR2MJdyQkZ
         ZaJeLykgtGrv4YMFlgi+dR8OhMx3rGRe4TKc0oKL36go0Hh4zEv5vbY1GRGr8LWTYSYi
         /hqQ==
X-Forwarded-Encrypted: i=1; AJvYcCUCEcnWIRI3oNYBEojITcfkgGWsegoHPPSZzk/0RN363WPvd8WqUHWKFhj35vU3Hh+rxWAr0Tk1FHc=@lists.infradead.org
X-Gm-Message-State: AOJu0YzAhtDN65ajs0I6fdEUSOfat999P+Ym5MHfvZWtA4r4TsnuGMWn
	aD3yVsoMvjzvj4f97AREkwbeR9cgbikowIP6H9xdhwnBfw8dymmFME/DHNloq3U=
X-Gm-Gg: ASbGncukCk2Ng6985hezZHNYitJ8TQGV6BmOAUpFM1ymZeeWmLY41bO4VHk/0Slv4Ff
	wLsIZrIDHCkxmsOjrlm8VcRHkZbwwSUWQn7R8Hg2IhaGDurSUYbuJE68764KTgOvwsGW/jIea8Q
	FGpqJqeRTBRoffmg8gxTFYyHZMP+poJLAGGq5PnUvfca41dHlGVed7u0a3MmZfiVXqjTf+Spe1B
	XuhoAcIEYBGp12aXfstUl90QQYkJ72P0SqndLWtEoJGCK0EpGuMfMQWTF/eBQe13Z9D3Gm4gEYE
	Nsn3vkxF52mkbl9wdz8IrBM=
X-Google-Smtp-Source: AGHT+IFBYGv39ku/WXgGCB6eZU2Nhkmme9NrVcRsypJZXftUwbVR6qfXWzvvkzePYp6cqUbaZIeE6g==
X-Received: by 2002:a05:6402:524b:b0:5de:50b4:b71f with SMTP id 4fb4d7f45d1cf-5e0a12baa86mr13103989a12.12.1740391918073;
        Mon, 24 Feb 2025 02:11:58 -0800 (PST)
Received: from linaro.org ([62.231.96.41])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5dece2709b4sm17963793a12.57.2025.02.24.02.11.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Feb 2025 02:11:56 -0800 (PST)
Date: Mon, 24 Feb 2025 12:11:55 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 5/8] phy: phy-snps-eusb2: make repeater optional
Message-ID: <Z7xF66TctF2wuoGj@linaro.org>
References: <20250223122227.725233-1-ivo.ivanov.ivanov1@gmail.com>
 <20250223122227.725233-6-ivo.ivanov.ivanov1@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250223122227.725233-6-ivo.ivanov.ivanov1@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250224_021200_171952_75126E10 
X-CRM114-Status: GOOD (  16.11  )
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

On 25-02-23 14:22:24, Ivaylo Ivanov wrote:
> Some platforms initialize their eUSB2 to USB repeater in the previous
> stage bootloader and leave it in a working state for linux. Make the
> repeater optional in order to allow for reusing that state until
> proper repeater drivers are introduced.
> 
> Signed-off-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
> ---
>  drivers/phy/phy-snps-eusb2.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/phy-snps-eusb2.c b/drivers/phy/phy-snps-eusb2.c
> index 4e5914a76..dcc69c00a 100644
> --- a/drivers/phy/phy-snps-eusb2.c
> +++ b/drivers/phy/phy-snps-eusb2.c
> @@ -461,7 +461,7 @@ static int snps_eusb2_hsphy_probe(struct platform_device *pdev)
>  		return dev_err_probe(dev, ret,
>  				     "failed to get regulator supplies\n");
>  
> -	phy->repeater = devm_of_phy_get_by_index(dev, np, 0);
> +	phy->repeater = devm_of_phy_optional_get(dev, np, 0);

Maybe make it optional based on compatible or something?

>  	if (IS_ERR(phy->repeater))
>  		return dev_err_probe(dev, PTR_ERR(phy->repeater),
>  				     "failed to get repeater\n");
> -- 
> 2.43.0
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
