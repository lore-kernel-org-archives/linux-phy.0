Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 733D1C5AD4E
	for <linux-phy@archiver.kernel.org>; Sun,  9 Aug 2026 13:30:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LsN+Yy+7lZKWoRWN3M1d/tdC4uLofq2IwkBYZxegUH8=; b=ZEXOuuI3x3Ew9N
	1jDker7i4YDDndEx1UFsDCbvYFStE2aZPlTJc2cYkC5qMegZKTVyx2XFsLs4sw6z8KzeqExfnZ0Lf
	SMOA25wzYPilz9wNbFDZOmJbUlqNQD1N8dcObIV9IhHKMKPMzUZF81V/YIUTj4jQUpqzvJLA9KAap
	WcOYnkVh+TjKw+dwuwebBmmNwJ2Ga0iVZ0m7FMz3N8ieixQoZfuZug/yz26jlPzFoVdMtEscS6ghP
	wqQ2LLYmxL2uM+RoqW+n0prtu1h5faY25MquRWhRMqDWC5NoKEi8DMxKH2QVhRqWPcMcSf862nsD0
	6eE42GK/tTk3YApFJ5lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wt3c8-0000000AMDu-0cSD;
	Sun, 09 Aug 2026 13:30:56 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wt3c5-0000000AMDo-3x20
	for linux-phy@lists.infradead.org;
	Sun, 09 Aug 2026 13:30:54 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 0F9CE600AB;
	Sun,  9 Aug 2026 13:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EEA231F000E9;
	Sun,  9 Aug 2026 13:30:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786282252;
	bh=YOIZYT1JUWE6dmJnBVuVCrZihRjIkZn2PProRU6Gvwg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=c47ZoYqwx5Rfc89PGY+LxIUiWlyv6XrR5lwtwp4l713cFGVFLSzzf0eHssMIm1rSn
	 bLIgGn/IDqU5xTwSS6YwEyMShO97uhunVr07nKhZNpocuBf2Mczw7vpl74w7tyvYE9
	 MsWKaRpNmqjyLW+QWRVaSbAB309zaaFkg0B8ylOs07gv3HpsukP3jBLe0W029cfmu/
	 OkxYuw7Ob8LLGSgzWkvsXRyBo8SeAF4anTrpToBATuNrZGHd7Hcf1n8T3R8u4hB/0s
	 atlSUvzikW+7SWbg4APV1l9fY20OH0mFbDIsoZu3hBSvwAWnITMh236bxwEXMDYm5C
	 cEi/XMcfS40ZA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 15/17] riscv: dts: spacemit: k3-pico-itx: enable the
 DisplayPort output
To: "Cody Kang" <codykang.hk@gmail.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, vkoul@kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, dri-devel@lists.freedesktop.org, olteanv@gmail.com
In-Reply-To: <20260809-k3-display-v2-15-327d7910bf71@gmail.com>
References: <20260809-k3-display-v2-0-327d7910bf71@gmail.com>
 <20260809-k3-display-v2-15-327d7910bf71@gmail.com>
