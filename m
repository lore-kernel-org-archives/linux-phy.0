Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BBF1CD6E79
	for <linux-phy@archiver.kernel.org>; Mon,  8 Jun 2026 22:26:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hZlyloKDoMECvqydoHSLUO9BaDaHquiCcAZRN9itHqw=; b=EqGDNragjEDm51
	WZIYd43omlmzK82mSgfiqBEaDCfVlNgp3BQqZgjuELh1hJ6E3M4CTAklCV6sRKbX0iZbTgQqqvghG
	WaDj/EhAojGDwWAvutKyorzMF5JxfmUUa6bSdUr42PlfiqgZv+3MjjNOvReH4RwuJXfXgcuza0OpZ
	0Y0HBbE8r0saMLnWdEfDd7o1urxlS+jJB5UdHzwBTQbQ7KrxWB22T2Qv3kGbaRjQce7sEWtYSua/O
	fhjyQymU4rnPNJIKx6Apo6jft3CEBsk5csPiJc0xaTlFAJDwjv2lCef6vzqmksNXOGjbSbGNBy4Li
	K0haPzHyLmHsXYoIokfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWiQj-00000004UfW-2YG6;
	Mon, 08 Jun 2026 22:26:49 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWiQi-00000004UfM-05An
	for linux-phy@lists.infradead.org;
	Mon, 08 Jun 2026 22:26:48 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 771596001D;
	Mon,  8 Jun 2026 22:26:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F27191F00893;
	Mon,  8 Jun 2026 22:26:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780957607;
	bh=zRub1wv/ABviwHwh/VF4i4sadJ5Rw3rlmcPlrvYRM+Q=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Kj2XtE2vi9co4x4kkeiyzJ6xtJrczwuGM7xnsdD3BXnY2m/hCsUk+Mm+ysLTmzqmr
	 07Bemh3RVXUf6FbjV/rr1Th0Xi36kqLjhkO1S9CV8XAsM/Ujq1EXNcK2NoAJPqQJdS
	 6PxXlme+9fG0hOYVI45VDO6WU/gtf5uYFPEp7p6a5ZZwhW2CkK63wgBG5zwlP4Oxsm
	 92mLHbARvtTvQLmoeOzgd+aVaYOoCWObfL4TOheke2+2sIXa27GP/s25pVXeF2kd2i
	 NhgBPTTVJJggOY1gTQxP2ARiXZtZPGuq5Soe9ik/F+dRbUuh6g1f2i4UGuzso7+RiE
	 sZxuEY+rIu/+g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 phy-next 01/16] phy: lynx-28g: avoid returning NULL
 in of_xlate() function
