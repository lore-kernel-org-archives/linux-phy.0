Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D4DEC7618D
	for <linux-phy@archiver.kernel.org>; Thu,  6 Apr 2023 07:29:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KE6RDF8M7olUTG9Z79GFBNJS8t5URkUANc37vocnBGo=; b=tH5RxnBZAi5DdJ
	rv47lG2R5ivBgWiTR+J9HoUlZ/LXyXcTLaOucuCqB3r8qhKTi5DHt9NL43KH+h3JbAVNgX/Q1E3lU
	WKPL4Fg4a/aWpXDxyEiN/0KLiVLGHU/JiEot8JNZAb4Z7lEs6teMtWi0VEDVTFftzmCcXaTAhbcuf
	ckrMWaL5z0m4hi7RdreGGhO7G5Tn3myw+lOe04d88+97Ff35mNcf6R0S8AcT6VBheL0YhtwvgPWur
	N+AA4btfVdanqtMn9ZjzH+TPUUqr4+ebjcmQ6HoJHrAC28+HMTl9dA3aaP8NqL+HBFbC72jgeEAB9
	Vr9MI4k1A8pZY7GRR0Og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pkK3a-006d10-0h;
	Thu, 06 Apr 2023 07:29:18 +0000
Received: from relay5-d.mail.gandi.net ([2001:4b98:dc4:8::225])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pkK3W-006d01-1m
	for linux-phy@lists.infradead.org;
	Thu, 06 Apr 2023 07:29:17 +0000
