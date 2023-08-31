Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9DBDFC83F10
	for <linux-phy@archiver.kernel.org>; Thu, 31 Aug 2023 15:11:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FPTkqe5sS3XsvNYZ8ycD+UE6TKOQ/i7yAtcbEV5OHI4=; b=cCyBSbZlm1uB+L
	S5aV7i7EghruxQcNEnhMewjXsIFVBHTvE9ZXd6NDSfTicIhzoHIb5Bf3zPRR4rxtePWr4mx7ilYgR
	Bm2Nu6/vi+Q25I6c93F4WGSoIpjZRckPyFjAejN2thiNEI2flQiiupo/FE+wu7mo1pQpGG/cxwN6d
	yQaOBM8N5WXmCbKoEdEjAnYXGWOgF3qTi2NWMBA4o+Rof9Og1hObSjYjCIfUz9gfu2dodSqpiFcLd
	QdVUiWI2USz8uZsR/zc7fAnlyOoytX8wF6mF9Tkjen2RQV7V7v/44a1uA+sO3J+nexGNcOGGJUB4P
	EeGJOaevlBYG8g/uBVbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qbjKI-00FTu2-0D;
	Thu, 31 Aug 2023 15:11:18 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qbjKC-00FTtd-1x
	for linux-phy@lists.infradead.org;
	Thu, 31 Aug 2023 15:11:14 +0000
Received: by mail-lj1-x229.google.com with SMTP id 38308e7fff4ca-2bd0bc8b429so17810471fa.2
        for <linux-phy@lists.infradead.org>; Thu, 31 Aug 2023 08:11:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693494668; x=1694099468; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OOFcgWJvykU3ufqPjMeqWWJXmE/XqPoeHSC5WspwBo8=;
        b=zCY2wWvyUCLFBDf6lvFaLmeE+KoYHOShqrYviVOJPo/0JwOBQEW/a6si8ZyoxaB4Jm
         ZiWiap3y22k5Pp/PlcgAAa8IUUCt5EXqB1ZyZwsOWDjbm2i6hGMn0HDxSIIrSvX34do4
         zTwcHrRro9l2yUecReoJ3nNlRiySgpBKYFq40PAI/74q3vUqwLnQ5nae7OpmZbIMtQfl
         2uuGmQ0P48blEo4jXVIazxhtDW9BTIPu0NX4QP1nNqztNtPIA+Z+KAaS1kqpYbtjSBQ8
         idoX08L+bP2CQQGkssBx1mMuYfaXd3Em2x+Jdf2IgpvEK7fsoej5wXQPVlQSzMn3x7Dv
         stdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693494668; x=1694099468;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OOFcgWJvykU3ufqPjMeqWWJXmE/XqPoeHSC5WspwBo8=;
        b=i68uvwB27ijOhBYp8bVATxlNBrRLkFgoJehD3DnXpmFeAbk3E6V/5K/fEWYuVzeutS
         +8gh7torPCShlyVUu/OkLwv1GKEBOL0qfv1M1q3Yx3KVKjeJMbeeWe4/inKrSJz6Dequ
         kktrjnnLAyC7JGVsnfFmqKtl8V1sTwUTqVgiixkwRjgEQQHyPhSC1Ofkm6Mk0tsTDSEz
         4SdzLKFcka011wBoTJYqVs8xe+1wKWoxLMpwxrI1/cO5I2vviyzJkPRXQDp54uM/CbkG
         xVxlsSjLXCCvzDT7cY2SJfucdkYgtMSOKYAvpYIxxko7o5QNcPagG2ux85BicLdCSz0f
         28OA==
X-Gm-Message-State: AOJu0YwJ4AyGc51CHrTbuBKtzNNmOTQNCmrrA0w1eXA1z+mowWRhiWr9
	NS5OLyTqZqd9MutziOEwAH5vJQ==
X-Google-Smtp-Source: AGHT+IG3/w4gj2xbUPTCxyRSzFHoeJLeFZiW2uiiFnMe/1mHL0wORIqiK41cZCBiiOqL4QB/7ON/5A==
X-Received: by 2002:a2e:3515:0:b0:2b9:f2e8:363 with SMTP id z21-20020a2e3515000000b002b9f2e80363mr4195887ljz.51.1693494667500;
        Thu, 31 Aug 2023 08:11:07 -0700 (PDT)
Received: from [192.168.1.101] (abxh58.neoplus.adsl.tpnet.pl. [83.9.1.58])
        by smtp.gmail.com with ESMTPSA id r11-20020a2eb60b000000b002b9cc2f5c39sm356202ljn.37.2023.08.31.08.11.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Aug 2023 08:11:07 -0700 (PDT)
Message-ID: <4c6877c9-97ad-4092-86a3-f9b314f131ef@linaro.org>
Date: Thu, 31 Aug 2023 17:11:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] phy: qualcomm: phy-qcom-eusb2-repeater: Zero out
 untouched tuning regs
Content-Language: en-US
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230830-topic-eusb2_override-v1-0-ab23825385a8@linaro.org>
 <20230830-topic-eusb2_override-v1-3-ab23825385a8@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20230830-topic-eusb2_override-v1-3-ab23825385a8@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230831_081112_665755_5A434AD1 
X-CRM114-Status: UNSURE (   5.07  )
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

On 30.08.2023 04:40, Konrad Dybcio wrote:
> The vendor kernel zeroes out all tuning data outside the init sequence
> as part of initialization. Follow suit to avoid UB.
This patch doesn't do what it says. It passes 0x0 as val and mask
to regmap_update_bits resulting in a NOP, still..

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
