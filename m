Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D43D6CED62B
	for <linux-phy@archiver.kernel.org>; Wed,  9 Oct 2024 08:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gG5XoRxDUT/fO6kJaRPmYqv/0DgUp5DZtOR1RxLDbHw=; b=GOMIUjwvTvAmcN
	k2x93LGbUDfwrhshtX01kbs1Aam8t5CQTOmsDVj0EzhfKU0EGQK7zFWZpiSYNSeWvRlNVmCFlx+Q7
	ymzltYYz/XipYm1eyb8xExZ+iG6qAVm7hkDp01JBXXYNOpQcaTh7DvX4n38/OVXVxjgA2/uzk0tfx
	jj7ZHCV0/jMIkCjOAC8lMiOcLS6X4RLH0NbWddnzWWdM72FOKvcrvabJNtLBSJuPEn0KaI6+B3qsz
	KRT1WyuiQf2l/TTMA8b+GOE0SmD/QYq70M3uA+UuBflpstZwlBm0GDjvKaQmsDj3ew0+4acz9Tcru
	+71l7wkjBejs7OS2vNXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sySIi-00000008WLs-28h8;
	Wed, 09 Oct 2024 08:44:08 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sySHN-00000008VvG-01qs
	for linux-phy@lists.infradead.org;
	Wed, 09 Oct 2024 08:42:46 +0000
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-a995f56ea2dso413614466b.1
        for <linux-phy@lists.infradead.org>; Wed, 09 Oct 2024 01:42:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1728463363; x=1729068163; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NCo1GlPGMO9qRjYk6NqblAPH+ivDBMcmdikYhCEoAX0=;
        b=gcJMYji1KkxCbf3Bo1LgeTibVVFzTGaquWAr8IIvafu8mWF24aIx8pZlgXue7q+zmK
         JroXl+lvwsDdWUlvGlcabX1rtXoZ0gAxUck/jAmmBadKdWSRl6bvmzWITUhqN0NOm0NC
         nr4Fv8lQbVQs0MBGqir/VyrxP59S0Aplij7p2fgT9yEymeWON5P2Bonu/6swZT8Ocr4t
         smMLKF79oP53efwviZ0jAYkFn803iXGzFmcJO+AVi+kClb/JELxVf5Cc6qIfwEh9bf9o
         tBszgQqgT3vafr64Q7YulnOLok2T4DB2DfNaEsOh3Gh5Q96klNCSiEXgWRYvTCTif7je
         uLXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728463363; x=1729068163;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NCo1GlPGMO9qRjYk6NqblAPH+ivDBMcmdikYhCEoAX0=;
        b=Rl0+jlOD02tpYisvPwcp6Kkqr2QxveGLorueCh25DICl9Tm6U605aiVWgT5rMoKkS5
         P9g/3x3wbJed7tFbCwE1m8exoHDpenvQs45w110a39q2aEtEOGH134jA8aAG3OZY8xh6
         hgmLJoCRwYoyOnJFpt7PYCziZOK9jEUkF2JOvIVsLhdShBRDF08zamtqBz7cRmRNIVKy
         TAjD2q+45PuESH6Z6EIkreyAxZxSSiDZLKa6tgGf02qOnzMKH8m72sUX9HKMl5N+DiqL
         mq/G1I+SR3JM1hMkBHwcZ4wFmm2MKX78iYLwoCyux2eRPWhSeYEL+SLaRDuqGzCZS+32
         UupA==
X-Forwarded-Encrypted: i=1; AJvYcCV4KqEmXCSkVtLTxiWXD/LDp959CbbZvT4fkBws+kmJJRgBPE+PVoS4D87BYP5cP+I067W1pxfdUpQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YwjNmzx8gJAdWDJ3sojxcCWO4ZmaFIzsq8nHAJsPM02UalUfDgm
	78GxDryWEOSqeHghDshO8FkQ33gyo6KudbGyOvXtQBu6NGoabqjOkQbRnik04xk=
X-Google-Smtp-Source: AGHT+IH65Py6ZoVFXJXAzrfoxCpg11Zu8PXx18r+jrhrvKhS9cBYCLJYMJJAgnToJzsiU/Uro8/0AA==
X-Received: by 2002:a17:906:6a05:b0:a77:c95e:9b1c with SMTP id a640c23a62f3a-a998d1f6694mr148213966b.27.1728463363024;
        Wed, 09 Oct 2024 01:42:43 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.23])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9957c683d1sm365002866b.203.2024.10.09.01.42.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Oct 2024 01:42:42 -0700 (PDT)
Message-ID: <cbb9d3ab-ed61-43f6-aca1-8d35316c4ff6@tuxon.dev>
Date: Wed, 9 Oct 2024 11:42:40 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 15/16] arm64: dts: renesas: rzg3s-smarc: Enable USB
 support
