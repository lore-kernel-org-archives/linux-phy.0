Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 784C4C44506
	for <linux-phy@archiver.kernel.org>; Thu,  9 Jul 2026 19:19:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CursFosf1twP15Y+gg7sigO5yduG0uIKUhmNrEsV7gY=; b=HsYsqDjUYT4H+J
	kAs2xPndE85wNscZHxfMfjxKLeTuHOtYW6TIjXXxCexxviZ76BTmSFGH/a1igBt2/DWosJJmS//Ne
	CqaCPuGM45NVIJuLcZ8iKLhXnXLGXWvJLdaw6W5NC9H3RUbhiyi/7SNBOwaPphSdEvMD8UsRzagDC
	BLCuUtuQzmSLQu603jTvvoVXfIXVQLXJ45ndQBeiKpYypIm68yvQMNl8xCo4qjyXmAEAQoq8GxpFM
	YCtKyGn9NAE6EwKyUMqrW02WTtA3U5JoySwLATRzKCdLhx73fSrTK2NkC0aH7Wl+PRQM+ClHGAzuB
	8NS6E9a7xOqjpyMFtJKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whuHL-00000003RaW-0Ab4;
	Thu, 09 Jul 2026 19:19:23 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whuHK-00000003RZq-0j89
	for linux-phy@lists.infradead.org;
	Thu, 09 Jul 2026 19:19:22 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 7E3FA600C3;
	Thu,  9 Jul 2026 19:19:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B57BB1F00A3A;
	Thu,  9 Jul 2026 19:19:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783624761;
	bh=pDvZhuofFrlkfjiDZi9AXre9u3QgK/BBazHm7A9fn4Q=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Wvf9SBdIC3Pn1TbcIsYn/UuU/MmlYyTdTO85VxnlnSQXpSYDceFSNO/4/ERszzupV
	 HkkHoBkVHhGKC5Plt1YyRFQCOZ8glEUENKc5yuHg1CwMiY/+CibW/SZp/XJ9sNViDl
	 vPMzYEN/QQca2T6Kv88b3GePm30Gq8rZYXJfMq453BUcKgYMCSHEAuFrhBiJsHK7sL
	 VkCPuV1C5hQqst16NZ9Ts2MFzYO3YEqDtgeTge1ywcJCxYeEjlBNytct70/KAwG/ja
	 9ARbpaC2egA9SWMh7OlSnz7zBUfyYhCw+NBaVnenBwC2ZfDqJVYSwMZIkOxkE7jdff
	 LVX7pu6n53wnA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v11 03/36] phy: rockchip: usbdp: Do not lose USB3 PHY
 status
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: olteanv@gmail.com, conor+dt@kernel.org, linux-phy@lists.infradead.org, robh@kernel.org, devicetree@vger.kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20260709-rockchip-usbdp-cleanup-v11-3-a149ac60f76c@collabora.com>
References: <20260709-rockchip-usbdp-cleanup-v11-0-a149ac60f76c@collabora.com>
 <20260709-rockchip-usbdp-cleanup-v11-3-a149ac60f76c@collabora.com>
