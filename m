Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F045C4345F
	for <linux-phy@archiver.kernel.org>; Wed,  1 May 2024 23:12:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gg0ZOusHu3yfM7z0kiyoY11vu0wIoG6nf+GH4RkJeuA=; b=bWsah3anZXZJqz
	Dt+Cvx8A03YyptP8xBhQ9vBtOh4USs2NK9erKFLDj6XuE/NWa+7antsvf+myfqS+1JKr/gdQRXYu3
	FkDQ2ZkQ/7/i9I9gHIUytphmALMVBrxRK3P+yunj6XRT+9Koxw7U952/2M0w53TFtfykCUj7wHeAd
	zOWMZZMbAqaaUvp7bwNc/E5uhOvq0DMIwel/tcv3kFFu7e0YOuIbQdP6TXiKiRKRP+0y/ofItwimO
	LbtLs+moGo3CWV6P1fqLK9G61Gj+CwyGmqpa9MDsLxBJza1+gA8OW8yZqYuWDVFOeUteAJqnQQAf6
	Ze9oCVxG5ssSePZhFZTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2J7Y-0000000AtFt-36Sc;
	Wed, 01 May 2024 23:12:16 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2J7U-0000000AtEy-3ayL
	for linux-phy@lists.infradead.org;
	Wed, 01 May 2024 23:12:14 +0000
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-a5557e3ebcaso219596266b.1
        for <linux-phy@lists.infradead.org>; Wed, 01 May 2024 16:12:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714605130; x=1715209930; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=zhCvg7KjClQbusFKD8NHC5U/vmYAlsndfakVGGXVNKg=;
        b=X9xJVFAnwALZqNHADekMS3sBnz5Rg7yyXaBiynen7PNm8+bNt7gf82WwcUs3D93ekW
         uHn6axluLAzV3m2ngTwSOTiWF9cp20/+/J5utDRWPVNBDJo5ri1WylvRL6ydKC8vuTtu
         K/UGu3dXQPTSyv++RqQiDuZa0cs1C0YOLgYH0Y8K4PgM6zSe3SZhJoFi6dRPTYsjUjs6
         K++KRFAj26+kRkCHH9ghxziMjzAbk1a9Yjao2KanmyyEUrPhP/TUA/9amikt5ycGl9AH
         I4X+PbILNkuCQp7I+0f3/EV7sojf2ziY+xHRle5fHSvc/uJ/b7lpmr91wODwh91KO1vN
         bVtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714605130; x=1715209930;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zhCvg7KjClQbusFKD8NHC5U/vmYAlsndfakVGGXVNKg=;
        b=v1+jq0i387Di5EpTEg7S8XMJfEvCijSSzlvKmI4wySwcmvSGArQ0zkoz5v6r5zURJV
         TOPeRs8FFsLIVdu51Cq1LoT5BdEQNd8Mu+5T9cqyRE0hCM5bIFylG+mvzBgUFvTqapdi
         2L3boQTpqW4rtplXY5C0qwX/0MO13JRrHCDbecVTy6cYLBdzrFsL1+cL7K/x0uR3oNpY
         Cb1wDQn+4d9Ld2gk9Peq+U1NCQ7GXITDBOZY97FsfIAh4OGtLhooRb9mpZ7PhWyR2FAL
         qu3mSERBh7STzm1xtAZtOKwxt/m+hnXZ3yERjPh2XNn4uemKpFE7bysNedG6mWf2pPxV
         6+8Q==
X-Forwarded-Encrypted: i=1; AJvYcCVdI01DqvOYLqknEeGti+r1cpAfercOfTCKm3b41mbG9Q1+CZYhWlLR1bn2N7yGYFrvQLaUy7hd+Xvi3RJLK8p1XgJEO9P5RY7RLJj6XA==
X-Gm-Message-State: AOJu0YyfCwWQicSzQ21MrBW1Kz3ocZdxP3czA8n3OrdcCW+VaRkp3pdM
	3IpxOYbWXzaxIoKnyQRa18iD+g5Q0MJjLjCeFEP5oYtvGd89c/kQbZuKrtsBKyU=
X-Google-Smtp-Source: AGHT+IEd6YA08JvM1N+higQIn7mDVjGj2X7nOzNIL/Ck0S0TzZ3u3IeS6KS6XKPLpm1T/IcRgAoaCw==
X-Received: by 2002:a17:906:5919:b0:a51:e188:bced with SMTP id h25-20020a170906591900b00a51e188bcedmr605346ejq.37.1714605130596;
        Wed, 01 May 2024 16:12:10 -0700 (PDT)
Received: from [192.168.114.15] (078088045141.garwolin.vectranet.pl. [78.88.45.141])
        by smtp.gmail.com with ESMTPSA id f24-20020a170906c09800b00a522f867697sm16765743ejz.132.2024.05.01.16.12.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 May 2024 16:12:10 -0700 (PDT)
Message-ID: <88aad6ee-703c-4e86-ae46-96b909503cdf@linaro.org>
Date: Thu, 2 May 2024 01:12:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 13/13] arm64: dts: qcom: msm8996-xiaomi-common: drop
 excton from the USB PHY
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>,
 Wesley Cheng <quic_wcheng@quicinc.com>, cros-qcom-dts-watchers@chromium.org,
 Bjorn Andersson <andersson@kernel.org>, David Wronek
 <davidwronek@gmail.com>, Andy Gross <andy.gross@linaro.org>,
 Evan Green <evgreen@chromium.org>, Douglas Anderson <dianders@chromium.org>,
 Iskren Chernev <me@iskren.info>, Luca Weiss <luca.weiss@fairphone.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Yassine Oudjana <y.oudjana@protonmail.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>
References: <20240501-qcom-phy-fixes-v1-0-f1fd15c33fb3@linaro.org>
 <20240501-qcom-phy-fixes-v1-13-f1fd15c33fb3@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20240501-qcom-phy-fixes-v1-13-f1fd15c33fb3@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240501_161212_960729_39869A5E 
X-CRM114-Status: UNSURE (   7.58  )
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

On 1.05.2024 6:19 PM, Dmitry Baryshkov wrote:
> The USB PHYs don't use extcon connectors, drop the extcon property from
> the hsusb_phy1 node.

These don't, some do (like the one on 8916(

> 
> Fixes: 46680fe9ba61 ("arm64: dts: qcom: msm8996: Add support for the Xiaomi MSM8996 platform")
> Cc: Yassine Oudjana <y.oudjana@protonmail.com>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
