Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0EDEFC531FA
	for <linux-phy@archiver.kernel.org>; Sun, 26 Jul 2026 14:53:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NB+L8aglb2eBdq5xqWX8NCAiAXumxI77yJ0vFh238qM=; b=vfg6LFXO6GA9T+
	/6TZ8i+OWq2k/C8u1jKgyaqf9/pRpKCgfoe6XRRxUj9OzzFdn8EW3KlWwdnAoeKCGmjohafAVDdG/
	FRczCFtJ07cf0eIqh7eCOk492eEYepizuhnPIx7VySOqa7UfaU1+oEVvDA+q12iru1t9UyZvkL+BO
	TaJUxvCbhjshoXDsqfEXPZwpiHdUlXoORU69AryC4t3MFRMymoIfio/ny8uTd7jZTlWzB2Y1eNQxz
	+xqcESH/E986y0FBXY4pOgBrQU9jNmc3bc9Ds2DFak58oX3iO/a/r2bOTswjjXbbywdghZeQmkOhi
	jGlwdqWOPOXVM9X1yWWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wo0Ei-00000001FhT-2wH8;
	Sun, 26 Jul 2026 14:53:52 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wo0Ef-00000001FfY-0zBf
	for linux-phy@lists.infradead.org;
	Sun, 26 Jul 2026 14:53:51 +0000
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-69f4acf7047so273321a12.3
        for <linux-phy@lists.infradead.org>; Sun, 26 Jul 2026 07:53:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1785077627; cv=none;
        d=google.com; s=arc-20260327;
        b=pxu7g7es4EgrqXT8vEGSxXokepn130YLzzg+EdI1zd79BSPVTkJJX6Oe7T4vTnzdSh
         GnMXXD1fnSIF43rx6tcw5mkV1iuzVXYxWr57pvyiOR6RjCOX3EXNfIcH/EapbiumvjQs
         2mAKOqlsI0tGv5AU98z6W35eZkjNSgZw4A/ceFIagUyPQNjYHBN1HjBiPKzzwSEmFla0
         kKmkuARrEFVtQMcRP79PYXxj8tnGTSZH/EBvpaL5MJmsQ+GJVnUHb/vroD2g4kcSYv6k
         POhVnshJgCqWAZY+gSHBtrF/7Z5w6O/ZxLs0HtCJzhO9mhPM6pjK8W7nrm0wrYO6RzrA
         6M4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Xy1dPJ6HKi7tYjJxDc2Ha4OJQEIkMNVF9gLqcXcYzos=;
        fh=RDZT35AE5Llifo1AI8KNfVZtpjsFCaYjISbzs5zJSjg=;
        b=qrWwOvvX3BtAANDUjX6B4fKPjwrzNxxvFR5eW+68rr4US63MmqW+P0B7bTgR30mPhb
         CA/AUSgn0Q8q7xrxPTGsjEYjRTRwCbXK4gURVZS7E/lzkdMLOgx3BvX7336UJm/ILosH
         eJTMl13tgmPkCNXQE3mC+v0yCY0kJgZcE0mnXZVHGp6HdBe/qlDtq5ZWAyJf+xWjVIuN
         DKJIorgKpoYuNgzL6PjlonOp4Kc3cNWjAaY3882rGK3lorNKsvyFj2hlUXd3JI2kG+9I
         9+CPLxUlW+oGYfXeWFWcDJPX373me6lCwHNRUGtWCPYnq+5w5jp27fWWY+nCvBk3ugU6
         U5HA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785077627; x=1785682427; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=Xy1dPJ6HKi7tYjJxDc2Ha4OJQEIkMNVF9gLqcXcYzos=;
        b=Ekd3CS3hKKyJSi/gx27tXl36itQsZdnczVRHm9k+CvbtHLfuoutQC+G2czA4/0whV/
         +HDoJYryuyTueyCaFwRi4nypNTYY79vp3bCmb1KLdVFJJaUluW442FEO/47cNhCUqISk
         IHKiSeUnocF3yN3JdTSht1IbPbbdT91sB45IaPzm148SkKwJfDGmgAi6EJu9ejwPgsnK
         kGfI3eoNsF+6xLg+l/u2qDGDscVrffDxPmyaCP6ApkdiP5hv2VYmbkxs4bNYXZ0mANNJ
         OsbQbL09BclVrM0Y1kkl6v/QFsMKV02SPqmSEqYyptO9znXjzwv73cm0tBt6mZnJFzDB
         apAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785077627; x=1785682427;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Xy1dPJ6HKi7tYjJxDc2Ha4OJQEIkMNVF9gLqcXcYzos=;
        b=AhmgPHkoPoskbFBVGY+jllM7MQINQ7nowPekRWUvpzoiq9Lhu0Ek6p/CnhIYqjUmMx
         RSAKVzXKz6YtbsY4GDXZFVzvTCzsfN4pnsDnZqXFq3Re9Ef6vccQ7d09sv5cep6TYTRY
         s6684XrrNMsqRcppBcm12tRcW2b0gxhc+ckrPZkXcTZ5Jq3oebE6ztMocgHG9nuUO987
         boJ5g7t6GtKfqZDvf1VZw66jY3ihRJeorO+5L8hwsmBDl6gzuW8r5x+iZgUXdWHSjKQg
         vjGiBUGSJYBjWO35OHb3JqiK+cgwg1YUBvxM+HHhMk3dfCPnuMjzimhgQS7Xwrt2bdDI
         2lyQ==
