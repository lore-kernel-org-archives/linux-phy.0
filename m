Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC213CA0FFD
	for <linux-phy@archiver.kernel.org>; Fri, 29 Aug 2025 15:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dgk/kH6iR3usmE4hiBuGIL7RYHrmB9mh42dzmoKvYvU=; b=kx+TjEI7aZhn7B
	oGEzw4FldOdBUWGGHwLBMDlzzM3x5X8hFmRlNE0jro46ARN6XlH0XrjKNVZcZtKGbgnkYV0zkuAjS
	M5j3D4YDZJEJjQROoMCAdX2p1z1CB8ThFnIf5EZm7nCiFkLAszR6XK26iZf43AzjntFx/DJLfHNwm
	zDtFpsmt0F/C4PWByO4/csJP+R/psNjae+d5gdxBIPOrAjMI02iwmzKcG8U3xEjYjrFctjxjDngOY
	ElQ/f5NwR3wjtmPHR7aNM51HdJAzsbRquqkDkcMUam/v8EQktADr6+XLdVLELJlbI3zjxzFiY43hB
	+O51j8R60xG5jSLYGNBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1us1G6-00000006FEQ-1fVk;
	Fri, 29 Aug 2025 15:43:22 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urxJi-00000005USC-0C35
	for linux-phy@lists.infradead.org;
	Fri, 29 Aug 2025 11:30:51 +0000
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-3d0dd9c9381so451785f8f.1
        for <linux-phy@lists.infradead.org>; Fri, 29 Aug 2025 04:30:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1756467048; x=1757071848; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=T0wvfSxTD4PyeUqUaex8loa72nWgHqN7pcaVJw2RW0A=;
        b=dHrI9PPgWmTkRGGsa9rMXKWmqmj2owgoFM3FjHjspstluaNK+o/Z9U3SruudkVwJnu
         7do9o4iyWQuwPoAWnSCAnDqITQNzF2VxWkczVOFeOZkQlurGFtxqne3DNtAZPDcRQwt3
         ZDsbyPJrkJSsyhJEOJWUwO5ogRnhQT6mkEgvlpQOCVuOOUJBWFHsS+nuSBqFE80BZZE8
         Qkmw01lM8XHtewOyn5Me48rGhwBdGsKPJWd2bEjJ1CINeUdpFIvqLSrpKODIKpoHKWvD
         XoFopJ/Ga9g1o4ui6Dqiue2a+Bx2D5517xgIP8IZMEWmqTy86lqSk5PWsZ20ITBlTMVX
         z1kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756467048; x=1757071848;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=T0wvfSxTD4PyeUqUaex8loa72nWgHqN7pcaVJw2RW0A=;
        b=CAK+6XeDLhN2kKO/cO3lkymYK3W5Fm34xW1teoSho2MvwXqsZrWkX6m8U5KVYAlOLc
         KN8GxEYHr2JgkGA8s1yGeR8CzctgYOjnTBEn9tNxcxfXI/vxf3/4PmN/reRv+W9Ug/5E
         YYmSuNw6KsKek9wCTdi/PPGyu/OyvfevXEBelEBsf9ANoFqzDXw4QdPgODlOlscDJNhb
         ZMmTULuajKkpjfNOAjYuIVx0ysOjg4o2nSOzBJTZ28gdZS7Tg//CT0M1RyIj3qa4/Ic0
         Y69fOwGezikKD9oJ9KJ1XiLMk9CU599Tf9lKHpM3euS4ft2OQ0Tk+CeyBT/BwXzPSUNh
         zANA==
X-Forwarded-Encrypted: i=1; AJvYcCXuU4lRtdHR3Dzn/VCOf9Kc9qmvV8HjYKVT99MDVRSV6tp+qL7D5QaVpcPX8d9AGQNaVk9KKfwZqWE=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx9ZvnKe5l2h1Ed4Q7ZTBBvv/fP+oCHPTCpZHM6JXRxT21pUuLr
	Dj6JubMCbBQwun8fLjmJdux0qBiopR0mNDme3VDuPjQI1L80G8BfgV4Tn6FLDLBeBVg=
