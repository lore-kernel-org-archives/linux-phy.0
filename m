Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2121C61DBD
	for <linux-phy@archiver.kernel.org>; Fri, 28 Aug 2026 14:16:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GwiLXqquVz0BVDhR9oOhayJi7orbc93DgKIism691LE=; b=XAKjBYukc2ZbiM
	EfkG5m/3/7S2KXIA/K7CPwnVqvkkKXqj3VxJsouhvRTlUx2kGMjD5yzuSb0aBSVZc3Cyi7HsSlMJG
	zRNrvaZKD2PaJEOqG37PFWbtJdjb4+4xY+WYAWdvrLpP40+65NOXLC1NvUPY6Niu9wAEqyBvjnlfr
	efiGAknI4eb9Dm2hRL5g1/irE9EqRnQGIAPC8VMzLbLqmduh4wkevBcQjPbqmeMt1BpSItArw4nG4
	cejuzUCpT9ng8drmWTrrNSGTE7xF2bh7cIK7qPxJ7eGFfU4c/AJiZbcdEu+08iKamVEGYcJhJhD4V
	U14hJcdtJIj0y/1a8CjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzxNE-00000005xaM-2EpX;
	Fri, 28 Aug 2026 14:16:04 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzxND-00000005xa9-2Mxm
	for linux-phy@lists.infradead.org;
	Fri, 28 Aug 2026 14:16:03 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id E94B9601FD;
	Fri, 28 Aug 2026 14:16:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 211751F000E9;
	Fri, 28 Aug 2026 14:16:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787926562;
	bh=gpSQdtmPiduaeeqYTWQNMk4lHtkx6iHZpTrlb/zsQeU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=g+HQadwhzYonTCNZPPr/RlcKSnUTcWmMJ2sEDB64u6Aol13blVuSDPPgE413j9m+D
	 KuAits7gjHyWyrgI0ymaJKAC7643P5uJSnNtDPLmruFaN6G+9MBNUVZsXKFdNnqGoa
	 mYc7tKATfGNIL7ZLsadPhV4q55l/nB+GmAvFI5PR9bHmQgFt+vrb/PDXYMhAHPg52d
	 e76UdZM+6TmQDzDiQywaAaqzdIDSPjRsAo/NvcZA5cEO5/jmp+qlrAEDCrjIvY0uJs
	 ESancyiUBoAd6h6cMmPFTwywBn/uBkmDcyp48q1MhMTStFsrgtNbLZXpQ7G5TaxxpO
	 HCN6n1KGbmxeg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH RFC/DO NOT MERGE 08/12] drm/msm/hdmi: Add support for PM
 OPP table
To: "Krzysztof Kozlowski" <krzysztof.kozlowski@oss.qualcomm.com>
Cc: conor+dt@kernel.org, dri-devel@lists.freedesktop.org, vkoul@kernel.org, robh@kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20260828-drm-msm-hdmi-eliza-v1-8-67843277de17@oss.qualcomm.com>
References: <20260828-drm-msm-hdmi-eliza-v1-0-67843277de17@oss.qualcomm.com>
 <20260828-drm-msm-hdmi-eliza-v1-8-67843277de17@oss.qualcomm.com>
