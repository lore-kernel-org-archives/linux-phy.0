Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D04BEE49A8
	for <linux-phy@archiver.kernel.org>; Sat, 19 Aug 2023 07:41:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WGNV1T7ZfLq+pHs0V/tiJVDBPsX6Jq8d3HmD5/vMUVQ=; b=BYzOtkyA4zNA0c
	3mXKjZdiuhoAPCZ0qMKcp2QRkDfB0lv/OFmysYX8q6Cr50kfJPxfXVpRihzHuJB3dmJtFZMn+SeMT
	lyojzeig/Hj1QhkH3XyNk0W118bMQJyfzRlMGJ1GKdmtMzUmdtvIvquM9V73ZlMH+pqMuRbC3slBn
	gA7ASCnZeGhgM8EfDVkgQrkd7Hyd/WBEILndt0TOteFpyIT77yaRUGyTv2Z5BAyyFecHRUqIiu5Jg
	aY1M9Sd20T4NcvoPlzsceamasUkBBBJs7ulnqH+KAmPiIgmL3LiOSkP8y4bGmR8HAUe7gXSyFNbcq
	sAnxE0CYy3ITlhaCxgHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qXGah-00AXiX-2t;
	Sat, 19 Aug 2023 07:41:47 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qXGae-00AXhy-1J
	for linux-phy@lists.infradead.org;
	Sat, 19 Aug 2023 07:41:45 +0000
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-99bc9e3cbf1so340897066b.0
        for <linux-phy@lists.infradead.org>; Sat, 19 Aug 2023 00:41:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692430903; x=1693035703;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mL5yjhdmw8GacqDjOvdF9rVaf+/ZSZWnODXm2yL5ZAE=;
        b=OS7FDLT5qemjOv0zalS3xNpn6eNWnNlWTJqvcAbWN7Gwn+nm7jz+VwxsexO8n9OMgD
         aA0v7ZeMVsuvJGx9mKJBHjY93idpOQ/C4seCJmm3vnxzlveV4DphhiSV9+eIGHlrD5oJ
         xiw19zfWTNGF1gCmMYxdv46kIuBiUkbi46zEIm80BRqyjOtSpmf9TBMdSqSBAs49UZON
         n2OnIRxmqkhhchxX13o79BrFE8Uhb00Kgb2BDdCuxmho5StNo2s68aPIgAnXTzBNIhDC
         mVBVaD0O3F0Hht+EG/4eIu05OsASDtkuzxEmFMTluCum1Orn7Q6BDbHxVVZyEKdjeKg9
         ZU4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692430903; x=1693035703;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mL5yjhdmw8GacqDjOvdF9rVaf+/ZSZWnODXm2yL5ZAE=;
        b=PfvnsVJvKAoL2B7N0p30n0X7WDtt7N2Inlnb0gLLyOemJaUu28wk9tt/NayIU2cJxb
         MmCTQATjtc1zAEn4bo9bNPdOHlf4rAwBsgSyOjT+5gqQam10ATMYnkAYktqvGxgJUUpg
         rrF4ybQsF9brc644kwDdzzaaW4R1rp56c3L9sy45mFKkKoV5T2+DdGh48Atf4LbcL0ou
         Zf3mEY80Y1/GOFYVoLQl03JAnpKE0Lnfqj0LbFsDQUStCPsLV8Rv9cJcgE7pgj6bCXzL
         7vf3JwZ67iRBRBTWZeSTw8HMuhfSx4E6Av2WA50hCgwQRSSNZbmsnfY/bxdf2ClpSN83
         dhpA==
X-Gm-Message-State: AOJu0YwykXMAWe8xdMnkfS0HaNHkXdDDflceUnNnvJXjulK7BsCLqzvw
	Mg78uvn7UKuFRzGRhwdRsmzWeg==
X-Google-Smtp-Source: AGHT+IEg1hWfCSvOgsaSQlDTxjjOn5EwetNePa41wADm35vr3XLbYE6ijpcyaBjC+nmjFBXWf9FJQw==
X-Received: by 2002:a17:906:7316:b0:974:fb94:8067 with SMTP id di22-20020a170906731600b00974fb948067mr1396252ejc.23.1692430902721;
        Sat, 19 Aug 2023 00:41:42 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id bv24-20020a170906b1d800b0099b8234a9fesm2241070ejb.1.2023.08.19.00.41.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 19 Aug 2023 00:41:42 -0700 (PDT)
Message-ID: <e572cb3a-54bf-8f08-e74d-e1df42548b6a@linaro.org>
Date: Sat, 19 Aug 2023 09:41:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 5/8] phy: exynos5-usbdrd: Add 26MHz ref clk support
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
 <20230819031731.22618-6-semen.protsenko@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230819031731.22618-6-semen.protsenko@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230819_004144_583682_73852C43 
X-CRM114-Status: GOOD (  13.24  )
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
> Modern Exynos chips (like Exynos850) might have 26 MHz OSCCLK external
> clock, which is also used as a PHY reference clock. For some USB PHY
> controllers (e.g USB DRD PHY block on Exynos850) there is no need to set
> the refclk frequency at all (and corresponding bits in CLKRSTCTRL[7:5]
> are marked RESERVED), so that value won't be set in the driver. But
> even in that case, 26 MHz support still has to be added, otherwise
> exynos5_rate_to_clk() fails, which leads in turn to probe error.
> 
> Add the correct value for 26MHz refclk to make it possible to add
> support for new Exynos USB DRD PHY controllers.
> 
> Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
> ---

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
