Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7DC07C44501
	for <linux-phy@archiver.kernel.org>; Wed, 15 Jul 2026 21:23:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5EvsGToSWkeqziBZyhzvZSDOh4qREUR8Vdbpktq+fD4=; b=vPeJ4Fe3Ls7Hio
	T1PPbLuHlhleC0mED5UCgZlde3NT18PiPf00I3Xg/AjdQKn6uPVwuk75dcS7kzTmH84AgM48G/s58
	hxUOZHCoBdZsQ9HThdYtVmtIkL0Dizv59i2k4aXUVUEzGIiShN/eqwVX1wsr9VN03RhhXXBdTS32T
	y5XLNBdosSUuMnrnfasTrO4OkS9N/x0pfeRx0Gy6d1+EIDognPLQN6lUijepw3hRGWvFpVu/OiaDY
	Ep98eeqkoq5krKMZC2cjL4bhaPijhuq7gvxhpN9cRfjwNIukWWnUByV8R4PkiZjQWLLTZjQjX2lyf
	rIWEWR6+4x6mfbEchi+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wk74y-0000000FvpH-17Gk;
	Wed, 15 Jul 2026 21:23:44 +0000
Received: from mail-ej2-x03.google.com ([2a00:1450:4864:34::3])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wk74v-0000000Fvnv-1hmQ
	for linux-phy@lists.infradead.org;
	Wed, 15 Jul 2026 21:23:42 +0000
Received: by mail-ej2-x03.google.com with SMTP id a640c23a62f3a-c160e831693so102400666b.1
        for <linux-phy@lists.infradead.org>; Wed, 15 Jul 2026 14:23:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1784150618; cv=none;
        d=google.com; s=arc-20260327;
        b=fCVLqo/zKNVTsy0n6TOrMTjFk/QzkUNAcPMhpWx5r+wjgleqQi6PYUUuwRIUSYfkbW
         B8LKBakTAuFqL9cm72S+PFf+yiJ3Vldigi/olP46JrVj2NgW6pbEwORUKoI4bW5ZrB4Q
         qxRypnV7gGttlRHMGkxrsXgwN+4ZIEyjtRaXOYUxXnFPnTmNFYYyQM9msCbxxO046o8X
         gf90h1NiU6rBIEXV1o/UcNtoB75u+fMgXYRawc4oAdC/ObhHvPZ0Ukrt/dmYrZvChiq/
         OVVblMtAI2GY06LocTyv+Lz0vfMWpt3l7ZCmI/aBnZJcwDJ635ZZlgMqvuN5fpMOAX9s
         wZAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=VQDSv2OwEavGfPD7QFHW1wvt5oA5GKyg6BpElu5hA3g=;
        fh=Ln+pocJvMbvvN0Om4tbu0DCNlAH0lfX6u6k4r1f31AI=;
        b=EqmkSq9j0VbE8cXRK6RJ27ezyTxcQj/EyODu0l+JW+kTdpTYhGqPNC+kUld2oic2HC
         qW4lIaCSy8wTZm5KXu5A+hp60xZohwCcTGfZgdbKety0HQmKN/7zwYIIUXJzySyWk2p8
         kNrrALPh5goIpjFHFOH4nC0Z2/EkJ85Okg48ANyuXyA6gZrk3z+HkifYeuT0VkPxOlWE
         IAxi1KP7dhLzEPtKxnocnRqYDQKXXunHxD3uoanW6lWUOTqIOSZPD/g6nScCGXb5EaPZ
         E5tAEgE4hX4K2DuwkWA5fq2YWykGmA1tdZotsASFpcvU2xbX5ymXlwpcyjoYV3xXLEih
         14lw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784150618; x=1784755418; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=VQDSv2OwEavGfPD7QFHW1wvt5oA5GKyg6BpElu5hA3g=;
        b=df1ajmtSe31lxe3O0WrgWUVpvqUD3+QxxGPOKhAv9TndVuoRyu1Ez/RZcvKkyX4DqL
         so7kzCiTDzqOy8R94J77sC9SYWJIlxK4YISKWAuNfc36GdcUyz6oQl4kxM7vbclEt1fB
         ppFBKTcaZck+1n/r5eftdZJ0fooq5jgvJV9wHCkWFYQM5fUtBDokHXCMld73/27+Oca6
         sgBF4v++PiQgW0SKJWLu8eEYLucSescWdI8X+QijVnZPhn0KAnX0vV83FkQ7tpG6oNZF
         xmegGzcfCqzBG9Ycfgogs+6KdKG8LfA/aO81iylpX+MYdA3m/ySGW08X35K39yw2fZkj
         JykQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784150618; x=1784755418;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=VQDSv2OwEavGfPD7QFHW1wvt5oA5GKyg6BpElu5hA3g=;
        b=AoTQkXfxhYcXQeF+C8SqJybif+HnaBaluIQHez/v9QF+toRi9t5OIGiDSH4JytE+DE
         c959ulvaGFft0CBlo0y3/jiRsKixdKwcFljEhE67Qyuuvkx/KA7Qwa19QYXw8AKaGQCJ
         HTrldsXIxvTUujWwxonXvpZCuzFOnHYEEi7uF/bcfTuGS4R6hHNfwqC2Qv1bLrFZVJph
         0FzeGf0mYN5Kzx+iGogxXnQyBbBwTpEcSKvhbxKjrFGJ615DAJG0nSKK0QiCXkyZU5ug
         Z1zyoemsS5CBRjfSpQ3r+8ReA11380PIsNj+N2ojSZy8o+CSCBzJ8hJ/N6og07GLe1gu
         ZuFw==
