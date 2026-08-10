Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E617C5AC82
	for <linux-phy@archiver.kernel.org>; Mon, 10 Aug 2026 12:04:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kg++qw4SY2VqxOYt1YKgrtxEW8gnBnmNVAMb2xQlCOI=; b=4h7DZn9drIcstS
	o/i3Y2Ju8K3nkd4KpZHr2CuIemgAFHKWmyKHuiE+XyIXg8ma2lAyMlkDBTZvDfqF1zN3C2fwFGt4Z
	y1gh3jSKKUMO+MYYXEkDyXA4QyJYnwojx3xkfdzturgplI2it64a0fqN86VTpdkITVS066EfBmlt0
	rNEoxg7J8WYBYPf/CWeHxhUvxawOGvGUl+qBdEXmHtNoydOr9pPGfX+Pe6t+ThTbRw55hjJfO2EpF
	JTzI7uTs10tYAdhI1h4XrK2HAIK3jCpd215uMRQh0A1qEp4aDQzxnrbdiIRmDxBQPPlzcrO7VJM4o
	c80ttKLgbMQnj3ZtZxBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtOju-0000000Bgmt-2OJO;
	Mon, 10 Aug 2026 12:04:22 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtOjs-0000000BgmW-29oi
	for linux-phy@lists.infradead.org;
	Mon, 10 Aug 2026 12:04:20 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id CBA2340833;
	Mon, 10 Aug 2026 12:04:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 401251F00A3A;
	Mon, 10 Aug 2026 12:04:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786363459;
	bh=qxsIEl1rwFqOGlrp/qdX3U5VONn9ZrHAnlXGv8Tfqro=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=QWrQSfXf76nvYGzoZLkQRTIPa3pvpW6wTEKAXd9dOMhu/zFOpbZfW6faq65yqubXd
	 fjZlyEhiwOZKgm8w+p/09XgyagFJtsftTTVJIjpfgTTsvEd44M/b0bmz9TZ4w2lotV
	 ht5fvKNqBjH3kUq92t5TWqsFJT4OZl9OT8oyI4M4OAbDRa7LTMrnx4+AaXFLYZkQRY
	 TAW+/sEv5rotflS3YoeSa0qhHb4cGfbXlf8Lc1uwXiSy90PRPesxvlEbCpFZ9gd5Ok
	 KTVcZiCRXnfgSt5u4vl9/Ed33LmQtpstHVhKhei9/W5rhuy7SeKJnQXRzt/kxECJKo
	 YMrACA9QMto7A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 09/10] ARM: dts: qcom: msm8974: add the USB3 controller
 and its PHYs
To: "Dmitry Baryshkov" <dmitry.baryshkov@oss.qualcomm.com>
Cc: olteanv@gmail.com, conor+dt@kernel.org, neil.armstrong@linaro.org, vkoul@kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260810-msm8974-usb3-v1-9-1a47e1185524@oss.qualcomm.com>
References: <20260810-msm8974-usb3-v1-0-1a47e1185524@oss.qualcomm.com>
 <20260810-msm8974-usb3-v1-9-1a47e1185524@oss.qualcomm.com>
