Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6CA3C624DE
	for <linux-phy@archiver.kernel.org>; Fri,  4 Sep 2026 08:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vUWy7a7YXxzxtZBbuLlgf4qm/ADxX9R5l406jk7WgQo=; b=H2sjaA9rNxFYQB
	GNu2hvS64zUAMfwKYa0kHq05tPmwkQO3o/4QyzEYHWK3ZZgz+d8cLkWNHN635fbUJHU9A47j6kSYR
	NIUAQRGebGSojR/7PseXIRKanCmH9KSwa3/+woW5rTSUxipwJCXfl87pqvRXTL9I71Vtiq4h07fVS
	jHPHfiQN3w75H3URGwNLecY6G/xT8moja5tpDjLLfmLWU9P3do5LGAuClu/vSe6ddsRkDhH14OP3Y
	GBFsMTwh+tnmh8DX4u5voPImQqMHuVn/a9sKvcY34fre/e8W2jgWv8qAgP8ChenGCc7GmA+1WbnPe
	nuBUuj7wKdDXdDpUpk9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2PdM-00000001Sbu-2gDp;
	Fri, 04 Sep 2026 08:50:52 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2PdL-00000001SbT-33hg
	for linux-phy@lists.infradead.org;
	Fri, 04 Sep 2026 08:50:51 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 3070460A6D;
	Fri,  4 Sep 2026 08:50:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 885081F00A3D;
	Fri,  4 Sep 2026 08:50:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788511850;
	bh=b+iJk1cmsmtLOy+9NloWVZ7hqklJrNc55EvYIeBsVtg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=SoT+28as3zf2dwQGC953S+IkKadA0TSk/bAntQA1AxBaPCokEz7oXiKEfuTvDkDdt
	 Y3Vfcg5Nk6MORIloxyE5D8K0IO0ENry7CvdLjzuREFScM3sDiBeB7m02QhaCga759F
	 Zgz9qmf0z7NJXpzZivfDBiNSUB4kUmRHmv62W2bA0YKVR5BR7awQe2EfBZ3IO9QzuB
	 PWxDZT+Cis33IYnZAJzFMPtgAWWkrfy78X3OxIc6fswcerhwIiqPUHXQx54WDSu/nM
	 in/NtkWUrZVMqzOkofFbSX7EbfgcDPY27gf15JKeTT4vZgaiDiehnvzQSwZ8T4jFnq
	 wkv+ETqNShEjg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 1/4] phy: core: Add common helper to add phy phandle
 device link
To: "Inochi Amaoto" <inochiama@gmail.com>
Cc: olteanv@gmail.com, vkoul@kernel.org, linux-phy@lists.infradead.org, neil.armstrong@linaro.org
In-Reply-To: <20260904083709.425893-2-inochiama@gmail.com>
References: <20260904083709.425893-1-inochiama@gmail.com>
 <20260904083709.425893-2-inochiama@gmail.com>
