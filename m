Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A4BEC44507
	for <linux-phy@archiver.kernel.org>; Tue, 14 Jul 2026 19:48:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DDPPMnX9gi9CMfX7HbwKxkFnJwJ0m/Jux5lPnjV/IPE=; b=XGLxzuNj6KXxOk
	qu1TZr4NyhoetKFJ+EVJ6LbBh9PSxtoOf0JjOTwBddzdAvc4hX/6IcuFe6Xnb+M4EWjbu35lU4+ps
	15O+ngob/Cms9DNn4f7yP/EHdXN/1EoNO6BXP6pOTtc2RoB7dtmeEIbqRtukjR5sFitg4Gd+xrrkF
	xu35s3D4bI8a9HrloluYQliaY1Zk+wKx81lEEnbILXGlfkqhMCVb77krHaAARCXQYWRI2PSu4+6VV
	lrBnqSEcpReMhIJ+AWh52fjNy2Ge1ry4P5WAT7hykixaOSkMJZiOXM4lY7MAg3SQkTpJAU+oEUwVW
	lUrNK8151W/84hjry6IQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjj7b-0000000DA5A-32o3;
	Tue, 14 Jul 2026 19:48:51 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjj7a-0000000DA4Z-1e7n
	for linux-phy@lists.infradead.org;
	Tue, 14 Jul 2026 19:48:50 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 911CD60103;
	Tue, 14 Jul 2026 19:48:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C91511F000E9;
	Tue, 14 Jul 2026 19:48:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784058529;
	bh=0AryzvXHNqPdShtyz0iKiiDDljQCajdekSlOfVNbLEU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=fjEwlc7Cdp4z9BMl22sPkeZ40EfapEL3gg6VFVOXDQOWLMCCBBMrfs41qRW8tx7ta
	 Jew8GPAPNq/OHfw+C9uFqX1FKBH+CRrkxTphJCw5t+rQjCDKUGDZfR2BpOCixJoL29
	 6FTfGVaXllCDm7+DBFKrAU8RQYW/fftFe8wC7vl4YwvoF4rJxQYAgGuA3nKcuPtP2w
	 kLdQOUYW9VU+BFfPmA0WLiPRG2mwEBnbDU0Q+c8G+1yK631eS95GnQqUntjN+aL1PV
	 HAiXn4rO/7MxstNA9YW9LGud2jKY4H4v9szXTvXXiUfFqkY+c6lUP8CqlnOp515dtn
	 D8oit5qIfvFZw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v13 04/35] phy: rockchip: usbdp: Fix
 devm_clk_bulk_get_all check
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: robh@kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, vkoul@kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20260714-rockchip-usbdp-cleanup-v13-4-6cb3e769d4c5@collabora.com>
References: <20260714-rockchip-usbdp-cleanup-v13-0-6cb3e769d4c5@collabora.com>
 <20260714-rockchip-usbdp-cleanup-v13-4-6cb3e769d4c5@collabora.com>
