Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67112C61DBD
	for <linux-phy@archiver.kernel.org>; Fri, 28 Aug 2026 13:59:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bMPRFFPUcsus3GP/vg5yy7q0Wf9fYCifi+M9lK4Zpog=; b=zhJ27tDjz/pSMP
	jwn7RrsXkA8v+OyjNACS+YfKL9eaaKYGRYSCbFj/ql0+6yHSPhgJGhifE/akcLblYiRKTVvm2JWbC
	jL9S/sRGxWDXpUaksOYvLKLkPH7Q9pDJuqfkDZuC6kDv9OHdXPvuXRYI9RWWjoAirGP89gnl3IF+Z
	qakwvzE8pZr32kX5WDPs8y8cuTP5VwNybWUs2W5awtane4yw4SVhBe0KNdDgpXrfJj4gJwzpzch76
	zFZJgvUOvXMoSA+m7vMJKFCeUxyFlT2Dy8sGLb3CLEhoS3daXHnNzAbURIjYTdkxY4jiqDD2ywJnn
	Tbs9DA3v57JFFb+Aw5Rg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzx7T-00000005veL-0XFn;
	Fri, 28 Aug 2026 13:59:47 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzx7S-00000005veC-1EXN
	for linux-phy@lists.infradead.org;
	Fri, 28 Aug 2026 13:59:46 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id B751943B76;
	Fri, 28 Aug 2026 13:59:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F40B91F000E9;
	Fri, 28 Aug 2026 13:59:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787925585;
	bh=136ucrOGxKA9SkLTfq5BiP5n7Q3HPT68H0U7l9wKJho=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=hArhjcY9XbA5Em3QTc0pG6pAClA0SUc6PiZUg86xXMwiC7+DPzSv7D60iI+YnqNgM
	 Ht/3FATal/4FFo9P2wlJY5k8DW8E+olsJlH5AIxUH2HdteLMgzJKoqkJrCtqSq2lyE
	 k3VWVEq6XqQp+nYEXnwrLloZHrxPxR00JGlbkvlm9dbqaEkn9VmsZfM2C5ftCy4AsP
	 bL+93aGCnQ8FFJMl/0gUL2TCg65GE2pokyvjceuN6RWuPOeCK+4HjE/dHImRSxAAU9
	 HQ4g+QxuPFATNJt+XiHdkQuqCmgKfPq9VIOEijIRc9p1DTRstUnRT+X5kzaNMgGS0H
	 R8e9cQ9hH9ezw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 08/15] soc: starfive: Add jh7110-hdmi-subsystem
 driver
To: "Michal Wilczynski" <m.wilczynski@samsung.com>
Cc: vkoul@kernel.org, dri-devel@lists.freedesktop.org, mfd@lists.linux.dev, neil.armstrong@linaro.org, robh@kernel.org, conor+dt@kernel.org, linux-clk@vger.kernel.org, lee@kernel.org, olteanv@gmail.com, devicetree@vger.kernel.org, linux-phy@lists.infradead.org
In-Reply-To: <20260828-jh7110-clean-send-v2-8-331680c8b9d1@samsung.com>
References: <20260828-jh7110-clean-send-v2-0-331680c8b9d1@samsung.com>
 <CGME20260828134828eucas1p1b4061de1538ef0d3322dc32f3db6140e@eucas1p1.samsung.com>
 <20260828-jh7110-clean-send-v2-8-331680c8b9d1@samsung.com>