Date: Fri, 04 Sep 2026 08:50:50 +0000
Message-Id: <20260904085050.885081F00A3D@smtp.kernel.org>
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
IFtIaWdoXSBUaGlzIHByb2JsZW0gd2Fzbid0IGludHJvZHVjZWQgYnkgdGhpcyBwYXRjaCwgYnV0
IHRoZXJlIGlzIGEgVXNlLUFmdGVyLUZyZWUgKFVBRikgdnVsbmVyYWJpbGl0eSBpbiB0aGUgUEhZ
IHJldHJpZXZhbCBwYXRocy4gRnVuY3Rpb25zIGxpa2UgYF9vZl9waHlfZ2V0KClgIGFuZCBgcGh5
X2ZpbmQoKWAgbG9jYXRlIGEgYHN0cnVjdCBwaHlgIGFuZCByZXR1cm4gYSBwb2ludGVyIHRvIGl0
IHdpdGhvdXQgaG9sZGluZyBhbnkgcmVmZXJlbmNlIGNvdW50cyBvciBsb2Nrcy4gVGhlIGNhbGxl
ciB0aGVuIGRpcmVjdGx5IGRlcmVmZXJlbmNlcyB0aGlzIHBvaW50ZXIgKGUuZy4sIGBwaHktPm9w
cy0+b3duZXJgIGR1cmluZyBgdHJ5X21vZHVsZV9nZXQoKWApLiBJZiB0aGUgUEhZIHByb3ZpZGVy
IG1vZHVsZSBpcyBjb25jdXJyZW50bHkgdW5sb2FkZWQgYmV0d2VlbiB0aGUgbG9va3VwIGFuZCB0
aGUgZGVyZWZlcmVuY2UsIGBwaHlfZGVzdHJveSgpYCBpcyBpbnZva2VkLCBmcmVlaW5nIHRoZSBQ
SFkgYW5kIGxlYWRpbmcgdG8gYSBVc2UtQWZ0ZXItRnJlZS4KLS0KCmNvbW1pdCBiNmY5MmM0Mjk3
M2YyZTcxMDY3ZWI5ODJlZDIyYWUzOGM5MDlkNmVhCkF1dGhvcjogSW5vY2hpIEFtYW90byA8aW5v
Y2hpYW1hQGdtYWlsLmNvbT4KCnBoeTogY29yZTogQWRkIGNvbW1vbiBoZWxwZXIgdG8gYWRkIHBo
eSBwaGFuZGxlIGRldmljZSBsaW5rCgpJdCBpcyB2ZXJ5IGNvbW1vbiBmb3IgYWRkaW5nIGEgZGV2
aWNlIGxpbmsgZm9yIHBoeSBwaGFuZGxlCmZvciBkZXZpY2UgbWFuYWdlZCBwaHkgaGVscGVyIGZ1
bmN0aW9ucy4gU28gYWRkIGEgY29tbW9uCmhlbHBlciBmb3IgZnV0dXJlIHJldXNlLgoKPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9waHkvcGh5LWNvcmUuYyBiL2RyaXZlcnMvcGh5L3BoeS1jb3JlLmMK
PiBpbmRleCAyMWFhZjJmNzZlNTNlLi5lYTc5OTEzZmJiODdmIDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvcGh5L3BoeS1jb3JlLmMKPiArKysgYi9kcml2ZXJzL3BoeS9waHktY29yZS5jCgpbIC4uLiBd
Cgo+IEBAIC04MDgsMTAgKzgyNyw3IEBAIHN0cnVjdCBwaHkgKnBoeV9nZXQoc3RydWN0IGRldmlj
ZSAqZGV2LCBjb25zdCBjaGFyICpzdHJpbmcpCj4gIAo+ICAJZ2V0X2RldmljZSgmcGh5LT5kZXYp
Owo+ICAKCltTZXZlcml0eTogSGlnaF0KVGhpcyBpc24ndCBhIGJ1ZyBpbnRyb2R1Y2VkIGJ5IHRo
aXMgcGF0Y2gsIGJ1dCBpcyBpdCBwb3NzaWJsZSBmb3IgdGhlIHBoeQpwb2ludGVyIHRvIGJlIGZy
ZWVkIGJlZm9yZSB3ZSBhY2Nlc3MgaXQgaW4gdGhlc2UgcGF0aHM/CgpGdW5jdGlvbnMgbGlrZSBf
b2ZfcGh5X2dldCgpIGFuZCBwaHlfZmluZCgpIGxvY2F0ZSBhIHN0cnVjdCBwaHkgYW5kIHJldHVy
biBhCnBvaW50ZXIgdG8gaXQgd2l0aG91dCBob2xkaW5nIGFueSByZWZlcmVuY2UgY291bnRzIG9y
IGxvY2tzLgoKVGhlIGNhbGxlciB0aGVuIGRpcmVjdGx5IGRlcmVmZXJlbmNlcyB0aGlzIHBvaW50
ZXIuIEZvciBleGFtcGxlLCByaWdodCBiZWZvcmUKdGhpcyBkaWZmIGNvbnRleHQgaW4gcGh5X2dl
dCgpOgoKICAgIGlmICghdHJ5X21vZHVsZV9nZXQocGh5LT5vcHMtPm93bmVyKSkKICAgICAgICBy
ZXR1cm4gRVJSX1BUUigtRVBST0JFX0RFRkVSKTsKCklmIHRoZSBQSFkgcHJvdmlkZXIgbW9kdWxl
IGlzIGNvbmN1cnJlbnRseSB1bmxvYWRlZCBiZXR3ZWVuIHRoZSBsb29rdXAgYW5kIHRoZQpkZXJl
ZmVyZW5jZSwgcGh5X2Rlc3Ryb3koKSBjb3VsZCBiZSBpbnZva2VkLCBmcmVlaW5nIHRoZSBQSFkg
YW5kIGxlYWRpbmcgdG8gYQp1c2UtYWZ0ZXItZnJlZS4KClRoaXMgc2FtZSBwYXR0ZXJuIGFwcGVh
cnMgaW4gb2ZfcGh5X2dldCgpIGFuZCBkZXZtX29mX3BoeV9nZXRfYnlfaW5kZXgoKSB3aGVuCmFj
Y2Vzc2luZyBwaHktPm9wcy0+b3duZXIuIENvdWxkIGEgcmVmZXJlbmNlIGJlIHRha2VuIG9uIHRo
ZSBkZXZpY2Ugb3IgbW9kdWxlCndoaWxlIHN0aWxsIGhvbGRpbmcgdGhlIGxvb2t1cCBsb2Nrcz8K
Cj4gLQlsaW5rID0gZGV2aWNlX2xpbmtfYWRkKGRldiwgJnBoeS0+ZGV2LCBETF9GTEFHX1NUQVRF
TEVTUyk7Cj4gLQlpZiAoIWxpbmspCj4gLQkJZGV2X2RiZyhkZXYsICJmYWlsZWQgdG8gY3JlYXRl
IGRldmljZSBsaW5rIHRvICVzXG4iLAo+IC0JCQlkZXZfbmFtZShwaHktPmRldi5wYXJlbnQpKTsK
PiArCXBoeV9hZGRfZGV2aWNlX2xpbmsoZGV2LCBwaHkpOwo+ICAKPiAgCXJldHVybiBwaHk7Cj4g
IH0KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hz
ZXQvMjAyNjA5MDQwODM3MDkuNDI1ODkzLTEtaW5vY2hpYW1hQGdtYWlsLmNvbT9wYXJ0PTEKCi0t
IApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
