Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B725C5AD4E
	for <linux-phy@archiver.kernel.org>; Mon, 10 Aug 2026 06:22:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t08Rz8M/WAtvOXabVhXei8OD/FRXq0TsZn7V9MNdK/g=; b=FgEy7kLd/RxJio
	6D+YbN4aZp6/gOpo1+4wxcQUu5yLASxidrZwa58QIQOCkZXr2Y6xS+NPr2CmMU7gqkH2bKHdFkIld
	vQP1OixvIwry30ZRuIpbDEtHTYJA3n+coyr2DYVEjl1Kem3H73S6FsIXtCWgUpsk7pP+IKgJqSPDQ
	Un/AEHyaWCH+OJ6NLzU7LgF0ffxBmH7YXQ9ovP/WMW902b5HkeKfs0JjhFhresReSnkeadlpI5dkW
	43FtH6gFPvRHwdsIT9oHVjANfHLgI1LkacfEJoKBahIcRazyVGOAcrBw7YmQpczt1Ya94TSRa2LhB
	VzYcdL3Q4iTYYwv+08DQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtJPL-0000000B5Bj-2KU5;
	Mon, 10 Aug 2026 06:22:47 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtJPI-0000000B5BL-3fW2
	for linux-phy@lists.infradead.org;
	Mon, 10 Aug 2026 06:22:46 +0000
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-47fecbb7000so666253f8f.2
        for <linux-phy@lists.infradead.org>; Sun, 09 Aug 2026 23:22:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1786342962; cv=none;
        d=google.com; s=arc-20260327;
        b=aFqEoLynaRgQRZfrEyZJM0djdT8QjTzzvAw4l5iJxJfdmCswMWeUD7rTfEdn0V+tTV
         I7VBV/R/uXH9xaXkTgnjAfMXmyINAbqsT4F51TlSVxu0+78BVUx3RTTPJrVYOE/i3Ikm
         V30x/pTrYk5YAErlFkDujVg/yviy1OersGkzOTUo/0EYtDE/XotbJfGtLT21zY9xBv9i
         h52H5qzLgzx/IVSk7zPoRqhOzJyMj5Ai08bSd6clcwwbGDsUNUntsg0FBuLi6vcbscpb
         kzNxHtPpLyTIsVJoW0n6k7F5OMQptI1zZOcTsKZ/yeGiHLOR12OaqcuhT28deXNKTPbH
         4jEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=2nCaqUvlzQuEmT1eloU+mJpWPGgkn9RpO4cKrG5dYAU=;
        fh=pIZnONwFobOz/LeJAeRty/KlQyGH/nC6babwmLNjQng=;
        b=r7rzQv2LPJKjP/Tnc83khtCuMHOv6Ijngxyyggh4utKBznGhy4kGqY3rxJVXPDYaen
         8htrG0AqvF3Mjffjv11s3XGxSTgNKscHSxdDKErXgHtZ+StrJKsC79nKNEe1UK+K7GC5
         SSapPyHviErns4isge8d3kq6HVsQwTnsThtianHNO3uC+0/Zjy2dMRlQvJIknXd8kGy4
         zLBEv0UNI7b5UjUIcLAL//nZl1dJizUjR9gTcLNbBWg+mArN4h7FBkjDvVlqkrycsrVz
         HM5QIwKg8uElFeCiWY/34/W9uEJuRumUjE88oeUdERatF6BdrPU9SNshatp4kwxWTXtZ
         8N7Q==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786342962; x=1786947762; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=2nCaqUvlzQuEmT1eloU+mJpWPGgkn9RpO4cKrG5dYAU=;
        b=Wi9ptXiH/lE8vbEqvBGkgm4PEi8yDu0InSBFIGGFmP5274MribhlYldISDyDLcJw3E
         Z6a+OjRCOPjDm1ejlL0LVJS/N4H5kChekPU/P/2avx0wZK06gyo2m6bRWTL4Lw+/Aoz+
         yQzVsQBo2gdTmbK7uNGpHGvkZScmHfiBpeLbjByuF30PzD5qC4bQnZgdMy48BPpMLRUf
         Pqd1kSu6q4PIRZU4/f6nF8MQimdMLjpss7PTzVvu2SKJDi1fXwJw/7N+9NclGnUzAvOh
         iecfZbmZiPSEuKDvRdUedhH6gCiTuRrfpAol1CMcXR1MNTyq/GBStUUxEWisUFQlTpb2
         opcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786342962; x=1786947762;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=2nCaqUvlzQuEmT1eloU+mJpWPGgkn9RpO4cKrG5dYAU=;
        b=lxZuitAyyAFA9W7uYgZJam9DxEFAXIcM108pi2tfJj3rwkXc4/jaK1wMUvgGYGWIiB
         KL+uQuSgRNfWCYSbI5LwtrG/n7CXFMx92+i7/BN7JYSJI2hEQgOO3fIVsMlGqVK/celI
         Xn8Ahk+7z1GztjD4UqWC5z9cj6qfVS9Kq7at9QWR0/r8kJYvj45TFSRx/SK9JeA0YP0g
         D0vWgYcAYRSo886I53M3ORneZBKHZP8ZnQGxzDis9A1K6r4Kk+GsuYFeUJ/7EMqXwY3/
         UrErVKuqD/SQv17NNo8ayosHQhngzc5J4eFhISZv7rUk1K8T1Eawe3d0MGlvHS2/tCpu
         H5Gg==
