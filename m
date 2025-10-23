Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3DEACCD193
	for <linux-phy@archiver.kernel.org>; Thu, 23 Oct 2025 21:55:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xCMLNdCngEZHN7U68hPDxkrcu11aet/MRSRnNibVrsM=; b=rY28p+Z6tSsEuf
	8OWTUx2zc2RBnQJGiBAdXmzvVpZg7TuixRULUgvqklV0dh6I4vAq6ZGJVEW1yF3/l6AY5EfknosvY
	TWYo3m/jZAzQjzAAVGWbKRtKOtA4spbdlTBXIyaIXKlhkdjULosgNhaesZhJvlisoTUOejNszwj03
	aJatILPJdwfQFokaMhvrStO+VYrf9+RghAPVpWziBW8se+pTJcNvjPnm02AbGzGrfKtS9JSEj8v5c
	HVD4E/d4jPNb0NcbwJIDgc7W9aK/Vrv7uvugo/msCcgH9EIsYx+BGmFdmrpITcNDGzKCTciWRhiO1
	PlPKm8g0QszlCWtWC/Gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vC3Hc-00000007hsw-1Mdh;
	Thu, 23 Oct 2025 21:55:44 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vC3Ha-00000007hsf-0HBN
	for linux-phy@bombadil.infradead.org;
	Thu, 23 Oct 2025 21:55:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=wyDCy69Q/3azt6BaC0jOoV9WgJt8g3WAXELT1WMNnq8=; b=jALsk8iEsA67Q9nH/Y5ufLkW7T
	Eba6T1Luv0ERxXlkGNsF+THhEYT1xLRY7d5TqJJ6KquWF+kzf8lXSQVE+TE5bBgAvV+vZ6vfGYBpo
	4SbYHKgw4l+uOiSkHeAhCgWalF1vVCx47UJIhL9h3JNp4JbmVNOTWVwlCw7ttAq1+pfyuR9x/IhKZ
	afvTE9Ad7PrtsnjG1XFgWyCObAi4U5fekpYLGXAp5hfUDxLuSTE8uPV2BV8gmDUtz1GEkhsD12YnP
	YKR50d5QXepCBb/ZjnPWz3WyIR1c4Jtux7kf+wkXd4cgAZcYocHpDXi2Hiy48j4HoWUvWVrWsvFu6
	udRqRLOg==;
Received: from mail-pg1-x52f.google.com ([2607:f8b0:4864:20::52f])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vC2Ps-00000001nuf-1I6j
	for linux-phy@lists.infradead.org;
	Thu, 23 Oct 2025 21:00:14 +0000
Received: by mail-pg1-x52f.google.com with SMTP id 41be03b00d2f7-b6cf30e5bbcso976021a12.0
        for <linux-phy@lists.infradead.org>; Thu, 23 Oct 2025 14:55:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1761256536; x=1761861336; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wyDCy69Q/3azt6BaC0jOoV9WgJt8g3WAXELT1WMNnq8=;
        b=wLxdKlAKiczKD7ilU5JFWIlk+zUZoMVjGKnKWwlbk9RBsAV1ChbDCfXntUhkWmqaQ1
         MdwTn4MeE/w1SkaZLHu1WxBDJ+u5n74lHJJ8w5urFcGnj93j/qMYXq70koGwQAM45RsQ
         53AQk3ckqICdoh5ko6AfUYDyrWNNfg/CudVsLmIAE8iSckBPeC/qvzI/DG8gx1uMvTke
         QIxq4/QgLfM0KIhYB+gv+7Ik9Lkcqxt1vINc7eK1u5gNYRE99Vvmt+TLNdpHtMvmRHH/
         epuF9GRK4ptbJ159/UECyl96f3BCbnPh4ffVNNh/9eOpitP1PexU5QOLnCrNXgfX3o/t
         +M9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761256536; x=1761861336;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wyDCy69Q/3azt6BaC0jOoV9WgJt8g3WAXELT1WMNnq8=;
        b=CPd8yfxQT8YWuGNSJMIqmnSODwv88MPACdVKApwI+rI9fVjBf2tl0d1/RlTY1ydy5+
         2MuQuDv7Hyi21UCZfovdSRdJGFvmAQcG+xnvCisLjfLBdG4OucmMRzjLDDKdf2vqpVtL
         aySaZ17Oj3v6oN7aFIVxl6LqzMmQUeL+qASjcA3hBxv7XkQyDIUbfyPQvItRHkmGgFHB
         Idg0WeUTesDIw2hiDysuMReVm7BFx1JzYu1nKkJ4g+UXdNAsqu/5j09kzkAXp8ZM5+pO
         wZkUa89pmAra1lyxX4mvXbWVx45i1+UQHUqpE+VDvKbIC1Q14K0v04xfxkYGM3Y6s0Fh
         0BuQ==
