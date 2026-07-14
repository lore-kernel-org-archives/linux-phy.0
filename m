Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20CD2C43458
	for <linux-phy@archiver.kernel.org>; Tue, 14 Jul 2026 20:03:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=koDXK2Ia0QSJTP4e9QxNFJSoxmD9ZZTfpLbblyDkHUo=; b=RIRVylXM4hgO4P
	G0ZEbZF7pOA5zzGvG11orSg6/aEX1he15VAXEG8fVP2x3cigl2ZWNcICA/VA0u58o4h2uwYcIy7K8
	dTEyyfXpdbh1iaHI2EW4MR5eOl1FqcFqVpvul9AacAsSGD8yyk3e6XCjupXWNQU8vS2k8WhYn9fdd
	OKXwwM5tkO+wkQQG2gnonX7ROV092Wv3FzbczAZGhrTHIFZEERAOHrglQhwjVDYlCTTXt+Ml6xJ7Q
	zHv/zgJZJyhHoowe4jbUPB8hMzE1y/Wqc9oZJkNYNXKutfWQdXKzX/S4Vp6LZy9BeNr2R+O9cVIXz
	E4596enjOU85mq0KY0ZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjjLb-0000000DBLd-3SZk;
	Tue, 14 Jul 2026 20:03:19 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjjLZ-0000000DBLS-3Vim
	for linux-phy@lists.infradead.org;
	Tue, 14 Jul 2026 20:03:18 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 842A9418C8;
	Tue, 14 Jul 2026 20:03:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ED21D1F000E9;
	Tue, 14 Jul 2026 20:03:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784059397;
	bh=HuvzlSxNN3sM9BWKm26GO4ZRA8MNhWUBq1UfGR4Rggo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=eEwdYbadBTmQoFSSJzCThTTv8ZC7DgzWsVDe/wE13qWIYJCubVkQXHbxAwQXgs72g
	 aZwF8PGTmpmvQbRqQ1uHmH1gHA/Hcy89TTY4VfoFknjiPuR8LatVwRyRxpAg+sXuSX
	 /fQhYX1eZ0VnWehC6oTQi0nR+QS7h8v7AwMszFq7h5ZDMdVsd0P67diiXCWRmwETqi
	 guDSp3X1Nhlg3+UTWwkZf56gnK0igSun9raWwpVVYfCT4LusIxn2nPzehQWcwSu115
	 V6aaY1x4FjzBHb3qjOeU/pWYnVSpYY02IDV5rXrW3mO/yMg1FbXiQ+BU0PRQMpvosP
	 FyUVGUR2S4+qg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v13 20/35] phy: rockchip: usbdp: Factor out lane_mux_sel
 setup
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: olteanv@gmail.com, robh@kernel.org, linux-phy@lists.infradead.org, conor+dt@kernel.org, devicetree@vger.kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20260714-rockchip-usbdp-cleanup-v13-20-6cb3e769d4c5@collabora.com>
References: <20260714-rockchip-usbdp-cleanup-v13-0-6cb3e769d4c5@collabora.com>
 <20260714-rockchip-usbdp-cleanup-v13-20-6cb3e769d4c5@collabora.com>
