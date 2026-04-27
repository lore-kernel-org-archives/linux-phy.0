Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E6B2FF8860
	for <linux-phy@archiver.kernel.org>; Mon, 27 Apr 2026 11:37:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aXA4uDo5ngapMuUlNqQpfuU14kYQHpcYcJ2nEGA3Fes=; b=SYgJ6kwaBuQoZb
	szbA4s9ilip6kDa7w+efRCALqHlkwQxPCG/vLKSm/2LEGfUroTdMxh9zF8Qz/ts1koF5py39ObC+9
	FPqemjFwwH/xjcJS3UEHx8M3QFMgsK3WCD5vU7inrUfqf+GpX+q6VAAZXW9U0XtQKW0k+bEKH9NTI
	gX9jDdpFkK1rC5Hwsgqr8aLsmUMmZvY1uR7U5HIFBDhmKPQO1pjCTWfHpPT9ethiXh+56PSw9vZwv
	p4sh/6rk1nW4NcaZIy7qt8fLOkfr9fR3jorBq1LSlFmLsxwWr6LzRitELOldxT3Yi6KjJJ6ZJxPtK
	nW/MKaHWjPTNKBZCTV6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHKHG-0000000GoVr-0AaM;
	Mon, 27 Apr 2026 11:37:26 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHKHC-0000000GoUg-0AWw
	for linux-phy@lists.infradead.org;
	Mon, 27 Apr 2026 11:37:24 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-48984d29fe3so121324835e9.0
        for <linux-phy@lists.infradead.org>; Mon, 27 Apr 2026 04:37:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1777289840; cv=none;
        d=google.com; s=arc-20240605;
        b=fZB9TZKKeO4DytjnbGEK8JqIDKvSN9nvyL/pLvN60tEaa636/tDs0XlRWVydCFQ7vB
         eCeAkLoJ9jD4YqJNvGaGwSkCtowP4hTAKuCNjdtaIt/ASHJJJn0gNWGsihF4QqtQJGMT
         +Yd0A6Nmel2cTeRPpNdz8IHIlscB/BBUQrtfDbR0Ph61+m6srdE1lfkHyzZXFoSGIiAr
         yVjA3pWDxA0Uiw6U+a6dtosgP9TgZ6o+bUJjuDeqovvuwmYGO1+0MyLEqiqJjNXBbt4O
         7DyrpA5r2mwJ78EQMbKBZonK0VvOGTcWayjpgrDCrmndPkfS83cbkG78GF2uv0MaxipC
         ijow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=ggb5lc0jF2Wl6dmSNxpjNYGRULrbBBGGzqHcz78+7nY=;
        fh=I6gfdb8rRkNYzirJFikyEGs5ma0yWJ0WbB74OyPJGZs=;
        b=cZxgDDHBXNeIlaWxwnAIbpFat3jSvRmcYxDv92befB7Z//tI+/N6+8zqOlh+ESIh8g
         DuUVwkHO0tF6EMjNulZuMwIGBquUkkEq9ZlPxzDDidLORJtG3cAmtTaRUPGciFoRnyoa
         nhyt+ItY2N/N1iieWH3d8YuDBlrhAE/ZqkhcIj7AYY5cGA3dVUdk2NYbXkTXPYjmyeQG
         M4wgjmXcbcArZ1RO51pPHl+9svrnmYk/lw8a2QEMqcOZsJdCnzTxYZhiqIBW3V6zluhV
         iZzDb25dbd+GqGX/D1MCbhILdEylM2nJAg4bBJTpLa1+PsRW4bbH2WLVrV4HlFfS7GND
         ujHw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777289840; x=1777894640; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ggb5lc0jF2Wl6dmSNxpjNYGRULrbBBGGzqHcz78+7nY=;
        b=qIeNCHZtXUxTd+rFLiVvNeiFzltbDb31ZG5JXlr9dbi527EBRIpmw3uW76jX8p9Nzc
         X2b7ftzx7hcWzGw8mjxvRMjKmL+lkqbk/8iE3vilif/lvsR0+TVdVNNqantd4aOb+gii
         sS5wOn99o2Q6lnOiKBJwYquiIrIU4KcYyygQET9ScNGv/CGAA8HwtGH6bBj4fwBvB5Iz
         9EnHoXfIPJN1taGoErbmBK/I9Y1mG1r5ltUaK3XgvH8Ly+ezNQHHy/nMeAV4BtIbTAlR
         d1PubzRwvfsley0qkvwwGifRVWf+h98+Oj2YkZ3CLnVpwvd4XZV2lJOgjQByaq4KPAqj
         UoSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777289840; x=1777894640;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ggb5lc0jF2Wl6dmSNxpjNYGRULrbBBGGzqHcz78+7nY=;
        b=Feji7yn1Al8K1tsWkSpzBapF57myVZ4MOFieq0o8QyM1+hfObpOmAvIQhGXJmm1b4/
         QBBT9uvgDrtmU26kwVdD/YfpoQt3NN+xgNY1GyUR+gWj+YfzhMp2g+Me5Nz5ZoHobYgg
         1bT8ZpSDuk1q/g7huhoKOrKK/nZKR6hlirI8e2S6H0Oh/65kuotGha4siqY9A19KPrE5
         bmSHS+WW0LPVuugYLENHzJT31r2rRd1fxxYG+KzMjyDHJQuHNFVf5o/c5gJLPycuBBmL
         r/+bsndCD3dJW+L4y9fL812opU/lM1weG09JzpaIA6r7xa8eZYlt6lD15n81Tw7nii9k
         klMA==
