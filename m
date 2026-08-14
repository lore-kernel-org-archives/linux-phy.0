Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01FD3C5CFCF
	for <linux-phy@archiver.kernel.org>; Fri, 14 Aug 2026 05:14:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LABIcnTizrJl8zIHx6lDfzVWau+J1RGWMNruvkwbyo0=; b=jbZUTig/sxDXV8
	3sbLEdQHumaVi/M8qBJYPBbJqorqBdSeQRaRINijuVmb4TNqcbqFRVS2a7O2oZ6NJuTUnAgt/kavP
	SqbQPOHevb9Ia7UXrnWpeu3LweOZkxz6YyE/pUhP+cJweuMafsGb7GsiWAmijzWCky1my7vH4sJo/
	berN1Rg45RlEw+6s/NgYwuRGV0zDp0qEzVqM/R40KIczpt6mffYvQNNVwE9S5HSmTtLd3U1+q0w54
	JkHWdKi//XFdv8+JERlq1t+b41WPwe3+TwzC7qhJi7iwxttGgIUuBKvNJ/phPrT9BY2Z2CwhhY1dT
	6qOFAR21Bk6ec/gjUxEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wukFt-00000001y1r-22HW;
	Fri, 14 Aug 2026 05:14:57 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wukFs-00000001y1h-3rmX
	for linux-phy@lists.infradead.org;
	Fri, 14 Aug 2026 05:14:56 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 327C843808;
	Fri, 14 Aug 2026 05:14:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9BD421F000E9;
	Fri, 14 Aug 2026 05:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786684494;
	bh=0tabxgf2HqNhSwGzmW0+5bJFHR/phfXBWPKnsW3RNhY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=T2tCDB/agh63veMMOhnw/iRUveYvHD6bwoBeBDh6RyU1K+j74Zzem96OFNNzZhJNx
	 djMN0zmuEB8G5Yv2wf8f+xiTDws0EOGn7oR15Hfy66ggLdRn2ia7ftedCUDzBF+EG2
	 IRMALNeyCtC2/i6SSxYk/aRdUnYaSzruvk7jvZWsrmLm2CCJwIE6Ku4/vV1uooLJBY
	 x/J+8J1PYTRpGYmXEZKBl0XtYnZrVYaAS/cRs7X+8aYFRqrVe5J3Ct+etUiHoy1WQ1
	 nrjsf6KXQXcp63Bz29cTQEV8PPt5b0D2U9V1KEXxFK2ES2yg1gS7xKURhLJtTkgA5F
	 19NZlwY3PnUPA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v14 28/38] phy: core: add notifier infrastructure
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, linux-phy@lists.infradead.org
In-Reply-To: <20260813-rockchip-usbdp-cleanup-v14-28-b5ad9c68fa11@collabora.com>
References: <20260813-rockchip-usbdp-cleanup-v14-0-b5ad9c68fa11@collabora.com>
 <20260813-rockchip-usbdp-cleanup-v14-28-b5ad9c68fa11@collabora.com>
