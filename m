Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54BD7C43458
	for <linux-phy@archiver.kernel.org>; Thu,  9 Jul 2026 16:39:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AHZagO25YQV5R6cmErfD7/9g2h2MwVvhw+T7xzqZ4II=; b=TD5lMeLGKN1PI4
	8m2V8zKl6EeB6UyRumIit4NseXcNlkpQ83Y1snLEFsY5JNpc9pyfSCI+XlfFeCW+GRcOUNhD+L/I/
	WsLgGmkHpDHRuxTnHOfzmm2PTGQ54RqOgd7yO/r2obwDrR87V4G4Qx5tryQqssbKU3yz94Oi01qGD
	8fKG+FN9n/fThjoja26tKOEDuGuUsEEavX9zCPbkW75EH1pJ1Mtv41CJNnsNyQ8XfJkCLftoG3Auo
	BFAMB6DMWf6tidC9y4pPKZimeT7zzwf0R0h/SF6brRkMQe2s2zg4nL1ZDu3i+5u8Zw4uaHiXcOZY4
	PyQGI+byawxit1cxXJZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whrn2-000000033TI-3VM0;
	Thu, 09 Jul 2026 16:39:56 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whrn1-000000033TC-2OTG
	for linux-phy@lists.infradead.org;
	Thu, 09 Jul 2026 16:39:55 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 1639540022;
	Thu,  9 Jul 2026 16:39:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A06B81F000E9;
	Thu,  9 Jul 2026 16:39:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783615195;
	bh=lkt8Y/SkUrpxL4fLoNypSfAhcVNwZwYnDsi1ab7KUKQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=gGA1j9aEaTGuYEC3EOcI8r36Jb1F3osCivoJzlHrHVd7Ol8L+GEuSC8W6PmGb2nNz
	 b0ShogyfuuFcxcuoa6Qa4ye8HvD+77UEqZFl2vpuFaU9C6FWZxxuprDZNJk7L8KlC0
	 dy7GqoneUiLAww5Fyqq1Kk+huX8Ee+tpmly8aH4FR3/o0Y4cuX3VPvjeNAC7xQE2/Q
	 bW5Vt86Rvdz2XDC3Qo2iQ4KHJQCT9IEl2Jd+ZNIHOEkRmOohVzdvO6BZE+2is5gNzj
	 OiGGyJa5vGcWhRX/kgBL7awXxyD9MgEZf6+Uv1m08tdjWtJR5BoirQk029/rwgct1/
	 qKljTEr5pnnaw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5] phy: Add USB3 PHY support to Google Tensor SoC USB
 PHY driver
