Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C280BC43327
	for <linux-phy@archiver.kernel.org>; Wed,  1 Jul 2026 17:01:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S+aLJQg54GPC2g8+XR+HQ2g/E1lNEWAurKnuiQg+4/I=; b=NumrU1he4gEOoN
	0MpoR2rcsJSAsuJZDu4FEkMMxkH8w+sSceCBkHN+ILgf3+gOIH0wpQVxNcZKpffC5uI5+bKGSxAG9
	u2BK3386irh/WOq5TibTbydfAzxj0QBT32cWQ9lODJ0mtrbDHMiW6y8RnQwYK9ELfDP0rAUEC+20F
	csFPlRufauy0SzdMVer14F81Hh8t+Oy4H85gRlElQXtZ16tu+IdSNo5aOF2ZzVa28dPNH+NheDZca
	RJUzkMEvPvt4C95tLdORoDjn7FaB/eCUwgeMeVix2BBicjt2itkyKtR7FUyD/IS8TlyHKaVvZEBGU
	v4YSIfpvqYLJfaXYrdrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weyJj-00000002esp-2M5d;
	Wed, 01 Jul 2026 17:01:43 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weyJi-00000002esd-2hUR
	for linux-phy@lists.infradead.org;
	Wed, 01 Jul 2026 17:01:42 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 1AF22601DD;
	Wed,  1 Jul 2026 17:01:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2D2F71F000E9;
	Wed,  1 Jul 2026 17:01:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782925301;
	bh=hgJ/aZTehbqSM3idN8ia7auX5efqpn+wPKPmB0XlNbo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=JLy/YUiyBEvrGbczdDFt7j/Fh9rh7XVVhRmJqJqjI65ar5uiaqMk8UfeMZT3u6khY
	 N7ACJcP5xteYc7/PwS6LC9kmlFyfITixnapRL9ujWJDPLRMhcFVuuXqpTwypo9+QB4
	 9I/6YeVvlZb0rLgTmo9VEsODUVoSpqGe/nvb5Bc4eY3ipmNfCWdsSXT6Xpifd6luh8
	 EO0c6MY+ZPz6ADbiptrNSwDI+ijmNyE4APQ+aK7okiRQtk705IJwZe+p/1iRD9RG/P
	 zmHRm4ridcwYWS+Dy5HnD2k0Y33Y8SP/F+4mYiCD3aSHsNKB1G27LGod+wIEqNFGGQ
	 2YQ3WKxdBcWPQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 3/4] phy: qcom-qusb2: Add support for Shikra
To: "Krishna Kurapati" <krishna.kurapati@oss.qualcomm.com>
Cc: olteanv@gmail.com, conor+dt@kernel.org, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, neil.armstrong@linaro.org, robh@kernel.org, vkoul@kernel.org
In-Reply-To: <20260701165051.4122259-4-krishna.kurapati@oss.qualcomm.com>
References: <20260701165051.4122259-1-krishna.kurapati@oss.qualcomm.com>
 <20260701165051.4122259-4-krishna.kurapati@oss.qualcomm.com>
