Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F794CA5FD2
	for <linux-phy@archiver.kernel.org>; Thu,  1 Oct 2026 13:23:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OneRmDpHe+pY+gnpHBZP0ydczKaGAQbaNZ/3/yESrjE=; b=BQtcOS2Nqk8vpQ
	WqXtzo2lF6Inu+sbn3VUeJvHJgNTsHx3z2W+OI2ZYz5GtSKLitjONY/x1dZ1TD2bkCMN94WH+9gXT
	oyQdplkDpMA2Mz/Zry3iHpom/QZgirU+m+Y6HcAkYDNXLuxlw3Mt7RlW2OTOXANBknQ8yorGy+7k4
	afCtKIoDqt2eyI0mEEXAXT8thvqzyBJUNVJanajtOkEyOowL/cSP1ArzyoKXR0lETLW+ztgEGbQZd
	Ro1rpBSVV9F4ySA7/AyrUKmuO0Sq/PkhpMBth3jNdkMPqAIbscBhNATrw6YQJJCIxi/g83wJf176a
	juX3EltZxpTSKgW2d/9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCGlP-00000009EF2-30De;
	Thu, 01 Oct 2026 13:23:56 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCGlO-00000009EEh-1uUX
	for linux-phy@lists.infradead.org;
	Thu, 01 Oct 2026 13:23:54 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 7496960A52;
	Thu,  1 Oct 2026 13:23:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E78DE1F000FF;
	Thu,  1 Oct 2026 13:23:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790861033;
	bh=vVc2eHRjPisecvdNVsMkoTDnZKMhHoWpQcqSumxwY+c=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=QNNx4GZgPCvdpJFP8Q+0VvyMbLyR90R/nnS/HRrai3a11duDse2iyElmXoLN9va9w
	 OtyAIbpnvKmEITGG5HhFUIVEPKey1SdwCAWZpF1tMlneqrW0/RYIKDdhpO7cNl1gDu
	 y4g6V537xgoUWMYC1Dx516d8xUMDpFcjGeuMTghpzHyA4ys98+BrQEyV2J9yv1Xy5N
	 lcyQirpPWBe1/C2u6Aq4NE/9Lf7ZefXUuNCwoLdwyMr3ZuUCaVteoHVl7wUXp0vn75
	 OkEKwmJp0gpu6ffKmKhU6Q2n3nFjUB1eyqL6a4NChT/ClVw3GFpLbE52LQJ0c9toWL
	 TVb4rDrPnGElw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/4] phy: rockchip: inno-usb2: drop duplicated update
 of rport->suspended
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: olteanv@gmail.com, neil.armstrong@linaro.org, vkoul@kernel.org, linux-phy@lists.infradead.org
In-Reply-To: <20261001-phy-rockchip-inno-usb2-clock-fix-v2-2-e01bf509359e@collabora.com>
References: <20261001-phy-rockchip-inno-usb2-clock-fix-v2-0-e01bf509359e@collabora.com>
 <20261001-phy-rockchip-inno-usb2-clock-fix-v2-2-e01bf509359e@collabora.com>
