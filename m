Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F08CBC43458
	for <linux-phy@archiver.kernel.org>; Tue, 14 Jul 2026 20:15:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RJH7ry6M0h4XLtmFpTFs/MPpBaQJoybtb0S625erVms=; b=AxR/jZDBRoE5un
	PKN4AWrsbNG/dhCMk47XeMu2pC5NcMrVNaxgycO9iPnyaP8nHIHhhWMGvbLOkNqDSvysm6aQ0cONj
	C5pPsbivRqlOBgCw2l+N+yK+TQGgAgbaCPo/ati+WD0FPpxtGaTbZb/kLjgwqEuuBDn1n+T4zw+2N
	YWRIHNCIryKfUrXiBWanX173DWdDVYNuRJD8PVupbrnxE2cscqYC7RR1ohZTLMkGgdKpswpGyzi5U
	wje6A97cegpyFjnxshjDriR7azdrEbEISGH0fqbNqZdxDoyRW3rM2Dbjyn29KQg0GNGXNy8P7FNih
	TzdExrFAN0fpa+NP7SwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjjXl-0000000DD00-2iiu;
	Tue, 14 Jul 2026 20:15:53 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjjXk-0000000DCzr-2KgB
	for linux-phy@lists.infradead.org;
	Tue, 14 Jul 2026 20:15:52 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id E6B5760103;
	Tue, 14 Jul 2026 20:15:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 197A81F000E9;
	Tue, 14 Jul 2026 20:15:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784060151;
	bh=wNQQrwvWk06rZvAOXuAqVWSyH7mtMtOyK2DT4/fewzA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=CxNy2SnT6DYd1R6WThGYNu7+GrDhT1QXDzZRVwqEJRqBc2peRyqiZyj4CeSosQ1vf
	 cokw5Yd76yy+HLXwlrKnPrALhsd/N4bwpZK1n43rerYzl5iXLahUD3Gvn9CiuUe16B
	 5KKcfnBbx/xjWCy5f2hWk7BvIjAhinbzDCRdUFZChC95e+ZIciuFbXgFdqvKbwMXZ3
	 VrSKkZEBkU9YLvehBdQC+tHmHTrOmSiEQGGoTVZv5m0DqJOl1/fdMVBAXpUgM56L5e
	 85XgvTYRK0U+s4OR/rUbV+ik8mxVZ3qFbzPc7xhqM6awz60WM8TgLBRAoLvp2n9Uv7
	 h03BdJ1tld08Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v13 27/35] phy: rockchip: usbdp: Only enable USB3 when
 not in high-speed mode
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: robh@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, olteanv@gmail.com, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260714-rockchip-usbdp-cleanup-v13-27-6cb3e769d4c5@collabora.com>
References: <20260714-rockchip-usbdp-cleanup-v13-0-6cb3e769d4c5@collabora.com>
 <20260714-rockchip-usbdp-cleanup-v13-27-6cb3e769d4c5@collabora.com>
