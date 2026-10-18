Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16F2ACCA490
	for <linux-phy@archiver.kernel.org>; Sun, 18 Oct 2026 12:40:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fEYk+arvCrEz5TK2SGHB91lTX2lX7q8/tR0V/c4x0NU=; b=LsL2Fz2aScNQ8h
	MzuXHfLNEusi4MKF9gB1kh4W6KW+5910kUD5YNtX7+MLouRXp61iWjDlMMyipT7KDQoQHaz3nlDed
	tis4dIykrqNEnFeyXEYQuSEtmZCs8fSTnBRic55F7Xqy/vmrfPOsLR+sAG9kU9RgdY8zabvBnHDQz
	BVZeSsnRGAMHoSmCqNMVzQqtM7IIUg5c4ZwuIlN/Xewy8AcgfqANNjIU7NX0lGgKkglqbCRm7ShSS
	e2ogOLQ3wXQYAJ2SVZVxgdIhJnhKLLs9ub+IM6W407j+r3wG3KqkkaQnDb03KICPUyrFQtlQWSBpD
	T8G19nYyKX1tzqFJxbmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIQBQ-00000005rcO-2d8w;
	Sun, 18 Oct 2026 12:40:12 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIQBO-00000005rcB-3htK
	for linux-phy@lists.infradead.org;
	Sun, 18 Oct 2026 12:40:10 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 680F840453;
	Sun, 18 Oct 2026 12:40:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 807BD1F000C4;
	Sun, 18 Oct 2026 12:40:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792327210;
	bh=mmnv/Skt5HK9P7tABbR9P+/0X2OHL5yfGFNv767t684=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Dt8UiC9CThk+APa0Y8FEe5F15uM4Agdfw01ew+hZiESj63eOVYkEZNZkkTPqmSace
	 BinC7t+0ACHrDlZWLP7jjZF3CgZLgv4/r4K1gQHDkY4SXoALIuvwuN58dL2TiaAa96
	 5x7QHtSnrPTp5+NZonTzdNBpinJ1DUznj4rmL8OnUmI32LXjo45atwYySS1vmvs8XF
	 Zxmch+qR6MWF/5ULJldGjYyhna5weeq4QoW52xH1rtIEml3fNFOzRnvH0jR/Ok415f
	 IFF/R4Q0sOWGjgh1DZ6JjMhXBf0XdzoXqlbcHKhzy/c1jlaJ5gS5VY+e6KbHfURQ6S
	 H2NZFK/tceQPw==
Date: Sun, 18 Oct 2026 18:09:49 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Inochi Amaoto <inochiama@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Jonathan Corbet <corbet@lwn.net>, 
	Shuah Khan <skhan@linuxfoundation.org>, Randy Dunlap <rdunlap@infradead.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rhys Tumelty <rhys@tumelty.co.uk>, linux-doc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, Yixun Lan <dlan@gentoo.org>, 
	Longbin Li <looong.bin@gmail.com>
Subject: Re: [PATCH v4 3/5] phy: core: Add phy bulk data helper functions
Message-ID: <atS9fkULEWfCbVVm@debian>
References: <20260929085235.469515-1-inochiama@gmail.com>
 <20260929085235.469515-4-inochiama@gmail.com>
 <asN4I1cpVb5HLNu7@parshuram>
 <asOMP3uJJmdpfvtt@inochi.infowork>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <asOMP3uJJmdpfvtt@inochi.infowork>
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

T24gTW9uLCBPY3QgMDUsIDIwMjYgYXQgMDc6NDE6NTJQTSArMDgwMCwgSW5vY2hpIEFtYW90byB3
cm90ZToKPiBPbiBNb24sIE9jdCAwNSwgMjAyNiBhdCAxMjoxMjo1MVBNICswMjAwLCBWaW5vZCBL
b3VsIHdyb3RlOgo+ID4gT24gMjktMDktMjYsIDE2OjUyLCBJbm9jaGkgQW1hb3RvIHdyb3RlOgo+
ID4gPiBBZGQgc2V2ZXJhbCBoZWxwZXIgZnVuY3Rpb25zIHRoYXQgYWxsb3cgZHJpdmVycyB0byBn
ZXQgc2V2ZXJhbCBwaHkKPiA+ID4gY29uc3VtZXJzIGluIG9uZSBvcGVyYXRpb24uIElmIGFueSBv
ZiB0aGUgcGh5IGNhbm5vdCBiZSBhY3F1aXJlZCB0aGVuCj4gPiA+IGFueSBwaHlzIHRoYXQgd2Vy
ZSBnb3Qgd2lsbCBiZSBwdXQgYmVmb3JlIHJldHVybmluZyB0byB0aGUgY2FsbGVyLgo+ID4gCj4g
PiBEbyB3ZSBoYXZlIG1hbnkgc3VjaCBleGFtcGxlcz8gUGh5IGlzIG5vdCBhIG1hbnkgcmVzb3Vy
Y2UgbGlrZQo+ID4gY2xvY2svcmVndWxhdG9ycy4uLiBEbyB3ZSByZWFsbHkgbmVlZCB0aGlzLiBI
b3cgbWFueSBpbiBrZXJuZWwgdXNlcnMKPiA+IHdpbGwgYmVuZWZpdCBmcm9tIHRoaXMgQVBJPwo+
ID4gCj4gCj4gCj4gSSBndWVzcyB0aGUgZm9sbG93aW5nIGRyaXZlciBtYXkgYmVuZWZpdCBmcm9t
IGJ1bGsgYXBpLiBNb3N0IG9mIHRoZW0KPiBhcmUgUENJZSBkcml2ZXJzLi4uLgo+IAo+IGRyaXZl
cnMvYXRhL2FoY2lfaW14LmMKPiBkcml2ZXJzL3BjaS9jb250cm9sbGVyL2NhZGVuY2UvcGNpZS1j
YWRlbmNlLmMKPiBkcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2ktZHJhN3h4LmMKPiBkcml2
ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLXRlZ3JhMTk0LmMKPiBkcml2ZXJzL3BjaS9jb250
cm9sbGVyL3BjaWUtcm9ja2NoaXAuYwo+IGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUt
cWNvbS5jCj4gCj4gTm90ZTogSSBtZWFuIHRoZSBidWxrIGFwaSwgbm90IGp1c3QgdGhlIHRoaW5n
cyBJIGFkZGVkLiBJIGd1ZXNzIG1hbnkKPiBtYXkgd2FudCBkZXZtX3BoeV9idWxrX2dldCgpIG9y
IGRldm1fb2ZfcGh5X2J1bGtfZ2V0KCkgaW5zdGVhZCBvZgo+IGRldm1fcGh5X2J1bGtfZ2V0X2Fs
bCgpLgo+IAoKTm8uIEkgZG9uJ3QgdGhpbmsgdGhlIFBDSWUgaG9zdCBjb250cm9sbGVycyBuZWVk
IHRoZSBQSFkgYnVsayBBUElzLiBNb3N0IG9mIHRoZQp0aW1lIHRoZXkgbmVlZCB0byBjb250cm9s
IGVhY2ggUEhZIGluZGVwZW5kZW50bHkgaW4gYSBtdWx0aS1wb3J0IHNldHVwLiBTbwpoYXZpbmcg
dGhlIGJ1bGsgQVBJIGRvZXNuJ3Qgc2VlbSBsb2dpY2FsIHRvIG1lLgoKLSBNYW5pCgotLSAK4K6u
4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxp
bnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
