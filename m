Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3277C021B2
	for <linux-phy@archiver.kernel.org>; Tue, 25 Feb 2025 21:23:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PDzy4adCRfhNSE9Y3JOo54iYwCJZBsi9O3HonEXCtjI=; b=zWncnIPvr/SKVf
	gpYrondml/6MVFygsKapEYdoNjL2PCmg/VM1jcvVlSpGuvilfmXNQMu9JVN+vQ6hYKLjgGUJ6ILS3
	2UxxZfSMkVYsxe37DW79Is9OF4NvX0ZzN9zsQch6IeQzTATYyNtgGC72Bmyf1hr3eF08x8+7jXq5k
	0JPhJqVM4y8RfU1Z0lUx2mC0xJOdjo1WQZ62+INKEZcgrEbHfiNem99jqqMsq48xByqWrMuc0VRyX
	A+2awmPWVZ7Dw4hx3UirWZn5SsDjoEMLzrPemlZeEal1wP1EcNf4VJ26IrYISQI9VNHo93MbzFhT1
	jiLgnZErkV9yedjFGxrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tn2PF-00000001XDh-39gq;
	Tue, 25 Feb 2025 21:23:57 +0000
Received: from mail-vk1-xa2c.google.com ([2607:f8b0:4864:20::a2c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tn1nR-00000001QHB-2ytP
	for linux-phy@lists.infradead.org;
	Tue, 25 Feb 2025 20:44:54 +0000
Received: by mail-vk1-xa2c.google.com with SMTP id 71dfb90a1353d-520a473d2adso3889327e0c.2
        for <linux-phy@lists.infradead.org>; Tue, 25 Feb 2025 12:44:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740516292; x=1741121092; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xyoYCdijdAcDh+ZcnJz2vFf5VFCyyRpDkibyR777Msc=;
        b=HIuf6+gPfjOQPB/uYFZfkYdjOcHN2bUZu0DsBxLgZ7cgnf3yRdrpqLspkjGX0pD8z5
         fX4bAyMu/9qfhYVs6prb+b7PH1AxqAUf7MD1nEx71ceY1CVvNKU1HtKrTEpoLGuGO12J
         qGIxuxycFXetNiNh/K+2vAIwFanK4sj2WDnTFqq10sQLGyfxx1MSfhknnMO0aG93OMwi
         3Fnc/LkYhtc4JauD7uJy3/OMvI4yMrQXnj+jDPcq4QZZkGy++qrU1DAKmFdCj8P9qXku
         1WBvJRW4otEAU1bQLBYNsNkc9qjwNRC6YdzuH4KvkTOdNi05srPx4tzVnkjX0ErOr8yj
         K0AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740516292; x=1741121092;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xyoYCdijdAcDh+ZcnJz2vFf5VFCyyRpDkibyR777Msc=;
        b=LRfKNipLgJ9nVmMfnEYtTeuRG+p28xMbP+bGZOnSba9/R5aJxy/T9fdTJbsLbLD9VS
         6qNQ9Ky7e1CmnaP9pZPxiWwjmSMo5//5X9YtZIzV2u8vCq4B+8+NCUqP0JrWhOvXSNzB
         6LryAf0pCQzl9oCp7AZ/Y3zVH28qQOiZxFd/0KbWPEzwqSxpiHdHXreE3ppu2t0vqVgu
         Mggb8sv3mfXZaDj5QFnccLAJoM5q2ctlQHh0Fgek9iwElHuiP+Ne6hkFJ1Uq0UDterCe
         i5G9dxAw84F+y85nwCo7i9WrnoRcRJiMLNAjYwKeYyfg/xhfShnqEnj7+sLY2mSresWb
         bhXA==
X-Forwarded-Encrypted: i=1; AJvYcCXRcKA9MGqNszPcHgO6IYSpYyGXtLTdMYKh1dPHk5ArKoGQs3erlE+Spdqyl2GQ/sgkvvyo0qx0BIM=@lists.infradead.org
X-Gm-Message-State: AOJu0YzxnlrD5sVj+8zBqAFhHqlq0H0TQPomVdqXD0fAmKZXhsgW7qkB
	EVT9C5UdGVxsFhPx/tRtNQqoxIhPIVtoamuVQtnLUdRzep+ozTbudKE+JrRG9BNDiKVHZWNU4bL
	RcZMDFsqU8jQ42fEKQshmLDqkjKY=
X-Gm-Gg: ASbGncsQ9ATJ75/V7ArIkkFykL0fB3guI69wKw5RMQEMAO8KbrllebIdQZNDAbxy9Lx
	y75JkPUaBpyPav/hlsNbjJ7ZlHkNG5qBoDcaELvpjABh+nfX9PINu43DXxt8LJADGLeImbZ5uOl
	dToc2U+N4=
X-Google-Smtp-Source: AGHT+IHocGgr8LXv5iH+ArhqKv5jV5H0FxchaIRcKB4J5GmBjFqIgnfpzy2JT4VgnnH0wZ35gCW1W5xZpGxQIzs0H+g=
X-Received: by 2002:a05:6122:4009:b0:520:5a87:66f0 with SMTP id
 71dfb90a1353d-5224ca5f48amr622885e0c.0.1740516291172; Tue, 25 Feb 2025
 12:44:51 -0800 (PST)
MIME-Version: 1.0
References: <20250225105907.845347-1-claudiu.beznea.uj@bp.renesas.com> <20250225105907.845347-2-claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20250225105907.845347-2-claudiu.beznea.uj@bp.renesas.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Tue, 25 Feb 2025 20:44:25 +0000
X-Gm-Features: AQ5f1JrIlEI9csHkFJEJ6oSQm2qEweelampPKPuX9QpIXSLN_Q21l7vsjhxOkyE
Message-ID: <CA+V-a8tBPHA00n9MyP_PJa8KzTMDNJBoE7n+DzuzT_ObR7SuJw@mail.gmail.com>
Subject: Re: [PATCH v2 1/5] phy: renesas: rcar-gen3-usb2: Fix role detection
 on unbind/bind
To: Claudiu <claudiu.beznea@tuxon.dev>
Cc: yoshihiro.shimoda.uh@renesas.com, vkoul@kernel.org, kishon@kernel.org, 
	horms+renesas@verge.net.au, fabrizio.castro.jz@renesas.com, 
	linux-renesas-soc@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, 
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>, stable@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250225_124453_749337_A269DC56 
X-CRM114-Status: GOOD (  25.33  )
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

T24gVHVlLCBGZWIgMjUsIDIwMjUgYXQgMTA6NTnigK9BTSBDbGF1ZGl1IDxjbGF1ZGl1LmJlem5l
YUB0dXhvbi5kZXY+IHdyb3RlOgo+Cj4gRnJvbTogQ2xhdWRpdSBCZXpuZWEgPGNsYXVkaXUuYmV6
bmVhLnVqQGJwLnJlbmVzYXMuY29tPgo+Cj4gSXQgaGFzIGJlZW4gb2JzZXJ2ZWQgb24gdGhlIFJl
bmVzYXMgUlovRzNTIFNvQyB0aGF0IHVuYmluZGluZyBhbmQgYmluZGluZwo+IHRoZSBQSFkgZHJp
dmVyIGxlYWRzIHRvIHJvbGUgYXV0b2RldGVjdGlvbiBmYWlsdXJlcy4gVGhpcyBpc3N1ZSBvY2N1
cnMgd2hlbgo+IFBIWSAzIGlzIHRoZSBmaXJzdCBpbml0aWFsaXplZCBQSFkuIFBIWSAzIGRvZXMg
bm90IGhhdmUgYW4gaW50ZXJydXB0Cj4gYXNzb2NpYXRlZCB3aXRoIHRoZSBVU0IyX0lOVF9FTkFC
TEUgcmVnaXN0ZXIgKGFzCj4gcmNhcl9nZW4zX2ludF9lbmFibGVbM10gPSAwKS4gQXMgYSByZXN1
bHQsIHJjYXJfZ2VuM19pbml0X290ZygpIGlzIGNhbGxlZAo+IHRvIGluaXRpYWxpemUgT1RHIHdp
dGhvdXQgZW5hYmxpbmcgUEhZIGludGVycnVwdHMuCj4KPiBUbyByZXNvbHZlIHRoaXMsIGFkZCBy
Y2FyX2dlbjNfaXNfYW55X290Z19ycGh5X2luaXRpYWxpemVkKCkgYW5kIGNhbGwgaXQgaW4KPiBy
b2xlX3N0b3JlKCksIHJvbGVfc2hvdygpLCBhbmQgcmNhcl9nZW4zX2luaXRfb3RnKCkuIEF0IHRo
ZSBzYW1lIHRpbWUsCj4gcmNhcl9nZW4zX2luaXRfb3RnKCkgaXMgb25seSBjYWxsZWQgd2hlbiBp
bml0aWFsaXphdGlvbiBmb3IgYSBQSFkgd2l0aAo+IGludGVycnVwdCBiaXRzIGlzIGluIHByb2dy
ZXNzLiBBcyBhIHJlc3VsdCwgdGhlCj4gc3RydWN0IHJjYXJfZ2VuM19waHk6Om90Z19pbml0aWFs
aXplZCBpcyBubyBsb25nZXIgbmVlZGVkLgo+Cj4gRml4ZXM6IDU0OWI2YjU1YjAwNSAoInBoeTog
cmVuZXNhczogcmNhci1nZW4zLXVzYjI6IGVuYWJsZS9kaXNhYmxlIGluZGVwZW5kZW50IGlycXMi
KQo+IENjOiBzdGFibGVAdmdlci5rZXJuZWwub3JnCj4gUmV2aWV3ZWQtYnk6IFlvc2hpaGlybyBT
aGltb2RhIDx5b3NoaWhpcm8uc2hpbW9kYS51aEByZW5lc2FzLmNvbT4KPiBUZXN0ZWQtYnk6IFlv
c2hpaGlybyBTaGltb2RhIDx5b3NoaWhpcm8uc2hpbW9kYS51aEByZW5lc2FzLmNvbT4KPiBTaWdu
ZWQtb2ZmLWJ5OiBDbGF1ZGl1IEJlem5lYSA8Y2xhdWRpdS5iZXpuZWEudWpAYnAucmVuZXNhcy5j
b20+Cj4gLS0tCj4KPiBDaGFuZ2VzIGluIHYyOgo+IC0gY29sbGVjdGVkIHRhZ3MKPgo+ICBkcml2
ZXJzL3BoeS9yZW5lc2FzL3BoeS1yY2FyLWdlbjMtdXNiMi5jIHwgMzMgKysrKysrKysrKy0tLS0t
LS0tLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAxNCBpbnNlcnRpb25zKCspLCAxOSBkZWxldGlv
bnMoLSkKPgpSZXZpZXdlZC1ieTogTGFkIFByYWJoYWthciA8cHJhYmhha2FyLm1haGFkZXYtbGFk
LnJqQGJwLnJlbmVzYXMuY29tPgoKQ2hlZXJzLApQcmFiaGFrYXIKCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvcGh5L3JlbmVzYXMvcGh5LXJjYXItZ2VuMy11c2IyLmMgYi9kcml2ZXJzL3BoeS9yZW5l
c2FzL3BoeS1yY2FyLWdlbjMtdXNiMi5jCj4gaW5kZXggNzc1ZjRmOTczYTZjLi40NmFmYmEyZmUw
ZGMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvcmVuZXNhcy9waHktcmNhci1nZW4zLXVzYjIu
Ywo+ICsrKyBiL2RyaXZlcnMvcGh5L3JlbmVzYXMvcGh5LXJjYXItZ2VuMy11c2IyLmMKPiBAQCAt
MTA3LDcgKzEwNyw2IEBAIHN0cnVjdCByY2FyX2dlbjNfcGh5IHsKPiAgICAgICAgIHN0cnVjdCBy
Y2FyX2dlbjNfY2hhbiAqY2g7Cj4gICAgICAgICB1MzIgaW50X2VuYWJsZV9iaXRzOwo+ICAgICAg
ICAgYm9vbCBpbml0aWFsaXplZDsKPiAtICAgICAgIGJvb2wgb3RnX2luaXRpYWxpemVkOwo+ICAg
ICAgICAgYm9vbCBwb3dlcmVkOwo+ICB9Owo+Cj4gQEAgLTMyMCwxNiArMzE5LDE1IEBAIHN0YXRp
YyBib29sIHJjYXJfZ2VuM19pc19hbnlfcnBoeV9pbml0aWFsaXplZChzdHJ1Y3QgcmNhcl9nZW4z
X2NoYW4gKmNoKQo+ICAgICAgICAgcmV0dXJuIGZhbHNlOwo+ICB9Cj4KPiAtc3RhdGljIGJvb2wg
cmNhcl9nZW4zX25lZWRzX2luaXRfb3RnKHN0cnVjdCByY2FyX2dlbjNfY2hhbiAqY2gpCj4gK3N0
YXRpYyBib29sIHJjYXJfZ2VuM19pc19hbnlfb3RnX3JwaHlfaW5pdGlhbGl6ZWQoc3RydWN0IHJj
YXJfZ2VuM19jaGFuICpjaCkKPiAgewo+IC0gICAgICAgaW50IGk7Cj4gLQo+IC0gICAgICAgZm9y
IChpID0gMDsgaSA8IE5VTV9PRl9QSFlTOyBpKyspIHsKPiAtICAgICAgICAgICAgICAgaWYgKGNo
LT5ycGh5c1tpXS5vdGdfaW5pdGlhbGl6ZWQpCj4gLSAgICAgICAgICAgICAgICAgICAgICAgcmV0
dXJuIGZhbHNlOwo+ICsgICAgICAgZm9yIChlbnVtIHJjYXJfZ2VuM19waHlfaW5kZXggaSA9IFBI
WV9JTkRFWF9CT1RIX0hDOyBpIDw9IFBIWV9JTkRFWF9FSENJOwo+ICsgICAgICAgICAgICBpKysp
IHsKPiArICAgICAgICAgICAgICAgaWYgKGNoLT5ycGh5c1tpXS5pbml0aWFsaXplZCkKPiArICAg
ICAgICAgICAgICAgICAgICAgICByZXR1cm4gdHJ1ZTsKPiAgICAgICAgIH0KPgo+IC0gICAgICAg
cmV0dXJuIHRydWU7Cj4gKyAgICAgICByZXR1cm4gZmFsc2U7Cj4gIH0KPgo+ICBzdGF0aWMgYm9v
bCByY2FyX2dlbjNfYXJlX2FsbF9ycGh5c19wb3dlcl9vZmYoc3RydWN0IHJjYXJfZ2VuM19jaGFu
ICpjaCkKPiBAQCAtMzUxLDcgKzM0OSw3IEBAIHN0YXRpYyBzc2l6ZV90IHJvbGVfc3RvcmUoc3Ry
dWN0IGRldmljZSAqZGV2LCBzdHJ1Y3QgZGV2aWNlX2F0dHJpYnV0ZSAqYXR0ciwKPiAgICAgICAg
IGJvb2wgaXNfYl9kZXZpY2U7Cj4gICAgICAgICBlbnVtIHBoeV9tb2RlIGN1cl9tb2RlLCBuZXdf
bW9kZTsKPgo+IC0gICAgICAgaWYgKCFjaC0+aXNfb3RnX2NoYW5uZWwgfHwgIXJjYXJfZ2VuM19p
c19hbnlfcnBoeV9pbml0aWFsaXplZChjaCkpCj4gKyAgICAgICBpZiAoIWNoLT5pc19vdGdfY2hh
bm5lbCB8fCAhcmNhcl9nZW4zX2lzX2FueV9vdGdfcnBoeV9pbml0aWFsaXplZChjaCkpCj4gICAg
ICAgICAgICAgICAgIHJldHVybiAtRUlPOwo+Cj4gICAgICAgICBpZiAoc3lzZnNfc3RyZXEoYnVm
LCAiaG9zdCIpKQo+IEBAIC0zODksNyArMzg3LDcgQEAgc3RhdGljIHNzaXplX3Qgcm9sZV9zaG93
KHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0IGRldmljZV9hdHRyaWJ1dGUgKmF0dHIsCj4gIHsK
PiAgICAgICAgIHN0cnVjdCByY2FyX2dlbjNfY2hhbiAqY2ggPSBkZXZfZ2V0X2RydmRhdGEoZGV2
KTsKPgo+IC0gICAgICAgaWYgKCFjaC0+aXNfb3RnX2NoYW5uZWwgfHwgIXJjYXJfZ2VuM19pc19h
bnlfcnBoeV9pbml0aWFsaXplZChjaCkpCj4gKyAgICAgICBpZiAoIWNoLT5pc19vdGdfY2hhbm5l
bCB8fCAhcmNhcl9nZW4zX2lzX2FueV9vdGdfcnBoeV9pbml0aWFsaXplZChjaCkpCj4gICAgICAg
ICAgICAgICAgIHJldHVybiAtRUlPOwo+Cj4gICAgICAgICByZXR1cm4gc3ByaW50ZihidWYsICIl
c1xuIiwgcmNhcl9nZW4zX2lzX2hvc3QoY2gpID8gImhvc3QiIDoKPiBAQCAtNDAyLDYgKzQwMCw5
IEBAIHN0YXRpYyB2b2lkIHJjYXJfZ2VuM19pbml0X290ZyhzdHJ1Y3QgcmNhcl9nZW4zX2NoYW4g
KmNoKQo+ICAgICAgICAgdm9pZCBfX2lvbWVtICp1c2IyX2Jhc2UgPSBjaC0+YmFzZTsKPiAgICAg
ICAgIHUzMiB2YWw7Cj4KPiArICAgICAgIGlmICghY2gtPmlzX290Z19jaGFubmVsIHx8IHJjYXJf
Z2VuM19pc19hbnlfb3RnX3JwaHlfaW5pdGlhbGl6ZWQoY2gpKQo+ICsgICAgICAgICAgICAgICBy
ZXR1cm47Cj4gKwo+ICAgICAgICAgLyogU2hvdWxkIG5vdCB1c2UgZnVuY3Rpb25zIG9mIHJlYWQt
bW9kaWZ5LXdyaXRlIGEgcmVnaXN0ZXIgKi8KPiAgICAgICAgIHZhbCA9IHJlYWRsKHVzYjJfYmFz
ZSArIFVTQjJfTElORUNUUkwxKTsKPiAgICAgICAgIHZhbCA9ICh2YWwgJiB+VVNCMl9MSU5FQ1RS
TDFfRFBfUlBEKSB8IFVTQjJfTElORUNUUkwxX0RQUlBEX0VOIHwKPiBAQCAtNDY1LDEyICs0NjYs
OSBAQCBzdGF0aWMgaW50IHJjYXJfZ2VuM19waHlfdXNiMl9pbml0KHN0cnVjdCBwaHkgKnApCj4g
ICAgICAgICB3cml0ZWwoVVNCMl9TUERfUlNNX1RJTVNFVF9JTklULCB1c2IyX2Jhc2UgKyBVU0Iy
X1NQRF9SU01fVElNU0VUKTsKPiAgICAgICAgIHdyaXRlbChVU0IyX09DX1RJTVNFVF9JTklULCB1
c2IyX2Jhc2UgKyBVU0IyX09DX1RJTVNFVCk7Cj4KPiAtICAgICAgIC8qIEluaXRpYWxpemUgb3Rn
IHBhcnQgKi8KPiAtICAgICAgIGlmIChjaGFubmVsLT5pc19vdGdfY2hhbm5lbCkgewo+IC0gICAg
ICAgICAgICAgICBpZiAocmNhcl9nZW4zX25lZWRzX2luaXRfb3RnKGNoYW5uZWwpKQo+IC0gICAg
ICAgICAgICAgICAgICAgICAgIHJjYXJfZ2VuM19pbml0X290ZyhjaGFubmVsKTsKPiAtICAgICAg
ICAgICAgICAgcnBoeS0+b3RnX2luaXRpYWxpemVkID0gdHJ1ZTsKPiAtICAgICAgIH0KPiArICAg
ICAgIC8qIEluaXRpYWxpemUgb3RnIHBhcnQgKG9ubHkgaWYgd2UgaW5pdGlhbGl6ZSBhIFBIWSB3
aXRoIElSUXMpLiAqLwo+ICsgICAgICAgaWYgKHJwaHktPmludF9lbmFibGVfYml0cykKPiArICAg
ICAgICAgICAgICAgcmNhcl9nZW4zX2luaXRfb3RnKGNoYW5uZWwpOwo+Cj4gICAgICAgICBycGh5
LT5pbml0aWFsaXplZCA9IHRydWU7Cj4KPiBAQCAtNDg2LDkgKzQ4NCw2IEBAIHN0YXRpYyBpbnQg
cmNhcl9nZW4zX3BoeV91c2IyX2V4aXQoc3RydWN0IHBoeSAqcCkKPgo+ICAgICAgICAgcnBoeS0+
aW5pdGlhbGl6ZWQgPSBmYWxzZTsKPgo+IC0gICAgICAgaWYgKGNoYW5uZWwtPmlzX290Z19jaGFu
bmVsKQo+IC0gICAgICAgICAgICAgICBycGh5LT5vdGdfaW5pdGlhbGl6ZWQgPSBmYWxzZTsKPiAt
Cj4gICAgICAgICB2YWwgPSByZWFkbCh1c2IyX2Jhc2UgKyBVU0IyX0lOVF9FTkFCTEUpOwo+ICAg
ICAgICAgdmFsICY9IH5ycGh5LT5pbnRfZW5hYmxlX2JpdHM7Cj4gICAgICAgICBpZiAoIXJjYXJf
Z2VuM19pc19hbnlfcnBoeV9pbml0aWFsaXplZChjaGFubmVsKSkKPiAtLQo+IDIuNDMuMAo+Cj4K
Ci0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