X-Forwarded-Encrypted: i=1; AFNElJ9V6bggyMUSz18889iktFASUwt8juBbbGh6jpqa3gaDNcaT9c40EH6mPqRqzIhixVusCXm/f6QeJR0=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywda43Ya0kmA7jo5NJRx0Sb2k/RsyYZUBmO72weXd8y3nzTuv5H
	T2dlL3xvzEQX6DAcPHqbQFXn7wgmJnY8jJkWTegQArvyLPLldPfCVubM/7El7cn72/wO6STIO8I
	+XgHko58tFHm5pF1M+2KDKy9e7DUcd9U=
X-Gm-Gg: AeBDievK9+NdDf9N7M1wlHajx3/0unhG1dcVAg7dJNR/5cHBKjKLWh+uZrihiRmBpEQ
	bsg4uxGjRaRjYZyhLHZEHhEAFen2KN2b6yG6cZiMisb8W6BX3O3agdC3/6TfV+FwgwiSfdeCQzJ
	VW2AgFDfYRZREuOBoF2fpdBz29NEKahbGdB2c8ioI3RMwxNCv0h91UwBAZQguavlfPb8Qvdh2dQ
	WL3RwEb/noct3m8pivHGKel3ooUuYa7MkaDRZNa8qMbVKy1CSJcFtpPuz+PzJehVwpO2NUYg7dz
	bXR8I3BeVGEzB/ir4MQD1/U83AAZi+eNJJfBHNhuTO6R9Hy5vAUUAk4/fnYUN+hJ2pok0O4nFrB
	lLxI=
X-Received: by 2002:a05:600c:899:b0:489:1a63:509c with SMTP id
 5b1f17b1804b1-4891a635125mr300177175e9.0.1777289839620; Mon, 27 Apr 2026
 04:37:19 -0700 (PDT)
MIME-Version: 1.0
References: <20260325112039.464992-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20260325112039.464992-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Mon, 27 Apr 2026 12:36:53 +0100
X-Gm-Features: AVHnY4L8-24eDATH5JOJjKbBembALKWoNyY05D17sZdfSTDKMMYzrFglELjP3cU
Message-ID: <CA+V-a8uLT-7T_FNqPS4o+zkhAv312bM_qhbq-5dOveBSUBPJ-A@mail.gmail.com>
Subject: Re: [PATCH v2] phy: renesas: rcar-gen3-usb2: Simplify ID/VBUS
 detection logic
To: Vinod Koul <vkoul@kernel.org>
Cc: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, Pavel Machek <pavel@nabladev.com>, 
	Magnus Damm <magnus.damm@gmail.com>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Neil Armstrong <neil.armstrong@linaro.org>, linux-renesas-soc@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260427_043722_109857_8353767D 
X-CRM114-Status: GOOD (  18.26  )
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