X-Forwarded-Encrypted: i=1; AHgh+RpMSiCRh2agulW5O+XdvJTeKqOd3PxO7Rw982YvKcUWEEeF8nYrxaGr1RBrUV+8IqUdkqzo3IOKZ8M=@lists.infradead.org
X-Gm-Message-State: AOJu0YxFokRUIV9y8vzwKBnidlL4vSyZ7K1zKEoIi4UBp/Ctiv91UxUV
	HgjXI1mBl5y+BlbO2uRc1hWqRBCqztGG+vsM38UT7BYW2svoVNC6TsefLg76x/qdg6qOZFbAJKe
	yfhfo2gDXEDTNFOEGRvA+So1y2JFB4Ek=
X-Gm-Gg: AR+sD13aRf2/d2zRR6Dhe7cu/Ed6X6vsV34ri2Z1/NOmZ35SNzAM+IKwEzqvHuvfJLu
	iJvDxPE561cKwbSEriyAcA+eqz9v1fSV5HDjL5QtZMAPmcJxgtO8aCyUVldknjrL+bFxWEx31Bf
	8HlOmYlFo4eSGIjzrIUMxP8GUuxndqjsNancbxBKc212+qvey4Ngn/z2rw1q4pzwJxml5pCBVQI
	MK0syg7WJuSK3G0i3vX9JA+BLDjoKfiKZzxoErkHdGye49Gez7Fp+yYk50xJQ==
X-Received: by 2002:a05:6402:450e:b0:69e:1246:a86a with SMTP id
 4fb4d7f45d1cf-69fc0f3e1bfmr2140114a12.0.1785077626864; Sun, 26 Jul 2026
 07:53:46 -0700 (PDT)
MIME-Version: 1.0
References: <20260721-dcphy-rx-v1-v1-0-4fc83c0ccac9@gmail.com>
 <20260721-dcphy-rx-v1-v1-1-4fc83c0ccac9@gmail.com> <20260724-incredible-colorful-trogon-9df033@quoll>
