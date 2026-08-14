Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0403C5CFC1
	for <linux-phy@archiver.kernel.org>; Fri, 14 Aug 2026 03:57:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hb+asU/SkerlaKXT0AUZL+YWkKjKOIdHCcSbFKwiuGI=; b=th3P4CcTju+3QQ
	sjrvbLsxT7dlcewVNoei6IfhMK2Um3itvhmjyB42fln1WuwoyqO/XC/L8+Pdz+Fs6wF7ZGFQr1cxK
	T21b9FY/OsbwOv+qvu/GIuSmXqhtBEekSmR0ci9ZCBiOP4GSD7lXuWUtRZB5fNNBkvkrYjNjVuP0z
	PwSlKYzkizNZZ+B10LXzPTt3StV7q5MzoQhmAqDpRGU1vuKgFX3MOFQfafC5nWLW3nFMYnYVNHBmx
	Zigy5dlzA19in8lhslDPL2QflLqJCIF/5Sw29M8X1MBAZMRwAQYei54OGbkKKf8iu+wfhlqWKCg2z
	iNRHu4TDDKGsW8qIhcZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuj3N-00000001vBb-0mis;
	Fri, 14 Aug 2026 03:57:57 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuj3M-00000001vBV-1BsE
	for linux-phy@lists.infradead.org;
	Fri, 14 Aug 2026 03:57:56 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 4D018601DE;
	Fri, 14 Aug 2026 03:57:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9B9F91F000E9;
	Fri, 14 Aug 2026 03:57:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786679875;
	bh=6ON5mIt7Is6oZwpsbZ6ExbGPRA+cK+XyojDc4+eYXXw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=nYWu9VBhUPnMF84np4azvhqPstk9/3p9sOcsq/BuBRmGoCZAdWJeINtf+kNyTDMHI
	 Q3sSxexrUxGCIZS7eKjKTeuM30aWqJBVFphZkSYHhAwVNZAn7KYrhWWb8D+EnUctEE
	 ZJLPu9dLcOSNA6F29v5EaBgjUn7D1qzk5L88MBdSeSaCajnW3bIEsgJo2/LCmSM19F
	 cMioH2xgVwcLXOpF6PrC84/oRIyEIUaF+KaR5CI4yiJ984FRsV4KoZlP2FmfZSiJ2N
	 ctPu6pZAkIGMOBBJ32a/sFA4FD3WH5xWG5KyQGrC7IuskYKV5d/0zjrGP6mvOMj2hX
	 UirNYTDY5YPpg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v14 19/38] phy: rockchip: usbdp: Re-init the PHY on
 orientation change
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: devicetree@vger.kernel.org, linux-phy@lists.infradead.org, robh@kernel.org, neil.armstrong@linaro.org, vkoul@kernel.org, olteanv@gmail.com, conor+dt@kernel.org
In-Reply-To: <20260813-rockchip-usbdp-cleanup-v14-19-b5ad9c68fa11@collabora.com>
References: <20260813-rockchip-usbdp-cleanup-v14-0-b5ad9c68fa11@collabora.com>
 <20260813-rockchip-usbdp-cleanup-v14-19-b5ad9c68fa11@collabora.com>
