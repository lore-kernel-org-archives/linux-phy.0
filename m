Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1E7ECA0EC0
	for <linux-phy@archiver.kernel.org>; Wed,  6 Aug 2025 21:57:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EpWZCzTXQa6o38uW/sbtWGrMq4PlSkx1PRBClYFFETI=; b=BCb/uWvLp3uml1
	1tE1WwdSy74te4uoHYkRYT6ua4AA5uBK09l+V7I/mjjidrWYWsm/JjMpGF5SaaaWybfRbNYKpMQOA
	lIzpECtugk+YgTrtMLZKcmd4Dnpuqjk5p1rDXb3o9Sonur9Qe+m8SF8Am5DoIjPt+tdj0Rxcos+yc
	9L9vK/Qm5h2qqi7Eoio5chOPUYmICp8IijBT7GNjcjAToI+BaxQ8MjJ3Fhit6HPrDUaeAgVqix+Hg
	dK90E3Yu0xT9U9YwDpKV3R59g6+wkC/azxseayafCPcrEwWLb0O9gsuGPyMkg0IWdQy6Tsv6FnOt8
	F6bSWDopEE2t27Lul8tA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujm8k-0000000GeqJ-37Va;
	Wed, 06 Aug 2025 21:57:42 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujkPl-0000000GK70-3jxp
	for linux-phy@lists.infradead.org;
	Wed, 06 Aug 2025 20:07:11 +0000
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-615398dc162so426069a12.3
        for <linux-phy@lists.infradead.org>; Wed, 06 Aug 2025 13:07:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1754510828; x=1755115628; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1y//2z3GOpDTsyDCJpqXABs/fund7CJdbSsFET0LtjE=;
        b=PQLrpBq+c7HizZbjA/GozkjkgZgOPedtdOrImyiE7Uuk4bXt1X8qj4vktPd7OHG0mS
         hSHJnr1P4L+GxqKEulRnqA4h10xrbI2kbGFcahK8pozomTVmXUhGewewi9l68TmlrfIl
         c85UpdmoNQgAWspmcmljW1kUNg024quxcXk9mRUgYQYGh2Daj6TzK6TnIeCInej2gnHb
         ZfTVGGBaUwlqgAQMAP9kRBn2HFnG7nFcQJ83dZ33vhz6jR/FIQWOa7eF59rvG8Vv5LpX
         6x9PDyECXqtvIz10slpF+ObkktYtz3gRjKaISnY2zo/+7St1kLbde+57GAX7PS1mDoP4
         nL+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754510828; x=1755115628;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1y//2z3GOpDTsyDCJpqXABs/fund7CJdbSsFET0LtjE=;
        b=Inc3kzK3Yew3CeEFeeq7hG+FTVUI61roNIW/ewJ9RFsW7UvYSBDn74F9pnhh+x1FUE
         MLcBMOkb4QTmFj76N5ftzR+Al9sl13N51QAYxCfO0hF2oO/l4+Vk5zOKJU248AEiSCwY
         JERm4aF0Ut9P18oUljdhhzBhKKO1nR2jgfr9P72T/YlOsHAQuyCW1KccOjxcw+M4xNaS
         HwswBnoXrEb+/0BvPou+Gm0xOsadUacmPQ4xyvkXlT5hMjyRfRhAdToFNfE3tdpBg4Ns
         FLa0B8dhwEZxkNKHWAdSqEGN4QqxsKpL7KiH4vBjNfi0McZEOEA0P2+4vPL9zb/Dhqhk
         o77w==
X-Forwarded-Encrypted: i=1; AJvYcCX1dzFBUG5lvN6Neon5qUt91DY/whap1nDkPTp2lMsgCpjB2ixTcyoeus7CwqKzMreRPejBsY1yZNs=@lists.infradead.org
X-Gm-Message-State: AOJu0YxCgMMi54Q4F7qy16GxMtj2ozgPblLDSO/mINHUuthkwG4tKqoF
	fLDNEnh7UH0rSPaz2LqYmuVWocKlPlP8tIvwPQ3JvJw7/C4vo6IC29P6A/GusE5wewL7N9PehNI
	3VgXX8V8rfSfwdXuwfcwRi4ejnCSRO2M=
