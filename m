Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44812CA9ED0
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 09:43:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r7r9L3tlkDuZETkbUrjn+McTN6l2X3Pzf25NbNRI6UU=; b=OlM0xWlu9Pusmo
	n092jgYocrkD4aBv5Ds2uvJa0KskpkU4tfrOBWFH3Ufy+PPxUkQIKO7HQYoiV6Z0TfieufwhJDFK1
	AR3JcTqmgTzx5RZrc38vkhjdjPx8V0AJ/oBYorjbFYaH2BHQXUd7FH7nP0KH12nsqwhjdoxNiCHaL
	7DT/fmRSCi48orLtQAOarvuNPWIHaiVOzKOLDcoIWI7BSzYdgkevKhNOonwL59cGmeYRQw/JwxIi2
	voCIzI+jile41XqDTyvdO10vTkmgIt4Sw3O9Ix+S/ISkOtuTtNCSFUuk5tfnVOV11s5tSPXa4jQ82
	rbALQJCYpKgIhDoTSULg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGCZX-0000000A5z6-41ce;
	Mon, 12 Oct 2026 09:43:55 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGCZW-0000000A5yp-0qok
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 09:43:55 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 8FEB8600E2;
	Mon, 12 Oct 2026 09:43:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 27A101F0089B;
	Mon, 12 Oct 2026 09:43:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791798233;
	bh=n8g3m07kswQUB2aEv58Z2fxCH8Bc2AGaIzxQdV0JnjE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=VvQ3uqexE/Ntit4Uo3Vnyg1hfJ5wxdiRHSmkrQz2UynJivsnVns11WZvmUtdFQ+Np
	 vUZms2MpfqdwiihALNylI7gBnQTtYqomf0s4nk9GNPPpWxLzNEQ+uKoX1kmdD/Wz7x
	 HW8OL9GhTXSMosGLbjUQjO6ff1Iu6loj56wKj8lyybKhGOjVzh4+yPQ7WDkAdhPhtP
	 sm8dS4tSZL8Zhe3PsLI2/i0H1mwr359RzrwTlwKwOc2+L+C1lMAnEfDi9xCKMejdGP
	 oEAJKfI9cm3VlT2tfIBYBOEx5BbO1LIdLTiTEarIzuNRfYTBxEVGLXJJbArYMhF5Ts
	 PjH/vNLgk6Hlg==
Date: Mon, 12 Oct 2026 15:13:45 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Xu Yang <xu.yang_2@oss.nxp.com>
Cc: ivaylo <ivo.ivanov.ivanov1@gmail.com>, vkoul@kernel.org, 
	neil.armstrong@linaro.org, dmitry.baryshkov@oss.qualcomm.com, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, imx@lists.linux.dev
Subject: Re: [PATCH] phy: phy-snps-eusb2: fix FSEL_48_MHZ_VAL definition
Message-ID: <asyrexEOKzZkoD23@debian>
References: <20260908085953.3315953-1-xu.yang_2@oss.nxp.com>
 <aaf8a5ef-2abe-4269-804e-4d2dd1bc4d3e@gmail.com>
 <ogfpkqixf3xkyvh4bbpvui5ybfaro6g35g6u5kb56k2jsyrsmt@jm67at6cpksf>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ogfpkqixf3xkyvh4bbpvui5ybfaro6g35g6u5kb56k2jsyrsmt@jm67at6cpksf>
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

