Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54640CA9ED5
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 07:07:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X6aPEdUzVDhrz2ZlmMVztDJvXQV7CHAG/yhDmiKy0c0=; b=oBoD/pXe055XAe
	AsyTX+purGt2mIFh/vmI/+m6wYubsa7m8qxACGotq+OG6mj2TtwAgpSGJo6Ye8uPNwt2Y/AIGOaE3
	4GXVYCUpLubmVeX36KD7Ss3uUGYNlUMfWYTF5bF8tkRPiinuEphuKqL9Tdx+c6X6So5/qsfP+jAiC
	Rd486tYh/3EpgomikZnUx2fQUySUKowDb+lv6EwG6g6BfXWHU4HykdByLUmuWBM+9rgvS9Jqj71u8
	XDRvBQtjjU1/1meVNd//cEOO6uryUG9Ba11/f1NFypMRP0oFPcEKf1nRBoCDb/lETtPxT7ztwn5W/
	RQC7ctcPNr6p2MmixF+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGA7s-00000009oPP-48qX;
	Mon, 12 Oct 2026 07:07:13 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGA7q-00000009oOD-3fCH
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 07:07:11 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 5321D60AB5;
	Mon, 12 Oct 2026 07:07:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 81BA01F0089B;
	Mon, 12 Oct 2026 07:07:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791788830;
	bh=rdfrzaw9jpWPrVrElAovQ48toenlwQtDznKZDtv9e+s=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ARGn9/QZwvkvyPIbMwWoFdgBXzuJzCfoRbWwxQhgiFLgtBL8uk1R7YI3Dy3bZ+oDn
	 dq2CRPVG9S8i6nb2r7Yor1ygQtHHTIoNhkFNY7II/jYTIPfPwZIV0cF8+t+XOfafnL
	 mgsiR14xbFCRa56sDx2t4tjvHiAyc5ZRsmD7nUt2vb5FAZ9MF56g5r3G1iXuijR07M
	 aabPUIcMXhZl3clT/0UrB9OM6+2jAHI1dSJRjex4+MBK7VH6LVCLlwkWMt6w2XhW8t
	 N20fPLkr1f3kv9EN05C+KZIBnIjKLoOsD6RmHr4qPsvJZLK3kcNc2DmaPWVK4RQKlo
	 eoSNC0BbS+nXw==
Message-ID: <sashiko-outbox-167774@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v21 07/14] media: qcom: camss: csiphy: Add support for
 v2.4.0 two-phase CSIPHY
To: "Hangxiang Ma" <hangxiang.ma@oss.qualcomm.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, media-ci@linuxtv.org, neil.armstrong@linaro.org, olteanv@gmail.com, vkoul@kernel.org, linux-phy@lists.infradead.org, conor+dt@kernel.org
In-Reply-To: <20261011-kaanapali-camss-v21-7-04fd28d815c6@oss.qualcomm.com>
References: <20261011-kaanapali-camss-v21-0-04fd28d815c6@oss.qualcomm.com>
 <20261011-kaanapali-camss-v21-7-04fd28d815c6@oss.qualcomm.com>
