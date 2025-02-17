Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 727EAC021A0
	for <linux-phy@archiver.kernel.org>; Mon, 17 Feb 2025 06:01:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F8K7/9UJ+do+ZDZa4B9/uL6YK4q60RbHai5aYDsfbRc=; b=vfKVraQO82JTUN
	/m0m/KKdo11HZnX0yiOVjsY7PEQYZz1qigtqIG/p7H41W6m5IENULyFL+JwwA5tqz3HPQOKhnsMtO
	C8iJEYvCCzDSC94gsnmv91PoBT3RAefStRYEaXN+BlSzn+K1ypSCsTTbQMvpwSKloNapAirNrsVFs
	O2g76OfuGjRz2WpGHn4cHs1RPDnshKuw9ICQUIQk8THBkKeISrOLZvmrwlRnVHgAoePaJ7wY4TBs9
	fd6z3kQTX+AT/miyEqtqU9E5X178qy7ieMw5NYiAt/3MH0hKpx07R2aesHe4aw9+O73IjYpL8nUva
	9dprIdBiHBIHsCx7xV3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tjuC8-00000003PyR-0LCi;
	Mon, 17 Feb 2025 06:01:28 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tjuAd-00000003PeI-2fr0
	for linux-phy@lists.infradead.org;
	Mon, 17 Feb 2025 05:59:58 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-43963935585so38788105e9.0
        for <linux-phy@lists.infradead.org>; Sun, 16 Feb 2025 21:59:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739771993; x=1740376793; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=SKNrAXFMRF1ydsmaXbtU5o3X4WRvqMlFPYNBXI8d+nE=;
        b=QWmh7v6J54Eu58/aCvu7uukwSlwXPU3KqBA8LoF3k/YenB31JlsmiQdn533BPRY0iW
         SR1BQdXzfQN1SnLCnbdxPb6zpWGP7QCvTbKwPIEVExrAb6J3tkF9avdD3wqGeISARk8C
         EJ98nzDJ0t00Wa5z4Xnq22HL8YWtG3xSKA51GaEgW936NSt0IZ3Y2RHGgBcI9BlnJ+PH
         GQT0iQqpNp3aNNfGWSZWN76keA0b5IsogX1h/4bKOyhU8JfjrQrE9hpLxs5yAWYKGHt7
         dK2PsqaunsFjKvNTI902yPnOW2PuCmxIx+Y7RzfyTb7ixqLECS+0zcT5pIIBRDEG9o3b
         zqfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739771993; x=1740376793;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SKNrAXFMRF1ydsmaXbtU5o3X4WRvqMlFPYNBXI8d+nE=;
        b=DuYNWv3YZPTd1B6RcEeE3QMUnpxJwQYRJIRScBfF8JIg9NfdaxzRPXcriUIi7TsEce
         C717GzvHVi62KJhLJeVnzYO4hbf1ZvjJ/tsOMmVsMhX/r1If8Xxppob80eC01AlNa50n
         ORKytgHVNu9ucAz8ga9GToSXfCABG4Lkwg8Gxd/DzXFx6woHPML8Xr5X8i28fRl64GHp
         gSTYDqNq6fvFDkmkM3UobFpGpuC0DGyFSjNl2JpTWg4yrLyQmBiQ4AMIDRUflBbfOvSs
         pTdmUnn4uOAiSLcFwoB5q3ypp0O6hAQUaK+0sAtjVVDABgy9j2n+zpXKZeI4rYFU7oEE
         OV6g==
X-Forwarded-Encrypted: i=1; AJvYcCUpqPj2vkI6YP0/plnT9MDysTZZtOzp1fVf0apRIta4teBMTyRSKooIEgGJfS6OjWL1k+FeGCwM20o=@lists.infradead.org
X-Gm-Message-State: AOJu0YxiV4bGbIoUKpSQcKWFewhGEzZaHive6Nftbzu7ZvjcHe92p97y
	v56+9VS1SDQuAAOuNuG1ZANSSMvlkrXD7Nvw6v8hWDn3WNyH4YKCo0AcIBwQXa0=