Date: Tue, 14 Jul 2026 20:03:16 +0000
Message-Id: <20260714200316.ED21D1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpQcmUtZXhpc3RpbmcgaXNzdWVzOgot
IFtIaWdoXSBVbmNsb2NrZWQgTU1JTyBhY2Nlc3MgaW4gRFAgUEhZIHBvd2VyIHBhdGggY2F1c2Vz
IHN5bmNocm9ub3VzIGV4dGVybmFsIGFib3J0IChzeXN0ZW0gaGFuZykuCi0tCgotLS0gUGF0Y2gg
WzIwXTogW1BBVENIIHYxMyAyMC8zNV0gcGh5OiByb2NrY2hpcDogdXNiZHA6IEZhY3RvciBvdXQg
bGFuZV9tdXhfc2VsIHNldHVwIC0tLQpjb21taXQgNDdlNjU1MDlhMjE2OTc5YTU3ODRiYTVlYWUz
NjIzZTYzOTNiNWJjYgpBdXRob3I6IFNlYmFzdGlhbiBSZWljaGVsIDxzZWJhc3RpYW4ucmVpY2hl
bEBjb2xsYWJvcmEuY29tPgoKcGh5OiByb2NrY2hpcDogdXNiZHA6IEZhY3RvciBvdXQgbGFuZV9t
dXhfc2VsIHNldHVwCgpBdm9pZCBkZXNjcmliaW5nIHRoZSB1c2IgYW5kIGRwIGxhbmUgbXV4IHNl
dHVwIGxvZ2ljIHR3aWNlIGJ5IGludHJvZHVjaW5nCmEgaGVscGVyIGZ1bmN0aW9uIHRvIHJlZHVj
ZSBjb2RlIGR1cGxpY2F0aW9uLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcm9ja2NoaXAv
cGh5LXJvY2tjaGlwLXVzYmRwLmMgYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAt
dXNiZHAuYwo+IGluZGV4IDRiNDU0Nzk4YzRlZDQuLjRlNTQwMjBkMTc1NTEgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMKPiArKysgYi9kcml2
ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYwo+IEBAIC01ODIsNiArNTgyLDQy
IEBAIHN0YXRpYyB2b2lkIHJrX3VkcGh5X21vZGVfc2V0KHN0cnVjdCBya191ZHBoeSAqdWRwaHks
IHU4IG1vZGUpCj4gIAl1ZHBoeS0+bW9kZSA9IG1vZGU7Cj4gIH0KPiAgCj4gK3N0YXRpYyB2b2lk
IHJrX3VkcGh5X3NldF90eXBlY19zdGF0ZShzdHJ1Y3QgcmtfdWRwaHkgKnVkcGh5LCB1bnNpZ25l
ZCBsb25nIHN0YXRlKQo+ICt7Cj4gKwl1OCBtb2RlOwoKWyAuLi4gXQoKV2hpbGUgcmV2aWV3aW5n
IHRoaXMgcGF0Y2gsIEkgbm90aWNlZCBhIHByZS1leGlzdGluZyBpc3N1ZSBpbiB0aGUgc2FtZSBm
aWxlOgoKPiAgc3RhdGljIGludCBya191ZHBoeV9wb3dlcl9vbihzdHJ1Y3QgcmtfdWRwaHkgKnVk
cGh5LCB1OCBtb2RlKQo+ICB7Cj4gIAlpbnQgcmV0Owo+ICAKPiAgCWlmICghKHVkcGh5LT5tb2Rl
ICYgbW9kZSkpIHsKPiAgCQlkZXZfaW5mbyh1ZHBoeS0+ZGV2LCAibW9kZSAweCUwMnggaXMgbm90
IHN1cHBvcnRcbiIsIG1vZGUpOwo+ICAJCXJldHVybiAwOwo+ICAJfQoKW1NldmVyaXR5OiBIaWdo
XQpUaGlzIGlzIGEgcHJlLWV4aXN0aW5nIGlzc3VlLCBidXQgcmV0dXJuaW5nIDAgaGVyZSBpbnN0
ZWFkIG9mIGFuIGVycm9yIGNvZGUKY2FuIGxlYWQgdG8gdW5jbG9ja2VkIG1taW8gYWNjZXNzZXMg
bGF0ZXIgb24uCgpJZiB0aGUgZGlzcGxheSBzdGFjayBjYWxscyBwaHlfcG93ZXJfb24oKSBmb3Ig
dGhlIGRwIHBoeSB3aGlsZSB0aGUgdHlwZS1jCnBvcnQgaXMgZGlzY29ubmVjdGVkIG9yIGluIGEg
dXNiLW9ubHkgbW9kZSwgcmtfdWRwaHlfcG93ZXJfb24oKSByZXR1cm5zIDAuCgpUaGlzIGZhbHNl
IHN1Y2Nlc3MgcHJvcGFnYXRlcyB0byBya191ZHBoeV9kcF9waHlfcG93ZXJfb24oKToKCnJrX3Vk
cGh5X2RwX3BoeV9wb3dlcl9vbigpIHsKICAgIC4uLgogICAgcmV0ID0gcmtfdWRwaHlfcG93ZXJf
b24odWRwaHksIFVEUEhZX01PREVfRFApOwogICAgaWYgKHJldCkKICAgICAgICBnb3RvIHVubG9j
azsKCiAgICBya191ZHBoeV9kcF9sYW5lX2VuYWJsZSh1ZHBoeSwgdWRwaHktPmRwX2xhbmVzKTsK
ICAgIC4uLgp9CgpCZWNhdXNlIHJldCBpcyAwLCBkb2VzIHRoaXMgY29kZSB0aGVuIGNhbGwgcmtf
dWRwaHlfZHBfbGFuZV9lbmFibGUoKSB3aXRob3V0CnRoZSBjbG9ja3MgYmVpbmcgZW5hYmxlZD8g
QWNjZXNzaW5nIHVuY2xvY2tlZCBkZXZpY2UgcmVnaXN0ZXJzIG9uIGFybQpwbGF0Zm9ybXMgY2Fu
IGNhdXNlIGEgZmF0YWwgYnVzIGhhbmcuCgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6
Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNzE0LXJvY2tjaGlwLXVzYmRwLWNsZWFudXAt
djEzLTAtNmNiM2U3NjlkNGM1QGNvbGxhYm9yYS5jb20/cGFydD0yMAoKLS0gCmxpbnV4LXBoeSBt
YWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
