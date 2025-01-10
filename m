Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5EFECE77188
	for <linux-phy@archiver.kernel.org>; Fri, 10 Jan 2025 10:06:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nFtDtBg67BiU1modhzFXznHA4tH5OPI4wSezXx3JTL4=; b=cK1M/JdA9Yz59D
	S5rzDOzevENZTWkt/u/bdnQqMlI3vaRQ00uEWEE5MHM/KfcPzPwy3qcT3AN3qGbVUShQ/+6Nc94Ni
	8ubXhMzHiE5VAtA5gTUoCJp7hk88V7wrRfK6A89RHxKBERy0AX3qbEaJNSeah7SKvHWOvq/SNUnDa
	gVp+8fnD3mecNbYO/BhpDDdd2E7YKFI+GFgDdbtUMcMVAAZrE2lV4Lf3ujSXU6STyCcNhwAvpWKF2
	xIzKjQYJscZPI3wvYs0YvPXXdmdcOrVtZZosrQezoht5/8Qg2LUw/8F8zZVvgyH2Xqfj6OFBAfNxC
	P/QwJ392VtOupVavIbjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tWBu3-0000000EsR3-38zF;
	Fri, 10 Jan 2025 10:06:07 +0000
Received: from mail-vs1-f50.google.com ([209.85.217.50])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tWBsr-0000000EsCc-3V8y
	for linux-phy@lists.infradead.org;
	Fri, 10 Jan 2025 10:04:54 +0000
Received: by mail-vs1-f50.google.com with SMTP id ada2fe7eead31-4afe1009960so599544137.0
        for <linux-phy@lists.infradead.org>; Fri, 10 Jan 2025 02:04:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736503491; x=1737108291;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5Nc/Nm3nzGS8KVHu4QliWy2g6HwQKPwrSbRFD5/ECKk=;
        b=nn+IjZaPNZt/XzNiUDPgKeB10K/B3vEbkpL9gTD9jGA23u48mWcB1Efgw7aNkQXPye
         iXO2ubMsEh1MHE/JPGJIfKcz9+ERKKAqTTAf1/mpwfs+Zh2Hnb4qrNYgEvEkkJCJtIHC
         jdmr23x+f+9XUsX9ZxYVZ1Si6xctY54f4r3HfP7HPEWyKaKclmJuQp7CEMPgwH11y6Tx
         zpUgGSkApCjNpbmUMVhCT2NGg05sd8b9NHuyal1IGk75VX2VTw64m+CGufNw0Pik3lKk
         wcmi0ydKz3Ucg9A1lFnzb/LUNiXzJ/RGmjOzDOFgx3o4FCKm4iYuA/zorzlm1yApE0+H
         V0lQ==
X-Forwarded-Encrypted: i=1; AJvYcCVC5NEZopUc/wTZ91z94Dbxs1qd2oMd1IyZGbUTmb9bymvT13Whj3YOlu+5Sp24Bcu+feja8CKlFG4=@lists.infradead.org
X-Gm-Message-State: AOJu0YzCxCe+Ab5lCirSD1hdcvjV1vr+Y4NkmqDzxsu4M7uc+/3ppAlk
	suY0QrVNYY6i/OX5XLcfVyjt8ImuxFR6v8SxKvPlUHCAtN3z13eFKna+h4tU
X-Gm-Gg: ASbGnct9KO87NVHrepCJmzvBBqsgbglFifyzRVW6FYjiE/oCBmUNn9UhnE374P4dMHf
	ztTQ+yoqIwz9ptwbbelRBVIz/wMKFTbSUyYFVFcT/wgPqIo8p7Tief9TGgzDFmm++3OG/xfy6Y9
	IxcVwQXWWVq0SBRWOX4F8TJJZlpdy5oKZ3EnkZzem4skGukSSmwpb9Bxv9n55G/3pX1S6eD7ydN
	jtLUXakwd4QN8EPvh7sXwsuC3OK2E2vtFCazyLh6znx8r5juDLBeNzXN06ny3RMjFzo80L3D9oX
	HfoO1mzo6Q50R/zlgd0l+p8=
X-Google-Smtp-Source: AGHT+IF97cWAJT59L71NNEMIfKpZ9dyjKvmuRbs4n83LaigmU0dK7xWgEVa+Xq5xP6AfQG886Y8FIg==
X-Received: by 2002:a05:6102:4b11:b0:4af:f740:c1b8 with SMTP id ada2fe7eead31-4b3d0ff7493mr10375712137.24.1736503490702;
        Fri, 10 Jan 2025 02:04:50 -0800 (PST)
