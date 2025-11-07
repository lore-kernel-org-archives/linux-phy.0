Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3695CCFA13
	for <linux-phy@archiver.kernel.org>; Fri,  7 Nov 2025 03:39:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kjfEKaXao7o7k5bkwooMNbGVRKll6KzGrPgGxlzuNHY=; b=U9f2D0Y99hJMPu
	AXk6k5Sx6inLmIbEpII8+IXADAIljasnbwMwkHLfx6k4tNfq5vBfe602rKoxIkBw3rfkuk4NMkBTj
	qlCIj3ZZeHimBOtfJT6dWpHotkJWMNWf4ZJhxTu1gX8SnFRqyfu32pcmDE1DbEAxAD2325KEpmfWs
	B2yja+373tiqq+Is3CAn7oBrx4+t3ApN1VRIg0V4240dOTxQa8jmGRbNgoTAQ6N8g28IZcF9Sr/ti
	0u0Ih01Mp4c6ijDY1wlCZ6n0cLXjD6+InYfJ263YA0+qWA90RjioQ895Jfmfg7uNCMxHy3dBkehRY
	W1SzPn8MYp8uM357Ihgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHDKH-0000000GdZa-0M9G;
	Fri, 07 Nov 2025 03:39:49 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHDKE-0000000GdY5-0Rog
	for linux-phy@lists.infradead.org;
	Fri, 07 Nov 2025 03:39:48 +0000
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-429b72691b4so225508f8f.3
        for <linux-phy@lists.infradead.org>; Thu, 06 Nov 2025 19:39:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1762486783; x=1763091583; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vbO2nTB7Qh4Qw6JsJr6W4VgsgC2mZidOm7iZWG0m/78=;
        b=TWQAGqbpkSZdNGD2q/pXMFVsYbVL7+0LWvoF3Nz7CsM4sbq8qOQiW3YqQBxPGOWww1
         DSbKLc0ApCfMVMG91WNfO1cDcPkkPWSi/3zdYCAjlW/sbwtS3hO5eOlM/5ohepgwWEWy
         sw0YcGl+ig95nlJV+DtO6rmksf/dfaYS7q3MA377YrXNMv+MDA+Wb3sWKppd3yRqr39F
         mT3axwm7elKKRTwQ4DNUptZrCEQyaDNlH6MUugOqfZZtgGXoco5eDxJmcLFimofwoKSd
         7wzLmCgQ5OiPuaz8rZD/Lmo1cI3W+fkz4PPuMmAyE0tP7riZy0/EPFy/pjMj68UDcYBL
         3Ddg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762486783; x=1763091583;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=vbO2nTB7Qh4Qw6JsJr6W4VgsgC2mZidOm7iZWG0m/78=;
        b=W2g0MHYt5eyqzKVM59tE7N2JVvf9fRAMUy/la7Singu/300J8ttsp2sOnBy2OL+G7d
         zaFgbp9Gxo1BGC5rk5r+zKVQYi2z+njfe0zIbNRykNhBPQf9EGJBHxXVt7VyEoivx2sI
         mnFOCZRnaW5cyPsnQ5xbmwVChyr8RGhLzrkOEivSx0tI9MNmKnJqD/rd/RWwqqnqyBrq
         FiIXApdl6sRJDNv3VJIMNDQYbzV0oGPRZApEbNEyo21WK5tHxx+Qnt5GA2JacJN7U11P
         XZAWSpb7aLQLBkkA2UKHY6KxIuQGYy7ffySYyyytvg4PVJq3KUI+uJG0a+gaZg/D0kiY
         uUIg==
X-Forwarded-Encrypted: i=1; AJvYcCVrYrs+X+aQlXD6BLPHTHwgIdYyGu074dHaEVSk1Iv99jCRLh2RrFbxy17XPEDIvis7u9jcTCAU/Ew=@lists.infradead.org
X-Gm-Message-State: AOJu0YzDxJCUHc5e76IPDROK1z86vX0Zxz6bIltTPwgJEH48uL2zhpH4
	wm8XkthnMlfk/gmOmeErSQUYNlaWYCoZuG96aZtJI2pamsh9vuZqrl/D2ZZHBybQ0SL+3923beF
	qt8/3W6YbXK4hV5ObHuHvh18DA+UROqO3r7Gr06iX