Date: Fri, 28 Aug 2026 14:16:01 +0000
Message-Id: <20260828141602.211751F000E9@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFVuY29uZGl0aW9uYWwg
Y2FsbCB0byBgZGV2bV9wbV9vcHBfc2V0X2Nsa25hbWUoKWAgY2F1c2VzIHByb2JlIGZhaWx1cmUg
b24gcGxhdGZvcm1zIHdpdGhvdXQgdGhlIG9wdGlvbmFsICJleHRwIiBjbG9jay4KLSBbTWVkaXVt
XSBNZW1vcnkgYW5kIHJlZmVyZW5jZSBsZWFrIG9mIGBoZG1pLT5uZXh0X2JyaWRnZWAgb24gZXJy
b3IgcGF0aHMgaW4gcHJvYmUgZHVlIHRvIGJ5cGFzc2VkIGNsZWFudXAuCi0tCgpjb21taXQgNDRm
NWMyMmZmZjUxODg4ZmEwNTc4MDAwYjczOGI4YWJlYTFhMzNiMApBdXRob3I6IEtyenlzenRvZiBL
b3psb3dza2kgPGtyenlzenRvZi5rb3psb3dza2lAb3NzLnF1YWxjb21tLmNvbT4KCmRybS9tc20v
aGRtaTogQWRkIHN1cHBvcnQgZm9yIFBNIE9QUCB0YWJsZQoKVGhpcyBjb21taXQgYWRkcyBQTSBP
UFAgdGFibGUgc3VwcG9ydCB0byBhbGxvdyBzY2FsaW5nIGRvbWFpbiByYWlscyAKdXNpbmcgdGhl
IHBpeGVsIGNsb2NrICgiZXh0cCIpLiBUaGlzIGVuYWJsZXMgcHJvcGVyIHZvdGVzIGRlcGVuZGlu
ZyAKb24gdGhlIHJlcXVlc3RlZCBIRE1JIHBpeGVsIHJhdGUuCgo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vbXNtL2hkbWkvaGRtaS5jIGIvZHJpdmVycy9ncHUvZHJtL21zbS9oZG1pL2hk
bWkuYwo+IGluZGV4IDQ3NDAwNjA4NDYzMzUuLmM0NmYzMDA2M2YxNDIgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL21zbS9oZG1pL2hkbWkuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9t
c20vaGRtaS9oZG1pLmMKWyAuLi4gXQo+IEBAIC0zNjgsNiArMzY4LDE0IEBAIHN0YXRpYyBpbnQg
bXNtX2hkbWlfZGV2X3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gIAkJZ290
byBlcnJfcHV0X2JyaWRnZTsKPiAgCX0KPiAgCj4gKwlyZXQgPSBkZXZtX3BtX29wcF9zZXRfY2xr
bmFtZShkZXYsICJleHRwIik7Cj4gKwlpZiAocmV0KQo+ICsJCXJldHVybiByZXQ7CgpbU2V2ZXJp
dHk6IEhpZ2hdCkRvZXMgdGhpcyBjb2RlIGNhdXNlIGEgcHJvYmUgZmFpbHVyZSBvbiBwbGF0Zm9y
bXMgd2l0aG91dCB0aGUgImV4dHAiIGNsb2NrPwoKRWFybGllciBpbiBtc21faGRtaV9kZXZfcHJv
YmUoKSwgdGhlICJleHRwIiBjbG9jayBpcyBmZXRjaGVkIHVzaW5nIApkZXZtX2Nsa19nZXRfb3B0
aW9uYWwoKToKCiAgICAgICAgaGRtaS0+ZXh0cF9jbGsgPSBkZXZtX2Nsa19nZXRfb3B0aW9uYWwo
ZGV2LCAiZXh0cCIpOwoKSWYgdGhlIHBsYXRmb3JtIGRvZXMgbm90IHByb3ZpZGUgdGhpcyBjbG9j
aywgZGV2bV9wbV9vcHBfc2V0X2Nsa25hbWUoKSAKd2lsbCByZXR1cm4gYW4gZXJyb3IgKHN1Y2gg
YXMgLUVOT0VOVCkuIFJldHVybmluZyB0aGF0IGVycm9yIGhlcmUgd2lsbAp1bmNvbmRpdGlvbmFs
bHkgYWJvcnQgdGhlIHByb2JlLCBwcmV2ZW50aW5nIGRpc3BsYXkgb3V0cHV0IG9uIGhhcmR3YXJl
CndoZXJlIHRoaXMgY2xvY2sgaXMgbGVnaXRpbWF0ZWx5IGFic2VudC4KCltTZXZlcml0eTogTWVk
aXVtXQpBbHNvLCBkb2VzIHRoaXMgY29kZSBsZWFrIHRoZSBoZG1pLT5uZXh0X2JyaWRnZSByZWZl
cmVuY2UgYnkgcmV0dXJuaW5nIApkaXJlY3RseT8KCklmIGRldm1fcG1fb3BwX3NldF9jbGtuYW1l
KCkgZmFpbHMsIHJldHVybmluZyB0aGUgZXJyb3IgZGlyZWN0bHkgc2tpcHMgdGhlIApnb3RvIGVy
cl9wdXRfYnJpZGdlOyBsYWJlbC4gVGhpcyBieXBhc3NlcyB0aGUgY2xlYW51cCBvZiBoZG1pLT5u
ZXh0X2JyaWRnZSwKd2hpY2ggd2FzIGFjcXVpcmVkIGVhcmxpZXIgaW4gbXNtX2hkbWlfZGV2X3By
b2JlKCkgdmlhCm9mX2RybV9nZXRfYnJpZGdlX2J5X2VuZHBvaW50KCkuCgo+ICsKPiArCXJldCA9
IGRldm1fcG1fb3BwX29mX2FkZF90YWJsZShkZXYpOwo+ICsJaWYgKHJldCAmJiByZXQgIT0gLUVO
T0RFVikKPiArCQlyZXR1cm4gZGV2X2Vycl9wcm9iZShkZXYsIHJldCwgImludmFsaWQgT1BQIHRh
YmxlIGluIGRldmljZSB0cmVlXG4iKTsKCltTZXZlcml0eTogTWVkaXVtXQpTaW1pbGFybHksIGRv
ZXMgdGhpcyBkaXJlY3QgcmV0dXJuIGFsc28gbGVhayB0aGUgaGRtaS0+bmV4dF9icmlkZ2UgcmVm
ZXJlbmNlCmlmIGRldm1fcG1fb3BwX29mX2FkZF90YWJsZSgpIGZhaWxzPyAKClVzaW5nIHRoZSBn
b3RvIGVycl9wdXRfYnJpZGdlOyBwYXRoIGluc3RlYWQgb2YgcmV0dXJuaW5nIGRpcmVjdGx5IHdv
dWxkIAplbnN1cmUgdGhlIGJyaWRnZSByZWZlcmVuY2UgaXMgY29ycmVjdGx5IGRyb3BwZWQuCgo+
ICsKPiAgCWlmICghaGRtaS0+aHBkX2dwaW9kKQo+ICAJCURCRygiZmFpbGVkIHRvIGdldCBIUEQg
Z3BpbyIpOwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9w
YXRjaHNldC8yMDI2MDgyOC1kcm0tbXNtLWhkbWktZWxpemEtdjEtMC02Nzg0MzI3N2RlMTdAb3Nz
LnF1YWxjb21tLmNvbT9wYXJ0PTgKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBo
eUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXBoeQo=
