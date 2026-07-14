Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52482C43458
	for <linux-phy@archiver.kernel.org>; Tue, 14 Jul 2026 20:39:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QVF4Hd49RJjD2tu2GWNEaHuP7FdU7m+RCq49QWJ/3NM=; b=kpWgxma2Q4gESC
	N1ubYtWYg8Mvw0lQEBb5PAmOIv624VtV0jHZrfyXIpYHb3pgmu+AjXAj6EIWTwt4op3fwElhECkCV
	oVu1M62LEpXo6DohNE06nFWSJHkLVZw+7pfH99kjQM7knHqwd9uRXM5WJdyXeMZUxusJ/FsCcJ5yr
	+o2V0hxeBhH7j4iL8Gj66ZaKa3OVkfYI5uWLrEZDkPZsJBVO7wMrClZuekL46jEHBxTNFbwO8gZyc
	oZMFUktwS9TGKoUcZolRBbXeHBW3pt+CQPT/0cvdAneakm7UWe07kfvQqVtLz2PLP4Km8Vl/MeyyW
	AGkTyu6hPmR2aIEzzyaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjjue-0000000DFZY-31H8;
	Tue, 14 Jul 2026 20:39:32 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjjuc-0000000DFZ9-2EZs
	for linux-phy@lists.infradead.org;
	Tue, 14 Jul 2026 20:39:30 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id C83BA60103;
	Tue, 14 Jul 2026 20:39:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0DA671F00A3A;
	Tue, 14 Jul 2026 20:39:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784061569;
	bh=pCp0jhOxizLfOHyjrRbKssw2hFbEiYsRp70qyWKbs0o=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=AsVQMpeiUvM8Dlfkn9c25Wja7u4V6VBYE0xRDe+ZW9EkR5jjF7ijw6pEEhZ6ipW77
	 B0ev5agyODZdtzBGlpzJHzWPsfE1QYxlPyYmft1YFzPFNOeYMbRsrDp05J/B7uKCXs
	 kdPKFNNZJ7jyv2CyeuAV9RFfpnMe8fHB9GaalnEHwbMDQpxsUc+M+KU4MN3ZQIa9g3
	 MQMHmZN7mzu4W+/qkA0XvtpuHxea/+DmFz3pqmYFwOu8SZiuQEHGXBnvrVyxECUP8u
	 2qQxnkLapbi4HJ7apaJePmupgU73sZmemlctpNtOKkt0QQ7j1iT/u/1EB73x9C24IT
	 hRaG5fpUOIIfQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v13 34/35] phy: rockchip: usbdp: Re-init PHY on mux
 change
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: olteanv@gmail.com, linux-phy@lists.infradead.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260714-rockchip-usbdp-cleanup-v13-34-6cb3e769d4c5@collabora.com>
References: <20260714-rockchip-usbdp-cleanup-v13-0-6cb3e769d4c5@collabora.com>
 <20260714-rockchip-usbdp-cleanup-v13-34-6cb3e769d4c5@collabora.com>