Date: Tue, 14 Jul 2026 19:48:48 +0000
Message-Id: <20260714194848.C91511F000E9@smtp.kernel.org>
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
IFtIaWdoXSBJZiB0aGUgUEhZIHdhcyBwcmUtZW5hYmxlZCBieSB0aGUgYm9vdGxvYWRlciwgdGhl
IGRyaXZlciBsZWF2ZXMgdGhlIGNsb2NrcyBlbmFibGVkIGFuZCByZXNldHMgZGVhc3NlcnRlZC4g
SWYgcHJvYmUgZmFpbHMgc3Vic2VxdWVudGx5IG9yIHRoZSBkcml2ZXIgaXMgdW5ib3VuZCwgdGhl
c2UgcmVzb3VyY2VzIGFyZSBwZXJtYW5lbnRseSBsZWFrZWQuCi0tCgotLS0gUGF0Y2ggWzRdOiBb
UEFUQ0ggdjEzIDA0LzM1XSBwaHk6IHJvY2tjaGlwOiB1c2JkcDogRml4IGRldm1fY2xrX2J1bGtf
Z2V0X2FsbCBjaGVjayAtLS0KY29tbWl0IDU1M2I2ODA5MmUyZWQzNzQ3Mzc3YzUyZWQ1MzIyNTM4
OWRmZjUwOTYKQXV0aG9yOiBTZWJhc3RpYW4gUmVpY2hlbCA8c2ViYXN0aWFuLnJlaWNoZWxAY29s
bGFib3JhLmNvbT4KCnBoeTogcm9ja2NoaXA6IHVzYmRwOiBGaXggZGV2bV9jbGtfYnVsa19nZXRf
YWxsIGNoZWNrCgpUaGlzIGNvbW1pdCBmaXhlcyB0aGUgcmV0dXJuIHZhbHVlIGNoZWNrIGZvciBk
ZXZtX2Nsa19idWxrX2dldF9hbGwoKSBpbgp0aGUgcm9ja2NoaXAgdXNiZHAgY29tYm8gcGh5IGRy
aXZlci4gSXQgcHJldmVudHMgYW4gaXNzdWUgd2hlcmUgcmV0dXJuaW5nCi1FTk9ERVYgd291bGQg
cGVybWFuZW50bHkgZmFpbCB0aGUgZHJpdmVyIHByb2JlIGluc3RlYWQgb2YgYWxsb3dpbmcgaXQK
dG8gZGVmZXIuCgpMaW5rOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1waHkvMjAyNjA2
MTIxNjQxMDcuQzdEQjIxRjAwMEU5QHNtdHAua2VybmVsLm9yZy8KCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11c2JkcC5jIGIvZHJpdmVycy9waHkvcm9j
a2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMKPiBpbmRleCAxMmRmZGQ0NzBhNzgyLi4yODQ1YTAx
MmVhZmNjIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11
c2JkcC5jCj4gKysrIGIvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMK
PiBAQCAtNDI3LDggKzQyNyw4IEBAIHN0YXRpYyBpbnQgcmtfdWRwaHlfY2xrX2luaXQoc3RydWN0
IHJrX3VkcGh5ICp1ZHBoeSwgc3RydWN0IGRldmljZSAqZGV2KQo+ICAJaW50IGk7Cj4gIAo+ICAJ
dWRwaHktPm51bV9jbGtzID0gZGV2bV9jbGtfYnVsa19nZXRfYWxsKGRldiwgJnVkcGh5LT5jbGtz
KTsKPiAtCWlmICh1ZHBoeS0+bnVtX2Nsa3MgPCAxKQo+IC0JCXJldHVybiAtRU5PREVWOwo+ICsJ
aWYgKHVkcGh5LT5udW1fY2xrcyA8IDApCj4gKwkJcmV0dXJuIHVkcGh5LT5udW1fY2xrczsKPiAg
Cj4gIAkvKiB1c2VkIGZvciBjb25maWd1cmUgcGh5IHJlZmVyZW5jZSBjbG9jayBmcmVxdWVuY3kg
Ki8KPiAgCWZvciAoaSA9IDA7IGkgPCB1ZHBoeS0+bnVtX2Nsa3M7IGkrKykgewoKW1NldmVyaXR5
OiBIaWdoXQpUaGlzIGlzIGEgcHJlLWV4aXN0aW5nIGlzc3VlLCBidXQgZG9lcyBya191ZHBoeV9w
cm9iZSgpIHBlcm1hbmVudGx5IGxlYWsKY2xvY2tzIGFuZCByZXNldHMgaWYgdGhlIGRyaXZlciBw
cm9iZSBmYWlscyBvciBpcyB1bmJvdW5kPwoKSWYgdGhlIGJvb3Rsb2FkZXIgaGFzIGFscmVhZHkg
ZW5hYmxlZCB0aGUgaGFyZHdhcmUsCnJrX3VkcGh5X2dldF9pbml0aWFsX3N0YXR1cygpIGxlYXZl
cyB0aGUgY2xvY2tzIGVuYWJsZWQgYW5kIHJlc2V0cwpkZWFzc2VydGVkIGJ5IGludGVudGlvbmFs
bHkgc2tpcHBpbmcgcmtfdWRwaHlfZGlzYWJsZSgpLgoKSG93ZXZlciwgaWYgYSBzdWJzZXF1ZW50
IHN0ZXAgaW4gcmtfdWRwaHlfcHJvYmUoKSBmYWlsczoKCmRyaXZlcnMvcGh5L3JvY2tjaGlwL3Bo
eS1yb2NrY2hpcC11c2JkcC5jOnJrX3VkcGh5X3Byb2JlKCkgewoJLi4uCglyZXQgPSBya191ZHBo
eV9nZXRfaW5pdGlhbF9zdGF0dXModWRwaHkpOwoJaWYgKHJldCkKCQlyZXR1cm4gcmV0OwoJLi4u
CglpZiAoZGV2aWNlX3Byb3BlcnR5X3ByZXNlbnQoZGV2LCAib3JpZW50YXRpb24tc3dpdGNoIikp
IHsKCQlyZXQgPSBya191ZHBoeV9zZXR1cF9vcmllbl9zd2l0Y2godWRwaHkpOwoJCWlmIChyZXQp
CgkJCXJldHVybiByZXQ7Cgl9CgkuLi4KfQoKVGhlIGZ1bmN0aW9uIHJldHVybnMgYW4gZXJyb3Ig
d2l0aG91dCBkaXNhYmxpbmcgdGhlIGNsb2NrcyBvciBhc3NlcnRpbmcKcmVzZXRzLgoKU2luY2Ug
ZGV2bV9jbGtfYnVsa19nZXRfYWxsKCkgb25seSByZWdpc3RlcnMgYSBjbGVhbnVwIGFjdGlvbiB0
byBjbGtfcHV0KCkKdGhlIGNsb2NrcyAobm90IGRpc2FibGUvdW5wcmVwYXJlIHRoZW0pLCB0aGUg
Y2xvY2sgZW5hYmxlIGNvdW50cyBhcmUgbGVha2VkLApwcmV2ZW50aW5nIHRoZSBjbG9jayBzdWJz
eXN0ZW0gZnJvbSBkaXNhYmxpbmcgdGhlbSBsYXRlci4KCkRvZXMgdGhpcyBhbHNvIGNhdXNlIGEg
c2ltaWxhciByZXNvdXJjZSBsZWFrIGlmIHRoZSBkcml2ZXIgYmluZHMgc3VjY2Vzc2Z1bGx5CmJ1
dCBpcyBsYXRlciB1bmJvdW5kIHZpYSBzeXNmcywgc2luY2UgdGhlIGRyaXZlciBsYWNrcyBhIC5y
ZW1vdmUgY2FsbGJhY2sgdG8KdGVhciBkb3duIHRoZSBwcmUtZW5hYmxlZCBoYXJkd2FyZSBzdGF0
ZT8KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hz
ZXQvMjAyNjA3MTQtcm9ja2NoaXAtdXNiZHAtY2xlYW51cC12MTMtMC02Y2IzZTc2OWQ0YzVAY29s
bGFib3JhLmNvbT9wYXJ0PTQKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXBoeQo=
