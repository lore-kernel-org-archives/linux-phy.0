Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08B5BC433FE
	for <linux-phy@archiver.kernel.org>; Thu, 20 Oct 2022 02:56:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EXQaZeAruyMeXG4qldlEUyXm6YQ/loNVOUvhCZ1sh0k=; b=AIaUZNqv0GFa6R
	5fc8hvucRC1sA82/LbGBAttXXJyJBis/WpL3ESb5JDegLpBvPf+o7DzOnZhljHa3Cu0TEc/rUQO6x
	t20GIRgkOVpJ0B5yXCr0TPJV7k3w/lfA+sHhld9xY9IFxuodmoEcJ0TOWJIpHrqx9xabBjlW+XSHi
	og/aeavRJS1JV9Q9Cv5bXuKp7p8o/rSq9w5nCqKlgNrc/VeqOjAFi9OiTmOymWmpu+r5vk/AnRKeR
	lupgPe5mvzzZ6RTjty+DmnzIko3b9c/Cm5OeF6LT1Vhg3MwPjhlmvBQysJAv8Q7MkbbbkMv0EM4wp
	AzjPT79kYXb4EISUkzJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olLj9-009akE-Et; Thu, 20 Oct 2022 02:56:11 +0000
Received: from mail-pj1-x1036.google.com ([2607:f8b0:4864:20::1036])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olLj7-009aji-AY
	for linux-phy@lists.infradead.org; Thu, 20 Oct 2022 02:56:10 +0000
Received: by mail-pj1-x1036.google.com with SMTP id x31-20020a17090a38a200b0020d2afec803so1767188pjb.2
        for <linux-phy@lists.infradead.org>; Wed, 19 Oct 2022 19:56:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IneXvEA4RXH8O3z+9PeiWh97Dt1+hev7jQD9p0XzeCQ=;
        b=SmBwQ77iZ8Ell4qr5KbdljTvp4r4cGxKZCDwkAFbSWKbQ/Jw9QUmvEQlxbJaQZB3/z
         OGGhBqx74RZBIGGlcN58OJb+hs8lKmWFVPz0SluatE5URXeQ6IVfaiiCBrNz11ldHwvl
         /w+o1gf2atrIlyaA+A4lo5lMSgs1R3KbwhFUAR27FWWRZRnZLPIZEjhLIKysFMuoXD3N
         9k2caSY6y/LBSMWSNA7XQ1jHgEtMpPDObcX1cTBPyOfO4pgXzBNjloP7VW1pyg21VJgu
         SuEbhguW143KfBaW3Wxfcu62sWnvMimbbLO6PFFv3WRCrl1HCcOidQyJXzEVksOaZSA6
         hCng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IneXvEA4RXH8O3z+9PeiWh97Dt1+hev7jQD9p0XzeCQ=;
        b=rD73esf9kJk71yIUiru2+M+ab5Kq/JqtB4f7z+HDE02Y5KzU7RYZuC6sbYelj+N/Vr
         iO/EHvfIfmGHj5I785CeAxzZ+tXX4afntPLvunykj/HyjDvWlRx3AN9fIkwz43kRKLAz
         TM8+hXXsLj+IDJfdMmVdeL4wicI1Y02TKF1c7k9cSAY8o3Oc5rio4AMNUTac8SYLgap1
         5xCStG8YGH3Wlvn+SDTAT9m81+L93T7jiuAjX0CaVSKHBwHjLDafqwGJIX4kZ/MQVd5v
         tEE9envOSacu++5BtF02K96FrkRb4QEN8nXXloYtJeBagvli1ZEIJws9/Xh67/BjUGXG
         ehmQ==
X-Gm-Message-State: ACrzQf0tyzIw22UJG8zbYx7Br/wBka1qOTjwXuMxV7zOBo4j6cm37YAa
	EQQcsZnoSkIHW+fJv5c7iiQ=
X-Google-Smtp-Source: AMsMyM7LZp9fS9+vT58YHx52jB1RTGgNgVxo1udLEaQ8USN4foa5Vjg5y1BPMVCO88Uiyq+LsLKUIg==
X-Received: by 2002:a17:90b:2243:b0:20b:42a:4c0d with SMTP id hk3-20020a17090b224300b0020b042a4c0dmr47402403pjb.123.1666234566534;
        Wed, 19 Oct 2022 19:56:06 -0700 (PDT)
Received: from [192.168.43.80] (subs03-180-214-233-92.three.co.id. [180.214.233.92])
        by smtp.gmail.com with ESMTPSA id n15-20020a170902e54f00b0017b5e1f486asm11652518plf.211.2022.10.19.19.56.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Oct 2022 19:56:06 -0700 (PDT)
Message-ID: <25e6e305-69d4-f244-c255-3e832edc2f28@gmail.com>
Date: Thu, 20 Oct 2022 09:56:02 +0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH] doc: phy: Document typical order of API calls
Content-Language: en-US
To: Sean Anderson <sean.anderson@seco.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 linux-phy@lists.infradead.org
Cc: Jonathan Corbet <corbet@lwn.net>, linux-kernel@vger.kernel.org,
 linux-doc@vger.kernel.org
References: <20221018175841.1906611-1-sean.anderson@seco.com>
 <e002248f-7070-3f89-04f2-e7f694fad5cc@seco.com>
From: Bagas Sanjaya <bagasdotme@gmail.com>
In-Reply-To: <e002248f-7070-3f89-04f2-e7f694fad5cc@seco.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221019_195609_391033_AE7FA05C 
X-CRM114-Status: UNSURE (   8.45  )
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

On 10/19/22 01:01, Sean Anderson wrote:
> Hi Vinod,
> 
> When sending this patch, I noticed that Kishon's email bounced. Is he
> still maintaining this subsystem? He hasn't been very active for the
> past year.
> 

He's now using @kernel.org address <kishon@kernel.org> (see [1]).

Thanks.

[1]: https://lore.kernel.org/lkml/20220928102431.658-1-kishon@ti.com/

-- 
An old man doll... just what I always wanted! - Clara


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
