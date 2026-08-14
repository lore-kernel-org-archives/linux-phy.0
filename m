Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78ACDC5CFCF
	for <linux-phy@archiver.kernel.org>; Fri, 14 Aug 2026 02:55:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MVIp22WpQnfnL1EgcfH2E8qzIOnkOAKjZl5ugm+qvlU=; b=tgnyiqlSbOb7EC
	wT3SIDFKWOxZTn/CmHxhXR6imgjsO3HH/+7xMyNsglJCu5MfUAMZiPD9+fff7ZSiC89NJ9U2kxdaA
	ktz1AlxVK/i5mmeq4e4AM9iSF/3D2C8i27qH7pYMPQa+DcOVvS9vKfREhjiREbB6ABUqaaAlwptb5
	9XVJ4r3M4oBZi0H1xf1jAz11ZWJ1IWMVH3EoEaZHYnIkSc1XMnbQIzC6N1VyHJdsd96vCXGBqNyBg
	YzTymun51vK21NdcYm3/DZI6NqOj2y6kNXNRbl1aaP4lGWnXM/2hxUUkra7ummceqnGhfWWhM3w4w
	hZ52iFhiTArmS5A14Fqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wui4c-00000001sdJ-2fdv;
	Fri, 14 Aug 2026 02:55:10 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wui4Y-00000001sd9-1tCE
	for linux-phy@lists.infradead.org;
	Fri, 14 Aug 2026 02:55:09 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id B3A9B43E05;
	Fri, 14 Aug 2026 02:55:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 23AF81F000E9;
	Fri, 14 Aug 2026 02:55:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786676105;
	bh=rwPRnyptNPDBWJdKf9G8LpSZVBgrZjgwStyoBKkGHtA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=WJaAxGxKAAW6iT0Nda+StyRMIjNtuiV1aPrCcHpOz9KXHYG91CDBhW0JafK2SjQZk
	 d+aig03L/Vog0X7dxKLsBX5wb3dyhKV7Pcy04BjUbOOKE6gdSclDLg8vNHx1AXvfv0
	 3LmtXaSPUQLvGQr00Y+U8S3V9HlKNW1qgG0wUhYVwPoTANPU1xTBYLsiGklhanCydX
	 lJGw4eHCgojPC67UVGNOueI+joprdoNxOcfJNY0h/RBwNSKe8RLzvo3Au9j+Gmedrl
	 pxo3w6HKG2cB16yvRor6xiLDESq8p8ajfu5ApMlGflztR3AHwQtk7nsWRgKeD0pJS1
	 rby0O8uawBp1A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v14 11/38] phy: rockchip: usbdp: Support single-lane DP
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: neil.armstrong@linaro.org, linux-phy@lists.infradead.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, devicetree@vger.kernel.org, olteanv@gmail.com
In-Reply-To: <20260813-rockchip-usbdp-cleanup-v14-11-b5ad9c68fa11@collabora.com>
References: <20260813-rockchip-usbdp-cleanup-v14-0-b5ad9c68fa11@collabora.com>
 <20260813-rockchip-usbdp-cleanup-v14-11-b5ad9c68fa11@collabora.com>
