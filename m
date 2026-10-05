Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC203CA5FF0
	for <linux-phy@archiver.kernel.org>; Mon,  5 Oct 2026 15:58:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eUJj5T98enveMdWQVhps3dI5Ol04vAR1I43eygiX26k=; b=Uz+0nJuDQJbR7G
	blqLr9b5xmuGy792ZPWssAONOeanPcyvXtd/ELPfo43wVXU5I9AOS0VT8FZifYuP+hII1TAhjKAnh
	iMC5ISkCGm7jX2N3kuaI4jl9TgH/DWQHJ7HNVwDvHAsRbsOXqhdYhnBumLpBJO/1CXXgXlVNpYk9D
	h65f4BBQi+jgfkoN6yEMqJYQP2/vm24FzQEkKWBkztbnYlYAIO6B+t/qXuQ6ThmWe1/QscL9IEgjv
	rmNfD2nYfuiSQA/BhAgLgEGCH0rPnFmbvagWZ5CD89YBm7xEyJxfNFNVYhNinIs8Qgy8Qi/tExa12
	DKlafEY6XYmJOBbnZeDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDl5H-0000000Go7i-1AjN;
	Mon, 05 Oct 2026 15:58:35 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDl5F-0000000Go7a-1bD3
	for linux-phy@lists.infradead.org;
	Mon, 05 Oct 2026 15:58:33 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 7601260534;
	Mon,  5 Oct 2026 15:58:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C9A271F00893;
	Mon,  5 Oct 2026 15:58:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791215912;
	bh=PgvYFGyWhGsvIMmnETXkduZJY/CEJuPaqMjsw7ovXm4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=VQMItucxM9fbRCoumdHW9TbWNXYXO9+W9fjregXW7zFva30CuWT48NKkkrjYlY7UZ
	 hhd3Rov1Ryv3qY9Xg9QyeyWaVp6AORqiFOpz0KEFRgHTKzanBsnTBx3fU2ZWpiXkGb
	 JMOaRqzzsfvKY6bZlubrIL1I/zcMw/SJ+KQZJMuRzGvcwZeqaJ894sYcwKr/1iI2EA
	 xnASuuAOBJ71fLzmLXbDMZwqg1g8LAf0mTvnARLu26UEf1g2Zx6ITR9O9I2XH6h2sK
	 mbmjmzOn2D6JesJD86seEUUwZjRUPdpBQAkLk/1n2UcQp17NLlQz8ALrrTJ90pQqrG
	 JpeMcCSHiafbQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH] phy: renesas: rcar-gen3-usb2: Keep OTG VBUS disabled
 until role is known
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: neil.armstrong@linaro.org, olteanv@gmail.com, wsa+renesas@sang-engineering.com, vkoul@kernel.org, linux-phy@lists.infradead.org
In-Reply-To: <20261005154841.168047-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20261005154841.168047-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Date: Mon, 05 Oct 2026 15:58:31 +0000
Message-Id: <20261005155831.C9A271F00893@smtp.kernel.org>
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
Reply-To: sashiko-reviews@lists.linux.dev
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIHBoeTogcmVuZXNhczog
dW5iYWxhbmNlZCByZWd1bGF0b3IgZGlzYWJsZSBhbmQgcHJvYmUgZmFpbHVyZSBvbiBleHRlcm5h
bCBWQlVTCi0tCgpjb21taXQgMGIwZTVkOTFkMWQ5YjY4OTRmZTUxMzJmMDg0ZTdkYTE0NzI0NmY1
NQpBdXRob3I6IExhZCBQcmFiaGFrYXIgPHByYWJoYWthci5tYWhhZGV2LWxhZC5yakBicC5yZW5l
c2FzLmNvbT4KCnBoeTogcmVuZXNhczogcmNhci1nZW4zLXVzYjI6IEtlZXAgT1RHIFZCVVMgZGlz
YWJsZWQgdW50aWwgcm9sZSBpcyBrbm93bgoKUHJldmVudCB0aGUgT1RHIFBIWSBmcm9tIGRyaXZp
bmcgVkJVUyBkdXJpbmcgcHJvYmUsIGFzIHRoZSBwb3J0IHJvbGUgaGFzCm5vdCB5ZXQgYmVlbiBk
ZXRlcm1pbmVkIGFuZCBkb2luZyBzbyBjYW4gYmFjay1wb3dlciBhbiBleHRlcm5hbCBob3N0LgoK
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcmVuZXNhcy9waHktcmNhci1nZW4zLXVzYjIuYyBi
L2RyaXZlcnMvcGh5L3JlbmVzYXMvcGh5LXJjYXItZ2VuMy11c2IyLmMKPiBpbmRleCBiNWJhNzUx
ODA1YWFlLi4wOGRiNjE5YTQzYTAzIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5L3JlbmVzYXMv
cGh5LXJjYXItZ2VuMy11c2IyLmMKPiArKysgYi9kcml2ZXJzL3BoeS9yZW5lc2FzL3BoeS1yY2Fy
LWdlbjMtdXNiMi5jClsgLi4uIF0KPiBAQCAtMTEzMywxNSArMTEzMywyNyBAQCBzdGF0aWMgaW50
IHJjYXJfZ2VuM19waHlfdXNiMl92YnVzX3JlZ3VsYXRvcl9nZXRfZXhjbHVzaXZlX2VuYWJsZShz
dHJ1Y3QgcmNhcl9nZQo+ICAJCXJldHVybiAwOwo+ICAJfQo+ICAKPiAtCWlmIChlbmFibGUpIHsK
PiArCWlmIChhY3F1aXJlKSB7Cj4gIAkJcmV0ID0gcmVndWxhdG9yX2VuYWJsZShjaGFubmVsLT52
YnVzKTsKPiAgCQlpZiAocmV0KQo+ICAJCQlyZXR1cm4gcmV0Owo+ICAJfQo+ICAKPiAtCWlmIChy
ZWd1bGF0b3JfaXNfZW5hYmxlZChjaGFubmVsLT52YnVzKSkKPiArCWlmIChyZWd1bGF0b3JfaXNf
ZW5hYmxlZChjaGFubmVsLT52YnVzKSkgewo+ICsJCS8qCj4gKwkJICogVGhlIGludGVybmFsIHJl
Z3VsYXRvciBpcyBlbmFibGVkIGFib3ZlIG9ubHkgc28gdGhhdCB0aGUgcmVndWxhdG9yCj4gKwkJ
ICogY29yZSBob2xkcyBhIHJlZmVyZW5jZSB0byBpdC4gRG8gbm90IGRyaXZlIFZCVVMgdW50aWwg
dGhlIHBvcnQncwo+ICsJCSAqIHJvbGUgaXMga25vd247IHJjYXJfZ2VuM19lbmFibGVfdmJ1c19j
dHJsKCkgc3dpdGNoZXMgaXQgZnJvbSB0aGVuIG9uLgo+ICsJCSAqLwo+ICsJCXJldCA9IHJlZ3Vs
YXRvcl9oYXJkd2FyZV9lbmFibGUoY2hhbm5lbC0+dmJ1cywgZmFsc2UpOwo+ICsJCWlmIChyZXQp
IHsKPiArCQkJcmVndWxhdG9yX2Rpc2FibGUoY2hhbm5lbC0+dmJ1cyk7CiAgICAgICAgICAgICAg
ICAgICAgICAgIF5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXgpbU2V2ZXJpdHk6IEhp
Z2hdCkRvZXMgdGhpcyBlcnJvciBwYXRoIHRyaWdnZXIgYW4gdW5iYWxhbmNlZCByZWd1bGF0b3Ig
ZGlzYWJsZSB3YXJuaW5nPwoKSWYgcmNhcl9nZW4zX3BoeV91c2IyX3ZidXNfcmVndWxhdG9yX2dl
dF9leGNsdXNpdmUoKSBpcyBjYWxsZWQgd2l0aAphY3F1aXJlID0gZmFsc2Ugd2hlbiB1c2luZyBh
biBleHRlcm5hbCBWQlVTIHJlZ3VsYXRvciwgcmVndWxhdG9yX2VuYWJsZSgpIGlzCmJ5cGFzc2Vk
IGFuZCB0aGUgY29uc3VtZXIncyBlbmFibGVfY291bnQgcmVtYWlucyAwLgoKSWYgdGhlIGV4dGVy
bmFsIHJlZ3VsYXRvciBpcyBhbHJlYWR5IHBoeXNpY2FsbHkgZW5hYmxlZCAoZS5nLiBieSB0aGUK
Ym9vdGxvYWRlciksIHJlZ3VsYXRvcl9pc19lbmFibGVkKCkgd2lsbCByZXR1cm4gdHJ1ZS4KCklm
IHJlZ3VsYXRvcl9oYXJkd2FyZV9lbmFibGUoY2hhbm5lbC0+dmJ1cywgZmFsc2UpIGlzIG5vdCBz
dXBwb3J0ZWQgYnkgdGhlCmV4dGVybmFsIHJlZ3VsYXRvciAoZS5nLiBmaXhlZCByZWd1bGF0b3Jz
IHdpdGhvdXQgR1BJTyksIGl0IHJldHVybnMKLUVPUE5PVFNVUFAsIHRha2luZyB0aGlzIGVycm9y
IHBhdGguCgpTaW5jZSB0aGUgcmVndWxhdG9yIHdhcyBuZXZlciBlbmFibGVkIGJ5IHRoaXMgZHJp
dmVyLCB3b24ndCBjYWxsaW5nCnJlZ3VsYXRvcl9kaXNhYmxlKCkgaGVyZSB0cmlnZ2VyIGFuIHVu
YmFsYW5jZWQgZGlzYWJsZSB3YXJuaW5nIGFuZCBhYm9ydAp0aGUgcHJvYmUgZW50aXJlbHk/CgpT
aW1pbGFybHksIGlmIHJlZ3VsYXRvcl9oYXJkd2FyZV9lbmFibGUoKSBzdWNjZWVkcywgZGV2bV9h
ZGRfYWN0aW9uX29yX3Jlc2V0KCkKcmVnaXN0ZXJzIHJjYXJfZ2VuM19waHlfdXNiMl92YnVzX2Rp
c2FibGVfYWN0aW9uLiBTaW5jZSB0aGF0IGFjdGlvbiBjYWxscwpyZWd1bGF0b3JfZGlzYWJsZSgp
LCB3aWxsIGl0IGNhdXNlIHRoZSBzYW1lIHVuYmFsYW5jZWQgd2FybmluZyB3aGVuIHRoZQpkcml2
ZXIgdW5iaW5kcz8KCj4gKwkJCXJldHVybiByZXQ7Cj4gKwkJfQo+ICsKPiAgCQlyZXR1cm4gZGV2
bV9hZGRfYWN0aW9uX29yX3Jlc2V0KGRldiwgcmNhcl9nZW4zX3BoeV91c2IyX3ZidXNfZGlzYWJs
ZV9hY3Rpb24sCj4gIAkJCQkJCWNoYW5uZWwtPnZidXMpOwo+ICsJfQo+ICAKPiAgCXJldHVybiAw
Owo+ICB9CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3Bh
dGNoc2V0LzIwMjYxMDA1MTU0ODQxLjE2ODA0Ny0xLXByYWJoYWthci5tYWhhZGV2LWxhZC5yakBi
cC5yZW5lc2FzLmNvbT9wYXJ0PTEKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBo
eUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXBoeQo=