Date: Mon, 10 Aug 2026 12:04:18 +0000
Message-Id: <20260810120419.401251F00A3A@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpOZXcgaXNzdWVzOgotIFtMb3ddIERU
IFNjaGVtYSB2aW9sYXRpb246IHRoZSBgY29tcGF0aWJsZWAgcHJvcGVydHkgZm9yIGB1c2IzX3Nz
X3BoeWAgdXNlcyBhbiBhcnJheSBvZiB0d28gc3RyaW5ncyBpbnN0ZWFkIG9mIGEgc2luZ2xlIHN0
cmluZy4KClByZS1leGlzdGluZyBpc3N1ZXM6Ci0gW0hpZ2hdIERhdGEgcmFjZSBvbiBwaHlzaWNh
bCBQSFkgY29udHJvbCByZWdpc3RlciBiZXR3ZWVuIHR3byB1bmNvb3JkaW5hdGVkIGRyaXZlcnMu
Ci0tCgotLS0gUGF0Y2ggWzldOiBbUEFUQ0ggMDkvMTBdIEFSTTogZHRzOiBxY29tOiBtc204OTc0
OiBhZGQgdGhlIFVTQjMgY29udHJvbGxlciBhbmQgaXRzIFBIWXMgLS0tCmNvbW1pdCA2ODhjYjJj
N2E4NGEwNjZlNTRjNTJiOGVhYjdmMzdlODEzMTFkOGZiCkF1dGhvcjogRG1pdHJ5IEJhcnlzaGtv
diA8ZG1pdHJ5LmJhcnlzaGtvdkBvc3MucXVhbGNvbW0uY29tPgoKQVJNOiBkdHM6IHFjb206IG1z
bTg5NzQ6IGFkZCB0aGUgVVNCMyBjb250cm9sbGVyIGFuZCBpdHMgUEhZcwoKVGhpcyBjb21taXQg
ZGVzY3JpYmVzIHRoZSBwcmltYXJ5IFVTQjMgY29udHJvbGxlciAoRFdDMykgYW5kIGl0cyBIaWdo
LVNwZWVkCmFuZCBTdXBlclNwZWVkIFBIWXMgZm9yIHRoZSBNU004OTc0IFNvQy4gSXQgaW5pdGlh
bGl6ZXMgYm90aCBQSFlzIHRvIGVuc3VyZQpwcm9wZXIgdXBzdHJlYW0gZW51bWVyYXRpb24uCgo+
IGRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9xY29tL3Fjb20tbXNtODk3NC5kdHNpIGIv
YXJjaC9hcm0vYm9vdC9kdHMvcWNvbS9xY29tLW1zbTg5NzQuZHRzaQo+IGluZGV4IDA2YzBhZjBh
YTMxNzYuLmJhYzNjODc3MmUwYTIgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvcWNv
bS9xY29tLW1zbTg5NzQuZHRzaQo+ICsrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3Fjb20vcWNvbS1t
c204OTc0LmR0c2kKClsgLi4uIF0KCj4gQEAgLTcxMyw2ICs3MTMsNTMgQEAgYmxzcDJfaTJjNjog
aTJjQGY5OTY4MDAwIHsKPiAgCQkJI3NpemUtY2VsbHMgPSA8MD47Cj4gIAkJfTsKPiAgCj4gKwkJ
dXNiMzogdXNiQGY5MjAwMDAwIHsKPiArCQkJY29tcGF0aWJsZSA9ICJxY29tLG1zbTg5NzQtZHdj
MyIsICJxY29tLHNucHMtZHdjMyI7Cj4gKwkJCXJlZyA9IDwweGY5MjAwMDAwIDB4ZmMwMDA+OwoK
W1NldmVyaXR5OiBIaWdoXQpUaGlzIGlzbid0IGEgYnVnIGludHJvZHVjZWQgYnkgdGhpcyBwYXRj
aCwgYnV0IGRvZXMgbWFwcGluZyB0aGlzIHJlZ2lvbgpleHBvc2UgYSBkYXRhIHJhY2Ugb24gdGhl
IHBoeXNpY2FsIFBIWSBjb250cm9sIHJlZ2lzdGVyPwoKVGhlIGR3YzMtcWNvbSB3cmFwcGVyIGRy
aXZlciBtYXBzIHRoaXMgcmVnaW9uLCBjYWxjdWxhdGluZyBxc2NyYXRjaF9iYXNlCmFzIDB4Zjky
Zjg4MDAsIGFuZCBwZXJmb3JtcyByZWFkLW1vZGlmeS13cml0ZSBvcGVyYXRpb25zIG9uIG9mZnNl
dCAweDMwCihwaHlzaWNhbCAweGY5MmY4ODMwKSBkdXJpbmcgcm9sZSBzd2l0Y2hlcyBvciBnYWRn
ZXQgc3RhcnQvc3RvcC4KClNpbXVsdGFuZW91c2x5LCB0aGUgbmV3bHkgYm91bmQgcGh5LXFjb20t
aXBxODA2eC11c2IgZHJpdmVyIG1hcHMgdGhlCmV4YWN0IHNhbWUgcGh5c2ljYWwgYWRkcmVzcyBi
eXBhc3NpbmcgZXhjbHVzaXZpdHkgaW4gdGhlIHVzYjNfc3NfcGh5Cm5vZGUgYmVsb3cuCgpbIC4u
LiBdCgo+ICsJCXVzYjNfc3NfcGh5OiBwaHlAZjkyZjg4MzAgewo+ICsJCQljb21wYXRpYmxlID0g
InFjb20sbXNtODk3NC11c2ItcGh5LXNzIiwKPiArCQkJCSAgICAgInFjb20saXBxODA2eC11c2It
cGh5LXNzIjsKCltTZXZlcml0eTogTG93XQpXaWxsIHRoaXMgY29tcGF0aWJsZSBhcnJheSBjYXVz
ZSBtYWtlIGR0YnNfY2hlY2sgdmFsaWRhdGlvbiB0byBmYWlsPwoKVGhlIERUIGJpbmRpbmcgc2No
ZW1hIHFjb20saXBxODA2eC11c2ItcGh5LXNzLnlhbWwgc3RyaWN0bHkgZGVmaW5lcyB0aGUKY29t
cGF0aWJsZSBwcm9wZXJ0eSBhcyBlaXRoZXIgInFjb20saXBxODA2eC11c2ItcGh5LXNzIiBvcgoi
cWNvbSxtc204OTc0LXVzYi1waHktc3MiLiAKClByb3ZpZGluZyBhIHN0cmluZyBhcnJheSBvZiBi
b3RoIHZpb2xhdGVzIHRoaXMgZGVmaW5pdGlvbi4KCj4gKwkJCXJlZyA9IDwweGY5MmY4ODMwIDB4
MzA+OwoKW1NldmVyaXR5OiBIaWdoXQpUaGlzIGlzIGEgcHJlLWV4aXN0aW5nIGlzc3VlLCBidXQg
cmV0dXJuaW5nIHRvIHRoZSBtYXBwaW5nIG92ZXJsYXAsIHRoZQpTdXBlclNwZWVkIFBIWSBkcml2
ZXIgZXhwbGljaXRseSBtYXBzIHRoZSBleGFjdCBzYW1lIHBoeXNpY2FsIGFkZHJlc3MKKDB4Zjky
Zjg4MzApIGhlcmUgYW5kIG1vZGlmaWVzIGl0cyBvZmZzZXQgMHgwMCB3aXRob3V0IGNvb3JkaW5h
dGlvbi4KClNpbmNlIGJvdGggZHJpdmVycyBwZXJmb3JtIHVuY29vcmRpbmF0ZWQgcmVhZC1tb2Rp
Znktd3JpdGUgb3BlcmF0aW9ucwooc29tZXRpbWVzIHdpdGggbGFyZ2UgZGVsYXlzIGxpa2UgbXNs
ZWVwKDMwKSBtaWQtUk1XIGluIHRoZSBQSFkgZHJpdmVyKSwKY2FuIGNvbmN1cnJlbnQgb3BlcmF0
aW9ucyBjbG9iYmVyIHRoZSBwaHlzaWNhbCByZWdpc3RlciBzdGF0ZT8KClRoaXMgY291bGQgbG9z
ZSBiaXRzIGxpa2UgU1NVU0JfQ1RSTF9TU19QSFlfRU4gb3IgTEFORTBfUFdSX1BSRVNFTlQsCmNv
cnJ1cHRpbmcgdGhlIHBvd2VyIHN0YXRlIGFuZCBicmVha2luZyBVU0IgZW51bWVyYXRpb24gZHVy
aW5nIGNvbmN1cnJlbnQKcGx1Zy91bnBsdWcgZXZlbnRzIGFuZCBydW50aW1lIFBNIHRyYW5zaXRp
b25zLgoKWyAuLi4gXQoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5k
ZXYvIy9wYXRjaHNldC8yMDI2MDgxMC1tc204OTc0LXVzYjMtdjEtMC0xYTQ3ZTExODU1MjRAb3Nz
LnF1YWxjb21tLmNvbT9wYXJ0PTkKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBo
eUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXBoeQo=
