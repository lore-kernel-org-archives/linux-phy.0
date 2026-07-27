Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE893C53209
	for <linux-phy@archiver.kernel.org>; Mon, 27 Jul 2026 18:41:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9hQgnAAm24vpjwyDFbRD8GWTTr+RzufIPVLZkjpzhoM=; b=Xibn20/o+k3Glp
	uXizqyiwX9rO6Vud+WLVhmrLhveTjG8ooonOVw1ea+UzqHEn9dmRombEJJDWsteBt7QY9Z6EuTkky
	N79OeRcHIc1Z5a82N+oTWa8cBLP2ZN+EcsNiV56zlE6RS7NsRndNzQBYiN7+V24sYdqA8dcxx/TQD
	p8+Sdov3PAhN/sYm2N+89Hq9j5zVh1NkVLeElx0b+CjtKXwVVC5DNEyCJTw9xt20KDiDGINCrKgVd
	//rC+EFG5WDXAteQGXX+TZ5YUya38i+g0zKyMt6BCcjJm9fXz8COaPSj1UVssPEYSrXqmD4uqRUiM
	Znyck+NcB8eMKDs2mD3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woQH0-00000003gj8-2Nwi;
	Mon, 27 Jul 2026 18:41:58 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woQGz-00000003gj2-31qp
	for linux-phy@lists.infradead.org;
	Mon, 27 Jul 2026 18:41:57 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id D5241418BB;
	Mon, 27 Jul 2026 18:41:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2F0A61F000E9;
	Mon, 27 Jul 2026 18:41:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785177715;
	bh=TSVobNmrXXu+kac7ZH9ObOxx67WPbQQXF2FB/eSluCQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=bxsBMgahd0Kr4buxlH0w4fb3Tetr+pDy2p9gwZgD/3pEIvy6xss5qY1XFPCxupI0O
	 nWOuYiUyTXzz00DZCGJSMSNmLU1p06Lt8DGPWKcsqy9ImxHtLm6odTUwHxUlS62jr3
	 qt5JHkMLHyLn74XWh0o1ly5vsdQkKckJFElnChhfcr8bk6DzyLeHIhI7qHKeKIrVk8
	 8uAMi+rRMSbIJyN9JLJmicbvuTf40euklLQ5Ta1Bp81ZNhoRLAfOriY6A1qSf18Szg
	 lzrYTXz/f95GN+Lvro+8atnof/f4s8Tfh5vA5jOA6hOizwKFpVzpvkIvMaaPw7Ye9e
	 shFKn4xpjeybg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v8 04/12] mfd: zx297520v3: Add a clock and reset MFD
 driver
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: vkoul@kernel.org, devicetree@vger.kernel.org, mfd@lists.linux.dev, olteanv@gmail.com, conor+dt@kernel.org, lee@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, robh@kernel.org
In-Reply-To: <20260727-zx29clk-v8-4-7a107b00f1dd@gmail.com>
References: <20260727-zx29clk-v8-0-7a107b00f1dd@gmail.com>
 <20260727-zx29clk-v8-4-7a107b00f1dd@gmail.com>
