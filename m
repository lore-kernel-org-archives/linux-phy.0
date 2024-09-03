Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07F12CD3420
	for <linux-phy@archiver.kernel.org>; Tue,  3 Sep 2024 11:05:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rip3ue2myNaVaIxT/XAtyWUzhaoMAHiPGXCi3jmq2i0=; b=g5+/VCILIlJ+Cd
	stepAHMTu8RUrdA4R57ffQQPAGpk4m8Md9L19vQpG+pzea6/iYmQGVcvlEA2gH/Dp5Y0244ADIVJf
	Ypm9ApjHFCnSGCokz9mOngJwGDJcvkRlqUMR2DsUEv5/QEWiE5RFSSREjkI6d5WLuPw5GqOWcIPns
	CnWylc/pshY37qg1qvxH0Ksypaij9SaOJdzHhKyatImPLLHZi/xmpAZu5LyFlE9Cjhe3TAy29SZy/
	BANCUsuGlS9iVH99jBpF2MJJewSNb8QVMY9X/WrKgRRbd7sNa+2C32pIEnyuUKexOHnPsnuWO4FVn
	N7Y84xap6zkxHLzwm64g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slRLL-0000000HSvm-2vqb;
	Tue, 03 Sep 2024 11:05:03 +0000
Received: from mail-vs1-xe33.google.com ([2607:f8b0:4864:20::e33])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slRGm-0000000HRwU-0CjT
	for linux-phy@lists.infradead.org;
	Tue, 03 Sep 2024 11:00:21 +0000
Received: by mail-vs1-xe33.google.com with SMTP id ada2fe7eead31-498c64c6833so1482537137.2
        for <linux-phy@lists.infradead.org>; Tue, 03 Sep 2024 04:00:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1725361219; x=1725966019; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=35ye01cj8maiCra/xx+0mtB7wu3vvnw0f4Z2moOlFvQ=;
        b=j1NobsKZeCUKROrH7uCM9GgjZaJzxghzS2Fwy5rtKybfskxnS02J8dNDYK/MOiXzki
         njh96S8cU/uuAtWfS7dg80cqL1+hU1dkD7TlAeTvcoh+aFEF6csjSM1aOnsdrubq4+O+
         60B3EHgZ4pgr2uBBxYHa9ijWnhlS7rY/2muz/dvmcuJctV2Dv5hRsSV77AGKY5yru254
         gGHdC3oYHTN8pRikvBjHzzJP6S+Z8z0DPVm47CI2BKRf9gWAJ7F7H2OlVVcWuCIhQ4XA
         uJQsgdk92VpKbA4tqixJZnRhMNWpL+muZGOCxQh6yTYbmdhsr7teljfFACaGe9QkceG3
         k/xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725361219; x=1725966019;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=35ye01cj8maiCra/xx+0mtB7wu3vvnw0f4Z2moOlFvQ=;
        b=dys6ifmFCbnNPkyJ83kF9XDSjCLAU4RBRiZZNM8SoaPILjvm8ohVtmaZptJZRgGJoi
         z5NianBNu3LtLvy7lEornZuDtvnlH0AvGN/DM7F+6xGRmdfa342tB1AHG50cXZFKokuJ
         BrsmCxTcI+4wN/i4OxoROO2Fh75NysIwf0u4pZCDYurYqD4puG4ivDsHOmCR6bja0c1D
         x6/fO6JLq5ma0fOtwLHezaZU2UP0iBU4Dx74vqW1aT7BD1vVDNEVv4Zm3FxnF29Sx9lb
         Bf1/+JpH2TaR4RHpbySngLAqXzW8EVTDHxtT4OqieNIEL9DAzN8ka1/4ixXaJTMcS+KA
         Q/iw==
X-Forwarded-Encrypted: i=1; AJvYcCV07pj9Wh2OT9qfZSBylnTFcrWNxgxZG/iaaK58L8EL/tD5TuJM8ikQEUef3G2wFq4XEZqxYEoWMXM=@lists.infradead.org
X-Gm-Message-State: AOJu0YzwEARSGo1hm0cy3MWx5n/9r2v3Wd8M8xXtZQHMDvdDbjzngA2m
	L4fzE46hvycGBWimXNGHK94OfdrlwU1PhLjGkHs9RfVSJBySowDaTuxvLiSo7Ic=