X-Gm-Gg: ASbGncufZaYPanDI3Ylx6zv1owwNgm5uKxydsnzswy3ZIIqn0n4AZvNnBWiZogjH7mO
	6WYi7CiANO920tLp2iKEuvGqxsx9lch6d4AAzu2GnjADPcfNJEoEAS99WTUfAhuervn3viDjF6M
	UgeDWa+aMtnFLboT11bGaW/ZW6d5m3dplINZ6uluNWUguPhOFezkRdt7SKSorZu0SY7H8UhBbgx
	FGYmQ==
X-Google-Smtp-Source: AGHT+IHhhQEGu5BtXcY7VW+xT3nmIjVY4G2aymShY3a3bD46hWVFOr2Hqt0MPzl3Os8CHo+qZbAd4sJv2gxENx2f08Y=
X-Received: by 2002:a05:6402:1ec6:b0:615:c767:5ba1 with SMTP id
 4fb4d7f45d1cf-61796094c0fmr3817267a12.3.1754510828182; Wed, 06 Aug 2025
 13:07:08 -0700 (PDT)
MIME-Version: 1.0
References: <20250805122529.2566580-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20250805122529.2566580-5-prabhakar.mahadev-lad.rj@bp.renesas.com> <CAMuHMdVMKzJtomQzzZaHXbhhEJ_3u71Kj7QcMhRgCXcDWY-Kqw@mail.gmail.com>
In-Reply-To: <CAMuHMdVMKzJtomQzzZaHXbhhEJ_3u71Kj7QcMhRgCXcDWY-Kqw@mail.gmail.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Wed, 6 Aug 2025 21:06:42 +0100
X-Gm-Features: Ac12FXyyRAJ6bblVH7gGupbmqizl2-LRtb7rxFThhwX2ialL0d0fLzcb_vMcqyY
Message-ID: <CA+V-a8tQxJ6y-7odV-V9fZt90v4oiRwvqjcTh8-Fs7xfJAm9fg@mail.gmail.com>
Subject: Re: [PATCH 4/5] phy: renesas: rcar-gen3-usb2: Add support for RZ/T2H SoC
To: Geert Uytterhoeven <geert@linux-m68k.org>
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
X-CRM114-CacheID: sfid-20250806_130709_930235_EF121502 
X-CRM114-Status: GOOD (  21.20  )
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