In-Reply-To: <20260724-incredible-colorful-trogon-9df033@quoll>
From: =?UTF-8?B?5qWK5pm65oiQ?= <jason98166@gmail.com>
Date: Sun, 26 Jul 2026 22:54:21 +0800
X-Gm-Features: AUfX_myy7YsobI1pf_jlBSXk7SDYrWERjtETFkIdeKdn3VY9LKRwt38o3X4kakY
Message-ID: <CAPwA33JUWPoWokeTFmP9RR5AzBqy2v7cEA8NUNr1-eUKyaaKYA@mail.gmail.com>
Subject: Re: [PATCH 1/4] dt-bindings: phy: rockchip,rk3588-mipi-dcphy: support
 per-direction phys
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Guochun Huang <hero.huang@rock-chips.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260726_075349_291473_1AFBBD02 
X-CRM114-Status: GOOD (  13.29  )
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

SGkgS3J6eXN6dG9mLAoKVGhhbmtzIGZvciB0aGUgcmV2aWV3LgoKPiBGaWxlbmFtZSBtdXN0IGZv
bGxvdyBjb21wYXRpYmxlIG9yIGJpbmRpbmcgZmlsZW5hbWUsIHNvIHRoaXMgaXMKPiByb2NrY2hp
cCxyazM1ODgtbWlwaS1kY3BoeS5oIGZvciBleGFtcGxlLgoKV2lsbCByZW5hbWUgaXQgdG8gcm9j
a2NoaXAscmszNTg4LW1pcGktZGNwaHkuaCBpbiB2Mi4KClRoYW5rcywKSmFzb24KCktyenlzenRv
ZiBLb3psb3dza2kgPGtyemtAa2VybmVsLm9yZz4g5pa8IDIwMjblubQ35pyIMjTml6XpgLHkupQg
5LiL5Y2INTo0NeWvq+mBk++8mgo+Cj4gT24gVHVlLCBKdWwgMjEsIDIwMjYgYXQgMDY6MzU6MTlQ
TSArMDgwMCwgSmFzb24gWWFuZyB3cm90ZToKPiA+ICAgIGNsb2NrczoKPiA+ICAgICAgbWF4SXRl
bXM6IDIKPiA+IEBAIC04Miw2ICs5Miw2IEBAIGV4YW1wbGVzOgo+ID4gICAgICAgICAgICAgICAg
ICAgPCZjcnUgU1JTVF9TX01JUElfRENQSFkwPjsKPiA+ICAgICAgICAgIHJlc2V0LW5hbWVzID0g
Im1fcGh5IiwgImFwYiIsICJncmYiLCAic19waHkiOwo+ID4gICAgICAgICAgcm9ja2NoaXAsZ3Jm
ID0gPCZtaXBpZGNwaHkwX2dyZj47Cj4gPiAtICAgICAgICAjcGh5LWNlbGxzID0gPDE+Owo+ID4g
KyAgICAgICAgI3BoeS1jZWxscyA9IDwyPjsKPiA+ICAgICAgICB9Owo+ID4gICAgICB9Owo+ID4g
ZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHQtYmluZGluZ3MvcGh5L3BoeS1yb2NrY2hpcC1zYW1zdW5n
LWRjcGh5LmggYi9pbmNsdWRlL2R0LWJpbmRpbmdzL3BoeS9waHktcm9ja2NoaXAtc2Ftc3VuZy1k
Y3BoeS5oCj4gPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+ID4gaW5kZXggMDAwMDAwMDAwMDAwLi42
MGY2NjMwZjU4YjMKPiA+IC0tLSAvZGV2L251bGwKPiA+ICsrKyBiL2luY2x1ZGUvZHQtYmluZGlu
Z3MvcGh5L3BoeS1yb2NrY2hpcC1zYW1zdW5nLWRjcGh5LmgKPgo+IEZpbGVuYW1lIG11c3QgZm9s
bG93IGNvbXBhdGlibGUgb3IgYmluZGluZyBmaWxlbmFtZSwgc28gdGhpcyBpcwo+IHJvY2tjaGlw
LHJrMzU4OC1taXBpLWRjcGh5LmggZm9yIGV4YW1wbGUuCj4KPiBCZXN0IHJlZ2FyZHMsCj4gS3J6
eXN6dG9mCj4KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXBoeQo=