Date: Fri, 14 Aug 2026 05:14:53 +0000
Message-Id: <20260814051453.9BD421F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIEFCLUJBIGxvY2sgaW52
ZXJzaW9uIGRlYWRsb2NrIGJldHdlZW4gUEhZIGNvbnN1bWVyIHN0YXRlIGxvY2tzIGFuZCBwaHkt
Pm11dGV4IHZpYSBzeW5jaHJvbm91cyBub3RpZmllci4KLS0KCi0tLSBQYXRjaCBbMjhdOiBbUEFU
Q0ggdjE0IDI4LzM4XSBwaHk6IGNvcmU6IGFkZCBub3RpZmllciBpbmZyYXN0cnVjdHVyZSAtLS0K
Y29tbWl0IDE0MGQ1YmEwYzM5MjdhMDFjZWMwNjUzNGMyZGMyMmNmMTQ1NzliYTAKQXV0aG9yOiBT
ZWJhc3RpYW4gUmVpY2hlbCA8c2ViYXN0aWFuLnJlaWNoZWxAY29sbGFib3JhLmNvbT4KCnBoeTog
Y29yZTogYWRkIG5vdGlmaWVyIGluZnJhc3RydWN0dXJlCgpUaGlzIGNvbW1pdCBpbnRyb2R1Y2Vz
IGEgbm90aWZpZXIgQVBJIGZvciBQSFkgZGV2aWNlcywgYWxsb3dpbmcgY29uc3VtZXIKZHJpdmVy
cyB0byBob29rIGludG8gUEhZIHJlc2V0IGV2ZW50cy4gVGhpcyBwcm92aWRlcyBhIG1lY2hhbmlz
bSBmb3IgY29uc3VtZXJzCnRvIGdyYWNlZnVsbHkgaGFuZGxlIHRoZSBQSFkgZ29pbmcgZG93biBk
dXJpbmcgY29uZmlndXJhdGlvbiBvciBvcmllbnRhdGlvbgpjaGFuZ2VzLgoKPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9waHkvcGh5LWNvcmUuYyBiL2RyaXZlcnMvcGh5L3BoeS1jb3JlLmMKPiBpbmRl
eCAyMWFhZjJmNzZlNTNlLi41MWQyNjFkYWFlN2E5IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5
L3BoeS1jb3JlLmMKPiArKysgYi9kcml2ZXJzL3BoeS9waHktY29yZS5jCgpbIC4uLiBdCgo+IEBA
IC01NDIsNiArNTQyLDcwIEBAIGludCBwaHlfbm90aWZ5X3N0YXRlKHN0cnVjdCBwaHkgKnBoeSwg
dW5pb24gcGh5X25vdGlmeSBzdGF0ZSkKClsgLi4uIF0KCj4gKy8qKgo+ICsgKiBwaHlfbm90aWZ5
X3Jlc2V0KCkgLSBub3RpZnkgY29uc3VtZXJzIG9mIGEgUEhZIHJlc2V0IGV2ZW50Cj4gKyAqIEBw
aHk6IHRoZSBwaHkgdGhhdCBpcyBiZWluZyByZXNldAo+ICsgKiBAZXZlbnQ6IHRoZSBub3RpZmlj
YXRpb24gZXZlbnQgKFBSRV9SRVNFVCBvciBQT1NUX1JFU0VUKQo+ICsgKgo+ICsgKiBDYWxsZWQg
YnkgUEhZIHByb3ZpZGVycyB0byBub3RpZnkgY29uc3VtZXJzIHRoYXQgdGhlIFBIWSBpcyBhYm91
dCB0bwo+ICsgKiBiZSByZXNldCBvciBoYXMgY29tcGxldGVkIGEgcmVzZXQuIFRoaXMgYWxsb3dz
IGNvbnN1bWVycyB0byBxdWllc2NlCj4gKyAqIGhhcmR3YXJlIGJlZm9yZSB0aGUgUEhZIGJlY29t
ZXMgdW5hdmFpbGFibGUuCj4gKyAqCj4gKyAqIFRoaXMgbWF5IGJlIGNhbGxlZCBmcm9tIHdpdGhp
biBQSFkgcHJvdmlkZXIgY2FsbGJhY2tzIChlLmcuIHNldF9tb2RlLAo+ICsgKiBwb3dlcl9vbikg
d2hlcmUgcGh5LT5tdXRleCBpcyBoZWxkLiBDb25zdW1lciBub3RpZmljYXRpb24gaGFuZGxlcnMg
bXVzdAo+ICsgKiB0aGVyZWZvcmUgTk9UIGNhbGwgYmFjayBpbnRvIHRoZSBQSFkgZnJhbWV3b3Jr
IChlLmcuIHBoeV9wb3dlcl9vZmYsCj4gKyAqIHBoeV9leGl0KSBvbiB0aGUgc2FtZSBQSFksIGFz
IHRoaXMgd291bGQgcmVzdWx0IGluIGEgZGVhZGxvY2suCj4gKyAqCj4gKyAqIFJldHVybnM6ICUw
IGlmIHN1Y2Nlc3NmdWwgb3Igbm8gbm90aWZpZXJzIHJlZ2lzdGVyZWQsIGEgbmVnYXRpdmUgZXJy
b3IKPiArICogY29kZSBpZiBhIG5vdGlmaWVyIHJldHVybnMgYW4gZXJyb3IgKGZvciBQUkVfUkVT
RVQgb25seSkKPiArICovCj4gK2ludCBwaHlfbm90aWZ5X3Jlc2V0KHN0cnVjdCBwaHkgKnBoeSwg
ZW51bSBwaHlfbm90aWZpY2F0aW9uIGV2ZW50KQo+ICt7Cj4gKwlpbnQgcmV0Owo+ICsKPiArCWlm
ICghcGh5KQo+ICsJCXJldHVybiAwOwo+ICsKPiArCXJldCA9IGJsb2NraW5nX25vdGlmaWVyX2Nh
bGxfY2hhaW4oJnBoeS0+bm90aWZpZXIsIGV2ZW50LCBwaHkpOwoKW1NldmVyaXR5OiBIaWdoXQpE
b2VzIHRoaXMgc3luY2hyb25vdXMgbm90aWZpY2F0aW9uIHVuZGVyIHBoeS0+bXV0ZXggaW50cm9k
dWNlIGFuIEFCLUJBIGxvY2sKaW52ZXJzaW9uIHJpc2sgd2l0aCBjb25zdW1lciBkcml2ZXIgc3Rh
dGUgbG9ja3M/CgpGb3IgZXhhbXBsZSwgaWYgYSBtdWx0aS1wb3J0IFBIWSBoYXMgbXVsdGlwbGUg
Y29uc3VtZXJzIChsaWtlIERQIGFuZCBVU0IpLApDb25zdW1lciBBIGNvdWxkIGFjcXVpcmUgaXRz
IGRyaXZlciBzdGF0ZSBsb2NrIChlLmcuLCBkcF9sb2NrKSBhbmQgY2FsbApwaHlfcG93ZXJfb24o
cGh5KSwgYmxvY2tpbmcgb24gcGh5LT5tdXRleC4KCkNvbmN1cnJlbnRseSwgaWYgQ29uc3VtZXIg
QiB0cmlnZ2VycyBhIHBoeV9zZXRfbW9kZShwaHkpIGNhbGwsIHRoZSBQSFkgY29yZQphY3F1aXJl
cyBwaHktPm11dGV4IGFuZCBpbnZva2VzIHRoZSBwcm92aWRlcidzIGNhbGxiYWNrLCB3aGljaCBp
biB0dXJuIGNhbGxzCnBoeV9ub3RpZnlfcmVzZXQoKS4gVGhpcyBzeW5jaHJvbm91c2x5IGludm9r
ZXMgQ29uc3VtZXIgQSdzIG5vdGlmaWVyIGNhbGxiYWNrCnZpYSBibG9ja2luZ19ub3RpZmllcl9j
YWxsX2NoYWluKCkuCgpJZiBDb25zdW1lciBBIGF0dGVtcHRzIHRvIGFjcXVpcmUgaXRzIHN0YXRl
IGxvY2sgKGRwX2xvY2spIHdpdGhpbiB0aGUgbm90aWZpZXIKY2FsbGJhY2sgdG8gc2FmZWx5IHF1
aWVzY2UgaXRzIGhhcmR3YXJlLCBpdCB3aWxsIGRlYWRsb2NrLiBJcyBpdCBzYWZlIHRvIGV4ZWN1
dGUKdGhpcyBibG9ja2luZyBub3RpZmllciBjaGFpbiB3aGlsZSBob2xkaW5nIHBoeS0+bXV0ZXg/
Cgo+ICsJcmV0dXJuIG5vdGlmaWVyX3RvX2Vycm5vKHJldCk7Cj4gK30KPiArRVhQT1JUX1NZTUJP
TF9HUEwocGh5X25vdGlmeV9yZXNldCk7CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6
Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwODEzLXJvY2tjaGlwLXVzYmRwLWNsZWFudXAt
djE0LTAtYjVhZDljNjhmYTExQGNvbGxhYm9yYS5jb20/cGFydD0yOAoKLS0gCmxpbnV4LXBoeSBt
YWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
