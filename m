Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 665BAC4706C
	for <linux-phy@archiver.kernel.org>; Sat, 13 Jan 2024 10:46:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8PfZvMaa1C9c6yXv/LDlQLBlQ8CtZ7IyTbCwvFOdxMc=; b=VoRObcyPP0KI90
	0ONDFnzLRlItPArAP3OBLhcQT4KKDDJTl6DdOj0ZduFYOK1uTw6mj8IIQ3eflcn9IFAf33hDXB4DI
	0LtxTZBWQNUiQ+YILY8sTWqtyJg5qI9+/8Et2qhyqQq+ej/kGwUcHdp3KXj+/W2j6afzmtmtSsbMR
	rNxI6R3afV60LmlK+gWzBY3WVIchtnVq/eeaJF8kqq1n1IFIdIJwWLhtvjJDUEmDorW4O2x1X/2/q
	sAqheDt/0yIWnfenzqfEq+ZcSYH4Tx9hf71brTTLbBIVLDwDGzTsRRtiTFBJfSi5BJ8H7KBzVPlrU
	lj/ULwozO5HR4Vu72M5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rObWy-004vyy-08;
	Sat, 13 Jan 2024 10:46:24 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rObWv-004vya-1F
	for linux-phy@lists.infradead.org;
	Sat, 13 Jan 2024 10:46:22 +0000
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-558b5f4cf29so2257630a12.3
        for <linux-phy@lists.infradead.org>; Sat, 13 Jan 2024 02:46:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705142776; x=1705747576; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=e+y1u5WjJiqNbgaxV2wvxVE6oW9dtVZIdCc4TInVijc=;
        b=y+rIYtKOxCq9anZaafX+898i3Rf7l2MrKKNdLWh2I0ExLCohVt53p3Y6LG0NoDn/dy
         Ly2/FvESlNO/R3PZOOAJqezCGTqNYnMy7cCGY5kQWNGF0kdZHDmbIEQhTquUQK28/RuP
         50dtK/plq69X1kdF6UKh9zlfZ+yVmVLgC1NBo9MVa+4CovhFhLqbrVSm3DNCNj5HqYWx
         aClFh6izTpChEBqCbmLfYhWncQyKUbhSYE0jPYwxkmpKlFr6aP72UqC4mlj2tZe6qwPk
         YvRJhnlJSOwWzvm9GRnBs/jxGnX3oElzbpNu2scj3HA0ezBBZnQEMashfg4446F+4oz7
         4j1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705142776; x=1705747576;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=e+y1u5WjJiqNbgaxV2wvxVE6oW9dtVZIdCc4TInVijc=;
        b=BZ5+VDjJNa6Iern+uFsZE4i87sXu92D6ap9ZlU1nHw3oVFM0AUc/hgzhOx5ZiMJ3JG
         adxgmepBJJMnhCu+uf3zHOZmbK8c1pgYCrADTMh0d3iL2q68yi+/KrPtZR659mpeh2Wv
         Iegm9WD7RNPw8ITF4g5dytWRzuIuWnrGo/hID+wIt7xcr0p/FWvMOC5LgtqCmedCvOhf
         O8oLhg8oi6DZrKr4QRc9mjn3AglF0uyjEf8lj1D8Fpha3TlFFXZr6kyRPb2WSkU23Zyf
         R7raAftEAuIW2xRZV4WMvHoi8nZwWYYivtS4wfjANuJEm77dwinK9LE6bvfHKgMvMzno
         D8/A==
X-Gm-Message-State: AOJu0YweEY3VG6VDGE/MwZbPOCjURUhWIkKuNWZnzUzalFDihdfN4kDE
	g4vYB+1GfOSvPpS7AFItg2QNGvU48aWdbg==
X-Google-Smtp-Source: AGHT+IGUW+ZScGiUzdXqg3AxMP54fcI8REq6Lrh8isyAdqdNmgkdJ23mPgVpypNeCVNtKqmc8PQ+HA==
X-Received: by 2002:a17:906:a102:b0:a2b:2e02:583d with SMTP id t2-20020a170906a10200b00a2b2e02583dmr1133717ejy.113.1705142775729;
        Sat, 13 Jan 2024 02:46:15 -0800 (PST)
Received: from [192.168.174.25] (178235179017.dynamic-4-waw-k-1-3-0.vectranet.pl. [178.235.179.17])
        by smtp.gmail.com with ESMTPSA id q21-20020a1709066b1500b00a2990007447sm2733330ejr.122.2024.01.13.02.46.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 13 Jan 2024 02:46:15 -0800 (PST)
Message-ID: <516eda05-3dd5-48aa-89af-e04032a908c3@linaro.org>
Date: Sat, 13 Jan 2024 11:46:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 08/13] phy: qcom: qmp-usb: drop dual-lane handling
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Guenter Roeck <linux@roeck-us.net>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-phy@lists.infradead.org
References: <20240113-pmi632-typec-v1-0-de7dfd459353@linaro.org>
 <20240113-pmi632-typec-v1-8-de7dfd459353@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20240113-pmi632-typec-v1-8-de7dfd459353@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240113_024621_468014_E78B6C57 
X-CRM114-Status: GOOD (  11.19  )
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

On 13.01.2024 06:42, Dmitry Baryshkov wrote:
> Now as all dual-lane PHYs have been migrated to a new driver, drop
> support for dual lanes configuration. If the PHY uses two lanes for USB,
> it is symthom that it should use either a combo USB+DP or a USB-C PHY
> driver.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

[...]

> -	if (cfg->lanes >= 2) {
> -		qmp->tx2 = devm_of_iomap(dev, np, 3, NULL);
> -		if (IS_ERR(qmp->tx2))
> -			return PTR_ERR(qmp->tx2);
> -
> -		qmp->rx2 = devm_of_iomap(dev, np, 4, NULL);
> -		if (IS_ERR(qmp->rx2))
> -			return PTR_ERR(qmp->rx2);
> -
> -		qmp->pcs_misc = devm_of_iomap(dev, np, 5, NULL);
> -	} else {
> -		qmp->pcs_misc = devm_of_iomap(dev, np, 3, NULL);
> -	}
> +	qmp->pcs_misc = devm_of_iomap(dev, np, 3, NULL);
>  
>  	if (IS_ERR(qmp->pcs_misc)) {
Since you may need a new revision, you can remove the neline
above to get a nice

ret = ...
if (ret)
	...

equivalent while at it

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
