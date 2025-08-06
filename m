Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41C24C87FCB
	for <linux-phy@archiver.kernel.org>; Wed,  6 Aug 2025 21:57:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T1+6XUASMI2GlkSujwYlvycIS3TAKss82jPfE7OgszA=; b=JN2KdasJ0qzIK9
	L8tEbiPYOfBpkkGDgE+SmNidqkM525HLopi9FOLx5ZKVI5RrHsbwQqxf54P1ewAcUrwwUlH93kqHS
	CFqYgKgRjRAcIGlqXZidVQ8vdkL0xcBqD6lNA1bOPKWl2afO1Nxljdes8H33KhZ7IX073uS9UCSz9
	ISWTpJ49hTn4Xqt2wTLrc0zFL4F38MELrLnFxj8DHvymtYKWmgyPwad4b8HdzjUbmkHyMQqePx6f8
	oPYQB9go+6x1wfKbPmouWzq/8Pnmeorg8PLFtVnav/dw7I+0DPzMVvz7ADylBHqKYHQe/wEG2JhkH
	eKPvW0BXLOOoWaZx2wwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujm8k-0000000Gepm-03ym;
	Wed, 06 Aug 2025 21:57:42 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujkL9-0000000GIdZ-3qtg
	for linux-phy@lists.infradead.org;
	Wed, 06 Aug 2025 20:02:25 +0000
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-af66d49daffso49064966b.1
        for <linux-phy@lists.infradead.org>; Wed, 06 Aug 2025 13:02:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1754510542; x=1755115342; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZJ8i9DtQoEe2eT1EEyiFMN6m8e12hKDElhMToYg7FsI=;
        b=eylJuNrTNCNvQJGIb1Ox5+0yQQi4Q8DkQ1YxBFJFxnNu1YlPRMubnFSTuhyGE+2StV
         758XbPCW8JUtn+cAATouxl+HgF5gsItnGPy0EXQfaUE0/uFQfIofogPKMuE2Pd/T7Bwb
         Ovba4YSI8Q7y0mYg+DDmKYFygkOFSff0I5oWGfICcQCBlSi8E3lnz2UoaR/BM8lWda/m
         mPpX3+cce4VWOVW1sA+EJq5Ra1V0JwGFFWl/tyN4ynZQQCBP0hC5KCKiBlodDEhYQCdy
         k5brscjr5Sozqn76ajonTmdWXKStgy4xwsodqmzlA1qJNA6YoUenvFU4QOci81in1+qy
         JKeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754510542; x=1755115342;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZJ8i9DtQoEe2eT1EEyiFMN6m8e12hKDElhMToYg7FsI=;
        b=WdRJuc1/jY7rfqux+JU0ALkAUjY54Db1k2uMrNxfiJXFMXmnPQPKbIv4IYKhjXiEWS
         htxFXODAn7Ve1crAAawuUi1ijWUFet70CdYgmFP/b8rQv7h2jLu7yqUdajDSC0biwRd5
         LYt9ni8vnLcdHOz+uQ8S9fBH7LKA5RNFbqyhwGlK3iqLh438mX5nN7b7Frg+ogU8kHtb
         fkYRPnK3N27IKaXM0B8JemYX2nuF3zT7iq3EsX3Me8nPHJqXJ9/QZxeHpv2Ns5KmMr5h
         MWiG7wKRwB5ifyBTGaNofvlicrQUm0444SIYv5Cyj/vPFK82CdPlNV5DSvHZXzHLLHOd
         pj6g==
X-Forwarded-Encrypted: i=1; AJvYcCWQUSynsognCbx1VFPyEqV6DHxxsdpHj/8xgP4uRJwb0TqsElHgmZtwGySArLXn7edh46LQ26oUmrU=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz/ciuCedNQhivo/Mam8wTSJo0mIum4phz7wZMgPJ3FI3X05gc1
	ufmPwBuDlNeDY9inIc+fKYDjtrK8pCc0H70YIBL5ubqPhR+5+BKiCQJ0E1WqmSRudwvu51JWRnZ
	Qu4URnyTr0k1cuFqPz8jdczVjWozGe0eXCQ==
X-Gm-Gg: ASbGncvh+CgiXzY1wcrRCPa0CSppkBT35ZI2yBC64vBNW3Do6isYmHnUVcKAQDQMBYY
	BNq35/0I/eOBvtAi0C7Wwn41fDeZazv0Ono4lBTrCisbn9d9Y4q6lUiHxDKr025WJdhhTSkQR+I
	VUiZ8HfKX05hWzGnM1MuOVB3zJiHRY4BDei9m2f93BZXKtHE7hVHyWx0omEro2CCBMsK61t6N/g
	xqAEg==
