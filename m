Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3105D6EBF1
	for <linux-phy@archiver.kernel.org>; Fri, 29 Nov 2024 09:46:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bki9goBt7AYhsYgaqtpcmgV4lS1/nSG8t3WnGMWIHV8=; b=zQgfDzoc9uxvod
	COzVaXfwZ5bQNKVjxhYfKX2eqpEjTllwADYi7Iz3n55VR397Y91S8WVLJX47zyTLAWFKos9Mcr8NM
	1HCxFvMxdyQujQkL+7N7lxTSvGV1Uw/e4Ar53TzhlLtl85d3Y+JdfgFX0ez0cAaD4NgYd08QoBMoZ
	r7vz9vk5F/tg+rLzKtRNsyyYOM/a09NYFboKdhsU9CgXIpvS91PNFTZQDjbdRMjVcfCXzqVqKXmbA
	UlAYfTs55nXBPR0HPSNuc2COKAciC4wR+tvJZIA0tF2s2n9tzB9j6PiWv5ijfGe6davL0qvXnGdPP
	flIva3SqGwfuFkU7CinQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGxaE-0000000HMVp-0z0h;
	Fri, 29 Nov 2024 09:46:42 +0000
Received: from mail-oo1-xc35.google.com ([2607:f8b0:4864:20::c35])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGxZF-0000000HMLe-17wO
	for linux-phy@lists.infradead.org;
	Fri, 29 Nov 2024 09:45:43 +0000
Received: by mail-oo1-xc35.google.com with SMTP id 006d021491bc7-5ee645cf763so664594eaf.2
        for <linux-phy@lists.infradead.org>; Fri, 29 Nov 2024 01:45:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732873540; x=1733478340; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=v/VnXj0xSm64G+xnhmGLSxnRi7eiVgvL2X5pSK2r9No=;
        b=zGxWLg0KT9Kscm64NReQg+P8t0M5kErDOxi7VMgWcNqNMQOFJHuxyEydWatLYdo3cJ
         szefIY+hIyWHRW+MsmiBjiYFTjmXE4kraxrLgDEhvFICZqHprE87EChzEgGVfQotfTwg
         iwayEGrZVB/HRjoiVPcUtvQEZUjMeUasahz+ZF4MhkNAQU3uB50Lk0hKn1r2q0HWzLI2
         pLLhFuh9pJ+X1OZnr/AKLfEqTe8af2mB62Bxsstrx/PL1KesI/Wx+lzOWhPYMKCK/Zcn
         2ZQK4rb4kg/w1bUFOho9zpBqDkk5YtbR9Ke0OEISpJa3lcpvPzLRc6Dv0iW86SNkPxi8
         xoug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732873540; x=1733478340;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=v/VnXj0xSm64G+xnhmGLSxnRi7eiVgvL2X5pSK2r9No=;
        b=gU6Ae/xUcRIdtvs37+CZBeJFUviriTYp+4PPR7G7KBG2kYh+Wv4XrAnI/6chdMqrTP
         zyeO3YuOpm5c6+xYsVzW1bFeDePeJa2fFaoEGkbSBzfXhBbX93ElVneil1G9WsJlxxpX
         7t6fngJ1AIvYlziv11IUBdSv6KtxU1zFooT+BH1l+Fy7RDcauRAQ10RNMTN0ZyHHc03o
         OD9/Gc887+vriXK6SolzTq6jW85bPkHgxRjNTKqozSjj0Srg/4Eu5zf+Fl88Mzwjm3tl
         3E6pR5gyw7ntWIWEP9ZE8iN/ZF7Do7dAt3ZeScmr8wvFp6WI+YxkG6NSkFWPZ0pY4Nbn
         bEKw==
X-Forwarded-Encrypted: i=1; AJvYcCVVav6wTDgPF2PR3/gmrr4Wola9DXN/PJTK9t7SXNrgpRWcQ8O+QckacQm1GzjvQgZ5dJheuFIoTDc=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw4D5mygUsufXXHAJ+q+YyKQ8/kuSE2hzj4pEEDpNNhnyYBlZrZ
	Q7erMRfyLPO7Izk6ZSdtzAPxNVWgpGRWHVf+DXjlb4h6rxRAu8LSZu0PK0eA8WdqPB8aPYNCqjH
	Dd5ARRB7mAl7tBu09FKlITqqTHfc9hGCrHEf+cg==