X-Forwarded-Encrypted: i=1; AJvYcCUjJ9cHMuK9X+7ZLcSKS4meKDOmKW3UPs0sqQUirFwDmhnJmaIba+gleC9wEnqAiYjuJQ8u3JK/2Bs=@lists.infradead.org
X-Gm-Message-State: AOJu0YzutHQKvyeeUhjg5TuErFm4yzIz1Kq2YhKu/EQ4Kn2DBM2zFyRf
	2XX7RzXauZUsXdYy6F9x+2JmkEBczCS5510D4Mq7DYQ30mZCoZgwfq2QT23joaEUIAqutV+Tv4a
	6XL00TwdESWXvW3wila8PSimfOpQ8/TT2I5dprnPO
X-Gm-Gg: ASbGncvi5Li7TI5Wkqd7Yw2Rnd3dElCXMsTK9uzrg0pi6vAbQLbpTZUNPyO6xYRpgYt
	WcUZ4B0dfiD2lwirSTntyWIj7AqEAlE+rfm1trDqjxgV3CWXjrG5dioow8pJytjQ76L159LyQwJ
	KPnRySPmi5gz1jwrSmRo7+eCzSwiEDE2N0xkbPzyRIKNvwXm+fc1SYXnb7pN+rVl8UQ5uLSYLZU
	ozG+kg71Sp/UvdbW3pyQYbyXG+WebWcL6OFqHOn9izNvfsDRxz0FcFsgZWptLfT3Mn6dH2RK3iz
	jc9eiSE6Md6qBm90/J/W1Vf/yg==
X-Google-Smtp-Source: AGHT+IEqbJRbROlu/bm5j7ru2eVdv2x6DLq7HzQUwIw+dlex2w8ixWSRMneuISkc9NPo7yYqi/7YRgyhlNDhmAvraa4=
X-Received: by 2002:a17:903:1ae4:b0:290:ad7a:bb50 with SMTP id
 d9443c01a7336-29489e60c01mr3502165ad.27.1761256535858; Thu, 23 Oct 2025
 14:55:35 -0700 (PDT)
MIME-Version: 1.0
References: <20251017235159.2417576-1-royluo@google.com> <20251017235159.2417576-2-royluo@google.com>
 <20251023-collie-of-impossible-plenty-fc9382@kuoka> <698ba0ea-3367-4fc0-bd4f-0177283c2e77@kernel.org>
In-Reply-To: <698ba0ea-3367-4fc0-bd4f-0177283c2e77@kernel.org>
From: Roy Luo <royluo@google.com>
Date: Thu, 23 Oct 2025 14:54:59 -0700
X-Gm-Features: AS18NWDaD_LUo2BMw-kgQvNid_X2lR-GtxBED31qsEqmuEgC28zy2xECKsvSUZI
Message-ID: <CA+zupgxv9h1jOW=Jnx29yJJQBHOqBrY6tSBhoUaLb4eYuXhW7g@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] dt-bindings: phy: google: Add Google Tensor G5 USB PHY
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Peter Griffin <peter.griffin@linaro.org>, 
	=?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Joy Chakraborty <joychakr@google.com>, 
	Naveen Kumar <mnkumar@google.com>, Badhri Jagan Sridharan <badhri@google.com>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251023_220012_483979_A6B976F6 
X-CRM114-Status: GOOD (  24.98  )
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

