Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1887ACCA470
	for <linux-phy@archiver.kernel.org>; Wed,  8 Oct 2025 08:07:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yLGTSsjMqYbsCCefVkGUr+U18HbdVoGuW8Z8Spcz5rw=; b=sHtI+EGXCZXfs1
	v2YVZ8gGJhhBexydt2zUwG7IXAZkySIJ1TzQlYRufa00Ht8+k8D7K96QGMMQhslF5BcDaqPq0cHsV
	wzZ22nQ2TTfo8lDpKW45r51T10ogRCasb3DGni4b7rKJ52Jdi7Du0D9w+STZf0z4Jzw9xI750iV19
	o6y2raK5ICUsGggY/4YMk9HLqXn9p5KpSC+jByDweRCFAMdG3NroRkmOvi3fz7/h4vYvgDi+gX/X/
	cdwEanG6QoWj4fnZnaGjNL3AletJV172RNRL8R6oxM9AreO6xeJ6HuXLGudQ4h3Vqp2ghuY2edwc2
	5kGwcDks1UbwVOp6tX2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6PCf-00000003PZS-3Om2;
	Wed, 08 Oct 2025 08:07:17 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6PCd-00000003PZ2-2tpb
	for linux-phy@lists.infradead.org;
	Wed, 08 Oct 2025 08:07:17 +0000
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-b403bb7843eso1451820366b.3
        for <linux-phy@lists.infradead.org>; Wed, 08 Oct 2025 01:07:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759910834; x=1760515634; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=lz3Dr9+oQCFUFzdJjDUHVM7lAqaXzoxTfNaEvT4TpvI=;
        b=xC5VW2CmrrBVVsqbGhmirif7yoA6TAskcj6sb2aONcpUpm9X4OgYIFEOKX2300yyTx
         y1LiWasTPfNSAhE+dXRo3xb955pxnkbvr6tjx8gaMdHNmShsEyC9bJeP16Jp0+hZMwXh
         jCx/YunZBlMnNnxiMR3HYiEFrrTkkFKlwEBP6+GRUAbyuujdtftDFfILUNLpI6DBwI4O
         ZBHw2kcaOABXDxCisldQKdjisce5bCNnyY1qVRt3lmKyw3GEJpQDyrMM5Wsbst8EVx2D
         Gkadw7WzjNHKXSk6ef2NScuokpKxd8Ng0bm1TqYYosi+9x6gKHxXLksFrJc+jq/tW4/o
         dNyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759910834; x=1760515634;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lz3Dr9+oQCFUFzdJjDUHVM7lAqaXzoxTfNaEvT4TpvI=;
        b=P1bk+m1rbZFTpIV2L/x3s2xUzWb/5TuV658i5Qt+AKkkg1/N66/Y0tfJvGJMEDTCSc
         UrNPcO0C66kEKMzpalJjBdTN5oE5dNMh7Uy9WlLB5zFheKHH4q04nOLvqiMBv1BvI6Sg
         gJHjUHW6mO3U5DB8b3FVAJbQYkJIQ/s40eXv4TAXB0hVs5PZMwAJU4XevgWF18JTGVqe
         5Y0fEded6HcaQJaLiURdzygd48rY0h6TRcJMWqWKDUw3K8XwBYoFxTyxdBUnps3/2Api
         LoV1i8k5I65/CPaDw2/HsezWAVRkRcquEznKc+PCh1tS8RO1+wd+GnCraoonsUrPMrQu
         tRCg==
X-Forwarded-Encrypted: i=1; AJvYcCXtiBaysB9HrrrlVt7trdJK2a9kXP8n2gynI6cw3EOzgNb5UtgJerDxa7VByif7xWYWzRlOeriybLY=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyjfyzis1ynLZOd3vXr8/r6+yzxLfoY7kK9AGF9R/do/4wDpI8t
	ts8o4XBiwA/8bD8FUtwU5i2hysleeYw3jvAH3UcdZThcCiey8bn+BhHvyBQfWyk19x4=
