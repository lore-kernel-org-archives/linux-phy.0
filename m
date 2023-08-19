Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 364CEEE4981
	for <linux-phy@archiver.kernel.org>; Sat, 19 Aug 2023 07:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ftPLWqnF/x5W13pMskZ+HoEdROACV8fm0JxJNrOXlpc=; b=llmF0pS/4dyPYY
	zc9Q72GpX8fDTN+X7umAtxdcP2wgCzDN1FeEt6cRZOlAqlzRP/1n3QMYqmZ6lPsdolhgDI+Hk9ooa
	Npg72w6Ui6lBsXUmK3smm6fvRw367I1g3hh5zs9rLo7QjUrzjkQ1N/+GV4kNbY7EuEqERKiI2w/0/
	lD5/rs2fDCC8/awo8KnaTm8iHcoRwENG7N6M6vFcZ9wGyYxjjbgbT5qnatDgJO1GcJZEpAjP01qVS
	Ffqo/hoFVFASoQ6ht/6ufUSv6A3Odh+Sx6i9F+rrrGYb7adZy/VhQkCimGSkYd1A6BZnaVFK+NEi4
	QLpVauWjSJbf46G/aFxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qXG5u-00AWPk-2s;
	Sat, 19 Aug 2023 07:09:58 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qXG5r-00AWOu-2T
	for linux-phy@lists.infradead.org;
	Sat, 19 Aug 2023 07:09:56 +0000
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-991c786369cso211570366b.1
        for <linux-phy@lists.infradead.org>; Sat, 19 Aug 2023 00:09:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692428992; x=1693033792;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=b8qI0sJztqQDw6h/vBwRwLhtMGerNoCgM5/KeoVhh6Q=;
        b=loNavOkqgomEZyWZklIcwWH6P4OTjuA0nITXlNoir2jSumGwkTVrhmiRvoWpu3BygZ
         v0b4SPNBoGaqal88HKs2X4+Qc+QC1/nyhzWLYJIM52KayIqvLrUrQ3Um4JYxxSUHCg/+
         1auED2qbQ0qAyTYlFQJUMx6b3tCHvcxTFp4SP/KtSKjmmMxGUDQ9OHXDwrquhXRudOnP
         e3Y6/qF2J2rL6/rdgV0LcSZDXYdH+047HqSY5YvsKqyDahJVNmb10oBXpeQEQZNgzaFZ
         VVpKPma5j4km5nSuz05zfxCvHHCOitODpDmoln5EgH8WMtQXt7xGZHSfMcVdshypbL9v
         lk+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692428992; x=1693033792;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=b8qI0sJztqQDw6h/vBwRwLhtMGerNoCgM5/KeoVhh6Q=;
        b=XlXoNb0P6dmUUIdnjcqKTqA9ImAwS6FOCKZZAZ5EwzifYLH72GXqRpUMLrjqSOnmck
         YOPWQxeX6pcXkBUpPXEXuVtkYpEYqGPQChVrf5IiQMmXWUlBOxDBMkfMBYvqcMPKbpQB
         pdQiOpdhpIAFPldpB3Z3JgDPbDgQmTF7dwKYgNLNQ7JAvhA0YEDOOZhQ2LVlGYlWSzYd
         9zqyXfRpNcbuFlK1swTqu4fEI+7bxS8cMlbzpgSc4GlNum4W9eE5ax07m1KfMTPyTWqU
         GDDWirCLDkw7uje8ljPvUlmTbYeogo8w0wLbSYCi4u3tFW+DEbFj65aZtpaoqudueRJ2
         5ftQ==
X-Gm-Message-State: AOJu0Ywz5ysKpjZW5/e14XPt97EUSzt2Kpcot73m08miVTGYaOonE9id
	Man/HzDkPNf+ASKxJ/u2oEbVuQ==
X-Google-Smtp-Source: AGHT+IHs6WiXcA/juYG/iLEiP8ou4eb7inN/XUyyyKaBZRpQm/jMfrvGH7BD8NMoU7Rbym5ZM3OM/g==
X-Received: by 2002:a17:906:113:b0:99d:dc0b:a898 with SMTP id 19-20020a170906011300b0099ddc0ba898mr870453eje.69.1692428992020;
        Sat, 19 Aug 2023 00:09:52 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id sa17-20020a170906edb100b00997d76981e0sm2182783ejb.208.2023.08.19.00.09.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 19 Aug 2023 00:09:51 -0700 (PDT)
Message-ID: <b5d56d90-dc94-c29b-6429-281622e4c559@linaro.org>
Date: Sat, 19 Aug 2023 09:09:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 1/8] dt-bindings: usb: samsung,exynos-dwc3: Add Exynos850
 support
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
 <20230819031731.22618-2-semen.protsenko@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230819031731.22618-2-semen.protsenko@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230819_000955_809351_9FBA232D 
X-CRM114-Status: UNSURE (   9.65  )
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
> Exynos850 has dwc3 compatible USB controller, so it can reuse existing
> dwc3 glue layer. Document a new compatible for Exynos850 and its clocks.
> 
> Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
> ---
>  .../bindings/usb/samsung,exynos-dwc3.yaml        | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
