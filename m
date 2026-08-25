Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8149C5DF9C
	for <linux-phy@archiver.kernel.org>; Tue, 25 Aug 2026 05:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kH1b5lZmqaanR2XETi2Bds5+48KT9288/uJzOgzjeuk=; b=cEdmWpEVwbTbOu
	/y27DccsdYQix7B6dSRgsgEYVxFMpc5+/2WSqQu3Rokli8t/S8khPCPSbnSBM4+0Q1TYQwrv5ArRv
	hOuXJXnJY7a2X2YF4pR7Tf+HkxcvVR/VPbtBbcvJzKaO72h6ITPm9p2BxjukWf/4QZD4KGSC+3Js3
	b4A6GYSDEl3Q+9PHxYPHaP7LE5NufiX4dvPOsFF4lgt44cmTLsud4fQUx72rgtgzXjMPmS6h8sqtt
	PCAmhqOjYyYK32g+WstqueF4Y1Z57Q0HWEnelPg0V7ag5g5iT6Er2XUWJm3jKgAjXkrL5ySV++pGO
	IHDPhRUoKRAAMdXlo0cA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyjmT-00000000C5V-0iQW;
	Tue, 25 Aug 2026 05:33:05 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyjmR-00000000C4w-16Nr
	for linux-phy@lists.infradead.org;
	Tue, 25 Aug 2026 05:33:03 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 94D3640DE0;
	Tue, 25 Aug 2026 05:33:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2C0421F000E9;
	Tue, 25 Aug 2026 05:33:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787635982;
	bh=UtcbBKTOxpEJ97NW9Y+lJPN9wafcWJxNExQ4InsxmoQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=hStar+3PDgRiAVYCviBaiRYGRUQvnAl8CkDfsffQm6csHasxOn0Oy1TlKLghiMTfj
	 WCNBxqvDbWNBXque3PP3E8pNV/WFOg1czKL/ZZ+/7kiC2cWQznyl8eKuzCCE+UN3wi
	 okP5sap6MOcQU3NiKC+HYaQrZtfpx+BU+aeM4n00mHF89zlNcNxpCOpJt3jXY+kIyY
	 mrT9u9eU0uv5TnSpZS7XHfJEEiPAGBFxjliKCJF+AAzbo6pCSFkFjx3zMIuVshpncc
	 zWuSiihraC86IR5L/nHqNhic8D9rp33GmOIYflM9Vg8xLwK28Rocwe1DMuS2D+DI7W
	 a9FIXfLLtH3kw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH] phy: spacemit: enable K1 USB 2.0 PHY by default on
 ARCH_SPACEMIT