X-Gm-Gg: ASbGncufVkDtfvDZHMTHReQmg1dm0hElo+EMrqWH/WOvjpaPYCuvsXzkYPINLEgxrRL
	ZAjK4Ve2F8x22ETUShYU/mmww2MpkXALgV61kLGpgCgdlU8RICP1ka/58EinVATbYonwd20ea94
	prH/PNllr8zwVKh53637aKU4edmq78k9s1FZIJzbrIy9ecIuzVMPof9x1qL0C561qpO1kpyf+uW
	MXi3uGe/LyaC6Lc7H220MgJcQBRj93hglnxgd1QDB1nwUmX1tq37Ob1gcjD0t+zwXhudN47Kz3L
	r2gujqTv1E/Hf8vy+wE=
X-Google-Smtp-Source: AGHT+IHXacwvM4hwCgbWYgWUY/7LPCli/NI7dw475tRtNjJvs0k+XD4odztNdHIEn2nleZzsjkFFbw==
X-Received: by 2002:a05:600c:35c9:b0:439:5590:6d2f with SMTP id 5b1f17b1804b1-4396e6ab197mr74259555e9.12.1739771993191;
        Sun, 16 Feb 2025 21:59:53 -0800 (PST)
Received: from draszik.lan ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43989087517sm8102405e9.8.2025.02.16.21.59.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Feb 2025 21:59:52 -0800 (PST)
Message-ID: <88b00cc53cd5cb3682a29d6a2ec491c7640129ce.camel@linaro.org>
Subject: Re: [PATCH v2] phy: exynos5-usbdrd: Fix broken USB on Exynos5422
 (TYPEC dependency)
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Vinod Koul
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Krzysztof
 Kozlowski <krzk@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, Peter
 Griffin <peter.griffin@linaro.org>, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org
Cc: Marek Szyprowski <m.szyprowski@samsung.com>
Date: Mon, 17 Feb 2025 05:59:51 +0000
In-Reply-To: <20250216114136.245814-1-krzysztof.kozlowski@linaro.org>
References: <20250216114136.245814-1-krzysztof.kozlowski@linaro.org>
User-Agent: Evolution 3.52.2-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250216_215955_693497_3EDE7521 
X-CRM114-Status: GOOD (  22.36  )
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