T24gV2VkLCBPY3QgMjIsIDIwMjUgYXQgMTE6NTjigK9QTSBLcnp5c3p0b2YgS296bG93c2tpIDxr
cnprQGtlcm5lbC5vcmc+IHdyb3RlOgo+Cj4gT24gMjMvMTAvMjAyNSAwODo0MywgS3J6eXN6dG9m
IEtvemxvd3NraSB3cm90ZToKPiA+IE9uIEZyaSwgT2N0IDE3LCAyMDI1IGF0IDExOjUxOjU4UE0g
KzAwMDAsIFJveSBMdW8gd3JvdGU6Cj4gPj4gRG9jdW1lbnQgdGhlIGRldmljZSB0cmVlIGJpbmRp
bmdzIGZvciB0aGUgVVNCIFBIWSBpbnRlcmZhY2VzIGludGVncmF0ZWQKPiA+PiB3aXRoIHRoZSBE
V0MzIGNvbnRyb2xsZXIgb24gR29vZ2xlIFRlbnNvciBTb0NzLCBzdGFydGluZyB3aXRoIEc1Cj4g
Pj4gZ2VuZXJhdGlvbi4gVGhlIFVTQiBQSFkgb24gVGVuc29yIEc1IGluY2x1ZGVzIHR3byBpbnRl
Z3JhdGVkIFN5bm9wc3lzCj4gPj4gUEhZIElQczogdGhlIGVVU0IgMi4wIFBIWSBJUCBhbmQgdGhl
IFVTQiAzLjIvRGlzcGxheVBvcnQgY29tYm8gUEhZIElQLgo+ID4+Cj4gPj4gRHVlIHRvIGEgY29t
cGxldGUgYXJjaGl0ZWN0dXJhbCBvdmVyaGF1bCBpbiB0aGUgR29vZ2xlIFRlbnNvciBHNSwgdGhl
Cj4gPj4gZXhpc3RpbmcgU2Ftc3VuZy9FeHlub3MgVVNCIFBIWSBiaW5kaW5nIGZvciBvbGRlciBn
ZW5lcmF0aW9ucyBvZiBHb29nbGUKPiA+PiBzaWxpY29ucyBzdWNoIGFzIGdzMTAxIGFyZSBubyBs
b25nZXIgY29tcGF0aWJsZSwgbmVjZXNzaXRhdGluZyB0aGlzIG5ldwo+ID4+IGRldmljZSB0cmVl
IGJpbmRpbmcuCj4gPj4KPiA+PiBTaWduZWQtb2ZmLWJ5OiBSb3kgTHVvIDxyb3lsdW9AZ29vZ2xl
LmNvbT4KPiA+PiAtLS0KPiA+PiAgLi4uL2JpbmRpbmdzL3BoeS9nb29nbGUsZ3M1LXVzYi1waHku
eWFtbCAgICAgIHwgMTA0ICsrKysrKysrKysrKysrKysrKwo+ID4+ICAxIGZpbGUgY2hhbmdlZCwg
MTA0IGluc2VydGlvbnMoKykKPiA+PiAgY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvZ29vZ2xlLGdzNS11c2ItcGh5LnlhbWwKPiA+Pgo+ID4+
IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L2dvb2ds
ZSxnczUtdXNiLXBoeS55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Bo
eS9nb29nbGUsZ3M1LXVzYi1waHkueWFtbAo+ID4+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gPj4g
aW5kZXggMDAwMDAwMDAwMDAwLi5jOTJjMjBlYmExZWEKPiA+PiAtLS0gL2Rldi9udWxsCj4gPj4g
KysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9nb29nbGUsZ3M1LXVz
Yi1waHkueWFtbAo+ID4+IEBAIC0wLDAgKzEsMTA0IEBACj4gPj4gKyMgU1BEWC1MaWNlbnNlLUlk
ZW50aWZpZXI6IChHUEwtMi4wLW9ubHkgT1IgQlNELTItQ2xhdXNlKQo+ID4+ICsjIENvcHlyaWdo
dCAoQykgMjAyNSwgR29vZ2xlIExMQwo+ID4+ICslWUFNTCAxLjIKPiA+PiArLS0tCj4gPj4gKyRp
ZDogaHR0cDovL2RldmljZXRyZWUub3JnL3NjaGVtYXMvcGh5L2dvb2dsZSxnczUtdXNiLXBoeS55
YW1sIwo+ID4+ICskc2NoZW1hOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvbWV0YS1zY2hlbWFzL2Nv
cmUueWFtbCMKPiA+PiArCj4gPj4gK3RpdGxlOiBHb29nbGUgVGVuc29yIFNlcmllcyAoRzUrKSBV
U0IgUEhZCj4gPj4gKwo+ID4+ICttYWludGFpbmVyczoKPiA+PiArICAtIFJveSBMdW8gPHJveWx1
b0Bnb29nbGUuY29tPgo+ID4+ICsKPiA+PiArZGVzY3JpcHRpb246IHwKPiA+PiArICBEZXNjcmli
ZXMgdGhlIFVTQiBQSFkgaW50ZXJmYWNlcyBpbnRlZ3JhdGVkIHdpdGggdGhlIERXQzMgVVNCIGNv
bnRyb2xsZXIgb24KPiA+PiArICBHb29nbGUgVGVuc29yIFNvQ3MsIHN0YXJ0aW5nIHdpdGggdGhl
IEc1IGdlbmVyYXRpb24uCj4gPj4gKyAgVHdvIHNwZWNpZmljIFBIWSBJUHMgZnJvbSBTeW5vcHN5
cyBhcmUgaW50ZWdyYXRlZCwgaW5jbHVkaW5nIGVVU0IgMi4wIFBIWSBJUAo+ID4+ICsgIGFuZCBV
U0IgMy4yL0Rpc3BsYXlQb3J0IGNvbWJvIFBIWSBJUC4KPiA+PiArICBUaGUgaGFyZHdhcmUgY2Fu
IHN1cHBvcnQgdGhyZWUgUEhZIGludGVyZmFjZXMsIHdoaWNoIGFyZSBzZWxlY3RlZCB1c2luZyB0
aGUKPiA+PiArICBmaXJzdCBwaGFuZGxlIGFyZ3VtZW50IGluIHRoZSBQSFkgc3BlY2lmaWVyOjoK
PiA+Cj4gPiBKdXN0IG9uZSAnOicsIGFueXdheSB0aGlzIHNlbnRlbmNlIGFuZCBiZWxvdyBkb2Vz
IG5vdCBiZWxvbmcgdG8KPiA+IGRlc2NyaXB0aW9uIGJ1dCB0byBwaHktY2VsbHMuIFlvdSBkZXNj
cmliZSB0aGUgY2VsbHMuCj4gPgo+ID4gT3IganVzdCBtZW50aW9uIHRoZSBoZWFkZXIgd2l0aCBJ
RHMgLSBoZXJlIG9yIGluIHBoeS1jZWxscy4KPgo+Cj4gSWYgeW91IGdvIHdpdGggZnJlZS1mb3Jt
IHRleHQgZGVzY3JpcHRpb24gaW4gcGh5IGNlbGxzLCB0aGVuIHNvbWUKPiBleGFtcGxlIGNvdWxk
IGJlOgo+IHJlbmVzYXMscmNhci1nZW4yLXVzYi1waHkueWFtbAo+Cj4gRm9yIHRoZSBoZWFkZXIg
KGluIHRoaXMgY2FzZSBjbG9ja3MpOgo+IGRpc3BsYXkvbXNtL2RzaS1waHktY29tbW9uLnlhbWwK
Pgo+Cj4gQmVzdCByZWdhcmRzLAo+IEtyenlzenRvZgoKS3J6eXN6dG9mLAoKVGhhbmtzIGEgbG90
IGZvciBwcm92aWRpbmcgdGhlIHJlZmVyZW5jZSEKSSB3aWxsIGdvIHdpdGggdGhlIGZyZWUtZm9y
bSB0ZXh0IGRlc2NyaXB0aW9uIGluIHBoeSBjZWxscyBmb2xsb3dpbmcKcmVuZXNhcyxyY2FyLWdl
bjItdXNiLXBoeS55YW1sIGluIHRoZSBuZXh0IHZlcnNpb24uCgpUaGFua3MsClJveSBMdW8KCi0t
IApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
