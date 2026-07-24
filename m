Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02E83C531C9
	for <linux-phy@archiver.kernel.org>; Fri, 24 Jul 2026 10:12:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6CUhjsHs6VKGoYnoeuulZv2D1oH3hNSKoBEklBzGL9g=; b=VzCVfYO7DvrYG6
	SYGQA72SWr9XTlmnVz/pR3cJH+mZrwAsnyYmX0vwAPBVThfRYTKwUqhColClW2D4pJVNA/0UKMCPL
	vxKsOChSFolk0HPU2bn9qZukzQMfHwWWNH1gIUv+dbwjp/FKQLlGI3kEJQLEqtVmPCeRg0DaeC5Ae
	GWcMaRGYdMLynE4pxwi3YCzQ6lKYM4OKEZPr37V3JrgLSlj8s4XaksYUbepABle+4ul3qEB6ycjRZ
	HOo+TsZPZ6QD+l24/lKENoHZFQcRgWotPyA9JSQiSttB+UISm6YPcHvZISxO1xPYjkfH1lCS9gc5K
	3JCfeOigGqmFyYRProSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnCsz-0000000G2sH-2DU0;
	Fri, 24 Jul 2026 10:12:09 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnCsy-0000000G2sB-3GgH
	for linux-phy@lists.infradead.org;
	Fri, 24 Jul 2026 10:12:08 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 85FC1411F4;
	Fri, 24 Jul 2026 10:12:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DD91E1F000E9;
	Fri, 24 Jul 2026 10:12:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784887928;
	bh=xOKOHFc9g0k1D9WtwT+0BuB86ggXpOKqrNZ51pBDOAw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=kldd6Wx17Pj+PihF0qUQ93MWiweDx0M2SL/1i3NoIXzlxRA7SRgd3mVvl3Sy7fGqA
	 LdqsROeZxVyUyICBygVk29H95bxtBz+wBtcOFgFjOSbi8thPF4MfUO+JnRpsOMrjFI
	 LUQtb/WR2n8aT9LasW1SGuRjwMXlgWISoql5m5dkh8aRkhwiEipARL6MRvO0wxV6Uw
	 D7rinvS2Nr8p05QkGNiV7k1LVVr4mhr7tZTh4AeAe15VMrbs3ZDFGWnXSBY0uPn6jZ
	 vO2CnE/aytxj8ZRAaZhhq8lzc4bV3ABVV0uJ+a2MaBeFRVMP96AxFTN1aXBrH2kKtr
	 zrfFG9r8EOY+w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 2/6] phy: qcom: qmp-pcie: Add QMP PCIe Multi-PHY
 driver
To: "Qiang Yu" <qiang.yu@oss.qualcomm.com>
Cc: robh@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, vkoul@kernel.org, linux-phy@lists.infradead.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260724-glymur_linkmode_0724-v7-2-65c8469c6b65@oss.qualcomm.com>
References: <20260724-glymur_linkmode_0724-v7-0-65c8469c6b65@oss.qualcomm.com>
 <20260724-glymur_linkmode_0724-v7-2-65c8469c6b65@oss.qualcomm.com>
