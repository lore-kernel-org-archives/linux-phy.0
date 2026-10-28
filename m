Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 609E2606A322
	for <linux-phy@archiver.kernel.org>; Wed, 28 Oct 2026 11:24:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=t/783bU9;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=A21jxCc9
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Dp0W4/8NhT7frmaEVzuvblfjRnGvxRIAYBO5PWj5Acw=; b=t/783bU9dr45US+/UrEqIw4w+R
	It/fFuJ3pBMj1FqojO96aiJaWM7RWesT5RCTwqzR/1GjK/uBUVjMpROQ6SnybxJyBWVDLkzQyougW
	8Nibc3opRRIt+/+lcISj9LJL9IxIccGRynJ8DAHAACgodehCOMqX3RtDqU5F/uxB8wLL/tQ8y9FId
	SuwbErL1bU5xu5jki/qwSMxwJ1ctYnqMElJFUldcn1lkBzz3FdYHasxhQvgyDMKhlHcn3M2iwJMMe
	WBCaCQKiEPTSy7WVjN/klMvfePyQOpC+Ub6q5IO2PVlmRGw3aIeyPSjqKQ0eNb0bVm4YYNGmT1iK4
	EosWmHzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM1lz-00000006rCL-4B1m;
	Wed, 28 Oct 2026 11:24:51 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM1lx-00000006rCE-40Z6
	for linux-phy@lists.infradead.org;
	Wed, 28 Oct 2026 11:24:50 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 167BB60120;
	Wed, 28 Oct 2026 11:24:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 01E681F01825;
	Wed, 28 Oct 2026 11:24:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793186688;
	bh=GQQcgpZJwrZw/LB/XgVmY61NkifszxIOymjocQEoxmg=;
	h=Subject:From:To:Cc:In-Reply-To:References:Date;
	b=A21jxCc9sLaua+7v252kZU0tEG/QxrYQel1ipeb3evz+ffhYpVnL64zs5cKC+fMPK
	 nWM7+OWiYVsU5JHj44jV0ZnzUBE2oVmGaVDeoIR9HgO3uQX5trBfvfc13I5Pq0Opkr
	 uUxEPCT7nqh2Cr4lkieVNJvMklJNn5i2l7E+sKQAoOddtKgOim5EDHVTXsydDVL5D8
	 aSXsen0NFrcX6e2gTkXYSB+3YwbSJROOCbEbicNIxzdIK/4pSYs0FHmnHIpsQLcaeG
	 w30tG7eAqN40uLD1wEpws85o/yMFaAkC2kUs/KQPqSV5mNu/qBViuNf9P5DdgGJwWf
	 3Cac7YMVUXfQg==
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH v4 3/5] phy: core: Add phy bulk data helper functions
From: Manivannan Sadhasivam <mani@kernel.org>
To: Inochi Amaoto <inochiama@gmail.com>
Cc: Manivannan Sadhasivam <mani@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
 Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, 
 Randy Dunlap <rdunlap@infradead.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Rhys Tumelty <rhys@tumelty.co.uk>, linux-doc@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 Yixun Lan <dlan@gentoo.org>, Longbin Li <looong.bin@gmail.com>
In-Reply-To: <auBi722rs5BvaExx@inochi.infowork>
References: <20260929085235.469515-1-inochiama@gmail.com>
 <20260929085235.469515-4-inochiama@gmail.com> <asN4I1cpVb5HLNu7@parshuram>
 <asOMP3uJJmdpfvtt@inochi.infowork> <atS9fkULEWfCbVVm@debian>
 <auBi722rs5BvaExx@inochi.infowork>