Received: from mail-vk1-f175.google.com (mail-vk1-f175.google.com. [209.85.221.175])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-4b609170483sm2126872137.25.2025.01.10.02.04.49
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Jan 2025 02:04:49 -0800 (PST)
Received: by mail-vk1-f175.google.com with SMTP id 71dfb90a1353d-518a52c8b5aso565947e0c.2
        for <linux-phy@lists.infradead.org>; Fri, 10 Jan 2025 02:04:49 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVcJzwTSWEQUDFT7YNTYRlf7cbjrc+MxYgKEguE2T/2JiOJVDGtxyEv4TI/N7Fw/0qkfBgOeWoEJIw=@lists.infradead.org
X-Received: by 2002:a05:6102:942:b0:4af:e077:8a73 with SMTP id
 ada2fe7eead31-4b3d0f40076mr9407292137.13.1736503489351; Fri, 10 Jan 2025
 02:04:49 -0800 (PST)
MIME-Version: 1.0
References: <CAMuHMdUG7A10E2SZR6kHiQBrzp_OVvMSd7jxggaoU3B_6fZ+nQ@mail.gmail.com>
 <d4b59d5e94c4c4a488cd24c6c169e418ad53980d.1735524526.git.xiaopei01@kylinos.cn>
 <CAHCN7x+UzXQz+2zs+qvvWfWCmhsxsZoxP+2WHpfdZGnzwDPNQg@mail.gmail.com>
 <Z3aDU_dhfgEHlL4u@atmark-techno.com> <CAHCN7x+XNes4DbW1OvTjwsCddw5FJesCbPkv88rfRHM6sGBKSg@mail.gmail.com>
 <be2c1add-249c-4d01-8233-5a6dcb297e94@kylinos.cn> <671f844e-58af-47f3-8c31-776bb41413f2@kylinos.cn>
 <CAHCN7xL8Yn4HQwgZAFgxbdVU6VSf6vGb2GEANeGRTaPKAA5uhw@mail.gmail.com>
In-Reply-To: <CAHCN7xL8Yn4HQwgZAFgxbdVU6VSf6vGb2GEANeGRTaPKAA5uhw@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 10 Jan 2025 11:04:37 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVyxrqSdoR5VMfazwQWbXPmgMLxm-5XfxcJagv-kTuEHg@mail.gmail.com>
X-Gm-Features: AbW1kvZQR24kAXMS5jsWiLAztIzIut2Sm1ApzfAdBuXX3H93ZnchhJH52aWuN7Q
Message-ID: <CAMuHMdVyxrqSdoR5VMfazwQWbXPmgMLxm-5XfxcJagv-kTuEHg@mail.gmail.com>
Subject: Re: [PATCH] phy: freescale: fsl-samsung-hdmi: fix build error in fsl_samsung_hdmi_phy_configure_pll_lock_det
To: Adam Ford <aford173@gmail.com>
Cc: Pei Xiao <xiaopei01@kylinos.cn>, 
	Dominique Martinet <dominique.martinet@atmark-techno.com>, aford@beaconembedded.com, 
	arnd@arndb.de, frieder.schrempf@kontron.de, kishon@kernel.org, 
	l.stach@pengutronix.de, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, m.felsch@pengutronix.de, sandor.yu@nxp.com, 
	u.kleine-koenig@baylibre.com, vkoul@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250110_020453_879160_62B91401 
X-CRM114-Status: GOOD (  31.30  )
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

