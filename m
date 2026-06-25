Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97AAFCDE001
	for <linux-phy@archiver.kernel.org>; Thu, 25 Jun 2026 18:09:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DrkBeN5Hj0UElofGR8dZXOuoKkIZjKpV35S+9/JL2hk=; b=ZQXR5JsMkIjh5y
	DcZ7LxNm16psREPs3t9CVUeqcg4ctDtvyt+xlaweJ6LL3oGt41Z6GEoLEl5dz5IX2WfttVLx58Hub
	MgnH4nePv0rTd+aUtSFAWKMQRH+8qOmPJWnT2vpL5Y7cljmgGZhVy15pOFxR+p0aHfI76mOYW1vSP
	AKv7/rEGyH5YmpKU0JX3HR83hnjYcfh8b0bw7dzl3HAJRKC3JdPJFhUeY3dV38RMUIKOTW9bdmix/
	4EugDxNkmoGsMjPswFWgjN9J3wfbIDXaaqeBxSDtUz+euOsrsGVVmQ4iqsE3weJtzEoC/ALYMmn+C
	xoAGZ5QCF+kWemjYFfSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcoVq-00000009fDl-0w8J;
	Thu, 25 Jun 2026 18:09:18 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcoVp-00000009fDa-29LI
	for linux-phy@lists.infradead.org;
	Thu, 25 Jun 2026 18:09:17 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 1B44243BE2;
	Thu, 25 Jun 2026 18:09:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 024651F00A3A;
	Thu, 25 Jun 2026 18:09:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782410957;
	bh=z7AqSzxt+g9e3qTlqyT0n5Wyzzm1hya7KV6dbGrs9Yc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=GNg1WJC7WzUlDUyNSEVLSKhC6D5Fx9z9c16vg36T9AI1luVU5EVOX3bsWMntXZYPc
	 lhoU+3l3iCTVCxln7AsjoikVk5dAeQfcLC4Banrp8ow4B+eXGK/b42LfgPMLEeBsam
	 DMMF5GoP+NESRxbUXmax823+V8fX6qN44mkEEbTKkxrSIHLaZMt2XgnrBd8hRBp0MN
	 3lT8QLGgtYwSWP3R2NLFB9oxTH6WuW6NcTeoDkjQcHAfZ5W3004bTAEgMNqj9N8fEL
	 pbNN0L1+FdjlqlCVKxuMhgndIYPmelWLRX88txHAHCHIlOdEfvhJE//vu19Tm/5HEZ
	 2cLCr7zqNXQrQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 20/27] phy: rockchip: usbdp: Re-init the PHY on
 orientation change
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, olteanv@gmail.com, neil.armstrong@linaro.org, vkoul@kernel.org, linux-phy@lists.infradead.org, robh@kernel.org
In-Reply-To: <20260625-rockchip-usbdp-cleanup-v7-20-38eb3cf654fd@collabora.com>
References: <20260625-rockchip-usbdp-cleanup-v7-0-38eb3cf654fd@collabora.com>
 <20260625-rockchip-usbdp-cleanup-v7-20-38eb3cf654fd@collabora.com>