Date: Sun, 09 Aug 2026 13:30:51 +0000
Message-Id: <20260809133051.EEA231F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gTWlzc2luZyBgZHAtY29u
bmVjdG9yYCBub2RlIGFuZCBgcmVtb3RlLWVuZHBvaW50YCBsaW5rIGZvciB0aGUgZXh0ZXJuYWwg
RGlzcGxheVBvcnQgb3V0cHV0LCBsZWF2aW5nIHRoZSBgZHAxX291dGAgZ3JhcGggZW5kcG9pbnQg
ZGlzY29ubmVjdGVkLgotLQoKLS0tIFBhdGNoIFsxNV06IFtQQVRDSCB2MiAxNS8xN10gcmlzY3Y6
IGR0czogc3BhY2VtaXQ6IGszLXBpY28taXR4OiBlbmFibGUgdGhlIERpc3BsYXlQb3J0IG91dHB1
dCAtLS0KY29tbWl0IDUyNGVkYTExOWJkYmY1ZmEyMzgyMjI2ZTRmODliMTk2YWFkNDMyZDUKQXV0
aG9yOiBDb2R5IEthbmcgPGNvZHlrYW5nLmhrQGdtYWlsLmNvbT4KCnJpc2N2OiBkdHM6IHNwYWNl
bWl0OiBrMy1waWNvLWl0eDogZW5hYmxlIHRoZSBEaXNwbGF5UG9ydCBvdXRwdXQKClRoaXMgY29t
bWl0IGVuYWJsZXMgdGhlIHNlY29uZCBEUFUgYW5kIHRoZSBhc3NvY2lhdGVkIERpc3BsYXlQb3J0
IGNvbnRyb2xsZXIKdG8gcHJvdmlkZSBvdXRwdXQgdG8gdGhlIGV4dGVybmFsIERpc3BsYXlQb3J0
IGNvbm5lY3RvciBvbiB0aGUgUGljby1JVFggYm9hcmQuCgo+IGRpZmYgLS1naXQgYS9hcmNoL3Jp
c2N2L2Jvb3QvZHRzL3NwYWNlbWl0L2szLXBpY28taXR4LmR0cyBiL2FyY2gvcmlzY3YvYm9vdC9k
dHMvc3BhY2VtaXQvazMtcGljby1pdHguZHRzCj4gaW5kZXggYjg5YzE1MjFlNjY0OS4uNmMzMTQ2
MDk5MGE3NSAxMDA2NDQKPiAtLS0gYS9hcmNoL3Jpc2N2L2Jvb3QvZHRzL3NwYWNlbWl0L2szLXBp
Y28taXR4LmR0cwo+ICsrKyBiL2FyY2gvcmlzY3YvYm9vdC9kdHMvc3BhY2VtaXQvazMtcGljby1p
dHguZHRzCgpbIC4uLiBdCgo+IEBAIC0yMjEsMyArMjIyLDEzIEBAIGh1YkAxIHsKPiAgJnVzYjJf
cGh5IHsKPiAgCXN0YXR1cyA9ICJva2F5IjsKPiAgfTsKPiArCj4gKyZkcHUxX2NydGMwIHsKPiAr
CXN0YXR1cyA9ICJva2F5IjsKPiArfTsKPiArCj4gKyZkcDEgewo+ICsJcGluY3RybC1uYW1lcyA9
ICJkZWZhdWx0IjsKPiArCXBpbmN0cmwtMCA9IDwmZHAxXzFfY2ZnPjsKPiArCXN0YXR1cyA9ICJv
a2F5IjsKPiArfTsKCltTZXZlcml0eTogTG93XQpEb2VzIHRoaXMgZGV2aWNlIHRyZWUgbmVlZCBh
IGRwLWNvbm5lY3RvciBub2RlIGFuZCBhIHJlbW90ZS1lbmRwb2ludCBsaW5rIApmb3IgdGhlIGV4
dGVybmFsIERpc3BsYXlQb3J0IG91dHB1dD8KClNpbmNlIGRwMSBpcyBlbmFibGVkIGhlcmUgd2l0
aG91dCBkZXNjcmliaW5nIHRoZSBwaHlzaWNhbCBkb3duc3RyZWFtIGNvbm5lY3RvciAKb3IgbGlu
a2luZyBpdCB0byB0aGUgb3V0cHV0IHBvcnQsIGl0IGFwcGVhcnMgdG8gbGVhdmUgdGhlIGRwMV9v
dXQgZ3JhcGggCmVuZHBvaW50IGRpc2Nvbm5lY3RlZC4KCkV2ZW4gdGhvdWdoIHRoZSBkaXNwbGF5
IGRyaXZlciBtaWdodCBoYW5kbGUgdGhpcyBtaXNzaW5nIHRvcG9sb2d5IGdyYWNlZnVsbHkgCmJ5
IGZhbGxpbmcgYmFjayB0byBhbiBpbnRlcm5hbCBjb25uZWN0b3IgaW5pdGlhbGl6YXRpb24sIGNv
dWxkIHRoaXMgb21pc3Npb24gCnRyaWdnZXIgZHRic19jaGVjayBncmFwaCB3YXJuaW5ncyBmb3Ig
dGhlIGRhbmdsaW5nIGVuZHBvaW50PwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8v
c2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDgwOS1rMy1kaXNwbGF5LXYyLTAtMzI3ZDc5MTBi
ZjcxQGdtYWlsLmNvbT9wYXJ0PTE1CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1w
aHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1waHkK
