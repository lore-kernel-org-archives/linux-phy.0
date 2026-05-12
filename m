Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3B58CD4F21
	for <linux-phy@archiver.kernel.org>; Tue, 12 May 2026 22:31:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5jWvk8W2/FqtitJQlIRMJDLAy9ZwacOJ43r6iCdHd0k=; b=V4PyvP/plUAO3R
	dTi/92loFCWiWSr7vHtVlhkiR2nEw28+08x5kLpQUNhwUGLfKbk74mmHV7B3hcySVAmaaTY6XwGUi
	FhfO+TMXu30SZfOVVVFJBhxv8GC2bqNVgAxK5aXC9e4xa7U+wXlTASIHo05ufmXel0F3F4u5ewKOa
	stlSsnsO8oydMut2TzLp3JYcGTwgebNZIbQI757o6zLrqHRTxbFKVqMSuEFDUaJF4Xx78Q8RtlWKI
	gl7MriWH7qK5PjAsxhqwsRkABGBJKlW+L5HYqN76B50QOG/qi+yJyyoRqP8zYd4kATWtTceqJenBg
	Ip0oeM73mTVARR4vjl7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMvdh-00000000aft-2KVP;
	Tue, 12 May 2026 22:31:45 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMvdf-00000000afA-0Gt0
	for linux-phy@lists.infradead.org;
	Tue, 12 May 2026 22:31:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 6B98041B70;
	Tue, 12 May 2026 22:31:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1AFC4C2BCB0;
	Tue, 12 May 2026 22:31:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778625102;
	bh=PyaHfoOkEqu55Eg/T7KMdRic50AxonRErjgDmFrMo74=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=No3Hz8NebYqOiMd3bR6G4Ts/5OWUqEjQOti8eOrpJUjpcPpqwcExpANFypB3kPVCz
	 bSvXUKBVWQoXaMJMdMX4FxGTMSHgkIaGG9lq7/p+OiKEUMC+UeiMPD2uK5SfmdMW23
	 oM63jbfR94LAkbywCZhlCxmrxVXNNIZ/krzCYSujYo7MwRPpra8Mj0BhT2t45yuDK9
	 EzpwWH674bR97UCaLs2vvuS/8wgDMx3iQlDB3gpqF1uamoSpsK5tDez5jCaxN+8lQh
	 6L1PK3rEOgT9Ca0nfAcoR2jFPYQXw9jcPaX2ryCl2TrAuHDSpKJkBi0Smf1l1g7YDd
	 cq05BOctQwgSQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 3/3] phy: zynqmp: keep SERDES scrambler and 8b/10b
 enabled for USB
