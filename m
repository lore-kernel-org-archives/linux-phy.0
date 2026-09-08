Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF52AC79F99
	for <linux-phy@archiver.kernel.org>; Tue,  8 Sep 2026 14:16:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IDolRJXkpB0UyO0mpX3jkOMgwPqd4goMPaGsQGxzx3A=; b=rJ5A5D+D0e2Egc
	0msNmvdB9zcu3wJGCCeYVNFi7yBG6vF7cwA2Db/InUnhMWdLbun8iGbDbVSwkoPptiNIDHNH9LfsP
	c2kJMnvqqKDHtaCYZOl/gsHah4NfnXlqb1CVDFmPFGsEM7et6T9atr3DFHZznpz+IK+Idl4HmVs8C
	NwRsCv0Pfjfpc+8MrBdQi/uMyNoi5Sk2CTJzr+t+HWwl6ZxpoRVBHX0E0VR2NNtOwNRRyUmUbhXX/
	mUpnnPGBkxUnhEYdnwKNznPHYTylxnypSCPUt/0hQDXFzuDEsU0Lp59G+szUKghLTMnKmeUklnerb
	98Xz6MlrtYm3BfuzQl3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3wcP-00000009FlW-1tS2;
	Tue, 08 Sep 2026 14:16:13 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3wcM-00000009FlN-2Jlc
	for linux-phy@lists.infradead.org;
	Tue, 08 Sep 2026 14:16:12 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 07ACF419A9;
	Tue,  8 Sep 2026 14:16:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A87071F00A3A;
	Tue,  8 Sep 2026 14:16:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788876969;
	bh=Vg6HFdoy2lqid5sO2UCLtycX1H61QV+yfDXpuqFHrjI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=dvvNz4/q22z40SUWmUUKoOemT96kW5+3WgYuUDuARkKeZoUWXv4jlOb+/eqDje6Fm
	 zCVdnx47KwhbzzY9jVH+6vx1Wr1xRBPailL+WFicH8D9OrBi3Uw9BKNL+2fPWzXCMo
	 1JDto50LY9SlwL6cWH5HddXnh/pXJgoODy+bVBv/u5CiNmkwvOJxTePpybclDvWeZu
	 Y9yzLzxN+hJiB2cY4Lr/aRW34iccw0VaSmMfoqi5jAKPut1CCy7FcgcN7IGYQ63Eev
	 4PqS5fB49Wnt6aK7LVIFigOWCwcyxJrcKFQSyizasjJTL4I31tPjcvOO6nTEAlQx08
	 m3Pecy+0yR+aA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 4/9] phy: qualcomm: qmp-combo: Add hardware-specific
 DP PHY config fields
To: "Nabige Aala" <nabige.aala@oss.qualcomm.com>
Cc: neil.armstrong@linaro.org, olteanv@gmail.com, linux-phy@lists.infradead.org, vkoul@kernel.org
In-Reply-To: <20260908-glymur-phy-v3-v4-4-ff22e5150538@oss.qualcomm.com>
References: <20260908-glymur-phy-v3-v4-0-ff22e5150538@oss.qualcomm.com>
 <20260908-glymur-phy-v3-v4-4-ff22e5150538@oss.qualcomm.com>