X-Forwarded-Encrypted: i=1; AHgh+RoncAFhJkaYVbgDfIJCkEqcQL9A1dVSooSNju+NTX+kH9Mw7QnsH8ofCHAoYOHVTTYjmZhcGnuNBl0=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx7ok/3hkGy3Am3AT5BmNp+2TxGgNhAR616NH8s0WqaSEasy6/8
	3+PYI/N1SMfRRvCsIWJ2Vkq4uLy0eTycA0due6Ain2rVqXx9pYDzu0fc9ZVcYSpM0rtig/bWL9e
	qHAPMsYk/upFG3MvSK4jqnl3L8PgAdeg=
X-Gm-Gg: AfdE7cnFX7FN6c+4SzNuI30wCO7thvu1h444898lgQPNePI/STcQ0NSfHbxKOr6EzzE
	vS7y+BO4oh/Xf8UUUOdN/EpWPBhE2SBCMo+OqBKFNQheUtzDyPubdWgS5JEGqtMSfljcDDFHj1m
	FV1Pj5UA/TrPKaD0NodeY0Y+ogEx/uqZcbo9x07iR3f2qZ+0SPDbTQ6mYC9VcAfKw/CXR4XSPpX
	uCRbcaFjYKpXv8/o5NzVqTqWoS4i+gOJrcBcVFbwIVqdFj19u488CdEM4S8odsb
X-Received: by 2002:a17:907:9622:b0:c12:da4a:97d5 with SMTP id
 a640c23a62f3a-c161f404f86mr992959166b.50.1784150617701; Wed, 15 Jul 2026
 14:23:37 -0700 (PDT)
MIME-Version: 1.0
References: <20260714191341.690906-1-coiaprant@gmail.com> <20260714191341.690906-8-coiaprant@gmail.com>
 <4823c1d9-51d9-45fa-a96c-f2caab1cb29e@bootlin.com> <CALj3r0h4cFd-tp9-UVxihL9-a1W7_4nvnKoXW_cP5WECKc66Hw@mail.gmail.com>
 <1d92078f-3009-43d1-a228-c3e67a1f4f4c@lunn.ch>
In-Reply-To: <1d92078f-3009-43d1-a228-c3e67a1f4f4c@lunn.ch>
From: Coia Prant <coiaprant@gmail.com>
Date: Thu, 16 Jul 2026 05:23:26 +0800
X-Gm-Features: AUfX_mxzLgLRVJ8_d4XQuIss8MuWS0O5h7pFciiDmngjjPthH3hDcKxQHuYBdj4
Message-ID: <CALj3r0gBnyEVwo3rK-dKssYN9F4nFn93QJ24FVv8YBLjNNgPmg@mail.gmail.com>
Subject: Re: [RFC PATCH 07/10] net: pcs: xpcs: add Rockchip RK3568 platform
 glue driver
