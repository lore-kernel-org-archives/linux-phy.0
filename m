Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 275E0C43458
	for <linux-phy@archiver.kernel.org>; Thu,  2 Jul 2026 00:00:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6KdWAFafVjpDijG7Yn63G4jt+aWFygu6Hdi6WgBrBCo=; b=uau0AlqSTT/6VC
	x+VDTCn0LTtzyKDCIiqInt8TSD1svK9G8VihSbEyaxMJjca5xPagSHITNddouo0XJFFl9WpWqv33R
	owBEiFwMVd05Ln8CasP4aD5ev0xJoJ6MznDmCfGu7GR+S0EPUL7/MK3FA6MFfGliEuG8V86KI37Je
	COopL5hhmPv70o54ZP5wum7Unf587ioh7w9xP7B3nMDN7BU6mKURL0/xmShvLzEXtvBbRopQrDqWi
	fIEyA9tHJEsgNG1Ma5O1pu2I5scH5EURLIsqhUxjCX28hGaMZhEdaFz1Ov1YGMeGHapauns9kMY1b
	LgKsxZ4P6yYiEe9EOWWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wf4qx-00000003G7F-3pDr;
	Thu, 02 Jul 2026 00:00:27 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wf4qw-00000003G76-3WJs
	for linux-phy@lists.infradead.org;
	Thu, 02 Jul 2026 00:00:26 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id EF1BF6001D;
	Thu,  2 Jul 2026 00:00:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 31AA81F000E9;
	Thu,  2 Jul 2026 00:00:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782950425;
	bh=ZSY/NZVmKWtAWhaWC9ICQrjx9AZZud9eMm01rtCIndE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Ii5Q4Sr9mZl2ZCbXmrqBHjlGCY5x/CmhIoJTBr+0cXgcSX8AoTxHyMloqHV5IgYeD
	 9Y7QT0zxbaVfNKi/OApKOqUTac/vJMkOXUV9I8/J5rvsfJ3YisLJ37Db7mrdzlXpC+
	 10dMl9l0e0GQzVmff0CaIJl4cdHZN407b52Fj6PDQUK3HshKiwn5BmkSegJ7xgk/en
	 RfUlH+8Ldo5NwK8ADixl7CQcIdON+5dPR6r9eBxHGM3NE42KhI3ZJrKMSfDzK2zGlh
	 OT10oyo4FYEWIsXNLvVzyytFFAdzzbGfN3TVZqTfxvNqwOfhBI0q8v13jb9h4aoaPj
	 p7uJR9+VBP8GA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v9 18/38] phy: rockchip: usbdp: Drop DP HPD handling
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org, vkoul@kernel.org, olteanv@gmail.com, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260702-rockchip-usbdp-cleanup-v9-18-e31efbb62d2e@collabora.com>
References: <20260702-rockchip-usbdp-cleanup-v9-0-e31efbb62d2e@collabora.com>
 <20260702-rockchip-usbdp-cleanup-v9-18-e31efbb62d2e@collabora.com>