Date: Fri, 28 Aug 2026 13:59:44 +0000
Message-Id: <20260828135944.F40B91F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gTWlzc2luZyBgc2VsZWN0
IFJFR01BUF9NTUlPYCBpbiBLY29uZmlnLCBsZWFkaW5nIHRvIHBvdGVudGlhbCBidWlsZC9saW5r
IGVycm9ycy4KLS0KCmNvbW1pdCAzOTFkMmNhMjk5MDE5YzU3ZjhjYTNmMGQ0ZWU3ZTgwY2FjMTlj
MWViCkF1dGhvcjogTWljaGFsIFdpbGN6eW5za2kgPG0ud2lsY3p5bnNraUBzYW1zdW5nLmNvbT4K
U3ViamVjdDogc29jOiBzdGFyZml2ZTogQWRkIGpoNzExMC1oZG1pLXN1YnN5c3RlbSBkcml2ZXIK
ClRoaXMgY29tbWl0IGFkZHMgYSBwYXJlbnQgZHJpdmVyIGZvciB0aGUgbW9ub2xpdGhpYyBTdGFy
Rml2ZSBKSDcxMTAgSERNSSBJUApibG9jay4gSXQgbWFwcyB0aGUgc2hhcmVkIHJlZ2lzdGVyIHNw
YWNlIGFuZCBjcmVhdGVzIHNlcGFyYXRlIGxvZ2ljYWwgY2hpbGQKZGV2aWNlcyBmb3IgdGhlIEhE
TUkgUEhZIGFuZCBjb250cm9sbGVyIHRvIGJyZWFrIGEgY2lyY3VsYXIgcHJvYmluZwpkZXBlbmRl
bmN5LgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zb2Mvc3RhcmZpdmUvS2NvbmZpZyBiL2RyaXZl
cnMvc29jL3N0YXJmaXZlL0tjb25maWcKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAw
MDAwMDAwMDAwMDAuLjc1OTJkODdkZWEzN2EKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvZHJpdmVy
cy9zb2Mvc3RhcmZpdmUvS2NvbmZpZwo+IEBAIC0wLDAgKzEsMjcgQEAKPiArIyBTUERYLUxpY2Vu
c2UtSWRlbnRpZmllcjogR1BMLTIuMC1vbmx5Cj4gKyMKPiArIyBTdGFyZml2ZSBTb0MgZHJpdmVy
cwo+ICsjCj4gKwo+ICtpZiBBUkNIX1NUQVJGSVZFIHx8IENPTVBJTEVfVEVTVAo+ICttZW51ICJT
dGFyZml2ZSBTb0MgZHJpdmVycyIKPiArCj4gK2NvbmZpZyBTT0NfU1RBUkZJVkVfSkg3MTEwX0hE
TUlfU1VCU1lTVEVNCj4gKwl0cmlzdGF0ZSAiU3RhckZpdmUgSkg3MTEwIEhETUkgc3Vic3lzdGVt
IGRyaXZlciIKPiArCWRlcGVuZHMgb24gT0YKCltTZXZlcml0eTogTG93XQpEb2VzIHRoaXMgS2Nv
bmZpZyBlbnRyeSBuZWVkIHRvIHNlbGVjdCBSRUdNQVBfTU1JTz8KCklmIHRoZSBrZXJuZWwgaXMg
Y29uZmlndXJlZCB3aXRoIFNPQ19TVEFSRklWRV9KSDcxMTBfSERNSV9TVUJTWVNURU09eSAoZm9y
CmV4YW1wbGUsIGR1cmluZyBhIHJhbmRvbSBDT01QSUxFX1RFU1QgYnVpbGQpIGJ1dCB3aXRob3V0
IGFueSBvdGhlciBkcml2ZXIKdGhhdCBlbmFibGVzIFJFR01BUF9NTUlPLCB0aGUgYnVpbGQgd2ls
bCBsaWtlbHkgZmFpbCB3aXRoIGEgbGlua2VyIGVycm9yLgoKWyAuLi4gXQoKPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9zb2Mvc3RhcmZpdmUvamg3MTEwLWhkbWktc3Vic3lzdGVtLmMgYi9kcml2ZXJz
L3NvYy9zdGFyZml2ZS9qaDcxMTAtaGRtaS1zdWJzeXN0ZW0uYwo+IG5ldyBmaWxlIG1vZGUgMTAw
NjQ0Cj4gaW5kZXggMDAwMDAwMDAwMDAwMC4uZDg5M2MxYzI5Zjk4Ygo+IC0tLSAvZGV2L251bGwK
PiArKysgYi9kcml2ZXJzL3NvYy9zdGFyZml2ZS9qaDcxMTAtaGRtaS1zdWJzeXN0ZW0uYwoKWyAu
Li4gXQoKPiArCXJlZ3MgPSBkZXZtX3BsYXRmb3JtX2lvcmVtYXBfcmVzb3VyY2UocGRldiwgMCk7
Cj4gKwlpZiAoSVNfRVJSKHJlZ3MpKQo+ICsJCXJldHVybiBQVFJfRVJSKHJlZ3MpOwo+ICsKPiAr
CXJlZ21hcCA9IGRldm1fcmVnbWFwX2luaXRfbW1pbyhkZXYsIHJlZ3MsCj4gKwkJCQkgICAgICAg
JnN0YXJmaXZlX2hkbWlfcmVnbWFwX2NvbmZpZyk7CgpbU2V2ZXJpdHk6IExvd10KQ291bGQgdGhl
IG1pc3NpbmcgUkVHTUFQX01NSU8gS2NvbmZpZyBzZWxlY3Rpb24gY2F1c2UgYW4gdW5kZWZpbmVk
CnJlZmVyZW5jZSB0byBfX2Rldm1fcmVnbWFwX2luaXRfbW1pb19jbGsoKSBoZXJlIGR1cmluZyBs
aW5rIHRpbWU/CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8j
L3BhdGNoc2V0LzIwMjYwODI4LWpoNzExMC1jbGVhbi1zZW5kLXYyLTAtMzMxNjgwYzhiOWQxQHNh
bXN1bmcuY29tP3BhcnQ9OAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
