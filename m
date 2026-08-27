Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7820C61DB9
	for <linux-phy@archiver.kernel.org>; Thu, 27 Aug 2026 06:13:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iKfaRNWxkPkh59WpK927McPDvvD1hLjYIkYZzdpz6hM=; b=JumbQ4PvqXw7nu
	4fZblSdEffUCh9vpf3rfUtITvFdOHnc4LQn9MfnRc2S4GxEsS3CR2aKEtrhpNsJMBD+lyphKYUHj9
	mlCBg+ifCq1hYYyu1rnoG2Ju2zlBNl2lyMtuIUAzJ05665jK1XxKuNy3d2xEnAyIgxqaUPogjV7YQ
	EhiNuncirzxmmTBhhHUFCSIlc+zv1ZD72Q/qKp7V/CG2FdUcnslobdEqDR/AjP0nBhoxRpdLIJaqE
	u77rWPgpzB4b9xjcXSnmDJtShzWg6oonhLRVEqFxB+e/HN+Y0Zol/8bUB6n6dOt2lA2qER9E6xHVy
	NiD+uTfBjurTVixBJ7Ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzTMn-00000003Srw-0LoM;
	Thu, 27 Aug 2026 06:13:37 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzTMk-00000003Sr5-1URl
	for linux-phy@lists.infradead.org;
	Thu, 27 Aug 2026 06:13:35 +0000
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-482e2fdf6ebso201196f8f.1
        for <linux-phy@lists.infradead.org>; Wed, 26 Aug 2026 23:13:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787811212; x=1788416012; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=+lMbggc8NhQwvUFDG+z6sVwFxEQ7RmYHvoRw1OoYWNQ=;
        b=RqmWJqKH97KVc8MLZcl8TtVii4vMk29BxFW4tgNQGUxIInjUBpO0iidtaBAW8yTWiX
         n3/ZOD+vi8q7qi83W3GLsRuKd2Sa8azXmgzxHR0oe/jlV20FRQsxHHnqy9PFsRxTmfsS
         CQNSxibmXxxQYRl0QmmMC0yhls0B3FePP1W1cIs2DQ96EdULkPpLajfeC0fOZu1ev4Co
         mkcH64rtYBCtj2FSiSy72RcBzt05xX7Hvz9s9uJnuTS/gzJlu/9dmO/6BCeA7kG0v1Ag
         Z1JIWqnAy/dn/L/4wmuBdGiIMPzaiOcEzK816wrLiX3KfwUmXKq7DP9BO5b1uekSW8LU
         zecg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787811212; x=1788416012;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=+lMbggc8NhQwvUFDG+z6sVwFxEQ7RmYHvoRw1OoYWNQ=;
        b=QgR5g/qC/hkH/fJEmQWmn3JHEKGr4zSlTTLLrVpmjJVJnW7LpvRLTutqCBBcgE4urT
         e1twmpiyUUEckeJ/Lgar/FOxEo1ScUyWHSRrMYZkS3EHc7Zg/Gda+mDmBFwy70TSF2l7
         D3S4moJREJHmG2XTIy2ImbRfv2KrgGdNE1oJP6a21pgdPY6xB0wQGt1c9iKV/pUe/5cr
         hWsfm8Lv2k8fScuQbthLBG8MJiSrcELinP5ragdhsaQFI1Jb+jhkv/Xai1Vzlq0TBK4H
         ASBzKsv9W4wqEIcZbvHaalC5fzRGtamnHITUwOPPqON9Rq+OlXOI+NSaQkLHep0Hz/ug
         XijQ==
X-Gm-Message-State: AFuF++keLz8ePFlSBqFE4sCVrrLZ5lTzewbQX17rmU+uzv2t6S25hCYU
	MrAuW685zlGfT5ZUh/pKW2hrPWxLT4fK8GVxjfi2REYKHbwh9pR2xYL8ujNC+Dz+
X-Gm-Gg: AR+sD11w9d2sCdloRgWtyEIShOKQsSEc3SmUcronIYO+TgP40CilLyHWp2mQtqbOIZ8
	98tjbgHZ15sGxqKjx917RWkUxCiXtfyhL0/o9NJOg7gnkZjjQGv41WNCue1fgYkzXLut4w2i3Pw
	FWcE7wEqFr3fNP0nvV2R/G0gPDLDz/WCKrq2Sv06aIr6osvFZ6nIFOXN87o12/bNKujGdlv9UDm
	ZQ49t6FKD6El8NhiiFTtB1YtZyPztcOYa9C4mgppgUFlPOTykN5AtpO3wpvuW1n30Ptf05hgKlF
	2DYpp1dvfo/itKUvw1y+OpJgYa8T7AoUthCNuYjRj27OKlibnXQ3N+40Hzha2IMTceIfbTUZhSe
	NKzuS291BmaLWHWpxqXX3U1OueaRbbBCUU62+Vn1aFZ5IYG8Y9yrfC1polD2SNWCXPJgT5ujnIB
	Xw0sq2UKL/7J2MTBtnpAe69lZwp0w1J4zp2b6TOpHh3xIuyQczHC0eLla3NNTdN5Y8ylAA2jHQ
