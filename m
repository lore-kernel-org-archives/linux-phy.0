Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A2A7C04FE1
	for <linux-phy@archiver.kernel.org>; Wed, 16 Aug 2023 18:13:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gS0xJaoZAkYeqQSAcHB6EnjYX169vLpulpropIS5ne8=; b=alyhlQFaIe6ddM
	oK3MG7BmZrtBQvKd1+w9Vy7REUG0Ci0M0bMeVCV8G96A124b62jJeLDbLElPBsjNJpmKTM2FaVBYB
	MoaCsgyvUX85bn+IwRE/sLS8hMd2YWeoLuZ75k5Uc8niDq58y7y6Iz7W5x0gjOtu2NSUbUd3ZvQ0a
	2CdPJPBEH1XldqxnZ4pgZ21+/qlwAffFyogumb2Ko6zYdka42Pssxs9yvi3Rhz6GCUFNhwBdfX+iJ
	XgD+Wp1DoYROwkT9xqR86p70O+YyGGESJ/yp04I+5VF3oL96zTp0PzT1PaXqP/mlRwjEIKKRHY8QP
	ET/AMbujWZcEokWF16fQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qWL1V-004lw0-2c;
	Wed, 16 Aug 2023 18:13:37 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qWL1T-004lvM-0Y
	for linux-phy@lists.infradead.org;
	Wed, 16 Aug 2023 18:13:36 +0000
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-4ff9121fd29so1535747e87.3
        for <linux-phy@lists.infradead.org>; Wed, 16 Aug 2023 11:13:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692209611; x=1692814411;
        h=content-transfer-encoding:in-reply-to:autocrypt:references:cc:to
         :from:content-language:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=He2Vi01OM0xQbiWEhMR2AG6yIZ5VOc+VfT4ogc1IVgM=;
        b=EVh0vaKgOHEyEfjyAprJdnGfqqTvFyPOV8d6FyF6+towIuL56SVzHr7V1qi2OKgi9T
         qNe0WSosZF4jA8NZNs52+JeRXOAuUCaiAwmOwFBcblBmHUGlIiVj28N+h8c/N9gMUhN1
         QKjYRiZRw5Le6aPCTOHwSPc1dM5US/BaXovHNsk7nU51CLqariRAF9BddHpofqbkmwOM
         dhYYllNHD0Uxq12exbogcowtm0+ksBaESJlXb7ewo4OG3LJOR1/Pwd24P9+aZ2Fe9sm1
         tx9IBh0WU6BFdqBQ6vSahD6GrVV+UDp85znRHleGACFAe+ByI1zLz4Lr+x2SCDMP3Dzp
         iU3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692209611; x=1692814411;
        h=content-transfer-encoding:in-reply-to:autocrypt:references:cc:to
         :from:content-language:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=He2Vi01OM0xQbiWEhMR2AG6yIZ5VOc+VfT4ogc1IVgM=;
        b=G2Mzre1Qjjjt+vqYwr1JoASl+3QKKu6EkfXsofsgPKRsnEHJpWgqee30sRRvYMbJbi
         FgyfGmQZoi690P63uOrBC781hUjQJ9Q8E71Jafv9ZdKwk2OiEBJQXTDR0LKsDCqV7mqE
         50C1mEJdV+XSBQkXDdi+R1q0HxHjoL4yqlUL8aUUIDP1WgJXehsWdmvsQwDUHzyaMV8L
         UbxzNtkw/6zFMJ5LU9KyHzx3NFp/i38pML9qGTPlJEbY+IQd60JDK13+p9g0eqId52nS
         YH/uzjF/o/rei8j+hFPndwfBVS8vk87z8orKA3+ZUTDy6wF0XL9V298rLzcqBoc1pMR4
         rNmA==
X-Gm-Message-State: AOJu0YwAQm4aPO+xMkbMgtMiTfxwsQCgFvgWTqubeRYzeEXvP9CW9L5I
	vczNk5RuBtx8ZS+0vIymlfqX2A==
X-Google-Smtp-Source: AGHT+IGoQyPdyTc0hbvDhzHWSqUSwWA+hrKfCv4V5ESd6ZBTovqewsPWqC4wFRcMjz11FIE0ydj54Q==
X-Received: by 2002:ac2:4204:0:b0:4fb:7559:aea3 with SMTP id y4-20020ac24204000000b004fb7559aea3mr1866634lfh.39.1692209611440;
        Wed, 16 Aug 2023 11:13:31 -0700 (PDT)
Received: from [192.168.1.101] (abxi8.neoplus.adsl.tpnet.pl. [83.9.2.8])
        by smtp.gmail.com with ESMTPSA id i21-20020a056512007500b004fbc6a8ad08sm3008542lfo.306.2023.08.16.11.13.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Aug 2023 11:13:30 -0700 (PDT)
Message-ID: <538aa051-e263-4ae5-bd32-9e3d106701d8@linaro.org>
Date: Wed, 16 Aug 2023 20:13:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V1 2/2] phy: qcom-qmp-ufs: Add Phy Configuration support
 for SC7280
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
To: Nitin Rawat <quic_nitirawa@quicinc.com>, andersson@kernel.org,
 vkoul@kernel.org, agross@kernel.org, kishon@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, Manish Pandey <quic_mapa@quicinc.com>
References: <20230816154841.2183-1-quic_nitirawa@quicinc.com>
 <20230816154841.2183-3-quic_nitirawa@quicinc.com>
 <cb1df40a-e879-4095-b5e5-f71a46e92120@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <cb1df40a-e879-4095-b5e5-f71a46e92120@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230816_111335_217673_B01992CD 
X-CRM114-Status: UNSURE (   7.20  )
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

On 16.08.2023 20:12, Konrad Dybcio wrote:
> On 16.08.2023 17:48, Nitin Rawat wrote:
>> Add SC7280 specific register layout and table configs.
>>
>> Co-developed-by: Manish Pandey <quic_mapa@quicinc.com>
>> Signed-off-by: Manish Pandey <quic_mapa@quicinc.com>
>> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
>> ---
> Looks very reasonable compared to what I can see downstream.
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
I guess one nit I'd add is that having the compatible list sorted
alphanumerically would be a nice touch

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
