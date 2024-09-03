Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1725DCD13CF
	for <linux-phy@archiver.kernel.org>; Tue,  3 Sep 2024 12:26:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lzbn3U9GEDKGABpksq45CbTK5SGq8IYBZMfdBeY/ZA4=; b=35wHsZL93uwBIU
	VNymDyIsHTQqrgHvtKjhb6tf0hyIRDjz/J5TXuINxZxKHsF8g0dZiYOq7F1tejHbCthfFdgWqvY9j
	ceaI7sGkjuqYWRWsVwi9hr06193sPBmGWEPwo4l82h+fdKSYoqH6w8tqvKnVdobUQq5gYjQnnTL4L
	mTZIMdB27mI3lieBC5jUDfYzeD1OQ2ztyHt+KVf2pfeC1Nvgnvi0gsPDxrtOIhC/cciNcmMSB6OIN
	3j1wqhq8bJ7Hsw9sTsLnW+vQmP+xEBvG4j7wdtnQPjek3I2QE2D5hdil2xao4kGBoHctN41qMNWGb
	pLxd3VjgGtDWxvUKFPoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slSbj-000000008sl-1DEP;
	Tue, 03 Sep 2024 12:26:03 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slSbf-000000008rn-3W9U
	for linux-phy@lists.infradead.org;
	Tue, 03 Sep 2024 12:26:01 +0000
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-5c26311c6f0so1821707a12.3
        for <linux-phy@lists.infradead.org>; Tue, 03 Sep 2024 05:25:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1725366358; x=1725971158; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+cdIRXo5VTqWR2KdDzO1DTS+Vt8PiHUf2RGCvnaGFsQ=;
        b=XYYdW/Iv9JYnDmO+QL4O1b4gXJkCQommz9pB+GLwYh9WK35fb2nS9tFnxDUCCiLpuw
         axsQb2Yhu/fDHy6yHLSLJxlniPd3oz/c+1IJWNf7dZh94iklbT9faB9nA2nw8iwYc8Rp
         bSChuAMKeWUKxscyHhudkNiiXJ74XijjIApAlsVMvVnStTkv5kodsl8T0QM+zogrk32a
         mnLFP9Ls55cUaARkTN6Ipa7xlEc/KU7+Sz2W3LuIZKpKe5Sw4HT2nkOsc0nsbAkvlXhI
         Y7vdDcULaWuw8cmNJmZOVZIfW1JFSs4+NYKN5XNhjYKyTQci2FwcuFA8ocsFb8Y2YCwK
         tHqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725366358; x=1725971158;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+cdIRXo5VTqWR2KdDzO1DTS+Vt8PiHUf2RGCvnaGFsQ=;
        b=WALSie4rxVc93aj6N+ltRl4ggpIXfNO3H78MTYN32JiZAP+iY+Ovh5wd8UbNTlVkJM
         IuJ+fI2Rp8EplgzFaBxsTnqMEXxWJuKCCC4ACYoHTprGoTSoZxWB+38HdxL5jKc19iD2
         8YWd/M3ysArt6jxqO4RGDDvYizCbpOpnREjh3OrCp7LZu3HxMQJc7brYhkpJOjunAFq9
         p+mp4aStsrPQpZ68d+fa+2VEj7NVYp0W/nBU6PelQZBl+Qt9I67LXAYGXZAY2NT4Tco2
         5HNvoSHAX0brfa+YF1ycfvI949YrUtWhpQvqCeqTOtpTcKiHL68FKdlEn0jF6J4SveJa
         5fPQ==
X-Forwarded-Encrypted: i=1; AJvYcCXep1e+nLeFBvdcJzsapGqSq/xvLGJTUq/N2kDQfu8k43MBAoWxco0pqHqUL4MXdJMPVPfrB5yV+So=@lists.infradead.org
X-Gm-Message-State: AOJu0YyxYT7V680EkzykF1d9g5kJrFclIQXrlA4C90AJUDXo2XcKupm7
	xuLLq1snP3nG796b1Dg3xmccPT0BTwGmK3AOnMRU2aQWQ8rdkCdW6vSk1V3lddI=
X-Google-Smtp-Source: AGHT+IGCJSAfsQxh53LJgcY+qGaZ+a7jTX6q5V6OFCLQvyiQ7yrxNllyp0cepO9Zz23djK5zaAK9PQ==
X-Received: by 2002:a05:6402:4310:b0:5a2:2654:7fc4 with SMTP id 4fb4d7f45d1cf-5c25c3a717amr5389144a12.8.1725366357788;
        Tue, 03 Sep 2024 05:25:57 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.144])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5c226c6a3cdsm6412278a12.12.2024.09.03.05.25.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Sep 2024 05:25:57 -0700 (PDT)