X-Received: by 2002:a5d:6087:0:b0:47f:8f8f:db74 with SMTP id ffacd0b85a97d-482e26f16f4mr12397707f8f.12.1787811211362;
        Wed, 26 Aug 2026 23:13:31 -0700 (PDT)
Received: from [192.168.1.10] ([95.43.220.235])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-482e4f0c8f7sm6225688f8f.27.2026.08.26.23.13.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Aug 2026 23:13:30 -0700 (PDT)
Message-ID: <09b589a1-2661-4365-a87e-ebb871e52f0d@gmail.com>
Date: Thu, 27 Aug 2026 09:13:28 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: omap-usb2: add explicit PHY comparator API
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, Johan Hovold <johan@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260722053618.602702-1-ivo.g.dimitrov.75@gmail.com>
Content-Language: en-GB
From: Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>
In-Reply-To: <20260722053618.602702-1-ivo.g.dimitrov.75@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260826_231334_425096_FF196C2C 
X-CRM114-Status: GOOD (  23.77  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

R2VudGxlIHBpbmcgb24gdGhpcyBwYXRjaC4gSXQncyBiZWVuIGFib3V0IGZpdmUgd2Vla3Mgc2lu
Y2UgdjEsIGFuZCBJIApoYXZlbid0IHNlZW4gYW55IGZlZWRiYWNrIHlldC4KClRoZSBwYXRjaCBp
cyBzdGlsbCBhcHBsaWNhYmxlIHRvIGN1cnJlbnQgbGludXgtbmV4dC4gUGxlYXNlIGxldCBtZSBr
bm93IAppZiB0aGUgYXBwcm9hY2ggbG9va3MgcmVhc29uYWJsZSwgb3IgaWYgdGhlcmUgYXJlIGFu
eSBjb25jZXJucyBJIHNob3VsZCAKYWRkcmVzcy4KClRoYW5rcywKSXZvCgpPbiAyMi4wNy4yNiDQ
sy4gODozNiDRhy4sIEl2YXlsbyBEaW1pdHJvdiB3cm90ZToKPiBUaGUgZXhpc3Rpbmcgb21hcF91
c2IyX3NldF9jb21wYXJhdG9yKCkgQVBJIGxvY2F0ZXMgdGhlIE9NQVAgVVNCMiBQSFkKPiBpbnN0
YW5jZSBieSBjYWxsaW5nIHVzYl9nZXRfcGh5KFVTQl9QSFlfVFlQRV9VU0IyKSwgYXNzdW1pbmcg
dGhlcmUgaXMgYQo+IHNpbmdsZSBVU0IyIFBIWSByZWdpc3RlcmVkIGluIHRoZSBzeXN0ZW0uCj4g
Cj4gVGhpcyBhc3N1bXB0aW9uIG5vIGxvbmdlciBob2xkcyBvbiBzeXN0ZW1zIHdpdGggbXVsdGlw
bGUgVVNCMiBQSFkKPiBwcm92aWRlcnMuIEluIHN1Y2ggY2FzZXMsIHRoZSBnbG9iYWwgbG9va3Vw
IG1heSByZXR1cm4gYSBkaWZmZXJlbnQgVVNCMgo+IFBIWSBpbnN0YW5jZSwgY2F1c2luZyB0aGUg
T01BUCBkcml2ZXIgdG8gcGVyZm9ybSBhbiBpbnZhbGlkIGNvbnRhaW5lcl9vZigpCj4gY29udmVy
c2lvbiB3aGVuIGFjY2Vzc2luZyBpdHMgcHJpdmF0ZSBkYXRhLgo+IAo+IEludHJvZHVjZSBvbWFw
X3VzYjJfc2V0X3BoeV9jb21wYXJhdG9yKCksIGFsbG93aW5nIGNhbGxlcnMgdG8gZXhwbGljaXRs
eQo+IHNwZWNpZnkgdGhlIE9NQVAgVVNCMiBQSFkgaW5zdGFuY2UgdG8gYXNzb2NpYXRlIHdpdGgg
YSBwaHlfY29tcGFuaW9uLgo+IFRoZSBuZXcgaGVscGVyIHZhbGlkYXRlcyB0aGF0IHRoZSBzdXBw
bGllZCBVU0IgUEhZIGlzIGFuIE9NQVAgVVNCMiBQSFkKPiBiZWZvcmUgYWNjZXNzaW5nIGl0cyBw
cml2YXRlIGRhdGEuCj4gCj4gVGhlIGV4aXN0aW5nIG9tYXBfdXNiMl9zZXRfY29tcGFyYXRvcigp
IEFQSSBpcyBrZXB0IHVuY2hhbmdlZCBmb3IKPiBleGlzdGluZyB1c2Vycy4KPiAKPiAKPiBTaWdu
ZWQtb2ZmLWJ5OiBJdmF5bG8gRGltaXRyb3YgPGl2by5nLmRpbWl0cm92Ljc1QGdtYWlsLmNvbT4K
PiAtLS0KPiAgIGRyaXZlcnMvcGh5L3RpL3BoeS1vbWFwLXVzYjIuYyB8IDMyICsrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrCj4gICBpbmNsdWRlL2xpbnV4L3BoeS9vbWFwX3VzYi5oICAg
fCAgNyArKysrKysrCj4gICAyIGZpbGVzIGNoYW5nZWQsIDM5IGluc2VydGlvbnMoKykKPiAKPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvdGkvcGh5LW9tYXAtdXNiMi5jIGIvZHJpdmVycy9waHkv
dGkvcGh5LW9tYXAtdXNiMi5jCj4gaW5kZXggMWViMjUyNjA0NDQxLi5hYzMxYjY5M2ZjZTcgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvdGkvcGh5LW9tYXAtdXNiMi5jCj4gKysrIGIvZHJpdmVy
cy9waHkvdGkvcGh5LW9tYXAtdXNiMi5jCj4gQEAgLTcwLDYgKzcwLDggQEAgc3RydWN0IG9tYXBf
dXNiIHsKPiAgIAo+ICAgI2RlZmluZQlwaHlfdG9fb21hcHVzYih4KQljb250YWluZXJfb2YoKHgp
LCBzdHJ1Y3Qgb21hcF91c2IsIHBoeSkKPiAgIAo+ICtzdGF0aWMgaW50IG9tYXBfdXNiX3NldF9o
b3N0KHN0cnVjdCB1c2Jfb3RnICpvdGcsIHN0cnVjdCB1c2JfYnVzICpob3N0KTsKPiArCj4gICBz
dHJ1Y3QgdXNiX3BoeV9kYXRhIHsKPiAgIAljb25zdCBjaGFyICpsYWJlbDsKPiAgIAl1OCBmbGFn
czsKPiBAQCAtMTEzLDYgKzExNSwzNiBAQCBpbnQgb21hcF91c2IyX3NldF9jb21wYXJhdG9yKHN0
cnVjdCBwaHlfY29tcGFuaW9uICpjb21wYXJhdG9yKQo+ICAgfQo+ICAgRVhQT1JUX1NZTUJPTF9H
UEwob21hcF91c2IyX3NldF9jb21wYXJhdG9yKTsKPiAgIAo+ICsvKioKPiArICogb21hcF91c2Iy
X3NldF9waHlfY29tcGFyYXRvcigpIC0gYXNzb2NpYXRlIGEgY29tcGFyYXRvciB3aXRoIGFuIE9N
QVAgVVNCMiBQSFkKPiArICoKPiArICogQG9tYXBfcGh5OiBPTUFQIFVTQjIgUEhZIGluc3RhbmNl
Cj4gKyAqIEBjb21wYXJhdG9yOiBjb21wYW5pb24gUEhZIHByb3ZpZGluZyBjb21wYXJhdG9yIG9w
ZXJhdGlvbnMKPiArICoKPiArICogVGhlIHBoeSBjb21wYW5pb24gZHJpdmVyIHNob3VsZCBjYWxs
IHRoaXMgQVBJIHdpdGggdGhlIGNvbXBhbmlvbiBQSFkKPiArICogaW1wbGVtZW50YXRpb24gY29u
dGFpbmluZyB0aGUgY2FsbGJhY2tzIHJlcXVpcmVkIGJ5IEBvbWFwX3BoeS4KPiArICoKPiArICog
Rm9yIHVzZSBieSBwaHkgY29tcGFuaW9uIGRyaXZlcnMuCj4gKyAqLwo+ICtpbnQgb21hcF91c2Iy
X3NldF9waHlfY29tcGFyYXRvcihzdHJ1Y3QgdXNiX3BoeSAqb21hcF9waHksCj4gKwkJCQkgc3Ry
dWN0IHBoeV9jb21wYW5pb24gKmNvbXBhcmF0b3IpCj4gK3sKPiArCXN0cnVjdCBvbWFwX3VzYgkq
cGh5Owo+ICsKPiArCWlmICghb21hcF9waHkpCj4gKwkJcmV0dXJuIC1FSU5WQUw7Cj4gKwo+ICsJ
aWYgKFdBUk5fT04oIW9tYXBfcGh5LT5vdGcgfHwKPiArCQkgICAgb21hcF9waHktPm90Zy0+c2V0
X2hvc3QgIT0gb21hcF91c2Jfc2V0X2hvc3QpKQo+ICsJCXJldHVybiAtRUlOVkFMOwo+ICsKPiAr
CXBoeSA9IHBoeV90b19vbWFwdXNiKG9tYXBfcGh5KTsKPiArCXBoeS0+Y29tcGFyYXRvciA9IGNv
bXBhcmF0b3I7Cj4gKwo+ICsJcmV0dXJuIDA7Cj4gK30KPiArRVhQT1JUX1NZTUJPTF9HUEwob21h
cF91c2IyX3NldF9waHlfY29tcGFyYXRvcik7Cj4gKwo+ICAgc3RhdGljIGludCBvbWFwX3VzYl9z
ZXRfdmJ1cyhzdHJ1Y3QgdXNiX290ZyAqb3RnLCBib29sIGVuYWJsZWQpCj4gICB7Cj4gICAJc3Ry
dWN0IG9tYXBfdXNiICpwaHkgPSBwaHlfdG9fb21hcHVzYihvdGctPnVzYl9waHkpOwo+IGRpZmYg
LS1naXQgYS9pbmNsdWRlL2xpbnV4L3BoeS9vbWFwX3VzYi5oIGIvaW5jbHVkZS9saW51eC9waHkv
b21hcF91c2IuaAo+IGluZGV4IGUyM2I1MmRmOTNlYy4uOTZmOTc5MmM2Y2U2IDEwMDY0NAo+IC0t
LSBhL2luY2x1ZGUvbGludXgvcGh5L29tYXBfdXNiLmgKPiArKysgYi9pbmNsdWRlL2xpbnV4L3Bo
eS9vbWFwX3VzYi5oCj4gQEAgLTE1LDExICsxNSwxOCBAQAo+ICAgCj4gICAjaWYgZGVmaW5lZChD
T05GSUdfT01BUF9VU0IyKSB8fCBkZWZpbmVkKENPTkZJR19PTUFQX1VTQjJfTU9EVUxFKQo+ICAg
ZXh0ZXJuIGludCBvbWFwX3VzYjJfc2V0X2NvbXBhcmF0b3Ioc3RydWN0IHBoeV9jb21wYW5pb24g
KmNvbXBhcmF0b3IpOwo+ICtleHRlcm4gaW50IG9tYXBfdXNiMl9zZXRfcGh5X2NvbXBhcmF0b3Io
c3RydWN0IHVzYl9waHkgKm9tYXBfcGh5LAo+ICsJCQkJCXN0cnVjdCBwaHlfY29tcGFuaW9uICpj
b21wYXJhdG9yKTsKPiAgICNlbHNlCj4gICBzdGF0aWMgaW5saW5lIGludCBvbWFwX3VzYjJfc2V0
X2NvbXBhcmF0b3Ioc3RydWN0IHBoeV9jb21wYW5pb24gKmNvbXBhcmF0b3IpCj4gICB7Cj4gICAJ
cmV0dXJuIC1FTk9ERVY7Cj4gICB9Cj4gK3N0YXRpYyBpbmxpbmUgaW50IG9tYXBfdXNiMl9zZXRf
cGh5X2NvbXBhcmF0b3Ioc3RydWN0IHVzYl9waHkgKm9tYXBfcGh5LAo+ICsJCQkJCSAgICAgICBz
dHJ1Y3QgcGh5X2NvbXBhbmlvbiAqY29tcGFyYXRvcikKPiArewo+ICsJcmV0dXJuIC1FTk9ERVY7
Cj4gK30KPiAgICNlbmRpZgo+ICAgCj4gICAjZW5kaWYgLyogX19EUklWRVJTX09NQVBfVVNCX0gg
Ki8KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBo
eQo=
