Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C48A4E77170
	for <linux-phy@archiver.kernel.org>; Fri,  6 Dec 2024 00:04:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FPT8vY48Y/3x2Ox5qAJDloYbuixxdrgwQNDL/owvBnE=; b=kRtEGQeszI+xBm
	EslZtgT6wUsLKbH+DiWLEzlVCEQMGjMVFMthqjrhXzli0R6cc16sPquLb0LBUVqCL3ziLugfLI/Iz
	48AenZljF27aUfiTuOAIKPFPGh4k7/jpI7z5VgiC9WE/5WrQd9EWzGoVEotF9Do0Vp34BzejNinll
	0pM9nl4DXRkScf/wiayL4Z9morG6tfhJEU/XzWzZA5Y6llZJtNa0zFpNEn+BklGZ4cawnhTAlPUL2
	+E2zA4avoSRgQD6ffyskVLfdMZfVWQZqLVxrPOOp0acq7U13pzHYw9qWwWsFMBibhElZfYjeVm4Xl
	rYvjpwnYAlQxD+5KVldA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJLpj-000000001IC-2KCx;
	Fri, 06 Dec 2024 00:04:35 +0000
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJLph-000000001H2-2OSa
	for linux-phy@lists.infradead.org;
	Fri, 06 Dec 2024 00:04:34 +0000
Received: by mail-lj1-x22f.google.com with SMTP id 38308e7fff4ca-3001d009633so13744241fa.0
        for <linux-phy@lists.infradead.org>; Thu, 05 Dec 2024 16:04:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1733443471; x=1734048271; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ty80O3zcP5sqKHxyN7Pa4PvEryupRsClSqgrQkC4hu4=;
        b=CaA9di+hIUDV0ju0jyPDlIB42dSz1qcp5t+AR2MqXj/J2ILrNMSfvexeQ1oYKMcoXR
         QnuQBF0i+mLnhU+HNgBkpCpzxVJtBJCs7UN/7lUnisJMbRbdZBfd2Hx+Pirp4V2rMouf
         Hi8fToQBXDfbjHVebxL+41Cpz+ctRssSNOlExFu/AIX2PcsTibuR3kyv/hvSeildBI1v
         Cqq4BlFB/vrahWsajlAjdf1/CYEaTjJhcqcCl1pi2MsT0DXG1V9nidhkocy996CmFno5
         og0SWKyY/mkqfdrfeYvl54ItFIXiYbTIafjcqiWAPxynUti6ut7J+Ll1KiQxlEU/7ASW
         Kx4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733443471; x=1734048271;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ty80O3zcP5sqKHxyN7Pa4PvEryupRsClSqgrQkC4hu4=;
        b=TLNLtFpiNTwQ/QOH/G/TwN6YEO5ohxBAk2SfNr2zvNCwD4Q6roqWZSQJk2722Y/F1a
         SEx3aXcrlaipVKJMmHrG/sqRbi4bMDtNLfl1KL3HSfFBcKcb0LAdoKaVm9QKZThH0yYx
         dCKtC2SRol8xKtsxMEA1VG6YUI5RBlSkl/CYekuo2cHIwLWe2HNivu/bJuC5mDkZF3lL
         HB0aFWiWrqaZDeXbiAia8M4b/NkTOzx0fmHc2O0+l86fHqSqTmX41ysollUjdaO5RmZL
         uOZOnXgQQXn0I+/doIHc3JTCgY0phpCMoEHgp7MOOUXSDbZigY+uKAQf5RxDemov2Rle
         6EhQ==
X-Forwarded-Encrypted: i=1; AJvYcCWQvzvTcnxZkZFVuYYwUTQ62gZaEqbcpontB0+iB0L7Z768uweUJCvf5q6UZu4eO7Kdjp6wH12FWCI=@lists.infradead.org
X-Gm-Message-State: AOJu0YwxAYNIWbhJYen0cAZwsOdvIcbVXPICYbljgg6MjT1EtOi9DMYZ
	eJqrxj3M0R1S00lWA+56m6Z+Ig6hT5rHG7hcdIlG1hOSmnXDYqJLMryj1/7MtC6aGjhHwWGB+ms
	4rXw6Yl+Ra1pPAhx1eX7aEHbhdzxpY6E3qabI
X-Gm-Gg: ASbGnctuHoxiha9WWnF+6QSdTvuztlIdKHau/7NW4Hzs5RzkL6Kmqwwm8FqzSI4UyyE
	SF6kyah0iMFIx5ecRQ7XbwclIFzWzmQ==