X-Google-Smtp-Source: AGHT+IGEEo72wmTgZi8BkvIr5ed6oxulOt+2Q25m9dKEM0jScTqzxsk+qtztPutvIV62/H+qWII96q4Up6yQ81TmwmQ=
X-Received: by 2002:a17:907:2d0e:b0:ade:3ce3:15d1 with SMTP id
 a640c23a62f3a-af992aae897mr405082666b.27.1754510541748; Wed, 06 Aug 2025
 13:02:21 -0700 (PDT)
MIME-Version: 1.0
References: <20250805122529.2566580-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20250805122529.2566580-3-prabhakar.mahadev-lad.rj@bp.renesas.com> <9549b800-2205-428a-8056-cfc6b5255850@linaro.org>
In-Reply-To: <9549b800-2205-428a-8056-cfc6b5255850@linaro.org>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Wed, 6 Aug 2025 21:01:53 +0100
X-Gm-Features: Ac12FXz0dtGGFdr2LTb6pyZSRV-MKBIRDj8BNzlj1AE_Itf4PJ_b1CmIqAS1b7Q
Message-ID: <CA+V-a8s9MzrpyCSQ-nYiX+gDGHWhUONfc=F2Aqh_jAyar4Kceg@mail.gmail.com>
Subject: Re: [PATCH 2/5] phy: renesas: rcar-gen3-usb2: Store drvdata pointer
 in channel
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250806_130223_975060_EAD1295D 
X-CRM114-Status: GOOD (  21.52  )
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