SGkgVmlub2QsCgpPbiBXZWQsIE1hciAyNSwgMjAyNiBhdCAxMToyMOKAr0FNIFByYWJoYWthciA8
cHJhYmhha2FyLmNzZW5nZ0BnbWFpbC5jb20+IHdyb3RlOgo+Cj4gRnJvbTogTGFkIFByYWJoYWth
ciA8cHJhYmhha2FyLm1haGFkZXYtbGFkLnJqQGJwLnJlbmVzYXMuY29tPgo+Cj4gUmVhZCBVU0Iy
X0FEUENUUkwgb25jZSBpbiByY2FyX2dlbjNfY2hlY2tfaWQoKSBpbnN0ZWFkIG9mIGlzc3VpbmcK
PiBtdWx0aXBsZSBNTUlPIHJlYWRzLCBhbmQgZGVyaXZlIGJvdGggSURESUcgYW5kIFZCVVNWQUxJ
RCBmcm9tIHRoZSBzYW1lCj4gdmFsdWUuCj4KPiBEcm9wIHRoZSByZWR1bmRhbnQgISEgb3BlcmF0
b3IsIGFzIGFzc2lnbmluZyBhIG1hc2tlZCB1MzIgdmFsdWUgdG8gYQo+IGJvb2wgYWxyZWFkeSBw
ZXJmb3JtcyB0aGUgcmVxdWlyZWQgbm9ybWFsaXphdGlvbi4gU2ltcGxpZnkgdGhlIGxvZ2ljIGJ5
Cj4gY29tcGFyaW5nIHRoZSBJRCBhbmQgVkJVUyBzdGF0dXMgZGlyZWN0bHksIHdoaWNoIGlzIGVx
dWl2YWxlbnQgdG8gdGhlCj4gcHJldmlvdXMgY29uZGl0aW9uYWwgYnV0IGVhc2llciB0byBmb2xs
b3cuCj4KPiBSZXBvcnRlZC1ieTogUGF2ZWwgTWFjaGVrIDxwYXZlbEBuYWJsYWRldi5jb20+Cj4g
Q2xvc2VzOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvYWNKVkNPZGxjaExpU2U1bkBkdW8u
dWN3LmN6Lwo+IFNpZ25lZC1vZmYtYnk6IExhZCBQcmFiaGFrYXIgPHByYWJoYWthci5tYWhhZGV2
LWxhZC5yakBicC5yZW5lc2FzLmNvbT4KPiAtLS0KPiB2MS0+djI6Cj4gLSBSZWJhc2VkIG9uIHRv
cCBvZiBsYXRlc3QgbmV4dC0yMDI2MDMyNAo+IC0gQ29tYmluZWQgdmFyaWFibGUgZGVjbGFyYXRp
b25zIGFuZCBhc3NpZ25tZW50cyBhbmQgZHJvcHBlZAo+ICAgcmVkdW5kYW50ICEhIG9wZXJhdG9y
Cj4gLSBVcGRhdGVkIGNvbW1pdCBtZXNzYWdlCj4gLSBDb3JyZWN0ZWQgdGhlIGxpbmsgZm9yIGNs
b3NlcyB0YWcKPiAtLS0KPiAgZHJpdmVycy9waHkvcmVuZXNhcy9waHktcmNhci1nZW4zLXVzYjIu
YyB8IDEwICsrKystLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgNiBk
ZWxldGlvbnMoLSkKPgpHZW50bGUgcGluZy4KCkNoZWVycywKUHJhYmhha2FyCgo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL3BoeS9yZW5lc2FzL3BoeS1yY2FyLWdlbjMtdXNiMi5jIGIvZHJpdmVycy9w
aHkvcmVuZXNhcy9waHktcmNhci1nZW4zLXVzYjIuYwo+IGluZGV4IDc5ZTgyMGUyZmU1NS4uOWE0
NWQ4NDBlZmViIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5L3JlbmVzYXMvcGh5LXJjYXItZ2Vu
My11c2IyLmMKPiArKysgYi9kcml2ZXJzL3BoeS9yZW5lc2FzL3BoeS1yY2FyLWdlbjMtdXNiMi5j
Cj4gQEAgLTMxNCwxMyArMzE0LDExIEBAIHN0YXRpYyB2b2lkIHJjYXJfZ2VuM19pbml0X2Zyb21f
YV9wZXJpX3RvX2FfaG9zdChzdHJ1Y3QgcmNhcl9nZW4zX2NoYW4gKmNoKQo+ICBzdGF0aWMgYm9v
bCByY2FyX2dlbjNfY2hlY2tfaWQoc3RydWN0IHJjYXJfZ2VuM19jaGFuICpjaCkKPiAgewo+ICAg
ICAgICAgaWYgKGNoLT5waHlfZGF0YS0+dmJsdmxfY3RybCkgewo+IC0gICAgICAgICAgICAgICBi
b29sIHZidXNfdmFsaWQ7Cj4gLSAgICAgICAgICAgICAgIGJvb2wgZGV2aWNlOwo+ICsgICAgICAg
ICAgICAgICB1MzIgdmFsID0gcmVhZGwoY2gtPmJhc2UgKyBVU0IyX0FEUENUUkwpOwo+ICsgICAg
ICAgICAgICAgICBib29sIHZidXNfdmFsaWQgPSB2YWwgJiBVU0IyX0FEUENUUkxfVkJVU1ZBTElE
Owo+ICsgICAgICAgICAgICAgICBib29sIGRldmljZSA9IHZhbCAmIFVTQjJfQURQQ1RSTF9JRERJ
RzsKPgo+IC0gICAgICAgICAgICAgICBkZXZpY2UgPSAhIShyZWFkbChjaC0+YmFzZSArIFVTQjJf
QURQQ1RSTCkgJiBVU0IyX0FEUENUUkxfSURESUcpOwo+IC0gICAgICAgICAgICAgICB2YnVzX3Zh
bGlkID0gISEocmVhZGwoY2gtPmJhc2UgKyBVU0IyX0FEUENUUkwpICYgVVNCMl9BRFBDVFJMX1ZC
VVNWQUxJRCk7Cj4gLQo+IC0gICAgICAgICAgICAgICByZXR1cm4gdmJ1c192YWxpZCA/IGRldmlj
ZSA6ICFkZXZpY2U7Cj4gKyAgICAgICAgICAgICAgIHJldHVybiBkZXZpY2UgPT0gdmJ1c192YWxp
ZDsKPiAgICAgICAgIH0KPgo+ICAgICAgICAgaWYgKCFjaC0+dXNlc19vdGdfcGlucykKPiAtLQo+
IDIuNTMuMAo+CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1waHkK