X-Forwarded-Encrypted: i=1; AHgh+RqYtkDJsd8s8+e+bPgBueF39uFAq+ELxFuutQYX2u2gLdNyLWeHcjipv1zYDxFGwQzdD5Mn/hQ5KyY=@lists.infradead.org
X-Gm-Message-State: AOJu0YxthT4p5ip3inyagc80ZwD50prPgoKMF3UgBsKVhv+WC53THG8c
	fgExOjHG2zFDLS/vIwEXSf+FWM2YZ1eY3YybAtd8t4You3xSA3cDQk4aC0j6D/gVfrPUYMWVuPI
	Aoyw0yNL4NlpyM/zZcE1izVO+HXhTCQ8=
X-Gm-Gg: AR+sD10hN2xKyiDs2EHCs6uzL2m1cmMF10O0z0qxI+cCTQhke7DgVwLjuKGfXddlWnK
	/2T/JAfSjwRuykEeGe440Gn3RabY6PsQP3ReGwDZ+ZT6ovE2S4h9/NdSAFebzoqxyGYokhpEtgb
	2Tlxi585Vq7QZTijF6fC+LgbL9GPvwPVstabK1ChVez2Ti2P4qILJIMcb0gknGsjyqLJ0pDM+51
	gCmCsGu/6tMrmhCPi/MI0wyPovPEpmX86ppvKKujJZdk6D7/Kp0dPCm3E7yu7tSBx7CzFiTD6bi
	uvF1ea1cb3e68Ihdskxfot2WXf/GzyMXw8Ig5ap/nS5g54Id7HCIKPe9nJhCRBaBzsvpjlIzBCG
	zl5FZwhIiSbdPraaVv56HuPIFVET44wEjuFZzEAiW3afcPbIl4jbWfAom8D+Jr8B5
X-Received: by 2002:a05:6000:46d8:b0:47f:776f:3838 with SMTP id
 ffacd0b85a97d-48130e7e741mr17424077f8f.6.1786342962462; Sun, 09 Aug 2026
 23:22:42 -0700 (PDT)
MIME-Version: 1.0
References: <20260702125855.3157253-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20260702125855.3157253-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Mon, 10 Aug 2026 07:22:14 +0100
X-Gm-Features: AUfX_mw6Z0PAxG9axT9YlVKos6xjgmhuOdB1JydRIr01ODIxx6ZgWLrLZdvGGNo
Message-ID: <CA+V-a8sG6uT2an8R0T6Jy4ytwGeNTfMCp_CMGdQtUyU0JKetdw@mail.gmail.com>
Subject: Re: [PATCH] phy: renesas: rcar-gen3-usb2: Ignore missing VBUS regulator
To: Vinod Koul <vkoul@kernel.org>
Cc: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, Magnus Damm <magnus.damm@gmail.com>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>, linux-renesas-soc@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Prabhakar <prabhakar.csengg+renesas@gmail.com>, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260809_232244_937005_CDBFD8F3 
X-CRM114-Status: GOOD (  21.63  )
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