X-Gm-Gg: ASbGnctv7nN7SsvbedzupEneJit/H0YKlH7X3yhgdtax4gj9sNA/hTsEQ2Lj0UgecvO
	//YYj5SgNqO4RLDJZvf/5iHY/K2TcW2pIGAeAzScjl3nSUQxjaR6qBhVUrlqLElbdjKxLhNuZeD
	crzT6FtIGp9gfVnMnmZ2Jja1Xp/Eoh2WMP6nDuMaSN06AIU2JqZSE7l5tDY2KTM2uJY1mdC6XD4
	/exZAzexzqrIUzgvBixjm9NPnws1P5kKFIIJFVrbx3CQWUA2efdd7odeJf4EzBjZpuxPH6ZJwJ8
	VTjhc4hRtfUDPbe19qyOVYJKwN/H6xDYz3Jwl2r79YzPS5X993pJ2wlEijLO5xJKzzkbIaKCprt
	+ADcJiJAOw/HV9zczUdMIt4bgW/VGuuMTuxTHXOyD3KCHT6nEfbeMnJ+oSUkoDvwq
X-Google-Smtp-Source: AGHT+IHtm6BHE8ZRQ41FN4MsQQmn1glSpIZ2QsHJBtFdvnhqSHUzpN0y3S8QL9OiODXZeENcyC/EIA==
X-Received: by 2002:a17:907:3e1e:b0:b3a:b22e:dd35 with SMTP id a640c23a62f3a-b50aa48d854mr270829266b.2.1759910833825;
        Wed, 08 Oct 2025 01:07:13 -0700 (PDT)
Received: from draszik.lan ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b48652a9e66sm1563103566b.14.2025.10.08.01.07.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Oct 2025 01:07:13 -0700 (PDT)
Message-ID: <e91f6754bf13f1d42402fb708dfc2b3d7bd59a6b.camel@linaro.org>
Subject: Re: [PATCH] dt-bindings: phy: samsung,ufs-phy: add power-domains
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Alim Akhtar <alim.akhtar@samsung.com>, 'Vinod Koul' <vkoul@kernel.org>, 
 'Kishon Vijay Abraham I'	 <kishon@kernel.org>, 'Rob Herring'
 <robh@kernel.org>, 'Krzysztof Kozlowski'	 <krzk+dt@kernel.org>, 'Conor
 Dooley' <conor+dt@kernel.org>
Cc: 'Peter Griffin' <peter.griffin@linaro.org>, 'Tudor Ambarus'
	 <tudor.ambarus@linaro.org>, 'Will McVicker' <willmcvicker@google.com>, 
	kernel-team@android.com, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Wed, 08 Oct 2025 09:07:12 +0100
In-Reply-To: <002001dc381c$85e17fa0$91a47ee0$@samsung.com>
References: <CGME20251007160147epcas5p305e74b7b3449b934687396e9c8aa3ff4@epcas5p3.samsung.com>
		<20251007-power-domains-dt-bindings-phy-samsung-ufs-phy-v1-1-d9030d14af59@linaro.org>
	 <002001dc381c$85e17fa0$91a47ee0$@samsung.com>
User-Agent: Evolution 3.56.2-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251008_010715_750480_1723B9F9 
X-CRM114-Status: GOOD (  12.13  )
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