Date: Thu, 02 Jul 2026 00:00:24 +0000
Message-Id: <20260702000025.31AA81F000E9@smtp.kernel.org>
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
IFtIaWdoXSBJbmNvbXBsZXRlIGNsZWFudXAgb2YgRFAgSFBEIGxvZ2ljIGxlYXZlcyBhIGRhbmdl
cm91cyByZWdpc3RlciB3cml0ZSBpbiB0aGUgcHJvYmUgcGF0aCwgdmlvbGF0aW5nIHBvd2VyIGRv
bWFpbiBjb25zdHJhaW50cyBhbmQgcmlza2luZyBhIGJ1cyBoYW5nIChTRXJyb3IpLgotLQoKTm90
ZTogVGhlIGZvcm1hdCBvZiB0aGlzIHJlcG9ydCBoYXMgYmVlbiBhbHRlcmVkIHRvIGEgZnJlZS1m
b3JtIHN1bW1hcnkgZHVlCnRvIHJlc3RyaWN0aW9ucyBvbiBxdW90aW5nIHRoZSBvcmlnaW5hbCBw
YXRjaCBjb2RlLgoKQ29tbWl0OiA5ODU5MjVkYjgzZWUxYzE0ODY1ZjFlYWNhNmY2MGI5MjQ1OTQx
Njc4CkF1dGhvcjogU2ViYXN0aWFuIFJlaWNoZWwgPHNlYmFzdGlhbi5yZWljaGVsQGNvbGxhYm9y
YS5jb20+ClN1YmplY3Q6IHBoeTogcm9ja2NoaXA6IHVzYmRwOiBEcm9wIERQIEhQRCBoYW5kbGlu
ZwoKVGhpcyBjb21taXQgZHJvcHMgdGhlIEhQRCBoYW5kbGluZyBsb2dpYyBmcm9tIHRoZSBVU0JE
UCBQSFkgZHJpdmVyLiBUaGUKY29tbWl0IG1lc3NhZ2Ugbm90ZXMgdGhhdCB0aGUgcmVnaXN0ZXJz
IGludm9sdmVkIHJlcXVpcmUgdGhlIGRpc3BsYXkKY29udHJvbGxlciBwb3dlciBkb21haW4gdG8g
YmUgZW5hYmxlZCwgYW5kIHRoYXQgSFBEIHNob3VsZCBiZSBoYW5kbGVkCmJ5IHRoZSBkaXNwbGF5
cG9ydCBjb250cm9sbGVyIGl0c2VsZi4KCltTZXZlcml0eTogSGlnaF0KClRoaXMgaXMgYSBwcmUt
ZXhpc3RpbmcgaXNzdWUsIGJ1dCBpdCBhcHBlYXJzIHRoZSBjbGVhbnVwIG9mIHRoZSBEUCBIUEQg
bG9naWMKbWlnaHQgYmUgaW5jb21wbGV0ZSwgbGVhdmluZyBhIHBvdGVudGlhbGx5IGRhbmdlcm91
cyByZWdpc3RlciB3cml0ZSBpbiB0aGUKcHJvYmUgcGF0aC4KCkluIHJrX3VkcGh5X2dldF9pbml0
aWFsX3N0YXR1cygpIGluIGRyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11c2JkcC5j
LAp0aGVyZSBpcyBhIGNoZWNrIHRvIHNlZSBpZiB0aGUgRFAgUEhZIHdhcyBwcmUtZW5hYmxlZCBi
eSB0aGUgYm9vdGxvYWRlci4gSWYKaXQgd2FzLCB0aGUgZHJpdmVyIHdyaXRlcyBmYWxzZSB0byB0
aGUgaHBkX3RyaWdnZXIgcmVnaXN0ZXIgdmlhCnJrX3VkcGh5X2dyZnJlZ193cml0ZSgpIGFuZCB0
aGVuIHNsZWVwcyBmb3IgMTAwbXMuCgpTaW5jZSB0aGUgY29tbWl0IG1lc3NhZ2UgZXhwbGljaXRs
eSBhY2tub3dsZWRnZXMgdGhhdCB0aGVzZSByZWdpc3RlcnMgcmVxdWlyZQp0aGUgZGlzcGxheSBj
b250cm9sbGVyIChWT1ApIHBvd2VyIGRvbWFpbiB0byBiZSBlbmFibGVkLCBkb2VzIHRoaXMgd3Jp
dGUKdmlvbGF0ZSB0aG9zZSBwb3dlciBkb21haW4gY29uc3RyYWludHM/IAoKSWYgdGhlIGtlcm5l
bCBkaXNhYmxlcyB0aGUgVk9QIHBvd2VyIGRvbWFpbiBiZWZvcmUgdGhpcyBkcml2ZXIgcHJvYmVz
IChmb3IKZXhhbXBsZSwgZHVlIHRvIGFzeW5jaHJvbm91cyBwcm9iaW5nIGFuZCB0aGUgZGlzcGxh
eSBkcml2ZXIgc3VzcGVuZGluZyBvcgpyZXNldHRpbmcgaXRzIFBNIGRvbWFpbiksIGNvdWxkIHRo
aXMgd3JpdGUgdG8gaHBkX3RyaWdnZXIgY2F1c2UgYW4KYXN5bmNocm9ub3VzIGFib3J0IChTRXJy
b3IpIGFuZCBhIHN1YnNlcXVlbnQga2VybmVsIHBhbmljIGR1cmluZyBib290PwoKV291bGQgaXQg
bWFrZSBzZW5zZSB0byByZW1vdmUgdGhpcyByZW1haW5pbmcgSFBEIHRyaWdnZXIgd3JpdGUgaW4g
dGhlIGluaXRpYWwKc3RhdHVzIGNoZWNrIGFzIHdlbGwsIHRvIGZ1bGx5IGRlY291cGxlIHRoZSBQ
SFkgZHJpdmVyIGZyb20gdGhlIGRpc3BsYXkKY29udHJvbGxlciBwb3dlciBkb21haW4/CgotLSAK
U2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYw
NzAyLXJvY2tjaGlwLXVzYmRwLWNsZWFudXAtdjktMC1lMzFlZmJiNjJkMmVAY29sbGFib3JhLmNv
bT9wYXJ0PTE4CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1waHkK
