Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D379CEE4981
	for <linux-phy@archiver.kernel.org>; Sat, 19 Aug 2023 07:11:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NlpRMxZmCKaqcPZzAjq4g9rVmJZWEQaAGpdQDHOw5gA=; b=00KoLfMub50XGG
	9A9yJFP6W7pdRHwigOE20nqD1mC1m14h9eWOEHBY6dO77oTCmTC+b5IcQ8Nb++ruPrCNBI+3VJUYZ
	aFU7MmEvOEWAs6bj3T8UvZnRTBcsmk7JRXMfwXrmIK6myIGXsa04v/58ZDZqqKEUzwY22y/I6wa9A
	HF3dFCgR8TAz9AwV8RqYB1sNEhAKUlgG+Nf14zxob9PLHcKSFXwupjnPyHJrVrL6ydZIbG0y3po3e
	hgKHXMvH77ua4YfyYpurzjwAmAZunsWnFQFR0TS8b4i+VCrokLr7f42HW91JHY10huwcbTqpFL1a3
	bbTrROqdGsf+PAn1n4fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qXG7U-00AWY8-1p;
	Sat, 19 Aug 2023 07:11:36 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qXG7R-00AWWY-0c
	for linux-phy@lists.infradead.org;
	Sat, 19 Aug 2023 07:11:34 +0000
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-5298e43bb67so2155044a12.1
        for <linux-phy@lists.infradead.org>; Sat, 19 Aug 2023 00:11:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692429089; x=1693033889;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=L279B4ZpoigR6vHbrScae5IfezCXD2o2gXc9I6TXPuk=;
        b=N3drhHWFU6Vq+CKRLcgT/87SrOFaM8PrFb/Kfyz6B/W59AVcQe/DMmy5HsQRfMTiMh
         haWxFzMiAv66fhDKZL1+VURclCDrofaUMRs012XglMSD92oRDe8g1oDUnwluBaMqmCCy
         tWZR2VGzNEqom0k/MEBwcUqCK1fJan7QSW6Sh8bG2OQHFyNXR6iHuLlCKTAWD0fjgLKl
         9E7hwUCQDVWHzwbSrKzGCk4gzowqmIypwmyuvVhi9UpKtessM8Rsic4NpfXfqrb8nAT9
         gqYMBDKsETYxIyaCesccq9nvfSMB9ZSd3yYiQbFyKJnjZaZX4KG9Alu9/1/Q0kV9r8xu
         7B6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692429089; x=1693033889;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=L279B4ZpoigR6vHbrScae5IfezCXD2o2gXc9I6TXPuk=;
        b=dWHc1jUEkxUl4ITpu2+k1xbMCIWbbAUxmI2DgtyxpPJlUo8fbUY90jlABQmR+7g6eo
         rvae2IMiy4WfOU8f3c7jOV21W9EMNkn0aOe4OIl8nM6NYT6KwTRjYuMvX+Mp/vn+Jznt
         SUyXGVXI4LoN5xsgpZlxWmuFjMLR1gPaMQlHV+Jp9dhExIJbKDqPYYGXl1XJ1BaROMmP
         t1wydu6dDuSfuTDKyexhdhETHyNCxUhw9p2ENNXnPPGAPkFIC+Gsm6Krdft0Ubwmqb3t
         yFqflL9w4duulXn8QOCzkQ+YehxcbKDNHh5cVawXTeB1XS13ldt1lVsCLN4yjaFrU6z8
         PCgA==
X-Gm-Message-State: AOJu0YzSPNkDtNsPSD63h3msk7JsXL4GVBI2KNATYoSfQ6PNKXW46+B6
	qss1vLWrcDGXWGe00I1cOoqbUw==
X-Google-Smtp-Source: AGHT+IGqOS5AH3MWBcYtFWY/J77pXTNwjuPPZpEImn1yI/aUFNbalu8BEnsJclgaLdEDyTc1Rc8Exg==
X-Received: by 2002:a05:6402:268e:b0:522:b723:11bd with SMTP id w14-20020a056402268e00b00522b72311bdmr1475371edd.4.1692429089703;
        Sat, 19 Aug 2023 00:11:29 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id j21-20020aa7ca55000000b0052596c88941sm2051723edt.39.2023.08.19.00.11.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 19 Aug 2023 00:11:29 -0700 (PDT)
Message-ID: <714d87ec-e662-4da6-5efa-6d9cc2d6e845@linaro.org>
Date: Sat, 19 Aug 2023 09:11:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 3/8] usb: dwc3: exynos: Add support for Exynos850 variant
Content-Language: en-US
To: Sam Protsenko <semen.protsenko@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Thinh Nguyen <Thinh.Nguyen@synopsys.com>
Cc: JaeHun Jung <jh0801.jung@samsung.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Marc Kleine-Budde
 <mkl@pengutronix.de>, Heiko Stuebner <heiko@sntech.de>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
References: <20230819031731.22618-1-semen.protsenko@linaro.org>
 <20230819031731.22618-4-semen.protsenko@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230819031731.22618-4-semen.protsenko@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230819_001133_230269_B3A5CDFB 
X-CRM114-Status: UNSURE (   9.77  )
X-CRM114-Notice: Please train this message.
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

On 19/08/2023 05:17, Sam Protsenko wrote:
> Add Exynos850 compatible string and associated driver data. Only two
> clocks are needed for this SoC:
>   - bus_early: bus clock needed for registers access
>   - ref: USB 2.0 DRD reference clock (50 MHz)
> 
> Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
> ---
>  drivers/usb/dwc3/dwc3-exynos.c | 9 +++++++++
>  1 file changed, 9 insertions(+)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
