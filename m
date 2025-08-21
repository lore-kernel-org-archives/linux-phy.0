Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D88ACA0EED
	for <linux-phy@archiver.kernel.org>; Fri, 22 Aug 2025 03:40:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q40+ThXlDphQtcgXUPmO4u2yjOmUR8YwubrdnlnzEIg=; b=30lRaCauddLsJX
	g3SHm6aBuAP0YnK7s8t8KJRJVufFLw0xIiPa6G7Aimd+HjedGd8oezA+CmHgUgqCJ2vLpMkTakZiB
	E8Ht5rc/H/nI67bTIsDHd8pPEbZ0GiTEBy+fIt7jyb42qZcnCQPwx4NVeqDJHBwzNXyfQaD+dwki/
	MDe0PXhNreUxu8r6XdY0JdJWbaAZSfiNIfj3KLuJYhZ6Uo2CAHSnxXxGGhIgDrYnfqY/jaVm//A7T
	vfSVb+kifqDwhlpc9jxmt0FtxGt6NfjCUECwAsGDYdvsEl6W+C3OXFtxQw1483+cwg+0I8GDqRJUP
	pPP4KF4OStYC5OVteJ3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upIdS-00000001Pwi-1ITg;
	Fri, 22 Aug 2025 03:40:14 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upEGu-00000000sx3-3bbJ;
	Thu, 21 Aug 2025 23:00:42 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 382C45C60F9;
	Thu, 21 Aug 2025 23:00:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DA4D0C113D0;
	Thu, 21 Aug 2025 23:00:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755817239;
	bh=7rA8qT8sloOt+Gomxv3Dk1liyMq9TmAjnM4+H4zgnNg=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=ZtagFIkRBhoOh73FBc0x7ALmgqNspRrbh6BmuUp6WEuXtyEux8yoMDvLnF7mWh4gZ
	 PXE49H392eRD9iyygMGGk/bRgRh/3fIq9WybGzxcJ58hueOJpf08zGfKgyhyKwv5fK
	 GSt5FuGAcA+rlzqgpfUYEL+Ii2zot892scxQtsyXnYub2/eZupTrCIDFY9o/5l2vMT
	 weR9WqrCgVZqfSQILqY52+eOQIEHmgWE9FLZpUZze5KkRVikfdG3Y0rF4dl3NAL7xt
	 4bhWYhO6PYpVy51nDJzd/ibMu0PsFE9UajxHXd0IOnbLX/4DG81W/ooKCDDMdjh2eq
	 uwCZbECdBkPVw==
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-afcb7a16441so220934366b.2;
        Thu, 21 Aug 2025 16:00:39 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCU6t8PO3J1vKvjNlWMFbugNGYvScevkhuRXFfU5qRd1waTAC2DgizlWGQThYz9HZcvolr2ti8SM2xG1hQct26an@lists.infradead.org, AJvYcCUvahCdhH2JtUV62snp5UdaiVmCom99Ek0Yd6KhGf5DWcNnilkp5BzJKabdkV8/3jdQpF0g1vHfEkAN@lists.infradead.org
X-Gm-Message-State: AOJu0YwPlc6wsRN023z9EqZkB9BpnoZU6QvZ90l8289rbYICrTYuvU/Y
	L3+2SakZEmfl4DIfciYqLQwv2oesOCgEwUmo9M2VBSp53UzGp1Ztqo3LKNZy7Eaw16oYuo/m2Rx
	nCzPcIVjNW5wxS92dZwwUC0ERn3Q/yw==
X-Google-Smtp-Source: AGHT+IH5ReMKgM2/3Os0oHRo+pFjl/n9LIXHNBEW/4vyJJ36lhUYYD+Ni5LGTFHEdqrEFWxNcknX16jT/C8BnP/4Q+Q=
X-Received: by 2002:a17:907:72d2:b0:af9:8c20:145b with SMTP id
 a640c23a62f3a-afe28f7622amr76678966b.10.1755817238412; Thu, 21 Aug 2025
 16:00:38 -0700 (PDT)
MIME-Version: 1.0
References: <20250821-atcphy-6-17-v1-0-172beda182b8@kernel.org>
 <20250821-atcphy-6-17-v1-3-172beda182b8@kernel.org> <20250821163320.GE1270980@robin.jannau.net>