X-Google-Smtp-Source: AGHT+IEyWkWxB3kdP1wMXyn+HAeVNB8ptUkhduOrIrlTeYDpqYQo7fk5GbJaIlaHBt5fb9HAnogEug==
X-Received: by 2002:a05:6102:3ecc:b0:492:9927:a5c6 with SMTP id ada2fe7eead31-49a778b6632mr12051931137.12.1725361218664;
        Tue, 03 Sep 2024 04:00:18 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.144])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7a806d87633sm507928685a.136.2024.09.03.04.00.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Sep 2024 04:00:18 -0700 (PDT)
Message-ID: <f7c57e76-b890-491f-880d-62d060b7b31e@tuxon.dev>
Date: Tue, 3 Sep 2024 14:00:11 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 00/16] Add initial USB support for the Renesas RZ/G3S SoC
Content-Language: en-US
To: Biju Das <biju.das.jz@bp.renesas.com>,
 Ulf Hansson <ulf.hansson@linaro.org>
Cc: "vkoul@kernel.org" <vkoul@kernel.org>,
 "kishon@kernel.org" <kishon@kernel.org>, "robh@kernel.org"
 <robh@kernel.org>, "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
 "geert+renesas@glider.be" <geert+renesas@glider.be>,
 "magnus.damm@gmail.com" <magnus.damm@gmail.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "sboyd@kernel.org" <sboyd@kernel.org>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
 <CAPDyKFrS4Dhd7DZa2zz=oPro1TiTJFix0awzzzp8Qatm-8Z2Ug@mail.gmail.com>
 <99bef301-9f6c-4797-b47e-c83e56dfbda9@tuxon.dev>
 <TY3PR01MB1134652F9587CFA0ADE851CA486902@TY3PR01MB11346.jpnprd01.prod.outlook.com>
 <TY3PR01MB113467275C519B729FCAB1ACB86922@TY3PR01MB11346.jpnprd01.prod.outlook.com>
 <5556d176-cca7-492c-ba21-48256d5d6338@tuxon.dev>
 <TY3PR01MB113464D53083F4C8A5DBBA36586922@TY3PR01MB11346.jpnprd01.prod.outlook.com>
 <590a4fb2-24b2-432b-92db-534c5a52ed0b@tuxon.dev>
 <TY3PR01MB11346505565B81AD2894E035586922@TY3PR01MB11346.jpnprd01.prod.outlook.com>
 <35dc7414-f5bd-4ed4-bfa1-f723f4f0078c@tuxon.dev>
 <TY3PR01MB11346A4814F83FE296A1DED8886922@TY3PR01MB11346.jpnprd01.prod.outlook.com>
 <TY3PR01MB1134648BF51F1B52BFE34DD6D86932@TY3PR01MB11346.jpnprd01.prod.outlook.com>
 <fbfa9179-2f52-429f-8b69-f7f4064e796b@tuxon.dev>
 <TYCPR01MB11332EF1A8D064C491D8F261286932@TYCPR01MB11332.jpnprd01.prod.outlook.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <TYCPR01MB11332EF1A8D064C491D8F261286932@TYCPR01MB11332.jpnprd01.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_040020_139904_3FB9A118 
X-CRM114-Status: GOOD (  11.87  )
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



On 03.09.2024 13:31, Biju Das wrote:
>>> During boot clr USB PWR READY signal in TF-A.
>>> STR case, suspend set USB PWR READY signal in TF-A.
>>> STR case, resume clr USB PWR READY signal in TF-A.
>> As I said previously, it can be done in different ways. My point was to let Linux set what it needs
>> for all it's devices to work. I think the way to go forward is a maintainer decision.
> 
> I agree, there can be n number of solution for a problem.
> 
> Since you modelled system state signal (USB PWRRDY) as reset control signal, it is reset/DT maintainer's decision
> to say the final word whether this signal fits in reset system framework or not?

I was thinking:
1/ Geert would be the best to say if he considers it OK to handle this
   in Linux
2/ if OK, then we should get approval from Ulf and Philipp on the power
   domain or reset approaches

Thank you,
Claudiu Beznea

> 
> Cheers,
> biju

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
