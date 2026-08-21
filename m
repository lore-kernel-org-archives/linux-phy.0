Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2DC79C5DF7D
	for <linux-phy@archiver.kernel.org>; Fri, 21 Aug 2026 10:19:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=muXOGm5IbtAc2X1En1sbmxvtkcopSnxZBesSff74kmc=; b=1wDmpPGL4upXMy
	vfdj6IOihGgrkmKSrD6lkiU/iAAnZKdPWRSAGJUCDzazg4UJsEBfkcHPw+f5ybYYciOGe1BDI54tX
	fnLUcipkReC8N2pNn7WJ8V4pNot9zxrWEn65ICl5LFfVRK8Bv3r5jukEKCYtHwUyeV52seYHKj08V
	Nf71WoFIRq+AYrX4KSN5Qp1pgYCAmhkrAMl3DJmD/wtA+WV44haaWzGvVTJwxLiOXD0o9JETcC0kK
	IXAP4ymIX1IvVvvLIgdCmMeZrVJch94YKa0U3ss0c8WopfOgnPYj0jklBe8Po7ewQuDZDgE3UaKW9
	YGypGl5gcuKvvy/p7u0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wxMLV-0000000D5Dq-3NcT;
	Fri, 21 Aug 2026 10:19:33 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wxMLV-0000000D5Dj-0GrB
	for linux-phy@lists.infradead.org;
	Fri, 21 Aug 2026 10:19:33 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 5B78360A71;
	Fri, 21 Aug 2026 10:19:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B162B1F00A3A;
	Fri, 21 Aug 2026 10:19:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787307572;
	bh=pltpl88MKbeeVdKGrQ7s9RfJnANxTJ5ndZAsX2xoPXw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=TSBQLWxfDxDa764fJb61bhLCaME/btB/QPV5TLTNNmod6DZTiaqceUPwNYcs5pIE5
	 2ynrr6MbvZgwdYxsAwDZEfo39NL6vQbbdOANaa1mGMYXjOqkQanpwr3E6WRyTbFJiF
	 xwX47cJYDfJYe9rP5DXT89POZoiwCUefiALsCs/zOpm02OroK2fsIdO3/hjaPNZIQL
	 H5H6130UcvhqvQIW1XcnU2dP/AuITh00PEIjo6SN2oADRNgh8s8hbAto8mAbZ+ymgw
	 ErsbKqxd7AEwHMF0KUwD57BxkmfdF+/Tnxk5rCrn7saTZ6iN8OHXZ24Bt0j6IUK7k5
	 icVs6jI3wtytA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/2] phy: freescale: fsl-samsung-hdmi: Make sure
 clk_init_data is fully initialized
To: "Geert Uytterhoeven" <geert+renesas@glider.be>
Cc: neil.armstrong@linaro.org, linux-clk@vger.kernel.org, linux-phy@lists.infradead.org, olteanv@gmail.com, vkoul@kernel.org
In-Reply-To: <3c3be1c676eea5d32102864c57643b1573bc0db0.1787240165.git.geert+renesas@glider.be>
References: <cover.1787240165.git.geert+renesas@glider.be>
 <3c3be1c676eea5d32102864c57643b1573bc0db0.1787240165.git.geert+renesas@glider.be>
