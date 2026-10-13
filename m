Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9CA70CC6B03
	for <linux-phy@archiver.kernel.org>; Tue, 13 Oct 2026 11:51:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LHqs6neaoVi2qXNTJPTB0grnKYnjKlV+Ewp1cyIKhTI=; b=1oKvRZbU/rbbm9
	rAUstPBAtKjo1m5cvPztogNe4zGRB+5yfjIvZKOVd+J6yM2ABCd2WC7H+npLEzEuKaTtF9ADE/AYB
	R6x9JwL7N5JM+KNdGvxDRKz7mjHf3Cw8i98kZVtzLAVl22//Z2zsWe3+eBqlsgE63yeWv0/Jga571
	jtzrEcWdz7UCG8LTYKWDXo2p3hr6giHHcwTXT9Ub7DwSimwc3QLmfF58KylOKRYrflEyQ84sMlfxx
	GwaT4y5X1LJ3fermgeYuwQMpreCkGgXOvTHMWfaawGPUDA8YcdYAmdPzv3C+WAfkZtobbdC8ZYc8t
	kAbER8ew89RtmPCCiiZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGb2k-0000000CkVx-0lsx;
	Tue, 13 Oct 2026 11:51:42 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGb2M-0000000CkUR-15CQ
	for linux-phy@lists.infradead.org;
	Tue, 13 Oct 2026 11:51:35 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id A5EBF40B27;
	Tue, 13 Oct 2026 11:51:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0D2381F000FF;
	Tue, 13 Oct 2026 11:51:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791892277;
	bh=6n9XRzzB5F7yVGP2sNosYizbCRryJ8XuRjYFhl3Ig18=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=MBqsA2J3MOmMKAXwv7ZyI23/OTbtdZunkJAf7SJNA269ubUKgyle5POOwvofb6CKF
	 CKbdSAkyuMgucXFlND27n2F5OlZOdRh+zMPZpEd2tbqlZympUVkH18TzTM3uga6LEY
	 G8H4yP2nwuiuY9nzXROEUFAhqt80IZUZMLVbvHSGzUvOUXoIkW92XjMq/0haEdE+cC
	 N77tS83wP97K+bF849kEgQ5kKwgD0DoE1G9CgT2KWMtrYikuH64fMV4x+gZ+maJXUn
	 0VShLRntux3wxUuVRY4Vy4s5VCursAU9qWuFYWsQ2o8p79jejbjIWhYR4w7526e8sz
	 JzNg/SDAX0C8A==
Message-ID: <sashiko-outbox-169654@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 6/8] media: qcom: camss: Add Hawi compatible camss
 driver
To: "Nihal Kumar Gupta" <nihal.gupta@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, linux-phy@lists.infradead.org, robh@kernel.org, conor+dt@kernel.org, media-ci@linuxtv.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261013-hawi-maili-camss-v2-6-fc93222da89c@oss.qualcomm.com>
References: <20261013-hawi-maili-camss-v2-0-fc93222da89c@oss.qualcomm.com>
 <20261013-hawi-maili-camss-v2-6-fc93222da89c@oss.qualcomm.com>
