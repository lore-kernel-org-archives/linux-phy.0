Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD277C43458
	for <linux-phy@archiver.kernel.org>; Fri,  3 Jul 2026 23:46:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EXLr4QwmdlP+WTGc0uMzCRsWpW/SCgIFvog7oiW6WPE=; b=nbixGlhB5nAuoH
	7BeSJZVA6oA0Gklz48A5w/+hUlXvfR69JCcDYyDlWOoQ/D4p7f7p11uxxsUtfL59KcrNZsm4VenSj
	CnpPMpdUMFh27cxibKgj7JBKK8U+ERwDmX4cDcrPGKlkTzWGQ5nDUwvbeNgoHgRProFINS5kyfpp5
	3Qlp9JYBRXvQYFvsOb6tYlQpJo0Oiuxq46k+7fwAC6Dv5sCKtWajq4TBD3EYX6ts4qH6ASez3RZCX
	boBef/MvWzZWvjLxJC0h6onlks25FqGn2wv25Y9XBpTLtINrfWDHnroP+2R4d2dxreV2N12B0BLEh
	LkU7V83cd4bk7PsI7Ntg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfnae-000000081gZ-2EW1;
	Fri, 03 Jul 2026 23:46:36 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfnad-000000081gS-32R9
	for linux-phy@lists.infradead.org;
	Fri, 03 Jul 2026 23:46:35 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id AB3CA60051;
	Fri,  3 Jul 2026 23:46:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 380871F000E9;
	Fri,  3 Jul 2026 23:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783122394;
	bh=Me0KTYANJC1q7E2WahW7qoNyJDmN20NHVn7vkm1V9m8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ifREnGdysJ0MUvnqm8NAxP5QCX9qHrXLHxmOdrY9Ce83AbP+KnmdvjDuKBS+pGaIq
	 b3hg8pyKKxFyZq6LfG8Dww12AkKVepPaYkp7Bo2KUzIn/qVIfl+KMDg/RpwXJ2m7Jr
	 zQyf3E+OU0cb5uInQEfYGIeNRXmQ7dk2TlDBpn+WoyM4/XjOcqJN/Uj72/NAXiUa64
	 3Q07aScGEjUJB3Fzp3IEbd5bmYB1FKy1X9rBNNi7+0PRyWU3TC+Lghv5DTGyf67rAO
	 3dJte5l1yrwair+Ne9zvFEEzVXxNXTA80JPnCwq2yTzUKqaA9HNxBwsKXoFI/dbD3I
	 +uvAiPqHuRapg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v10 13/36] phy: rockchip: usbdp: Rename DP lane
 functions
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: olteanv@gmail.com, vkoul@kernel.org, robh@kernel.org, neil.armstrong@linaro.org, conor+dt@kernel.org, devicetree@vger.kernel.org, linux-phy@lists.infradead.org
In-Reply-To: <20260703-rockchip-usbdp-cleanup-v10-13-a392711ca8a9@collabora.com>
References: <20260703-rockchip-usbdp-cleanup-v10-0-a392711ca8a9@collabora.com>
 <20260703-rockchip-usbdp-cleanup-v10-13-a392711ca8a9@collabora.com>