Date: Wed, 28 Oct 2026 16:54:39 +0530
Message-Id: <179318667977.5872.17095079427326558812.b4-reply@b4>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2190; i=mani@kernel.org;
 h=from:subject:message-id; bh=O8WpozuHvriuxt1s/rrpiM234RfLSzQCVXwXN9/aUiQ=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBq4dt6eqI44paevA1QxiozX4MYt/L9zGkzkZ3M7
 oqCxyeQqI+JATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCauHbegAKCRBVnxHm/pHO
 9bsTB/9LYbCYkGWRJiNpsmRbHJ+vYKT66zeLqkGy/SyKGlCu7lDkwu4xYMiF8Pck+lqmLxvXuHi
 P4lZUdP5QtvVi+j9V9GA5r1+44pvKSWx5/FqjFOkKZFb6Gy9LdEvb4IFLzq64E+wpui8kw0fhM/
 gHjDPyeKHFgURMBfMURVe2q0adgdFn5HPyPQEmpSi24QpibGq7jBX0IKJnG6pZdVLOA51omw2gx
 HTT56pRjnDhmGjKDFvZfYLJ7rAfchMJNl86IIk866QaLXxKCj56Z0u5fQSbrQ6q8KjNKBua5/HA
 RnxPCAJfH2E1WOXIYDuBdsv4u3fRqDXIchW1kwPuil3k5Qsj