Date: Mon, 12 Oct 2026 07:07:09 +0000
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIG1lZGlhOiBxY29tOiBj
YW1zczogTlVMTCBwb2ludGVyIGRlcmVmZXJlbmNlIG9uIG1hbGZvcm1lZCBEVCBpbiBsZWdhY3kg
UEhZIGZhbGxiYWNrCi0tCgpjb21taXQgYjUxNDIyNzkzZTYzZDUwYjljMmQ4NWYzZTcxYTQ5YzBm
M2JiNGU2OQpBdXRob3I6IEhhbmd4aWFuZyBNYSA8aGFuZ3hpYW5nLm1hQG9zcy5xdWFsY29tbS5j
b20+CgptZWRpYTogcWNvbTogY2Ftc3M6IGNzaXBoeTogQWRkIHN1cHBvcnQgZm9yIHYyLjQuMCB0
d28tcGhhc2UgQ1NJUEhZCgpBZGQgc3VwcG9ydCBmb3IgdGhlIHYyLjQuMCB0d28tcGhhc2UgQ1NJ
UEhZIGZvdW5kIG9uIEthYW5hcGFsaSwgd2hlcmUKdGhlIFBIWSBpcyBkcml2ZW4gYnkgdGhlIHN0
YW5kYWxvbmUgcGh5LXFjb20tbWlwaS1jc2kyIERQSFkgZHJpdmVyCnJhdGhlciB0aGFuIGJ5IENB
TVNTLiBBZGQgdGhlIG1pcGlfY3NpMl9kcGh5XzNubV9rYWFuYXBhbGkgY29uZmlndXJhdGlvbiwK
d2hpY2ggcmV1c2VzIHRoZSB4MWU4MDEwMCBsYW5lIHNlcXVlbmNlLCBjbG9ja3MgYW5kIHN1cHBs
aWVzIGJ1dCBzZWxlY3RzCnRoZSB2Mi40LjAgY29tbW9uIHN0YXR1cyBvZmZzZXQsIGFkZHMgS2Fh
bmFwYWxpIHBvd2VyIGRvbWFpbiBhbmQgcmVnaXN0ZXIKdGhlICJxY29tLGthYW5hcGFsaS1jc2ky
LXBoeSIgY29tcGF0aWJsZS4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0v
cWNvbS9jYW1zcy9jYW1zcy5jIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9xY29tL2NhbXNzL2Nh
bXNzLmMKPiBpbmRleCBmY2EzZGUyMTRhOTIyLi5lZWNlYjc5YzFlODYzIDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9jYW1zcy5jCj4gKysrIGIvZHJpdmVy
cy9tZWRpYS9wbGF0Zm9ybS9xY29tL2NhbXNzL2NhbXNzLmMKPiBAQCAtMzgsNiArMzgsNTEgQEAK
PiAgCj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgcGFyZW50X2Rldl9vcHMgdmZlX3BhcmVudF9kZXZf
b3BzOwo+ICAKPiArc3RhdGljIGNvbnN0IHN0cnVjdCBjYW1zc19zdWJkZXZfcmVzb3VyY2VzIGNz
aXBoeV9yZXNfa2FhbmFwYWxpW10gPSB7Cj4gKwkvKiBDU0lQSFkwICovCj4gKwl7Cj4gKwkJLmNz
aXBoeSA9IHsKPiArCQkJLmlkID0gMCwKPiArCQkJLmZvcm1hdHMgPSAmY3NpcGh5X2Zvcm1hdHNf
c2RtODQ1Cj4gKwkJfSwKCltTZXZlcml0eTogSGlnaF0KV2hhdCBoYXBwZW5zIHdoZW4gYSBtYWxm
b3JtZWQgZGV2aWNlIHRyZWUgY2F1c2VzIHRoZSBkcml2ZXIgdG8gZmFsbCBiYWNrIHRvCmxlZ2Fj
eSBQSFkgbW9kZT8KCklmIGNhbXNzX2RldGVjdF9sZWdhY3lfcGh5KCkgZW5jb3VudGVycyBtaXNz
aW5nIG9yIGRpZmZlcmVudGx5IG5hbWVkIHJlbW90ZQplbmRwb2ludHMsIGl0IGRlZmF1bHRzIHRv
IGxlYXZpbmcgY2Ftc3MtPmxlZ2FjeV9waHkgc2V0IHRvIHRydWUuCgpXaGVuIHRoaXMgaGFwcGVu
cyBvbiBLYWFuYXBhbGkgcGxhdGZvcm1zLCBjYW1zc19pbml0X3N1YmRldmljZXMoKSBpbnZva2Vz
IHRoZQpsZWdhY3kgaW5pdGlhbGl6YXRpb24gcGF0aDoKCmRyaXZlcnMvbWVkaWEvcGxhdGZvcm0v
cWNvbS9jYW1zcy9jYW1zcy5jOmNhbXNzX2luaXRfc3ViZGV2aWNlcygpIHsKICAgIC4uLgogICAg
fSBlbHNlIHsKICAgICAgICByZXQgPSBtc21fY3NpcGh5X3N1YmRldl9pbml0X2xlZ2FjeShjYW1z
cywKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAmY2Ftc3MtPmNz
aXBoeVtpXSwKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAmcmVz
LT5jc2lwaHlfcmVzW2ldLAogICAgLi4uCn0KClRoaXMgbGVnYWN5IHBhdGggdW5jb25kaXRpb25h
bGx5IGRlcmVmZXJlbmNlcyB0aGUgaHdfb3BzIHBvaW50ZXI6Cgpkcml2ZXJzL21lZGlhL3BsYXRm
b3JtL3Fjb20vY2Ftc3MvY2Ftc3MtY3NpcGh5LmM6bXNtX2NzaXBoeV9zdWJkZXZfaW5pdF9sZWdh
Y3koKSB7CiAgICAuLi4KICAgIGNzaXBoeS0+cmVzID0gJnJlcy0+Y3NpcGh5OwoKICAgIHJldCA9
IGNzaXBoeS0+cmVzLT5od19vcHMtPmluaXQoY3NpcGh5KTsKICAgIC4uLgp9CgpTaW5jZSBod19v
cHMgaXMgbGVmdCB1bmluaXRpYWxpemVkIChOVUxMKSBpbiB0aGUgS2FhbmFwYWxpIGRlZmluaXRp
b25zLCBjb3VsZAp0aGlzIHJlc3VsdCBpbiBhIGtlcm5lbCBwYW5pYyBkdXJpbmcgZHJpdmVyIHBy
b2JlPwoKPiArCX0sCgpbIC4uLiBdCgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9z
YXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYxMDExLWthYW5hcGFsaS1jYW1zcy12MjEtMC0wNGZk
MjhkODE1YzZAb3NzLnF1YWxjb21tLmNvbT9wYXJ0PTcKCi0tIApsaW51eC1waHkgbWFpbGluZyBs
aXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
