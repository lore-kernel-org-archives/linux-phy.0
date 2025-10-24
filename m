Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C4B2CCD1A5
	for <linux-phy@archiver.kernel.org>; Fri, 24 Oct 2025 09:51:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v+GU6NDRjfcbJ5c/CtMzTHxAjZzn713R+XNO2wYcVpg=; b=0DU/m0x0NVM3u9
	64oryiRUTWu9c8v1QnShUpCrGd22hU9CyhxA+RyBIO/hc/0i6JFlCyelASJQN4MWVIdJbFwfCRqDk
	KaR7m6hET/Rofw3AN4NvAq4RExpD5gq1m9heSNn4SKvLk3XDTtlTGKdmGlaFYXvmfY/d9bUEWodUx
	yIKhVSYK6L8rXbDUZkuSDOLziG703gtX6AzaUZunnbfAc2NkXgr1njfvrEiB6xaobG78pEtIU3ox2
	VKtD0jZezF/4oesnOJrvC+M0ETqlys0XBhtaOwZq3VdwwW1IR0pxoPhY0g0oLQG0ZQTV0g9KkM4Z+
	a3HDzxsnORunBwhkQhoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vCESO-00000008voa-48h8;
	Fri, 24 Oct 2025 09:51:36 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vCESM-00000008voC-2Afw
	for linux-phy@lists.infradead.org;
	Fri, 24 Oct 2025 09:51:35 +0000
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-63bad3cd668so3504280a12.3
        for <linux-phy@lists.infradead.org>; Fri, 24 Oct 2025 02:51:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1761299492; x=1761904292; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ly3AYuLKibQEdYHOL/Htjgp8xjTYNizR6VDMFs2t4hc=;
        b=NSgxgbmm0ZmCjnLapGX/sogPklG9qR8DXI8tdOYumFQmyuXPyovshq5dQvldkwKsqN
         ETBb0FIhPX0AYZj8WogznsGu1Rpaq7Jq4ofHIztNaqKCzZTA0+NNcO0CvkE1O8AyX9h3
         KAqa3IuVJpSJhuSIZC5FJgbIYaek3xlYMe0NJJPeNf2UzCaXf7kE7I/4y8OoNwzlKR9h
         /3Y7N+FEaB6pnq8E/0nnaBkJnchWXaGF2a8X2M5BNBhaOP+2oc962kP6yM2fJbYdl8bQ
         6KlMZjCLfonG0Q1Dy+PssK1/KebYdVRD3mv9koZic6If9WEVFHNx/6v2t3ANTbqabubr
         HSyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761299492; x=1761904292;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ly3AYuLKibQEdYHOL/Htjgp8xjTYNizR6VDMFs2t4hc=;
        b=iMNLxqODJ/6J/SEcCScFT6hFJkR7vfq0LjllampDfAO6cGTl8bJwEoyu6o4SyKah19
         7Nb6TNeWEWzrGsndP3YHfX1X7D4HxtAfIOTmdawrkuLANazUsqilo7uT5YHyvBlOpeR7
         kNyrWC17hV1/G9KqJDrgPm5o9JIc1Ut5ehJsSVmfOqrMp2xEk/oNQMzJJIb7iVjmdsOB
         wGMDjDyX6ZN1Qgt/lYtuac0LB0HWmnFXBJUp8cP5BmI24Er4RtTGU8u3zTJi3M11L2/A
         EsdulF++6IYNKzRdrdHykwxBUW1P/R+JtKMXTI/mfJvMaMZ+RdvV15JaDSILASoXGLtG
         AyLw==
X-Forwarded-Encrypted: i=1; AJvYcCW3qeSqGaCjbWSwPef/3zOgh2WV+/+s4Of4toTWAxj4M4dY58cpAc8CPOZb2x8cEcnbio57FO2I+h0=@lists.infradead.org
X-Gm-Message-State: AOJu0YydyIJuagLkzfGU0QoKLRObnER25DSQuSsY8fpcHYGWXOlbhOc0
	2KuS1/0JlVczYhNqA09sqd9JOX3v72Uy98MYUaBKmPBCYaIaOa4MrfOceLBltHRMMfw=