Date: Wed, 01 Jul 2026 17:01:40 +0000
Message-Id: <20260701170141.2D2F71F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gTWlzbWF0Y2ggYmV0
d2VlbiBjb21taXQgbWVzc2FnZSBhbmQgY29kZSByZWdhcmRpbmcgdGhlIFNoaWtyYSBpbml0aWFs
aXphdGlvbiBzZXF1ZW5jZSwgaW5kaWNhdGluZyBhIHBvdGVudGlhbGx5IG1pc3NpbmcgU29DLXNw
ZWNpZmljIGluaXQgdGFibGUuCi0tCgpjb21taXQgMzJkNzEzZGFiZjdmYTFiMTIzYmNiM2Q4Zjll
NmFkNDQzOGNkOTVjNApBdXRob3I6IEtyaXNobmEgS3VyYXBhdGkgPGtyaXNobmEua3VyYXBhdGlA
b3NzLnF1YWxjb21tLmNvbT4KCnBoeTogcWNvbS1xdXNiMjogQWRkIHN1cHBvcnQgZm9yIFNoaWty
YQoKVGhpcyBjb21taXQgaW50cm9kdWNlcyB0aGUgUEhZIGNvbmZpZ3VyYXRpb24gYW5kIG1hdGNo
IHRhYmxlIGVudHJpZXMKbmVjZXNzYXJ5IHRvIHN1cHBvcnQgdGhlIFNoaWtyYSBwbGF0Zm9ybSBp
biB0aGUgcWNvbS1xdXNiMiBkcml2ZXIuCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9xdWFs
Y29tbS9waHktcWNvbS1xdXNiMi5jIGIvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcXVz
YjIuYwo+IC0tLSBhL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXF1c2IyLmMKPiArKysg
Yi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xdXNiMi5jClsgLi4uIF0KPiBAQCAtMzgx
LDYgKzM4MSwxOSBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHF1c2IyX3BoeV9jZmcgc2RtNjYwX3Bo
eV9jZmcgPSB7Cj4gIAkuYXV0b3Jlc3VtZV9lbgkgPSBCSVQoMyksCj4gIH07Cj4gIAo+ICtzdGF0
aWMgY29uc3Qgc3RydWN0IHF1c2IyX3BoeV9jZmcgc2hpa3JhX3BoeV9jZmcgPSB7Cj4gKwkudGJs
ICAgICAgICAgICAgPSBxY3M2MTVfaW5pdF90YmwsCgpbU2V2ZXJpdHk6IE1lZGl1bV0KVGhlIGNv
bW1pdCBtZXNzYWdlIHN0YXRlcyAiQWRkIGluaXQgc2VxdWVuY2UgYW5kIHBoeSBjb25maWd1cmF0
aW9uIGZvcgpTaGlrcmEiLCBidXQgdGhpcyBjb25maWd1cmF0aW9uIHJldXNlcyBxY3M2MTVfaW5p
dF90YmwuCgpTaW5jZSBzaGlrcmFfcGh5X2NmZyBkaWZmZXJzIGZyb20gcWNzNjE1IGluIGtleSBo
YXJkd2FyZSBwYXJhbWV0ZXJzIGxpa2UKaGFzX3BsbF90ZXN0LCBzZV9jbGtfc2NoZW1lX2RlZmF1
bHQsIGFuZCBhdXRvcmVzdW1lX2VuLCBkb2VzIHRoZSBTaGlrcmEKUEhZIGFjdHVhbGx5IHJlcXVp
cmUgaXRzIG93biBzcGVjaWZpYyB0dW5pbmcgdGFibGUgdGhhdCBtaWdodCBoYXZlIGJlZW4KYWNj
aWRlbnRhbGx5IG9taXR0ZWQ/CgpJZiByZXVzaW5nIHRoZSBRQ1M2MTUgdGFibGUgaXMgaW50ZW50
aW9uYWwsIGNvdWxkIHRoZSBjb21taXQgbWVzc2FnZSBiZQp1cGRhdGVkIHRvIGNsYXJpZnkgdGhp
cyByZXVzZSBpbnN0ZWFkIG9mIHN0YXRpbmcgYW4gaW5pdCBzZXF1ZW5jZSB3YXMgYWRkZWQ/Cgo+
ICsJLnRibF9udW0gICAgICAgID0gQVJSQVlfU0laRShxY3M2MTVfaW5pdF90YmwpLAo+ICsJLnJl
Z3MgICAgICAgICAgID0gaXBxNjAxOF9yZWdzX2xheW91dCwKPiArCj4gKwkuaGFzX3BsbF90ZXN0
CT0gdHJ1ZSwKPiArCS5zZV9jbGtfc2NoZW1lX2RlZmF1bHQgPSB0cnVlLAo+ICsJLmRpc2FibGVf
Y3RybCAgID0gQ0xBTVBfTl9FTiB8IEZSRUVaSU9fTiB8IFBPV0VSX0RPV04sCj4gKwkubWFza19j
b3JlX3JlYWR5ID0gUExMX0xPQ0tFRCwKPiArCS5hdXRvcmVzdW1lX2VuICAgPSBCSVQoMyksCj4g
KwkudXBkYXRlX3R1bmUxX3dpdGhfZWZ1c2UgPSBmYWxzZSwKPiArfTsKCi0tIApTYXNoaWtvIEFJ
IHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA3MDExNjUwNTEu
NDEyMjI1OS0xLWtyaXNobmEua3VyYXBhdGlAb3NzLnF1YWxjb21tLmNvbT9wYXJ0PTMKCi0tIAps
aW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBz
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
