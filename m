Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B14F6CF887B
	for <linux-phy@archiver.kernel.org>; Sat,  5 Oct 2024 10:28:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dttC/3YFGxB3XYYNmGZihmPl9O+B04sPtHE/ezFF068=; b=TEuVHQxkIKdp4h
	SUEqVdcSZw1c4ysZ/9MGVRroqygGrYVrY8MvdZxpvCTn5pNnWyNnxb2u4bK54FrvM1D2oIo03SbzD
	H51jMLwMa0M0AnD5AEewGPlwMVIf7iAJtd07fGYQMTj+jjPdMO4jCqOWw07hZ3KJy0Hn9C5e3v5zy
	Fjq1fIR5/ziaaRzl6TOtHzQhmCC7b8eIhdRbZtku/E3fd3qHDWbKQRP0UkFGFDnL9dTXC86wJ9bZi
	WWH6zPRDaHNw8nSgNb+vloi3Ax/V9ARGtpJ/eQu++EwN8frBosDTnFZlQMMKm97/+8001cvyJ7pTE
	mFE0qFichylI1thNrd6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sx21g-0000000FC8q-15qV;
	Sat, 05 Oct 2024 10:28:40 +0000
Received: from mout.gmx.net ([212.227.15.15])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sx21d-0000000FC8D-2rek
	for linux-phy@lists.infradead.org;
	Sat, 05 Oct 2024 10:28:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
	s=s31663417; t=1728124094; x=1728728894;
	i=markus.stockhausen@gmx.de;
	bh=sp8PLmkrBwRAOKDgOu/hGztXgFBfuikql6C7hfp+C7w=;
	h=X-UI-Sender-Class:MIME-Version:Message-ID:From:To:Cc:Subject:
	 Content-Type:Date:In-Reply-To:References:
	 Content-Transfer-Encoding:cc:content-transfer-encoding:
	 content-type:date:from:message-id:mime-version:reply-to:subject:
	 to;
	b=FEUerw/YqK6IQc88JI+klAnLHVo53mpyJ2H0Dy/D9ns+0V1mj9y3oNSM46G59bbd
	 10eM5E2RwNtM8dcjqtU5zkp6xVbM8bZr+FfEzDZQ6x/VkK2Bj6zPMZLqJEpkN2jyV
	 ajSEn7IzHHJy3tofjy5wqI5B91hbO2YMnXFDnyFpKk7sGb1KgWH90I58SxcVTrwAa
	 /fuId95dIad5MzhB2GZqxj4UAiN/Z2lN/hqppp9/c/+hC9UlLJDGwUMoHE9b5EqeN
	 40P8zcIING67nelybXUg2lO9FaaWzsuMJQX8U2dtSXXFV56LQvyzOuaON4RN9J2+i
	 syakMoG3UzI3zn2PFQ==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [87.79.75.227] ([87.79.75.227]) by web-mail.gmx.net
 (3c-app-gmx-bs38.server.lan [172.19.170.90]) (via HTTP); Sat, 5 Oct 2024
 12:28:14 +0200
MIME-Version: 1.0
Message-ID: <trinity-30f499cf-b454-4ee8-981b-51f950858c68-1728124094345@3c-app-gmx-bs38>
From: Markus Stockhausen <Markus.Stockhausen@gmx.de>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-phy@lists.infradead.org, chris.packham@alliedtelesis.co.nz
Subject: Aw: Re: [PATCH 4/4] phy: Realtek Otto Serdes: add devicetree
 documentation
Date: Sat, 5 Oct 2024 12:28:14 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <085c03f4-8b1e-413a-a72e-0dd3ec60a667@kernel.org>
References: <20241004195712.1891488-1-markus.stockhausen@gmx.de>
 <20241004195712.1891488-5-markus.stockhausen@gmx.de>
 <085c03f4-8b1e-413a-a72e-0dd3ec60a667@kernel.org>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:u5cTpmvMXq7OtZw8SuNlXJX/ZONOIyi3vSEp6LAWAkWIbIcNVggY1q2iPBWXLUqO2iPvU
 XL09eg8AqIXhvlP8gboTKIdWvePuJ4bm8VkR/ucUZrHSizW0fhToW1A+xQKJxP6BmEQhc6Q1Ezza
 qPgKVQrMmMj/Tyh1+XR1RFGW6cm7nFaevNrP+rm2FXpQ7WgAPAiowJpAdYKfWkfamxMiLdSVb6G4
 DTbarNEirlVNkfhl4NRQNyfl/PJOUu9QB/mGDD6295RgfJTlxIg8/2gF2rhsTw54TRzp2sZKs2LF
 Do=