Date: Thu, 25 Jun 2026 18:09:15 +0000
Message-Id: <20260625180916.024651F00A3A@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFRoZSBwYXRjaCBhdHRl
bXB0cyB0byBmaXggUEhZIGxhbmUgbXV4aW5nIG9uIGNhYmxlIG9yaWVudGF0aW9uIGNoYW5nZXMg
Ynkgc2V0dGluZyBgcGh5X25lZWRzX3JlaW5pdCA9IHRydWVgLCBidXQgdGhpcyBmYWlscyB0byBy
ZS1pbml0aWFsaXplIHRoZSBQSFkgZm9yIFVTQjMtb25seSBjb25uZWN0aW9ucywgbGVhdmluZyBV
U0IzIGJyb2tlbiBvbiByZXZlcnNlIG9yaWVudGF0aW9uIHBsdWdzIG9yIGZsaXBzLgotLQoKY29t
bWl0IGQxZGFkY2FlZTBlYTI2MGIzMDQ3NzU0Mjk3ZWRhZTc0NjIxMDdiNjIKQXV0aG9yOiBTZWJh
c3RpYW4gUmVpY2hlbCA8c2ViYXN0aWFuLnJlaWNoZWxAY29sbGFib3JhLmNvbT4KcGh5OiByb2Nr
Y2hpcDogdXNiZHA6IFJlLWluaXQgdGhlIFBIWSBvbiBvcmllbnRhdGlvbiBjaGFuZ2UKClRoaXMg
Y29tbWl0IGNoYW5nZXMgdGhlIGNhYmxlIG9yaWVudGF0aW9uIGxvZ2ljIHRvIHJlY29uZmlndXJl
IGxhbmUgbXV4aW5nCmFuZCBzZXRzIGEgZmxhZyB0byByZS1pbml0aWFsaXplIHRoZSBQSFkgaWYg
dGhlIGNhYmxlIGlzIHJlLXBsdWdnZWQgd2l0aCBhCnN3YXBwZWQgb3JpZW50YXRpb24uCgo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYyBiL2Ry
aXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11c2JkcC5jCj4gaW5kZXggYjA4ZjBjMTQy
YjBkMi4uM2ZhOTdhOGMyNTU1YSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9w
aHktcm9ja2NoaXAtdXNiZHAuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2Nr
Y2hpcC11c2JkcC5jCgpbIC4uLiBdCgo+IEBAIC02MzYsNyArNjM3LDEwIEBAIHN0YXRpYyBpbnQg
cmtfdWRwaHlfb3JpZW5fc3dfc2V0KHN0cnVjdCB0eXBlY19zd2l0Y2hfZGV2ICpzdywKPiAgCQln
b3RvIHVubG9ja19yZXQ7Cj4gIAl9Cj4gIAo+IC0JdWRwaHktPmZsaXAgPSBvcmllbiA9PSBUWVBF
Q19PUklFTlRBVElPTl9SRVZFUlNFOwo+ICsJaWYgKHVkcGh5LT5mbGlwICE9IGZsaXBwZWQpCj4g
KwkJdWRwaHktPnBoeV9uZWVkc19yZWluaXQgPSB0cnVlOwo+ICsKPiArCXVkcGh5LT5mbGlwID0g
ZmxpcHBlZDsKCltTZXZlcml0eTogSGlnaF0KRG9lcyBzZXR0aW5nIHBoeV9uZWVkc19yZWluaXQg
aGVyZSBhY3R1YWxseSB0cmlnZ2VyIGEgcmUtaW5pdGlhbGl6YXRpb24gZm9yClVTQjMtb25seSBj
b25uZWN0aW9ucz8KCldoZW4gdGhlIFR5cGUtQyBjb250cm9sbGVyIGRldGVjdHMgYSBjYWJsZSBv
cmllbnRhdGlvbiBjaGFuZ2UsIGl0IGNhbGxzCnJrX3VkcGh5X29yaWVuX3N3X3NldCgpLiBUaGUg
ZHJpdmVyIHVwZGF0ZXMgdWRwaHktPmZsaXAgYW5kIGRlZmVycyBoYXJkd2FyZQpyZS1pbml0aWFs
aXphdGlvbiB1bnRpbCBya191ZHBoeV9wb3dlcl9vbigpIGlzIGNhbGxlZC4KCkhvd2V2ZXIsIGZv
ciBVU0IzLW9ubHkgY29ubmVjdGlvbnMsIERXQzMgZG9lcyBub3QgY3ljbGUgcGh5X2luaXQoKSBv
cgpwaHlfcG93ZXJfb24oKSBvbiBhIHNpbXBsZSByZXBsdWcgc2luY2UgdGhlIFBIWSByZW1haW5z
IHBvd2VyZWQuIFRoaXMgbWVhbnMKcmtfdWRwaHlfcG93ZXJfb24oKSBpcyBuZXZlciBpbnZva2Vk
IGFuZCB0aGUgUEhZIGlzIG5ldmVyIHJlLWluaXRpYWxpemVkIHdpdGgKdGhlIG5ldyBsYW5lIG11
eGluZywgd2hpY2ggY291bGQgY2F1c2UgVVNCIDMuMCBsaW5rIHRyYWluaW5nIHRvIGZhaWwgd2hl
biBhCmNhYmxlIGlzIGZsaXBwZWQuCgpBIGxhdGVyIHBhdGNoIGluIHRoZSBzZXJpZXMgKHBoeTog
cm9ja2NoaXA6IHVzYmRwOiBQcm9wZXJseSBoYW5kbGUKVFlQRUNfU1RBVEVfU0FGRSBhbmQgVFlQ
RUNfU1RBVEVfVVNCKSBhdHRlbXB0cyB0byBhZGRyZXNzIFR5cGUtQyBzdGF0ZQpjaGFuZ2VzLCBi
dXQgaXRzIGxvZ2ljIGFwcGVhcnMgdG8gYWJvcnQgZm9yIGJvdGggVFlQRUNfU1RBVEVfVVNCIGFu
ZCBtb2RhbApzdGF0ZXMuIEV2ZW4gaWYgY29ycmVjdGVkLCBpdHMgdHJhbnNpdGlvbiBjaGVjayB3
b3VsZCBiZSBmYWxzZSBmb3IgYSBzaW1wbGUKY2FibGUgZmxpcCB0aGF0IHJlbWFpbnMgaW4gVVNC
IG1vZGUsIG1lYW5pbmcgdGhpcyBpc3N1ZSB3b3VsZCBwZXJzaXN0LgoKPiAgCXJrX3VkcGh5X3Nl
dF90eXBlY19kZWZhdWx0X21hcHBpbmcodWRwaHkpOwo+ICAJcmtfdWRwaHlfdXNiX2J2YWxpZF9l
bmFibGUodWRwaHksIHRydWUpOwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2Fz
aGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDYyNS1yb2NrY2hpcC11c2JkcC1jbGVhbnVwLXY3LTAt
MzhlYjNjZjY1NGZkQGNvbGxhYm9yYS5jb20/cGFydD0yMAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5n
IGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