Date: Fri, 24 Jul 2026 10:12:07 +0000
Message-Id: <20260724101207.DD91E1F000E9@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIE1pc3NpbmcgQUhCIGNs
b2NrIGBjZmdfYWhiX2JgIChhbmQgYHJjaG5nX2JgKSBpbiBYOCBtb2RlIGNsb2NrIGxpc3Qgd2ls
bCBsaWtlbHkgY2F1c2UgYnVzIGhhbmdzIHdoZW4gcG9sbGluZyBgcG9ydF9iYCByZWdpc3RlcnMu
Ci0gW0xvd10gVW51c2VkIGBwaXBlX2Nsa19maXhlZGAgZmllbGQgaW4gYHN0cnVjdCBxbXBfcGNp
ZWAuCi0tCgotLS0gUGF0Y2ggWzJdOiBbUEFUQ0ggdjcgMi82XSBwaHk6IHFjb206IHFtcC1wY2ll
OiBBZGQgUU1QIFBDSWUgTXVsdGktUEhZIGRyaXZlciAtLS0KY29tbWl0IGY2YWM3MTBiMzIxOWM1
NGZjNzU1YTgyNDc0ZjYwYmEwYjMyMjgxYmIKQXV0aG9yOiBRaWFuZyBZdSA8cWlhbmcueXVAb3Nz
LnF1YWxjb21tLmNvbT4KCnBoeTogcWNvbTogcW1wLXBjaWU6IEFkZCBRTVAgUENJZSBNdWx0aS1Q
SFkgZHJpdmVyCiAgICAKQWRkIGEgZGVkaWNhdGVkIGRyaXZlciBmb3IgUU1QIFBDSWUgUEhZIGhh
cmR3YXJlIGJsb2NrcyB0aGF0IHN1cHBvcnQKbXVsdGlwbGUgbGluayB0b3BvbG9naWVzIChlLmcu
IHg4IG9yIHg0K3g0KS4gTWF0Y2ggZGF0YSBjYXJyaWVzIGEgcGVyLW1vZGUKY2ZnIHRhYmxlOyBx
bXBfcGNpZV9tdWx0aXBoeV9wcm9iZSgpIHJlYWRzIHRoZSBjdXJyZW50IGxpbmsgbW9kZSBhbmQK
aW5zdGFudGlhdGVzIG9uZSBxbXBfcGNpZSBwZXIgc3ViLVBIWS4KCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1wY2llLW11bHRpcGh5LmMgYi9kcml2ZXJz
L3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtcGNpZS1tdWx0aXBoeS5jCj4gbmV3IGZpbGUgbW9k
ZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAwMDAwLi4yMTBjOTUxZTk5N2QyCj4gLS0tIC9kZXYv
bnVsbAo+ICsrKyBiL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1wY2llLW11bHRp
cGh5LmMKWyAuLi4gXQo+ICtzdHJ1Y3QgcW1wX3BjaWUgewo+ICsJc3RydWN0IGRldmljZSAqZGV2
Owo+ICsJY29uc3Qgc3RydWN0IHFtcF9waHlfY2ZnICpjZmc7Cj4gKwl2b2lkIF9faW9tZW0gKipi
YXNlOwo+ICsJc3RydWN0IGNsa19idWxrX2RhdGEgKmNsa3M7Cj4gKwlzdHJ1Y3QgY2xrX2J1bGtf
ZGF0YSAqcGlwZV9jbGtzOwo+ICsJc3RydWN0IHJlc2V0X2NvbnRyb2xfYnVsa19kYXRhICpub2Nz
cl9yZXNldHM7Cj4gKwlzdHJ1Y3QgcmVndWxhdG9yX2J1bGtfZGF0YSAqdnJlZ3M7Cj4gKwlzdHJ1
Y3QgZGV2aWNlICoqcGRfZGV2czsKPiArCXN0cnVjdCBjbGtfZml4ZWRfcmF0ZSBwaXBlX2Nsa19m
aXhlZDsKCltTZXZlcml0eTogTG93XQpJcyB0aGlzIHBpcGVfY2xrX2ZpeGVkIGZpZWxkIHVzZWQg
YW55d2hlcmU/CgpJdCBhcHBlYXJzIHRoZSBkcml2ZXIgZHluYW1pY2FsbHkgYWxsb2NhdGVzIGFu
IGFycmF5IG9mIHN0cnVjdCBjbGtfZml4ZWRfcmF0ZQppbiBxbXBfZGF0YS0+cGlwZV9vdXRfY2xr
cyBpbnN0ZWFkLCBzbyB0aGlzIG1pZ2h0IGJlIGFuIHVudXNlZCBsZWZ0b3ZlciBmcm9tCnRoZSBz
aW5nbGUtUEhZIGRyaXZlci4KCj4gK307ClsgLi4uIF0KPiArc3RhdGljIGNvbnN0IGNoYXIgKiBj
b25zdCBnbHltdXJfcGNpZXBoeV9jbGtfbFtdID0gewo+ICsJImF1eCIsICJjZmdfYWhiIiwgInJl
ZiIsICJyY2huZyIsICJwaHlfYl9hdXgiLAo+ICt9OwoKW1NldmVyaXR5OiBIaWdoXQpEb2VzIHRo
aXMgY2xvY2sgbGlzdCBmb3IgWDggbW9kZSBuZWVkIHRvIGluY2x1ZGUgY2ZnX2FoYl9iIGFuZCBy
Y2huZ19iPwoKSW4gWDggbW9kZSwgZ2x5bXVyX3FtcF9nZW41eDhfcGNpZXBoeV9jZmcgc2V0cyBu
dW1fcmVncyA9IDIgYW5kIGluY2x1ZGVzIGJvdGgKInBvcnRfYSIgYW5kICJwb3J0X2IiLiBXaGVu
IHFtcF9wY2llX3Bvd2VyX29uKCkgcnVucywgaXQgaXRlcmF0ZXMgb3ZlciBib3RoCnN1Yi1QSFlz
OgoKCWZvciAoaSA9IDA7IGkgPCBjZmctPm51bV9yZWdzOyBpKyspIHsKCQlzdGF0dXMgPSBxbXAt
PmJhc2VbaV0gKyBvZmZzLT5wY3MgKyBjZmctPnJlZ3NbUVBIWV9QQ1NfU1RBVFVTXTsKCQlyZXQg
PSByZWFkbF9wb2xsX3RpbWVvdXQoc3RhdHVzLCB2YWwsICEodmFsICYgY2ZnLT5waHlfc3RhdHVz
KSwgMjAwLAoKSWYgY2ZnX2FoYl9iIGlzIG5vdCBlbmFibGVkLCByZWFkaW5nIHBvcnRfYidzIFBD
UyBzdGF0dXMgcmVnaXN0ZXIgYXQKcW1wLT5iYXNlWzFdIGNvdWxkIGNhdXNlIGFuIHVuY2xvY2tl
ZCBNTUlPIGFjY2Vzcywgd2hpY2ggdHlwaWNhbGx5IGxlYWRzIHRvIGEKc3luY2hyb25vdXMgZXh0
ZXJuYWwgYWJvcnQgb24gdGhlc2UgcGxhdGZvcm1zLgoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3
IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDcyNC1nbHltdXJfbGlua21vZGVf
MDcyNC12Ny0wLTY1Yzg0NjljNmI2NUBvc3MucXVhbGNvbW0uY29tP3BhcnQ9MgoKLS0gCmxpbnV4
LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