In-Reply-To: <20250821163320.GE1270980@robin.jannau.net>
From: Rob Herring <robh@kernel.org>
Date: Thu, 21 Aug 2025 18:00:27 -0500
X-Gmail-Original-Message-ID: <CAL_JsqL=y2OT4YrzT8z0O0T2hpM5X1k2pFEb8XjBRPoNMdO5kw@mail.gmail.com>
X-Gm-Features: Ac12FXwdtTBi83iz9IiQlPSDZ_3W-XM65JsHn03GR3jMgiJWuYGJBjpjvfkth58
Message-ID: <CAL_JsqL=y2OT4YrzT8z0O0T2hpM5X1k2pFEb8XjBRPoNMdO5kw@mail.gmail.com>
Subject: Re: [PATCH RFC 03/22] dt-bindings: phy: Add Apple Type-C PHY
To: Janne Grunau <j@jannau.net>
Cc: Sven Peter <sven@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Felipe Balbi <balbi@kernel.org>, Alyssa Rosenzweig <alyssa@rosenzweig.io>, Neal Gompa <neal@gompa.dev>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>, 
	Heikki Krogerus <heikki.krogerus@linux.intel.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, asahi@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250821_160040_983751_E46F1449 
X-CRM114-Status: GOOD (  22.52  )
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