To: Andrew Lunn <andrew@lunn.ch>
Cc: Maxime Chevallier <maxime.chevallier@bootlin.com>, kuba@kernel.org, davem@davemloft.net, 
	edumazet@google.com, pabeni@redhat.com, andrew+netdev@lunn.ch, 
	robh@kernel.org, krzk+dt@kernel.org, heiko@sntech.de, netdev@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260715_142341_492595_8D612BD3 
X-CRM114-Status: GOOD (  26.94  )
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

QW5kcmV3IEx1bm4gPGFuZHJld0BsdW5uLmNoPiDkuo4yMDI25bm0N+aciDE25pel5ZGo5ZubIDAz
OjU35YaZ6YGT77yaCj4KPiA+IFRoaXMgaXMgaW50ZW50aW9uYWwuIFRoZSBTZXJEZXMgaXMgYXR0
YWNoZWQgdG8gdGhlIFhQQ1Mgbm9kZSBiZWNhdXNlCj4gPiBvbiBSSzM1NjgsIGEgc2luZ2xlIFNl
ckRlcyBzZXJ2ZXMgYWxsIGZvdXIgWFBDUyBNSUkgcG9ydHMgaW4gUVNHTUlJCj4gPiBtb2RlLgo+
Cj4gVGhpcyBpcyBub3QgdGhlIG9ubHkgZGV2aWNlIHN1cHBvcnRpbmcgUVNHTUlJLCBhbmQgc28g
dGhlIGlzc3VlcyB5b3UKPiBhcmUgYWRkcmVzc2luZyBzaG91bGQgYmUgY29tbW9uIHRvIG1hbnkg
UVNHTUlJIGltcGxlbWVudGF0aW9ucy4KPgo+IFBsZWFzZSB0YWtlIGEgc3RlcCBiYWNrLiBXaGF0
IHdvdWxkIGEgZ2VuZXJpYyBzb2x1dGlvbiBsb29rIGxpa2U/Cj4KPiBDYW4gdGhlIHJlZmVyZW5j
ZSBjb3VudGluZyBiZSBwbGFjZWQgaW50byB0aGUgY29yZSBzb21ld2hlcmU/IFRoZQo+IGNvbW1v
biBjbG9jayBmcmFtZXdvcmsgYWxsb3dzIGEgY2xvY2sgdG8gYmUgZW5hYmxlZCBhbmQgZGlzYWJs
ZWQgYnkKPiBtdWx0aXBsZSBjb25zdW1lcnMsIGFuZCB0aGUgY29yZSBjbG9jayBjb2RlIGRvZXMg
dGhlIHJlZmVyZW5jZQo+IGNvdW50aW5nLCBvbmx5IGNhbGxpbmcgaW50byB0aGUgY2xvY2sgZHJp
dmVyIHdoZW4gc3RhdGUgY2hhbmdlIGlzCj4gYWN0dWFsbHkgbmVlZGVkLiBNYXliZSB0aGUgZ2Vu
ZXJpYyBQSFkgY29yZSBuZWVkcyBzb21ldGhpbmcgc2ltaWxhcj8KPgo+ICAgICAgICAgQW5kcmV3
CgpPbiBUaHUsIEp1bCAxNiwgMjAyNiBhdCAwMzo1NzoyMkFNICswMjAwLCBBbmRyZXcgTHVubiB3
cm90ZToKPiA+IFRoaXMgaXMgaW50ZW50aW9uYWwuIFRoZSBTZXJEZXMgaXMgYXR0YWNoZWQgdG8g
dGhlIFhQQ1Mgbm9kZSBiZWNhdXNlCj4gPiBvbiBSSzM1NjgsIGEgc2luZ2xlIFNlckRlcyBzZXJ2
ZXMgYWxsIGZvdXIgWFBDUyBNSUkgcG9ydHMgaW4gUVNHTUlJCj4gPiBtb2RlLgo+Cj4gVGhpcyBp
cyBub3QgdGhlIG9ubHkgZGV2aWNlIHN1cHBvcnRpbmcgUVNHTUlJLCBhbmQgc28gdGhlIGlzc3Vl
cyB5b3UKPiBhcmUgYWRkcmVzc2luZyBzaG91bGQgYmUgY29tbW9uIHRvIG1hbnkgUVNHTUlJIGlt
cGxlbWVudGF0aW9ucy4KPgo+IFBsZWFzZSB0YWtlIGEgc3RlcCBiYWNrLiBXaGF0IHdvdWxkIGEg
Z2VuZXJpYyBzb2x1dGlvbiBsb29rIGxpa2U/Cj4KPiBDYW4gdGhlIHJlZmVyZW5jZSBjb3VudGlu
ZyBiZSBwbGFjZWQgaW50byB0aGUgY29yZSBzb21ld2hlcmU/IFRoZQo+IGNvbW1vbiBjbG9jayBm
cmFtZXdvcmsgYWxsb3dzIGEgY2xvY2sgdG8gYmUgZW5hYmxlZCBhbmQgZGlzYWJsZWQgYnkKPiBt
dWx0aXBsZSBjb25zdW1lcnMsIGFuZCB0aGUgY29yZSBjbG9jayBjb2RlIGRvZXMgdGhlIHJlZmVy
ZW5jZQo+IGNvdW50aW5nLCBvbmx5IGNhbGxpbmcgaW50byB0aGUgY2xvY2sgZHJpdmVyIHdoZW4g
c3RhdGUgY2hhbmdlIGlzCj4gYWN0dWFsbHkgbmVlZGVkLiBNYXliZSB0aGUgZ2VuZXJpYyBQSFkg
Y29yZSBuZWVkcyBzb21ldGhpbmcgc2ltaWxhcj8KCkhpIEFuZHJldywKClRoYW5rcyBmb3IgdGhl
IHRob3VnaHRmdWwgcXVlc3Rpb24uIExldCBtZSB3YWxrIHRocm91Z2ggdGhlIGRlc2lnbgpjb25z
dHJhaW50cyBvbiBSSzM1NjggYW5kIGV4cGxhaW4gd2h5IEkgY2hvc2UgdGhlIGN1cnJlbnQgYXBw
cm9hY2guCgpGaXJzdCwgSSB3YW50IHRvIGVtcGhhc2l6ZSB0aGF0IHRoaXMgaXMgc3RpbGwgUkZD
LCBzbyB0aGUgYmluZGluZyBpcyBub3QKZnJvemVuLiBIb3dldmVyLCBEVCBpcyBBQkkgb25jZSBt
ZXJnZWQsIGFuZCBjaGFuZ2luZyBpdCBsYXRlciBpcyBwYWluZnVsCmFuZCBvZnRlbiByZXF1aXJl
cyBtYWludGFpbmluZyBjb21wYXRpYmlsaXR5IHdpdGggb2xkIGJpbmRpbmdzLiBTbyBJCndvdWxk
IGxpa2UgdG8gYmUgY2FyZWZ1bCBhYm91dCB0aGUgYXJjaGl0ZWN0dXJlIHdlIHNldHRsZSBvbi4K
ClRoZSBjdXJyZW50IGRlc2lnbgo9PT09PT09PT09PT09PT09PT0KVGhlIGRlcGVuZGVuY3kgY2hh
aW4gSSBjaG9zZSBpcyBzaW1wbGU6CgogICAgc3RtbWFjIChHTUFDKSAtPiBwY3MtaGFuZGxlIC0+
IFhQQ1Mgbm9kZSAtPiBwaHlzIC0+IFNlckRlcyBQSFkKClRoZSBYUENTIGRyaXZlciBpcyB0aGUg
c2luZ2xlIG93bmVyIG9mIGJvdGggdGhlIFNlckRlcyBQSFkgYW5kIHRoZQpwb3dlciBkb21haW4u
IFRoZSBNQUMgZHJpdmVyIGRvZXNuJ3QgbmVlZCB0byBrbm93IGFib3V0IHRoZW0gYXQgYWxsLgoK
T24gUkszNTY4LCBwaHlfcG93ZXJfb24oKSBpcyBlZmZlY3RpdmVseSBhIG5vLW9wIGZvciB0aGUg
Q29tYm8gUEhZIGluClNHTUlJIG1vZGU7IG9ubHkgcGh5X2luaXQoKSBpcyByZXF1aXJlZC4gU28g
dGhlIFBIWSBpcyBub3QgYQpwb3dlci1jb250cm9sbGVkIHJlc291cmNlIOKAlCBpdCdzIGp1c3Qg
YSBvbmUtdGltZSBpbml0aWFsaXphdGlvbi4KClBvd2VyIGRvbWFpbiBtYW5hZ2VtZW50IGlzIGhh
bmRsZWQgdmlhIFBNIHJ1bnRpbWU6CiAgICAtIFhQQ1MgcHJvYmU6IGRldl9wbV9nZW5wZF9ycG1f
YWx3YXlzX29uKCkgZW5zdXJlcyBQRF9QSVBFIGlzIHBvd2VyZWQKICAgICAgKHRoaXMgYWxsb3dz
IHVzIHRvIHVzZSBQTSB0byBtYW5hZ2UgY3NyX2NsaykKICAgIC0gRWFjaCByZWdpc3RlciBhY2Nl
c3M6IHBtX3J1bnRpbWVfcmVzdW1lX2FuZF9nZXQoKS9wdXQoKSBjb250cm9scwogICAgICB0aGUg
Q1NSIGNsb2NrCgpUaGlzIGlzIHRoZSBzaW1wbGVzdCBtb2RlbCB0aGF0IHdvcmtzIGZvciBTR01J
SS9RU0dNSUkgdG9kYXkuCgpXaHkgbm90IG1vdmUgU2VyRGVzIHRvIHN0bW1hYz8KPT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09CklmIHdlIG1vdmUgU2VyRGVzIGFuZCBwb3dlciBkb21haW4g
Y29udHJvbCB0byB0aGUgTUFDIGRyaXZlciwgd2UKcnVuIGludG8gc2V2ZXJhbCBwcm9ibGVtczoK
CjEuIFJlZmVyZW5jZSBjb3VudGluZyBmb3IgcGh5X2luaXQoKS9waHlfZXhpdCgpOiBpbiBRU0dN
SUkgbW9kZSwgZm91cgogICBNQUNzIHdvdWxkIGFsbCBjYWxsIHBoeV9pbml0KCkgb24gdGhlIHNh
bWUgaGFyZHdhcmUuIFRoZSBnZW5lcmljIFBIWQogICBjb3JlIGRvZXMgbm90IGN1cnJlbnRseSBw
cm92aWRlIHJlZmVyZW5jZSBjb3VudGluZyBmb3IgdGhlc2UgY2FsbHMuCiAgIEFkZGluZyBpdCB3
b3VsZCBiZSBhIGxhcmdlciBjaGFuZ2UgYWZmZWN0aW5nIGFsbCBQSFkgdXNlcnMuCgoyLiBVc2Vy
IG1pc2NvbmZpZ3VyYXRpb246IGV2ZW4gd2l0aCByZWZlcmVuY2UgY291bnRpbmcsIGlmIGEgdXNl
ciBzZXRzCiAgIGBwaHlzID0gPCZjb21icGh5MiBQSFlfVFlQRV9TR01JST5gIGZvciBHTUFDMCBh
bmQKICAgYHBoeXMgPSA8JmNvbWJwaHkyIFBIWV9UWVBFX1FTR01JST5gIGZvciBHTUFDMSwgdGhl
IHNhbWUgUEhZIHdvdWxkCiAgIGJlIGluaXRpYWxpemVkIGluIHR3byBkaWZmZXJlbnQgbW9kZXMu
CgozLiBUaGUgc3RtbWFjIFNlckRlcyBjYWxsYmFja3MgYXJlIGxlZ2FjeTogdGhlIGV4aXN0aW5n
CiAgIHNlcmRlc19wb3dlcm9uL3NlcmRlc19wb3dlcmRvd24gaG9va3MgYXJlIGNhbGxlZCBmcm9t
CiAgIHN0bW1hY19sZWdhY3lfc2VyZGVzX3Bvd2VyX29uL2Rvd24gZnVuY3Rpb25zLiBUaGV5IGFy
ZSBtYXJrZWQgYXMKICAgbGVnYWN5IGFuZCBub3QgaW50ZW5kZWQgZm9yIG5ldyBoYXJkd2FyZSBk
ZXNpZ25zLiBCdWlsZGluZyBuZXcKICAgc3VwcG9ydCBvbiB0b3Agb2YgbGVnYWN5IEFQSXMgc2Vl
bXMgbGlrZSB0aGUgd3JvbmcgZGlyZWN0aW9uLgoKQ3VycmVudCBRU0dNSUkgdXNhZ2Ugb24gUksz
NTY4Cj09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0KSSBzZWFyY2hlZCBPcGVuV3J0LCBB
cm1iaWFuLCBJbW1vcnRhbFdydCwgYW5kIEdpdEh1YiBmb3IgYW55IGFjdHVhbApkZXZpY2UgdXNp
bmcgInJvY2tjaGlwLHJrMzU2OC14cGNzIiB3aXRoIFFTR01JSSBhbmQgZm91bmQgbm9uZS4gSXQg
c2VlbXMKUVNHTUlJIG9uIFJLMzU2OCBpcyBsaW1pdGVkIHRvIHNwZWNpYWxpemVkIGV2YWx1YXRp
b24gYm9hcmRzIG9yIG5pY2hlCmluZHVzdHJpYWwgYXBwbGljYXRpb25zLiBFdmVuIFNHTUlJIHVz
ZXJzIGFyZSByYXJlIOKAlCBtb3N0IGJvYXJkcyB1c2UKUkdNSUkgc2ltcGx5IGJlY2F1c2UgdGhl
IHBpbnMgY2Fubm90IGJlIHJlcHVycG9zZWQuCgpJZiBRU0dNSUkgZG9lcyBiZWNvbWUgYSByZWFs
IHJlcXVpcmVtZW50IGluIHRoZSBmdXR1cmUsIHRoZSBnZW5lcmljIFBIWQpjb3JlIGNvdWxkIGJl
IGV4dGVuZGVkIHdpdGggcmVmZXJlbmNlIGNvdW50aW5nIGZvciBwaHlfaW5pdCgpL3BoeV9leGl0
KCkuClRoYXQgd291bGQgYmUgYSBjbGVhbmVyIHNvbHV0aW9uIHRoYW4gcHVzaGluZyBTZXJEZXMg
bWFuYWdlbWVudCBpbnRvIGVhY2gKTUFDIGRyaXZlciwgYW5kIHdvdWxkIGJlbmVmaXQgYWxsIHBs
YXRmb3JtcyB3aXRoIHNoYXJlZCBTZXJEZXMgcmVzb3VyY2VzLgoKVGhhdCBzYWlkLCBJIGhhZCBh
biBlYXJsaWVyIHRlc3Qgd2l0aCBzZXJkZXNfcG93ZXJvbi9zZXJkZXNfcG93ZXJkb3duCmNhbGxi
YWNrcyBpbiBzdG1tYWMsIHNvIGlmIHRoZSBjb21tdW5pdHkgc3Ryb25nbHkgcHJlZmVycyB0byBt
b3ZlClNlckRlcyBjb250cm9sIHRvIGR3bWFjLXJrLCBJIGNhbiBkbyB0aGF0IGluIHYyLgoKQnV0
IG15IHByZWZlcmVuY2UgaXMgdG8ga2VlcCB0aGUgY3VycmVudCBkZXNpZ246IFhQQ1MgYXMgdGhl
IHNpbmdsZQpvd25lciBvZiB0aGUgU2VyRGVzIGFuZCBwb3dlciBkb21haW4uIEl0IHdvcmtzIHRv
ZGF5LCBrZWVwcyB0aGUgRFQKYmluZGluZyBzdGFibGUgZm9yIGZ1dHVyZSBRU0dNSUksIGFuZCBh
dm9pZHMgY29tcGxleGl0eS4KCkRvIHlvdSB0aGluayB0aGUgZ2VuZXJpYyBQSFkgY29yZSBzaG91
bGQgZ3JvdyByZWZlcmVuY2UgY291bnRpbmcgZm9yCnBoeV9pbml0KCkvcGh5X2V4aXQoKT8gT3Ig
d291bGQgeW91IHByZWZlciB0byBzZWUgYSBtb3JlIGdlbmVyaWMKYWJzdHJhY3Rpb24gZm9yIHNo
YXJlZCBTZXJEZXMgcmVzb3VyY2VzPwoKVGhhbmtzLApDb2lhCgotLSAKbGludXgtcGh5IG1haWxp
bmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