SGkgS3J6eXN6dG9mLAoKT24gU3VuLCAyMDI1LTAyLTE2IGF0IDEyOjQxICswMTAwLCBLcnp5c3p0
b2YgS296bG93c2tpIHdyb3RlOgo+IE9sZGVyIEV4eW5vcyBkZXNpZ25zLCBsaWtlIEV4eW5vczU0
MjIsIGRvIG5vdCBoYXZlIFVTQiBUeXBlLUMgYW5kIHRoZQo+IFVTQiBEUkQgUEhZIGRvZXMgbm90
IHJlYWxseSBkZXBlbmQgb24gVHlwZS1DIGZvciB0aGVzZSBkZXZpY2VzIGF0IGFsbC4KPiBJbmNv
cnJlY3RseSBhZGRlZCBvcHRpb25hbCBkZXBlbmRlbmN5IG9uIENPTkZJR19UWVBFQyBjYXVzZWQg
dGhpcyBkcml2ZXIKPiB0byBiZSBtaXNzaW5nIGZvciBleHlub3NfZGVmY29uZmlnIGFuZCBhcyBy
ZXN1bHQgRXh5bm9zNTQyMi1iYXNlZCBib2FyZHMKPiBsaWtlIEhhcmRrZXJuZWwgT2Ryb2lkIEhD
MSBmYWlsZWQgdG8gcHJvYmUgVVNCLgo+IAo+IEhvd2V2ZXIgQVJNNjQgYm9hcmRzIHNob3VsZCBo
YXZlIENPTkZJR19UWVBFQyBlbmFibGVkIGFuZCBpbiBwcm9wZXIKPiBzdGF0ZSAoZS5nLiA9eSB3
aGVuIFBIWV9FWFlOT1M1X1VTQkRSRCBpcyA9eSkgZm9yIHByb3BlciBVU0Igc3VwcG9ydCBvbgo+
IEdvb2dsZSBHUzEwMSBib2FyZHMuCj4gCj4gQWRkIGl0ZXJtZWRpYXRlIENPTkZJR19QSFlfRVhZ
Tk9TNV9VU0JEUkRfVFlQRUMgc3ltYm9sIHRvIHNraXAgVFlQRUMgb24KPiBvbGRlciBib2FyZHMs
IHdoaWxlIHN0aWxsIGV4cHJlc3Npbmcgb3B0aW9uYWwgZGVwZW5kZW5jeS4KPiAKPiBSZXBvcnRl
ZC1ieTogS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6a0BrZXJuZWwub3JnPgo+IENsb3NlczogaHR0
cHM6Ly9rcnprLmV1LyMvYnVpbGRlcnMvMjEvYnVpbGRzLzYxMzkKPiBSZXBvcnRlZC1ieTogTWFy
ZWsgU3p5cHJvd3NraSA8bS5zenlwcm93c2tpQHNhbXN1bmcuY29tPgo+IENsb3NlczogaHR0cHM6
Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzNjMGI3N2U2LTM1N2QtNDUzZS04YjYzLTQ3NTdjMzIzMWJk
ZUBzYW1zdW5nLmNvbS8KPiBGaXhlczogMDlkYzY3NDI5NWEzICgicGh5OiBleHlub3M1LXVzYmRy
ZDogc3Vic2NyaWJlIHRvIG9yaWVudGF0aW9uIG5vdGlmaWVyIGlmIHJlcXVpcmVkIikKPiBTaWdu
ZWQtb2ZmLWJ5OiBLcnp5c3p0b2YgS296bG93c2tpIDxrcnp5c3p0b2Yua296bG93c2tpQGxpbmFy
by5vcmc+Cj4gCj4gLS0tCj4gCj4gUGF0Y2ggZm9yIGlzc3VlIGluIGxpbnV4LW5leHQKPiAKPiBD
aGFuZ2VzIGluIHYyOgo+IDEuIEFkZCBQSFlfRVhZTk9TNV9VU0JEUkRfVFlQRUMsIHNvIGFybTY0
IGRlZmNvbmZpZyB3aWxsIGhhdmUgYm90aAo+IMKgwqAgc3ltYm9scyBpbi1zeW5jCj4gLS0tCj4g
wqBkcml2ZXJzL3BoeS9zYW1zdW5nL0tjb25maWfCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8
IDEyICsrKysrKysrKysrLQo+IMKgZHJpdmVycy9waHkvc2Ftc3VuZy9waHktZXh5bm9zNS11c2Jk
cmQuYyB8wqAgMSArCj4gwqAyIGZpbGVzIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKyksIDEgZGVs
ZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvc2Ftc3VuZy9LY29uZmlnIGIv
ZHJpdmVycy9waHkvc2Ftc3VuZy9LY29uZmlnCj4gaW5kZXggN2ZiYTU3MWMwZTJiLi5iMjBhYzZi
NzU5OTMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvc2Ftc3VuZy9LY29uZmlnCj4gKysrIGIv
ZHJpdmVycy9waHkvc2Ftc3VuZy9LY29uZmlnCj4gQEAgLTc3LDEyICs3NywyMiBAQCBjb25maWcg
UEhZX1M1UFYyMTBfVVNCMgo+IMKgCcKgIHBhcnRpY3VsYXIgU29DIGlzIGNvbXBpbGVkIGluIHRo
ZSBkcml2ZXIuIEluIGNhc2Ugb2YgUzVQVjIxMCB0d28gcGh5cwo+IMKgCcKgIGFyZSBhdmFpbGFi
bGUgLSBkZXZpY2UgYW5kIGhvc3QuCj4gwqAKPiArIyBOb25lIG9mIEFSTTMyIFNhbXN1bmcgYm9h
cmRzIHVzZSBUeXBlLUMsIGhvd2V2ZXIgbmV3ZXIgQVJNNjQgZG8gYW5kCj4gKyMgUEhZX0VYWU5P
UzVfVVNCRFJEIGRyaXZlciBuZWVkcyBUWVBFQyB0byBiZSBpbiBhIG1hdGNoaW5nIHN0YXRlIHRv
IGF2b2lkIGxpbmsKPiArIyBmYWlsdXJlcyAoc2VlIG9wdGlvbmFsIGRlcGVuZGVuY2llcyBpbiBr
Y29uZmlnLWxhbmd1YWdlLnJzdCkuwqAgSW50ZXJtZWRpYXRlCj4gKyMgUEhZX0VYWU5PUzVfVVNC
RFJEX1RZUEVDIHN5bWJvbCBhbGxvd3MgdG8gc2tpcCBUWVBFQyBvbiBBUk0zMiBib2FyZHMuCj4g
K2NvbmZpZyBQSFlfRVhZTk9TNV9VU0JEUkRfVFlQRUMKPiArCXRyaXN0YXRlCj4gKwlkZXBlbmRz
IG9uIEFSQ0hfRVhZTk9TCj4gKwlkZXBlbmRzIG9uIEFSTSB8fCBUWVBFQyB8fCAhVFlQRUMKPiAr
CWRlZmF1bHQgeQo+ICsKPiDCoGNvbmZpZyBQSFlfRVhZTk9TNV9VU0JEUkQKPiDCoAl0cmlzdGF0
ZSAiRXh5bm9zNSBTb0Mgc2VyaWVzIFVTQiBEUkQgUEhZIGRyaXZlciIKPiDCoAlkZXBlbmRzIG9u
IChBUkNIX0VYWU5PUyAmJiBPRikgfHwgQ09NUElMRV9URVNUCj4gwqAJZGVwZW5kcyBvbiBIQVNf
SU9NRU0KPiAtCWRlcGVuZHMgb24gVFlQRUMgfHwgKFRZUEVDPW4gJiYgQ09NUElMRV9URVNUKQoK
SXMgaXQgbm90IHBvc3NpYmxlIHRvIGp1c3QgZHJvcCB0aGUgJyYmIENPTVBJTEVfVEVTVCcgcGFy
dCB0byBtYWtlCml0CiAgZGVwZW5kcyBvbiBUWVBFQyB8fCBUWVBFQz1uCm9yCiAgZGVwZW5kcyBv
biBUWVBFQyB8fCAhVFlQRUMKKHdpdGhvdXQgYW55IG9mIHRoZSBvdGhlciBjaGFuZ2VzKT8KCklm
IG5vdCwgd2h5IG5vdCwgYXJlIHRoZXJlIGNvcm5lciBjYXNlcyB0aGF0IGRvZXNuJ3QgY2F0Y2g/
IFNvbWUKbWluaW1hbCB0ZXN0aW5nIHNlZW1zIHRvIHN1Z2dlc3QgdGhhdCB0aGF0IHdvcmtzLCB0
b28uCgpDaGVlcnMsCkFuZHJlJwoKPiDCoAlkZXBlbmRzIG9uIFVTQl9EV0MzX0VYWU5PUwo+ICsJ
ZGVwZW5kcyBvbiBQSFlfRVhZTk9TNV9VU0JEUkRfVFlQRUMKPiDCoAlzZWxlY3QgR0VORVJJQ19Q
SFkKPiDCoAlzZWxlY3QgTUZEX1NZU0NPTgo+IMKgCWRlZmF1bHQgeQo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL3BoeS9zYW1zdW5nL3BoeS1leHlub3M1LXVzYmRyZC5jIGIvZHJpdmVycy9waHkvc2Ft
c3VuZy9waHktZXh5bm9zNS11c2JkcmQuYwo+IGluZGV4IGZmMjQzNmYxMWQ2OC4uNmQ1NzFkZmYy
ODk4IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5L3NhbXN1bmcvcGh5LWV4eW5vczUtdXNiZHJk
LmMKPiArKysgYi9kcml2ZXJzL3BoeS9zYW1zdW5nL3BoeS1leHlub3M1LXVzYmRyZC5jCj4gQEAg
LTE0NTYsNiArMTQ1Niw3IEBAIHN0YXRpYyBpbnQgZXh5bm9zNV91c2JkcmRfc2V0dXBfbm90aWZp
ZXJzKHN0cnVjdCBleHlub3M1X3VzYmRyZF9waHkgKnBoeV9kcmQpCj4gwqB7Cj4gwqAJaW50IHJl
dDsKPiDCoAo+ICsJLyogU2VlIENPTkZJR19QSFlfRVhZTk9TNV9VU0JEUkRfVFlQRUMgKi8KPiDC
oAlpZiAoIUlTX0VOQUJMRUQoQ09ORklHX1RZUEVDKSkKPiDCoAkJcmV0dXJuIDA7Cj4gwqAKCgot
LSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