Received: (Authenticated sender: herve.codina@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 50A0E1C000B;
	Thu,  6 Apr 2023 07:29:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1680766149;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=3N0MhR4UYPZqjjIJvCfac3PeMhUE3Q3jLEyIQ0jdrco=;
	b=EUYCN/AWFMTjvujuAKiAKwj/VmBeL/nIoOV0dvYnKt3iBE5JMxuOOT9akAY2HcqPJ3z0nu
	SlJloGIh0syhJSYVb2Fp1+2jd2/wzh+8PrUC+dx2A9o9oFsPMjpQHvYRsQDQqsOOK5obTi
	v5jH2wATkipLFNTyV0flAZn/6r0H/Jy5BkCWm8oWoGT4LG/hzEGaI60x8y7tQJNxmNG+mA
	u/S5tDyZowoNjr1UFuJOkXN1V/jQdph98yrrrcbink3ugR9u6t2x17UZBnqnWk8xLX3M5k
	d58+/CRAgk4AixYwBOOYVPy7WcyqZ0C9oODAhH78rg+Ua7ObCuZNso1kpo6EWA==
Date: Thu, 6 Apr 2023 09:29:06 +0200
From: Herve Codina <herve.codina@bootlin.com>
To: Herve Codina <herve.codina@bootlin.com>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Vinod Koul
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 linux-phy@lists.infradead.org, Christophe Leroy
 <christophe.leroy@csgroup.eu>, Thomas Petazzoni
 <thomas.petazzoni@bootlin.com>
Subject: Re: [RFC PATCH 0/4] Add support for QMC HDLC and PHY
Message-ID: <20230406092906.658889a2@bootlin.com>
In-Reply-To: <20230323103154.264546-1-herve.codina@bootlin.com>
References: <20230323103154.264546-1-herve.codina@bootlin.com>
Organization: Bootlin
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.37; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230406_002915_059444_9A8279EE 
X-CRM114-Status: GOOD (  27.69  )
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

SGkgYWxsLAoKSSBoYXZlbid0IHJlY2VpdmVkIGFueSBmZWVkYmFjayBvbiB0aGlzIFJGQy4KSGF2
ZSB5b3UgaGFkIGEgY2hhbmNlIHRvIHJldmlldyBpdCA/CgpCZXN0IHJlZ2FyZHMsCkhlcnbDqQoK
T24gVGh1LCAyMyBNYXIgMjAyMyAxMTozMTo1MCArMDEwMApIZXJ2ZSBDb2RpbmEgPGhlcnZlLmNv
ZGluYUBib290bGluLmNvbT4gd3JvdGU6Cgo+IEhpLAo+IAo+IEkgaGF2ZSBhIHN5c3RlbSB3aGVy
ZSBJIG5lZWQgdG8gaGFuZGxlIGFuIEhETEMgaW50ZXJmYWNlLgo+IAo+IFRoZSBIRExDIGRhdGEg
YXJlIHRyYW5zZmVycmVkIHVzaW5nIGEgVERNIGJ1cyBvbiB3aGljaCBhIFBFRjIyNTYgaXMKPiBw
cmVzZW50LiBUaGUgUEVGMjI1NiB0cmFuc2ZlcnMgZGF0YSBmcm9tL3RvIHRoZSBURE0gYnVzIHRv
L2Zyb20gRTEgbGluZS4KPiBUaGlzIFBFRjIyNTYgaXMgYWxzbyBjb25uZWN0ZWQgdG8gYSBQb3dl
clFVSUNDIFNvQyBmb3IgdGhlIGNvbnRyb2wgcGF0aAo+IGFuZCB0aGUgVERNIGlzIGNvbm5lY3Rl
ZCB0byB0aGUgU29DIChRTUMgY29tcG9uZW50KSBmb3IgdGhlIGRhdGEgcGF0aC4KPiAKPiBGcm9t
IHRoZSBIRExDIGRyaXZlciwgSSBuZWVkIHRvIGhhbmRsZSBkYXRhIHVzaW5nIHRoZSBRTUMgYW5k
IGNhcnJpZXIKPiBkZXRlY3Rpb24gdXNpbmcgdGhlIFBFRjIyNTYgKEUxIGxpbmUgY2Fycmllciku
Cj4gCj4gVGhlIEhETEMgZHJpdmVyIGNvbnNpZGVyIHRoZSBQRUYyMjU2IGFzIGEgZ2VuZXJpYyBQ
SFkuCj4gU28sIHRoZSBkZXNpZ24gaXMgdGhlIGZvbGxvd2luZzoKPiAKPiArLS0tLS0tLS0tLSsg
ICAgICAgICAgKy0tLS0tLS0tLS0tLS0rICAgICAgICAgICAgICArLS0tLS0tLS0tKwo+IHwgSERM
QyBkcnYgfCA8LWRhdGEtPiB8IFFNQyBjaGFubmVsIHwgPC0tIFRETSAtLT4gIHwgUEVGMjI1NiB8
Cj4gKy0tLS0tLS0tLS0rICAgICAgICAgICstLS0tLS0tLS0tLS0tKyAgICAgICAgICAgICAgfCAg
ICAgICAgIHwgPC0tPiBFMQo+ICAgIF4gICArLS0tLS0tLS0tKyAgICAgKy0tLS0tLS0tLSsgICAg
ICAgICAgICAgICAgIHwgICAgICAgICB8Cj4gICAgKy0+IHwgR2VuIFBIWSB8IDwtPiB8IFBFRjIy
NTYgfCA8LSBsb2NhbCBidXMgLT4gfCAgICAgICAgIHwKPiAgICAgICAgKy0tLS0tLS0tLSsgICAg
IHwgUEhZIGRydiB8ICAgICAgICAgICAgICAgICArLS0tLS0tLS0tKwo+ICAgICAgICAgICAgICAg
ICAgICAgICAgKy0tLS0tLS0tLSsKPiAKPiBJbiBvcmRlciB0byBpbXBsZW1lbnQgdGhpcywgSSBo
YWQgdG86Cj4gIDEgLSBFeHRlbmQgdGhlIGdlbmVyaWMgUEhZIEFQSSB0byBzdXBwb3J0IGdldF9z
dGF0dXMoKSBhbmQgbm90aWZpY2F0aW9uCj4gICAgICBvbiBzdGF0dXMgY2hhbmdlLgo+ICAyIC0g
SW50cm9kdWNlIGEgbmV3IGtpbmQgb2YgZ2VuZXJpYyBQSFkgbmFtZWQgImJhc2ljIHBoeSIuIFRo
aXMgUEhZCj4gICAgICBmYW1pbGx5IGNhbiBwcm92aWRlIGEgbGluayBzdGF0dXMgaW4gdGhlIGdl
dF9zdGF0dXMoKSBkYXRhLgo+ICAzIC0gU3VwcG9ydCB0aGUgUEVGMjI1NiBQSFkgYXMgYSAiYmFz
aWMgcGh5Igo+IAo+IFRoZSBwdXJwb3NlIG9mIHRoaXMgUkZDIHNlcmllcyBpcyB0byBkaXNjdXNz
IHRoaXMgZGVzaWduLgo+IAo+IFRoZSBRTUMgZHJpdmVyIGNvZGUgaXMgYXZhaWxhYmxlIG9uIGxp
bnV4LW5leHQuIEluIHRoaXMgc2VyaWVzOgo+IC0gcGF0Y2ggMTogZHJpdmVyIEhETEMgdXNpbmcg
dGhlIFFNQyBjaGFubmVsCj4gLSBwYXRjaCAyOiBFeHRlbmQgdGhlIGdlbmVyaWMgUEhZIEFQSQo+
IC0gcGF0Y2ggMzogVXNlIHRoZSAiYmFzaWMgcGh5IiBpbiB0aGUgSERMQyBkcml2ZXIKPiAtIHBh
dGNoIDQ6IEltcGxlbWVudCB0aGUgUEVGMjI1NiBQSFkgZHJpdmVyCj4gCj4gSSBkaWQgMiBwYXRj
aGVzIGZvciB0aGUgSERMQyBkcml2ZXIgaW4gb3JkZXIgdG8gcG9pbnQgdGhlIG5ldyBQSFkgZmFt
aWx5Cj4gdXNhZ2UgaW4gdGhlIEhETEMgZHJpdmVyLiBJbiB0aGUgZW5kLCB0aGVzZSB0d28gcGF0
Y2hlcyB3aWxsIGJlIHNxdWFzaGVkCj4gYW5kIHRoZSBiaW5kaW5ncyB3aWxsIGJlIGFkZGVkLgo+
IAo+IEhvcGUgdG8gaGF2ZSBzb21lIGZlZWRiYWNrIG9uIHRoaXMgcHJvcG9zYWwuCj4gCj4gQmVz
dCByZWdhcmRzLAo+IEhlcnbDqQo+IAo+IEhlcnZlIENvZGluYSAoNCk6Cj4gICBuZXQ6IHdhbjog
QWRkIHN1cHBvcnQgZm9yIFFNQyBIRExDCj4gICBwaHk6IEV4dGVuZCBBUEkgdG8gc3VwcG9ydCAn
c3RhdHVzJyBnZXQgYW5kIG5vdGlmaWNhdGlvbgo+ICAgbmV0OiB3YW46IGZzbF9xbWNfaGRsYzog
QWRkIFBIWSBzdXBwb3J0Cj4gICBwaHk6IGxhbnRpcTogQWRkIFBFRjIyNTYgUEhZIHN1cHBvcnQK
PiAKPiAgZHJpdmVycy9uZXQvd2FuL0tjb25maWcgICAgICAgICAgICAgICAgIHwgIDEyICsKPiAg
ZHJpdmVycy9uZXQvd2FuL01ha2VmaWxlICAgICAgICAgICAgICAgIHwgICAxICsKPiAgZHJpdmVy
cy9uZXQvd2FuL2ZzbF9xbWNfaGRsYy5jICAgICAgICAgIHwgNTU4ICsrKysrKysrKysrKysrKysr
KysrKysrKwo+ICBkcml2ZXJzL3BoeS9sYW50aXEvS2NvbmZpZyAgICAgICAgICAgICAgfCAgMTUg
Kwo+ICBkcml2ZXJzL3BoeS9sYW50aXEvTWFrZWZpbGUgICAgICAgICAgICAgfCAgIDEgKwo+ICBk
cml2ZXJzL3BoeS9sYW50aXEvcGh5LWxhbnRpcS1wZWYyMjU2LmMgfCAxMzEgKysrKysrCj4gIGRy
aXZlcnMvcGh5L3BoeS1jb3JlLmMgICAgICAgICAgICAgICAgICB8ICA4OCArKysrCj4gIGluY2x1
ZGUvbGludXgvcGh5L3BoeS1iYXNpYy5oICAgICAgICAgICB8ICAyNyArKwo+ICBpbmNsdWRlL2xp
bnV4L3BoeS9waHkuaCAgICAgICAgICAgICAgICAgfCAgODkgKysrLQo+ICA5IGZpbGVzIGNoYW5n
ZWQsIDkyMSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gIGNyZWF0ZSBtb2RlIDEwMDY0
NCBkcml2ZXJzL25ldC93YW4vZnNsX3FtY19oZGxjLmMKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRy
aXZlcnMvcGh5L2xhbnRpcS9waHktbGFudGlxLXBlZjIyNTYuYwo+ICBjcmVhdGUgbW9kZSAxMDA2
NDQgaW5jbHVkZS9saW51eC9waHkvcGh5LWJhc2ljLmgKPiAKCgotLSAKbGludXgtcGh5IG1haWxp
bmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
