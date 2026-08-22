Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88F38C5DF8C
	for <linux-phy@archiver.kernel.org>; Sat, 22 Aug 2026 07:56:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=COWz+E91tt0QDHn4yD6Z4kkbQw6oUKuXV+4cUeltJAc=; b=cVZo4LOt8Qd2oF
	0ALtlZcgmmQM6l7ETJAus3eVJI8oghos7swm19HJH9VtP116kHgEwe1SZ8QYpycp4Osp1CdWQwSqo
	rk1JdTHhGuU74tiYKuxS9tzzu5yGAkd/KA5D6SEuF7TScLZ0e7i76G8z4/ZxrYtmCqRCioIw5xwJ4
	QFoXTrOYIkLa+ghrtrjojqNPtsWToAbkzLgVGpj7IMe9KgEbMjkacqLJE4nByKvTwDOadQTciY8QM
	tH6J9WdCWqXIattaq/ub4BokXW8vHZNNJoM03s1YnkTEDBufO27vbx+y3j3A47nWVLPrSeriT3o3y
	sDRZf2HBq2LoVldo1FJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wxgaQ-0000000EMli-42qH;
	Sat, 22 Aug 2026 07:56:19 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wxgaP-0000000EMlZ-1yUk
	for linux-phy@lists.infradead.org;
	Sat, 22 Aug 2026 07:56:17 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 98224600E2;
	Sat, 22 Aug 2026 07:56:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D63261F000E9;
	Sat, 22 Aug 2026 07:56:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787385376;
	bh=Md8sjyjPFwVegd6vG7EHKzCw4XT3YwVcfSxf497AGF0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ZO70ZUB9p9x7gWPH+8SotlAOiUxehNKuo0yT4n3TFn8kJJ7VT0y9iS9xQxuFVIvOE
	 oLhoprn99YUACMTurQQihgFnh51rYkz6XCQEpkWmvHXHMeG3kBc9FIGezNknZpnBV7
	 IohnCQZ8n7yNWKOc1YkcaqmxIEqZucaE2YX9lvMDJrsSs8fmGGMsfiruox0PgJ0mal
	 eyeTTQEjktc8QjCibr9A6PSUopHwbEcvbeG0SZ4dFQVpFmclEQJOKp1H30LfFN3w3i
	 D8VAdlNGU/r+LcHBF2LdZFg7PuSz24CtAP+x4eOkJQyXPu3jS10vK6khKfY2k6dU7/
	 Eu/O9f7ORENJg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 6/9] usb: dwc3: dwc3-generic-plat: Add ST STM32MP2
 DWC3 xHCI USB controller glue
To: "Marek Vasut" <marex@nabladev.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org, olteanv@gmail.com
In-Reply-To: <20260822074816.548662-7-marex@nabladev.com>
References: <20260822074816.548662-1-marex@nabladev.com>
 <20260822074816.548662-7-marex@nabladev.com>
