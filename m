Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49C1FC5DF89
	for <linux-phy@archiver.kernel.org>; Fri, 21 Aug 2026 14:01:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QRZdVKUnX+TmtsQaXATA3lQT6byiAK+O/zU6mY4APMY=; b=2SUMvWIW0Vv02H
	3S14o2au4//CpWjExKU4Vuek5mvF17obdJNkFS/RPuSeiNZwvMBXvZ0K7JsemA4Rwx+YTOdZaNzHL
	kwl1pRj2ZDB1D1AVw9W2rkqIt32kL7NLfQBw+ONp8Zd+2sJn2If11y381NIDEM7bbCU0uUqfW7YT6
	+1NDRr34bglGW/lNeiuDbjdqZdPkYmv0y8K6ssALgpnkp/sr8aosf9HGJHrBOdkPxovepD4hRHtmh
	l7sS+yM5wQXaVgedcS+sSoAHABdU4FYy+xrza2ldKcejEZPICLKhIIG2SKqnXABCYXgfKi9vSxXw0
	WRv755f26HbkJCtsQS/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wxPo5-0000000DUIE-3dLO;
	Fri, 21 Aug 2026 14:01:17 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wxPo3-0000000DUHU-3kmj
	for linux-phy@lists.infradead.org;
	Fri, 21 Aug 2026 14:01:16 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 3673160055;
	Fri, 21 Aug 2026 14:01:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 960CF1F000E9;
	Fri, 21 Aug 2026 14:01:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787320874;
	bh=V2RvHKqz61nFSlptWuXo4LRzCZM9xlChmuQhyzmN7A4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=L+Kg8KQ4UeQsUZ9hLLEaBJk2gcztuuplFp+3KzOn3k0ehGtuhkNhEAesUzxA4xSjg
	 F1C6zbONMVzKn6MOFfoJNsnA7rfGVwPiRczr1FK2xn+3IIEpyo+Q/nTSzDk/tIaTRF
	 xQ1Mq1BVEUhmW87imwtxjymo25DUpVWqduRoBwVeLoxD9XbhTDTSyYFSXg1/8zOl/7
	 Q+tlZeM/rr+jB0y7hrcwHejeluDp12IUIYkvI9gBSgNWLVbNPkEvAtcMfozGad+CfF
	 dfoP+Y1h3inEw5ZkUTwcDVCWuSJPt9k5l3N0LjR1biPGZ8rGbHheQE7YNEWImTehyq
	 yFkwrekvYW/JA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/3] phy: apple: atc: Support DUMMY PIPEHANDLER state in
 configure_pipehandler
To: "Sven Peter" <sven@kernel.org>
Cc: neil.armstrong@linaro.org, olteanv@gmail.com, vkoul@kernel.org, linux-phy@lists.infradead.org
In-Reply-To: <20260821-b4-atcphy-usb4-v1-1-45c0b741e0c0@kernel.org>
References: <20260821-b4-atcphy-usb4-v1-0-45c0b741e0c0@kernel.org>
 <20260821-b4-atcphy-usb4-v1-1-45c0b741e0c0@kernel.org>