T24gV2VkLCBTZXAgMDksIDIwMjYgYXQgMTA6NDk6NDFBTSArMDgwMCwgWHUgWWFuZyB3cm90ZToK
PiBPbiBUdWUsIFNlcCAwOCwgMjAyNiBhdCAwNDoxNzo1N1BNICswNDAwLCBpdmF5bG8gd3JvdGU6
Cj4gPiBPbiA4LjA5LjI2IDEyOjU5LCBYdSBZYW5nIHdyb3RlOgo+ID4gPiBGcm9tOiBYdSBZYW5n
IDx4dS55YW5nXzJAbnhwLmNvbT4KPiA+ID4gCj4gPiA+IEFjY29yZGluZyB0byBTeW5vcHN5cyBl
VVNCMiBQSFkgRGF0YWJvb2ssIEZTRUxfNDhfTUhaX1ZBTCBzaG91bGQgYmUgMHg2Cj4gPiA+IGZv
ciBzdXBwb3J0ZWQgNDggTUh6IHJlZmVyZW5jZSBjbG9jay4KPiA+IAo+ID4gSSBkb24ndCBzZWUg
dGhpcyBhcyBhIGp1c3RpZmllZCBjaGFuZ2UuIFNhbXN1bmcncyBpbXBsZW1lbnRhdGlvbiBvZiBl
VVNCMgo+ID4gZGlmZmVycyBmcm9tIHRoZSBnZW5lcmljIFN5bm9wc3lzIGludGVyZmFjZSwgYXMg
aXMgdmlzaWJsZSBmcm9tIHRoZQo+ID4gZGlmZmVyZW5jZXMKPiA+IGJldHdlZW4gUUNPTSdzIGlt
cGxlbWVudGF0aW9uIGFuZCBTYW1zdW5nJ3MuCj4gPiAKPiA+IEZyb20gd2hhdCBJIHNlZSBmb3Ig
ZXh5bm9zMjIwMCwgdGhlIEZTRUwgdmFsdWUgaXMgMHgyIGZvciBib3RoIDI0IE1IeiBhbmQKPiA+
IDQ4IE1Iei4gVGhlIGRpZmZlcmVudGlhdGluZyBwYXJ0IGlzIHRoYXQgdGhlIHVwcGVyIFBMTCBk
aXZpZGVyIGlzIDB4MCBmb3IgMjQKPiA+IE1Iego+ID4gYW5kIDB4MSBmb3IgNDggTUh6LiBUaGUg
Y3VycmVudCBwcm9ncmFtbWluZyB3YXMgdGFrZW4gZnJvbSB0aGUgc2Ftc3VuZ1wKPiAKPiBGb3Ig
UHJvZHVjdCBDb2RlIEg0ODMtMCwgaXQncyAweDIgZm9yIDI0IE1IeiBhbmQgMHg2IGZvciA0OCBN
SHouIFRoZSBQTEwgZGl2aWRlcgo+IGlzIDB4MCBmb3IgMjQgTUh6IGFuZCAweDEgZm9yIDQ4IE1I
eiB0b28uIFNvIGl0IGRvZXMgc2VlbSBsaWtlIHNvbWV0aGluZyBtaXNtYXRjaAo+IGluIHlvdXIg
c2lkZS4gQmVjYXVzZSB0aGUgRlNFTF8qX01IWl9WQUwgaXMgY29tbW9uIGRlZmluaXRpb24gaW4g
dGhlIGRyaXZlciwgdGhpcwo+IG1lYW5zIEZTRUxfNDhfTUhaX1ZBTCBpcyBub3QgY29tbW9uIGFu
eW1vcmUuIEJ1dCBpZiB5b3UgaGF2ZSBjb25maXJtZWQgaXQncyBzaW1wbHkKPiBsaWtlIHRoYXQs
IGl0J3MgZmluZS4gT3RoZXJzIG5lZWQgdG8gYWRkIHRoZWlyIHNwZWNpZmljIGRlZmluaXRpb24g
aW4gdGhlIGZ1dHVyZS4KPiAKCklmIHRoZSB2YWx1ZXMgZGlmZmVyIGJldHdlZW4gdmVuZG9yIGlt
cGxlbWVudGF0aW9ucywgdGhlbiBwbGVhc2UgZGVhbCB3aXRoIGl0CnVzaW5nIGNvbXBhdGlibGUg
Y2hlY2sgb3IgZHJ2ZGF0YS4KCi0gTWFuaQoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCv
jSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0Cmxp
bnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