SGkgR2VlcnQsCgpUaGFuayB5b3UgZm9yIHRoZSByZXZpZXcuCgpPbiBXZWQsIEF1ZyA2LCAyMDI1
IGF0IDM6NTnigK9QTSBHZWVydCBVeXR0ZXJob2V2ZW4gPGdlZXJ0QGxpbnV4LW02OGsub3JnPiB3
cm90ZToKPgo+IEhpIFByYWJoYWthciwKPgo+IE9uIFR1ZSwgNSBBdWcgMjAyNSBhdCAxNDoyNSwg
UHJhYmhha2FyIDxwcmFiaGFrYXIuY3NlbmdnQGdtYWlsLmNvbT4gd3JvdGU6Cj4gPiBGcm9tOiBM
YWQgUHJhYmhha2FyIDxwcmFiaGFrYXIubWFoYWRldi1sYWQucmpAYnAucmVuZXNhcy5jb20+Cj4g
Pgo+ID4gQWRkIGluaXRpYWwgc3VwcG9ydCBmb3IgdGhlIFJlbmVzYXMgUlovVDJIIFNvQyB0byB0
aGUgUi1DYXIgR2VuMyBVU0IyIFBIWQo+ID4gZHJpdmVyLiBUaGUgUlovVDJIIFNvQyByZXF1aXJl
cyBjb25maWd1cmF0aW9uIG9mIGFkZGl0aW9uYWwKPiA+IGhhcmR3YXJlLXNwZWNpZmljIGJpdHMg
Zm9yIHByb3BlciBWQlVTIGxldmVsIGNvbnRyb2wgYW5kIE9URyBvcGVyYXRpb24uCj4gPgo+ID4g
SW50cm9kdWNlIHRoZSBgdmJsdmxfY3RybGAgZmxhZyBpbiB0aGUgU29DLXNwZWNpZmljIGRyaXZl
ciBkYXRhIHRvIGVuYWJsZQo+ID4gaGFuZGxpbmcgb2YgVkJVUyBsZXZlbCBzZWxlY3Rpb24gbG9n
aWMgdXNpbmcgYFZCQ1RSTC5WQkxWTGAgYml0cy4gVGhpcyBpcwo+ID4gcmVxdWlyZWQgZm9yIG1h
bmFnaW5nIHRoZSBWQlVTIHN0YXR1cyBkZXRlY3Rpb24gYW5kIGRyaXZlIGxvZ2ljIGJhc2VkIG9u
Cj4gPiBTb0Mtc3BlY2lmaWMgbmVlZHMuCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogTGFkIFByYWJo
YWthciA8cHJhYmhha2FyLm1haGFkZXYtbGFkLnJqQGJwLnJlbmVzYXMuY29tPgo+Cj4gVGhhbmtz
IGZvciB5b3VyIHBhdGNoIQo+Cj4gPiAtLS0gYS9kcml2ZXJzL3BoeS9yZW5lc2FzL3BoeS1yY2Fy
LWdlbjMtdXNiMi5jCj4gPiArKysgYi9kcml2ZXJzL3BoeS9yZW5lc2FzL3BoeS1yY2FyLWdlbjMt
dXNiMi5jCj4KPiA+IEBAIC0yODQsNiArMjkzLDIxIEBAIHN0YXRpYyB2b2lkIHJjYXJfZ2VuM19p
bml0X2Zyb21fYV9wZXJpX3RvX2FfaG9zdChzdHJ1Y3QgcmNhcl9nZW4zX2NoYW4gKmNoKQo+ID4K
PiA+ICBzdGF0aWMgYm9vbCByY2FyX2dlbjNfY2hlY2tfaWQoc3RydWN0IHJjYXJfZ2VuM19jaGFu
ICpjaCkKPiA+ICB7Cj4gPiArICAgICAgIGlmIChjaC0+ZHJ2ZGF0YS0+dmJsdmxfY3RybCkgewo+
ID4gKyAgICAgICAgICAgICAgIGJvb2wgdmJ1c192YWxpZCA9IGZhbHNlOwo+ID4gKyAgICAgICAg
ICAgICAgIGJvb2wgZGV2aWNlID0gZmFsc2U7Cj4KPiBObyBuZWVkIHRvIHByZWluaXRpYWxpemUg
dGhlc2UgdHdvIHZhcmlhYmxlcy4KPgpBZ3JlZWQsIEkgd2lsbCBkcm9wIGl0LgoKPiA+ICsKPiA+
ICsgICAgICAgICAgICAgICBkZXZpY2UgPSAhIShyZWFkbChjaC0+YmFzZSArIFVTQjJfQURQQ1RS
TCkgJiBVU0IyX0FEUENUUkxfSURESUcpOwo+ID4gKyAgICAgICAgICAgICAgIHZidXNfdmFsaWQg
PSAhIShyZWFkbChjaC0+YmFzZSArIFVTQjJfQURQQ1RSTCkgJiBVU0IyX0FEUENUUkxfVkJVU1ZB
TElEKTsKPiA+ICsKPiA+ICsgICAgICAgICAgICAgICBpZiAoZGV2aWNlICYmIHZidXNfdmFsaWQp
Cj4gPiArICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gdHJ1ZTsKPiA+ICsgICAgICAgICAg
ICAgICBlbHNlIGlmICghZGV2aWNlICYmIHZidXNfdmFsaWQpCj4KPiBObyBuZWVkIGZvciBlbHNl
IGFmdGVyIHJldHVybiwgYnV0Li4uCj4KPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIHJldHVy
biBmYWxzZTsKPiA+ICsKPiA+ICsgICAgICAgICAgICAgICByZXR1cm4gIShkZXZpY2UgJiYgIXZi
dXNfdmFsaWQpOwo+Cj4gLi4uIGFsbCBsb2dpYyBhYm92ZSBjYW4gYmUgc2ltcGxpZmllZCB0bwo+
Cj4gICAgIHJldHVybiB2YnVzX3ZhbGlkID8gZGV2aWNlIDogIWRldmljZTsKPgpBaGhhIHRoYW5r
cyBmb3IgdGhlIHBvaW50ZXIhCgpDaGVlcnMsClByYWJoYWthcgoKLS0gCmxpbnV4LXBoeSBtYWls
aW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