X-Gm-Gg: ASbGncsBzMmsX0J3EwObn4bv9Y331ktH7u85zGJnEMlaHNk+VRvVDadDAEMD2LRpPyM
	JmdLXl4byHQuGL+8PlRjccQr1hSzFjsO/UDT/4oniAbS+dy48qHp5SiaTkgM2EVlTSkRSw8LRO4
	3jG8390f2YTj3NbErXG7FAl6+4cZoQdgZZ5il+yf+BlMmsYV1vl64HztPnMiYYHggLcm1b78xto
	MGuZZfT5EVQJ5WKp7w8BhTx7/FM3eqkzXpLPvEx7ul5dOlu40KQJJCfS4ov+5a4yf3fCg9a8Eay
	C2UmDZReGEciSeGg3rbpa+Ts
X-Google-Smtp-Source: AGHT+IGEh7IhvQg+TrDD6zZjcWzRpXTsExEgfoQszOkKmBt1xXGm8ca7e3AYQMZfs4zZsYumxirBfUxPg23Zvt75ckw=
X-Received: by 2002:a05:6000:240a:b0:429:d6dc:ae2f with SMTP id
 ffacd0b85a97d-42ae5ac513dmr1043717f8f.31.1762486783011; Thu, 06 Nov 2025
 19:39:43 -0800 (PST)
MIME-Version: 1.0
References: <20251029214032.3175261-1-royluo@google.com> <20251029214032.3175261-2-royluo@google.com>
In-Reply-To: <20251029214032.3175261-2-royluo@google.com>
From: Doug Anderson <dianders@google.com>
Date: Thu, 6 Nov 2025 19:39:31 -0800
X-Gm-Features: AWmQ_bk0tg9nfbEFrAczn7gf3WHlPnE4d6lMh6R1gsb1gSV599Sr46OpKQ3eUsM
Message-ID: <CAD=FV=VYOD=33secA=2ozE8EO6Z_Wi_ZjiDMov5oP8Z42JytAg@mail.gmail.com>
Subject: Re: [PATCH v5 1/2] dt-bindings: phy: google: Add Google Tensor G5 USB PHY
To: Roy Luo <royluo@google.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Peter Griffin <peter.griffin@linaro.org>, 
	=?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Joy Chakraborty <joychakr@google.com>, 
	Naveen Kumar <mnkumar@google.com>, Badhri Jagan Sridharan <badhri@google.com>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251106_193946_165587_D0B16B7E 
X-CRM114-Status: GOOD (  23.20  )
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