Date: Tue, 08 Sep 2026 14:16:09 +0000
Message-Id: <20260908141609.A87071F00A3A@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFRoZSBgZHBfbW9kZV9p
Z25vcmVfcmV2ZXJzZWAgZmxhZyBpcyBub3QgY29uc2lzdGVudGx5IGhvbm9yZWQgYWNyb3NzIGFs
bCBEUCBjb25maWd1cmF0aW9uIGZ1bmN0aW9ucywgbGVhZGluZyB0byBhIGJyb2tlbiwgaGFsZi1y
ZXZlcnNlZCBQSFkgc3RhdGUgd2hlbiBhIHBsYXRmb3JtIHJlcXVlc3RzIHRvIGlnbm9yZSB0aGUg
b3JpZW50YXRpb24uCi0tCgpjb21taXQgNjViMjU3MmU5Njk2YTIwMWUzOTI5ZTdjNWU5ZWMxY2Y5
MTA3YmJiNQpBdXRob3I6IFJpdGVzaCBLdW1hciA8cml0ZXNoLmt1bWFyQG9zcy5xdWFsY29tbS5j
b20+CgpwaHk6IHF1YWxjb21tOiBxbXAtY29tYm86IEFkZCBoYXJkd2FyZS1zcGVjaWZpYyBEUCBQ
SFkgY29uZmlnIGZpZWxkcwoKQWRkIGRwX2F1eF9jZmcyLCBkcF9waHlfY2ZnMSwgYW5kIGRwX21v
ZGVfaWdub3JlX3JldmVyc2UgZmllbGRzIHRvCnFtcF9waHlfY2ZnIHRvIGFsbG93IGhhcmR3YXJl
LXNwZWNpZmljIERQIFBIWSByZWdpc3RlciB2YWx1ZXMgdG8gYmUKc3BlY2lmaWVkIHBlci1wbGF0
Zm9ybSByYXRoZXIgdGhhbiBoYXJkY29kZWQgaW4gdGhlIGNvbmZpZ3VyZSBmdW5jdGlvbnMuCgpE
ZWZpbmUgbmFtZWQgY29uc3RhbnRzIFFTRVJERVNfRFBfUEhZX0FVWF9DRkcyX1Y0NTYvVjggYW5k
ClFTRVJERVNfRFBfUEhZX0NGRzFfVjQ1Ni9WOCBmb3IgYmV0dGVyIHJlYWRhYmlsaXR5IGFuZCBt
YWludGFpbmFiaWxpdHkuCgpQb3B1bGF0ZSB0aGUgbmV3IGZpZWxkcyBpbiBhbGwgZXhpc3Rpbmcg
RFAgUEhZIGNmZyBzdHJ1Y3R1cmVzOgotIFY0NTYtYmFzZWQgcGxhdGZvcm1zIChzYXIyMTMwcCwg
c2M4MTgweCwgc2M4MjgweHAsIHgxZTgwMTAwLCBzbTgyNTAsCiAgc204MzUwLCBzbTg0NzUsIHNt
ODU1MCwgc204NjUwLCBzbTg3NTApIHVzZSBWNDU2IGNvbnN0YW50cwotIEdseW11ciAoVjgpIHVz
ZXMgVjggY29uc3RhbnRzIGFuZCBzZXRzIGRwX21vZGVfaWdub3JlX3JldmVyc2UgPSB0cnVlCgpV
cGRhdGUgcW1wX2NvbWJvX2NvbmZpZ3VyZV9kcF9tb2RlKCkgdG8gaG9ub3IgZHBfbW9kZV9pZ25v
cmVfcmV2ZXJzZSwKc28gR2x5bXVyIGNhbiBieXBhc3MgVHlwZUMgb3JpZW50YXRpb24tYmFzZWQg
bGFuZSByZXZlcnNhbC4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1x
Y29tLXFtcC1jb21iby5jIGIvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLWNvbWJv
LmMKPiBpbmRleCAxNmNjYWJkOTQ1ZjcxLi41M2ZjMWQxZTg0OTQ4IDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1jb21iby5jCj4gKysrIGIvZHJpdmVycy9w
aHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLWNvbWJvLmMKClsgLi4uIF0KCj4gQEAgLTM1MzksNyAr
MzU3OSw5IEBAIHN0YXRpYyB2b2lkIHFtcF92M19jb25maWd1cmVfZHBfdHgoc3RydWN0IHFtcF9j
b21ibyAqcW1wKQo+ICAKPiAgc3RhdGljIGJvb2wgcW1wX2NvbWJvX2NvbmZpZ3VyZV9kcF9tb2Rl
KHN0cnVjdCBxbXBfY29tYm8gKnFtcCkKPiAgewo+IC0JYm9vbCByZXZlcnNlID0gKHFtcC0+b3Jp
ZW50YXRpb24gPT0gVFlQRUNfT1JJRU5UQVRJT05fUkVWRVJTRSk7Cj4gKwljb25zdCBzdHJ1Y3Qg
cW1wX3BoeV9jZmcgKmNmZyA9IHFtcC0+Y2ZnOwo+ICsJYm9vbCByZXZlcnNlID0gKHFtcC0+b3Jp
ZW50YXRpb24gPT0gVFlQRUNfT1JJRU5UQVRJT05fUkVWRVJTRSkgJiYKPiArCQkgICAgICAgIWNm
Zy0+ZHBfbW9kZV9pZ25vcmVfcmV2ZXJzZTsKCltTZXZlcml0eTogSGlnaF0KRG9lcyB0aGlzIGln
bm9yZSBsb2dpYyBhbHNvIG5lZWQgdG8gYmUgYXBwbGllZCBpbiBxbXBfdjRfY29uZmlndXJlX2Rw
X3BoeSgpCmFuZCBxbXBfdjhfY29uZmlndXJlX2RwX3BoeSgpPwoKQ3VycmVudGx5LCB0aG9zZSBm
dW5jdGlvbnMgc3RpbGwgaW5kZXBlbmRlbnRseSBldmFsdWF0ZSB3aGV0aGVyIHRvIHJldmVyc2U6
Cgpkcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtY29tYm8uYzpxbXBfdjhfY29uZmln
dXJlX2RwX3BoeSgpIHsKICAgIC4uLgogICAgYm9vbCByZXZlcnNlID0gKHFtcC0+b3JpZW50YXRp
b24gPT0gVFlQRUNfT1JJRU5UQVRJT05fUkVWRVJTRSk7CiAgICAuLi4KfQoKSWYgYSBwbGF0Zm9y
bSBzZXRzIGRwX21vZGVfaWdub3JlX3JldmVyc2UgPSB0cnVlIGFuZCB0aGUgY2FibGUgaXMgaW5z
ZXJ0ZWQgaW4KcmV2ZXJzZSwgcW1wX2NvbWJvX2NvbmZpZ3VyZV9kcF9tb2RlKCkgd2lsbCBjb3Jy
ZWN0bHkgc2tpcCBsYW5lIHJldmVyc2FsLgoKSG93ZXZlciwgYmVjYXVzZSBxbXBfdjhfY29uZmln
dXJlX2RwX3BoeSgpIGFuZCBxbXBfdjRfY29uZmlndXJlX2RwX3BoeSgpIGRvCm5vdCBob25vciB0
aGlzIGZsYWcsIHRoZXkgYXBwbHkgdGhlIHJldmVyc2UgbG9naWMgZm9yIGJpYXMgYW5kIGRyaXZl
ciBlbmFibGVzLAp3aGljaCBtaXNtYXRjaGVzIHRoZSBhY3RpdmUgbGFuZXMuCgpDb3VsZCB0aGlz
IHB1dCB0aGUgUEhZIGludG8gYW4gaW5jb25zaXN0ZW50IHN0YXRlIHdoZXJlIGFjdGl2ZSB0cmFu
c21pdHRpbmcKbGFuZXMgcmVjZWl2ZSB0aGUgcG93ZXJlZC1kb3duIGJpYXMgdmFsdWUgKDB4M2Yp
IGFuZCB0aGUgcG93ZXJlZC1kb3duIGxhbmVzCnJlY2VpdmUgdGhlIGFjdGl2ZSBiaWFzIHZhbHVl
ICgweDE1KSwgY2F1c2luZyBsaW5rIHRyYWluaW5nIHRvIGZhaWw/Cgo+ICAJY29uc3Qgc3RydWN0
IHBoeV9jb25maWd1cmVfb3B0c19kcCAqZHBfb3B0cyA9ICZxbXAtPmRwX29wdHM7Cj4gIAl1MzIg
dmFsOwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRj
aHNldC8yMDI2MDkwOC1nbHltdXItcGh5LXYzLXY0LTAtZmYyMmU1MTUwNTM4QG9zcy5xdWFsY29t
bS5jb20/cGFydD00CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1waHkK