X-Google-Smtp-Source: AGHT+IGWlM9OGtzjiB62Nm+XCJYbKxMdPKE02xF2kQ3bH+accJLYiyUrOBBi3t31hrUdhGH+VBOyjbTNxtoBv97yijw=
X-Received: by 2002:a2e:a10e:0:b0:2ff:cb09:ccbb with SMTP id
 38308e7fff4ca-3002f8c3e24mr2056461fa.10.1733443471249; Thu, 05 Dec 2024
 16:04:31 -0800 (PST)
MIME-Version: 1.0
References: <20241204221956.2249103-1-sashal@kernel.org> <20241204221956.2249103-2-sashal@kernel.org>
In-Reply-To: <20241204221956.2249103-2-sashal@kernel.org>
From: Saravana Kannan <saravanak@google.com>
Date: Thu, 5 Dec 2024 16:03:54 -0800
Message-ID: <CAGETcx-qHfLBCfoPX4sbysbMnObvLK_b4rNeJuPySfc8Gb8GEw@mail.gmail.com>
Subject: Re: [PATCH AUTOSEL 5.4 2/3] phy: tegra: xusb: Set fwnode for xusb
 port devices
To: Sasha Levin <sashal@kernel.org>
Cc: linux-kernel@vger.kernel.org, stable@vger.kernel.org, 
	Jon Hunter <jonathanh@nvidia.com>, 
	=?UTF-8?B?TsOtY29sYXMgRiAuIFIgLiBBIC4gUHJhZG8=?= <nfraprado@collabora.com>, 
	Thierry Reding <treding@nvidia.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, jckuo@nvidia.com, 
	vkoul@kernel.org, kishon@kernel.org, thierry.reding@gmail.com, 
	linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241205_160433_628975_44BF94A1 
X-CRM114-Status: GOOD (  17.08  )
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

