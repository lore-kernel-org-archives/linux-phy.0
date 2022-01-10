Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC85FC43217
	for <linux-phy@archiver.kernel.org>; Mon, 10 Jan 2022 09:36:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xDpgUmJhUvpmGHyFLtmwbOHguhclddCgLc4QK9HHH/A=; b=UeibrXU0v4PRUNpEyoteYoTnVT
	8nzbDTb8USlBXkDcPlJw0UYknRENr2DppNz+RCCOFVI/UZUDwIHbkzEcCEQl896V7y1BlkPGk3gGq
	q5p8xDhyRpGO/T/zZqOhf5Y41DCp53unnCowGjWL326LIgc4TQJ+15Pk/i1FLnMht/yar6zkdAjPt
	PzmTIzs3tIkPKDcjukHhbOqIMAvFCRvwEIpwxCGTkv67YsKSzYIK/VBk4MU0djIjDZeo+0XegC7Pp
	hWzr0xYjmSUfPxvXNG0yi43iGNSSfArMqBSz1I0WgFRBZBQtp47umnxcfxgIE6qEV6/Dszd8D20q0
	mDNAsEpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n6r6g-00ASWR-1O; Mon, 10 Jan 2022 09:36:50 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n6qvH-00ALXK-GO
 for linux-phy@lists.infradead.org; Mon, 10 Jan 2022 09:25:04 +0000
Received: by mail-wr1-x42d.google.com with SMTP id h10so15316565wrb.1
 for <linux-phy@lists.infradead.org>; Mon, 10 Jan 2022 01:25:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=subject:to:cc:references:from:organization:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=iXRcQtW/RqOfyLEuPiv/rc/ZOHCOx0ZmI+mS8uhOeao=;
 b=vHSXBHa+8Dng6wkLUU8WVk6FiH3tcp1ac53WDMyiK06jdNJO6yDaUKb1hIKjClIN0q
 NX+RqkVx162MbZkD21ndK6jb+NgeVtgJP3vsrxMcEqtjLZYbxSDif0f0JYjgkY6FEkL2
 zFvRBkp2wiup0bJ7mVwYV2iYzH6g7IC/dCzqmSY9iUFsKqLe0LE5D7O1SmQMzNstn7nX
 mq8Ophn1E1auqBvr8o5ktZT4ChPhUKh+YoQUJY2KjvbUzNVEF+EgdSrZwWN8bD6Gim2P
 hCyt5V32cqiOfpJuUbhwTZ0hX/+ZbzjaKGjwR9BgUXCNwNNCtsHqzsZk3kTfN4teh6kB
 tpWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=iXRcQtW/RqOfyLEuPiv/rc/ZOHCOx0ZmI+mS8uhOeao=;
 b=xNR8OwWY4wRwJd0YQji8mkJTZWSOnQuoHM8SljeYpf+GBu42NBze5ciyBhkRKhG76Q
 ZYtFYQ19pltVToPvGcMCOHZIZAhSkbYc/cEZ/fIIvzza3ro4n1xEwjRE+2f6GAXY+n7R
 VInOTm9vgJ2R2hr1GrZyTET/VyNgO5Uw6WjJlxVvMZ2lGAz0Mp/xuDKfNLg1GXoxvOeb
 jXl32cMXO7b7rjlAFjiIhLVTqkQsCAYCmhqiz02fghyjeJC/n1t0nImQQUz0y1F1hge4
 3fGeEEyUMQihaw/Q0lfoEtLfmWxudsuD9viEXpQ+Ius23nQ44Wahl8x0HM0C41R4srOb
 GEJQ==
X-Gm-Message-State: AOAM532JJVPdNHYnBOUbX44vNlInQ9hKgDUAQ+PhOmYYF7x6Yn/rnFB1
 I5hqa+JvkT1HkhJHuAMX1qef4A==
X-Google-Smtp-Source: ABdhPJyvmN1IIelz0OaL6TWjryajCQAa27psvjcxhcDCQvdNj0GmndfkDN8HvgK50DPa6wDpPBMwpg==
X-Received: by 2002:adf:e188:: with SMTP id az8mr20152428wrb.670.1641806701770; 
 Mon, 10 Jan 2022 01:25:01 -0800 (PST)
Received: from ?IPv6:2001:861:44c0:66c0:94e5:2e36:6bcc:a9f1?
 ([2001:861:44c0:66c0:94e5:2e36:6bcc:a9f1])
 by smtp.gmail.com with ESMTPSA id q14sm6330055wro.58.2022.01.10.01.25.01
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 10 Jan 2022 01:25:01 -0800 (PST)
Subject: Re: [PATCH v3 1/2] dt-bindings: phy: add Amlogic G12A Analog MIPI
 D-PHY bindings
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: kishon@ti.com, vkoul@kernel.org, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220107150512.614423-1-narmstrong@baylibre.com>
 <20220107150512.614423-2-narmstrong@baylibre.com>
 <CAFBinCDRx6VaaAubr6VRLnX=G4Ez8cGg-=6e-9GWrH8FwwBs-g@mail.gmail.com>
From: Neil Armstrong <narmstrong@baylibre.com>
Organization: Baylibre
Message-ID: <fad140b9-2940-a24a-ba70-9849bacf617d@baylibre.com>
Date: Mon, 10 Jan 2022 10:25:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <CAFBinCDRx6VaaAubr6VRLnX=G4Ez8cGg-=6e-9GWrH8FwwBs-g@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220110_012503_631676_86CBE24F 
X-CRM114-Status: GOOD (  14.02  )
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

On 07/01/2022 23:13, Martin Blumenstingl wrote:
> Hi Neil,
> 
> On Fri, Jan 7, 2022 at 4:05 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
> [...]
>> +required:
>> +  - compatible
>> +  - reg
>> +  - "#phy-cells"
> I also found a "MIPI DSI PHY clock" and "MIPI DSI PHY interrupt" in
> the datasheet.
> I'm no expert on this and I'm just asking in case you have missed one of these:
> Can you confirm that these belong to some other IP?

Indeed the name is misleading, both go to the DSI Transceiver IP (dw-mipi-dsi)

Neil

> 
> 
> Best regards,
> Martin
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