Date: Thu, 09 Jul 2026 19:19:20 +0000
Message-Id: <20260709191920.B57BB1F00A3A@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFByZXNlcnZpbmcgdGhl
IFVTQiBzdGF0dXMgYml0IGR1cmluZyBhIG1vZGUgY2hhbmdlIHRvIDQtbGFuZSBEUCBwcmV2ZW50
cyB0aGUgUEhZIGZyb20gZXZlciBwb3dlcmluZyBvZmYsIGJyZWFraW5nIHN5c3RlbSBQTS4KLSBb
TWVkaXVtXSBSZW1vdmluZyB0aGUgdW5jb25kaXRpb25hbCBjbGVhciBvZiBgdWRwaHktPnN0YXR1
c2AgaW50cm9kdWNlcyBhIHN0YXRlIGRlc3luY2hyb25pemF0aW9uIGFuZCB1bmJhbGFuY2VkIGNs
b2NrIGRpc2FibGUgYnVnIGlmIGBya191ZHBoeV9zZXR1cCgpYCBmYWlscyBkdXJpbmcgYSBtb2Rl
IGNoYW5nZS4KLS0KCi0tLSBQYXRjaCBbM106IFtQQVRDSCB2MTEgMDMvMzZdIHBoeTogcm9ja2No
aXA6IHVzYmRwOiBEbyBub3QgbG9zZSBVU0IzIFBIWSBzdGF0dXMgLS0tCmNvbW1pdCAxODNjODkz
N2JiYmJjYjJjMDQxOThlMzNhOGNmNmY1MDExMWE0OWEyCkF1dGhvcjogU2ViYXN0aWFuIFJlaWNo
ZWwgPHNlYmFzdGlhbi5yZWljaGVsQGNvbGxhYm9yYS5jb20+CgpwaHk6IHJvY2tjaGlwOiB1c2Jk
cDogRG8gbm90IGxvc2UgVVNCMyBQSFkgc3RhdHVzCgpCeSBkZWZhdWx0IERXQzMgcmVxdWVzdHMg
dGhlIFVTQjMgUEhZIG9uY2UgYW5kIGtlZXBzIGl0IGVuYWJsZWQgYWxsIHRoZSB0aW1lLgpXaGVu
IERpc3BsYXlQb3J0IGlzIGJlaW5nIHJlcXVlc3RlZCBsYXRlciBvbiwgYSBtb2RlIGNoYW5nZSBp
cyBuZWVkZWQgd2hpY2gKcmUtaW5pdGlhbGl6ZXMgdGhlIFBIWS4gRHVyaW5nIHJlLWluaXRpYWxp
emF0aW9uIHRoZSBzdGF0dXMgdmFyaWFibGUgaGFzCmluY29ycmVjdGx5IGJlZW4gY2xlYXJlZCwg
d2hpY2ggbWVhbnMgdGhlIHRyYWNraW5nIGluZm9ybWF0aW9uIGZvciBVU0IzIGlzIGxvc3QuCgo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYyBi
L2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11c2JkcC5jCj4gaW5kZXggYTVmZmRm
N2E2ZTc2Yi4uMTJkZmRkNDcwYTc4MiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9yb2NrY2hp
cC9waHktcm9ja2NoaXAtdXNiZHAuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1y
b2NrY2hpcC11c2JkcC5jCj4gQEAgLTEwMDgsNyArMTAwOCw2IEBAIHN0YXRpYyBpbnQgcmtfdWRw
aHlfcG93ZXJfb24oc3RydWN0IHJrX3VkcGh5ICp1ZHBoeSwgdTggbW9kZSkKPiAgCQkJcmtfdWRw
aHlfdTNfcG9ydF9kaXNhYmxlKHVkcGh5LCBmYWxzZSk7Cj4gIAkJdWRwaHktPm1vZGVfY2hhbmdl
ID0gZmFsc2U7Cj4gIAl9IGVsc2UgaWYgKHVkcGh5LT5tb2RlX2NoYW5nZSkgewo+IC0JCXVkcGh5
LT5zdGF0dXMgPSBVRFBIWV9NT0RFX05PTkU7CgpbU2V2ZXJpdHk6IE1lZGl1bV0KSWYgcmtfdWRw
aHlfc2V0dXAoKSBmYWlscyBkdXJpbmcgYSBtb2RlIGNoYW5nZSwgY291bGQgdGhpcyBsZWFkIHRv
IGFuIHVuYmFsYW5jZWQKY2xvY2sgZGlzYWJsZT8KCnJrX3VkcGh5X3Bvd2VyX29uKCkgY2FsbHMg
cmtfdWRwaHlfZGlzYWJsZSgpLCBidXQgaWYgcmtfdWRwaHlfc2V0dXAoKSBmYWlsczoKCgl9IGVs
c2UgaWYgKHVkcGh5LT5tb2RlX2NoYW5nZSkgewoJCWlmICh1ZHBoeS0+bW9kZSA9PSBVRFBIWV9N
T0RFX0RQKQoJCQlya191ZHBoeV91M19wb3J0X2Rpc2FibGUodWRwaHksIHRydWUpOwoKCQlya191
ZHBoeV9kaXNhYmxlKHVkcGh5KTsKCQlyZXQgPSBya191ZHBoeV9zZXR1cCh1ZHBoeSk7CgkJaWYg
KHJldCkKCQkJcmV0dXJuIHJldDsKCml0IHJldHVybnMgZWFybHkgd2l0aG91dCBjbGVhcmluZyB1
ZHBoeS0+c3RhdHVzIHNpbmNlIHRoZSB1bmNvbmRpdGlvbmFsCnJlc2V0IHRvIFVEUEhZX01PREVf
Tk9ORSB3YXMgcmVtb3ZlZC4KCkxhdGVyLCBpZiBya191ZHBoeV9wb3dlcl9vZmYoKSBpcyBjYWxs
ZWQgdG8gdW53aW5kLCBpdCBjbGVhcnMgdGhlIG9sZCBtb2RlIGJpdApmcm9tIHVkcGh5LT5zdGF0
dXMsIHJlYWNoZXMgVURQSFlfTU9ERV9OT05FLCBhbmQgY2FsbHMgcmtfdWRwaHlfZGlzYWJsZSgp
IGEKc2Vjb25kIHRpbWUgb24gYWxyZWFkeS1kaXNhYmxlZCBjbG9ja3MuCgpbU2V2ZXJpdHk6IEhp
Z2hdCkRvZXMgcHJlc2VydmluZyB0aGUgVVNCIHN0YXR1cyBiaXQgZHVyaW5nIGEgbW9kZSBjaGFu
Z2UgdG8gNC1sYW5lIERQIHByZXZlbnQKdGhlIFBIWSBmcm9tIHBvd2VyaW5nIG9mZj8KCldoZW4g
VHlwZS1DIG5lZ290aWF0ZXMgNC1sYW5lIERpc3BsYXlQb3J0LCB1ZHBoeS0+bW9kZSBpcyB1cGRh
dGVkIGV4Y2x1c2l2ZWx5CnRvIFVEUEhZX01PREVfRFAuCgpCZWNhdXNlIHRoZSByZXNldCBpcyBy
ZW1vdmVkIGhlcmUsIHJrX3VkcGh5X3Bvd2VyX29uKCkgcHJlc2VydmVzIHRoZQpVRFBIWV9NT0RF
X1VTQiBiaXQgaW4gdWRwaHktPnN0YXR1cyB3aGVuIGl0IHVwZGF0ZXMgdGhlIG1vZGU6CgoJdWRw
aHktPnN0YXR1cyB8PSBtb2RlOwoKV2hlbiB0aGUgVVNCIHN1YnN5c3RlbSBzdXNwZW5kcyBhbmQg
Y2FsbHMgcmtfdWRwaHlfdXNiM19waHlfZXhpdCgpLCBpdApwZXJmb3JtcyBhbiBlYXJseSBiYWls
b3V0OgoKc3RhdGljIGludCBya191ZHBoeV91c2IzX3BoeV9leGl0KHN0cnVjdCBwaHkgKnBoeSkK
ewoJLi4uCgkvKiBEUCBvbmx5IG9yIGhpZ2gtc3BlZWQgKi8KCWlmICghKHVkcGh5LT5tb2RlICYg
VURQSFlfTU9ERV9VU0IpIHx8IHVkcGh5LT5ocykKCQlnb3RvIHVubG9jazsKClRoaXMgbGVhdmVz
IHRoZSBVU0IgYml0IHBlcm1hbmVudGx5IHRyYXBwZWQgaW4gdWRwaHktPnN0YXR1cy4KCkZpbmFs
bHksIHdoZW4gRFAgaXMgcG93ZXJlZCBvZmYsIHVkcGh5LT5zdGF0dXMgcmVzb2x2ZXMgdG8gVURQ
SFlfTU9ERV9VU0IsCndoaWNoIHNraXBzIHRoZSBwaHlzaWNhbCBya191ZHBoeV9kaXNhYmxlKCkg
Y2FsbCBhbmQgbGVhdmVzIHRoZSBQSFkgcnVubmluZy4KCj4gIAkJaWYgKHVkcGh5LT5tb2RlID09
IFVEUEhZX01PREVfRFApCj4gIAkJCXJrX3VkcGh5X3UzX3BvcnRfZGlzYWJsZSh1ZHBoeSwgdHJ1
ZSk7Cj4KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0
Y2hzZXQvMjAyNjA3MDktcm9ja2NoaXAtdXNiZHAtY2xlYW51cC12MTEtMC1hMTQ5YWM2MGY3NmNA
Y29sbGFib3JhLmNvbT9wYXJ0PTMKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBo
eUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXBoeQo=