T24gV2VkLCBEZWMgNCwgMjAyNCBhdCAzOjMx4oCvUE0gU2FzaGEgTGV2aW4gPHNhc2hhbEBrZXJu
ZWwub3JnPiB3cm90ZToKPgo+IEZyb206IFNhcmF2YW5hIEthbm5hbiA8c2FyYXZhbmFrQGdvb2ds
ZS5jb20+Cj4KPiBbIFVwc3RyZWFtIGNvbW1pdCA3NGZmZTQzYmFkM2FmM2UyYTc4NmNhMDE3YzIw
NTU1NWJhODdlYmFkIF0KPgo+IGZ3bm9kZSBuZWVkcyB0byBiZSBzZXQgZm9yIGEgZGV2aWNlIGZv
ciBmd19kZXZsaW5rIHRvIGJlIGFibGUgdG8KPiB0cmFjay9lbmZvcmNlIGl0cyBkZXBlbmRlbmNp
ZXMgY29ycmVjdGx5LiBXaXRob3V0IHRoaXMsIHlvdSdsbCBzZWUgZXJyb3IKPiBtZXNzYWdlcyBs
aWtlIHRoaXMgd2hlbiB0aGUgc3VwcGxpZXIgaGFzIHByb2JlZCBhbmQgdHJpZXMgdG8gbWFrZSBz
dXJlCj4gYWxsIGl0cyBmd25vZGUgY29uc3VtZXJzIGFyZSBsaW5rZWQgdG8gaXQgdXNpbmcgZGV2
aWNlIGxpbmtzOgo+Cj4gdGVncmEteHVzYi1wYWRjdGwgMzUyMDAwMC5wYWRjdGw6IEZhaWxlZCB0
byBjcmVhdGUgZGV2aWNlIGxpbmsgKDB4MTgwKSB3aXRoIDEtMDAwOAo+Cj4gUmVwb3J0ZWQtYnk6
IEpvbiBIdW50ZXIgPGpvbmF0aGFuaEBudmlkaWEuY29tPgo+IENsb3NlczogaHR0cHM6Ly9sb3Jl
Lmtlcm5lbC5vcmcvYWxsLzIwMjQwOTEwMTMwMDE5LjM1MDgxLTEtam9uYXRoYW5oQG52aWRpYS5j
b20vCj4gVGVzdGVkLWJ5OiBKb24gSHVudGVyIDxqb25hdGhhbmhAbnZpZGlhLmNvbT4KPiBTdWdn
ZXN0ZWQtYnk6IE7DrWNvbGFzIEYuIFIuIEEuIFByYWRvIDxuZnJhcHJhZG9AY29sbGFib3JhLmNv
bT4KPiBTaWduZWQtb2ZmLWJ5OiBTYXJhdmFuYSBLYW5uYW4gPHNhcmF2YW5ha0Bnb29nbGUuY29t
Pgo+IEFja2VkLWJ5OiBUaGllcnJ5IFJlZGluZyA8dHJlZGluZ0BudmlkaWEuY29tPgo+IExpbms6
IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAyNDEwMjQwNjEzNDcuMTc3MTA2My0zLXNhcmF2
YW5ha0Bnb29nbGUuY29tCj4gU2lnbmVkLW9mZi1ieTogR3JlZyBLcm9haC1IYXJ0bWFuIDxncmVn
a2hAbGludXhmb3VuZGF0aW9uLm9yZz4KPiBTaWduZWQtb2ZmLWJ5OiBTYXNoYSBMZXZpbiA8c2Fz
aGFsQGtlcm5lbC5vcmc+CgpBcyBtZW50aW9uZWQgaW4gdGhlIG9yaWdpbmFsIGNvdmVyIGxldHRl
cjoKClBTQTogRG8gbm90IHB1bGwgYW55IG9mIHRoZXNlIHBhdGNoZXMgaW50byBzdGFibGUga2Vy
bmVscy4gZndfZGV2bGluawpoYWQgYSBsb3Qgb2YgY2hhbmdlcyB0aGF0IGxhbmRlZCBpbiB0aGUg
bGFzdCB5ZWFyLiBJdCdzIGhhcmQgdG8gZW5zdXJlCmNoZXJyeS1waWNrcyBoYXZlIHBpY2tlZCB1
cCBhbGwgdGhlIGRlcGVuZGVuY2llcyBjb3JyZWN0bHkuIElmIGFueSBvZgp0aGVzZSByZWFsbHkg
bmVlZCB0byBnZXQgY2hlcnJ5LXBpY2tlZCBpbnRvIHN0YWJsZSBrZXJuZWxzLCBjYyBtZSBhbmQK
d2FpdCBmb3IgbXkgZXhwbGljaXQgQWNrLgoKSXMgdGhlcmUgYSBwcmVzc2luZyBuZWVkIGZvciB0
aGlzIGluIDQuMTk/CgotU2FyYXZhbmEKCj4gLS0tCj4gIGRyaXZlcnMvcGh5L3RlZ3JhL3h1c2Iu
YyB8IDIgKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0p
Cj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvdGVncmEveHVzYi5jIGIvZHJpdmVycy9waHkv
dGVncmEveHVzYi5jCj4gaW5kZXggZWZlN2FiZjQ1OWZkYS4uN2NmMjY5ODc5MWEwZiAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL3BoeS90ZWdyYS94dXNiLmMKPiArKysgYi9kcml2ZXJzL3BoeS90ZWdy
YS94dXNiLmMKPiBAQCAtNTIxLDcgKzUyMSw3IEBAIHN0YXRpYyBpbnQgdGVncmFfeHVzYl9wb3J0
X2luaXQoc3RydWN0IHRlZ3JhX3h1c2JfcG9ydCAqcG9ydCwKPgo+ICAgICAgICAgZGV2aWNlX2lu
aXRpYWxpemUoJnBvcnQtPmRldik7Cj4gICAgICAgICBwb3J0LT5kZXYudHlwZSA9ICZ0ZWdyYV94
dXNiX3BvcnRfdHlwZTsKPiAtICAgICAgIHBvcnQtPmRldi5vZl9ub2RlID0gb2Zfbm9kZV9nZXQo
bnApOwo+ICsgICAgICAgZGV2aWNlX3NldF9ub2RlKCZwb3J0LT5kZXYsIG9mX2Z3bm9kZV9oYW5k
bGUob2Zfbm9kZV9nZXQobnApKSk7Cj4gICAgICAgICBwb3J0LT5kZXYucGFyZW50ID0gcGFkY3Rs
LT5kZXY7Cj4KPiAgICAgICAgIGVyciA9IGRldl9zZXRfbmFtZSgmcG9ydC0+ZGV2LCAiJXMtJXUi
LCBuYW1lLCBpbmRleCk7Cj4gLS0KPiAyLjQzLjAKPgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
