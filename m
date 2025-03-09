Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E5C8C28B28
	for <linux-phy@archiver.kernel.org>; Sun,  9 Mar 2025 22:02:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d9LJQEYYWwmvYyemJMMe1dZGfvncdmDoxJIX6WDXqPk=; b=Qf19y3KGFbmq4I
	42XXE/wB8hKEpy4L4DBXU3T5oO+Ntwq48xigN2ovbL7x3NEyVXXHEkCYD8cIvxTaBK/Jjg/uzpW6P
	uUuMZe8U0Q1bwFODAMU61CLXFk3GGVcOfjD8zmnw0Hhhu1Nt0yQxRv5KAVFkMVHH75ZJIvpcSuV7q
	JyXfuTmb3y7TKAXnnr2sWr4QeHV/M8+IL4/X1Mape7TFn8LtYhvExD6viw3ETlUs7wvUQj6ckNod9
	sh3gSNsnrOys2Q9Bo6Va3m8qgrkW6tJ7zZidNanGONi2BUtAo+SrMrIRQy8bxYYbd8Rsrea5H0ns5
	6I/w7IUzHFVglxfIwDTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trOjI-00000001CUm-34We;
	Sun, 09 Mar 2025 22:02:40 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trOhe-00000001CLk-3GOA;
	Sun, 09 Mar 2025 22:01:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1741557655;
	bh=2AwOlmOEhu3yB/ZFUZMUxaC69CB5cnd8T/Ge3O14dyY=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=J++TDpzVlCkjoNZ2ae2abmOJtcdsXHrqE2QTJgUz5l9o4nR/SbvysGdaNiDyN/8TY
	 EpfBVAmh+9DE9/NiPAYPaeBW4NWTf374ueN7TXjwgCWBP6WTnpB6fCs1KZVs4bDjlZ
	 WgNvAUg3r63CQ2MGSUl+Y0phl4m2VxXFq1VakrxbB+CJDN5C4aAtI2wsGXdHEcVAkq
	 CLyHA+Khi0TZMwImsEncDdpzfbF+aZwyholl36Sbh3C5i5wSknyydYtfehk7/mOJaO
	 DgBUAiOyYRz7vovByktlgODsOvnVB9Sveaal3tgRva21B0sECn6rG4VeKoDsS+xmdI
	 Gdtj7Ri4/ZLIg==
Received: from [192.168.1.90] (unknown [84.232.140.93])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id DABAC17E09FB;
	Sun,  9 Mar 2025 23:00:54 +0100 (CET)
Message-ID: <0fe4388f-3374-409b-8383-ee5200961583@collabora.com>
Date: Mon, 10 Mar 2025 00:00:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 07/12] phy: rockchip: samsung-hdptx: Avoid Hz<->hHz
 unit conversion overhead
To: David Laight <david.laight.linux@gmail.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>,
 Sandor Yu <Sandor.yu@nxp.com>, Maxime Ripard <mripard@kernel.org>,
 kernel@collabora.com, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <20250308-phy-sam-hdptx-bpc-v5-0-35087287f9d1@collabora.com>
 <20250308-phy-sam-hdptx-bpc-v5-7-35087287f9d1@collabora.com>
 <CAA8EJpoQbvFbNXQ2RB1qY2gHnwZaU-PT-DMLnZkrxkqs2wkXqQ@mail.gmail.com>
 <a1a3e86a-1906-4797-932d-8e1aadafedde@collabora.com>
 <20250309144747.744e5197@pumpkin>
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Content-Language: en-US
In-Reply-To: <20250309144747.744e5197@pumpkin>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250309_150058_986965_A385054D 
X-CRM114-Status: GOOD (  12.83  )
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

On 3/9/25 4:47 PM, David Laight wrote:
> On Sun, 9 Mar 2025 12:13:32 +0200
> Cristian Ciocaltea <cristian.ciocaltea@collabora.com> wrote:
> 
>> On 3/9/25 11:22 AM, Dmitry Baryshkov wrote:
>>> On Sat, 8 Mar 2025 at 14:21, Cristian Ciocaltea
>>> <cristian.ciocaltea@collabora.com> wrote:  
>>>>
>>>> The ropll_tmds_cfg table used to identify the configuration params for
>>>> the supported rates expects the search key, i.e. bit_rate member of
>>>> struct ropll_config, to be provided in hHz rather than Hz (1 hHz = 100
>>>> Hz).  This requires multiple conversions between these units being
>>>> performed at runtime.
>>>>
>>>> Improve implementation clarity and efficiency by consistently using the
>>>> Hz unit throughout driver's internal data structures and functions.
>>>> Also rename the rather misleading struct member.
>>>>
>>>> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
>>>> ---
>>>>  drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 79 +++++++++++------------
>>>>  1 file changed, 39 insertions(+), 40 deletions(-)
>>>>
>>>> diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
>>>> index 2bf525514c1991a1299265d12e1e85f66333c604..e58a01bdb3ce82d66acdcb02c06de2816288b574 100644
>>>> --- a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
>>>> +++ b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
>>>> @@ -330,7 +330,7 @@ enum dp_link_rate {
>>>>  };
>>>>
>>>>  struct ropll_config {
>>>> -       u32 bit_rate;
>>>> +       u32 rate;  
>>>
>>> unsigned long long, please, to match the tmds_char_rate type.
> 
> Isn't 'bit_rate' more descriptive?
> But maybe rate_hz to make the units more obvious.
> 
> If the max frequency might get near 4Gz then the you need something

The max freq. intended to be handled by the related config table is 600
MHz, that is for supporting HDMI 2.0 (TMDS).  Anything above that
requires HDMI 2.1 (FRL), which is currently not provided and would
anyway not rely on this data structure.

Regards,
Cristian

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
