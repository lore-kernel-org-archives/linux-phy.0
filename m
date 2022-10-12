Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2298DC433FE
	for <linux-phy@archiver.kernel.org>; Wed, 12 Oct 2022 13:12:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RLyLbF3KObUGGLKbdDMN5Ao9TELjvfS8ueGGMM+eaCY=; b=m5GTZ0I5o2gg9F
	PsyW5wXFnuMNtHmhS8sWRULZ2wtVRm7bRJ2D2y10r7grtVnVourrQTkDtVbzfdWuPBTO6jiS7j2sn
	SXL+eXo8GTqPCAVrxhcHbwp3W6lHYJVrA/eqdC4BnrEfN96ZA58pPKcIrwpfqurXdrKNDw5GXfF4L
	QK0NNHw7eWUlsGUWkM1tk7pYfWby0qsl6Fiqpbqy51QcV7z2WDJLaXqAfhicPLlg9Wcv/tamVBbRA
	WGm/QCP/GREt3nxNUFFGpgaKco7PglU1PDL0LWVbMC6UCeCQU3u8+pUlQ5+40BxwcvzABBWxwU8R+
	1QmjkP3n7/vsw17q8vCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oibWu-00863w-Cr; Wed, 12 Oct 2022 13:12:12 +0000
Received: from mail-qt1-x833.google.com ([2607:f8b0:4864:20::833])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oibWa-0085jE-BT
	for linux-phy@lists.infradead.org; Wed, 12 Oct 2022 13:11:56 +0000
Received: by mail-qt1-x833.google.com with SMTP id bb5so4758969qtb.11
        for <linux-phy@lists.infradead.org>; Wed, 12 Oct 2022 06:11:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=j9+Qzqxt7KgFYl9VgYt697oSnxHcZquHPbAgGS8SmaM=;
        b=i5KopcYd0S5y0FTk8nOqwzf8ktlLqOldknYkrP3HNP4L0gxn1qLfp6zc1VSeil/a4c
         Dj0ATrsfm2XpDxT4RPnP6LLHYrTKzEFncU4SilZIDae2qND+yB5sr1H6kAqJk82ULgD7
         h/ZBZChFmXrw8+k5PsL9z2X+3tA+9BBa1+Nc0xhhqYaKhEOooV4SLrUtEwL6i1XFt5fD
         Cj2TPfB3FhW6GNAL96hHNz8TnskC+0EZg49cZmc1+TJcMX2Nu28bCfC7AgpoCbRp6AiU
         WlAgrkbuIfVXvZZp1CcJQcvRy8rlxZnGXkvep55efNGEmTX4K9VAcac+tPLjiFuZPVLB
         7gNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=j9+Qzqxt7KgFYl9VgYt697oSnxHcZquHPbAgGS8SmaM=;
        b=EhFHzk54bTAS2/f7B8b7vVbLHcqeQbpUdNe4fAiUxFLCB0fDbs9UuK+Wie0CgxV3RZ
         s2yaTTorXKR72xpwhRqZa5z5814NpkIUaPx9/PzLj9gGgAZ+7fs4yGbQeR3sV1kUVuY7
         eT8QKf1Srti5OEwAHqOWEixEbB9jDlfn3oMCQY7hyuuXMKk39KcFi8IxcmquLbZolbrb
         hqVz9QYDWWLKRk1HgdsfZCcO7QNV3qrbi2yE6H393Nw8FucyDBHlTvgoLI96ik9OpXw5
         MpWd02JKV2L/C3C5CKy4X7Yo0pDk3Hd/aQwYm3lz7DY9HPw9PmxuStqxhQFHTti+dL71
         Y+tg==
X-Gm-Message-State: ACrzQf1pYh/gRojmZWUOj/Xd8+y6LMDHpJHYz8IIu1xHBxEdsDNFOFHW
	i17sZYlJNlbsABBHxirUbobkyg==
X-Google-Smtp-Source: AMsMyM4DfJC9ae7XyPW6fznrM10FQvK0VWx3DRthKZeCyYFIdrTbENb97n54jeRF57xiaUxKMbK7vw==
X-Received: by 2002:a05:622a:3ce:b0:39c:c112:3c03 with SMTP id k14-20020a05622a03ce00b0039cc1123c03mr1737435qtx.575.1665580311970;
        Wed, 12 Oct 2022 06:11:51 -0700 (PDT)
Received: from [192.168.1.57] (cpe-72-225-192-120.nyc.res.rr.com. [72.225.192.120])
        by smtp.gmail.com with ESMTPSA id 126-20020a370684000000b006ec5238eb97sm11062076qkg.83.2022.10.12.06.11.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Oct 2022 06:11:51 -0700 (PDT)
Message-ID: <d483a82a-851c-6907-995d-a59638854fe7@linaro.org>
Date: Wed, 12 Oct 2022 09:11:49 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Subject: Re: [PATCH v2 07/10] ARM: suniv: f1c100s: enable USB on Lichee Pi
 Nano
Content-Language: en-US
To: Icenowy Zheng <uwu@icenowy.me>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andre Przywara <andre.przywara@arm.com>
Cc: soc@kernel.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org
References: <20221012055602.1544944-1-uwu@icenowy.me>
 <20221012055602.1544944-8-uwu@icenowy.me>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221012055602.1544944-8-uwu@icenowy.me>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221012_061152_461397_B797820C 
X-CRM114-Status: GOOD (  11.05  )
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

On 12/10/2022 01:55, Icenowy Zheng wrote:
> Lichee Pi Nano has a Micro-USB connector, with its D+, D- pins connected
> to the USB pins of the SoC and ID pin connected to PE2 GPIO.
> 
> Enable the USB functionality.

Use subject prefixes matching the subsystem (git log --oneline -- ...).

This is a DTS change.

> 
> Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
> ---
> No changes since v1.
> 
>  .../arm/boot/dts/suniv-f1c100s-licheepi-nano.dts | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