SGkgQWRhbSwKCk9uIFRodSwgSmFuIDksIDIwMjUgYXQgNDowM+KAr1BNIEFkYW0gRm9yZCA8YWZv
cmQxNzNAZ21haWwuY29tPiB3cm90ZToKPiBPbiBUaHUsIEphbiA5LCAyMDI1IGF0IDI6NDXigK9B
TSBQZWkgWGlhbyA8eGlhb3BlaTAxQGt5bGlub3MuY24+IHdyb3RlOgo+ID4g5ZyoIDIwMjUvMS8z
IDA5OjM0LCBQZWkgWGlhbyDlhpnpgZM6Cj4gPiA+IOWcqCAyMDI1LzEvMiAyMzowNCwgQWRhbSBG
b3JkIOWGmemBkzoKPiA+ID4+IE9uIFRodSwgSmFuIDIsIDIwMjUgYXQgNjoxNeKAr0FNIERvbWlu
aXF1ZSBNYXJ0aW5ldAo+ID4gPj4gPGRvbWluaXF1ZS5tYXJ0aW5ldEBhdG1hcmstdGVjaG5vLmNv
bT4gd3JvdGU6Cj4gPiA+Pj4gQWRhbSBGb3JkIHdyb3RlIG9uIE1vbiwgRGVjIDMwLCAyMDI0IGF0
IDA4OjExOjE2UE0gLTA2MDA6Cj4gPiA+Pj4+PiBpbmRleCA1ZWFjNzBhMWU4NTguLjNlNGQxYTUx
NjBlYSAxMDA2NDQKPiA+ID4+Pj4+IC0tLSBhL2RyaXZlcnMvcGh5L2ZyZWVzY2FsZS9waHktZnNs
LXNhbXN1bmctaGRtaS5jCj4gPiA+Pj4+PiArKysgYi9kcml2ZXJzL3BoeS9mcmVlc2NhbGUvcGh5
LWZzbC1zYW1zdW5nLWhkbWkuYwo+ID4gPj4+Pj4gQEAgLTM0MSw3ICszNDEsNyBAQCBmc2xfc2Ft
c3VuZ19oZG1pX3BoeV9jb25maWd1cmVfcGxsX2xvY2tfZGV0KHN0cnVjdCBmc2xfc2Ftc3VuZ19o
ZG1pX3BoeSAqcGh5LAo+ID4gPj4+Pj4gICAgICAgICAgICAgICAgICAgICAgICAgYnJlYWs7Cj4g
PiA+Pj4+PiAgICAgICAgIH0KPiA+ID4+Pj4+Cj4gPiA+Pj4+PiAtICAgICAgIHdyaXRlYihGSUVM
RF9QUkVQKFJFRzEyX0NLX0RJVl9NQVNLLCBkaXYpLCBwaHktPnJlZ3MgKyBQSFlfUkVHKDEyKSk7
Cj4gPiA+Pj4+PiArICAgICAgIHdyaXRlYihGSUVMRF9QUkVQKFJFRzEyX0NLX0RJVl9NQVNLLCBk
aXYgPT0gNCA/IGRpdiAtIDEgOiBkaXYpLCBwaHktPnJlZ3MgKyBQSFlfUkVHKDEyKSk7Cj4gPiA+
Pj4+IFRoZSBmb3ItbG9vcCBhYm92ZSB0aGlzIGxpbmUgc3RhdGVzOiAgIGZvciAoZGl2ID0gMDsg
ZGl2IDwgNDsgZGl2KyspCj4gPiA+Pj4+IEhvdyBjb3VsZCB0aGlzIGV2ZXIgcmVhY2ggND8gIElm
IGl0IGRpZCByZWFjaCA0LCB0aGUgY2FsY3VsYXRpb24gZm9yCj4gPiA+Pj4+IGludF9wbGxjbGsg
d291bGQgbmVlZCB0byBiZSByZWNhbGN1bGF0ZWQgc2luY2UgaW50X3BsbGNsayA9IHBjbGsgLyAo
MQo+ID4gPj4+PiA8PCBkaXYpOwo+ID4gPj4+IEJ1dC4uLiBmb3IgKGRpdiA9IDA7IGRpdiA8IDQ7
IGRpdisrKSBkb2VzIHJlYWNoIDQsIGlmIHRoZSBicmVhawo+ID4gPj4+IGNvbmRpdGlvbiBkaWRu
J3QgbWF0Y2gsIHdoaWNoIGlzIHNvbWV0aGluZyB0aGUgY29tcGlsZXIgY2Fubm90IGVuc3VyZQo+
ID4gPj4+IGhlcmUuCj4gPiA+Pj4KPiA+ID4+PiBUaGUgb2xkIGNvZGUgd291bGQganVzdCBmYWxs
IG91dCBvZiBhbnkgb2YgdGhlIHN3aXRjaCBjYXNlcyBhbmQgZmFsbGJhY2sKPiA+ID4+PiB0byBk
aXYgPSAxIGlmIHBpeGNsayA+IDI5NzAwMDAwMCwgd2hpY2ggaXMgbGlrZWx5IGluY29ycmVjdCwg
c28gaW4gdGhhdAo+ID4gPj4+IHNlbnNlIGp1c3QgcGFkZGluZyB0aGlzIHRocm91Z2ggYCYgM2Ag
YW5kIHByZXRlbmRpbmcgaXQgd2lsbCBuZXZlcgo+ID4gPj4+IGhhcHBlbiBpcyBwcm9iYWJseSBh
Y2NlcHRhYmxlLCBidXQgdGhpcyBvdWdodCB0byBoYXZlIGEgYmV0dGVyIGNvbW1lbnQKPiA+ID4+
PiB0aGFuIHdoYXQgUGVpIGp1c3Qgc2VudC4KPiA+ID4+IE1heWJlIHdlIHVzZSB0aGUgTUFYIGZ1
bmN0aW9uIHRvIHNldCBkaXYgPSBtYXgoZGl2LDMpOwo+ID4gPiBkbyB5b3UgbWVhbjoKPiA+ID4g
d3JpdGViKEZJRUxEX1BSRVAoUkVHMTJfQ0tfRElWX01BU0ssIG1pbihkaXYsIDMpKSwgcGh5LT5y
ZWdzICsgUEhZX1JFRygxMikpOwo+ID4KPiA+IERvZXMgYW55b25lIGhhdmUgYW55IHN1Z2dlc3Rp
b25zPwo+Cj4gU29ycnkgZm9yIHRoZSBkZWxheWVkIHJlc3BvbnNlcywgSSB3YXMgdHJhdmVsaW5n
IGZvciB0aGUgbGFzdCB3ZWVrLgo+Cj4gV2hhdCBhYm91dCByZXBsYWNpbmcgdGhlIGZvciBsb29w
IHdpdGggYSBkby13aGlsZSBsb29wIHdoZXJlIHRoZQo+IGNyaXRlcmlhIGlzIGludF9wbGxjbGsg
PCAoNTAgKiBNSFopICYmIGRpdiA8PSAzLiAgTWlnaHQgdGhhdCB3b3JrPwoKU3VjaCBhIGxvb3Ag
bWlnaHQgbmV2ZXIgY29tcGxldGUsIGFsdGhvdWdoIGluIHByYWN0aWNlIHRoYXQgZG9lcyBub3QK
c2VlbSB0byBiZSBwb3NzaWJsZSAodW50aWwgc29tZW9uZSBtb2RpZmllcyB0aGUgdGFibGVzIGlu
IHRoZSBkcml2ZXIKYW5kIGFkZHMgYSB0b28tbGFyZ2UgY2ZnLT5waXhjbGs/KS4KClByb2JhYmx5
IHRoZSBzYWZlc3Qgc29sdXRpb24gaXMgdG8gY2hhbmdlIHRoZSByZXR1cm4gdHlwZSBvZgpmc2xf
c2Ftc3VuZ19oZG1pX3BoeV9jb25maWd1cmVfcGxsX2xvY2tfZGV0KCkgZnJvbSB2b2lkIHRvIGlu
dCwgYW5kCmxldCBpdCByZXR1cm4gYW4gZXJyb3IgY29kZToKCiAgICBpZiAoZGl2ID09IDQpCiAg
ICAgICAgICAgIHJldHVybiAtRUlOVkFMOwoKIGFuZCBwcm9wYWdhdGUgdGhhdC4gSXRzIHNvbGUg
Y2FsbGVyIGFscmVhZHkgcmV0dXJucyBhbiBlcnJvciBjb2RlLgoKR3J7b2V0amUsZWV0aW5nfXMs
CgogICAgICAgICAgICAgICAgICAgICAgICBHZWVydAoKLS0gCkdlZXJ0IFV5dHRlcmhvZXZlbiAt
LSBUaGVyZSdzIGxvdHMgb2YgTGludXggYmV5b25kIGlhMzIgLS0gZ2VlcnRAbGludXgtbTY4ay5v
cmcKCkluIHBlcnNvbmFsIGNvbnZlcnNhdGlvbnMgd2l0aCB0ZWNobmljYWwgcGVvcGxlLCBJIGNh
bGwgbXlzZWxmIGEgaGFja2VyLiBCdXQKd2hlbiBJJ20gdGFsa2luZyB0byBqb3VybmFsaXN0cyBJ
IGp1c3Qgc2F5ICJwcm9ncmFtbWVyIiBvciBzb21ldGhpbmcgbGlrZSB0aGF0LgogICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIC0tIExpbnVzIFRvcnZhbGRzCgotLSAKbGludXgtcGh5IG1h
aWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