To: "Vladimir Oltean" <vladimir.oltean@nxp.com>
Cc: vkoul@kernel.org, linux-phy@lists.infradead.org, olteanv@gmail.com, neil.armstrong@linaro.org
In-Reply-To: <20260608221710.1572971-2-vladimir.oltean@nxp.com>
References: <20260608221710.1572971-2-vladimir.oltean@nxp.com>
Date: Mon, 08 Jun 2026 22:26:46 +0000
Message-Id: <20260608222646.F27191F00893@smtp.kernel.org>
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
IFtIaWdoXSBBIGNvbmN1cnJlbnQgdW5iaW5kIG9mIHRoZSBQSFkgcHJvdmlkZXIgY2FuIGNhdXNl
IGEgVXNlLUFmdGVyLUZyZWUgd2hlbiBhY2Nlc3NpbmcgdGhlIGBwaHlgIHBvaW50ZXIgaW4gYG9m
X3BoeV9nZXQoKWAuCi0tCgpjb21taXQgMzNiNWFiNzkxNzk2NGVkMjAzYTZjNTM4ZTE1MjhiNTRm
NzZmYTFlNQpBdXRob3I6IFZsYWRpbWlyIE9sdGVhbiA8dmxhZGltaXIub2x0ZWFuQG54cC5jb20+
CgpwaHk6IGx5bngtMjhnOiBhdm9pZCByZXR1cm5pbmcgTlVMTCBpbiBvZl94bGF0ZSgpIGZ1bmN0
aW9uCgpTYXNoaWtvIHBvaW50cyBvdXQgdGhhdCBfb2ZfcGh5X2dldCgpIGRvZXMgbm90IHN1cHBv
cnQgYSBOVUxMIHJldHVybmVkCm91dHB1dCBmcm9tIHBoeV9wcm92aWRlci0+b2ZfeGxhdGUoKSwg
anVzdCBhIHZhbGlkIHBvaW50ZXIgb3IgYQpwb2ludGVyLWVuY29kZWQgZXJyb3IuCgo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL3BoeS9mcmVlc2NhbGUvcGh5LWZzbC1seW54LTI4Zy5jIGIvZHJpdmVy
cy9waHkvZnJlZXNjYWxlL3BoeS1mc2wtbHlueC0yOGcuYwo+IC0tLSBhL2RyaXZlcnMvcGh5L2Zy
ZWVzY2FsZS9waHktZnNsLWx5bngtMjhnLmMKPiArKysgYi9kcml2ZXJzL3BoeS9mcmVlc2NhbGUv
cGh5LWZzbC1seW54LTI4Zy5jCj4gQEAgLTE0MzUsNyArMTQzNSw3IEBAIHN0YXRpYyBzdHJ1Y3Qg
cGh5ICpseW54XzI4Z194bGF0ZShzdHJ1Y3QgZGV2aWNlICpkZXYsCj4gIAkJICAgIGlkeCA8IHBy
aXYtPmluZm8tPmZpcnN0X2xhbmUpKQo+ICAJCXJldHVybiBFUlJfUFRSKC1FSU5WQUwpOwo+ICAK
PiAtCXJldHVybiBwcml2LT5sYW5lW2lkeF0ucGh5Owo+ICsJcmV0dXJuIHByaXYtPmxhbmVbaWR4
XS5waHkgPzogRVJSX1BUUigtRU5PREVWKTsKPiAgfQoKW1NldmVyaXR5OiBIaWdoXQpUaGlzIGlz
IGEgcHJlLWV4aXN0aW5nIGlzc3VlLCBidXQgbG9va2luZyBhdCBob3cgdGhlIHhsYXRlIGNhbGxi
YWNrcyBhcmUKY29uc3VtZWQgaW4gdGhlIFBIWSBjb3JlLCBjb3VsZCB0aGVyZSBiZSBhIHVzZS1h
ZnRlci1mcmVlIHJhY2UgY29uZGl0aW9uCmR1cmluZyBkZXZpY2UgdW5iaW5kPwoKSW4gZHJpdmVy
cy9waHkvcGh5LWNvcmUuYzpvZl9waHlfZ2V0KCksIHRoZSBwcm92aWRlcidzIHhsYXRlIGNhbGxi
YWNrIGlzIAppbnZva2VkIHZpYSBfb2ZfcGh5X2dldCgpOgoKCXBoeSA9IF9vZl9waHlfZ2V0KG5w
LCBpbmRleCk7CglpZiAoSVNfRVJSKHBoeSkpCgkJcmV0dXJuIHBoeTsKCglpZiAoIXRyeV9tb2R1
bGVfZ2V0KHBoeS0+b3BzLT5vd25lcikpCgkJcmV0dXJuIEVSUl9QVFIoLUVQUk9CRV9ERUZFUik7
CgoJZ2V0X2RldmljZSgmcGh5LT5kZXYpOwoKU2luY2UgX29mX3BoeV9nZXQoKSBkcm9wcyB0aGUg
cGh5X3Byb3ZpZGVyX211dGV4IGJlZm9yZSByZXR1cm5pbmcgdGhlIHJhdywKdW5yZWZlcmVuY2Vk
IHBoeSBwb2ludGVyLCB3aGF0IHByZXZlbnRzIGEgY29uY3VycmVudCB1bmJpbmQgb2YgdGhlIFBI
WQpwcm92aWRlciBmcm9tIGZyZWVpbmcgdGhlIHBoeSBtZW1vcnkgYmVmb3JlIHRoZSBwb2ludGVy
IGlzIGRlcmVmZXJlbmNlZCB2aWEKcGh5LT5vcHMtPm93bmVyPyAKCklmIHRoZSBwcm92aWRlciBp
cyB1bnJlZ2lzdGVyZWQgKGUuZy4sIHZpYSBzeXNmcykgYW5kIHBoeV9kZXN0cm95KCkgZHJvcHMK
dGhlIFBIWSBkZXZpY2UncyByZWZlcmVuY2UgY291bnQgdG8gemVybyBwcmVjaXNlbHkgYWZ0ZXIg
X29mX3BoeV9nZXQoKQpyZXR1cm5zLCB3b3VsZCB0aGlzIHJlc3VsdCBpbiBhY2Nlc3NpbmcgZnJl
ZWQgbWVtb3J5PwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYv
Iy9wYXRjaHNldC8yMDI2MDYwODIyMTcxMC4xNTcyOTcxLTEtdmxhZGltaXIub2x0ZWFuQG54cC5j
b20/cGFydD0xCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1waHkK
