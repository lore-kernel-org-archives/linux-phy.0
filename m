Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD78DCD4F3D
	for <linux-phy@archiver.kernel.org>; Thu, 21 May 2026 14:35:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+qldhv5Vqhvj/zQuBpbgM8jtdOajjZPMfv617bAsKOY=; b=bSLwBWZPpHlGGH
	DGwe2/O1yra6rytk7jXNxrOhtQ2+4uK3bYpHbBlDqmHjPgvWI0MyujC/ouVKz+1Vd1+Ax6FdkBSlN
	moZCsYiFREsdwFvJ2yicGCoD9DfLMoUqkc9IELpHeQ6Gc6Hq9USlaLRC0xRa0zz48sjpD3ki6Guzz
	gADAeP0bXdGxnjw7uO7cscseWlOU0HEw7SUXUI5Y8X5au25ikaQ2AMzJFAzEH9CvhL5GPI0KaHIiG
	RvcOGwP8W35rna3G4MPKkpHGZd8lw4/ikwPq2H/8PCtJijLpFjsjKhANfue7IIwDBsN3oekZDR8qL
	7Lbte5fO3bI2OkVS/7eA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ4UX-000000085NT-1Gy6;
	Thu, 21 May 2026 14:35:17 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ4UU-000000085MV-2WTC
	for linux-phy@lists.infradead.org;
	Thu, 21 May 2026 14:35:15 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 3C5DD43DAA;
	Thu, 21 May 2026 14:35:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D45CB1F000E9;
	Thu, 21 May 2026 14:35:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779374112;
	bh=+pRX2z37xulb7NieSD0vJ+8VwcZxBKzaRDQaiGSdB8M=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=kyx1WarAzlAAgOOKJhez+BYMCIB7eISExQItpmBblVDKp3BDSN1ddoHuWh9vWL2LV
	 ywGNow3YiLM0ezRo6Vnpk13gLB3SfQFlo2BERu4WjwkVF1g0tGrA780r4elmuvGap6
	 REFDxCRq8i2YlF/GSgPDisvrwQ9p2hR2cBkl3wRLnKZrJli9mqHcPn3/A8HmcaEOrP
	 /epaqSgr+fBmBXXb4E1+mE6TT/ITboxFJ+mVa/HRrlZb+xxnS2FmRcnm5rlBuwDsB1
	 DAwe/LV6vHhIzt3I/fS7F4JswghNZOyiQpKlq+e1ZVyra+2w7CWW8at8Juf2Jjl5FM
	 zNib4fMivYAHg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 4/4] PCI: qcom: enable Link retain logic for Hamoa
