Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80659C43458
	for <linux-phy@archiver.kernel.org>; Mon, 29 Jun 2026 09:45:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S/l/Mvgb/hLm5cxuH+WwHWO0uvzNdPz2TMcVD7Djl6U=; b=CFdP9xOq/PoyDy
	qIridvqYT7YSycV+HBhQdVKw7C0FDiJeiLLEeHUx/tdkULUjuUvEgm7rojU6FjMJ4NfGqGqIBghIA
	w1BQj4ObwRJgz0tL0UdBLa6jqNtuXA5qzHTDZ63mQuyflyum+73qUXiEsPSjaN8kCeBXnboO6CIqp
	Xl9PrSBmjxqRVY2xGVtF3uosdr/9fd84e0nR4Mp2OnLuuXnLXNEnj07fXad6gO2F+Aj62Vgy6nYmf
	hFeemASKQjUBbQii5RxDcnAjzF5+gBBUCEoBDrO4Bx8cL5wal7GzCXAqFVTJOrguvu3MtK1I0J3E2
	atE1CvVev9L83mnp/B9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we8YT-0000000EDpO-0wyn;
	Mon, 29 Jun 2026 09:45:29 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we8YR-0000000EDoB-0ZuO
	for linux-phy@lists.infradead.org;
	Mon, 29 Jun 2026 09:45:27 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 92E01600DA;
	Mon, 29 Jun 2026 09:45:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D07981F000E9;
	Mon, 29 Jun 2026 09:45:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782726326;
	bh=E7gPGaM9RQeO3jkA4ZoBpPSkAnV3cLriNrHnyZMMg9k=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=S1Ov1fTaqr9KWXr8gCRZGKtMtdK8Ro5YRdeW9JDyOeJwIZ72xJ9L31y7SgZd5shGE
	 cPs6pcYZhB3I+RLvcJYclwmLJ/0RQrk9GXjHQILJxw4aukRuRQm3FcPS6Q004wYvpU
	 JJZghO7SAjnb3oa7k0vNtScZ5MPdN5bcBN2k1YGZ+ymNrvo2VM8kC6/TSN4nUCIxWF
	 9Fr2Rj6BUfZWX53P3OrmJE+WW8vTeSiQ25gdhdWK7fK6PtPn7ihEK8zsi9EfatpaEJ
	 XMP1LCrmHtwn9KKsBrtweIJDFt+zBb7Ltz0X3cby3ieeBUXI+ZuL1DkFZpXXIS78cf
	 8hvXologSynaw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 6/8] phy: tegra: xusb: Add Tegra264 support
To: "Wayne Chang" <waynec@nvidia.com>
Cc: olteanv@gmail.com, vkoul@kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260629093406.1118594-7-waynec@nvidia.com>
References: <20260629093406.1118594-1-waynec@nvidia.com>
 <20260629093406.1118594-7-waynec@nvidia.com>