To: "RD Babiera" <rdbabiera@google.com>
Cc: linux-phy@lists.infradead.org, neil.armstrong@linaro.org, olteanv@gmail.com, vkoul@kernel.org
In-Reply-To: <20260709163112.3902148-2-rdbabiera@google.com>
References: <20260709163112.3902148-2-rdbabiera@google.com>
Date: Thu, 09 Jul 2026 16:39:54 +0000
Message-Id: <20260709163954.A06B81F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFJhY2UgY29uZGl0aW9u
IGluIGBnb29nbGVfdXNiX3NldF9vcmllbnRhdGlvbmAgZHVlIHRvIGFuIHVuc2FmZSBSdW50aW1l
IFBNIHN0YXRlIGNoZWNrLgotLQoKLS0tIFBhdGNoIFsxXTogW1BBVENIIHY1XSBwaHk6IEFkZCBV
U0IzIFBIWSBzdXBwb3J0IHRvIEdvb2dsZSBUZW5zb3IgU29DIFVTQiBQSFkgZHJpdmVyIC0tLQpj
b21taXQgNTI0NTJhZDFhNjk2ZWEwODcyNmNhYmYwOTE0MWQ2ZmRmNmE1YjdhOQpBdXRob3I6IFJE
IEJhYmllcmEgPHJkYmFiaWVyYUBnb29nbGUuY29tPgoKcGh5OiBBZGQgVVNCMyBQSFkgc3VwcG9y
dCB0byBHb29nbGUgVGVuc29yIFNvQyBVU0IgUEhZIGRyaXZlcgoKVGhpcyBjb21taXQgYWRkcyBV
U0IgU3VwZXJTcGVlZCBzdXBwb3J0IHRvIHRoZSBHb29nbGUgVGVuc29yIEc1IFVTQiBQSFkKZHJp
dmVyLiBJdCBpbXBsZW1lbnRzIFVTQjMgcGh5X29wcywgcmVmYWN0b3JzIHRoZSBwcm9iZSBzZXF1
ZW5jZSwgYW5kCm1vZGlmaWVzIGdvb2dsZV91c2Jfc2V0X29yaWVudGF0aW9uKCkgdG8gcmVwcm9n
cmFtIHRoZSBUQ0Egd2hlbiB0aGUgUEhZCmlzIHJlYWR5IHdoaWxlIGhvbGRpbmcgYSBwbV9ydW50
aW1lIHJlZmVyZW5jZS4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3BoeS1nb29nbGUtdXNi
LmMgYi9kcml2ZXJzL3BoeS9waHktZ29vZ2xlLXVzYi5jCj4gaW5kZXggYWIyMGJjMjBmMTllYS4u
NjA1ODFjZTgxNWIyNyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9waHktZ29vZ2xlLXVzYi5j
Cj4gKysrIGIvZHJpdmVycy9waHkvcGh5LWdvb2dsZS11c2IuYwoKWyAuLi4gXQoKPiBAQCAtNDYs
NTMgKzc3LDIwMSBAQCBzdHJ1Y3QgZ29vZ2xlX3VzYl9waHlfaW5zdGFuY2Ugewo+ICBzdGF0aWMg
aW50IGdvb2dsZV91c2Jfc2V0X29yaWVudGF0aW9uKHN0cnVjdCB0eXBlY19zd2l0Y2hfZGV2ICpz
dywKPiAgCQkJCSAgICAgIGVudW0gdHlwZWNfb3JpZW50YXRpb24gb3JpZW50YXRpb24pCj4gIHsK
PiAgCXN0cnVjdCBnb29nbGVfdXNiX3BoeSAqZ3BoeSA9IHR5cGVjX3N3aXRjaF9nZXRfZHJ2ZGF0
YShzdyk7Cj4gKwlpbnQgcmV0ID0gMDsKPiAgCj4gIAlkZXZfZGJnKGdwaHktPmRldiwgInNldCBv
cmllbnRhdGlvbiAlZFxuIiwgb3JpZW50YXRpb24pOwo+ICAKPiArCWd1YXJkKG11dGV4KSgmZ3Bo
eS0+cGh5X211dGV4KTsKPiArCj4gIAlncGh5LT5vcmllbnRhdGlvbiA9IG9yaWVudGF0aW9uOwo+
ICAKPiAtCWlmIChwbV9ydW50aW1lX3N1c3BlbmRlZChncGh5LT5kZXYpKQo+IC0JCXJldHVybiAw
Owo+ICsJcG1fcnVudGltZV9nZXRfbm9yZXN1bWUoZ3BoeS0+ZGV2KTsKPiAgCj4gLQlndWFyZCht
dXRleCkoJmdwaHktPnBoeV9tdXRleCk7Cj4gKwlpZiAocG1fcnVudGltZV9zdXNwZW5kZWQoZ3Bo
eS0+ZGV2KSkgewo+ICsJCXBtX3J1bnRpbWVfcHV0X25vaWRsZShncGh5LT5kZXYpOwo+ICsJCXJl
dHVybiAwOwo+ICsJfQoKW1NldmVyaXR5OiBIaWdoXQpDYW4gdGhpcyByZXN1bHQgaW4gYSByYWNl
IGNvbmRpdGlvbiBkdXJpbmcgZGV2aWNlIHN1c3BlbmQ/CgpwbV9ydW50aW1lX2dldF9ub3Jlc3Vt
ZSgpIGluY3JlbWVudHMgdGhlIHVzYWdlIGNvdW50ZXIgYnV0IGRvZXNuJ3QgY2hlY2sKaWYgYSBz
dXNwZW5kIGlzIGFscmVhZHkgaW4gcHJvZ3Jlc3MuIElmIHRoZSBkZXZpY2Ugc3RhdHVzIGlzIGN1
cnJlbnRseQpSUE1fU1VTUEVORElORywgcG1fcnVudGltZV9zdXNwZW5kZWQoKSB3aWxsIHJldHVy
biBmYWxzZS4KClRoaXMgd291bGQgYWxsb3cgdGhlIGRyaXZlciB0byBwcm9jZWVkIHRvIGFjY2Vz
cyBoYXJkd2FyZSB2aWEKc2V0X3ZidXNfdmFsaWQoKSBhbmQgcHJvZ3JhbV90Y2FfbG9ja2VkKCkg
Y29uY3VycmVudGx5IHdpdGggdGhlIHN1c3BlbmQKY2FsbGJhY2sgZGlzYWJsaW5nIGNsb2NrcyBh
bmQgcG93ZXIgZG9tYWlucy4gT24gQVJNIHBsYXRmb3JtcywgdGhpcwp0eXBpY2FsbHkgdHJpZ2dl
cnMgYW4gYXN5bmNocm9ub3VzIGV4dGVybmFsIGFib3J0IG9yIGtlcm5lbCBwYW5pYy4KCldvdWxk
IGl0IGJlIHNhZmVyIHRvIHVzZSBwbV9ydW50aW1lX2dldF9pZl9hY3RpdmUoZ3BoeS0+ZGV2KSA8
PSAwIGluc3RlYWQsCndoaWNoIGF0b21pY2FsbHkgaW5jcmVtZW50cyB0aGUgY291bnRlciBvbmx5
IGlmIHRoZSBkZXZpY2UgaXMgZnVsbHkgYWN0aXZlPwoKPiAgCj4gIAlzZXRfdmJ1c192YWxpZChn
cGh5KTsKPiAgCj4gLQlyZXR1cm4gMDsKPiArCWlmIChncGh5LT5waHlfc3RhdGUgPT0gQ09NQk9f
UEhZX1RDQV9SRUFEWSAmJiBvcmllbnRhdGlvbiAhPSBUWVBFQ19PUklFTlRBVElPTl9OT05FKQo+
ICsJCXJldCA9IHByb2dyYW1fdGNhX2xvY2tlZChncGh5KTsKPiArCj4gKwlwbV9ydW50aW1lX3B1
dF9hdXRvc3VzcGVuZChncGh5LT5kZXYpOwo+ICsKPiArCXJldHVybiByZXQ7Cj4gIH0KCi0tIApT
YXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA3
MDkxNjMxMTIuMzkwMjE0OC0yLXJkYmFiaWVyYUBnb29nbGUuY29tP3BhcnQ9MQoKLS0gCmxpbnV4
LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