Message-ID: <0b73544b-0253-43b9-b631-6578b48eaca8@tuxon.dev>
Date: Tue, 3 Sep 2024 15:25:55 +0300
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
 <f7c57e76-b890-491f-880d-62d060b7b31e@tuxon.dev>
 <TYCPR01MB11332BE2EDB318950B9C7B54C86932@TYCPR01MB11332.jpnprd01.prod.outlook.com>
 <TY3PR01MB113469FC8A9F49D9B1FA432FD86932@TY3PR01MB11346.jpnprd01.prod.outlook.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <TY3PR01MB113469FC8A9F49D9B1FA432FD86932@TY3PR01MB11346.jpnprd01.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_052559_990222_D7A9948D 
X-CRM114-Status: GOOD (  15.01  )
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



On 03.09.2024 15:00, Biju Das wrote:
> 
> 
>> -----Original Message-----
>> From: Biju Das <biju.das.jz@bp.renesas.com>
>> Sent: Tuesday, September 3, 2024 12:07 PM
>> To: Claudiu.Beznea <claudiu.beznea@tuxon.dev>; Ulf Hansson <ulf.hansson@linaro.org>
>> Cc: vkoul@kernel.org; kishon@kernel.org; robh@kernel.org; krzk+dt@kernel.org; conor+dt@kernel.org;
>> p.zabel@pengutronix.de; geert+renesas@glider.be; magnus.damm@gmail.com; gregkh@linuxfoundation.org;
>> mturquette@baylibre.com; sboyd@kernel.org; Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>;
>> linux-phy@lists.infradead.org; devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; linux-
>> renesas-soc@vger.kernel.org; linux-usb@vger.kernel.org; linux-arm-kernel@lists.infradead.org; linux-
>> clk@vger.kernel.org; linux-pm@vger.kernel.org; Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>> Subject: RE: [PATCH 00/16] Add initial USB support for the Renesas RZ/G3S SoC
>>
>> Hi Claudiu,
>>
>>> -----Original Message-----
>>> From: claudiu beznea <claudiu.beznea@tuxon.dev>
>>> Sent: Tuesday, September 3, 2024 12:00 PM
>>> Subject: Re: [PATCH 00/16] Add initial USB support for the Renesas
>>> RZ/G3S SoC
>>>
>>>
>>>
>>> On 03.09.2024 13:31, Biju Das wrote:
>>>>>> During boot clr USB PWR READY signal in TF-A.
>>>>>> STR case, suspend set USB PWR READY signal in TF-A.
>>>>>> STR case, resume clr USB PWR READY signal in TF-A.
>>>>> As I said previously, it can be done in different ways. My point
>>>>> was to let Linux set what it needs for all it's devices to work. I
>>>>> think the way to go forward is a
>>> maintainer decision.
>>>>
>>>> I agree, there can be n number of solution for a problem.
>>>>
>>>> Since you modelled system state signal (USB PWRRDY) as reset control
>>>> signal, it is reset/DT maintainer's decision to say the final word
>>>> whether this signal fits in reset
>>> system framework or not?
>>>
>>> I was thinking:
>>> 1/ Geert would be the best to say if he considers it OK to handle this
>>>    in Linux
>>
>> I agree Geert is the right person for taking SYSTEM decisions, since the signal is used only during
>> state transitions (Table 41.6.4 AWO to ALL_ON and 41.6.3 ALL_ON to AWO)
> 
> One more info, as per [1], this USB PWRRDY signal setting to be before Linux kernel boots.

The "controlled by" column mentions CA-55 on PWRRDY signal control line and
it is b/w steps "DDR exits from retention mode" and  "clock start settings
for system bus and peripheral modules". AFAICT, after DDR exists retention
mode Linux is ready to run.

E.g. on resume Linux doesn't sets the clocks of all peripheral in sequence
and then runs the rest of settings for each peripheral, in turn it sets the
clock of one peripheral along with all the other necessary peripheral
settings and then continues with the rest of peripherals (including their
clocks).

> 
> All clocks/reset happens after setting USB PWRRDY signal
> 
> https://pasteboard.co/qbz021q7KPyi.png
> 
> Cheers,
> Biju

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
