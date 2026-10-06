Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52648CA5FFC
	for <linux-phy@archiver.kernel.org>; Tue,  6 Oct 2026 16:30:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eH/Rrht4zD0hceqWjClu1H6zEogiZe1UZ01ZenCEVdk=; b=NWbody3Dd+0Wgu
	T5nHzA0NVsBunib3btrtpilYufyKjNAVxkM6V1kgQpxBGayw9+OUXM9qlvUJfyqkVkW/ggufdiR5h
	6P+oDSXJBzwVJsCFL+HilPNQWnvR/yMBhTX8NQkBhGOBNgW9AQ8g0YlPJUbe8NXGFG+bqHC0shnta
	T+Pvs7TNJsmUm1mnJfHoqFm1ZVHQp2ck9e32+jtYjLYYyZ+NQqrAX7/+uyMgVXmFJZNyFS+7b7EMT
	6I4eNakVk+TBNDTruz+NxS3ALfTOGnD3B7WRBwvhO2Se3ARaRy2e87xalzgcxSohFkC8hkYnsKkXF
	YOfRJQbhtlwoDwzM+2fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xE83k-0000000192B-2Swy;
	Tue, 06 Oct 2026 16:30:32 +0000
Received: from mail-ej2-x0b.google.com ([2a00:1450:4864:34::b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xE83g-0000000190g-2eBp
	for linux-phy@lists.infradead.org;
	Tue, 06 Oct 2026 16:30:31 +0000
Received: by mail-ej2-x0b.google.com with SMTP id a640c23a62f3a-c2e25574351so193779466b.1
        for <linux-phy@lists.infradead.org>; Tue, 06 Oct 2026 09:30:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1791304227; cv=none;
        d=google.com; s=arc-20260327;
        b=C6AogEozKU9p0c5KU4jG0vIikZIsL5OMKdmQjRM3tRc7BAEjWEIW7AylnIl1PwnEYc
         F2jbZRnxCpInANn+eQ2Xl9SjxqpO/HqIFZ0pRhGFoJsx9QAURnxqmo3wBKhBAfca9Fid
         /RtQlsxxeE2EmY6BwxXikyXJ2pkrqubpx509e9IREn1G55bqJavPEAetskz/342r7vkm
         h+Mry+8mceQUzCONv9Nk/yxAjkxCbvuA85CIgDFjSClNhlRaTK8MMpm81fUAnwGC+sjq
         Y9unbAKL44+FEOQgY/uwLtqly4LK3f/EDL0OXAHXC9PMfcUwZuD2tlw/R8wUNmEOJr9v
         nj5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=74ooKafJysXOQ8/oYCK0iAifCQLvUBwaTgwQCS1kaLE=;
        fh=yaM6A9pEBzpyec85NceY8chIfjxY9hqY7rm6zRfBQXA=;
        b=HD2FHYgbkEU7J0fN7nEs1Nc7l067GKR3gTdODgN9rWfT0pFvC4vg4XbqxbjwReRMQF
         quHVlAZFU1b/qRjz/9dC46ftyQ6dF+HwNq88nOC7+rTtOXt82TmyVseItLea8rpDdQVR
         9b8OVNnkPCvRv7qXDJeNGC41NxJRZxt1aIZCfznSZL2rApUwCJ+y9o5TIxVdMOVqjw5r
         wpfreJ0iVCMpu/nWdSPd6b0znsB4NT+eL7377+Do5O8tzNFxhp5lGS+qX0q6rjZrq5Tz
         yJSUNRZNsWlbbzOE6GwrH4F0axU8QBZ7HpxBz3q37e+fkPfIpFb2mKZhZ1ZLTrbXxJgQ
         zD/Q==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791304226; x=1791909026; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=74ooKafJysXOQ8/oYCK0iAifCQLvUBwaTgwQCS1kaLE=;
        b=NKeULLwLoe0ww9rJWk6IJ7hGKgKuRFlCghATKK0ACpnn5LCsHhZJ2Fbth5bocXgjIJ
         n937J74DlhUND1VQeNiNzxbJ77EReiHPtad8t/kV/qGq9hbN82U9lMUAQN+1H6p3Gawr
         xukUUkgziSsELWArdKOcb8gum3fhkiQGe9pr49Pi/cn+UZ/bWewkZb0zda3KwwGlWT5W
         jVDmpejYo/PKPUk551sC7Dc4P45XeqYvOO+k1P356o3IZRh+A1h2qXcaa3Md/VcCfoY2
         pV4LIwp9UkrmYQxz9TzXjO/3C5ukWaDwn81uXHjFlBI7n2apCABwuig1SkdkaRVpNibq
         26qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791304226; x=1791909026;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=74ooKafJysXOQ8/oYCK0iAifCQLvUBwaTgwQCS1kaLE=;
        b=U3vUseiJ20NGnXHPwpRP2Yuf1d1Ds7cIZjbqQvlrQ9FJhvvatiVlhcd1okdQRNE43p
         3MkYOAJ0OSsu85B1oc2csgrCg029VFESEE/EavdepUsmBkQSEKHFQVAaStOmQT4vdNhW
         4AjmLD4V04Q2Nyu0NWEDeiQXhxjFwmHk63cwTKWqr9o5aMO+y4s3T/dnXcYkb7jhwmx5
         YiK/9fMKw03rH9rVPLcfj8WehBgDcmilErmqE3czeYBn5Zt2M+tMmeuCk6uwKuZ2IT7c
         OztUAA83Wk0M27BvM5tKnrtNg7OdWVotcjvXI3CYeF6yDGkuqg/cgP5uVJjY2Z5GsP6K
         dUHg==
X-Forwarded-Encrypted: i=1; AKwUvBzlD24b81J78uIoyrFRiLNwsS3T01ovsYsp8xYSkukf4aMKMdKn85GscPyBuzDnii/bieHbG2xulOg=@lists.infradead.org
X-Gm-Message-State: AFuF++kKH6sa8RAqLnsdfHGta5vMEKbgOoSQSzxOxheQu+BIjamQZH7s
	KUQKw4+ihyRMndyrqTVveW93lk7c8MPhxFbZhdOyFeCsYyDqZE5nFzGcMThom/L7YcXT9Z7aowd
	MduiXyxRZBPqehov7dB4SxaFqfzcGin8=
X-Gm-Gg: AYBFou1SG9Ltz1yMfJM0Op36WpdypUsXFOOsYosZOeXg7aE8YdgmkSsp4VJjxdjFjIN
	5fJLH++UwZ+f6vK73z5l+d+l2deXwcoQAXjAhmHo1Ak7hn3M+lN1pllo6lV1m84abB5iZ/oM4zu
	QPw873cW2WjlLxVM/QHRj9qUjzAtSUgRKEhoHNbciOcvK5WAUII17Gb8zYdNLm8W0uHk8reYuyF
	4le0wTzs4J+iYp5X9XClLpRoRJqetUfGqXhDw/sLOdk7T3sVJQidvrYEcJ1EL8Vh0anC4JlDlfG
	LBA2CiuS9/SqlWJK5+9zUuIXCWd0qOwiy/fN5mB7xtC80V3wM3s9cNn9Rw==
X-Received: by 2002:a17:907:944d:b0:c2a:fd39:f231 with SMTP id
 a640c23a62f3a-c2e6ed68303mr1020357266b.26.1791304226334; Tue, 06 Oct 2026
 09:30:26 -0700 (PDT)
MIME-Version: 1.0
References: <20261006074749.2010233-1-coiaprant@gmail.com> <20261006074749.2010233-3-coiaprant@gmail.com>
 <08736f4d-a728-4b1e-a28e-882648a412e0@rock-chips.com> <20261006161403.GA2469169-robh@kernel.org>
In-Reply-To: <20261006161403.GA2469169-robh@kernel.org>
From: Coia Prant <coiaprant@gmail.com>
Date: Wed, 7 Oct 2026 00:30:14 +0800
X-Gm-Features: AclHuK_1XvsTomk5pZfZ6KjwFLcu1GrCsrDj9BN4LAny9Xe_1QYEOW_C3FucYAs
Message-ID: <CALj3r0haEf-oGo3QW5XVaz_F=oTNX14PFs31Owkq+79Vb8qjVQ@mail.gmail.com>
Subject: Re: [PATCH v12 2/2] phy: rockchip: naneng-combphy: add SGMII MAC
 selection for RK3568
To: Rob Herring <robh@kernel.org>, Shawn Lin <shawn.lin@rock-chips.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Vinod Koul <vkoul@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261006_093028_702347_84E98735 
X-CRM114-Status: GOOD (  31.87  )
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

Um9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4g5LqOMjAyNuW5tDEw5pyIN+aXpeWRqOS4iSAw
MDoxNOWGmemBk++8mgo+Cj4gT24gVHVlLCBPY3QgMDYsIDIwMjYgYXQgMTA6NTM6MjJQTSArMDgw
MCwgU2hhd24gTGluIHdyb3RlOgo+ID4gSGkgQ29pYQo+ID4KPiA+IOWcqCAyMDI2LzEwLzA2IOaY
n+acn+S6jCAxNTo0NywgQ29pYSBQcmFudCDlhpnpgZM6Cj4gPiA+IE9uIFJLMzU2OCwgdGhlIFNH
TUlJIGludGVyZmFjZSBjYW4gYmUgcm91dGVkIHRvIGVpdGhlciBHTUFDMCBvcgo+ID4gPiBHTUFD
MSB2aWEgdGhlIEdSRiByZWdpc3RlciBwaXBlX3NnbWlpX21hY19zZWwuCj4gPiA+Cj4gPiA+IEFk
ZCBzdXBwb3J0IGZvciB0aGlzIHNlbGVjdGlvbiBieSBpbnRyb2R1Y2luZwo+ID4gPiB0aGUgInJv
Y2tjaGlwLHNnbWlpLW1hYy1zZWwiIERUIHByb3BlcnR5Lgo+ID4gPgo+ID4gPiAgRnJvbSB0aGUg
UkszNTY4IFRSTSAoUGFydDEsIFBhZ2UgMjI5KSwgdGhlIFBJUEVfR1JGX1hQQ1NfQ09OMAo+ID4g
PiBiaXQgMSAocGlwZV9zZ21paV9tYWNfc2VsKSBpcyBkZWZpbmVkIGFzOgo+ID4gPgo+ID4gPiAg
ICAgIDA6IFNHTUlJIHJvdXRlZCB0byBHTUFDMAo+ID4gPiAgICAgIDE6IFNHTUlJIHJvdXRlZCB0
byBHTUFDMQo+ID4gPgo+ID4gPiBUaGUgaGFyZHdhcmUgcmVzZXQgdmFsdWUgaXMgMSAoR01BQzEp
LiBJZiB0aGUgcHJvcGVydHkgaXMgc2V0IHRvIDAsCj4gPiA+IHRoZSBkcml2ZXIgcm91dGVzIFNH
TUlJIHRvIEdNQUMwOyBpZiBzZXQgdG8gMSAob3Igb21pdHRlZCksIGl0Cj4gPiA+IHJlbWFpbnMg
YXQgR01BQzEuCj4gPiA+Cj4gPgo+ID4gVGhhbmtzIGZvciB5b3VyIHBhdGNoLiBJIGhhdmUgYSBx
dWVzdGlvbiBiZWxvdywgcGxlYXNlIGhhdmUgYSBsb29rLgo+ID4KPiA+ID4gVGhpcyBpcyBuZWNl
c3NhcnkgZm9yIGJvYXJkcyBzdWNoIGFzIHRoZSBBcmlhYm9hcmQgUGhvdG9uaWNhdCwgd2hpY2gK
PiA+ID4gdXNlcyB0aGUgU0dNSUkgaW50ZXJmYWNlIGNvbm5lY3RlZCB0byBHTUFDMC4KPiA+ID4K
PiA+ID4gT3V0LW9mLXJhbmdlIHZhbHVlcyBhcmUgcmVqZWN0ZWQgYnkgZHRzY2hlbWEsIHNvIHRo
ZSBkcml2ZXIgZG9lcyBub3QKPiA+ID4gZHVwbGljYXRlIHRoZSByYW5nZSBjaGVjay4KPiA+ID4K
PiA+ID4gTGluazogaHR0cHM6Ly9kbC5yYWR4YS5jb20vcm9jazMvZG9jcy9ody9kYXRhc2hlZXQv
Um9ja2NoaXAlMjBSSzM1NjglMjBUUk0lMjBQYXJ0MSUyMFYxLjEtMjAyMTAzMDEucGRmIChQYWdl
IDIyOSkKPiA+ID4gU2lnbmVkLW9mZi1ieTogQ29pYSBQcmFudCA8Y29pYXByYW50QGdtYWlsLmNv
bT4KPiA+ID4gLS0tCj4gPiA+ICAgZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLW5h
bmVuZy1jb21icGh5LmMgfCA4ICsrKysrKysrCj4gPiA+ICAgMSBmaWxlIGNoYW5nZWQsIDggaW5z
ZXJ0aW9ucygrKQo+ID4gPgo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcm9ja2NoaXAv
cGh5LXJvY2tjaGlwLW5hbmVuZy1jb21icGh5LmMgYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHkt
cm9ja2NoaXAtbmFuZW5nLWNvbWJwaHkuYwo+ID4gPiBpbmRleCA3ODQzMzU2YTRkZDQ3Li43Yjg2
N2U3NTIwMDY0IDEwMDY0NAo+ID4gPiAtLS0gYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9j
a2NoaXAtbmFuZW5nLWNvbWJwaHkuYwo+ID4gPiArKysgYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9w
aHktcm9ja2NoaXAtbmFuZW5nLWNvbWJwaHkuYwo+ID4gPiBAQCAtMTg2LDYgKzE4Niw3IEBAIHN0
cnVjdCByb2NrY2hpcF9jb21icGh5X2dyZmNmZyB7Cj4gPiA+ICAgICBzdHJ1Y3QgY29tYnBoeV9y
ZWcgcGlwZV94cGNzX3BoeV9yZWFkeTsKPiA+ID4gICAgIHN0cnVjdCBjb21icGh5X3JlZyBwaXBl
X3BjaWUxbDBfc2VsOwo+ID4gPiAgICAgc3RydWN0IGNvbWJwaHlfcmVnIHBpcGVfcGNpZTFsMV9z
ZWw7Cj4gPiA+ICsgICBzdHJ1Y3QgY29tYnBoeV9yZWcgcGlwZV9zZ21paV9tYWNfc2VsOwo+ID4g
PiAgICAgc3RydWN0IGNvbWJwaHlfcmVnIHUzb3RnMF9wb3J0X2VuOwo+ID4gPiAgICAgc3RydWN0
IGNvbWJwaHlfcmVnIHUzb3RnMV9wb3J0X2VuOwo+ID4gPiAgIH07Cj4gPiA+IEBAIC0yMTIsNiAr
MjEzLDcgQEAgc3RydWN0IHJvY2tjaGlwX2NvbWJwaHlfcHJpdiB7Cj4gPiA+ICAgICBib29sIGVu
YWJsZV9zc2M7Cj4gPiA+ICAgICBib29sIGV4dF9yZWZjbGs7Cj4gPiA+ICAgICBzdHJ1Y3QgY2xr
ICpyZWZjbGs7Cj4gPiA+ICsgICB1MzIgc2dtaWlfbWFjX3NlbDsKPiA+ID4gICB9Owo+ID4gPiAg
IHN0YXRpYyB2b2lkIHJvY2tjaGlwX2NvbWJwaHlfdXBkYXRlbChzdHJ1Y3Qgcm9ja2NoaXBfY29t
YnBoeV9wcml2ICpwcml2LAo+ID4gPiBAQCAtMzc1LDYgKzM3Nyw5IEBAIHN0YXRpYyBpbnQgcm9j
a2NoaXBfY29tYnBoeV9wYXJzZV9kdChzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCByb2NrY2hp
cF9jb21icGh5Cj4gPiA+ICAgICBwcml2LT5leHRfcmVmY2xrID0gZGV2aWNlX3Byb3BlcnR5X3By
ZXNlbnQoZGV2LCAicm9ja2NoaXAsZXh0LXJlZmNsayIpOwo+ID4gPiArICAgcHJpdi0+c2dtaWlf
bWFjX3NlbCA9IDE7Cj4gPgo+ID4gQmVmb3JlIHRoaXMgcGF0Y2gsIFNHTU1JIHdhcyByb3V0ZWQg
dG8gR01BQ1ggZGVwZW5kcyBvbiBib290bG9hZGVyKGlmCj4gPiBzZXR0aW5nKSwgb3Igcm91dGVk
IHRvIEdNQUMxIGJ5IGNoaXAgZGVmYXVsdC4gV2l0aG91dCBrbm93aW5nIGFueQo+ID4gcG90ZW50
aWFsIGNhbmRpZGF0ZXMgc2V0dGluZyBpdCB2aWEgYm9vdGxvYWRlciwgeW91IG1pZ2h0IG5vdCBm
b3JjZSBhbnkKPiA+IERUUyBmaWxlcyB3aXRob3V0ICJyb2NrY2hpcCxzZ21paS1tYWMtc2VsIiB0
byBwaWNrIEdNQUMxIGFzIGZhbGxiYWNrLgo+ID4KPiA+IE1heWJlIHlvdSBjb3VsZCBqdXN0IGtl
ZXAgdGhlIFNHTUlJIHJvdXRlIGFzLWl0IGlmIHRoZSBwcm9wZXJ0eSBpcyBub3QKPiA+IHByZXNl
bnQuIE1lYW53aGlsZSwgc2hvdWxkIHZhbGlkYXRlIHJvY2tjaGlwLHNnbWlpLW1hYy1zZWwgaXMg
YSB2YWxpZAo+ID4gdmFsdWUgcGFzc2luZyBmcm9tIERULgo+Cj4gVGhhdCBpcyB0aGUgdHlwaWNh
bCB3YXkgdHJpLXN0YXRlIHByb3BlcnRpZXMgd29yayAoYXMgb3Bwb3NlZCB0byB1c2luZyBhCj4g
Ym9vbGVhbikuIEluIHRoYXQgY2FzZSwgbm8gJ2RlZmF1bHQnIGluIHRoZSBzY2hlbWEgd291bGQg
dGhlbiBiZQo+IGFwcHJvcHJpYXRlLgo+Cj4gUm9iCgpIaSBTaGF3biwgUm9iLAoKVGhhbmtzIGZv
ciB0aGUgcmV2aWV3IGFuZCBmZWVkYmFjay4gSSd2ZSBqdXN0IHBvc3RlZCB2MTMsIHdoaWNoIGFk
ZHJlc3Nlcwpib3RoIHBvaW50czoKCi0gVGhlIGRyaXZlciBubyBsb25nZXIgZm9yY2VzIEdNQUMx
IHdoZW4gdGhlIHByb3BlcnR5IGlzIGFic2VudDsgaXQKICBsZWF2ZXMgdGhlIHJvdXRpbmcgYXMt
aXMuCi0gVGhlIGRyaXZlciB2YWxpZGF0ZXMgdGhlIHZhbHVlIGFuZCByZWplY3RzIGFueXRoaW5n
IG90aGVyIHRoYW4gMCBvciAxLgotIFRoZSBiaW5kaW5nIGRyb3BzICdkZWZhdWx0Jywgc2luY2Ug
dGhlIHByb3BlcnR5IGlzIHRyaS1zdGF0ZS4KCkknbGwgYXZvaWQgcmVwbHlpbmcgdG8gZWFjaCBj
b21tZW50IGluZGl2aWR1YWxseSB0byBrZWVwIHRoZSB0aHJlYWQKY2xlYW4sIGJ1dCBwbGVhc2Ug
bGV0IG1lIGtub3cgaWYgYW55dGhpbmcgaXMgc3RpbGwgb2ZmLgoKVGhhbmtzLApDb2lhCgotLSAK
bGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
czovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