Date: Tue, 13 Oct 2026 11:51:16 +0000
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIG1lZGlhOiBjYW1zczog
TlVMTCBkZXJlZiBpbiBsZWdhY3kgaW5pdCB3aXRoIG1hbGZvcm1lZCBEVAotLQoKY29tbWl0IGFi
NTg4YmZhOTllNzU1OTM4MTUzMWIzMzlhMzhlNmIwM2FmOTYwOWMKQXV0aG9yOiBIYW5neGlhbmcg
TWEgPGhhbmd4aWFuZy5tYUBvc3MucXVhbGNvbW0uY29tPgoKbWVkaWE6IHFjb206IGNhbXNzOiBB
ZGQgSGF3aSBjb21wYXRpYmxlIGNhbXNzIGRyaXZlcgoKQWRkIHN1cHBvcnQgZm9yIEhhd2kgaW4g
dGhlIGNhbXNzIGRyaXZlci4gSGF3aSByZXVzZXMgdGhlIENTSVBIWQpyZXNvdXJjZSB0YWJsZSBm
cm9tIEthYW5hcGFsaSBhbmQgdGhlIFRQRyByZXNvdXJjZSB0YWJsZSBmcm9tClgxRTgwMTAwLgoK
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9xY29tL2NhbXNzL2NhbXNzLmMg
Yi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3MvY2Ftc3MuYwo+IGluZGV4IDVkYjdl
MTJhNmY4NjkuLjY2NDIzN2FkNWNlNjAgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0
Zm9ybS9xY29tL2NhbXNzL2NhbXNzLmMKPiArKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Fj
b20vY2Ftc3MvY2Ftc3MuYwpbIC4uLiBdCj4gQEAgLTYwODYsNiArNjA5OSwxNyBAQCBzdGF0aWMg
Y29uc3Qgc3RydWN0IGNhbXNzX3Jlc291cmNlcyBzbTg2NTBfcmVzb3VyY2VzID0gewo+ICAJLnZm
ZV9udW0gPSBBUlJBWV9TSVpFKHZmZV9yZXNfc204NjUwKSwKPiAgfTsKPiAgCj4gK3N0YXRpYyBj
b25zdCBzdHJ1Y3QgY2Ftc3NfcmVzb3VyY2VzIGhhd2lfcmVzb3VyY2VzID0gewo+ICsJLnZlcnNp
b24gPSBDQU1TU19IQVdJLAo+ICsJLnBkX25hbWUgPSAidG9wIiwKPiArCS5jc2lwaHlfcmVzID0g
Y3NpcGh5X3Jlc19rYWFuYXBhbGksCgpbU2V2ZXJpdHk6IEhpZ2hdCkNhbiBhIG1hbGZvcm1lZCBk
ZXZpY2UgdHJlZSB3aXRob3V0IGVuZHBvaW50cyBjYXVzZSBhIE5VTEwgcG9pbnRlcgpkZXJlZmVy
ZW5jZSB3aGVuIGluaXRpYWxpemluZyB0aGlzIG5ldyBjb21wYXRpYmxlPwoKSWYgYSBkZXZpY2Ug
dHJlZSBub2RlIGZvciBIYXdpIGlzIHByb3ZpZGVkIHdpdGhvdXQgZW5kcG9pbnRzLApjYW1zc19k
ZXRlY3RfbGVnYWN5X3BoeSgpIGluIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9j
YW1zcy5jCml0ZXJhdGVzIG92ZXIgemVybyBlbmRwb2ludHMsIGxlYXZpbmcgY2Ftc3MtPmxlZ2Fj
eV9waHkgPSB0cnVlOgoKY2Ftc3NfZGV0ZWN0X2xlZ2FjeV9waHkoKSB7CiAgICAuLi4KICAgIGNh
bXNzLT5sZWdhY3lfcGh5ID0gdHJ1ZTsKCiAgICAvKiBGaW5kIGZpcnN0IHJlbW90ZS1lbmRwb2lu
dCBhbmQgZGV0ZXJtaW5lIGlmIGl0cyBhIFBIWSAqLwogICAgZm9yX2VhY2hfZW5kcG9pbnRfb2Zf
bm9kZShjYW1zcy0+ZGV2LT5vZl9ub2RlLCBlcCkgewogICAgLi4uCn0KCmNhbXNzX2luaXRfc3Vi
ZGV2aWNlcygpIHRoZW4gdW5jb25kaXRpb25hbGx5IGNhbGxzCm1zbV9jc2lwaHlfc3ViZGV2X2lu
aXRfbGVnYWN5KCkuIFNpbmNlIHRoZSBjc2lwaHlfcmVzX2thYW5hcGFsaQpzdHJ1Y3R1cmUgcmV1
c2VkIGhlcmUgbGFja3MgYSAuaHdfb3BzIGRlZmluaXRpb24sCm1zbV9jc2lwaHlfc3ViZGV2X2lu
aXRfbGVnYWN5KCkgaW4KZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9xY29tL2NhbXNzL2NhbXNzLWNz
aXBoeS5jIHdpbGwgZGVyZWZlcmVuY2UKYSBOVUxMIHBvaW50ZXI6Cgptc21fY3NpcGh5X3N1YmRl
dl9pbml0X2xlZ2FjeSgpIHsKICAgIC4uLgogICAgcmV0ID0gY3NpcGh5LT5yZXMtPmh3X29wcy0+
aW5pdChjc2lwaHkpOwogICAgLi4uCn0KClNob3VsZCB0aGVyZSBiZSBhbiBleHBsaWNpdCBjaGVj
ayBmb3IgTlVMTCBod19vcHMgYmVmb3JlIGRlcmVmZXJlbmNpbmcsIG9yCnNob3VsZCBjYW1zc19k
ZXRlY3RfbGVnYWN5X3BoeSgpIGhhbmRsZSBjYXNlcyB3aXRoIHplcm8gZW5kcG9pbnRzCmRpZmZl
cmVudGx5IHNvIGl0IGZhaWxzIGdyYWNlZnVsbHkgaW5zdGVhZCBvZiBjcmFzaGluZz8KCj4gKwku
dHBnX3JlcyA9IHRwZ19yZXNfeDFlODAxMDAsCj4gKwkuaWNjX3JlcyA9IGljY19yZXNfaGF3aSwK
PiArCS5pY2NfcGF0aF9udW0gPSBBUlJBWV9TSVpFKGljY19yZXNfaGF3aSksCj4gKwkuY3NpcGh5
X251bSA9IEFSUkFZX1NJWkUoY3NpcGh5X3Jlc19rYWFuYXBhbGkpLAo+ICsJLnRwZ19udW0gPSBB
UlJBWV9TSVpFKHRwZ19yZXNfeDFlODAxMDApLAo+ICt9OwoKLS0gClNhc2hpa28gQUkgcmV2aWV3
IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MTAxMy1oYXdpLW1haWxpLWNh
bXNzLXYyLTAtZmM5MzIyMmRhODljQG9zcy5xdWFsY29tbS5jb20/cGFydD02CgotLSAKbGludXgt
cGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