X-Gm-Gg: ASbGncuw67d9aHEgt1ooQ7xdy/Z6TPe4t4YakofwdmHOCDI0N2byGZQZMF15/Sw3EXm
	/GxxLKw6wiDLqGkGzHq28RM/XSGanQb3c
X-Google-Smtp-Source: AGHT+IHnxS6dF7DDI6r75yOFHU8KPB1OwTru3sBOUtig1dAA1cBoVlmH0MuchExTRQ+k+9Oap9bXnNBRkMu1gCqUvYY=
X-Received: by 2002:a05:6820:2183:b0:5ee:ebcb:e6e9 with SMTP id
 006d021491bc7-5f20a168f5cmr5503129eaf.5.1732873540094; Fri, 29 Nov 2024
 01:45:40 -0800 (PST)
MIME-Version: 1.0
References: <20241127-gs101-phy-lanes-orientation-phy-v1-0-1b7fce24960b@linaro.org>
 <20241127-gs101-phy-lanes-orientation-phy-v1-7-1b7fce24960b@linaro.org>
In-Reply-To: <20241127-gs101-phy-lanes-orientation-phy-v1-7-1b7fce24960b@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Fri, 29 Nov 2024 09:45:29 +0000
Message-ID: <CADrjBPpZgmE-rwRmbB3BFAL+s0G0rwBiPJ-ZMEVF8BNQ=tviVg@mail.gmail.com>
Subject: Re: [PATCH 7/9] phy: exynos5-usbdrd: gs101: configure SS lanes based
 on orientation
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Marek Szyprowski <m.szyprowski@samsung.com>, Sylwester Nawrocki <s.nawrocki@samsung.com>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Sam Protsenko <semen.protsenko@linaro.org>, Will McVicker <willmcvicker@google.com>, 
	Roy Luo <royluo@google.com>, kernel-team@android.com, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241129_014541_316736_86FF395D 
X-CRM114-Status: GOOD (  23.83  )
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

