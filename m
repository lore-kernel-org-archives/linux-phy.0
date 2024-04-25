Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC98DC4345F
	for <linux-phy@archiver.kernel.org>; Thu, 25 Apr 2024 10:03:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2j/I5ZoM2UmA5ADDTh630rSYH+MKIBW312a5wo09cqo=; b=gH7weTF52JncRC
	5jGTB+m+GoSEs/Grx8DyJ/6b48uYFFBK0z7GZpCLXm30pPMeXLrlg8Q0BtQ/3u2NsaNr+cpBsyhvE
	hd+ueElKiHY1FE2SCNJZb/u0s8jke8lcj9VItRaPy+H/xJlyXhbEZ8ENmL1hjwY+9cAsBbDbtz2XQ
	m8/w0C9m334JMR4x38atjIHUa1UbaX++4fEswkDb/AWSAvrxjDO8NBKBnexVcYjAlDNuNTIYUL6NH
	xNVlkk6WJ1odkweMHzEd4pCJ1jRppsOlEx1lGMsxdqZdazUAMJL4hy7eT7gU9A35dtbXPsfUImR+l
	OrsPfhGYow7SYpfDO0KA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzvwV-00000007k4O-1ok6;
	Thu, 25 Apr 2024 10:03:03 +0000
Received: from mail-oo1-xc2a.google.com ([2607:f8b0:4864:20::c2a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzvwR-00000007k1j-2O4o
	for linux-phy@lists.infradead.org;
	Thu, 25 Apr 2024 10:03:00 +0000
Received: by mail-oo1-xc2a.google.com with SMTP id 006d021491bc7-5ad7737ae84so435770eaf.2
        for <linux-phy@lists.infradead.org>; Thu, 25 Apr 2024 03:02:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714039376; x=1714644176; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/gnBt8gXInHVRlCUsFfbFbS4v9SLD3jExUtd9bRhp9Y=;
        b=MgOPj5ORAifa/55QO2xC7Y6y0uxIpd3hS+mRlKWrucLJm4munaM3aGfW5nOnA1ea1+
         1f5QDl1y3LRCoGk+lIIXtJ8bbkx46dSSbyC9nIk2QSqZyUkmpAVwVJUk4tq0s7aBMyc5
         57/tz51l02QykvlglCnO8C4geUletxO6ohEXQS86GwQgIq/U0TZn8wY5PFmyP5Ap8DTv
         NXC/1lTJqSysNsLMe3V3ZmFg55J8ntm7gSUHlu4k9U8ehjIKxnuiaPxm9s90HznUUidZ
         wHSoGkNVpuvPXBv/LRmvxV187rVPlkNRw/VeUhmlO7csViU5fy7ZTZQf72dJz6LK5jUM
         8bUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714039376; x=1714644176;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/gnBt8gXInHVRlCUsFfbFbS4v9SLD3jExUtd9bRhp9Y=;
        b=qjsBmJtWifWzCmBvJd9EIi2XRiyqnSpQD8kfI1wkuduL/z+yOrVP7IGsHlIvVESAAJ
         +xRvNVJt+2if2a+3vW5h5sIpWTlO7VxTe94PaY2KS0v0IwRFgXYYLbu3SiEATCv1QaFe
         Kh5eYSiLHSAQcLhTZUngXzO9JCE46kRHLkzGcD3F4QVRBJMH4hQh8keLr0pKpWMnbTgb
         fuE+QQXkS9zFGqI8g3wmfR+dA//l/OOa0uZPKZfYqpD4g7V+LPklKvxizjdppzjFLmpf
         xcPdsVdfp2EGs05I087EqEauyn2Sbs6Mtuj7RIR4CMjAkd+0WqLhDvvww5sqcdcYZTfD
         TS8Q==
X-Forwarded-Encrypted: i=1; AJvYcCXJakyxfFItZu0fRokiBEuSE3YBf5dL5BbByo4TonKH9KKnMsh6ciFP7ahNccGQHJSns+oTfSlblSTQNh3+DDPggjkhsobA1hCM49g2bQ==
X-Gm-Message-State: AOJu0YyOQgpnJ9B4BqZrn6sCQjCFWfwu0w+Q+iZCYPi3JtrqRckdLp1v
	L6CJ/Okk31zHFJPQKUCnki6io7HTXghdhL4dPAmjROFd7sodx9J8xrnQX/IA9Dp3iLx48vlyuX/
	7O8nZk1704i0dyPJHCYDQeZouSYeTTLOSApM7XA==
X-Google-Smtp-Source: AGHT+IHTququzUXdRYxmWga6jdeEDyr8tuog6wuuZsVRVAyevBPEtWT5IgftQmigUcf+ViQMnx+u0aSVoD3jLYUNnZ8=
X-Received: by 2002:a4a:5103:0:b0:5a9:cef4:fcea with SMTP id
 s3-20020a4a5103000000b005a9cef4fceamr5787147ooa.1.1714039376342; Thu, 25 Apr
 2024 03:02:56 -0700 (PDT)
MIME-Version: 1.0
References: <20240423-usb-phy-gs101-v1-0-ebdcb3ac174d@linaro.org>
 <20240423-usb-phy-gs101-v1-2-ebdcb3ac174d@linaro.org> <cf7200d3-f60a-446b-b9cc-1f63e3c90740@linaro.org>
In-Reply-To: <cf7200d3-f60a-446b-b9cc-1f63e3c90740@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Thu, 25 Apr 2024 11:02:45 +0100
Message-ID: <CADrjBPpQEbxVbDwat1fn=2tYk9r-0up0+SARFZA=qkoeFYz1Mg@mail.gmail.com>
Subject: Re: [PATCH 2/7] phy: exynos5-usbdrd: use exynos_get_pmu_regmap_by_phandle()
 for PMU regs
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Arnd Bergmann <arnd@arndb.de>, lee@kernel.org
Cc: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Marek Szyprowski <m.szyprowski@samsung.com>, Sylwester Nawrocki <s.nawrocki@samsung.com>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Sam Protsenko <semen.protsenko@linaro.org>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Will McVicker <willmcvicker@google.com>, Roy Luo <royluo@google.com>, kernel-team@android.com, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240425_030259_618674_10CDEC09 
X-CRM114-Status: GOOD (  27.44  )
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

SGkgS3J6eXN6dG9mLAoKKyBBcm5kICYgTGVlIChzeXNjb24gbWFpbnRhaW5lcnMpCgpPbiBUaHUs
IDI1IEFwciAyMDI0IGF0IDA4OjQ3LCBLcnp5c3p0b2YgS296bG93c2tpCjxrcnp5c3p0b2Yua296
bG93c2tpQGxpbmFyby5vcmc+IHdyb3RlOgo+Cj4gT24gMjMvMDQvMjAyNCAxOTowNiwgQW5kcsOp
IERyYXN6aWsgd3JvdGU6Cj4gPiBTb21lIEV4eW5vcyBiYXNlZCBTb0NzIGxpa2UgVGVuc29yIGdz
MTAxIHByb3RlY3QgdGhlIFBNVSByZWdpc3RlcnMgZm9yCj4gPiBzZWN1cml0eSBoYXJkZW5pbmcg
cmVhc29ucyBzbyB0aGF0IHRoZXkgYXJlIG9ubHkgd3JpdGUgYWNjZXNzaWJsZSBpbgo+ID4gRUwz
IHZpYSBhbiBTTUMgY2FsbC4KPiA+Cj4gPiBUaGUgRXh5bm9zIFBNVSBkcml2ZXIgaGFuZGxlcyB0
aGlzIHRyYW5zcGFyZW50bHkgd2hlbiB1c2luZwo+ID4gZXh5bm9zX2dldF9wbXVfcmVnbWFwX2J5
X3BoYW5kbGUoKS4KPiA+Cj4gPiBTd2l0Y2ggdG8gdXNpbmcgdGhhdCBBUEkgdG8gc3VwcG9ydCBz
dWNoIFNvQ3MuIEFzIHRoaXMgZHJpdmVyIG5vdyBubwo+ID4gbG9uZ2VyIGRlcGVuZHMgb24gbWZk
IHN5c2NvbiByZW1vdmUgdGhhdCBoZWFkZXIgYW5kIEtjb25maWcgZGVwZW5kZW5jeS4KPiA+Cj4g
PiBTaWduZWQtb2ZmLWJ5OiBBbmRyw6kgRHJhc3ppayA8YW5kcmUuZHJhc3ppa0BsaW5hcm8ub3Jn
Pgo+ID4gLS0tCj4gPiAgZHJpdmVycy9waHkvc2Ftc3VuZy9LY29uZmlnICAgICAgICAgICAgICB8
IDEgLQo+ID4gIGRyaXZlcnMvcGh5L3NhbXN1bmcvcGh5LWV4eW5vczUtdXNiZHJkLmMgfCA0ICsr
LS0KPiA+ICAyIGZpbGVzIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkK
PiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvc2Ftc3VuZy9LY29uZmlnIGIvZHJpdmVy
cy9waHkvc2Ftc3VuZy9LY29uZmlnCj4gPiBpbmRleCBmMTBhZmEzZDdmZjUuLmJiNjNmYTcxMDgw
MyAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvcGh5L3NhbXN1bmcvS2NvbmZpZwo+ID4gKysrIGIv
ZHJpdmVycy9waHkvc2Ftc3VuZy9LY29uZmlnCj4gPiBAQCAtODIsNyArODIsNiBAQCBjb25maWcg
UEhZX0VYWU5PUzVfVVNCRFJECj4gPiAgICAgICBkZXBlbmRzIG9uIEhBU19JT01FTQo+ID4gICAg
ICAgZGVwZW5kcyBvbiBVU0JfRFdDM19FWFlOT1MKPiA+ICAgICAgIHNlbGVjdCBHRU5FUklDX1BI
WQo+ID4gLSAgICAgc2VsZWN0IE1GRF9TWVNDT04KPiA+ICAgICAgIGRlZmF1bHQgeQo+ID4gICAg
ICAgaGVscAo+ID4gICAgICAgICBFbmFibGUgVVNCIERSRCBQSFkgc3VwcG9ydCBmb3IgRXh5bm9z
IDUgU29DIHNlcmllcy4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9zYW1zdW5nL3BoeS1l
eHlub3M1LXVzYmRyZC5jIGIvZHJpdmVycy9waHkvc2Ftc3VuZy9waHktZXh5bm9zNS11c2JkcmQu
Ywo+ID4gaW5kZXggMDQxNzFlZWQ1YjE2Li5hYzIwOGI4OWY1YTYgMTAwNjQ0Cj4gPiAtLS0gYS9k
cml2ZXJzL3BoeS9zYW1zdW5nL3BoeS1leHlub3M1LXVzYmRyZC5jCj4gPiArKysgYi9kcml2ZXJz
L3BoeS9zYW1zdW5nL3BoeS1leHlub3M1LXVzYmRyZC5jCj4gPiBAQCAtMTgsOSArMTgsOSBAQAo+
ID4gICNpbmNsdWRlIDxsaW51eC9waHkvcGh5Lmg+Cj4gPiAgI2luY2x1ZGUgPGxpbnV4L3BsYXRm
b3JtX2RldmljZS5oPgo+ID4gICNpbmNsdWRlIDxsaW51eC9tdXRleC5oPgo+ID4gLSNpbmNsdWRl
IDxsaW51eC9tZmQvc3lzY29uLmg+Cj4gPiAgI2luY2x1ZGUgPGxpbnV4L3JlZ21hcC5oPgo+ID4g
ICNpbmNsdWRlIDxsaW51eC9yZWd1bGF0b3IvY29uc3VtZXIuaD4KPiA+ICsjaW5jbHVkZSA8bGlu
dXgvc29jL3NhbXN1bmcvZXh5bm9zLXBtdS5oPgo+ID4gICNpbmNsdWRlIDxsaW51eC9zb2Mvc2Ft
c3VuZy9leHlub3MtcmVncy1wbXUuaD4KPgo+IFRoaXMgaXMgZ2V0dGluZyBvdXQgb2YgaGFuZDog
c2hhbGwgd2UgZXhwZWN0IHRvIGNvbnZlcnQgYWxsIHRoZSBkcml2ZXJzCj4gZnJvbSBnZW5lcmlj
IHN5c2NvbiB0byBFeHlub3Mtc3BlY2lmaWMgQVBJPwoKSSB0aGluayBjZXJ0YWlubHkgZm9yIHRo
ZSB2YXJpb3VzIGV4eW5vcyBwaHkgKHVzYiwgdWZzLCBwY2llLCBtaXBpKQp0aGlzIGNoYW5nZSBp
cyByZXF1aXJlZC4gSSBjYW4gZG8gc29tZSBtb3JlIGNoZWNraW5nIHRvIHNlZSB3aGF0IG90aGVy
CmRyaXZlcnMgYXJlIHR3aWRkbGluZyBQTVUgYml0cyBkb3duc3RyZWFtLgoKPiBXaGF0IGlmIG9u
ZSBkcml2ZXIgaXMgc29tZQo+IHNoYXJlZCBJUCwgbGlrZSBEV0MgVVNCMyBjb250cm9sbGVyPwo+
Cj4gSSBhbHJlYWR5IGNvbW1lbnRlZCBvbiBHb29nbGUgaHdybmcgZHJpdmVyOgoKSSB0aGluayB5
b3UgbWVhbiBzeXNjb24tcG93ZXJvZmYgIGJ1dCBJIGdldCB5b3VyIHBvaW50LiBUaGUKc3lzY29u
LXJlYm9vdCAvIHBvd2Vyb2ZmIC8gcmVib290LW1vZGUgZHJpdmVycyBhcmUgZXhhbXBsZXMgb2Yg
ZHJpdmVycwp3aGVyZSB3ZSBtYXkgd2lzaCB0byB1c2UgdGhlbSwgYnV0IHRvZGF5IHdlIGNhbid0
IGFzIHRoZXkgYXJlIHVzaW5nCnN5c2Nvbl9yZWdtYXBfbG9va3VwX2J5X3BoYW5kbGUoKSBBUEku
Cgo+IEkgcHJlZmVyIHRvIGtlZXAgdGhlIHN5c2Nvbgo+IEFQSSBhbmQgY2hhbmdlIHRoZSBzeXNj
b24gZHJpdmVyIHRvIGV4cG9zZSBwcm9wZXIgcmVnbWFwLiBJT1csIHVzZQo+IGdlbmVyaWMgQVBJ
IHN5c2Nvbl9yZWdtYXBfbG9va3VwX2J5X3BoYW5kbGUoKSBhbmQgdGhlIHR5cGUgb2YgcmVnbWFw
Cj4gcmV0dXJuZWQgaXMgZGVmaW5lZCBieSB0aGUgcHJvdmlkZXIgKHNvIG5vZGUgcG9pbnRlZCBi
eSBwaGFuZGxlKS4KPgoKQEFybmQgLSBhbnkgbW9yZSB0aG91Z2h0cyBvbiBLcnp5c3p0b2YgaWRl
YSBhYm92ZSBeXgoKQEtyenlzenRvZiAtIEkgZGlkIHNwZWFrIHRvIEFybmQgYWJvdXQgdGhlIGlk
ZWEgeW91IHByb3Bvc2VkIChvciBteQp1bmRlcnN0YW5kaW5nIG9mIGl0IGF0IGxlYXN0KSwgd2hp
Y2ggd2FzIGV4dGVybmFsIGRyaXZlcnMgbGlrZQpleHlub3MtcG11IG9yIGFsdGVyYS1zeXNtZ3Iu
YyBjb3VsZCBjcmVhdGUgdGhlIHJlZ21hcCBhbmQgcmVnaXN0ZXIgaXQKd2l0aCBzeXNjb24gc28g
aXQgY2FuIGJlIHJldHVybmVkIGJ5CnN5c2Nvbl9yZWdtYXBfbG9va3VwX2J5X3BoYW5kbGUoKS4g
QXJuZCdzIGluaXRpYWwgZmVlZGJhY2sgd2FzIGhlCndvdWxkIHByZWZlciB0byBrZWVwIHRoZSBj
b21wbGV4aXR5IG91dCBvZiBzeXNjb24sIGFuZCBoYXZlIHRoZSBjbGllbnQKZHJpdmVyIHN1cHBv
cnQgbXVsdGlwbGUgYmFja2VuZHMgKHNvIHN5c2Nvbi1yZWJvb3QgZm9yIGV4YW1wbGUgd291bGQK
c3VwcG9ydCB1c2luZyBlaXRoZXIgc3lzY29uX3JlZ21hcF9sb29rdXBfYnlfcGhhbmRsZSgpIG9y
CmV4eW5vc19nZXRfcG11X3JlZ21hcF9ieV9waGFuZGxlKCkgdG8gb2J0YWluIGl0J3MgcmVnbWFw
KS4gVGhlcmUgd2VyZQphbHNvIHNvbWUgY29uY2VybnMgYWJvdXQgc3lzY29uIGhhdmluZyB0byBw
cm9iZSB2ZXJ5IGVhcmx5IGZvciBzb21lCnBsYXRmb3Jtcy4KClRoYW5rcywKClBldGVyLgoKLS0g
CmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