T24gVGh1LCBBdWcgMjEsIDIwMjUgYXQgMTE6MzPigK9BTSBKYW5uZSBHcnVuYXUgPGpAamFubmF1
Lm5ldD4gd3JvdGU6Cj4KPiBPbiBUaHUsIEF1ZyAyMSwgMjAyNSBhdCAwMzozODo1NVBNICswMDAw
LCBTdmVuIFBldGVyIHdyb3RlOgo+ID4gQXBwbGUncyBUeXBlLUMgUEhZIChBVENQSFkpIGlzIGEg
UEhZIGZvciBVU0IgMi4wLCBVU0IgMy54LAo+ID4gVVNCNC9UaHVuZGVyYm9sdCwgYW5kIERpc3Bs
YXlQb3J0IGNvbm5lY3Rpdml0eSBmb3VuZCBpbiBBcHBsZSBTaWxpY29uCj4gPiBTb0NzLgo+ID4K
PiA+IFRoZSBQSFkgaGFuZGxlcyBtdXhpbmcgYmV0d2VlbiB0aGVzZSBkaWZmZXJlbnQgcHJvdG9j
b2xzIGFuZCBhbHNvIHByb3ZpZGVzCj4gPiB0aGUgcmVzZXQgY29udHJvbGxlciBmb3IgdGhlIGF0
dGFjaGVkIGR3YzMgVVNCIGNvbnRyb2xsZXIuCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogU3ZlbiBQ
ZXRlciA8c3ZlbkBrZXJuZWwub3JnPgo+ID4gLS0tCj4gPiAgLi4uL2RldmljZXRyZWUvYmluZGlu
Z3MvcGh5L2FwcGxlLGF0Y3BoeS55YW1sICAgICAgfCAyMTAgKysrKysrKysrKysrKysrKysrKysr
Cj4gPiAgTUFJTlRBSU5FUlMgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
fCAgIDEgKwo+ID4gIDIgZmlsZXMgY2hhbmdlZCwgMjExIGluc2VydGlvbnMoKykKPiA+Cj4gPiBk
aWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9hcHBsZSxh
dGNwaHkueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvYXBwbGUs
YXRjcGh5LnlhbWwKPiA+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gPiBpbmRleCAwMDAwMDAwMDAw
MDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwLi5lYjE0MDEwNTU3Yzk0ZjMxM2I1NGI1Mjhl
MmQ0MDM5ZmU1NDAwNjJhCj4gPiAtLS0gL2Rldi9udWxsCj4gPiArKysgYi9Eb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvcGh5L2FwcGxlLGF0Y3BoeS55YW1sCj4gPiBAQCAtMCwwICsx
LDIxMCBAQAo+ID4gKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IChHUEwtMi4wLW9ubHkgT1Ig
QlNELTItQ2xhdXNlKQo+ID4gKyVZQU1MIDEuMgo+ID4gKy0tLQo+ID4gKyRpZDogaHR0cDovL2Rl
dmljZXRyZWUub3JnL3NjaGVtYXMvcGh5L2FwcGxlLGF0Y3BoeS55YW1sIwo+ID4gKyRzY2hlbWE6
IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9tZXRhLXNjaGVtYXMvY29yZS55YW1sIwo+ID4gKwo+ID4g
K3RpdGxlOiBBcHBsZSBUeXBlLUMgUEhZIChBVENQSFkpCj4gPiArCj4gPiArbWFpbnRhaW5lcnM6
Cj4gPiArICAtIFN2ZW4gUGV0ZXIgPHN2ZW5Aa2VybmVsLm9yZz4KPiA+ICsKPiA+ICtkZXNjcmlw
dGlvbjoKPiA+ICsgIFRoZSBBcHBsZSBUeXBlLUMgUEhZIChBVENQSFkpIGlzIGEgUEhZIGZvciBV
U0IgMi4wLCBVU0IgMy54LAo+ID4gKyAgVVNCNC9UaHVuZGVyYm9sdCwgYW5kIERpc3BsYXlQb3J0
IGNvbm5lY3Rpdml0eSBmb3VuZCBpbiBBcHBsZSBTaWxpY29uIFNvQ3MuCj4gPiArCj4gPiArICBU
aGUgUEhZIGhhbmRsZXMgbXV4aW5nIGJldHdlZW4gdGhlc2UgZGlmZmVyZW50IHByb3RvY29scyBh
bmQgYWxzbyBwcm92aWRlcyB0aGUKPiA+ICsgIHJlc2V0IGNvbnRyb2xsZXIgZm9yIHRoZSBhdHRh
Y2hlZCBkd2MzIFVTQiBjb250cm9sbGVyLgo+ID4gKwo+ID4gKyAgVGhlIFBIWSBpcyBkZXNpZ25l
ZCBmb3IgVVNCNCBvcGVyYXRpb24gYW5kIGRvZXMgbm90IGhhbmRsZSBpbmRpdmlkdWFsCj4gPiAr
ICBkaWZmZXJlbnRpYWwgcGFpcnMgYXMgZGlzdGluY3QgRGlzcGxheVBvcnQgbGFuZXMuIEFueSBy
ZWZlcmVuY2UgdG8gbGFuZSBpbgo+ID4gKyAgdGhpcyBiaW5kaW5nIGhlbmNlIHJlZmVycyB0byB0
d28gZGlmZmVyZW50aWFsIHBhaXJzIChSWCBhbmQgVFgpIGFzIHVzZWQgaW4gVVNCCj4gPiArICB0
ZXJtaW5vbG9neS4KPiA+ICsKPiA+ICtwcm9wZXJ0aWVzOgo+ID4gKyAgY29tcGF0aWJsZToKPiA+
ICsgICAgZW51bToKPiA+ICsgICAgICAtIGFwcGxlLHQ2MDAwLWF0Y3BoeQo+ID4gKyAgICAgIC0g
YXBwbGUsdDYwMDAtYXRjcGh5LWRwLW9ubHkgIyBQSFkgaGFyZHdpcmVkIHRvIERQLXRvLUhETUkg
Y29udmVydGVyIG9uIE0yIFBybyBNYWNCb29rCj4KPiBUaGUgY29tbWVudCBpcyBtaXNsZWFkaW5n
LCAidDYwMDAtYXRjcGh5LWRwLW9ubHkiIHdvdWxkIGJlIGZvciBNMQo+IFByby9NYXggTWFjYm9v
a3MuIE0yIFByby9NYXggTWFjYm9va3MgdXNlIHRoZSBzYW1lIGRlc2lnbiBzbyB0aGUKPiBjb3Jy
ZXNwb25kaW5nICJhcHBsZSx0NjAyMC1hdGNwaHktZHAtb25seSIgY29tcGF0aWJsZSBpcyBtaXNz
aW5nLgo+IEknbSBub3Qgc3VyZSB0aGlzIGlzIHRoZSBjb3JyZWN0IGRlc2lnbiB0aG91Z2ggYXMg
dGhlIEhXIGJsb2NrIGlzCj4gaWRlbnRpY2FsIHRvICJhcHBsZSx0NjAwMC1hdGNwaHkiLgo+IEkg
dGhpbmsgaXQgbWlnaHQgYmUgYmV0dGVyIHRvIGhhdmUgZWl0aGVyIHRoZSBEUk0gS01TIGRyaXZl
ciBvciBhCj4gY3VzdG9tIERQLT5IRE1JIGRybV9icmlkZ2Ugc3dpdGNoIHRoZSBtb2RlIHRvIERQ
LW9ubHkuCj4gT3IgYXRjcGh5IGNvdWxkIGluaXRpYWxpemUgaXRzZWxmIHRvIERQLW9ubHkgYmFz
ZWQgb24gdGhlIGF2YWlsYWJsZQo+IHBvcnRzLgoKRG9lc24ndCBzb3VuZCBsaWtlIHRoaXMgc2hv
dWxkIGJlIGEgZGlmZmVyZW50IGNvbXBhdGlibGUuIFRoZXJlJ3MgYQoncGh5LW1vZGUnIHByb3Bl
cnR5IG9yIHlvdSBjYW4gZGVmaW5lIHRoZSBtb2RlIGluIHRoZSAncGh5cycgY2VsbHMgZm9yCnRo
ZSBEUCBjb250cm9sbGVyLgoKUm9iCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1w
aHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1waHkK