Date: Fri, 14 Aug 2026 02:55:01 +0000
Message-Id: <20260814025505.23AF81F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFByZW1hdHVyZWx5IGNh
Y2hpbmcgYHVkcGh5LT5kcF9sYW5lc2AgYmFzZWQgb24gVHlwZS1DIHN0YXRlIGNhdXNlcyB1bmlu
dGVuZGVkIERQIHBoeXNpY2FsIGxhbmUgZW5hYmxlbWVudCB3aGVuIERQIG1vZGUgaXMgbm90IGFj
dGl2ZS4KLS0KCi0tLSBQYXRjaCBbMTFdOiBbUEFUQ0ggdjE0IDExLzM4XSBwaHk6IHJvY2tjaGlw
OiB1c2JkcDogU3VwcG9ydCBzaW5nbGUtbGFuZSBEUCAtLS0KY29tbWl0IDk5OTI1MzVhZDZlYzAx
OGZlN2NkMDQ4MjllZWFhYTIxMWI5YzYwNzgKQXV0aG9yOiBaaGFuZyBZdWJpbmcgPHl1YmluZy56
aGFuZ0Byb2NrLWNoaXBzLmNvbT4KCnBoeTogcm9ja2NoaXA6IHVzYmRwOiBTdXBwb3J0IHNpbmds
ZS1sYW5lIERQCgpJbXBsZW1lbnQgc3VwcG9ydCBmb3IgdXNpbmcganVzdCBhIHNpbmdsZSBEaXNw
bGF5UG9ydCBsaW5lLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJv
Y2tjaGlwLXVzYmRwLmMgYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAu
Ywo+IGluZGV4IDc1NDBjODk3ZGRlMTMuLmM0ZDYyYjIzNGVhODAgMTAwNjQ0Cj4gLS0tIGEvZHJp
dmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMKPiArKysgYi9kcml2ZXJzL3Bo
eS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYwoKWyAuLi4gXQoKPiBAQCAtMTA1MCwxOCAr
MTAzOSwxNyBAQCBzdGF0aWMgaW50IHJrX3VkcGh5X2RwX3BoeV9leGl0KHN0cnVjdCBwaHkgKnBo
eSkKPiAgc3RhdGljIGludCBya191ZHBoeV9kcF9waHlfcG93ZXJfb24oc3RydWN0IHBoeSAqcGh5
KQo+ICB7Cj4gIAlzdHJ1Y3QgcmtfdWRwaHkgKnVkcGh5ID0gcGh5X2dldF9kcnZkYXRhKHBoeSk7
Cj4gLQlpbnQgcmV0LCBkcF9sYW5lczsKPiArCWludCByZXQ7Cj4gIAo+ICAJbXV0ZXhfbG9jaygm
dWRwaHktPm11dGV4KTsKPiAgCj4gLQlkcF9sYW5lcyA9IHJrX3VkcGh5X2RwbGFuZV9nZXQodWRw
aHkpOwo+IC0JcGh5X3NldF9idXNfd2lkdGgocGh5LCBkcF9sYW5lcyk7Cj4gKwlwaHlfc2V0X2J1
c193aWR0aChwaHksIHVkcGh5LT5kcF9sYW5lcyk7Cj4gIAo+ICAJcmV0ID0gcmtfdWRwaHlfcG93
ZXJfb24odWRwaHksIFVEUEhZX01PREVfRFApOwo+ICAJaWYgKHJldCkKPiAgCQlnb3RvIHVubG9j
azsKPiAgCj4gLQlya191ZHBoeV9kcGxhbmVfZW5hYmxlKHVkcGh5LCBkcF9sYW5lcyk7Cj4gKwly
a191ZHBoeV9kcGxhbmVfZW5hYmxlKHVkcGh5LCB1ZHBoeS0+ZHBfbGFuZXMpOwoKW1NldmVyaXR5
OiBIaWdoXQpEb2VzIHRoaXMgY29kZSBpbmFkdmVydGVudGx5IGVuYWJsZSBwaHlzaWNhbCBEUCBs
YW5lcyB3aGVuIERQIG1vZGUgaXMgbm90IGFjdGl2ZT8KCkJ5IHVzaW5nIHRoZSB1bmNvbmRpdGlv
bmFsbHkgY2FjaGVkIHVkcGh5LT5kcF9sYW5lcyBpbnN0ZWFkIG9mIGV2YWx1YXRpbmcgaXQKZHlu
YW1pY2FsbHkgd2l0aCBya191ZHBoeV9kcGxhbmVfZ2V0KCksIGNvdWxkIHRoaXMgYmUgYnlwYXNz
aW5nIGEgc2FmZXR5IGNoZWNrPwoKSWYgSFBEIGlzIG5vdCBhc3NlcnRlZCBvciB0aGUgbW9kZSBp
cyB1bnN1cHBvcnRlZCBkdXJpbmcgcmtfdWRwaHlfdHlwZWNfbXV4X3NldCgpLAp1ZHBoeS0+bW9k
ZSBpcyBub3QgdXBkYXRlZCB0byBpbmNsdWRlIFVEUEhZX01PREVfRFAuIExhdGVyLCBya191ZHBo
eV9wb3dlcl9vbigpCndpbGwgcmV0dXJuIDAgYmVjYXVzZSBpdCBpZ25vcmVzIHVuc3VwcG9ydGVk
IG1vZGVzLgoKVGhpcyB3b3VsZCByZXN1bHQgaW4gY2FsbGluZyBya191ZHBoeV9kcGxhbmVfZW5h
YmxlKHVkcGh5LCB1ZHBoeS0+ZHBfbGFuZXMpCndpdGggYSA+MCBsYW5lIGNvdW50IG9uIGEgUEhZ
IHRoYXQgaXMgbm90IGZ1bGx5IGNvbmZpZ3VyZWQgZm9yIERQLCBpbnN0ZWFkIG9mCnNhZmVseSBh
c3NlcnRpbmcgcmVzZXQgYXMgaXQgZGlkIHdoZW4gdGhlIGxhbmUgY291bnQgZXZhbHVhdGVkIHRv
IDAuCgpbIC4uLiBdCgo+IEBAIC0xMzQxLDYgKzEzMjksNyBAQCBzdGF0aWMgaW50IHJrX3VkcGh5
X3R5cGVjX211eF9zZXQoc3RydWN0IHR5cGVjX211eF9kZXYgKm11eCwKPiAgCQl1ZHBoeS0+bGFu
ZV9tdXhfc2VsWzJdID0gUEhZX0xBTkVfTVVYX0RQOwo+ICAJCXVkcGh5LT5sYW5lX211eF9zZWxb
M10gPSBQSFlfTEFORV9NVVhfRFA7Cj4gIAkJbW9kZSA9IFVEUEhZX01PREVfRFA7Cj4gKwkJdWRw
aHktPmRwX2xhbmVzID0gNDsKPiAgCQlicmVhazsKPiAgCj4gIAljYXNlIFRZUEVDX0RQX1NUQVRF
X0Q6Cj4gQEAgLTEzNTcsNiArMTM0Niw3IEBAIHN0YXRpYyBpbnQgcmtfdWRwaHlfdHlwZWNfbXV4
X3NldChzdHJ1Y3QgdHlwZWNfbXV4X2RldiAqbXV4LAo+ICAJCQl1ZHBoeS0+bGFuZV9tdXhfc2Vs
WzNdID0gUEhZX0xBTkVfTVVYX0RQOwo+ICAJCX0KPiAgCQltb2RlID0gVURQSFlfTU9ERV9EUF9V
U0I7Cj4gKwkJdWRwaHktPmRwX2xhbmVzID0gMjsKPiAgCQlicmVhazsKPiAgCX0KCltTZXZlcml0
eTogSGlnaF0KSXMgaXQgc2FmZSB0byB1bmNvbmRpdGlvbmFsbHkgY2FjaGUgdWRwaHktPmRwX2xh
bmVzIGhlcmUgYmVmb3JlIHZlcmlmeWluZyBIUEQKYXNzZXJ0aW9uLCBrbm93aW5nIHRoYXQgaXQg
bWlnaHQgZGVzeW5jaHJvbml6ZSBmcm9tIHRoZSBhY3R1YWwgdWRwaHktPm1vZGU/CgotLSAKU2Fz
aGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwODEz
LXJvY2tjaGlwLXVzYmRwLWNsZWFudXAtdjE0LTAtYjVhZDljNjhmYTExQGNvbGxhYm9yYS5jb20/
cGFydD0xMQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcGh5Cg==
