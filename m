Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C237FC43458
	for <linux-phy@archiver.kernel.org>; Mon, 29 Jun 2026 09:46:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nh9pb8jfBBAykFNzktnuDd/4oTvTxSpOGellWErXHMA=; b=ERlZkyjIvcwmuW
	PRaoPenc7jLgam/AOQLuDembyUG/X15gV6l8UIHKQzPrx11qdtodNTM2ztQAnTXon5GtkdRb651Rl
	ogci4xYvEsdCzxtWLKjEztzCGW4m3Z0KBziK3NsjWZJRXMvmqx8OAgUUpvM7hfA1CVUq6cMmWngmt
	JEOyrHSdQDE7wekMI0/+sVqVylRp+SrWjBDwnuyxs0xThAsyd6rFGLSGQnfnr7lFLxYGqHMWZ8Cq+
	pU9e4y2/OKC8x2ozLurEchbawhizaXFhxmUMxqn4lGf6fPnKsZ4RY+nKp9FBfmVp3ep8Oua4snLAQ
	STj1Fe7oqGQzFwE401aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we8Za-0000000EE6s-27Kb;
	Mon, 29 Jun 2026 09:46:38 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we8ZZ-0000000EE6d-04Dv
	for linux-phy@lists.infradead.org;
	Mon, 29 Jun 2026 09:46:37 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 7795660008;
	Mon, 29 Jun 2026 09:46:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B2C7C1F000E9;
	Mon, 29 Jun 2026 09:46:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782726396;
	bh=vTfaRO0O+EoSSgx3wjKo0Drw4ZNRS7c0IZDEV4C2oW8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=CI6Jp7BBoh2pKc71ItdrOaspn8n+otgS2RoZqhqOVkVKVjRP9ZVFEX4ypwltESm73
	 SXValJYPV+7qdHZkBhg1T4n4Z3GpHaqOCVBeXlucdyRy8DVV4UjNgQPgO8ffXwDa1K
	 ko77fuLgsnFJ5PM4O75VD1JiYtG99ykqH5u8nRl2AoRA+FXNZBPxP97uJmahvO+Ypi
	 VUuJZdBCyDKWg2lxyO/aa77nduqXACXoTFGHXecun9d2m2//A+vk3Q6NYzo6L6qV90
	 4YUZ6OwfFO61FK0M40DZSeAYfuhVjk6n7AfkrCRu1bHalkETZR3oYM8vDRmaHbEk6c
	 02SdeW9nU1WGg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 4/8] phy: tegra: xusb: Use devm_clk_get_optional to
 fetch USB2 tracking clock
To: "Wayne Chang" <waynec@nvidia.com>
Cc: neil.armstrong@linaro.org, linux-phy@lists.infradead.org, vkoul@kernel.org, devicetree@vger.kernel.org, olteanv@gmail.com, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260629093406.1118594-5-waynec@nvidia.com>
References: <20260629093406.1118594-1-waynec@nvidia.com>
 <20260629093406.1118594-5-waynec@nvidia.com>
