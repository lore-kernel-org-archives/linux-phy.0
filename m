Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B685C02198
	for <linux-phy@archiver.kernel.org>; Wed, 12 Feb 2025 20:30:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VtBSdZT7SWsqyhDdon5RHXqqQtCKQbkEzg4X1qicX4Q=; b=1mZGlPX+W/UOii
	yL27wFLNoSnrgMR2ZGRtbGys33KmCQt0dYPurCSLFnmm7IGeXmCOCVNOlVYR8dJgUFAlWydw/atij
	a+eDaHvF6EgfTSeEztfdjkFfy9Lu6OSB+lWrhUNRIMMTJlrS7HEEkO3OPHLrLOKqmKhwjePjrwc9J
	B/si5adoiFryCCzRUD0UO8TpJpOE97araUDPmYcrFOSVuCbWyXaPUKs/OBOFN2RrtymzZHxZOO5Yl
	l+VL2Ig5SXucYhAKHnA3v4tkKskLcxeudREJcEHu3LpLcMGD54mnaoEm+h3Gr0h6cJlJqS/0DARi+
	rTziCL9oHSBnSH0kXXMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tiJNe-00000008msF-1xWd;
	Wed, 12 Feb 2025 20:30:46 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tiJNb-00000008mrW-1Doi
	for linux-phy@lists.infradead.org;
	Wed, 12 Feb 2025 20:30:44 +0000
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-ab7c3d44ae1so3402966b.2
        for <linux-phy@lists.infradead.org>; Wed, 12 Feb 2025 12:30:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739392242; x=1739997042; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cmRXcdjEFTtwWErLiczOTSh5GDvvFaZtrg8q8bv4gpA=;
        b=GXagO6T4HdbcpJD/rzy0jVWwD77zIB2ZRBr6rtsF5fzaHQ2qsT0OahfvK/qkbzuwNp
         mOccaFEa6krpcUxR6kEyY71s+CX//39nIhB3JRESdeWWn0xAr449xkVVt1Sga7PndDTA
         7v6qUQG34JlZ/BCJ2XBnYXJElTEkpmWH23Yzsy3e7yxfaDGBkX3shonqP3cixf44m4R9
         3tZyjiaSckM66YaeOqL1gipB4vh7wzK77cuoJWlPD0o4J2+jSwUO4asklw/HeSSw7KrO
         ZLYxsIPAZDyJ1SQVUqeoK7Xcn0eqhv5rGsufaIGFAV2jfboMESCg1CwqBie+Oz5BDBTX
         Cqvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739392242; x=1739997042;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cmRXcdjEFTtwWErLiczOTSh5GDvvFaZtrg8q8bv4gpA=;
        b=kPZ6WThQnK4wzmfzAW1NHy2aigmfpY4D6wVtWg79clI4prfD4O75sQVX8n6m2TPkwV
         mz9qFcE29X5cdcNYqxuG9B4hM7B61QKmd6ntUbpsjIV3H2vqJOnNGVvlLoXYDYqMXRQ+
         I9xyN1FUDrxq0E9QRpeckjFU2zVb+SSNThRzZo4OrGzrNXGeMphjYmuytqfWASQBoSxj
         y4uJgnPjJW1ROMP9sg88CphhVw/DTPKBgzelBVDIT3Smlta/lnKqDbrM+92CzSSw2ecl
         Kbw60c6fwKNe2u9MHDJ0sEqJjcXNMGtvpuNq7P7J7d/pAg5pOaq5FEhvXmOE63BSrY4N
         BZnQ==
X-Forwarded-Encrypted: i=1; AJvYcCVT217VEnE60hGLniEr2LA+wfOkTlBZ7ZMK9jENR9X8AWht4Iii5nae1mQOi4iEQBay9/5e04dcKm8=@lists.infradead.org
X-Gm-Message-State: AOJu0YxXthjKUrESTR354WZBvBxpCMH7Sn16NA9enaouUl5E6OTrIZEj
	7Kmou864U8PU+FOwMFTaDUi7Jx1eoNC8Qek5CwYKqnPV+E8SU3Oa/l5B3/D7MVQ=
X-Gm-Gg: ASbGncvYqKQXUPCHdKcXW9huGqhpNRA6wVhO9vHPxQkkinpHmUvEgIKIGBl+rgxPLaC
	+MHjL//4JtdxGUykIwX576DwrMGVlrVskdySR77YdrCslrK5nTtLTUS5A582PoFKTZkyhxdige7
	PYIlnl3Di63dg8xkhGnd/FElkgt0I7FAS2GJEInf92zVfYs4l5pvw8CZU1WMp/05QTpx5eKYEwZ
	msgbclJETSdDDXKj8IRc29nWMFMtg7Ka3WymY+ezkN9hMvay++TcKmCBmxc9oJe2P7V3tGjz+ay
	E6Z6OIYNPUjtuPC6LBLL6I9g+HOGAqkjLIY=
X-Google-Smtp-Source: AGHT+IEy5MNFfUhE4KoXzS+0qnWcf+fR/v9TpWdLTk4yS/53co/Ga9Puko1DFJtx4WWKhW6Sl6TL2w==
X-Received: by 2002:a17:907:da5:b0:ab6:6176:9dff with SMTP id a640c23a62f3a-ab7f31a654amr186338666b.0.1739392241639;
        Wed, 12 Feb 2025 12:30:41 -0800 (PST)
Received: from [192.168.1.20] ([178.197.218.144])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab7dd77c151sm418897366b.57.2025.02.12.12.30.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Feb 2025 12:30:40 -0800 (PST)
Message-ID: <55aed776-ebee-4b0a-a6e0-17732fdd5191@linaro.org>
Date: Wed, 12 Feb 2025 21:30:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: stih407-usb: Use
 syscon_regmap_lookup_by_phandle_args
To: Patrice Chotard <patrice.chotard@foss.st.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20250111185407.183855-1-krzysztof.kozlowski@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20250111185407.183855-1-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250212_123043_342449_D8B350D1 
X-CRM114-Status: GOOD (  11.10  )
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

On 11/01/2025 19:54, Krzysztof Kozlowski wrote:
> Use syscon_regmap_lookup_by_phandle_args() which is a wrapper over
> syscon_regmap_lookup_by_phandle() combined with getting the syscon
> argument.  Except simpler code this annotates within one line that given
> phandle has arguments, so grepping for code would be easier.
> 
> There is also no real benefit in printing errors on missing syscon
> argument, because this is done just too late: runtime check on
> static/build-time data.  Dtschema and Devicetree bindings offer the
> static/build-time check for this already.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  drivers/phy/st/phy-stih407-usb.c | 24 +++++++-----------------
>  1 file changed, 7 insertions(+), 17 deletions(-)

Vinod, was this patch lost?

There is review and patch should still apply. Let me know if you need
resend.

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