SGkgTmVpbCwKClRoYW5rIHlvdSBmb3IgdGhlIHJldmlldy4KCk9uIFdlZCwgQXVnIDYsIDIwMjUg
YXQgMzowNuKAr1BNIE5laWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPiB3
cm90ZToKPgo+IE9uIDA1LzA4LzIwMjUgMTQ6MjUsIFByYWJoYWthciB3cm90ZToKPiA+IEZyb206
IExhZCBQcmFiaGFrYXIgPHByYWJoYWthci5tYWhhZGV2LWxhZC5yakBicC5yZW5lc2FzLmNvbT4K
PiA+Cj4gPiBTdG9yZSB0aGUgU29DLXNwZWNpZmljIGRyaXZlciBkYXRhIHBvaW50ZXIgKHN0cnVj
dCByY2FyX2dlbjNfcGh5X2Rydl9kYXRhKQo+ID4gZGlyZWN0bHkgaW4gc3RydWN0IHJjYXJfZ2Vu
M19jaGFuIGluc3RlYWQgb2YgY29weWluZyBpbmRpdmlkdWFsIGZsYWdzCj4gPiBpbnRvIHNlcGFy
YXRlIGZpZWxkcy4gVXBkYXRlIGFsbCByZWZlcmVuY2VzIHRvIHVzZSBjaGFubmVsLT5kcnZkYXRh
LT5mbGFncywKPiA+IHJlbW92aW5nIHRoZSByZWR1bmRhbnQgc29jX25vX2FkcF9jdHJsIGFuZCB1
dG1pX2N0cmwgbWVtYmVycyBmcm9tIHRoZQo+ID4gY2hhbm5lbCBzdHJ1Y3R1cmUuCj4gPgo+ID4g
U2lnbmVkLW9mZi1ieTogTGFkIFByYWJoYWthciA8cHJhYmhha2FyLm1haGFkZXYtbGFkLnJqQGJw
LnJlbmVzYXMuY29tPgo+ID4gLS0tCj4gPiAgIGRyaXZlcnMvcGh5L3JlbmVzYXMvcGh5LXJjYXIt
Z2VuMy11c2IyLmMgfCAxNyArKysrKysrLS0tLS0tLS0tLQo+ID4gICAxIGZpbGUgY2hhbmdlZCwg
NyBpbnNlcnRpb25zKCspLCAxMCBkZWxldGlvbnMoLSkKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9waHkvcmVuZXNhcy9waHktcmNhci1nZW4zLXVzYjIuYyBiL2RyaXZlcnMvcGh5L3JlbmVz
YXMvcGh5LXJjYXItZ2VuMy11c2IyLmMKPiA+IGluZGV4IDQ3YmViOTRjZDQyNC4uY2ZhOTY2N2M3
NjgwIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9waHkvcmVuZXNhcy9waHktcmNhci1nZW4zLXVz
YjIuYwo+ID4gKysrIGIvZHJpdmVycy9waHkvcmVuZXNhcy9waHktcmNhci1nZW4zLXVzYjIuYwo+
ID4gQEAgLTEyMiw2ICsxMjIsNyBAQCBzdHJ1Y3QgcmNhcl9nZW4zX3BoeSB7Cj4gPiAgIHN0cnVj
dCByY2FyX2dlbjNfY2hhbiB7Cj4gPiAgICAgICB2b2lkIF9faW9tZW0gKmJhc2U7Cj4gPiAgICAg
ICBzdHJ1Y3QgZGV2aWNlICpkZXY7ICAgICAvKiBwbGF0Zm9ybV9kZXZpY2UncyBkZXZpY2UgKi8K
PiA+ICsgICAgIGNvbnN0IHN0cnVjdCByY2FyX2dlbjNfcGh5X2Rydl9kYXRhICpkcnZkYXRhOwo+
Cj4gV2h5IG5vdCBwaHlfZGF0YSA/Cj4KQWdyZWVkLCBJIHdpbGwgcmVuYW1lIGl0LgoKPiA+ICAg
ICAgIHN0cnVjdCBleHRjb25fZGV2ICpleHRjb247Cj4gPiAgICAgICBzdHJ1Y3QgcmNhcl9nZW4z
X3BoeSBycGh5c1tOVU1fT0ZfUEhZU107Cj4gPiAgICAgICBzdHJ1Y3QgcmVndWxhdG9yICp2YnVz
Owo+ID4gQEAgLTEzMyw4ICsxMzQsNiBAQCBzdHJ1Y3QgcmNhcl9nZW4zX2NoYW4gewo+ID4gICAg
ICAgYm9vbCBleHRjb25faG9zdDsKPiA+ICAgICAgIGJvb2wgaXNfb3RnX2NoYW5uZWw7Cj4gPiAg
ICAgICBib29sIHVzZXNfb3RnX3BpbnM7Cj4gPiAtICAgICBib29sIHNvY19ub19hZHBfY3RybDsK
PiA+IC0gICAgIGJvb2wgdXRtaV9jdHJsOwo+ID4gICB9Owo+ID4KPiA+ICAgc3RydWN0IHJjYXJf
Z2VuM19waHlfZHJ2X2RhdGEgewo+ID4gQEAgLTIwNCw3ICsyMDMsNyBAQCBzdGF0aWMgdm9pZCBy
Y2FyX2dlbjNfZW5hYmxlX3ZidXNfY3RybChzdHJ1Y3QgcmNhcl9nZW4zX2NoYW4gKmNoLCBpbnQg
dmJ1cykKPiA+ICAgICAgIHUzMiB2YWw7Cj4gPgo+ID4gICAgICAgZGV2X3ZkYmcoY2gtPmRldiwg
IiVzOiAlMDh4LCAlZFxuIiwgX19mdW5jX18sIHZhbCwgdmJ1cyk7Cj4gPiAtICAgICBpZiAoY2gt
PnNvY19ub19hZHBfY3RybCkgewo+ID4gKyAgICAgaWYgKGNoLT5kcnZkYXRhLT5ub19hZHBfY3Ry
bCkgewo+ID4gICAgICAgICAgICAgICBpZiAoY2gtPnZidXMpCj4gPiAgICAgICAgICAgICAgICAg
ICAgICAgcmVndWxhdG9yX2hhcmR3YXJlX2VuYWJsZShjaC0+dmJ1cywgdmJ1cyk7Cj4gPgo+ID4g
QEAgLTI5MCw3ICsyODksNyBAQCBzdGF0aWMgYm9vbCByY2FyX2dlbjNfY2hlY2tfaWQoc3RydWN0
IHJjYXJfZ2VuM19jaGFuICpjaCkKPiA+ICAgICAgIGlmICghY2gtPnVzZXNfb3RnX3BpbnMpCj4g
PiAgICAgICAgICAgICAgIHJldHVybiAoY2gtPmRyX21vZGUgPT0gVVNCX0RSX01PREVfSE9TVCkg
PyBmYWxzZSA6IHRydWU7Cj4gPgo+ID4gLSAgICAgaWYgKGNoLT5zb2Nfbm9fYWRwX2N0cmwpCj4g
PiArICAgICBpZiAoY2gtPmRydmRhdGEtPm5vX2FkcF9jdHJsKQo+ID4gICAgICAgICAgICAgICBy
ZXR1cm4gISEocmVhZGwoY2gtPmJhc2UgKyBVU0IyX0xJTkVDVFJMMSkgJiBVU0IyX0xJTkVDVFJM
MV9VU0IyX0lETU9OKTsKPiA+Cj4gPiAgICAgICByZXR1cm4gISEocmVhZGwoY2gtPmJhc2UgKyBV
U0IyX0FEUENUUkwpICYgVVNCMl9BRFBDVFJMX0lERElHKTsKPiA+IEBAIC00MjEsNyArNDIwLDcg
QEAgc3RhdGljIHZvaWQgcmNhcl9nZW4zX2luaXRfb3RnKHN0cnVjdCByY2FyX2dlbjNfY2hhbiAq
Y2gpCj4gPiAgICAgICAgICAgICBVU0IyX0xJTkVDVFJMMV9ETVJQRF9FTiB8IFVTQjJfTElORUNU
UkwxX0RNX1JQRDsKPiA+ICAgICAgIHdyaXRlbCh2YWwsIHVzYjJfYmFzZSArIFVTQjJfTElORUNU
UkwxKTsKPiA+Cj4gPiAtICAgICBpZiAoIWNoLT5zb2Nfbm9fYWRwX2N0cmwpIHsKPiA+ICsgICAg
IGlmICghY2gtPmRydmRhdGEtPm5vX2FkcF9jdHJsKSB7Cj4gPiAgICAgICAgICAgICAgIHZhbCA9
IHJlYWRsKHVzYjJfYmFzZSArIFVTQjJfVkJDVFJMKTsKPiA+ICAgICAgICAgICAgICAgdmFsICY9
IH5VU0IyX1ZCQ1RSTF9PQ0NMUkVOOwo+ID4gICAgICAgICAgICAgICB3cml0ZWwodmFsIHwgVVNC
Ml9WQkNUUkxfRFJWVkJVU1NFTCwgdXNiMl9iYXNlICsgVVNCMl9WQkNUUkwpOwo+ID4gQEAgLTQ4
Nyw3ICs0ODYsNyBAQCBzdGF0aWMgaW50IHJjYXJfZ2VuM19waHlfdXNiMl9pbml0KHN0cnVjdCBw
aHkgKnApCj4gPiAgICAgICBpZiAocnBoeS0+aW50X2VuYWJsZV9iaXRzKQo+ID4gICAgICAgICAg
ICAgICByY2FyX2dlbjNfaW5pdF9vdGcoY2hhbm5lbCk7Cj4gPgo+ID4gLSAgICAgaWYgKGNoYW5u
ZWwtPnV0bWlfY3RybCkgewo+ID4gKyAgICAgaWYgKGNoYW5uZWwtPmRydmRhdGEtPnV0bWlfY3Ry
bCkgewo+ID4gICAgICAgICAgICAgICB2YWwgPSByZWFkbCh1c2IyX2Jhc2UgKyBVU0IyX1JFR0VO
X0NHX0NUUkwpIHwgVVNCMl9SRUdFTl9DR19DVFJMX1VQSFlfV0VOOwo+ID4gICAgICAgICAgICAg
ICB3cml0ZWwodmFsLCB1c2IyX2Jhc2UgKyBVU0IyX1JFR0VOX0NHX0NUUkwpOwo+ID4KPiA+IEBA
IC03NzgsNiArNzc3LDcgQEAgc3RhdGljIGludCByY2FyX2dlbjNfcGh5X3VzYjJfcHJvYmUoc3Ry
dWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiA+ICAgICAgICAgICAgICAgcmV0ID0gLUVJTlZB
TDsKPiA+ICAgICAgICAgICAgICAgZ290byBlcnJvcjsKPiA+ICAgICAgIH0KPiA+ICsgICAgIGNo
YW5uZWwtPmRydmRhdGEgPSBwaHlfZGF0YTsKPgo+IFJlcGxhY2UgdGhlIHdob2xlIGJsb2NrIHdp
dGg6Cj4KPiAgICAgICAgIGNoYW5uZWwtPmRydmRhdGEgPSBkZXZpY2VfZ2V0X21hdGNoX2RhdGEo
ZGV2KTsKPiAgICAgICAgIGlmICghY2hhbm5lbC0+ZHJ2ZGF0YSkgewo+ICAgICAgICAgICAgICAg
ICByZXQgPSAtRUlOVkFMOwo+ICAgICAgICAgICAgICAgICBnb3RvIGVycm9yOwo+ICAgICAgICAg
fQo+Cj4gYW5kIGRyb3AgdGhlIGxvY2FsIHBoeV9kYXRhLgo+Ck9rLgoKQ2hlZXJzLApQcmFiaGFr
YXIKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBo
eQo=