To: "Bruno Banelli" <bbanelli@gmail.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, olteanv@gmail.com
In-Reply-To: <20260825052158.66367-1-bbanelli@gmail.com>
References: <20260825052158.66367-1-bbanelli@gmail.com>
Date: Tue, 25 Aug 2026 05:33:01 +0000
Message-Id: <20260825053302.2C0421F000E9@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpQcmUtZXhpc3RpbmcgaXNzdWVzOgot
IFtIaWdoXSBNaXNzaW5nIGBzZWxlY3QgUkVHTUFQX01NSU9gIGluIGBQSFlfU1BBQ0VNSVRfSzFf
VVNCMmAgS2NvbmZpZyBlbnRyeS4KLSBbTWVkaXVtXSBNaXNzaW5nIGBkZXBlbmRzIG9uIEhBU19J
T01FTWAgaW4gYFBIWV9TUEFDRU1JVF9LMV9VU0IyYCBLY29uZmlnIGVudHJ5LgotLQoKLS0tIFBh
dGNoIFsxXTogW1BBVENIXSBwaHk6IHNwYWNlbWl0OiBlbmFibGUgSzEgVVNCIDIuMCBQSFkgYnkg
ZGVmYXVsdCBvbiBBUkNIX1NQQUNFTUlUIC0tLQpjb21taXQgZjc1NmMzY2Y1YjhmZjEzNmU4ZDI4
NmUxNmYxZTI1Mjg5YWE5ZTA5NQpBdXRob3I6IEJydW5vIEJhbmVsbGkgPGJiYW5lbGxpQGdtYWls
LmNvbT4KCnBoeTogc3BhY2VtaXQ6IGVuYWJsZSBLMSBVU0IgMi4wIFBIWSBieSBkZWZhdWx0IG9u
IEFSQ0hfU1BBQ0VNSVQKClRoaXMgcGF0Y2ggYWRkcyBhIGRlZmF1bHQgQVJDSF9TUEFDRU1JVCBj
b25maWd1cmF0aW9uIGZvciB0aGUgSzEgVVNCIDIuMCBQSFkKZHJpdmVyLiBUaGlzIG1hdGNoZXMg
dGhlIFBDSWUgUEhZIGNvbmZpZ3VyYXRpb24gYW5kIGVuc3VyZXMgdGhlIFVTQiBkcml2ZXIgaXMK
ZW5hYmxlZCBieSBkZWZhdWx0IG9uIFNwYWNlbWlUIEsxIGJvYXJkcy4KCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvcGh5L3NwYWNlbWl0L0tjb25maWcgYi9kcml2ZXJzL3BoeS9zcGFjZW1pdC9LY29u
ZmlnCj4gaW5kZXggNWZkZjE4ZmNlNDk5NS4uZGQ3NGEzZmFmMDFmZCAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL3BoeS9zcGFjZW1pdC9LY29uZmlnCj4gKysrIGIvZHJpdmVycy9waHkvc3BhY2VtaXQv
S2NvbmZpZwo+IEBAIC0yMCw2ICsyMCw3IEBAIGNvbmZpZyBQSFlfU1BBQ0VNSVRfSzFfVVNCMgo+
ICAJZGVwZW5kcyBvbiBDT01NT05fQ0xLCj4gIAlkZXBlbmRzIG9uIFVTQl9DT01NT04KPiAgCXNl
bGVjdCBHRU5FUklDX1BIWQoKW1NldmVyaXR5OiBIaWdoXQpUaGlzIGlzIGEgcHJlLWV4aXN0aW5n
IGlzc3VlLCBidXQgZG9lcyB0aGlzIGNvbmZpZyBlbnRyeSBuZWVkIHRvIHNlbGVjdApSRUdNQVBf
TU1JTz8KCklmIGEgcmFuZGNvbmZpZyBidWlsZCBoYXMgUEhZX1NQQUNFTUlUX0sxX1VTQjIgZW5h
YmxlZCBhbmQgQ09ORklHX1JFR01BUAplbmFibGVkLCBidXQgQ09ORklHX1JFR01BUF9NTUlPIGlz
IGRpc2FibGVkLCB3b3VsZCB0aGlzIHJlc3VsdCBpbiBhIGxpbmthZ2UKZXJyb3I/IFRoZSBkcml2
ZXIgdXNlcyBkZXZtX3JlZ21hcF9pbml0X21taW8oKSBkdXJpbmcgcHJvYmU6Cgpkcml2ZXJzL3Bo
eS9zcGFjZW1pdC9waHktazEtdXNiMi5jOnNwYWNlbWl0X3VzYjJwaHlfcHJvYmUoKSB7CiAgICAu
Li4KICAgIHNwaHktPnJlZ21hcF9iYXNlID0gZGV2bV9yZWdtYXBfaW5pdF9tbWlvKGRldiwgYmFz
ZSwgJnBoeV9yZWdtYXBfY29uZmlnKTsKICAgIC4uLgp9CgpbU2V2ZXJpdHk6IE1lZGl1bV0KVGhp
cyBpcyBhbHNvIGEgcHJlLWV4aXN0aW5nIGlzc3VlLCBidXQgc2hvdWxkIHRoaXMgY29uZmlnIGRl
cGVuZCBvbiBIQVNfSU9NRU0/CgpUaGUgZHJpdmVyIG1hcHMgSS9PIG1lbW9yeSBkdXJpbmcgcHJv
YmU6Cgpkcml2ZXJzL3BoeS9zcGFjZW1pdC9waHktazEtdXNiMi5jOnNwYWNlbWl0X3VzYjJwaHlf
cHJvYmUoKSB7CiAgICAuLi4KICAgIGJhc2UgPSBkZXZtX3BsYXRmb3JtX2lvcmVtYXBfcmVzb3Vy
Y2UocGRldiwgMCk7CiAgICAuLi4KfQoKQ291bGQgdGhpcyBjYXVzZSBidWlsZCBvciBydW50aW1l
IGZhaWx1cmVzIG9uIGFyY2hpdGVjdHVyZXMgbGFja2luZyBJL08gbWVtb3J5CnN1cHBvcnQgKHN1
Y2ggYXMgVU1MKSB3aGVuIENPTVBJTEVfVEVTVCBpcyBlbmFibGVkPwoKPiArCWRlZmF1bHQgQVJD
SF9TUEFDRU1JVAo+ICAJaGVscAo+ICAJICBFbmFibGUgdGhpcyB0byBzdXBwb3J0IEsxIFVTQiAy
LjAgUEhZIGRyaXZlci4gVGhpcyBkcml2ZXIgdGFrZXMgY2FyZSBvZgo+ICAJICBlbmFibGluZyBh
bmQgY2xvY2sgc2V0dXAgYW5kIHdpbGwgYmUgdXNlZCBieSBLMSB1ZGMvZWhjaS9vdGcveGhjaSBk
cml2ZXIuCgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3Bh
dGNoc2V0LzIwMjYwODI1MDUyMTU4LjY2MzY3LTEtYmJhbmVsbGlAZ21haWwuY29tP3BhcnQ9MQoK
LS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