UI-OutboundReport: notjunk:1;M01:P0:VFqzR8ySJHc=;J06jab2qD+jP56E8D6NZlhK4Igx
 HDlyGVy+d2d5kRxs0bb1PEuFFjwSAFHKEyZyNf4+PXRWB8weoStSY+7QvVsOjhqxWOJEv08X3
 Utw7y5iU+Q5KGb+WIfFRq6QrHY6QkXw6zVmykSeg1JnGDCkTOyaT8zQJJAowNhsvyD+4eumC6
 UCDZvLI+/2zNBSIlqanhh9npcbnuZzF0ux/RSVvQVnfmWN1OhuLEGMsgRAtEqpxwhOlc79TZi
 K1RPsJq53Kq5IdVm12QLsBuCua+giJ3Kpz2h2lLCbTryH2T79ku6M9KWkv+ZlMK1gvLBImRDr
 cxSE0v6xYN0JhVJ6sQZ0hUHZRyhSor7YaSnkIErYFiDtd48hNsRpuM4g3Ua7KbWS7QmaSmxsl
 8njCifLFN+c1j7kxEr+wuAnhqcVFtfF33ilvnlybFIUO2+UUTZcRjV52QkL5lOhOjFu/LOQCs
 JsH8KjwnLe4HorAkV/p4EsBsuNoWhCV5FE5WTZGVth3ydCGHaT5R62WS+OvyGNJ91xUCbI+bh
 jANNExPTmSoom3uO0dsJWu/gBxzj8dPg7uTjQ/H0zfCvVuCENfoqkBl1X8Vaxwcv7Ie17WE3h
 v2vwD+7dIC8bdyTKieNHvCzxqL+YWheo4M6H32ctjvEHReHxDlmeEe3nRwViMwUCO3kWikrIl
 6emPzDy2DULQSFg5tZajNLithlo3LVqWDW1oIJjz8w==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241005_032838_032767_EB8A5205 
X-CRM114-Status: GOOD (  16.85  )
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

> ...
> > + The primary serdes register memory location. Other SerDes control and
> > + management registers are distributed all over the I/O memory space and
> > + identified by the driver automatically.
> > +
> > + controlled-ports:
> > + description: |
> > + A bit mask defining the ports that are actively controlled by the driver. In
> > + case a bit is not set the driver will only process read operations on the
> > + SerDes. If not set the driver will run all ports in read only mode.
>
> You have never tested it.

Maybe I left the wrong impression. I'm currently very hard trying to get this driver
working on 4 different SoCs. The only environment I can do this porperly is an OpenWrt
toolchain and a lot of patches. With other bits in place I can even start a Zyxel
GS1920 (RTL839x) through serial console, setup the SerDes and activate the attached
Realtek PHYs.

https://github.com/openwrt/openwrt/pull/16577
https://github.com/openwrt/openwrt/pull/16123

An older DT from last weekend:

https://github.com/openwrt/openwrt/pull/16123/commits/716b01afd35fcc708c0204ca237d8541a8000ffa

> > +
> > + "#phy-cells":
> > + const: 4
> > + description: |
> > + The first number defines the SerDes to use. The second number a linked
> > + SerDes. E.g. if a octa 1G PHY is attached to two QSGMII SerDes. The third
> > + number is the first switch port this SerDes is working for, the fourth number
> > + is the last switch port the SerDes is working for.
> > +
> > + cmd-setup:
> > + description: |
> > + A field of 16 bit values that contain a patch/command sequence to run on the
> > + SerDes registers during driver setup.
>
> None of these fields match DT. Drop all of driver related stuff.

Hm, what would be the best way to run magic vendor patch sequences that setup
registers and do not pollute driver?

Best regards.

Markus

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