Content-Language: en-US
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, p.zabel@pengutronix.de, magnus.damm@gmail.com,
 gregkh@linuxfoundation.org, mturquette@baylibre.com, sboyd@kernel.org,
 yoshihiro.shimoda.uh@renesas.com, biju.das.jz@bp.renesas.com,
 ulf.hansson@linaro.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-pm@vger.kernel.org, Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
 <20240822152801.602318-16-claudiu.beznea.uj@bp.renesas.com>
 <CAMuHMdXbNRO--0ZGO4owi3At5n1dTMMWo4PTaubyNWEkVnPFFA@mail.gmail.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <CAMuHMdXbNRO--0ZGO4owi3At5n1dTMMWo4PTaubyNWEkVnPFFA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241009_014245_071479_7ED8BE05 
X-CRM114-Status: GOOD (  15.29  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

SGksIEdlZXJ0LAoKT24gMDguMTAuMjAyNCAxODoxNiwgR2VlcnQgVXl0dGVyaG9ldmVuIHdyb3Rl
Ogo+IEhpIENsYXVkaXUsCj4gCj4gT24gVGh1LCBBdWcgMjIsIDIwMjQgYXQgNToyOOKAr1BNIENs
YXVkaXUgPGNsYXVkaXUuYmV6bmVhQHR1eG9uLmRldj4gd3JvdGU6Cj4+IEZyb206IENsYXVkaXUg
QmV6bmVhIDxjbGF1ZGl1LmJlem5lYS51akBicC5yZW5lc2FzLmNvbT4KPj4KPj4gRW5hYmxlIFVT
QiBzdXBwb3J0IChob3N0LCBkZXZpY2UsIFVTQiBQSFlzIGFuZCBzeXNjKS4KPj4KPj4gU2lnbmVk
LW9mZi1ieTogQ2xhdWRpdSBCZXpuZWEgPGNsYXVkaXUuYmV6bmVhLnVqQGJwLnJlbmVzYXMuY29t
Pgo+IAo+IFRoYW5rcyBmb3IgeW91ciBwYXRjaCEKPiAKPj4gLS0tIGEvYXJjaC9hcm02NC9ib290
L2R0cy9yZW5lc2FzL3J6ZzNzLXNtYXJjLmR0c2kKPj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0
cy9yZW5lc2FzL3J6ZzNzLXNtYXJjLmR0c2kKPj4gQEAgLTE0NCwzICsxODgsMjAgQEAgJnNkaGkx
IHsKPj4gICAgICAgICBtYXgtZnJlcXVlbmN5ID0gPDEyNTAwMDAwMD47Cj4+ICAgICAgICAgc3Rh
dHVzID0gIm9rYXkiOwo+PiAgfTsKPj4gKwo+PiArJnN5c2Mgewo+PiArICAgICAgIHN0YXR1cyA9
ICJva2F5IjsKPj4gK307Cj4+ICsKPiAKPiBUbyBhdm9pZCByZWdyZXNzaW9ucyAoL3N5cy9kZXZp
Y2VzL3NvYzAvIGRpc2FwcGVhcmluZyksIGVuYWJsaW5nIHN5c2MKPiBpcyBhIGRlcGVuZGVuY3kg
Zm9yICJbUEFUQ0ggMDUvMTZdIHNvYzogcmVuZXNhczogc3lzYzogTW92ZSBSWi9HM1MKPiBTb0Mg
ZGV0ZWN0aW9uIG9uIFNZU0MgZHJpdmVyIiwgc28gSSB0aGluayBpdCBtYWtlcyBzZW5zZSB0byBj
aGFuZ2UKPiBpdHMgc3RhdHVzIHRvICJva2F5IiBpbiByOWEwOGcwNDUuZHRzaSBpbnN0ZWFkLCBh
bmQgc3BpbiB0aGF0IG9mZiBpbnRvCj4gaXRzIG93biBwYXRjaC4gCgpHb29kIHBvaW50ISBJJ2xs
IGFkZCB0aGUgZHRzaSBjaGFuZ2VzIGludG8gIltQQVRDSCAwNS8xNl0gc29jOiByZW5lc2FzOgpz
eXNjOiBNb3ZlIFJaL0czUyBTb0MgZGV0ZWN0aW9uIG9uIFNZU0MgZHJpdmVyIi4KClRoYW5rIHlv
dSwKQ2xhdWRpdSBCZXpuZWEKCiBJIGFtIG5vdCBzdXBlci13b3JyaWVkLCBzbyBkb2luZyB0aGUg
ZHJpdmVyIGFuZCBEVFMKPiBjaGFuZ2VzIGluIHNlcGFyYXRlIHBhdGNoZXMgc2hvdWxkIGJlIGZp
bmUsIGFzIGxvbmcgYXMgdGhleSBtZWV0IGVhY2gKPiBvdGhlciBpbiBuZXh0IG9yIHVwc3RyZWFt
Lgo+IAo+IFRoZSByZXN0IExHVE0uCj4gCj4gR3J7b2V0amUsZWV0aW5nfXMsCj4gCj4gICAgICAg
ICAgICAgICAgICAgICAgICAgR2VlcnQKPiAKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0Cmxp
bnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