X-Developer-Key: i=mani@kernel.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-6.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gMjAyNi0xMC0yNyAxNjo0MSArMDgwMCwgSW5vY2hpIEFtYW90byB3cm90ZToKPiBPbiBTdW4s
IE9jdCAxOCwgMjAyNiBhdCAwNjowOTo0OVBNICswNTMwLCBNYW5pdmFubmFuIFNhZGhhc2l2YW0g
d3JvdGU6Cj4gPiBPbiBNb24sIE9jdCAwNSwgMjAyNiBhdCAwNzo0MTo1MlBNICswODAwLCBJbm9j
aGkgQW1hb3RvIHdyb3RlOgo+ID4gPiBPbiBNb24sIE9jdCAwNSwgMjAyNiBhdCAxMjoxMjo1MVBN
ICswMjAwLCBWaW5vZCBLb3VsIHdyb3RlOgo+ID4gPiA+IE9uIDI5LTA5LTI2LCAxNjo1MiwgSW5v
Y2hpIEFtYW90byB3cm90ZToKPiA+ID4gPiA+IEFkZCBzZXZlcmFsIGhlbHBlciBmdW5jdGlvbnMg
dGhhdCBhbGxvdyBkcml2ZXJzIHRvIGdldCBzZXZlcmFsIHBoeQo+ID4gPiA+ID4gY29uc3VtZXJz
IGluIG9uZSBvcGVyYXRpb24uIElmIGFueSBvZiB0aGUgcGh5IGNhbm5vdCBiZSBhY3F1aXJlZCB0
aGVuCj4gPiA+ID4gPiBhbnkgcGh5cyB0aGF0IHdlcmUgZ290IHdpbGwgYmUgcHV0IGJlZm9yZSBy
ZXR1cm5pbmcgdG8gdGhlIGNhbGxlci4KPiA+ID4gPiAKPiA+ID4gPiBEbyB3ZSBoYXZlIG1hbnkg
c3VjaCBleGFtcGxlcz8gUGh5IGlzIG5vdCBhIG1hbnkgcmVzb3VyY2UgbGlrZQo+ID4gPiA+IGNs
b2NrL3JlZ3VsYXRvcnMuLi4gRG8gd2UgcmVhbGx5IG5lZWQgdGhpcy4gSG93IG1hbnkgaW4ga2Vy
bmVsIHVzZXJzCj4gPiA+ID4gd2lsbCBiZW5lZml0IGZyb20gdGhpcyBBUEk/Cj4gPiA+ID4gCj4g
PiA+IAo+ID4gPiAKPiA+ID4gSSBndWVzcyB0aGUgZm9sbG93aW5nIGRyaXZlciBtYXkgYmVuZWZp
dCBmcm9tIGJ1bGsgYXBpLiBNb3N0IG9mIHRoZW0KPiA+ID4gYXJlIFBDSWUgZHJpdmVycy4uLi4K
PiA+ID4gCj4gPiA+IGRyaXZlcnMvYXRhL2FoY2lfaW14LmMKPiA+ID4gZHJpdmVycy9wY2kvY29u
dHJvbGxlci9jYWRlbmNlL3BjaWUtY2FkZW5jZS5jCj4gPiA+IGRyaXZlcnMvcGNpL2NvbnRyb2xs
ZXIvZHdjL3BjaS1kcmE3eHguYwo+ID4gPiBkcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2ll
LXRlZ3JhMTk0LmMKPiA+ID4gZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLXJvY2tjaGlwLmMK
PiA+ID4gZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1xY29tLmMKPiA+ID4gCj4gPiA+
IE5vdGU6IEkgbWVhbiB0aGUgYnVsayBhcGksIG5vdCBqdXN0IHRoZSB0aGluZ3MgSSBhZGRlZC4g
SSBndWVzcyBtYW55Cj4gPiA+IG1heSB3YW50IGRldm1fcGh5X2J1bGtfZ2V0KCkgb3IgZGV2bV9v
Zl9waHlfYnVsa19nZXQoKSBpbnN0ZWFkIG9mCj4gPiA+IGRldm1fcGh5X2J1bGtfZ2V0X2FsbCgp
Lgo+ID4gPiAKPiA+IAo+ID4gTm8uIEkgZG9uJ3QgdGhpbmsgdGhlIFBDSWUgaG9zdCBjb250cm9s
bGVycyBuZWVkIHRoZSBQSFkgYnVsayBBUElzLiBNb3N0IG9mIHRoZQo+ID4gdGltZSB0aGV5IG5l
ZWQgdG8gY29udHJvbCBlYWNoIFBIWSBpbmRlcGVuZGVudGx5IGluIGEgbXVsdGktcG9ydCBzZXR1
cC4gU28KPiA+IGhhdmluZyB0aGUgYnVsayBBUEkgZG9lc24ndCBzZWVtIGxvZ2ljYWwgdG8gbWUu
Cj4gPiAKPiA+IC0gTWFuaQo+ID4gCj4gPiAtLSAKPiA+IOCuruCuo+Cuv+CuteCuo+CvjeCuo+Cu
qeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KPiAKPiBTb3JyeSBmb3IgbWlzc2luZyB0aGlz
IG9uZS4gRm9yIG11bHRpLXBvcnQgc2V0dXAsIHRoZSBhbnN3ZXIgaXMgbm8uIFRoZSBidWxrCj4g
QVBJIGlzIG5vdCBhIGdvb2QgY2hvaWNlLiBCdXQgZm9yIG11bHRpLWxhbmUgc2V0dXAgb2Ygb25l
IHBvcnQsIEkgdGhpbmsgdGhlCj4gYW5zd2VyIGlzIHllcywgdGhlIGRyaXZlciBjYW4ganVzdCBj
b250cm9sIHRoZSBwaHkgdG9nZXRoZXIgYW5kIGRvIG5vdCBuZWVkCj4gYSBsb29wIGZvciB0aGF0
LiBBdCBsZWFzdCBmb3IgcGNpZS1yb2NrY2hpcC5jLCBJIHRoaW5rIGl0IGlzIHJlYXNvbmFibGUs
IGl0cwo+IGxvZ2ljIHNob3cgaXQgdXNlIG11bHRpLWxhbmUgc2V0dXAsIHNvIEkgdGhpbmsgaXQg
aXMgZmluZSB0byBwb3J0Lgo+IAoKWWVhaCwgaWYgdGhlcmUgYXJlIG11bHRpcGxlIFBIWXMgdG8g
YmUgY29udHJvbGxlZCB3aXRoaW4gYSBzaW5nbGUgUlAgZm9yIGxhbmUKbXV4aW5nLCB0aGVuIGJ1
bGsgQVBJcyBkbyBtYWtlIHNlbnNlLgoKLSBNYW5pCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