Date: Tue, 14 Jul 2026 20:39:28 +0000
Message-Id: <20260714203929.0DA671F00A3A@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIEZvcmNpbmcgYSBQSFkg
cmUtaW5pdGlhbGl6YXRpb24gZHVyaW5nIGEgZHluYW1pYyBtb2RlIHN3aXRjaCBwZXJtYW5lbnRs
eSBkaXNhYmxlcyB0aGUgRFAgbGFuZXMgYW5kIGxlYXZlcyBzdGFsZSBsYW5lIHJvdXRpbmcsIGJy
ZWFraW5nIHRoZSBEUCBsaW5rLgotLQoKLS0tIFBhdGNoIFszNF06IFtQQVRDSCB2MTMgMzQvMzVd
IHBoeTogcm9ja2NoaXA6IHVzYmRwOiBSZS1pbml0IFBIWSBvbiBtdXggY2hhbmdlIC0tLQpjb21t
aXQgODFjZjFiNTBlNGRiZDZjOTJiOTQ4YzA4ZWM4NDAxZjM1NjhlOTQyOQpBdXRob3I6IFNlYmFz
dGlhbiBSZWljaGVsIDxzZWJhc3RpYW4ucmVpY2hlbEBjb2xsYWJvcmEuY29tPgoKcGh5OiByb2Nr
Y2hpcDogdXNiZHA6IFJlLWluaXQgUEhZIG9uIG11eCBjaGFuZ2UKCkVuc3VyZSB0aGF0IHRoZSBy
aWdodCBwYXJ0IG9mIHRoZSBQSFkgYXJlIHBvd2VyZWQgdXAgd2hlbiB0aGUgbW9kZSBjaGFuZ2Vz
LgpUaGlzIGVuc3VyZXMgdGhlIFBIWSBpcyByZS1pbml0aWFsaXplZCBkdXJpbmcgY2FibGUgb3Jp
ZW50YXRpb24gY2hhbmdlcyBvcgpzd2l0Y2hpbmcgZnJvbSBEUC1vbmx5IGludG8gYSBtb2RlIHdp
dGggVVNCIHN1cHBvcnQuCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHkt
cm9ja2NoaXAtdXNiZHAuYyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11c2Jk
cC5jCj4gaW5kZXggZTU5N2NkZmU4ZDc5MC4uODdkNmRmNjgyMTc2MCAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYwo+ICsrKyBiL2RyaXZlcnMv
cGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11c2JkcC5jCj4gQEAgLTEzOTIsNyArMTM5Miw3IEBA
IHN0YXRpYyBpbnQgcmtfdWRwaHlfdHlwZWNfbXV4X3NldChzdHJ1Y3QgdHlwZWNfbXV4X2RldiAq
bXV4LAo+ICAKPiAgCXJrX3VkcGh5X3NldF90eXBlY19zdGF0ZSh1ZHBoeSwgc3RhdGUtPm1vZGUp
Owo+ICAKPiAtCXJldHVybiAwOwo+ICsJcmV0dXJuIHJrX3VkcGh5X3VwZGF0ZV9wb3dlcl9zdGF0
ZSh1ZHBoeSk7CgpbU2V2ZXJpdHk6IEhpZ2hdCldoZW4gYSBkeW5hbWljIG1vZGUgc3dpdGNoIGhh
cHBlbnMgKHN1Y2ggYXMgY29ubmVjdGluZyBhIFVTQiAzIGRldmljZSB0byBhbgphY3RpdmUgVHlw
ZS1DIERQIGRvY2spLCBya191ZHBoeV91cGRhdGVfcG93ZXJfc3RhdGUoKSB3aWxsIGNhbGwKcmtf
dWRwaHlfaW5pdCgpOgoKZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmM6
cmtfdWRwaHlfdXBkYXRlX3Bvd2VyX3N0YXRlKCkgewoJLi4uCgl9IGVsc2UgewoJCS8qIE1vZGUg
Y2hhbmdlID0+IHJlLWluaXQgKi8KCQlyZXQgPSBya191ZHBoeV9pbml0KHVkcGh5KTsKCS4uLgp9
Cgpya191ZHBoeV9pbml0KCkgdGhlbiBleHBsaWNpdGx5IGNsZWFycyBDTU5fRFBfTEFORV9FTl9B
TEwsIHBoeXNpY2FsbHkgZGlzYWJsaW5nCnRoZSBEUCBsYW5lczoKCmRyaXZlcnMvcGh5L3JvY2tj
aGlwL3BoeS1yb2NrY2hpcC11c2JkcC5jOnJrX3VkcGh5X2luaXQoKSB7CgkuLi4KCXJlZ21hcF91
cGRhdGVfYml0cyh1ZHBoeS0+cG1hX3JlZ21hcCwgQ01OX0xBTkVfTVVYX0FORF9FTl9PRkZTRVQs
CgkJCSAgIENNTl9EUF9MQU5FX01VWF9BTEwgfCBDTU5fRFBfTEFORV9FTl9BTEwsCgkJCSAgIC4u
LgoJCQkgICBGSUVMRF9QUkVQKENNTl9EUF9MQU5FX0VOX0FMTCwgMCkpOwoJLi4uCn0KClNpbmNl
IHJrX3VkcGh5X3VwZGF0ZV9wb3dlcl9zdGF0ZSgpIGRvZXMgbm90IHJlc3RvcmUgdGhlIGxhbmUg
Y29uZmlndXJhdGlvbiBhbmQKdGhlIERSTSBkcml2ZXIgZG9lcyBub3QgY2FsbCBwaHlfcG93ZXJf
b24oKSBhZ2FpbiAoaXQgb25seSByZXRyYWlucyB0aGUgbGluawp2aWEgcGh5X2NvbmZpZ3VyZSgp
KSwgZG9lcyB0aGlzIHBlcm1hbmVudGx5IGRpc2FibGUgdGhlIERQIGxhbmVzIGFuZCBicmVhayB0
aGUKRFAgbGluayBkdXJpbmcgYSBtb2RlIHN3aXRjaD8KCj4gIH0KPiAgCj4gIHN0YXRpYyB2b2lk
IHJrX3VkcGh5X3R5cGVjX211eF91bnJlZ2lzdGVyKHZvaWQgKmRhdGEpCgotLSAKU2FzaGlrbyBB
SSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNzE0LXJvY2tj
aGlwLXVzYmRwLWNsZWFudXAtdjEzLTAtNmNiM2U3NjlkNGM1QGNvbGxhYm9yYS5jb20/cGFydD0z
NAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5
Cg==