To: "Radhey Shyam Pandey" <radhey.shyam.pandey@amd.com>
Cc: linux-phy@lists.infradead.org, olteanv@gmail.com, vkoul@kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20260511163135.2924642-4-radhey.shyam.pandey@amd.com>
References: <20260511163135.2924642-4-radhey.shyam.pandey@amd.com>
Date: Tue, 12 May 2026 22:31:41 +0000
Message-Id: <20260512223142.1AFC4C2BCB0@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260512_153143_125828_5BFCD981 
X-CRM114-Status: GOOD (  11.04  )
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
Reply-To: sashiko@lists.linux.dev
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFRoaXMgcHJvYmxlbSB3
YXNuJ3QgaW50cm9kdWNlZCBieSB0aGlzIHBhdGNoLCBidXQgdGhlIHNjcmFtYmxlciBhbmQgOGIv
MTBiIGJ5cGFzcyBzdGF0ZSBpcyBub3QgZXhwbGljaXRseSBpbml0aWFsaXplZCBmb3IgRGlzcGxh
eVBvcnQgKERQKSBhbmQgUENJZSwgbGVhdmluZyB0aGVtIHZ1bG5lcmFibGUgdG8gaW5oZXJpdGlu
ZyBhbiBpbmNvcnJlY3QgaGFyZHdhcmUgc3RhdGUuCi0tCgpjb21taXQgYmQxM2I1NTk1YjZiZjkx
M2I3N2Q0YjYxZmI3MDRjN2U1NmZhNDg0NwpBdXRob3I6IE5hdmEga2lzaG9yZSBNYW5uZSA8bmF2
YS5raXNob3JlLm1hbm5lQGFtZC5jb20+CgpwaHk6IHp5bnFtcDoga2VlcCBTRVJERVMgc2NyYW1i
bGVyIGFuZCA4Yi8xMGIgZW5hYmxlZCBmb3IgVVNCCgpUaGlzIGNvbW1pdCBlbnN1cmVzIHRoYXQg
cGh5c2ljYWwgbGF5ZXIgc2NyYW1ibGluZyBhbmQgOGIvMTBiIGVuY29kaW5nIGFyZQpub3QgYnlw
YXNzZWQgZm9yIFVTQiBvcGVyYXRpb25zLiBJdCBleHBsaWNpdGx5IGRpc2FibGVzIHRoZSBzY3Jh
bWJsZXIgYnlwYXNzCmZvciBVU0IzIHdoaWxlIHByZXNlcnZpbmcgaXQgZm9yIFNBVEEgYW5kIFNH
TUlJIG1vZGVzIHdoZXJlIGVuY29kaW5nIGlzCmhhbmRsZWQgYnkgdGhlIGNvbnRyb2xsZXIuCgo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS94aWxpbngvcGh5LXp5bnFtcC5jIGIvZHJpdmVycy9w
aHkveGlsaW54L3BoeS16eW5xbXAuYwo+IGluZGV4IDZjNTZjNGRmODUyM2MuLjA4N2ZlNDAyZTRl
MjAgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkveGlsaW54L3BoeS16eW5xbXAuYwo+ICsrKyBi
L2RyaXZlcnMvcGh5L3hpbGlueC9waHktenlucW1wLmMKClsgLi4uIF0KCj4gQEAgLTcwNyw2ICs3
MjIsMTAgQEAgc3RhdGljIGludCB4cHNndHJfcGh5X2luaXQoc3RydWN0IHBoeSAqcGh5KQo+ICAJ
Y2FzZSBJQ01fUFJPVE9DT0xfU0dNSUk6Cj4gIAkJeHBzZ3RyX3BoeV9pbml0X3NnbWlpKGd0cl9w
aHkpOwo+ICAJCWJyZWFrOwo+ICsKPiArCWNhc2UgSUNNX1BST1RPQ09MX1VTQjoKPiArCQl4cHNn
dHJfYnlwYXNzX3NjcmFtYmxlcl84YjEwYihndHJfcGh5LCBmYWxzZSk7Cj4gKwkJYnJlYWs7Cj4g
IAl9CgpEb2VzIHRoaXMgbGVhdmUgdGhlIHNjcmFtYmxlciBhbmQgOGIvMTBiIGJ5cGFzcyBzdGF0
ZSB1bmluaXRpYWxpemVkIGZvcgpEaXNwbGF5UG9ydCAoRFApIGFuZCBQQ0llPwoKV2hpbGUgdGhp
cyBjb21taXQgcmVzb2x2ZXMgdGhlIHN0YXRlIGxlYWsgZm9yIFVTQiBieSBleHBsaWNpdGx5IGNs
ZWFyaW5nIHRoZQpieXBhc3MgYml0cywgaXQgYXBwZWFycyBEUCBhbmQgUENJZSBtaWdodCBzdGls
bCBiZSB2dWxuZXJhYmxlIHRvIHNpbWlsYXIKaXNzdWVzLiAKCklmIGEgbGFuZSBpcyByZXB1cnBv
c2VkIGZyb20gU0FUQSBvciBTR01JSSB0byBEUCBvciBQQ0llIChmb3IgZXhhbXBsZSwgaWYgYQpi
b290bG9hZGVyIHByb2JlcyBhbiBNLjIgc2xvdCBmb3IgU0FUQSwgYW5kIExpbnV4IGxhdGVyIGNv
bmZpZ3VyZXMgaXQgZm9yClBDSWUgTlZNZSksIGNvdWxkIHRoZSBQSFkgaW5oZXJpdCBhbiBlcnJv
bmVvdXNseSBieXBhc3NlZCBzdGF0ZT8KClNob3VsZCB0aGUgYnlwYXNzIGJpdHMgYWxzbyBiZSBl
eHBsaWNpdGx5IGNsZWFyZWQgZm9yIElDTV9QUk9UT0NPTF9EUCBhbmQKSUNNX1BST1RPQ09MX1BD
SUUgdG8gZW5zdXJlIHRoZXkgZG8gbm90IHJlbHkgb24gcG90ZW50aWFsbHkgY29ycnVwdGVkIGhh
cmR3YXJlCmRlZmF1bHRzPwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlr
by5kZXYvIy9wYXRjaHNldC8yMDI2MDUxMTE2MzEzNS4yOTI0NjQyLTEtcmFkaGV5LnNoeWFtLnBh
bmRleUBhbWQuY29tP3BhcnQ9MwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcGh5Cg==