Date: Thu, 01 Oct 2026 13:23:52 +0000
Message-Id: <20261001132352.E78DE1F000FF@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gcGh5OiByb2NrY2hp
cC1pbm5vLXVzYjI6IGhvdHBsdWcgZGVhZGxvY2sgaWYgcm9ja2NoaXBfdXNiMnBoeV9wb3dlcl9v
ZmYoKSBmYWlscwotLQoKY29tbWl0IGEyZGQ0YmIyZmQ1Mjg1YzNiZWRmOTFkMDgwYTAwMjQyM2Mx
ZTZiNDAKQXV0aG9yOiBTZWJhc3RpYW4gUmVpY2hlbCA8c2ViYXN0aWFuLnJlaWNoZWxAY29sbGFi
b3JhLmNvbT4KCnBoeTogcm9ja2NoaXA6IGlubm8tdXNiMjogZHJvcCBkdXBsaWNhdGVkIHVwZGF0
ZSBvZiBycG9ydC0+c3VzcGVuZGVkCgpyb2NrY2hpcF91c2IycGh5X3Bvd2VyX29uIGFuZCByb2Nr
Y2hpcF91c2IycGh5X3Bvd2VyX29mZiBhbHJlYWR5IHVwZGF0ZQpycG9ydC0+c3VzcGVuZGVkIGlu
IHRoZWlyIHN1Y2Nlc3MgcGF0aC4gSW4gY2FzZSBvZiBlcnJvciBpdCdzIG5vdApzZW5zaWJsZSB0
byB1cGRhdGUgcnBvcnQtPnN1c3BlbmRlZC4gU28gZHJvcCB0aGUgZHVwbGljYXRlZCB1cGRhdGUu
Cgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtaW5uby11
c2IyLmMgYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtaW5uby11c2IyLmMKPiBp
bmRleCAwYWIwNTRlZTg0Y2JlLi5lNGQ4YWJmOTM1YzFiIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
cGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1pbm5vLXVzYjIuYwo+ICsrKyBiL2RyaXZlcnMvcGh5
L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1pbm5vLXVzYjIuYwpbIC4uLiBdCj4gQEAgLTEwMDQsNyAr
MTAwMyw2IEBAIHN0YXRpYyB2b2lkIHJvY2tjaGlwX3VzYjJwaHlfc21fd29yayhzdHJ1Y3Qgd29y
a19zdHJ1Y3QgKndvcmspCj4gIAkJaWYgKCFycG9ydC0+c3VzcGVuZGVkKSB7Cj4gIAkJCWRldl9k
YmcoJnJwb3J0LT5waHktPmRldiwgIkRpc2Nvbm5lY3RlZFxuIik7Cj4gIAkJCXJvY2tjaGlwX3Vz
YjJwaHlfcG93ZXJfb2ZmKHJwb3J0LT5waHkpOwo+IC0JCQlycG9ydC0+c3VzcGVuZGVkID0gdHJ1
ZTsKCltTZXZlcml0eTogTWVkaXVtXQpJZiByb2NrY2hpcF91c2IycGh5X3Bvd2VyX29mZigpIGZh
aWxzLCB3aWxsIHJwb3J0LT5zdXNwZW5kZWQgcmVtYWluIGZhbHNlPwoKPiAgCQl9Cj4gIAo+ICAJ
CS8qCj4gIAkJICogYWN0aXZhdGUgdGhlIGxpbmVzdGF0ZSBkZXRlY3Rpb24gdG8gZ2V0IHRoZSBu
ZXh0IGRldmljZQo+ICAJCSAqIHBsdWctaW4gaXJxLgo+ICAJCSAqLwo+ICAJCXByb3BlcnR5X2Vu
YWJsZShycGh5LT5ncmYsICZycG9ydC0+cG9ydF9jZmctPmxzX2RldF9jbHIsIHRydWUpOwo+ICAJ
CXByb3BlcnR5X2VuYWJsZShycGh5LT5ncmYsICZycG9ydC0+cG9ydF9jZmctPmxzX2RldF9lbiwg
dHJ1ZSk7Cj4gIAo+ICAJCS8qCj4gIAkJICogd2UgZG9uJ3QgbmVlZCB0byByZWFybSB0aGUgZGVs
YXllZCB3b3JrIHdoZW4gdGhlIHBoeSBwb3J0Cj4gIAkJICogaXMgc3VzcGVuZGVkLgo+ICAJCSAq
Lwo+ICAJCW11dGV4X3VubG9jaygmcnBvcnQtPm11dGV4KTsKPiAgCQlyZXR1cm47CgpbU2V2ZXJp
dHk6IE1lZGl1bV0KU2luY2UgdGhlIHN0YXRlIG1hY2hpbmUgZXhpdHMgaGVyZSB3aXRob3V0IHJl
LWFybWluZyB0aGUgZGVsYXllZCB3b3JrLCBhbmQKcnBvcnQtPnN1c3BlbmRlZCBjb3VsZCByZW1h
aW4gZmFsc2UsIGRvZXMgdGhpcyBjYXVzZSBhIHBlcm1hbmVudCBsb3NzIG9mCmhvdHBsdWcgZGV0
ZWN0aW9uPwoKTG9va2luZyBhdCByb2NrY2hpcF91c2IycGh5X2xpbmVzdGF0ZV9pcnEoKSwgdGhl
IElSUSBoYW5kbGVyIHJlZnVzZXMgdG8KcmUtYXJtIHRoZSBzdGF0ZSBtYWNoaW5lIGlmIHRoZSBw
b3J0IGlzIG5vdCBzdXNwZW5kZWQ6CgpzdGF0aWMgaXJxcmV0dXJuX3Qgcm9ja2NoaXBfdXNiMnBo
eV9saW5lc3RhdGVfaXJxKGludCBpcnEsIHZvaWQgKmRhdGEpCnsKCS4uLgoJaWYgKHJwb3J0LT5z
dXNwZW5kZWQgJiYgcnBvcnQtPnBvcnRfaWQgPT0gVVNCMlBIWV9QT1JUX0hPU1QpCgkJcm9ja2No
aXBfdXNiMnBoeV9zbV93b3JrKCZycG9ydC0+c21fd29yay53b3JrKTsKCglyZXR1cm4gSVJRX0hB
TkRMRUQ7Cn0KCklmIGEgVVNCIGRldmljZSBpcyBkaXNjb25uZWN0ZWQgYW5kIHRoZSB1bmRlcmx5
aW5nIHJlZ21hcF93cml0ZSgpIGZhaWxzIGR1ZQp0byBsb2NhbCBoYXJkd2FyZSBvciBNTUlPIGZh
aWx1cmUgZHVyaW5nIHJvY2tjaGlwX3VzYjJwaHlfcG93ZXJfb2ZmKCksCmNvdWxkIHRoaXMgcmVz
dWx0IGluIGEgaG90cGx1ZyBkZWFkbG9jayBmb3IgdGhlIFVTQiBob3N0IHBvcnQ/CgpXaGlsZSB0
aGUgY29kZSBhcHBlYXJzIGludGVuZGVkIHRvIGhhbmRsZSB0aGlzIGVycm9yIHBhdGggZ3JhY2Vm
dWxseSwgaXQKc2VlbXMgdG8gaW5hZHZlcnRlbnRseSBicmVhayB0aGUgc3RhdGUgbWFjaGluZSdz
IHJlLWFybWluZyBjb25kaXRpb24uIFRoaXMKaXNzdWUgYWxzbyBhcHBlYXJzIHRvIHBlcnNpc3Qg
aW4gdGhlIGZpbmFsIGNvbW1pdCBvZiB0aGUgc2VyaWVzLgoKLS0gClNhc2hpa28gQUkgcmV2aWV3
IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MTAwMS1waHktcm9ja2NoaXAt
aW5uby11c2IyLWNsb2NrLWZpeC12Mi0wLWUwMWJmNTA5MzU5ZUBjb2xsYWJvcmEuY29tP3BhcnQ9
MgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5
Cg==