Date: Fri, 03 Jul 2026 23:46:32 +0000
Message-Id: <20260703234633.380871F000E9@smtp.kernel.org>
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
IFtIaWdoXSBGYWlsdXJlIGR1cmluZyBQSFkgaW5pdGlhbGl6YXRpb24gZGVzdHJveXMgYWN0aXZl
IFBIWSBoYXJkd2FyZSBzdGF0ZSB3aGlsZSBsZWF2aW5nIHNvZnR3YXJlIHN0YXRlIG91dCBvZiBz
eW5jLgotLQoKY29tbWl0IDI3ZWRjZDdlODM2YTdmNjJhZDVkMGIzMzZlNGY4Y2ZkNGZlZGM2N2MK
QXV0aG9yOiBTZWJhc3RpYW4gUmVpY2hlbCA8c2ViYXN0aWFuLnJlaWNoZWxAY29sbGFib3JhLmNv
bT4KCnBoeTogcm9ja2NoaXA6IHVzYmRwOiBSZW5hbWUgRFAgbGFuZSBmdW5jdGlvbnMKClRoZSBw
YXRjaCB1cGRhdGVzIHRoZSB0d28gRGlzcGxheVBvcnQgbGFuZSBmdW5jdGlvbnMgdG8gZm9sbG93
IHRoZSBjb21tb24KcmtfdWRwaHlfZHBfIHByZWZpeCBzY2hlbWUgZm9yIGNvbnNpc3RlbmN5LgoK
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMg
Yi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYwo+IGluZGV4IGIxNzJj
ZTZhNzIyZWUuLjdmYjg2NGExNDg2YzAgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvcm9ja2No
aXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMKPiArKysgYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHkt
cm9ja2NoaXAtdXNiZHAuYwpbIC4uLiBdCj4gQEAgLTEwNjksNyArMTA2OSw3IEBAIHN0YXRpYyBp
bnQgcmtfdWRwaHlfZHBfcGh5X3Bvd2VyX29mZihzdHJ1Y3QgcGh5ICpwaHkpCj4gIAlzdHJ1Y3Qg
cmtfdWRwaHkgKnVkcGh5ID0gcGh5X2dldF9kcnZkYXRhKHBoeSk7Cj4gIAo+ICAJbXV0ZXhfbG9j
aygmdWRwaHktPm11dGV4KTsKPiAtCXJrX3VkcGh5X2RwbGFuZV9lbmFibGUodWRwaHksIDApOwo+
ICsJcmtfdWRwaHlfZHBfbGFuZV9lbmFibGUodWRwaHksIDApOwo+ICAJcmtfdWRwaHlfcG93ZXJf
b2ZmKHVkcGh5LCBVRFBIWV9NT0RFX0RQKTsKPiAgCW11dGV4X3VubG9jaygmdWRwaHktPm11dGV4
KTsKCltTZXZlcml0eTogSGlnaF0KVGhpcyBpc24ndCBhIGJ1ZyBpbnRyb2R1Y2VkIGJ5IHRoaXMg
cGF0Y2gsIGJ1dCBsb29raW5nIGF0IHRoZSBkcml2ZXIsIGRvZXMKZmFpbHVyZSBkdXJpbmcgUEhZ
IGluaXRpYWxpemF0aW9uIGRlc3Ryb3kgYWN0aXZlIFBIWSBoYXJkd2FyZSBzdGF0ZSB3aGlsZQps
ZWF2aW5nIHRoZSBzb2Z0d2FyZSBzdGF0ZSBvdXQgb2Ygc3luYz8KCklmIHJrX3VkcGh5X2luaXQo
KSBmYWlscyBkdXJpbmcgYSBtb2RlIGNoYW5nZSAoZS5nLiwgUExMIGxvY2sgdGltZW91dCB3aGVu
IGEKRFAgY2FibGUgaXMgcGx1Z2dlZCBpbiksIGl0IGFib3J0cywgYXNzZXJ0cyBhbGwgUEhZIHJl
c2V0cywgYW5kIHJldHVybnMgYW4KZXJyb3I6Cgpkcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9j
a2NoaXAtdXNiZHAuYzpya191ZHBoeV9pbml0KCkgewogICAgLi4uCmFzc2VydF9yZXNldHM6Cgly
a191ZHBoeV9yZXNldF9hc3NlcnRfYWxsKHVkcGh5KTsKCXJldHVybiByZXQ7Cn0KCldoZW4gdGhp
cyBoYXBwZW5zLCBya191ZHBoeV91cGRhdGVfcG93ZXJfc3RhdGUoKSByZWNlaXZlcyB0aGUgZXJy
b3IsIG5vdGlmaWVzCkRXQzMgdGhhdCB0aGUgcmVzZXQgaXMgY29tcGxldGUsIGFuZCByZXR1cm5z
IGVhcmx5IHdpdGhvdXQgY2xlYXJpbmcKdWRwaHktPnN0YXR1czoKCmRyaXZlcnMvcGh5L3JvY2tj
aGlwL3BoeS1yb2NrY2hpcC11c2JkcC5jOnJrX3VkcGh5X3VwZGF0ZV9wb3dlcl9zdGF0ZSgpIHsK
ICAgIC4uLgoJCXJldCA9IHJrX3VkcGh5X2luaXQodWRwaHkpOwoJCWlmIChyZXQpIHsKCQkJcGh5
X25vdGlmeV9yZXNldCh1ZHBoeS0+cGh5X3UzLCBQSFlfTk9USUZZX1BPU1RfUkVTRVQpOwoJCQly
ZXR1cm4gcmV0OwoJCX0KICAgIC4uLgp9CgpXaWxsIHRoaXMgY2F1c2UgdGhlIERXQzMgVVNCIGNv
bnRyb2xsZXIgdG8gYWNjZXNzIGEgcGh5c2ljYWxseSBkZWFkIChyZXNldCkKUEhZIGFuZCBjcmFz
aCB0aGUgc3lzdGVtIHdpdGggYSBzeW5jaHJvbm91cyBleHRlcm5hbCBhYm9ydCAoU0Vycm9yKSwg
c2luY2UKdGhlIGNvbnRyb2xsZXIgaXMgZXhwbGljaXRseSB0b2xkIHRoZSBQSFkgaXMgcmVhZHkg
YW5kIHRoZSBzb2Z0d2FyZSBkcml2ZXIgaXMKbGVmdCBiZWxpZXZpbmcgaXQgaXMgZnVsbHkgZnVu
Y3Rpb25hbD8KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMv
cGF0Y2hzZXQvMjAyNjA3MDMtcm9ja2NoaXAtdXNiZHAtY2xlYW51cC12MTAtMC1hMzkyNzExY2E4
YTlAY29sbGFib3JhLmNvbT9wYXJ0PTEzCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51
eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1waHkK