Date: Tue, 14 Jul 2026 20:15:50 +0000
Message-Id: <20260714201551.197A81F000E9@smtp.kernel.org>
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
IFtIaWdoXSBSZXR1cm5pbmcgMCBpbnN0ZWFkIG9mIGFuIGVycm9yIHdoZW4gYSByZXF1ZXN0ZWQg
UEhZIG1vZGUgaXMgdW5zdXBwb3J0ZWQgY2F1c2VzIHVuY2xvY2tlZCByZWdpc3RlciBhY2Nlc3Nl
cyB0aGF0IHdpbGwgdHJpZ2dlciBhIFN5bmNocm9ub3VzIEV4dGVybmFsIEFib3J0IChTRXJyb3Ip
LgotLQoKLS0tIFBhdGNoIFsyN106IFtQQVRDSCB2MTMgMjcvMzVdIHBoeTogcm9ja2NoaXA6IHVz
YmRwOiBPbmx5IGVuYWJsZSBVU0IzIHdoZW4gbm90IGluIGhpZ2gtc3BlZWQgbW9kZSAtLS0KY29t
bWl0IDgwZjhlNThjNzM2Njk3MDU0ZTYzY2VlMzFlNGFmYjZkOTRmYjllOTAKQXV0aG9yOiBTZWJh
c3RpYW4gUmVpY2hlbCA8c2ViYXN0aWFuLnJlaWNoZWxAY29sbGFib3JhLmNvbT4KCnBoeTogcm9j
a2NoaXA6IHVzYmRwOiBPbmx5IGVuYWJsZSBVU0IzIHdoZW4gbm90IGluIGhpZ2gtc3BlZWQgbW9k
ZQoKVGhpcyBjb21taXQgZW5zdXJlcyB0aGF0IFVTQjMgbW9kZSBpcyBub3QgYWNjaWRlbnRhbGx5
IGVuYWJsZWQgZHVyaW5nClBIWSByZS1pbml0aWFsaXphdGlvbiBmb3Igc3lzdGVtcyBjb25maWd1
cmVkIGFzIGhpZ2gtc3BlZWQgb25seSB2aWEKZGV2aWNlIHRyZWUuCgpGaXhlczogMmY3MGJiZGRl
YjQ1ICgicGh5OiByb2NrY2hpcDogYWRkIHVzYmRwIGNvbWJvIHBoeSBkcml2ZXIiKQpSZXBvcnRl
ZC1ieTogU2FzaGlrbyA8c2FzaGlrby1ib3RAa2VybmVsLm9yZz4KQ2xvc2VzOiBodHRwczovL3Nh
c2hpa28uZGV2LyMvbWVzc2FnZS8yMDI2MDYyNjIxMjQyNC5DMjE1RTFGMDAwRTklNDBzbXRwLmtl
cm5lbC5vcmcKU2lnbmVkLW9mZi1ieTogU2ViYXN0aWFuIFJlaWNoZWwgPHNlYmFzdGlhbi5yZWlj
aGVsQGNvbGxhYm9yYS5jb20+Cgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9w
aHktcm9ja2NoaXAtdXNiZHAuYyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11
c2JkcC5jCj4gaW5kZXggNzAxYzkyZWQ2ZTJkZS4uNTliODM2YTM3OTZjZSAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYwo+ICsrKyBiL2RyaXZl
cnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11c2JkcC5jCj4gQEAgLTEwMDksNyArMTAwOSw3
IEBAIHN0YXRpYyBpbnQgcmtfdWRwaHlfcG93ZXJfb24oc3RydWN0IHJrX3VkcGh5ICp1ZHBoeSwg
dTggbW9kZSkKCltTZXZlcml0eTogSGlnaF0KVGhpcyBpcyBhIHByZS1leGlzdGluZyBpc3N1ZSwg
YnV0IEkgbm90aWNlZCBhIHBvdGVudGlhbCBwcm9ibGVtIGluCnJrX3VkcGh5X3Bvd2VyX29uKCkg
d2hlbiBhbiB1bnN1cHBvcnRlZCBtb2RlIGlzIHJlcXVlc3RlZC4KCkVhcmxpZXIgaW4gdGhlIHNh
bWUgZnVuY3Rpb246CgogICAgaWYgKCEodWRwaHktPm1vZGUgJiBtb2RlKSkgewogICAgICAgIGRl
dl9pbmZvKHVkcGh5LT5kZXYsICJtb2RlIDB4JTAyeCBpcyBub3Qgc3VwcG9ydFxuIiwgbW9kZSk7
CiAgICAgICAgcmV0dXJuIDA7CiAgICB9CgpJZiBwaHlfcG93ZXJfb24oKSBpcyBjYWxsZWQgYnkg
YSBjb25zdW1lciBsaWtlIHRoZSBEUCBkcml2ZXIgd2hpbGUKdWRwaHktPm1vZGUgbGFja3MgVURQ
SFlfTU9ERV9EUCwgdGhpcyByZXR1cm5zIDAgaW5zdGVhZCBvZiBhbiBlcnJvciBjb2RlLgoKVGhl
IGNhbGxlciBya191ZHBoeV9kcF9waHlfcG93ZXJfb24oKSB0aGVuIHJlY2VpdmVzIHRoaXMgZmFs
c2Ugc3VjY2Vzcwp2YWx1ZToKCiAgICByZXQgPSBya191ZHBoeV9wb3dlcl9vbih1ZHBoeSwgVURQ
SFlfTU9ERV9EUCk7CiAgICBpZiAocmV0KQogICAgICAgIHJldHVybiByZXQ7CgogICAgcmtfdWRw
aHlfZHBfbGFuZV9lbmFibGUodWRwaHksIHVkcGh5LT5kcF9sYW5lcyk7CgpDb3VsZCB0aGlzIGNh
dXNlIHJrX3VkcGh5X2RwX2xhbmVfZW5hYmxlKCkgdG8gYWNjZXNzIHBtYV9yZWdtYXAgd2hpbGUK
dGhlIFBIWSBBUEIgY2xvY2tzIHJlbWFpbiBkaXNhYmxlZD8gCgpTaW5jZSBya191ZHBoeV9zZXR1
cCgpIHdvdWxkIG5vdCBoYXZlIGJlZW4gY2FsbGVkLCBhY2Nlc3NpbmcgdW5jbG9ja2VkCkFQQiBy
ZWdpc3RlcnMgaGVyZSBjb3VsZCB0cmlnZ2VyIGEgU3luY2hyb25vdXMgRXh0ZXJuYWwgQWJvcnQg
KFNFcnJvcikuCgpXb3VsZCBpdCBiZSBzYWZlciB0byByZXR1cm4gYW4gZXJyb3IgbGlrZSAtRU9Q
Tk9UU1VQUCBpbnN0ZWFkIG9mIDAgd2hlbgp0aGUgcmVxdWVzdGVkIFBIWSBtb2RlIGlzIHVuc3Vw
cG9ydGVkPwoKPiAgCQlpZiAocmV0KQo+ICAJCQlyZXR1cm4gcmV0Owo+ICAKPiAtCQlpZiAodWRw
aHktPm1vZGUgJiBVRFBIWV9NT0RFX1VTQikKPiArCQlpZiAoIXVkcGh5LT5ocyAmJiB1ZHBoeS0+
bW9kZSAmIFVEUEhZX01PREVfVVNCKQo+ICAJCQlya191ZHBoeV91M19wb3J0X2Rpc2FibGUodWRw
aHksIGZhbHNlKTsKPiAgCQl1ZHBoeS0+cGh5X25lZWRzX3JlaW5pdCA9IGZhbHNlOwo+ICAJfSBl
bHNlIGlmICh1ZHBoeS0+cGh5X25lZWRzX3JlaW5pdCkgewoKLS0gClNhc2hpa28gQUkgcmV2aWV3
IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDcxNC1yb2NrY2hpcC11c2Jk
cC1jbGVhbnVwLXYxMy0wLTZjYjNlNzY5ZDRjNUBjb2xsYWJvcmEuY29tP3BhcnQ9MjcKCi0tIAps
aW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBz
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