X-Gm-Gg: ASbGnctkeBdyHLa8lSYLUuMGLbdXQfiodLswulLsWSW+WE5x2noOrC2UpY8ObzrnMm/
	Bc+2jR3aRo/XTjS0pnrKpU8Lp8o6dwgFM5uPD3T+8+XUaWr7bMD9TCo2Jg9ZXYfXerj0dpiW99h
	g9WNK8TpnIhNUmGApEZX+XYCJag+CckwkX+ypmkj9K4RnDNe6+W0SVz7eRU0paebNMJ1NVphNs+
	xm3aADTa4bY9eMITjPsYjPPQ7Bwlab/wSYNHL114d3H5bCc0n+0XtXdgEjNdDa6npmRTVEB64hM
	6QmFnkujhe7TWqJHuhvWQ63tJOrPAWzHOfLzkSQDmUFgQylTEXhsdD58spjSpwiy2EGqBO/06Ps
	S0KaAZCHW+65QjPsfVhKykkLSe5+gFK6zRwasboNdsN2H/TLUqcHthqJiTp3LrYlWBVNU+Y8ve4
	uwkA==
X-Google-Smtp-Source: AGHT+IHYch2FfCJJCEjvAUySW+SgNboylbh4JYSu3C6VxwnMUr6gCMAh25k3up3+KdJsGw1qZPzcww==
X-Received: by 2002:a05:6000:40cb:b0:3d0:64c1:1a2e with SMTP id ffacd0b85a97d-3d064c11ba5mr1572165f8f.28.1756467048267;
        Fri, 29 Aug 2025 04:30:48 -0700 (PDT)
Received: from ?IPV6:2a02:2f04:6202:f400:43c2:4394:d834:def5? ([2a02:2f04:6202:f400:43c2:4394:d834:def5])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3cf270fd2dfsm3140942f8f.3.2025.08.29.04.30.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Aug 2025 04:30:47 -0700 (PDT)
Message-ID: <be706ee5-057c-4b0a-b0d3-54ca24087f3f@tuxon.dev>
Date: Fri, 29 Aug 2025 14:30:44 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 0/7] Add initial USB support for the Renesas RZ/G3S SoC
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, p.zabel@pengutronix.de, geert+renesas@glider.be,
 magnus.damm@gmail.com, yoshihiro.shimoda.uh@renesas.com,
 biju.das.jz@bp.renesas.com, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org
References: <20250819054212.486426-1-claudiu.beznea.uj@bp.renesas.com>
 <aLAZprjeKtk4pusw@shikoro> <ae53d367-2ee5-49aa-82ba-86f9e84d4d25@tuxon.dev>
 <aLGGmI8bpKNVaSAa@shikoro>
Content-Language: en-US
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <aLGGmI8bpKNVaSAa@shikoro>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250829_043050_269939_D7978E77 
X-CRM114-Status: GOOD (  11.03  )
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

Hi, Wolfram,

On 8/29/25 13:53, Wolfram Sang wrote:
> Hi Claudiu,
> 
>> I just checked it on latest linux-next and all good on my side. Would it be
>> possible that you don't have commit 2da2740fb9c8 ("soc: renesas: rz-sysc:
>> Add syscon/regmap support") in your tree?
> 
> Yes, I added it and it made the error go away, but still no USB. I

The drivers are not probed or you see no activity when connecting USB devices?

> switched to linux-next as of today, did neither help.
> 
>> This is how my tree looks like:
> 
> Mine is similar, except for a newer -next.
> 
> Let's try your config file next?

I used arm64 defconfig (arch/arm64/configs/defconfig).

Thank you,
Claudiu

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
