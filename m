Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8489BEE4981
	for <linux-phy@archiver.kernel.org>; Sat, 19 Aug 2023 07:11:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ejCV26K2fgMeNirTJ5WnEM/UacTddL8IzbDqeNz8HOU=; b=3z2Q4v3wRB2OEF
	PCJjbivKMDefvYzIo8XeF7VI+oteLqyInN/AYolZuF8dBjYtj0NvalPLWO1E6elvRdX4djs/xcH9l
	AiTdf6VQLFL+ZYKgemMHOqxUCDJGIyvmA22gGavP+vDRZhyn4sZz9p3JpAgYrR+gP/I3aipuvxrMO
	pcGYe/GL8zQ/z12MyvnBW9amaynq9QYU0q0muafVjK68Dni6ZLlyx7v3PU8gL38rTSZKQ2MKk7gyR
	C6ZHGaLe2sX4LyaIzPAgscDkAdDOVIStdpzI/rZmF6c9GNuEjSfu0YSMXUh54qoNFPrv7zV47fSmT
	+JFNnuUPs+RrLKcrG/Sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qXG78-00AWUu-0M;
	Sat, 19 Aug 2023 07:11:14 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qXG76-00AWUL-16
	for linux-phy@lists.infradead.org;
	Sat, 19 Aug 2023 07:11:13 +0000
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-99bdcade7fbso201573466b.1
        for <linux-phy@lists.infradead.org>; Sat, 19 Aug 2023 00:11:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692429070; x=1693033870;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gbh+zj6TUQz7WB8MTKvhqMntfC0KIpevkiEL4WE+7h8=;
        b=spqFUb43eAt5lhdQMZj8mCAs0BwOlGvwjs+RLniY/rjuAoQnVoxsrf8xwRl8StWQUX
         qqrc62LMvqd8pw5o6XBemv4H/Fxl2ABqGBgj/XTWZeZGN+FyRHcoXDZ6Yvb8SW6Fjzj0
         DgWH4BV2el3S6MPwP7Vq5vpdhmSlXgKqHT6Tujj8r8me6nOdXuhDc+17FtMOhYL9JHcx
         qxLCqvaSiZgJoMyKDjhlibeG3/Jp76/VdzD70h37b5L3uaOzzDWeRcfOGSihM2tX9U1M
         Efpe2zcfxC2ZmHxqykJDwqHb0WWtNKH3ryUI3BwtkhLNymOmdUDOwhlLCMPwayMWCTb0
         Q2HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692429070; x=1693033870;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gbh+zj6TUQz7WB8MTKvhqMntfC0KIpevkiEL4WE+7h8=;
        b=fETLwVINKciAJjzniU4RXrImfmxlFZ+LxgC48dTogDGdfJsIgWqcM9PG9U/QUfq/n/
         kdO/Lt0+5B1cdW/PUjnOyCzoBqlQsOdej+UIhvd4NrBg6uPyx2yuFlXNuTpbZSM0r0Dy
         oqykSI5axBpD1Ad8NjHiBsXB7nz7uZ/sAg7xDHBPPSN5u4ETlXPG+BVcDW5GdT4GcR3V
         3fNZ/A6s4VfHBGl5DQ9iMEWfdDWwGliC9FzS9rhJNaMXhEBwuXKK6DtpgP52DggMG2wv
         HgbpRpHjb2/GSxc+L/5gh8Ojl/+tIgXdIshT7CkBJeTjIJ1FofrSifi7jfASFO5bzxUh
         B3oA==
X-Gm-Message-State: AOJu0YykELDJyxB4R9xIqa3ShqEMz7f3dz0Wub8E1Jd9fOcuza9iy8ud
	/dB89iAEijtjTDWVpPCk866bJw==
X-Google-Smtp-Source: AGHT+IGkN3LlsbRazKDBXLBfvXRO5WxCook3IWgnrdlgh47mG8ypb8zcrg/RgcRHXhCd60RFy311Kw==
X-Received: by 2002:a17:906:4d2:b0:988:8be0:3077 with SMTP id g18-20020a17090604d200b009888be03077mr770298eja.31.1692429070122;
        Sat, 19 Aug 2023 00:11:10 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id fy3-20020a170906b7c300b009894b476310sm2158982ejb.163.2023.08.19.00.11.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 19 Aug 2023 00:11:09 -0700 (PDT)
Message-ID: <517510a4-ab77-c34e-0fcb-33761786936f@linaro.org>
Date: Sat, 19 Aug 2023 09:11:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 2/8] dt-bindings: phy: samsung,usb3-drd-phy: Add Exynos850
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
 <20230819031731.22618-3-semen.protsenko@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230819031731.22618-3-semen.protsenko@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230819_001112_383445_F0585644 
X-CRM114-Status: GOOD (  10.28  )
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
> Document Exynos850 compatible. USB 2.0 DRD PHY on Exynos850 has two
> clocks (ref and phy), which is already described in bindings.
> 
> Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
> ---
>  Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml | 1 +
>  1 file changed, 1 insertion(+)

You should probably split the patchset between separate subsystems, so
Greg and Vinod can easily pick up their parts.


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