SGkgQWxpbSwKCk9uIFdlZCwgMjAyNS0xMC0wOCBhdCAxMTo1NiArMDUzMCwgQWxpbSBBa2h0YXIg
d3JvdGU6Cj4gCj4gCj4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+ID4gRnJvbTogQW5k
csOpIERyYXN6aWsgPGFuZHJlLmRyYXN6aWtAbGluYXJvLm9yZz4KPiA+IFNlbnQ6IFR1ZXNkYXks
IE9jdG9iZXIgNywgMjAyNSA5OjMyIFBNCj4gPiBUbzogVmlub2QgS291bCA8dmtvdWxAa2VybmVs
Lm9yZz47IEtpc2hvbiBWaWpheSBBYnJhaGFtIEkKPiA+IDxraXNob25Aa2VybmVsLm9yZz47IFJv
YiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+OyBLcnp5c3p0b2YgS296bG93c2tpCj4gPiA8a3J6
aytkdEBrZXJuZWwub3JnPjsgQ29ub3IgRG9vbGV5IDxjb25vcitkdEBrZXJuZWwub3JnPjsgQWxp
bSBBa2h0YXIKPiA+IDxhbGltLmFraHRhckBzYW1zdW5nLmNvbT4KPiA+IENjOiBQZXRlciBHcmlm
ZmluIDxwZXRlci5ncmlmZmluQGxpbmFyby5vcmc+OyBUdWRvciBBbWJhcnVzCj4gPiA8dHVkb3Iu
YW1iYXJ1c0BsaW5hcm8ub3JnPjsgV2lsbCBNY1ZpY2tlciA8d2lsbG1jdmlja2VyQGdvb2dsZS5j
b20+Owo+ID4ga2VybmVsLXRlYW1AYW5kcm9pZC5jb207IGxpbnV4LXBoeUBsaXN0cy5pbmZyYWRl
YWQub3JnOwo+ID4gZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmc7IGxpbnV4LWtlcm5lbEB2Z2Vy
Lmtlcm5lbC5vcmc7IEFuZHLDqSBEcmFzemlrCj4gPiA8YW5kcmUuZHJhc3ppa0BsaW5hcm8ub3Jn
Pgo+ID4gU3ViamVjdDogW1BBVENIXSBkdC1iaW5kaW5nczogcGh5OiBzYW1zdW5nLHVmcy1waHk6
IGFkZCBwb3dlci1kb21haW5zCj4gPiAKPiA+IFRoZSBVRlMgcGh5IGNhbiBiZSBwYXJ0IG9mIGEg
cG93ZXIgZG9tYWluLCBzbyB3ZSBuZWVkIHRvIGFsbG93IHRoZQo+ID4gcmVsZXZhbnQgcHJvcGVy
dHkgJ3Bvd2VyLWRvbWFpbnMnLgo+ID4gCj4gQ2FuIHlvdSBjcm9zcyBjaGVjayBpZiB0aGVyZSBp
cyBhIHNlcGFyYXRlIHBvd2VyIGRvbWFpbiBjb250cm9sIGZvciB1ZnMtcGh5PyAKCkknbSBzdGls
bCBoYXZpbmcgc29tZSBvdGhlciB0cm91YmxlcyB3aXRoIHRoZSBoc2kyIChVRlMpIHBvd2VyIGRv
bWFpbiBvbiBnczEwMSwKYnV0IEkgY2FuIGNvbmZpcm0gdGhlIHVzYi1waHkgaXMgcGFydCBvZiB0
aGUgaHNpMCAoVVNCKSBwb3dlciBkb21haW4uIFNvIGZvciB0aGUKdWZzLXBoeSBJIHByZXN1bWUg
aXQncyBzaW1pbGFyOiBpdCBzaG91bGQgYmUgcGFydCBvZiB0aGUgaHNpMiBwb3dlciBkb21haW4u
IFRoZXJlCmNlcnRhaW5seSBpcyBubyBzZXBhcmF0ZSBkb21haW4gZm9yIHRoZSB1ZnMtcGh5IGl0
c2VsZi4KClNlZSBhbHNvIG15IHJlcGx5IHRvIHRoZSBvdGhlciBwYXRjaDoKaHR0cHM6Ly9sb3Jl
Lmtlcm5lbC5vcmcvYWxsL2ZmM2EwYjk2OTgwNjY5ZjMyNmVkMDJlZDgxYjk3ZDM0YzEwNGIwOWQu
Y2FtZWxAbGluYXJvLm9yZy8KCkRvZXMgdGhhdCBhbnN3ZXIgeW91ciBxdWVzdGlvbj8KCkNoZWVy
cywKQW5kcmUnCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1waHkK