Date: Mon, 29 Jun 2026 09:46:35 +0000
Message-Id: <20260629094635.B2C7C1F000E9@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpQcmUtZXhpc3RpbmcgaXNzdWVzOgot
IFtIaWdoXSBEb3VibGUgZnJlZSBvZiBwYWQgYWxsb2NhdGlvbnMgb24gYHRlZ3JhX3h1c2JfcGFk
X2luaXQoKWAgZmFpbHVyZSBkdWUgdG8gaW5jb3JyZWN0IGRldmljZSBjbGVhbnVwLgotIFtIaWdo
XSBLZXJuZWwgcGFuaWMgZHVlIHRvIE5VTEwgcG9pbnRlciBkZXJlZmVyZW5jZSBpbiBgdGVncmFf
eHVzYl9wb3J0X3JlbGVhc2UoKWAgd2hlbiBwb3J0IGluaXRpYWxpemF0aW9uIGZhaWxzLgotLQoK
Y29tbWl0IDlhN2ViNjZjNjIwNmMxYjhlYWI0MjBlZTAwYzdhMWQyNzNhNzA4ZmUKQXV0aG9yOiBT
aW5nLUhhbiBDaGVuIDxzaW5naGFuY0BudmlkaWEuY29tPgpTdWJqZWN0OiBwaHk6IHRlZ3JhOiB4
dXNiOiBVc2UgZGV2bV9jbGtfZ2V0X29wdGlvbmFsIHRvIGZldGNoIFVTQjIgdHJhY2tpbmcgY2xv
Y2sKClRoaXMgcGF0Y2ggc3dpdGNoZXMgdGhlIFVTQjIgdHJhY2tpbmcgY2xvY2sgcmV0cmlldmFs
IHRvIHVzZQpkZXZtX2Nsa19nZXRfb3B0aW9uYWwuIFRoaXMgYWxsb3dzIHRoZSBwcm9iZSBzZXF1
ZW5jZSB0byBwcm9jZWVkIHNhZmVseQp3aGVuIHRoZSBjbG9jayBpcyBvbWl0dGVkIGZyb20gdGhl
IGRldmljZXRyZWUuCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS90ZWdyYS94dXNiLXRlZ3Jh
MTg2LmMgYi9kcml2ZXJzL3BoeS90ZWdyYS94dXNiLXRlZ3JhMTg2LmMKPiBpbmRleCA2MDE1NmFl
YTI3MDcxLi44MDBiZTBjYmIzZjlmIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5L3RlZ3JhL3h1
c2ItdGVncmExODYuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3RlZ3JhL3h1c2ItdGVncmExODYuYwo+
IEBAIC0xMDQ1LDcgKzEwNDUsNyBAQCB0ZWdyYTE4Nl91c2IyX3BhZF9wcm9iZShzdHJ1Y3QgdGVn
cmFfeHVzYl9wYWRjdGwgKnBhZGN0bCwKPiAgCQlnb3RvIG91dDsKPiAgCX0KCltTZXZlcml0eTog
SGlnaF0KVGhpcyBpc24ndCBhIGJ1ZyBpbnRyb2R1Y2VkIGJ5IHRoaXMgcGF0Y2gsIGJ1dCBkb2Vz
IHRoZSBlcnJvciBwYXRoIGZvcgp0ZWdyYV94dXNiX3BhZF9pbml0KCkganVzdCBhYm92ZSB0aGlz
IGNoYW5nZSBjYXVzZSBhIGRvdWJsZSBmcmVlPwoKTG9va2luZyBhdCB0ZWdyYTE4Nl91c2IyX3Bh
ZF9wcm9iZSgpLCBpZiB0ZWdyYV94dXNiX3BhZF9pbml0KCkgZmFpbHMsIGl0CmNhbGxzIGtmcmVl
KHVzYjIpLgoKSG93ZXZlciwgaW5zaWRlIHRlZ3JhX3h1c2JfcGFkX2luaXQoKSwgYW4gZXJyb3Ig
Y2F1c2VzIGl0IHRvIGp1bXAgdG8gdGhlCnVucmVnaXN0ZXIgbGFiZWwgYW5kIGNhbGwgZGV2aWNl
X3VucmVnaXN0ZXIoJnBhZC0+ZGV2KS4gVGhpcyBkcm9wcyB0aGUKZGV2aWNlIHJlZmVyZW5jZSBh
bmQgaW52b2tlcyB0aGUgcmVsZWFzZSBjYWxsYmFjayB0ZWdyYV94dXNiX3BhZF9yZWxlYXNlKCks
CndoaWNoIGZyZWVzIHRoZSBwYWQgb2JqZWN0LgoKV2hlbiB0ZWdyYV94dXNiX3BhZF9pbml0KCkg
cmV0dXJucyB0aGUgZXJyb3IgYmFjayB0byB0aGUgcHJvYmUgZnVuY3Rpb24sIHRoZQpleHBsaWNp
dCBrZnJlZSh1c2IyKSBpcyBleGVjdXRlZC4gQ291bGQgdGhpcyBsZWFkIHRvIG1lbW9yeSBjb3Jy
dXB0aW9uIHdoZW4KaW5pdGlhbGl6YXRpb24gZmFpbHM/Cgo+ICAKPiAtCXByaXYtPnVzYjJfdHJr
X2NsayA9IGRldm1fY2xrX2dldCgmcGFkLT5kZXYsICJ0cmsiKTsKPiArCXByaXYtPnVzYjJfdHJr
X2NsayA9IGRldm1fY2xrX2dldF9vcHRpb25hbCgmcGFkLT5kZXYsICJ0cmsiKTsKPiAgCWlmIChJ
U19FUlIocHJpdi0+dXNiMl90cmtfY2xrKSkgewo+ICAJCWVyciA9IFBUUl9FUlIocHJpdi0+dXNi
Ml90cmtfY2xrKTsKPiAgCQlkZXZfZGJnKCZwYWQtPmRldiwgImZhaWxlZCB0byBnZXQgdXNiMiB0
cmsgY2xvY2s6ICVkXG4iLCBlcnIpOwoKWyAuLi4gXQoKW1NldmVyaXR5OiBIaWdoXQpUaGlzIGlz
IGFub3RoZXIgcHJlLWV4aXN0aW5nIGlzc3VlIGluIGEgcmVsYXRlZCBmaWxlLCBidXQgZG9lcwp0
ZWdyYV94dXNiX3BvcnRfcmVsZWFzZSgpIHRyaWdnZXIgYSBOVUxMIHBvaW50ZXIgZGVyZWZlcmVu
Y2Ugb24KaW5pdGlhbGl6YXRpb24gZmFpbHVyZT8KCkluIGRyaXZlcnMvcGh5L3RlZ3JhL3h1c2Iu
Yzp0ZWdyYV94dXNiX2FkZF91c2IyX3BvcnQoKSwgdGhlIHBvcnQgaXMKYWxsb2NhdGVkIHZpYSBr
emFsbG9jKCkgYW5kIHRoZW4gaW5pdGlhbGl6ZWQ6CgogICAgZXJyID0gdGVncmFfeHVzYl9wb3J0
X2luaXQoJnVzYjItPmJhc2UsIHBhZGN0bCwgbnAsICJ1c2IyIiwgaW5kZXgpOwogICAgaWYgKGVy
ciA8IDApCiAgICAgICAgZ290byBvdXQ7CgogICAgdXNiMi0+YmFzZS5vcHMgPSBwYWRjdGwtPnNv
Yy0+cG9ydHMudXNiMi5vcHM7CgpOb3RpY2UgdGhhdCB0aGUgb3BzIHBvaW50ZXIgaXMgYXNzaWdu
ZWQgYWZ0ZXIgaW5pdGlhbGl6YXRpb24gY29tcGxldGVzLgoKSWYgdGVncmFfeHVzYl9wb3J0X2lu
aXQoKSBmYWlscywgaXQgZHJvcHMgdGhlIGRldmljZSByZWZjb3VudCBhbmQgY2FsbHMKdGVncmFf
eHVzYl9wb3J0X3JlbGVhc2UoKS4gVGhhdCByZWxlYXNlIGZ1bmN0aW9uIGF0dGVtcHRzIHRvIGV2
YWx1YXRlIHRoZQpvcHMgcG9pbnRlcjoKCiAgICBpZiAocG9ydC0+b3BzLT5yZWxlYXNlKQogICAg
ICAgIHBvcnQtPm9wcy0+cmVsZWFzZShwb3J0KTsKClNpbmNlIHBvcnQtPm9wcyBpcyBub3QgeWV0
IGFzc2lnbmVkIGR1cmluZyB0aGUgaW5pdCBlcnJvciBwYXRoLCBpdCB3aWxsCnN0aWxsIGJlIE5V
TEwgZnJvbSB0aGUga3phbGxvYygpIGFsbG9jYXRpb24uIENvdWxkIHRoaXMgY2F1c2UgYSBwYW5p
YyB3aGVuCmluaXRpYWxpemF0aW9uIGZhaWxzPwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0
dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDYyOTA5MzQwNi4xMTE4NTk0LTEtd2F5
bmVjQG52aWRpYS5jb20/cGFydD00CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1w
aHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1waHkK