X-Gm-Gg: ASbGncsU5KC0yjNynbuHxHw2evYoE71CbRjO+7beToUjpHoKMm/gqT2KU9zKnpk+DBq
	Aaf3fNfZ70cirKaiXbt/F7Kied/UH4nPScFIYSXCwRBHbhvffDT2AzNiwmjokkOufCzXxJ2HsoS
	p0mNelUhgeglgYJaUUoodpJ3ueYqtL3YvOqyQPQteitJ/UEM2FYSqCbMtAfp4/tllLnkE1qU/EB
	7KATPLY4lJibvo8iOp0LYgVItt2cBtSoguuAG5jDFv53ArisISt2pVq/LvgP8nUl72Mkea4D/cB
	9tK8sWU6xL04Fg9IGDnEtrZ8Bx+cc6s5QDWxQGubeqIhRoJugWhnoBNt437g3ljTdEypi8Ln3Bs
	gdm7FbzhdDTDVaoeYMv0gx5e6WYGLhPTezf7P8ivEz2dS1Zuf/pwiiLReRDdAKTc+NMkGtxogh3
	LQKUII82X0
X-Google-Smtp-Source: AGHT+IGmo8RIThQOxDu/Zi1gWcAuc6tFi+Y4rpL7zem9sqyDB03ggroT6vzhcOREXWW2G8nw+BwgWw==
X-Received: by 2002:a05:6402:51cb:b0:63c:66b5:bbbf with SMTP id 4fb4d7f45d1cf-63c66b5c00dmr20265189a12.20.1761299491899;
        Fri, 24 Oct 2025 02:51:31 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.151])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-63e3ebcd2fasm3947160a12.14.2025.10.24.02.51.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Oct 2025 02:51:30 -0700 (PDT)
Message-ID: <e3403b2a-533f-4962-a615-32a4095fd6dc@tuxon.dev>
Date: Fri, 24 Oct 2025 12:51:28 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 7/7] arm64: dts: renesas: rzg3s-smarc: Enable USB
 support
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, p.zabel@pengutronix.de, magnus.damm@gmail.com,
 yoshihiro.shimoda.uh@renesas.com, biju.das.jz@bp.renesas.com,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>
References: <20251023135810.1688415-1-claudiu.beznea.uj@bp.renesas.com>
 <20251023135810.1688415-8-claudiu.beznea.uj@bp.renesas.com>
 <CAMuHMdV7ScKUw7bGFW4v0wS9caXKDeT02MXkLWpk2LZfYw8GfQ@mail.gmail.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <CAMuHMdV7ScKUw7bGFW4v0wS9caXKDeT02MXkLWpk2LZfYw8GfQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251024_025134_597059_E3E83D46 
X-CRM114-Status: GOOD (  19.87  )
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

Hi, Geert,

On 10/24/25 12:15, Geert Uytterhoeven wrote:
> Hi Claudiu,
> 
> On Thu, 23 Oct 2025 at 20:41, Claudiu <claudiu.beznea@tuxon.dev> wrote:
>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>
>> Enable USB support (host, device, USB PHYs).
>>
>> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
>> Tested-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> 
> Thanks for your patch!
> 
>> --- a/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
>> +++ b/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
> 
>>  &pinctrl {
>>         audio_clock_pins: audio-clock {
>>                 pins = "AUDIO_CLK1", "AUDIO_CLK2";
>> @@ -207,6 +230,27 @@ ssi3_pins: ssi3 {
>>                          <RZG2L_PORT_PINMUX(18, 4, 8)>, /* TXD */
>>                          <RZG2L_PORT_PINMUX(18, 5, 8)>; /* RXD */
>>         };
>> +
>> +       usb0_pins: usb0 {
>> +               peri {
>> +                       pinmux = <RZG2L_PORT_PINMUX(5, 0, 1)>, /* VBUS */
>> +                                <RZG2L_PORT_PINMUX(5, 2, 1)>; /* OVC */
>> +               };
>> +
>> +               otg {
>> +                       pinmux = <RZG2L_PORT_PINMUX(5, 3, 1)>; /* OTG_ID */
>> +                       bias-pull-up;
>> +               };
>> +       };
>> +
>> +       usb1_pins: usb1 {
>> +               pinmux = <RZG2L_PORT_PINMUX(5, 4, 5)>, /* OVC */
>> +                        <RZG2L_PORT_PINMUX(6, 0, 1)>; /* VBUS */
>> +       };
>> +};
>> +
>> +&phyrst {
>> +       status = "okay";
>>  };
> 
> This node should be located before pinctrl.

You're right! I missed it.

> No need to resend just for this.

Thank you!


> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 
> --
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org
> 
> In personal conversations with technical people, I call myself a hacker. But
> when I'm talking to journalists I just say "programmer" or something like that.
>                                 -- Linus Torvalds


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