SGksCgpPbiBXZWQsIE9jdCAyOSwgMjAyNSBhdCAyOjQw4oCvUE0gUm95IEx1byA8cm95bHVvQGdv
b2dsZS5jb20+IHdyb3RlOgo+Cj4gRG9jdW1lbnQgdGhlIGRldmljZSB0cmVlIGJpbmRpbmdzIGZv
ciB0aGUgVVNCIFBIWSBpbnRlcmZhY2VzIGludGVncmF0ZWQKPiB3aXRoIHRoZSBEV0MzIGNvbnRy
b2xsZXIgb24gR29vZ2xlIFRlbnNvciBTb0NzLCBzdGFydGluZyB3aXRoIEc1Cj4gZ2VuZXJhdGlv
bi4gVGhlIFVTQiBQSFkgb24gVGVuc29yIEc1IGluY2x1ZGVzIHR3byBpbnRlZ3JhdGVkIFN5bm9w
c3lzCj4gUEhZIElQczogdGhlIGVVU0IgMi4wIFBIWSBJUCBhbmQgdGhlIFVTQiAzLjIvRGlzcGxh
eVBvcnQgY29tYm8gUEhZIElQLgo+Cj4gRHVlIHRvIGEgY29tcGxldGUgYXJjaGl0ZWN0dXJhbCBv
dmVyaGF1bCBpbiB0aGUgR29vZ2xlIFRlbnNvciBHNSwgdGhlCj4gZXhpc3RpbmcgU2Ftc3VuZy9F
eHlub3MgVVNCIFBIWSBiaW5kaW5nIGZvciBvbGRlciBnZW5lcmF0aW9ucyBvZiBHb29nbGUKPiBz
aWxpY29ucyBzdWNoIGFzIGdzMTAxIGFyZSBubyBsb25nZXIgY29tcGF0aWJsZSwgbmVjZXNzaXRh
dGluZyB0aGlzIG5ldwo+IGRldmljZSB0cmVlIGJpbmRpbmcuCj4KPiBTaWduZWQtb2ZmLWJ5OiBS
b3kgTHVvIDxyb3lsdW9AZ29vZ2xlLmNvbT4KPiAtLS0KPiAgLi4uL2JpbmRpbmdzL3BoeS9nb29n
bGUsZ3M1LXVzYi1waHkueWFtbCAgICAgIHwgMTI3ICsrKysrKysrKysrKysrKysrKwo+ICAxIGZp
bGUgY2hhbmdlZCwgMTI3IGluc2VydGlvbnMoKykKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvZ29vZ2xlLGdzNS11c2ItcGh5LnlhbWwK
Pgo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L2dv
b2dsZSxnczUtdXNiLXBoeS55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L3BoeS9nb29nbGUsZ3M1LXVzYi1waHkueWFtbAo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5k
ZXggMDAwMDAwMDAwMDAwLi44YTU5MDAzNmZiYWMKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9nb29nbGUsZ3M1LXVzYi1waHkueWFt
bAo+IEBAIC0wLDAgKzEsMTI3IEBACj4gKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IChHUEwt
Mi4wLW9ubHkgT1IgQlNELTItQ2xhdXNlKQo+ICsjIENvcHlyaWdodCAoQykgMjAyNSwgR29vZ2xl
IExMQwo+ICslWUFNTCAxLjIKPiArLS0tCj4gKyRpZDogaHR0cDovL2RldmljZXRyZWUub3JnL3Nj
aGVtYXMvcGh5L2dvb2dsZSxnczUtdXNiLXBoeS55YW1sIwo+ICskc2NoZW1hOiBodHRwOi8vZGV2
aWNldHJlZS5vcmcvbWV0YS1zY2hlbWFzL2NvcmUueWFtbCMKPiArCj4gK3RpdGxlOiBHb29nbGUg
VGVuc29yIFNlcmllcyAoRzUrKSBVU0IgUEhZCj4gKwo+ICttYWludGFpbmVyczoKPiArICAtIFJv
eSBMdW8gPHJveWx1b0Bnb29nbGUuY29tPgo+ICsKPiArZGVzY3JpcHRpb246IHwKPiArICBEZXNj
cmliZXMgdGhlIFVTQiBQSFkgaW50ZXJmYWNlcyBpbnRlZ3JhdGVkIHdpdGggdGhlIERXQzMgVVNC
IGNvbnRyb2xsZXIgb24KPiArICBHb29nbGUgVGVuc29yIFNvQ3MsIHN0YXJ0aW5nIHdpdGggdGhl
IEc1IGdlbmVyYXRpb24uCj4gKyAgVHdvIHNwZWNpZmljIFBIWSBJUHMgZnJvbSBTeW5vcHN5cyBh
cmUgaW50ZWdyYXRlZCwgaW5jbHVkaW5nIGVVU0IgMi4wIFBIWSBJUAo+ICsgIGFuZCBVU0IgMy4y
L0Rpc3BsYXlQb3J0IGNvbWJvIFBIWSBJUC4KPiArCj4gK3Byb3BlcnRpZXM6Cj4gKyAgY29tcGF0
aWJsZToKPiArICAgIGNvbnN0OiBnb29nbGUsZ3M1LXVzYi1waHkKCkZXSVcsIHdlJ3ZlIGhhZCBz
b21lIHJhdGhlciBoZWF0ZWQgYmlrZXNoZWRkaW5nIGF0IEdvb2dsZSBhYm91dCB0aGUKdXNlIG9m
ICJnczUiIHRvIHJlZmVyIHRvIHRoaXMgcHJvY2Vzc29yLgoKKiBUaGUgcHJvY2Vzc29yIGlzIGFs
bW9zdCBleGNsdXNpdmVseSByZWZlcnJlZCB0byBhcyAibGdhIiBpbiBjb2RlIGF0IEdvb2dsZS4K
CiogVGhlIHByb2Nlc3NvcidzIGNvZGUgbmFtZSBpcyAibGFndW5hIi4KCiogTm9ib2R5IGlzIGF3
YXJlIG9mIHRoZSBwcm9jZXNzb3IgYmVpbmcgcmVmZXJyZWQgdG8gYXMgImdzNSIKaW50ZXJuYWxs
eS4gVGhvdWdoIHRoaXMgaXMgdGhlIDV0aCBHb29nbGUgU2lsaWNvbiAoIkdTIikgcHJvY2Vzc29y
LCBzbwppdCBtYWtlcyBzb21lIHNlbnNlLCAiZ3M1IiBpcyBub3QgcmVhbGx5IGFuIG9mZmljaWFs
IG5hbWUgZm9yIGl0LiBBdApsZWFzdCBvbmUgcGVyc29uIHBvaW50ZWQgdG8gdGhlIGZhY3QgdGhh
dCBpdCdzIGEgdGFkIGJpdCBjb25mdXNpbmcKdGhhdCB0aGUgZmlyc3QgZ2VuZXJhdGlvbiBUZW5z
b3IgcHJvY2Vzc29yIGlzIGNhbGxlZCAiZ3MxMDEiIHVwc3RyZWFtCmFuZCB0aGUgZmlmdGggZ2Vu
ZXJhdGlvbiBpcyBjYWxsZWQgImdzNSIuCgoqIFNvbWUgZm9sa3MgcHJvcG9zZWQgImdzNTAxIiB0
byBtYXRjaCB0aGUgImdzMTAxLCBnczIwMSwgLi4uIiB0cmVuZC4KVGhlIGZpcnN0IHR3byBUZW5z
b3IgcHJvY2Vzc29ycyB3ZXJlIGRlZmluaXRlbHkgY2FsbGVkICJnczEwMSIgYW5kCiJnczIwMSIg
YW5kIHRoZSBuZXh0IHR3byB3ZXJlIHJlZmVycmVkIHRvIGFzICJnczMwMSIgYW5kICJnczQwMSIg
aW4Kc29tZSBpbnRlcm5hbCBkb2NzLCB0aG91Z2ggdGhpcyB3YXMgZGlzY291cmFnZWQuIFRoZSBw
cm9jZXNzb3IgaW4KUGl4ZWwgMTAgd2FzIG5ldmVyIGNhbGxlZCAiZ3M1MDEiIGludGVybmFsbHkg
YXMgZmFyIGFzIEkgY2FuIHRlbGwuCgoKSW4gYW55IGNhc2UsIGl0J3MgYSBiaXQgb2YgYSBtZXNz
LiBUaGUgc3RyYXcgcG9sbCBJIHRvb2sgc2VlbWVkIHRvCmxhbmQgb24gImxnYSIgYmVpbmcgdGhl
IHByZWZlcnJlZCBuYW1lIHRvIGNvbnRpbnVlIHRvIHJlZmVyIHRvIHRoaXMKcHJvY2Vzc29yIGlu
IHVwc3RyZWFtIGNvZGUuIFdvdWxkIGl0IGJlIHBvc3NpYmxlIHRvIGNoYW5nZSBmcm9tICJnczUi
CnRvICJsZ2EiIGhlcmU/IFRoZSAibGFndW5hIiBjb2RlIG5hbWUgZm9yIHRoaXMgcHJvY2Vzc29y
IGlzIHdlbGwga25vd24KcHVibGljbHkgYW5kIGl0J3MgZ2VuZXJhbGx5IHF1aXRlIGNvbW1vbiB0
byByZWZlciB0byBwcm9jZXNzb3JzIChhbmQKYm9hcmRzKSBieSB0aGVpciBjb2RlbmFtZXMsIHNp
bmNlIGNvZGVuYW1lcyBhcmUgb2Z0ZW4gYXZhaWxhYmxlIHNvb25lcgp0aGFuIG1hcmtldGluZyBu
YW1lcyBhbmQgYWxzbyBsZXNzIGxpa2VseSB0byBjaGFuZ2UuIEluZGVlZCwgSSB3YXMKZXZlbiBD
Q2VkIG9uIGEgY2hhbmdlIHJlY2VudGx5IHdoZXJlIHRoZXJlIHdlcmUgcGxhbnMgdG8gbW92ZSBh
d2F5CmZyb20gYSBwcm9jZXNzb3IgSUQgYW5kIGJhY2sgdG8gYSBjb2RlbmFtZSBbMV0uCgoKWzFd
IGh0dHA6Ly9sb3JlLmtlcm5lbC5vcmcvci8yMDI1MTAzMC1yZW5hbWUtZHRzLTItdjEtMi04MGMw
YjgxYzRkNzdAb3NzLnF1YWxjb21tLmNvbQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGlu
dXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