Date: Sat, 22 Aug 2026 07:56:15 +0000
Message-Id: <20260822075615.D63261F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gVGhlIGZpbGUgdXNlcyB0
aGUgRklFTERfUFJFUCBtYWNybyB3aXRob3V0IGluY2x1ZGluZyBpdHMgcmVxdWlyZWQgaGVhZGVy
IDxsaW51eC9iaXRmaWVsZC5oPi4KLS0KCi0tLSBQYXRjaCBbNl06IFtQQVRDSCB2MyA2LzldIHVz
YjogZHdjMzogZHdjMy1nZW5lcmljLXBsYXQ6IEFkZCBTVCBTVE0zMk1QMiBEV0MzIHhIQ0kgVVNC
IGNvbnRyb2xsZXIgZ2x1ZSAtLS0KY29tbWl0IDE0NGY5ZmNjNzQ3YTUyMjkyNWJiOGU0MDE1OGZh
NDk2Y2FmMjY3M2MKQXV0aG9yOiBNYXJlayBWYXN1dCA8bWFyZXhAbmFibGFkZXYuY29tPgoKdXNi
OiBkd2MzOiBkd2MzLWdlbmVyaWMtcGxhdDogQWRkIFNUIFNUTTMyTVAyIERXQzMgeEhDSSBVU0Ig
Y29udHJvbGxlciBnbHVlCgpUaGlzIGNvbW1pdCBleHRlbmRzIHRoZSBnZW5lcmljIERXQzMgcGxh
dGZvcm0gZHJpdmVyIGJ5IGFkZGluZyBnbHVlIGxvZ2ljCnN1cHBvcnQgZm9yIHRoZSBTVCBTVE0z
Mk1QMiBTb0MuIEl0IGNvbmZpZ3VyZXMgY29udHJvbGxlciBzZXR0aW5ncyB1c2luZwpzeXNjb24g
dmlhIGRldmljZSB0cmVlIHByb3BlcnRpZXMuCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3VzYi9k
d2MzL2R3YzMtZ2VuZXJpYy1wbGF0LmMgYi9kcml2ZXJzL3VzYi9kd2MzL2R3YzMtZ2VuZXJpYy1w
bGF0LmMKPiBpbmRleCBjYTY5YWMwZWIwN2NlLi5mNjcwNTc2NTExYjU5IDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvdXNiL2R3YzMvZHdjMy1nZW5lcmljLXBsYXQuYwo+ICsrKyBiL2RyaXZlcnMvdXNi
L2R3YzMvZHdjMy1nZW5lcmljLXBsYXQuYwoKWyAuLi4gXQoKPiBAQCAtODUsNiArOTEsMzggQEAg
c3RhdGljIGludCBkd2MzX3NwYWNlbWl0X2sxX2luaXQoc3RydWN0IGR3YzNfZ2VuZXJpYyAqZHdj
M2cpCgpbIC4uLiBdCgo+ICtzdGF0aWMgaW50IGR3YzNfc3RtMzJtcDI1X2luaXQoc3RydWN0IGR3
YzNfZ2VuZXJpYyAqZHdjM2cpCj4gK3sKClsgLi4uIF0KCj4gKwlyZXR1cm4gcmVnbWFwX3VwZGF0
ZV9iaXRzKHJlZ21hcCwgZHJjciwKPiArCQkJCSAgU1RNMzJNUDJfVVNCM0RSQ1JfSE9TVF9QT1JU
X1BPV0VSX0NPTlRST0xfUFJFU0VOVCB8Cj4gKwkJCQkgIFNUTTMyTVAyX1VTQjNEUkNSX09WUkNV
Ul9QT0xBUklUWSB8Cj4gKwkJCQkgIFNUTTMyTVAyX1VTQjNEUkNSX1ZCVVNFTl9QT0xBUklUWSB8
Cj4gKwkJCQkgIFNUTTMyTVAyX1VTQjNEUkNSX1VTQjJPTkxZRCB8Cj4gKwkJCQkgIFNUTTMyTVAy
X1VTQjNEUkNSX1VTQjJPTkxZSCwKPiArCQkJCSAgRklFTERfUFJFUChTVE0zMk1QMl9VU0IzRFJD
Ul9IT1NUX1BPUlRfUE9XRVJfQ09OVFJPTF9QUkVTRU5ULAo+ICsJCQkJCSAgICAgcHJ0X3B3cl9j
dHJsKSB8CgpbU2V2ZXJpdHk6IExvd10KVGhpcyBpc24ndCBhIGJ1ZywgYnV0IEZJRUxEX1BSRVAg
aXMgdXNlZCBoZXJlIHdpdGhvdXQgZXhwbGljaXRseSBpbmNsdWRpbmcKbGludXgvYml0ZmllbGQu
aC4gQ291bGQgdGhpcyBjYXVzZSBidWlsZCBmYWlsdXJlcyBvbiBhcmNoaXRlY3R1cmVzIG9yCmNv
bmZpZ3VyYXRpb25zIHdoZXJlIHRoaXMgaGVhZGVyIGlzIG5vdCBpbXBsaWNpdGx5IHB1bGxlZCBp
biBieSBvdGhlcgppbmNsdWRlcz8KCj4gKwkJCQkgIEZJRUxEX1BSRVAoU1RNMzJNUDJfVVNCM0RS
Q1JfT1ZSQ1VSX1BPTEFSSVRZLAo+ICsJCQkJCSAgICAgb3ZyY3VyX3BvbGFyaXR5X2xvdykgfAo+
ICsJCQkJICBGSUVMRF9QUkVQKFNUTTMyTVAyX1VTQjNEUkNSX1ZCVVNFTl9QT0xBUklUWSwKPiAr
CQkJCQkgICAgIHZidXNlbl9wb2xhcml0eV9sb3cpIHwKPiArCQkJCSAgRklFTERfUFJFUChTVE0z
Mk1QMl9VU0IzRFJDUl9VU0IyT05MWUQsCj4gKwkJCQkJICAgICAhIXVzYjJvbmx5X2NvbmYpIHwK
PiArCQkJCSAgRklFTERfUFJFUChTVE0zMk1QMl9VU0IzRFJDUl9VU0IyT05MWUgsCj4gKwkJCQkJ
ICAgICAhIXVzYjJvbmx5X2NvbmYpKTsKPiArfQoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0
dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDgyMjA3NDgxNi41NDg2NjItMS1tYXJl
eEBuYWJsYWRldi5jb20/cGFydD02CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1w
aHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1waHkK