Date: Fri, 21 Aug 2026 10:19:31 +0000
Message-Id: <20260821101931.B162B1F00A3A@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpQcmUtZXhpc3RpbmcgaXNzdWVzOgot
IFtIaWdoXSBBIGdsb2JhbCBzdGF0aWMgdmFyaWFibGUgaXMgbXV0YXRlZCBkdXJpbmcgY2xvY2sg
cmF0ZSBxdWVyaWVzLCBjYXVzaW5nIGRhdGEgcmFjZXMgYW5kIHN0YXRlIGNvcnJ1cHRpb24gd2l0
aCBQTSByZXN1bWUgb3BlcmF0aW9ucy4KLS0KCi0tLSBQYXRjaCBbMV06IFtQQVRDSCAxLzJdIHBo
eTogZnJlZXNjYWxlOiBmc2wtc2Ftc3VuZy1oZG1pOiBNYWtlIHN1cmUgY2xrX2luaXRfZGF0YSBp
cyBmdWxseSBpbml0aWFsaXplZCAtLS0KY29tbWl0IGVhY2U3NzZjMWUwYjYxN2IwOTM2N2U4Zjc1
NjZhZGZmNjcyMTFhOWYKQXV0aG9yOiBHZWVydCBVeXR0ZXJob2V2ZW4gPGdlZXJ0K3JlbmVzYXNA
Z2xpZGVyLmJlPgoKcGh5OiBmcmVlc2NhbGU6IGZzbC1zYW1zdW5nLWhkbWk6IE1ha2Ugc3VyZSBj
bGtfaW5pdF9kYXRhIGlzIGZ1bGx5IGluaXRpYWxpemVkCgpUaGUgY2xrX2luaXRfZGF0YSBzdHJ1
Y3R1cmUgY29udGFpbnMgc2V2ZXJhbCBtdXR1YWxseS1leGNsdXNpdmUgbWVtYmVycwpmb3IgZGlm
ZmVyZW50IG1ldGhvZHMgdG8gc3BlY2lmeSB0aGUgcG9zc2libGUgcGFyZW50cyBvZiBhIGNsb2Nr
LApwcm9tcHRpbmcgZHJpdmVycyB0byBpbml0aWFsaXplIG9ubHkgdGhlIG1lbWJlcnMgdGhleSBu
ZWVkLiAgSG93ZXZlciwKbm90IGluaXRpYWxpemluZyBhbGwgbWVtYmVycyBtYXkgY2F1c2Ugc3Vi
dGxlIGlzc3Vlcywgd2hpY2ggYXJlIG9ubHkKZXhwb3NlZCB3aGVuIENPTkZJR19JTklUX1NUQUNL
X0FMTF9QQVRURVJOIG9yIENPTkZJR19JTklUX1NUQUNLX05PTkUgaXMKZW5hYmxlZC4KCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvcGh5L2ZyZWVzY2FsZS9waHktZnNsLXNhbXN1bmctaGRtaS5jIGIv
ZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1mc2wtc2Ftc3VuZy1oZG1pLmMKPiBpbmRleCBkMDEw
ZmVjMTU2NzFkLi43NmMwZDU3MWUzMTU1IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5L2ZyZWVz
Y2FsZS9waHktZnNsLXNhbXN1bmctaGRtaS5jCj4gKysrIGIvZHJpdmVycy9waHkvZnJlZXNjYWxl
L3BoeS1mc2wtc2Ftc3VuZy1oZG1pLmMKPiBAQCAtNjEwLDcgKzYxMCw3IEBAIHN0YXRpYyBpbnQg
cGh5X2Nsa19yZWdpc3RlcihzdHJ1Y3QgZnNsX3NhbXN1bmdfaGRtaV9waHkgKnBoeSkKPiAgewo+
ICAJc3RydWN0IGRldmljZSAqZGV2ID0gcGh5LT5kZXY7Cj4gIAlzdHJ1Y3QgZGV2aWNlX25vZGUg
Km5wID0gZGV2LT5vZl9ub2RlOwo+IC0Jc3RydWN0IGNsa19pbml0X2RhdGEgaW5pdDsKPiArCXN0
cnVjdCBjbGtfaW5pdF9kYXRhIGluaXQgPSB7fTsKPiAgCWNvbnN0IGNoYXIgKnBhcmVudF9uYW1l
Owo+ICAJc3RydWN0IGNsayAqcGh5Y2xrOwo+ICAJaW50IHJldDsKCltTZXZlcml0eTogSGlnaF0K
VGhpcyBpcyBhIHByZS1leGlzdGluZyBpc3N1ZSwgYnV0IGRvZXMgbXV0YXRpbmcgdGhlIGdsb2Jh
bCBzdGF0aWMgdmFyaWFibGUKY2FsY3VsYXRlZF9waHlfcGxsX2NmZyBkdXJpbmcgc2lkZS1lZmZl
Y3QtZnJlZSBjbG9jayBxdWVyaWVzIGNhdXNlIHN0YXRlCmNvcnJ1cHRpb24/CgpJbiBmc2xfc2Ft
c3VuZ19oZG1pX3BoeV9maW5kX3NldHRpbmdzKCksIHRoZSBnbG9iYWwgdmFyaWFibGUgaXMgbW9k
aWZpZWQKdW5jb25kaXRpb25hbGx5OgoKZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1mc2wtc2Ft
c3VuZy1oZG1pLmM6ZnNsX3NhbXN1bmdfaGRtaV9waHlfZmluZF9zZXR0aW5ncygpIHsKICAgIC4u
LgoJLyogQ2FsY3VsYXRlIHRoZSBpbnRlZ2VyIGRpdmlkZXIgKi8KCWludF9kaXZfY2xrID0gZnNs
X3NhbXN1bmdfaGRtaV9waHlfZmluZF9wbXMocmF0ZSwgJnAsICZtLCAmcyk7Cglmc2xfc2Ftc3Vu
Z19oZG1pX2NhbGN1bGF0ZV9waHkoJmNhbGN1bGF0ZWRfcGh5X3BsbF9jZmcsIGludF9kaXZfY2xr
LCBwLCBtLCBzKTsKICAgIC4uLgp9CgpUaGVuIGluIGZzbF9zYW1zdW5nX2hkbWlfcGh5X2NvbmZp
Z3VyZSgpLCBhIHBvaW50ZXIgdG8gdGhpcyBnbG9iYWwgaXMgc2F2ZWQ6Cgpkcml2ZXJzL3BoeS9m
cmVlc2NhbGUvcGh5LWZzbC1zYW1zdW5nLWhkbWkuYzpmc2xfc2Ftc3VuZ19oZG1pX3BoeV9jb25m
aWd1cmUoKSB7CiAgICAuLi4KCXBoeS0+Y3VyX2NmZyA9IGNmZzsKICAgIC4uLgp9CgpJZiBhIGNs
b2NrIGRyaXZlciBzZXRzIGEgcmF0ZSAoc2F2aW5nIHRoZSBwb2ludGVyKSBhbmQgbGF0ZXIgcGVy
Zm9ybXMgYQpjbGtfcm91bmRfcmF0ZSgpIHF1ZXJ5LCB0aGUgcXVlcnkgd2lsbCBvdmVyd3JpdGUg
Y2FsY3VsYXRlZF9waHlfcGxsX2NmZy4KCldoZW4gdGhlIGRldmljZSByZXN1bWVzLCBpdCByZXN0
b3JlcyB0aGUgaGFyZHdhcmUgdXNpbmcgdGhpcyBwb3RlbnRpYWxseQpjb3JydXB0ZWQgcG9pbnRl
cjoKCmRyaXZlcnMvcGh5L2ZyZWVzY2FsZS9waHktZnNsLXNhbXN1bmctaGRtaS5jOmZzbF9zYW1z
dW5nX2hkbWlfcGh5X3Jlc3VtZSgpIHsKICAgIC4uLgoJaWYgKHBoeS0+Y3VyX2NmZykKCQlyZXQg
PSBmc2xfc2Ftc3VuZ19oZG1pX3BoeV9jb25maWd1cmUocGh5LCBwaHktPmN1cl9jZmcpOwogICAg
Li4uCn0KCkNhbiB0aGlzIGxlYWQgdG8gdGhlIGhhcmR3YXJlIGJlaW5nIHJlc3RvcmVkIHRvIGFu
IGluY29ycmVjdCBmcmVxdWVuY3kKdXBvbiBQTSByZXN1bWU/CgotLSAKU2FzaGlrbyBBSSByZXZp
ZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0L2NvdmVyLjE3ODcyNDAxNjUuZ2l0
LmdlZXJ0K3JlbmVzYXNAZ2xpZGVyLmJlP3BhcnQ9MQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