To: "Krishna Chaitanya Chundru" <krishna.chundru@oss.qualcomm.com>
Cc: olteanv@gmail.com, linux-phy@lists.infradead.org, neil.armstrong@linaro.org, vkoul@kernel.org, linux-pci@vger.kernel.org
In-Reply-To: <20260521-link_retain-v2-4-08ed448b081c@oss.qualcomm.com>
References: <20260521-link_retain-v2-4-08ed448b081c@oss.qualcomm.com>
Date: Thu, 21 May 2026 14:35:11 +0000
Message-Id: <20260521143511.D45CB1F000E9@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260521_073514_677597_340B2EE0 
X-CRM114-Status: GOOD (  11.67  )
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
IFtIaWdoXSBTZXR0aW5nIGBsaW5rX3JldGFpbiA9IHRydWVgIGluIGBjZmdfeDFlODAxMDBgIGV4
cG9zZXMgYSBmbGF3ZWQgZXJyb3IgaGFuZGxpbmcgcGF0aCBpbiBgcWNvbV9wY2llX2hvc3RfaW5p
dCgpYCB0aGF0IHNpbGVudGx5IGlnbm9yZXMgYC1FUFJPQkVfREVGRVJgIGFuZCBieXBhc3NlcyBj
cml0aWNhbCBob3N0IGNvbmZpZ3VyYXRpb24uCi0tCgpjb21taXQgODY4NjUyMDAyYmJkYjgyMjJi
MjhkYmVjMmIwNjU1YWY5N2QzY2ViOApBdXRob3I6IEtyaXNobmEgQ2hhaXRhbnlhIENodW5kcnUg
PGtyaXNobmEuY2h1bmRydUBvc3MucXVhbGNvbW0uY29tPgoKICAgIFBDSTogcWNvbTogZW5hYmxl
IExpbmsgcmV0YWluIGxvZ2ljIGZvciBIYW1vYQoKICAgIFRoZSBIYW1vYSBwbGF0Zm9ybSBzdXBw
b3J0cyBrZWVwaW5nIHRoZSBQQ0llIGxpbmsgYWN0aXZlIGFjcm9zcwogICAgYm9vdGxvYWRlciBh
bmQga2VybmVsIGhhbmRvZmYuIFRvIHRha2UgYWR2YW50YWdlIG9mIHRoaXMsIGludHJvZHVjZSBh
CiAgICBzcGVjaWZpYyBjb25maWd1cmF0aW9uIChjZmdfeDFlODAxMDApIHdpdGggbGlua19yZXRh
aW4gPSB0cnVlIGFuZAogICAgdXBkYXRlIHRoZSBkZXZpY2UgbWF0Y2ggdGFibGUgdG8gdXNlIGl0
LgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1xY29tLmMg
Yi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLXFjb20uYwo+IGluZGV4IGIwNjFlYWEy
MjdiMzkuLjg0OTZlYjg3ZGViYmMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9wY2kvY29udHJvbGxl
ci9kd2MvcGNpZS1xY29tLmMKPiArKysgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2ll
LXFjb20uYwo+IEBAIC0xNTU3LDYgKzE1NTcsMTIgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBxY29t
X3BjaWVfY2ZnIGNmZ19zYzgyODB4cCA9IHsKPiAgCS5ub19sMHMgPSB0cnVlLAo+ICB9Owo+ICAK
PiArc3RhdGljIGNvbnN0IHN0cnVjdCBxY29tX3BjaWVfY2ZnIGNmZ194MWU4MDEwMCA9IHsKPiAr
CS5vcHMgPSAmb3BzXzFfMjFfMCwKPiArCS5ub19sMHMgPSB0cnVlLAo+ICsJLmxpbmtfcmV0YWlu
ID0gdHJ1ZSwKPiArfTsKPiArCgpbU2V2ZXJpdHk6IEhpZ2hdClRoaXMgaXNuJ3QgYSBidWcgaW50
cm9kdWNlZCBieSB0aGlzIHBhdGNoLCBidXQgc2V0dGluZyBsaW5rX3JldGFpbiB0byB0cnVlCmhl
cmUgZXhwb3NlcyBhIHByZS1leGlzdGluZyBmbGF3ZWQgZXJyb3IgaGFuZGxpbmcgcGF0aCBpbiBx
Y29tX3BjaWVfaG9zdF9pbml0KCkKdGhhdCBzaWxlbnRseSBpZ25vcmVzIC1FUFJPQkVfREVGRVIu
CgpJZiBwY2lfcHdyY3RybF9wb3dlcl9vbl9kZXZpY2VzKCkgcmV0dXJucyAtRVBST0JFX0RFRkVS
IHdoZW4gdGhlIHBvd2VyIGNvbnRyb2wKZHJpdmVyIGhhc24ndCBib3VuZCB5ZXQsIHRoZSBlcnJv
ciBoYW5kbGVyIGludGVyY2VwdHMgdGhlIGRlZmVycmFsOgoKcWNvbV9wY2llX2hvc3RfaW5pdCgp
IHsKICAgIC4uLgoJcmV0ID0gcGNpX3B3cmN0cmxfcG93ZXJfb25fZGV2aWNlcyhwY2ktPmRldik7
CglpZiAocmV0KQoJCWdvdG8gZXJyX3B3cmN0cmxfZGVzdHJveTsKICAgIC4uLgplcnJfcHdyY3Ry
bF9kZXN0cm95OgoJaWYgKHBwLT5saW5rX3JldGFpbiAmJiByZXQgPT0gLUVQUk9CRV9ERUZFUikK
CQlyZXR1cm4gMDsKICAgIC4uLgp9CgpXaWxsIHJldHVybmluZyAwIGhlcmUgdHJpY2sgdGhlIERX
QyBjb3JlIChkd19wY2llX2hvc3RfaW5pdCgpKSBpbnRvIGFzc3VtaW5nCmhvc3QgaW5pdGlhbGl6
YXRpb24gY29tcGxldGVkIHN1Y2Nlc3NmdWxseT8KClNpbmNlIHRoZSBwcm9iZSBjb21wbGV0ZXMg
d2l0aG91dCByZXRyeWluZywgY291bGQgdGhpcyBsZWF2ZSB0aGUgUENJZSBzbG90CnJlZ3VsYXRv
cnMgdW5tYW5hZ2VkIGJ5IHRoZSBrZXJuZWwsIGNhdXNpbmcgdGhlbSB0byBiZSBkaXNhYmxlZCBs
YXRlciB3aGVuCnJlZ3VsYXRvcl9pbml0X2NvbXBsZXRlKCkgcnVucyBhdCBsYXRlIGluaXRjYWxs
PwoKQWRkaXRpb25hbGx5LCBkb2VzIHJldHVybmluZyBlYXJseSBza2lwIG1hbmRhdG9yeSBpbml0
aWFsaXphdGlvbiBzdGVwcyBsaWtlCnFjb21fcGNpZV9jbGVhcl9hc3BtX2wwcygpICh3aGljaCBp
cyByZXF1aXJlZCBieSBjZmdfeDFlODAxMDAubm9fbDBzID0gdHJ1ZSksCmhpZGluZyBNU0ktWC9E
UEMgY2FwYWJpbGl0aWVzLCBhbmQgcGVyZm9ybWluZyBTSUQgY29uZmlndXJhdGlvbj8gU2tpcHBp
bmcgdGhlc2UKY291bGQgcmVzdWx0IGluIGxpbmsgaW5zdGFiaWxpdHksIEFFUiBlcnJvcnMsIGFu
ZCBoYXJkd2FyZSBtYWxmdW5jdGlvbi4KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczov
L3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA1MjEtbGlua19yZXRhaW4tdjItMC0wOGVkNDQ4
YjA4MWNAb3NzLnF1YWxjb21tLmNvbT9wYXJ0PTQKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
