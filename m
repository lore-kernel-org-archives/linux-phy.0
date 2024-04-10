Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8AE55CD128A
	for <linux-phy@archiver.kernel.org>; Wed, 10 Apr 2024 17:57:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QzD4qaRKGPjzIuLR2XxOnMOAsnF+K48GTB125kel3Y8=; b=mFoIsavb5M7PxV
	139XFzbpRHuOoIS3hZLEJ9K51ANVBM3rkMQ/JlfYmleYd9FfGcZTIHKGjeTqwcsP5/yAQX4UOADah
	QoCbqOGK+mmXUjWOtbDi6VuYjHIQ3qwQyRMTe4D2g0H6QKXmv6iGEsLv+0I8B9sxA8BrcRp50RRGb
	73CbQQi90Mo5/TJPXCRJGA9FSFrJz/an03H2VSwhK086LziBK5FR1u5dQ94pZpWAI2tXZmtNpV/2K
	QK8dPSvZqz1bs1D1JXkNx6rFX44c3/A0YFMxMieBJLiRgmLohuVLZnwwixm05ZO6C3lN//y/jAsBs
	a5uY1qvblgZorWS2kk6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rucCW-00000008Nmt-0okw;
	Wed, 10 Apr 2024 17:57:36 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rucCS-00000008Nlr-3m2y
	for linux-phy@lists.infradead.org;
	Wed, 10 Apr 2024 17:57:34 +0000
Received: by mail-lj1-x234.google.com with SMTP id 38308e7fff4ca-2d48d75ab70so95096271fa.0
        for <linux-phy@lists.infradead.org>; Wed, 10 Apr 2024 10:57:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712771849; x=1713376649; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Keh+sIQeRPab3t60QMgWltAOm3qWZpzbMlaDmGjP9v4=;
        b=k3nvTxl3qPoGloZZRwguxfuwOQLxfPTG+yPKXLvZdMEai1M/OTWqBdWNr3MbLmSuAT
         dovUt9lQYqqLasJRbVwqRVll55j1YGuhreywu9xGXk6ou5E5HMu+ET56xzuvn2T7EKYY
         cERtWgZWb8wDD3WdaOQeNayb3bW3a0IKE/0ZHKu87p7IVStLJcwlSV//wqJkzAwW6N2c
         MydHCpzqKktjgvyEWQ4Z6X976ZIhkGCK4WmQAO7BUPOpsT06pmqEy50jRqRN07M+9Ox8
         KjRoPxwefvhkrLeNx25TiXCqTRCW5tIuT04CQGqJJVP5O5r2h2L4OAhtZYQoBxZPNBDq
         JbBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712771849; x=1713376649;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Keh+sIQeRPab3t60QMgWltAOm3qWZpzbMlaDmGjP9v4=;
        b=MV6c+02sSDC6Y3aPajTAV/D0q2Dd8iO7KWOg+jlUuj/+fx3osp+fkooAAVfH1AptVD
         +nkw7J+5WjrshwErEdnjv6N8HzyEQj+h34tXZXFuM+Izw5R9O9CddaMW6JGBGVPQxKul
         AhJ53rIMq12A0FVy9/QZnQqRufmDGA2JE5pKE93/CViSjNSBOP2pNxTjO4D7BZDUJIoL
         RhzB8d2mmR9qwBebE1njUL8cF79nuhl+WGxylbaL67ukAx06ZXS6q4F+2RjN2edP2zFj
         Y9ib9bRGZeJDMRdWdKljld/0+kA9HC7JycA2NYaQwvrDZW6qrWdFoWLYVujfM5k87cty
         9AXg==
X-Forwarded-Encrypted: i=1; AJvYcCU/Lsr+h9XorLwNXMyRlSgoFQ+E0KS4NjEgziyc+KCf3yRmaVF8JHkwlGNbHNnROlRw6Qi9OwOrxwMqyEsqaKnEMNrlaKZp5ee/Ha3+SQ==
X-Gm-Message-State: AOJu0YxjuiS0k8d/+LST1YcwE2zCY0JXo28m1NILLB3cm80kvc/MkO/b
	IOvGvg1JZ0GToWJIZJ/CQobuXo8YIpK4tNl/fqmKypkssHsMPyDuwlMU1Hvsn4nXuOxKntSb5ZV
	ERh4=
X-Google-Smtp-Source: AGHT+IE5JGH4lSYVlSEHhQH6EV1huMoARnine21xFIyBlZYyXopqr5UbT3v5//1+D8M8VOOpQl4S9Q==
X-Received: by 2002:ac2:48a2:0:b0:516:d250:86bd with SMTP id u2-20020ac248a2000000b00516d25086bdmr1962949lfg.44.1712771848929;
        Wed, 10 Apr 2024 10:57:28 -0700 (PDT)
Received: from [172.30.205.26] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id t20-20020a056512209400b00516be9fa424sm1883743lfr.254.2024.04.10.10.57.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Apr 2024 10:57:28 -0700 (PDT)
Message-ID: <fa826aed-579a-4432-a1eb-053a3b7f40c9@linaro.org>
Date: Wed, 10 Apr 2024 19:57:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: qcom: qmp-ufs: update SM8650 tables for Gear 4 & 5
To: Neil Armstrong <neil.armstrong@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20240410-topic-sm8650-upstream-ufs-g5-v1-1-5527c44b37e6@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240410-topic-sm8650-upstream-ufs-g5-v1-1-5527c44b37e6@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240410_105733_316204_50EBEB35 
X-CRM114-Status: UNSURE (   6.25  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org



On 4/10/24 17:39, Neil Armstrong wrote:
> Update the SM8650 UFS PHY init tables to support Gear 4 and Gear 5
> using the overlays setup (only supported Gear 5 before), and sync
> back with the latest Qualcomm recommended values.
> 
> The new recommended values allow a solid 50% bump in sequential
> read/write benchmarks on the SM8650 QRD & HDK reference boards.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---

I'm gonna trust you on copypasting these numbers properly as I
have no sources.. but that 50% speedup does look very nice!

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