SGkgQW5kcsOpLAoKT24gV2VkLCAyNyBOb3YgMjAyNCBhdCAxMDo1OCwgQW5kcsOpIERyYXN6aWsg
PGFuZHJlLmRyYXN6aWtAbGluYXJvLm9yZz4gd3JvdGU6Cj4KPiBVU0IgU1MgbGFuZXMgbmVlZCB0
byBiZSBjb25maWd1cmVkIGJhc2VkIHRoZSBjb25uZWN0b3Igb3JpZW50YXRpb24gLQoKc21hbGwg
bml0OiAiYmFzZWQgdGhlIiAtPiAiYmFzZWQgb24gdGhlIgoKPiBhdCBtb3N0IHR3byBsYW5lcyB3
aWxsIGJlIGluIHVzZSBmb3IgVVNCIChhbmQgdGhlIHJlbWFpbmluZyB0d28gZm9yCj4gYWx0ZXJu
YXRlIG1vZGVzIGxpa2UgRFApLgo+Cj4gRm9yIHRoZSBVU0IgbGluayB0byBjb21lIHVwIGluIFNT
LCB0aGUgbGFuZSBjb25maWd1cmF0aW9uIHJlZ2lzdGVycwo+IGhhdmUgdG8gYmUgcHJvZ3JhbW1l
ZCBhY2NvcmRpbmdseS4KPgo+IFdoaWxlIHdlIHN0aWxsIG5lZWQgYSB3YXkgdG8gYmUgbm90aWZp
ZWQgb2YgdGhlIGFjdHVhbCBjb25uZWN0b3IKPiBvcmllbnRhdGlvbiBhbmQgdGhlbiByZXByb2dy
YW0gdGhlIHJlZ2lzdGVycyBhY2NvcmRpbmdseSAoYXQgdGhlIG1vbWVudAo+IHRoZSBjb25maWd1
cmF0aW9uIGhhcHBlbnMganVzdCBvbmNlIGR1cmluZyBwaHlfaW5pdCgpIGFuZCBuZXZlciBhZ2Fp
biksCj4gd2UgY2FuIHByZXBhcmUgdGhlIGNvZGUgZG9pbmcgdGhlIGNvbmZpZ3VyYXRpb24gdG8g
dGFrZSB0aGUgb3JpZW50YXRpb24KPiBpbnRvIGFjY291bnQuCj4KPiBEbyBzby4KPgo+IE5vdGU6
IHRoZSBtdXRleCBpcyBuZWVkZWQgdG8gc3luY2hyb25pemUgdGhpcyB3aXRoIHRoZSB1cGNvbWlu
Zwo+IGNvbm5lY3RvciBvcmllbnRhdGlvbiBjYWxsYmFjay4KPgo+IFNpZ25lZC1vZmYtYnk6IEFu
ZHLDqSBEcmFzemlrIDxhbmRyZS5kcmFzemlrQGxpbmFyby5vcmc+Cj4gLS0tCj4gIGRyaXZlcnMv
cGh5L3NhbXN1bmcvcGh5LWV4eW5vczUtdXNiZHJkLmMgfCA3MiArKysrKysrKysrKysrKysrKysr
KysrLS0tLS0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgNTEgaW5zZXJ0aW9ucygrKSwgMjEgZGVs
ZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvc2Ftc3VuZy9waHktZXh5bm9z
NS11c2JkcmQuYyBiL2RyaXZlcnMvcGh5L3NhbXN1bmcvcGh5LWV4eW5vczUtdXNiZHJkLmMKPiBp
bmRleCBjMWNlNmZkZWVmMzEuLjFhMzRlOWI0NjE4YSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3Bo
eS9zYW1zdW5nL3BoeS1leHlub3M1LXVzYmRyZC5jCj4gKysrIGIvZHJpdmVycy9waHkvc2Ftc3Vu
Zy9waHktZXh5bm9zNS11c2JkcmQuYwo+IEBAIC0yMyw2ICsyMyw3IEBACj4gICNpbmNsdWRlIDxs
aW51eC9yZWdtYXAuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L3JlZ3VsYXRvci9jb25zdW1lci5oPgo+
ICAjaW5jbHVkZSA8bGludXgvc29jL3NhbXN1bmcvZXh5bm9zLXJlZ3MtcG11Lmg+Cj4gKyNpbmNs
dWRlIDxsaW51eC91c2IvdHlwZWNfbXV4Lmg+Cj4KPiAgLyogRXh5bm9zIFVTQiBQSFkgcmVnaXN0
ZXJzICovCj4gICNkZWZpbmUgRVhZTk9TNV9GU0VMXzlNSFo2ICAgICAgICAgICAgIDB4MAo+IEBA
IC0yMDksNiArMjEwLDEwIEBACj4KPiAgI2RlZmluZSBFWFlOT1M5X1BNQV9VU0JEUF9DTU5fUkVH
MDBCOCAgICAgICAgICAweDAyZTAKPiAgI2RlZmluZSBDTU5fUkVHMDBCOF9MQU5FX01VWF9TRUxf
RFAgICAgICAgICAgICBHRU5NQVNLKDMsIDApCj4gKyNkZWZpbmUgQ01OX1JFRzAwQjhfTEFORV9N
VVhfU0VMX0RQX0xBTkUzICAgICAgQklUKDMpCj4gKyNkZWZpbmUgQ01OX1JFRzAwQjhfTEFORV9N
VVhfU0VMX0RQX0xBTkUyICAgICAgQklUKDIpCj4gKyNkZWZpbmUgQ01OX1JFRzAwQjhfTEFORV9N
VVhfU0VMX0RQX0xBTkUxICAgICAgQklUKDEpCj4gKyNkZWZpbmUgQ01OX1JFRzAwQjhfTEFORV9N
VVhfU0VMX0RQX0xBTkUwICAgICAgQklUKDApCj4KPiAgI2RlZmluZSBFWFlOT1M5X1BNQV9VU0JE
UF9DTU5fUkVHMDFDMCAgICAgICAgICAweDA3MDAKPiAgI2RlZmluZSBDTU5fUkVHMDFDMF9BTkFf
TENQTExfTE9DS19ET05FICAgICAgICAgICAgICAgIEJJVCg3KQo+IEBAIC0zODMsMTEgKzM4OCwx
MyBAQCBzdHJ1Y3QgZXh5bm9zNV91c2JkcmRfcGh5X2RydmRhdGEgewo+ICAgKiBAY2xrczogY2xv
Y2tzIGZvciByZWdpc3RlciBhY2Nlc3MKPiAgICogQGNvcmVfY2xrczogY29yZSBjbG9ja3MgZm9y
IHBoeSAocmVmLCBwaXBlMywgdXRtaSssIElUUCwgZXRjLiBhcyByZXF1aXJlZCkKPiAgICogQGRy
dl9kYXRhOiBwb2ludGVyIHRvIFNvQyBsZXZlbCBkcml2ZXIgZGF0YSBzdHJ1Y3R1cmUKPiArICog
QHBoeV9tdXRleDogbXV0ZXggcHJvdGVjdGluZyBwaHlfaW5pdC9leGl0ICYgVENQQyBjYWxsYmFj
a3MKPiAgICogQHBoeXM6IGFycmF5IGZvciAnRVhZTk9TNV9EUkRQSFlTX05VTScgbnVtYmVyIG9m
IFBIWQo+ICAgKiAgICAgICAgIGluc3RhbmNlcyBlYWNoIHdpdGggaXRzICdwaHknIGFuZCAncGh5
X2NmZycuCj4gICAqIEBleHRyZWZjbGs6IGZyZXF1ZW5jeSBzZWxlY3Qgc2V0dGluZ3Mgd2hlbiB1
c2luZyAnc2VwYXJhdGUKPiAgICogICAgICAgICAgICByZWZlcmVuY2UgY2xvY2tzJyBmb3IgU1Mg
YW5kIEhTIG9wZXJhdGlvbnMKPiAgICogQHJlZ3VsYXRvcnM6IHJlZ3VsYXRvcnMgZm9yIHBoeQo+
ICsgKiBAb3JpZW50YXRpb246IFR5cGVDIGNvbm5lY3RvciBvcmllbnRhdGlvbiAtIG5vcm1hbCBv
ciBmbGlwcGVkCj4gICAqLwo+ICBzdHJ1Y3QgZXh5bm9zNV91c2JkcmRfcGh5IHsKPiAgICAgICAg
IHN0cnVjdCBkZXZpY2UgKmRldjsKPiBAQCAtMzk3LDYgKzQwNCw3IEBAIHN0cnVjdCBleHlub3M1
X3VzYmRyZF9waHkgewo+ICAgICAgICAgc3RydWN0IGNsa19idWxrX2RhdGEgKmNsa3M7Cj4gICAg
ICAgICBzdHJ1Y3QgY2xrX2J1bGtfZGF0YSAqY29yZV9jbGtzOwo+ICAgICAgICAgY29uc3Qgc3Ry
dWN0IGV4eW5vczVfdXNiZHJkX3BoeV9kcnZkYXRhICpkcnZfZGF0YTsKPiArICAgICAgIHN0cnVj
dCBtdXRleCBwaHlfbXV0ZXg7Cj4gICAgICAgICBzdHJ1Y3QgcGh5X3VzYl9pbnN0YW5jZSB7Cj4g
ICAgICAgICAgICAgICAgIHN0cnVjdCBwaHkgKnBoeTsKPiAgICAgICAgICAgICAgICAgdTMyIGlu
ZGV4Owo+IEBAIC00MDYsNiArNDE0LDggQEAgc3RydWN0IGV4eW5vczVfdXNiZHJkX3BoeSB7Cj4g
ICAgICAgICB9IHBoeXNbRVhZTk9TNV9EUkRQSFlTX05VTV07Cj4gICAgICAgICB1MzIgZXh0cmVm
Y2xrOwo+ICAgICAgICAgc3RydWN0IHJlZ3VsYXRvcl9idWxrX2RhdGEgKnJlZ3VsYXRvcnM7Cj4g
Kwo+ICsgICAgICAgZW51bSB0eXBlY19vcmllbnRhdGlvbiBvcmllbnRhdGlvbjsKCnR5cGVjX29y
aWVudGF0aW9uIGlzIGRlZmluZWQgaW4gI2luY2x1ZGUgPGxpbnV4L3VzYi90eXBlYy5oPiBzbyBp
dApzaG91bGQgYmUgYWRkZWQgdG8gdGhlIGluY2x1ZGVzCgpBcGFydCBmcm9tIHRoYXQKClJldmll
d2VkLWJ5OiBQZXRlciBHcmlmZmluIDxwZXRlci5ncmlmZmluQGxpbmFyby5vcmc+ClRlc3RlZC1i
eTogUGV0ZXIgR3JpZmZpbiA8cGV0ZXIuZ3JpZmZpbkBsaW5hcm8ub3JnPgoKVmFsaWRhdGVkIHRo
YXQgYSBzdXBlci1zcGVlZCBVU0IgbGluayBpcyBlc3RhYmxpc2hlZCBiZXR3ZWVuIFBpeGVsIDYK
cGhvbmUgYW5kIG15IGxhcHRvcCB3aXRoIHRoaXMgcGF0Y2ggYXBwbGllZCBhbmQgdGhhdCBhZGIg
d29ya3MuCgpyZWdhcmRzLAoKUGV0ZXIKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4
LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