Date: Mon, 29 Jun 2026 09:45:25 +0000
Message-Id: <20260629094525.D07981F000E9@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gTWlzc2luZyBgLmhh
c19wZXJfcGFkX3Rlcm0gPSB0cnVlYCBmb3IgYHRlZ3JhMjY0X3h1c2JfcGFkY3RsX3NvY2AgbGVh
ZHMgdG8gaW5jb3JyZWN0IFVTQjIgUEhZIHRlcm1pbmF0aW9uIGNhbGlicmF0aW9uLgotIFtMb3dd
IE1pc3NpbmcgcHJvdG90eXBlIGNvbXBpbGVyIHdhcm5pbmcgZm9yIGB0ZWdyYTI2NF94dXNiX3Bh
ZGN0bF9zb2NgIHdoZW4gaXRzIHNwZWNpZmljIGNvbmZpZyBpcyBkaXNhYmxlZC4KLS0KCmNvbW1p
dCAyMmIwZmQyOGFhOTRhNTUyMzE2MDZjOGNiYmYyOGVmZmU1MGYzZjM1CkF1dGhvcjogV2F5bmUg
Q2hhbmcgPHdheW5lY0BudmlkaWEuY29tPgoKcGh5OiB0ZWdyYTogeHVzYjogQWRkIFRlZ3JhMjY0
IHN1cHBvcnQKICAgIApBZGQgc3VwcG9ydCBmb3IgdGhlIFhVU0IgcGFkIGNvbnRyb2xsZXIgZm9y
IFRlZ3JhMjY0LiBNb3N0IG9mIHRoZSBUZWdyYTI2NApYVVNCIFBBRENUTCByZWdpc3RlcnMgZGVm
aW5pdGlvbiBhbmQgcHJvZ3JhbW1pbmcgc2VxdWVuY2UgYXJlIHRoZSBzYW1lIGFzClRlZ3JhMjM0
LCBhbmQgdGhleSBjYW4gc2hhcmUgdGhlIHNhbWUgZHJpdmVyLgoKPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9waHkvdGVncmEveHVzYi10ZWdyYTE4Ni5jIGIvZHJpdmVycy9waHkvdGVncmEveHVzYi10
ZWdyYTE4Ni5jCj4gaW5kZXggOWMxYmNkNGE3MmFjNi4uM2ViNjBlZDA5YjY4NyAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL3BoeS90ZWdyYS94dXNiLXRlZ3JhMTg2LmMKPiArKysgYi9kcml2ZXJzL3Bo
eS90ZWdyYS94dXNiLXRlZ3JhMTg2LmMKWyAuLi4gXQo+IEBAIC0xNzUzLDYgKzE3NTQsMjkgQEAg
Y29uc3Qgc3RydWN0IHRlZ3JhX3h1c2JfcGFkY3RsX3NvYyB0ZWdyYTIzNF94dXNiX3BhZGN0bF9z
b2MgPSB7Cj4gIAkuaGFzX3Blcl9wYWRfdGVybSA9IHRydWUsCj4gIH07Cj4gIEVYUE9SVF9TWU1C
T0xfR1BMKHRlZ3JhMjM0X3h1c2JfcGFkY3RsX3NvYyk7Cj4gKwo+ICtjb25zdCBzdHJ1Y3QgdGVn
cmFfeHVzYl9wYWRjdGxfc29jIHRlZ3JhMjY0X3h1c2JfcGFkY3RsX3NvYyA9IHsKPiArCS5udW1f
cGFkcyA9IEFSUkFZX1NJWkUodGVncmExOTRfcGFkcyksCj4gKwkucGFkcyA9IHRlZ3JhMTk0X3Bh
ZHMsCj4gKwkucG9ydHMgPSB7Cj4gKwkJLnVzYjIgPSB7Cj4gKwkJCS5vcHMgPSAmdGVncmExODZf
dXNiMl9wb3J0X29wcywKPiArCQkJLmNvdW50ID0gNCwKPiArCQl9LAo+ICsJCS51c2IzID0gewo+
ICsJCQkub3BzID0gJnRlZ3JhMTg2X3VzYjNfcG9ydF9vcHMsCj4gKwkJCS5jb3VudCA9IDQsCj4g
KwkJfSwKPiArCX0sCj4gKwkub3BzID0gJnRlZ3JhMTg2X3h1c2JfcGFkY3RsX29wcywKPiArCS5z
dXBwbHlfbmFtZXMgPSB0ZWdyYTE5NF94dXNiX3BhZGN0bF9zdXBwbHlfbmFtZXMsCj4gKwkubnVt
X3N1cHBsaWVzID0gQVJSQVlfU0laRSh0ZWdyYTE5NF94dXNiX3BhZGN0bF9zdXBwbHlfbmFtZXMp
LAo+ICsJLnN1cHBvcnRzX2dlbjIgPSB0cnVlLAo+ICsJLnBvbGxfdHJrX2NvbXBsZXRlZCA9IHRy
dWUsCj4gKwkudHJrX2h3X21vZGUgPSB0cnVlLAo+ICsJLnN1cHBvcnRzX2xwX2NmZ19lbiA9IHRy
dWUsCj4gK307CgpbU2V2ZXJpdHk6IE1lZGl1bV0KU2luY2UgdGhlIGNvbW1pdCBtZXNzYWdlIHN0
YXRlcyBUZWdyYTI2NCBzaGFyZXMgdGhlIHNhbWUgcHJvZ3JhbW1pbmcgc2VxdWVuY2UKYXMgVGVn
cmEyMzQsIHNob3VsZCB0aGlzIHN0cnVjdCBhbHNvIGluY2x1ZGUgLmhhc19wZXJfcGFkX3Rlcm0g
PSB0cnVlPwoKV2l0aG91dCB0aGlzIGZsYWcsIHRlZ3JhMTg2X3h1c2JfcmVhZF9mdXNlX2NhbGli
cmF0aW9uKCkgd2lsbCBkZWZhdWx0IHRvCmNvcHlpbmcgcGFkIDAncyBjYWxpYnJhdGlvbiB0byBw
YWRzIDEtMyBpbnN0ZWFkIG9mIHJlYWRpbmcgdGhlaXIgc3BlY2lmaWMKaGFyZHdhcmUgdmFsdWVz
LgoKPiArRVhQT1JUX1NZTUJPTF9HUEwodGVncmEyNjRfeHVzYl9wYWRjdGxfc29jKTsKPiAgI2Vu
ZGlmCj4gIAo+ICBNT0RVTEVfQVVUSE9SKCJKQyBLdW8gPGpja3VvQG52aWRpYS5jb20+Iik7Cgpb
IC4uLiBdCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS90ZWdyYS94dXNiLmggYi9kcml2ZXJz
L3BoeS90ZWdyYS94dXNiLmgKPiBpbmRleCA3NzYwOWU1NGRlNjZhLi5kOGQ3OTlkOWU3NTIyIDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5L3RlZ3JhL3h1c2IuaAo+ICsrKyBiL2RyaXZlcnMvcGh5
L3RlZ3JhL3h1c2IuaAo+IEBAIC01MTQsNSArNTE0LDggQEAgZXh0ZXJuIGNvbnN0IHN0cnVjdCB0
ZWdyYV94dXNiX3BhZGN0bF9zb2MgdGVncmExOTRfeHVzYl9wYWRjdGxfc29jOwo+ICAjaWYgZGVm
aW5lZChDT05GSUdfQVJDSF9URUdSQV8yMzRfU09DKQo+ICBleHRlcm4gY29uc3Qgc3RydWN0IHRl
Z3JhX3h1c2JfcGFkY3RsX3NvYyB0ZWdyYTIzNF94dXNiX3BhZGN0bF9zb2M7Cj4gICNlbmRpZgo+
ICsjaWYgZGVmaW5lZChDT05GSUdfQVJDSF9URUdSQV8yNjRfU09DKQo+ICtleHRlcm4gY29uc3Qg
c3RydWN0IHRlZ3JhX3h1c2JfcGFkY3RsX3NvYyB0ZWdyYTI2NF94dXNiX3BhZGN0bF9zb2M7Cj4g
KyNlbmRpZgoKW1NldmVyaXR5OiBMb3ddCkRvZXMgdGhpcyBjcmVhdGUgYSBtaXNzaW5nIHByb3Rv
dHlwZSB3YXJuaW5nICgtV21pc3NpbmctcHJvdG90eXBlcykgd2hlbgpidWlsZGluZyB3aXRoIENP
TkZJR19BUkNIX1RFR1JBXzE5NF9TT0M9eSBidXQgQ09ORklHX0FSQ0hfVEVHUkFfMjY0X1NPQz1u
PwoKSW4geHVzYi10ZWdyYTE4Ni5jLCB0ZWdyYTI2NF94dXNiX3BhZGN0bF9zb2MgaXMgZGVmaW5l
ZCB1bmNvbmRpdGlvbmFsbHkgaWYKYW55IG9mIHRoZSAxOTQsIDIzNCwgb3IgMjY0IGNvbmZpZ3Mg
YXJlIGVuYWJsZWQuIEhvd2V2ZXIsIHRoZSBleHRlcm4KZGVjbGFyYXRpb24gaGVyZSBpbiB4dXNi
LmggaXMgb25seSB2aXNpYmxlIGlmIENPTkZJR19BUkNIX1RFR1JBXzI2NF9TT0MgaXMgc2V0LgoK
LS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8y
MDI2MDYyOTA5MzQwNi4xMTE4NTk0LTEtd2F5bmVjQG52aWRpYS5jb20/cGFydD02CgotLSAKbGlu
dXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