Date: Fri, 21 Aug 2026 14:01:14 +0000
Message-Id: <20260821140114.960CF1F000E9@smtp.kernel.org>
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
IFtIaWdoXSBgYXRjcGh5LT5waXBlaGFuZGxlcl91cGAgaXMgdW5jb25kaXRpb25hbGx5IHNldCB0
byB0cnVlIGV2ZW4gaWYgYGF0Y3BoeV9jb25maWd1cmVfcGlwZWhhbmRsZXJfdXNiMygpYCBmYWls
cywgbWFza2luZyBlcnJvcnMgb24gc3Vic2VxdWVudCBjb25maWd1cmF0aW9uIGF0dGVtcHRzLgot
LQoKLS0tIFBhdGNoIFsxXTogW1BBVENIIDEvM10gcGh5OiBhcHBsZTogYXRjOiBTdXBwb3J0IERV
TU1ZIFBJUEVIQU5ETEVSIHN0YXRlIGluIGNvbmZpZ3VyZV9waXBlaGFuZGxlciAtLS0KY29tbWl0
IDk2OWYyZTExYTJjMWRjZWI2NGMxZmYwZjFmMWRhMzZhZmEwNDE1MTgKQXV0aG9yOiBTdmVuIFBl
dGVyIDxzdmVuQGtlcm5lbC5vcmc+CgpwaHk6IGFwcGxlOiBhdGM6IFN1cHBvcnQgRFVNTVkgUElQ
RUhBTkRMRVIgc3RhdGUgaW4gY29uZmlndXJlX3BpcGVoYW5kbGVyCgpGb3IgYm90aCBUaHVuZGVy
Ym9sdCBhbmQgRGlzcGxheVBvcnQgYXRjcGh5X2NvbmZpZ3VyZV9waXBlaGFuZGxlciBpcwpyZWFj
aGVkIHdpdGggYSByZXF1ZXN0IHRvIHN3aXRjaCB0byB0aGUgRFVNTVkgc3RhdGUgKGkuZS4gdXNi
MiBvbmx5KS4KVGhpcyBhY3R1YWxseSBoYW5kbGVzIHRoYXQgY2FzZSBjb3JyZWN0bHkgYW5kIGRy
b3BzIHRoZSBkZWZhdWx0IGZyb20KdGhlIHN3aXRjaCB0byBlbmFibGUgY29tcGlsZXIgd2Fybmlu
Z3MgZm9yIG1pc3NpbmcgcGlwZWhhbmRsZXIgc3RhdGVzLgoKQ2xvc2VzOiBodHRwczovL2dpdGh1
Yi5jb20vQXNhaGlMaW51eC9saW51eC9wdWxsLzUxNQpGaXhlczogOGU5OGNhMWU3NGRiICgicGh5
OiBhcHBsZTogQWRkIEFwcGxlIFR5cGUtQyBQSFkiKQoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9w
aHkvYXBwbGUvYXRjLmMgYi9kcml2ZXJzL3BoeS9hcHBsZS9hdGMuYwo+IGluZGV4IDQxNTZmYWJh
ZDc0MmMuLmEzMTYyZjI1ZTZjZDYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvYXBwbGUvYXRj
LmMKPiArKysgYi9kcml2ZXJzL3BoeS9hcHBsZS9hdGMuYwo+IEBAIC0xMTIxLDcgKzExMjEsNyBA
QCBzdGF0aWMgaW50IGF0Y3BoeV9jb25maWd1cmVfcGlwZWhhbmRsZXJfZHVtbXkoc3RydWN0IGFw
cGxlX2F0Y3BoeSAqYXRjcGh5KQo+ICAKPiAgc3RhdGljIGludCBhdGNwaHlfY29uZmlndXJlX3Bp
cGVoYW5kbGVyKHN0cnVjdCBhcHBsZV9hdGNwaHkgKmF0Y3BoeSwgYm9vbCBob3N0KQo+ICB7Cj4g
LQlpbnQgcmV0Owo+ICsJaW50IHJldCA9IC1FSU5WQUw7Cj4gIAo+ICAJbG9ja2RlcF9hc3NlcnRf
aGVsZCgmYXRjcGh5LT5sb2NrKTsKPiAgCgpbU2V2ZXJpdHk6IEhpZ2hdClRoaXMgaXNuJ3QgYSBi
dWcgaW50cm9kdWNlZCBieSB0aGlzIHBhdGNoLCBidXQgbG9va2luZyBhdCB0aGUgVVNCMyBzdGF0
ZQpoYW5kbGluZyBpbiBhdGNwaHlfY29uZmlndXJlX3BpcGVoYW5kbGVyKCkganVzdCBiZWxvdyB0
aGlzOgoKZHJpdmVycy9waHkvYXBwbGUvYXRjLmM6YXRjcGh5X2NvbmZpZ3VyZV9waXBlaGFuZGxl
cigpIHsKICAgIC4uLgoJY2FzZSBBVENQSFlfUElQRUhBTkRMRVJfU1RBVEVfVVNCMzoKCQlyZXQg
PSBhdGNwaHlfY29uZmlndXJlX3BpcGVoYW5kbGVyX3VzYjMoYXRjcGh5LCBob3N0KTsKCQlhdGNw
aHktPnBpcGVoYW5kbGVyX3VwID0gdHJ1ZTsKCQlicmVhazsKICAgIC4uLgp9CgpJcyBpdCBzYWZl
IHRvIHVuY29uZGl0aW9uYWxseSBzZXQgYXRjcGh5LT5waXBlaGFuZGxlcl91cCB0byB0cnVlIGV2
ZW4gaWYKYXRjcGh5X2NvbmZpZ3VyZV9waXBlaGFuZGxlcl91c2IzKCkgZmFpbHM/CgpJZiB0aGUg
VVNCMyBQSFkgaW5pdGlhbGl6YXRpb24gZmFpbHMgKGZvciBleGFtcGxlLCBkdWUgdG8gYSBsb2Nr
IHRpbWVvdXQgb3IKQklTVCBmYWlsdXJlKSwgdGhlIFBIWSBpcyBub3QgY29ycmVjdGx5IGNvbmZp
Z3VyZWQgYnV0IHRoZSBzdGF0ZSBpcyBzdGlsbAptYXJrZWQgYXMgdXAuCgpDb3VsZCB0aGlzIGNh
dXNlIHN1YnNlcXVlbnQgbW9kZSBzZXR0aW5nIGF0dGVtcHRzIChsaWtlIGZyb20gdGhlIGdlbmVy
aWMKeEhDSSBjb2RlKSB0byBmYWxzZWx5IHJldHVybiBzdWNjZXNzIHdpdGhvdXQgcmUtYXR0ZW1w
dGluZyBjb25maWd1cmF0aW9uLApsZWF2aW5nIHRoZSBVU0IgcG9ydCBwZXJtYW5lbnRseSBicm9r
ZW4/CgpbIC4uLiBdCgo+IEBAIC0xMTM2LDggKzExMzYsMTAgQEAgc3RhdGljIGludCBhdGNwaHlf
Y29uZmlndXJlX3BpcGVoYW5kbGVyKHN0cnVjdCBhcHBsZV9hdGNwaHkgKmF0Y3BoeSwgYm9vbCBo
b3N0KQo+ICAJCXJldCA9IGF0Y3BoeV9jb25maWd1cmVfcGlwZWhhbmRsZXJfZHVtbXkoYXRjcGh5
KTsKPiAgCQlhdGNwaHktPnBpcGVoYW5kbGVyX3VwID0gZmFsc2U7Cj4gIAkJYnJlYWs7Cj4gLQlk
ZWZhdWx0Ogo+IC0JCXJldCA9IC1FSU5WQUw7Cj4gKwljYXNlIEFUQ1BIWV9QSVBFSEFORExFUl9T
VEFURV9EVU1NWToKPiArCQlyZXQgPSBhdGNwaHlfY29uZmlndXJlX3BpcGVoYW5kbGVyX2R1bW15
KGF0Y3BoeSk7Cj4gKwkJYXRjcGh5LT5waXBlaGFuZGxlcl91cCA9IGZhbHNlOwo+ICsJCWJyZWFr
Owo+ICAJfQo+ICAKPiAgCXJldHVybiByZXQ7CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0
cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwODIxLWI0LWF0Y3BoeS11c2I0LXYxLTAt
NDVjMGI3NDFlMGMwQGtlcm5lbC5vcmc/cGFydD0xCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlz
dApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
