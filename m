Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A513C77B73
	for <linux-phy@archiver.kernel.org>; Wed, 31 May 2023 06:57:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZubBFpT4/1qU1EHybEHJX2IgDtbHJ4bqewilODf+mpo=; b=ALHB1BHd5JIryX
	uGE1tGDLci6DbI281KhWV5R2MQP8VnKqkD0BeacBvV+iP+aWZUVZdk1UqSz3R98Gh88C5ggEHlMj6
	VAiTmkGdlxB2xjkBT1BZ92i9sBcxLOH2XmBMg3JKzgRXPWrNMJPiZvy8jilOOm//+9R9io8gdLcwO
	zZ3+OWEsiTeqdqMr3NhYemyY7vdUE00746FTgth7Ud8F2LIiSi+E8UCtbfDOd61qfU395MbwiiTsz
	XqxCgNyJMHDsh1qb8wdSwDEWmEOtq3LpRPOeKKlhDa8a/V0cTDnRIzlFLNhMp9shk42HsMSBMgKj2
	7oc+At9W+Gy+yD7yLCng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4Flr-00GMWC-34;
	Wed, 31 May 2023 06:57:23 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4Flp-00GMUM-0N
	for linux-phy@lists.infradead.org;
	Wed, 31 May 2023 06:57:22 +0000
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-5149390b20aso6793751a12.3
        for <linux-phy@lists.infradead.org>; Tue, 30 May 2023 23:57:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685516232; x=1688108232;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zT4hWvO+05+c9BNBT9jLKJhOVWpxKJ0fJ2bZlxyHp3w=;
        b=fMFgfFRH2oKpRqT2ngwoG7OVNjzftGze+7bCsyKX8BPD9bFqofDMAUVPCoEnQHK7YZ
         P9GIyQhfD38i4+ZCGDARXcEYm6X5cRIC4tL5T+qbNbkgeShDMzkTLWzr9oYDt0+f+JWl
         lHzDF1iYCMCPrdpof6K5qUxlFGUwcFYF/GLZO65/NMu6OKwhNzWz1cd/d8wdE+j3pUOz
         lMePApuIuf6d/zdItcp1XEsmzrxB6T6pgzjGopOR1xlFS+ZkuKGA7bsqaJpY4Q6LL23f
         uvstk79rsZFVpgFpPX5fCbzRB2qe6jaDE4E+ZywGX9/CsaInpvUDHcLgwfmb322vcwZg
         ruCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685516232; x=1688108232;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zT4hWvO+05+c9BNBT9jLKJhOVWpxKJ0fJ2bZlxyHp3w=;
        b=kH9IyCtrZBiiX2iczS2wHFGnn20qk0Hde/UgWnX7pmDBhSqdCFOxhHvFid2aWzrCCE
         FRjh1big4TEz2nMcLZ1EHBc/10auz47rylAI1jIYVGTr07dm5sVp4DVAIkM5BmLQ51YC
         XGfq5YwBlNysNUv8iQ4A0lJYhc2ggST7+1mw/ly/MB3wkaTo5ha9Feb4uX8KcWV3Bj9V
         BgQWoC7EWxkmjlVHxp8mtwqzox1sME+oylTeF/wCwHpMGzYf6plkUNSAubWQYSxB3YwL
         oda5teALkv10vj+DFgwPBw5rDcr6cis9aLJ3r2CiAA4S5OnOtJgGfpS4rdQ6S1R7dr5J
         wMcQ==
X-Gm-Message-State: AC+VfDyF+rsX35L7CZDy8tOA5FbmZDEE26LWw6xBHPXAsoQM+LRbpA4J
	I887ZOwyXGXGTRtVG+wq32ba5A==
X-Google-Smtp-Source: ACHHUZ5x5SACtt0xW0b6cmpAiNLg6lb938Dymx8uZU0YcrSBw25hfhVk5P/RfqzyOE7B6a2bNngPfw==
X-Received: by 2002:aa7:d591:0:b0:514:c43e:3881 with SMTP id r17-20020aa7d591000000b00514c43e3881mr277960edq.35.1685516232672;
        Tue, 30 May 2023 23:57:12 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.199.204])
        by smtp.gmail.com with ESMTPSA id h23-20020aa7c617000000b005147503a238sm5308899edq.17.2023.05.30.23.57.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 May 2023 23:57:12 -0700 (PDT)
Message-ID: <367c3d26-b406-9ddc-e0ca-717994ed1c4a@linaro.org>
Date: Wed, 31 May 2023 08:57:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH 0/7] dt-bindings: restrict node name suffixes
Content-Language: en-US
To: Conor Dooley <conor@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Thierry Reding
 <thierry.reding@gmail.com>, =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?=
 <u.kleine-koenig@pengutronix.de>, Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Mark Brown <broonie@kernel.org>, Dipen Patel <dipenp@nvidia.com>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Guenter Roeck
 <linux@roeck-us.net>, Dilip Kota <eswara.kota@linux.intel.com>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pwm@vger.kernel.org,
 linux-rtc@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-spi@vger.kernel.org, timestamp@lists.linux.dev,
 linux-watchdog@vger.kernel.org, Tony Lindgren <tony@atomide.com>,
 Oleksij Rempel <o.rempel@pengutronix.de>
References: <20230530144851.92059-1-krzysztof.kozlowski@linaro.org>
 <20230530-banister-luxurious-d33a5d289749@spud>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230530-banister-luxurious-d33a5d289749@spud>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230530_235721_168435_B077BA86 
X-CRM114-Status: GOOD (  11.82  )
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

On 30/05/2023 19:11, Conor Dooley wrote:
> On Tue, May 30, 2023 at 04:48:44PM +0200, Krzysztof Kozlowski wrote:
>> Hi,
>>
>> Tree-wide cleanup of DTS node name suffixes "-N", e.g. "pwm-5", so we allow
>> only decimal numbers.  In few cases narrow the pattern to also disallow
>> multiple suffixes, e.g. "pwm-5-5".
> 
> I figure there'll be quite a bit of stuff to fix up afterwards?
> Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

Quick grep shown zero fixes needed.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