Date: Mon, 27 Jul 2026 18:41:54 +0000
Message-Id: <20260727184155.2F0A61F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gUGxhdGZvcm0gZGF0
YSBmb3IgY2hpbGQgZGV2aWNlcyAoYG1mZF9jZWxsYCBhcnJheXMpIGlzIGltcHJvcGVybHkgcGFz
c2VkIGFzIGNvbXBsZXggcG9pbnRlcnMgdmlhIHRoZSBgLmRhdGFgIGZpZWxkIG9mIHRoZSBgb2Zf
ZGV2aWNlX2lkYCBtYXRjaCB0YWJsZS4KLS0KCi0tLSBQYXRjaCBbNF06IFtQQVRDSCB2OCAwNC8x
Ml0gbWZkOiB6eDI5NzUyMHYzOiBBZGQgYSBjbG9jayBhbmQgcmVzZXQgTUZEIGRyaXZlciAtLS0K
Y29tbWl0IDk5N2IzZWU0NGFiYzZlYzIzOWMzNjMyN2QxYzNmZDkwMzkzNTQyZGQKQXV0aG9yOiBT
dGVmYW4gRMO2c2luZ2VyIDxzdGVmYW5kb2VzaW5nZXJAZ21haWwuY29tPgoKbWZkOiB6eDI5NzUy
MHYzOiBBZGQgYSBjbG9jayBhbmQgcmVzZXQgTUZEIGRyaXZlcgoKVGhpcyBkcml2ZXIgcmVnaXN0
ZXJzIGNoaWxkIGRldmljZXMgZm9yIHRoZSB6eDI5NzUyMHYzIGNsb2NrIGFuZCByZXNldApjb250
cm9sbGVycy4gVGhlIGNsay16eDI5NzUyMHYzIGFuZCByZXNldC16dGUtengyOTc1MjB2MyBzdWJt
aXR0ZWQgaW4KdGhlIG5leHQgcGF0Y2hlcyB3aWxsIGRyaXZlIHRoZSByZXNwZWN0aXZlIGZ1bmN0
aW9uYWxpdGllcy4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWZkL3p0ZS16eDI5NzUyMHYzLWNy
bS5jIGIvZHJpdmVycy9tZmQvenRlLXp4Mjk3NTIwdjMtY3JtLmMKPiBuZXcgZmlsZSBtb2RlIDEw
MDY0NAo+IGluZGV4IDAwMDAwMDAwMDAwMDAuLjNhNGY2Y2QwNzU2ZTMKPiAtLS0gL2Rldi9udWxs
Cj4gKysrIGIvZHJpdmVycy9tZmQvenRlLXp4Mjk3NTIwdjMtY3JtLmMKClsgLi4uIF0KCj4gK3N0
YXRpYyBpbnQgengyOTc1MjB2M19jcm1fcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRl
dikKPiArewo+ICsJY29uc3Qgc3RydWN0IHp4Mjk3NTIwdjNfY3JtX2RhdGEgKmRhdGE7Cj4gKwo+
ICsJZGF0YSA9IG9mX2RldmljZV9nZXRfbWF0Y2hfZGF0YSgmcGRldi0+ZGV2KTsKPiArCWlmICgh
ZGF0YSkKPiArCQlyZXR1cm4gLUVOT0RFVjsKPiArCj4gKwlyZXR1cm4gZGV2bV9tZmRfYWRkX2Rl
dmljZXMoJnBkZXYtPmRldiwgUExBVEZPUk1fREVWSURfQVVUTywgZGF0YS0+Y2VsbHMsCj4gKwkJ
CQkgICAgZGF0YS0+bnVtX2NlbGxzLCBOVUxMLCAwLCBOVUxMKTsKPiArfQo+ICsKPiArc3RhdGlj
IGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgb2ZfbWF0Y2hfengyOTc1MjB2M19jcm1bXSA9IHsK
PiArCXsgLmNvbXBhdGlibGUgPSAienRlLHp4Mjk3NTIwdjMtdG9wY3JtIiwgLmRhdGEgPSAmengy
OTc1MjB2M190b3Bjcm1fZGF0YSB9LAo+ICsJeyAuY29tcGF0aWJsZSA9ICJ6dGUsengyOTc1MjB2
My1tYXRyaXhjcm0iLCAuZGF0YSA9ICZ6eDI5NzUyMHYzX21hdHJpeGNybV9kYXRhIH0sCj4gKwl7
IC5jb21wYXRpYmxlID0gInp0ZSx6eDI5NzUyMHYzLWxzcGNybSIsIC5kYXRhID0gJnp4Mjk3NTIw
djNfbHNwY3JtX2RhdGEgfSwKCltTZXZlcml0eTogTWVkaXVtXQpEb2VzIHBhc3NpbmcgcGxhdGZv
cm0gZGF0YSBmb3IgY2hpbGQgZGV2aWNlcyB2aWEgdGhlIC5kYXRhIGZpZWxkIGFzIGNvbXBsZXgK
cG9pbnRlcnMgdmlvbGF0ZSBNRkQgc3Vic3lzdGVtIGFyY2hpdGVjdHVyZSBndWlkZWxpbmVzPwoK
SW5zdGVhZCBvZiBtYXBwaW5nIGNvbXBhdGlibGUgc3RyaW5ncyBkaXJlY3RseSB0byB6eDI5NzUy
MHYzX2NybV9kYXRhIHBvaW50ZXJzCnZpYSB0aGUgLmRhdGEgZmllbGQsIHNob3VsZCB0aGlzIHVz
ZSBhbiBJRCBlbnVtIG9yIGludGVnZXIgSUQsIGFuZCBoYXZlCnp4Mjk3NTIwdjNfY3JtX3Byb2Jl
KCkgc3dpdGNoIG9uIHRoZSBJRCB0byBzZWxlY3QgdGhlIGNvcnJlY3Qgc3RhdGljIGNvbnN0Cm1m
ZF9jZWxsIGFycmF5PwoKPiArCXsgfQo+ICt9OwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0
dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDcyNy16eDI5Y2xrLXY4LTAtN2ExMDdi
MDBmMWRkQGdtYWlsLmNvbT9wYXJ0PTQKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4
LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