Date: Fri, 14 Aug 2026 03:57:48 +0000
Message-Id: <20260814035752.9B9F91F000E9@smtp.kernel.org>
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
IFtIaWdoXSBNaXNzaW5nIGhhcmR3YXJlIHJlLWluaXRpYWxpemF0aW9uIGZvciBhY3RpdmUgVVNC
IGNvbm5lY3Rpb25zIHVwb24gb3JpZW50YXRpb24gc3dhcC4KLSBbSGlnaF0gRGF0YSByYWNlIGlu
IGBya191ZHBoeV9kcF9waHlfY29uZmlndXJlYCBkdWUgdG8gbWlzc2luZyBgdWRwaHktPm11dGV4
YCBhY3F1aXNpdGlvbi4KLS0KCi0tLSBQYXRjaCBbMTldOiBbUEFUQ0ggdjE0IDE5LzM4XSBwaHk6
IHJvY2tjaGlwOiB1c2JkcDogUmUtaW5pdCB0aGUgUEhZIG9uIG9yaWVudGF0aW9uIGNoYW5nZSAt
LS0KY29tbWl0IGM1N2RmN2Y1NmVlZmJhNzk0NjhlOGI3MGMwY2NjMDFjMDkwZTExNmQKQXV0aG9y
OiBTZWJhc3RpYW4gUmVpY2hlbCA8c2ViYXN0aWFuLnJlaWNoZWxAY29sbGFib3JhLmNvbT4KCnBo
eTogcm9ja2NoaXA6IHVzYmRwOiBSZS1pbml0IHRoZSBQSFkgb24gb3JpZW50YXRpb24gY2hhbmdl
CgpUaGlzIGNvbW1pdCBhZGRyZXNzZXMgRGlzcGxheVBvcnQgZnVuY3Rpb25hbGl0eSBicmVha2lu
ZyB1cG9uIGNhYmxlCnJlLXBsdWdnaW5nIHdpdGggc3dhcHBlZCBvcmllbnRhdGlvbi4gSXQgdHJh
Y2tzIHRoZSBvcmllbnRhdGlvbiBmbGlwIGFuZApzZXRzIGEgZmxhZyB0byB0cmlnZ2VyIFBIWSBy
ZS1pbml0aWFsaXphdGlvbi4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3Bo
eS1yb2NrY2hpcC11c2JkcC5jIGIvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVz
YmRwLmMKPiBpbmRleCBlNDRkMTljOWQxMTkzLi40YjQ1NDc5OGM0ZWQ0IDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11c2JkcC5jCj4gKysrIGIvZHJpdmVy
cy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMKClsgLi4uIF0KCj4gQEAgLTYzMSw3
ICs2MzIsMTAgQEAgc3RhdGljIGludCBya191ZHBoeV9vcmllbl9zd19zZXQoc3RydWN0IHR5cGVj
X3N3aXRjaF9kZXYgKnN3LAo+ICAJCWdvdG8gdW5sb2NrX3JldDsKPiAgCX0KPiAgCj4gLQl1ZHBo
eS0+ZmxpcCA9IG9yaWVuID09IFRZUEVDX09SSUVOVEFUSU9OX1JFVkVSU0U7Cj4gKwlpZiAodWRw
aHktPmZsaXAgIT0gZmxpcHBlZCkKPiArCQl1ZHBoeS0+cGh5X25lZWRzX3JlaW5pdCA9IHRydWU7
CgpbU2V2ZXJpdHk6IEhpZ2hdClRoaXMgaXMgYSBwcmUtZXhpc3RpbmcgaXNzdWUsIGJ1dCBkb2Vz
IHNldHRpbmcgdGhpcyBmbGFnIGFjdHVhbGx5CnJlLWluaXRpYWxpemUgdGhlIGhhcmR3YXJlIHN5
bmNocm9ub3VzbHkgaWYgdGhlIFVTQiBQSFkgaXMgYWxyZWFkeSBhY3RpdmU/CgpJZiBhIHB1cmUg
VVNCIDMuMCBUeXBlLUMgZGV2aWNlIGlzIHBsdWdnZWQgaW4gYSBmbGlwcGVkIG9yaWVudGF0aW9u
LCB0aGUKVHlwZS1DIHN1YnN5c3RlbSBjYWxscyBya191ZHBoeV9vcmllbl9zd19zZXQoKSB3aGlj
aCBkZWZlcnMgdGhlIHN0YXRlIHZpYQpwaHlfbmVlZHNfcmVpbml0LgoKU2luY2UgVVNCIGNvbnRy
b2xsZXJzIGxpa2UgRFdDMyBkbyBub3QgdHlwaWNhbGx5IHBvd2VyLWN5Y2xlIHRoZSBQSFkgb24K
b3JpZW50YXRpb24gY2hhbmdlcywgd29uJ3QgdGhlIGhhcmR3YXJlIHJlbWFpbiBpbiB0aGUgcHJl
dmlvdXMgb3JpZW50YXRpb24sCmNhdXNpbmcgU3VwZXJTcGVlZCBVU0IgY29ubmVjdGlvbnMgdG8g
c2lsZW50bHkgZmFpbCBhbmQgZmFsbCBiYWNrIHRvIFVTQiAyLjA/Cgo+ICsKPiArCXVkcGh5LT5m
bGlwID0gZmxpcHBlZDsKPiAgCXJrX3VkcGh5X3NldF90eXBlY19kZWZhdWx0X21hcHBpbmcodWRw
aHkpOwo+ICAJcmtfdWRwaHlfdXNiX2J2YWxpZF9lbmFibGUodWRwaHksIHRydWUpOwo+ICAKCkFk
ZGl0aW9uYWxseSwgd2hpbGUgcmV2aWV3aW5nIHRoaXMgZmlsZSwgSSBub3RpY2VkIGFub3RoZXIg
cHJlLWV4aXN0aW5nCmlzc3VlIHJlZ2FyZGluZyBjb25jdXJyZW5jeToKCltTZXZlcml0eTogSGln
aF0KVGhpcyBpc24ndCBhIGJ1ZyBpbnRyb2R1Y2VkIGJ5IHRoaXMgcGF0Y2gsIGJ1dCBkb2VzCnJr
X3VkcGh5X2RwX3BoeV9jb25maWd1cmUoKSByYWNlIHdpdGggVHlwZS1DIGV2ZW50cz8KClRoZSBE
UCBjb250cm9sbGVyIGRyaXZlciBjYWxscyBwaHlfY29uZmlndXJlKCkgd2hpY2ggZXhlY3V0ZXMK
cmtfdWRwaHlfZHBfcGh5X2NvbmZpZ3VyZSgpIGhvbGRpbmcgb25seSB0aGUgZ2VuZXJpYyBwaHkt
Pm11dGV4OgoKZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmM6cmtfdWRw
aHlfZHBfcGh5X2NvbmZpZ3VyZSgpIHsKICAgICAgICBzdHJ1Y3QgcmtfdWRwaHkgKnVkcGh5ID0g
cGh5X2dldF9kcnZkYXRhKHBoeSk7CiAgICAgICAgLi4uCn0KCkNvbmN1cnJlbnRseSwgVHlwZS1D
IGV2ZW50cyBsaWtlIHVucGx1ZyBvciBvcmllbnRhdGlvbiBzd2FwIHRyaWdnZXIKcmtfdWRwaHlf
b3JpZW5fc3dfc2V0KCkgb3IgcmtfdWRwaHlfdHlwZWNfbXV4X3NldCgpLCB3aGljaCBtb2RpZnkg
c2hhcmVkCnN0YXRlICh1ZHBoeS0+ZHBfbGFuZV9zZWwsIHVkcGh5LT5sYW5lX211eF9zZWwsIGFu
ZCB1ZHBoeS0+ZHBfbGFuZXMpIHdoaWxlCmhvbGRpbmcgdWRwaHktPm11dGV4LgoKQmVjYXVzZSBy
a191ZHBoeV9kcF9waHlfY29uZmlndXJlKCkgYWNjZXNzZXMgYW5kIHdyaXRlcyB0byB0aGlzIHNo
YXJlZApoYXJkd2FyZSBzdGF0ZSB3aXRob3V0IGFjcXVpcmluZyB1ZHBoeS0+bXV0ZXgsIGNhbiB0
aGUgRGlzcGxheVBvcnQgUEhZIGJlCnByb2dyYW1tZWQgd2l0aCBpbmNvbnNpc3RlbnQgbGFuZSBh
c3NpZ25tZW50cyBpZiBhIFR5cGUtQyB1bnBsdWcgb3IKb3JpZW50YXRpb24gZXZlbnQgb2NjdXJz
IGR1cmluZyBEaXNwbGF5UG9ydCBsaW5rIHRyYWluaW5nPwoKLS0gClNhc2hpa28gQUkgcmV2aWV3
IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDgxMy1yb2NrY2hpcC11c2Jk
cC1jbGVhbnVwLXYxNC0wLWI1YWQ5YzY4ZmExMUBjb2xsYWJvcmEuY29tP3BhcnQ9MTkKCi0tIAps
aW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBz
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