T24gVGh1LCBKdWwgMiwgMjAyNiBhdCAxOjU54oCvUE0gUHJhYmhha2FyIDxwcmFiaGFrYXIuY3Nl
bmdnQGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBGcm9tOiBMYWQgUHJhYmhha2FyIDxwcmFiaGFrYXIu
bWFoYWRldi1sYWQucmpAYnAucmVuZXNhcy5jb20+Cj4KPiBDb21taXQgYjZkN2RkMTU3NzYzICgi
cGh5OiByZW5lc2FzOiByY2FyLWdlbjMtdXNiMjogQWRkIHJlZ3VsYXRvciBmb3IKPiBPVEcgVkJV
UyBjb250cm9sIikgaW50cm9kdWNlZCBzdXBwb3J0IGZvciBjb250cm9sbGluZyBPVEcgVkJVUyB0
aHJvdWdoCj4gdGhlIHJlZ3VsYXRvciBmcmFtZXdvcmsuCj4KPiBBcyBwYXJ0IG9mIHRoaXMgY2hh
bmdlLCB0aGUgZHJpdmVyIHN0YXJ0ZWQgcmVxdWVzdGluZyBhbiBleGNsdXNpdmUgInZidXMiCj4g
cmVndWxhdG9yIGZvciBPVEctY2FwYWJsZSBQSFlzIHdpdGggbm9fYWRwX2N0cmwgc2V0LiBUaGUg
bG9va3VwIGZhaWx1cmUKPiB3YXMgcHJvcGFnYXRlZCB1bmNvbmRpdGlvbmFsbHksIGNhdXNpbmcg
cHJvYmUgdG8gZmFpbCBvbiBwbGF0Zm9ybXMgd2hlcmUKPiBubyBWQlVTIHJlZ3VsYXRvciBpcyBk
ZXNjcmliZWQuCj4KPiBPbiBSWi9WMkggYW5kIFJaL1YyTiwgd2hpY2ggZG8gbm90IHVzZSBhIFZC
VVMgcmVndWxhdG9yLCB0aGlzIHJlc3VsdHMKPiBpbiB0aGUgZm9sbG93aW5nIGVycm9yOgo+Cj4g
ICAgIHBoeV9yY2FyX2dlbjNfdXNiMiAxNTgwMDIwMC51c2ItcGh5Ogo+ICAgICBkdW1teSBzdXBw
bGllcyBub3QgYWxsb3dlZCBmb3IgZXhjbHVzaXZlIHJlcXVlc3RzIChpZD12YnVzKQo+Cj4gVGhp
cyBmYWlsdXJlIGNvbXBsZXRlbHkgcHJldmVudHMgdGhlIFVTQiAyLjAgaW50ZXJmYWNlIGZyb20g
aW5pdGlhbGl6aW5nLgo+Cj4gRml4IHRoaXMgYnkgYWxsb3dpbmcgdGhlIHByb2JlIHRvIGNvbnRp
bnVlIGlmIGFuIGV4dGVybmFsIFZCVVMgcmVndWxhdG9yCj4gaXMgbWlzc2luZy4gT25seSBwcm9w
YWdhdGUgdGhlIGVycm9yIGlmIHRoZSBpbnRlcm5hbCB2YnVzLXJlZ3VsYXRvciBub2RlCj4gaXMg
ZXhwbGljaXRseSBwcmVzZW50LCBvciBpZiB0aGUgbG9va3VwIHJldHVybnMgLUVQUk9CRV9ERUZF
Ui4gRm9yIGFsbAo+IG90aGVyIG1pc3NpbmcgcmVndWxhdG9yIGVycm9ycywgZ3JhY2VmdWxseSBh
c3N1bWUgbm8gZXh0ZXJuYWwgVkJVUwo+IHJlZ3VsYXRvciBpcyBhdmFpbGFibGUgYW5kIHJldHVy
biAwLgo+Cj4gRml4ZXM6IGI2ZDdkZDE1Nzc2MyAoInBoeTogcmVuZXNhczogcmNhci1nZW4zLXVz
YjI6IEFkZCByZWd1bGF0b3IgZm9yIE9URyBWQlVTIGNvbnRyb2wiKQo+IFNpZ25lZC1vZmYtYnk6
IExhZCBQcmFiaGFrYXIgPHByYWJoYWthci5tYWhhZGV2LWxhZC5yakBicC5yZW5lc2FzLmNvbT4K
PiAtLS0KPiAgZHJpdmVycy9waHkvcmVuZXNhcy9waHktcmNhci1nZW4zLXVzYjIuYyB8IDEzICsr
KysrKysrKysrLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDExIGluc2VydGlvbnMoKyksIDIgZGVsZXRp
b25zKC0pCj4KR2VudGxlIHBpbmcuCgpDaGVlcnMsClByYWJoYWthcgoKPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9waHkvcmVuZXNhcy9waHktcmNhci1nZW4zLXVzYjIuYyBiL2RyaXZlcnMvcGh5L3Jl
bmVzYXMvcGh5LXJjYXItZ2VuMy11c2IyLmMKPiBpbmRleCBlZjM4YzNiMzY1ZDQuLjlhZTk5NzVk
MzI1NSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9yZW5lc2FzL3BoeS1yY2FyLWdlbjMtdXNi
Mi5jCj4gKysrIGIvZHJpdmVycy9waHkvcmVuZXNhcy9waHktcmNhci1nZW4zLXVzYjIuYwo+IEBA
IC05MDIsOCArOTAyLDE3IEBAIHN0YXRpYyBpbnQgcmNhcl9nZW4zX3BoeV91c2IyX3ZidXNfcmVn
dWxhdG9yX2dldF9leGNsdXNpdmVfZW5hYmxlKHN0cnVjdCByY2FyX2dlCj4gICAgICAgICBpbnQg
cmV0Owo+Cj4gICAgICAgICBjaGFubmVsLT52YnVzID0gZGV2bV9yZWd1bGF0b3JfZ2V0X2V4Y2x1
c2l2ZShkZXYsICJ2YnVzIik7Cj4gLSAgICAgICBpZiAoSVNfRVJSKGNoYW5uZWwtPnZidXMpKQo+
IC0gICAgICAgICAgICAgICByZXR1cm4gUFRSX0VSUihjaGFubmVsLT52YnVzKTsKPiArICAgICAg
IGlmIChJU19FUlIoY2hhbm5lbC0+dmJ1cykpIHsKPiArICAgICAgICAgICAgICAgcmV0ID0gUFRS
X0VSUihjaGFubmVsLT52YnVzKTsKPiArICAgICAgICAgICAgICAgLyogSWYgdmJ1cy1yZWd1bGF0
b3Igbm9kZSB3YXMgcHJlc2VudCB2YnVzIHJlZ3VsYXRvciBzaG91bGQgYmUgYXZhaWxhYmxlICov
Cj4gKyAgICAgICAgICAgICAgIGlmIChjaGFubmVsLT5vdGdfaW50ZXJuYWxfcmVnKQo+ICsgICAg
ICAgICAgICAgICAgICAgICAgIHJldHVybiByZXQ7Cj4gKwo+ICsgICAgICAgICAgICAgICBpZiAo
cmV0ID09IC1FUFJPQkVfREVGRVIpCj4gKyAgICAgICAgICAgICAgICAgICAgICAgcmV0dXJuIHJl
dDsKPiArCj4gKyAgICAgICAgICAgICAgIHJldHVybiAwOwo+ICsgICAgICAgfQo+Cj4gICAgICAg
ICBpZiAoZW5hYmxlKSB7Cj4gICAgICAgICAgICAgICAgIHJldCA9IHJlZ3VsYXRvcl9lbmFibGUo
Y2hhbm5lbC0+dmJ1cyk7Cj4gLS0KPiAyLjU0LjAKPgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
