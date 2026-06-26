Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AAA92C43458
	for <linux-phy@archiver.kernel.org>; Fri, 26 Jun 2026 21:11:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GEEm27vLNiUU3n/kSBF8hpXj1tXVQjBzR3gn89Zq3Yg=; b=Gwj2et+rj4cc7V
	kiUQSLBlTSKGow0u+nnl/4tS4X+FcG0RnqODCWUu4zwAHHabRGsR2IQ80OLHZxj4s884xODZejZYX
	/He61Wy0dehAv1GvhLURtIhcuwbZaAIB/EFVOIEuaZ7lak7Yamv99/vUklZ4GxMixScs0oHhCzEGH
	fMu0ZOKko9PfnAY3TFNHvTgGLWQcJKVgYlz7WH+KM+c2e0MIWxRAUF05gDEgb75foBkB4J4H54Boz
	S7GqIluNuO/JkquHp3QXMTg5QqBcp/aIergeodr+FCexszu/vOwVfi+grW8zyuBHQRInFulqXJYXI
	DE0D87xTINAq2X5P72vQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdDq8-0000000Btac-11xS;
	Fri, 26 Jun 2026 21:11:56 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdDq6-0000000BtaW-1pD3
	for linux-phy@lists.infradead.org;
	Fri, 26 Jun 2026 21:11:54 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id BEB1C4370B;
	Fri, 26 Jun 2026 21:11:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2332F1F000E9;
	Fri, 26 Jun 2026 21:11:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782508311;
	bh=y7pZiLQeaytZMgQeQIifYpqOvUTnF5RVOku7B6TDsqc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Qr5Jlw8esNq4NgE+ksKJKeIvXAXWp0oAWuMlDCrPOzAdz64uEXn0qiMmHhu8FfZK2
	 6F5J85i5ZiqFU1vxgJRM2ywRgNCADpM7tgXjtORaiw6z9xoWU4GuwUw2bZVpKAR6qJ
	 AO1y1rEIlfSVYz6rJgiBHPWLBocob1nSZJGSns9WqR1l1+NwpnUD+uxQJkZixHoAN0
	 1FuSLltkCgqz4o/hKtu/SX/3upxt4B2lioXc/GSY4mzusb+vB9HN3wWadCqzcfiZ2X
	 dXlELXX7Y6wAyED1XpxyzRKI+baYCc7oQfmF82VMVcMnqLRc58Ej0C1t6XxgWs68KO
	 Tbxa89UP1u0Ig==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v8 07/29] phy: rockchip: usbdp: Handle
 rk_udphy_reset_deassert_all errors in init check
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, conor+dt@kernel.org, olteanv@gmail.com, robh@kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org
In-Reply-To: <20260626-rockchip-usbdp-cleanup-v8-7-47f682987895@collabora.com>
References: <20260626-rockchip-usbdp-cleanup-v8-0-47f682987895@collabora.com>
 <20260626-rockchip-usbdp-cleanup-v8-7-47f682987895@collabora.com>
Date: Fri, 26 Jun 2026 21:11:50 +0000
Message-Id: <20260626211151.2332F1F000E9@smtp.kernel.org>
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
IFtNZWRpdW1dIFRoZSByZXR1cm4gdmFsdWUgb2YgYHJlZ21hcF9yZWFkYCBpcyBpZ25vcmVkLCBs
ZWFkaW5nIHRvIHRoZSB1c2Ugb2YgYW4gdW5pbml0aWFsaXplZCBzdGFjayB2YXJpYWJsZS4KLSBb
TWVkaXVtXSBUaGUgcGF0Y2ggZmFpbHMgdG8gYWRkcmVzcyBpZGVudGljYWwgcmVzZXQgZGVhc3Nl
cnRpb24gdnVsbmVyYWJpbGl0aWVzIGluIGBya191ZHBoeV9pbml0YCwgbGVhdmluZyB0aGUgZHJp
dmVyIHN1c2NlcHRpYmxlIHRvIHRoZSBleGFjdCBzYW1lIFNFcnJvciBpdCBjbGFpbXMgdG8gZml4
LgotLQoKY29tbWl0IGFmN2E4M2NiMWIxNzQ2MDU0Y2QwOTVkNTc0MzIxMGM2NTM5N2Q2YjEKQXV0
aG9yOiBTZWJhc3RpYW4gUmVpY2hlbCA8c2ViYXN0aWFuLnJlaWNoZWxAY29sbGFib3JhLmNvbT4K
CnBoeTogcm9ja2NoaXA6IHVzYmRwOiBIYW5kbGUgcmtfdWRwaHlfcmVzZXRfZGVhc3NlcnRfYWxs
IGVycm9ycyBpbiBpbml0IGNoZWNrCgpUaGlzIGNvbW1pdCBmaXhlcyBhIHRoZW9yZXRpY2FsIFNF
cnJvciBpc3N1ZSBieSBlbnN1cmluZyB0aGF0IHRoZSByZXR1cm4KdmFsdWUgb2YgcmtfdWRwaHlf
cmVzZXRfZGVhc3NlcnRfYWxsIGlzIGNoZWNrZWQuIEl0IGJhaWxzIG91dCBlYXJseSBpZgpkZWFz
c2VydGluZyB0aGUgcmVzZXQgbGluZXMgZmFpbHMgYmVmb3JlIGF0dGVtcHRpbmcgZnVydGhlciBy
ZWdpc3RlciBhY2Nlc3MuCgpSZXBvcnRlZC1ieTogU2FzaGlrbyA8c2FzaGlrby1ib3RAa2VybmVs
Lm9yZz4KQ2xvc2VzOiBodHRwczovL3Nhc2hpa28uZGV2LyMvbWVzc2FnZS8yMDI2MDYxOTE1NDkw
My4yMjI1QTFGMDAwRTklNDBzbXRwLmtlcm5lbC5vcmcKCj4gRml4IHRoZW9yZXRpY2FsIGlzc3Vl
LCB0aGF0IGZhaWx1cmUgdG8gZGVhc3NlcnQgdGhlIHJlc2V0IGxpbmVzIHdvdWxkCj4gcmVzdWx0
IGluIGFuIFNFcnJvciBpbiBmb2xsb3ctdXAgcmVnaXN0ZXIgYWNjZXNzLiBOb3RlLCB0aGF0IHRo
aXMgY2Fubm90Cj4gaGFwcGVuIHdpdGggY3VycmVudCBjb2RlLCBzaW5jZSB0aGUgUm9ja2NoaXAg
cmVzZXQgZHJpdmVyIG5ldmVyIHJldHVybnMKPiBhbnkgZXJyb3JzIGZvciAoZGUpYXNzZXJ0aW5n
IHJlc2V0IGxpbmVzLgoKW1NldmVyaXR5OiBNZWRpdW1dClRoaXMgaXMgYSBwcmUtZXhpc3Rpbmcg
aXNzdWUsIGJ1dCBkb2VzIHRoaXMgc2FtZSB2dWxuZXJhYmlsaXR5IHN0aWxsIGV4aXN0IGluCnJr
X3VkcGh5X2luaXQoKSB3aGVyZSByZXNldCBkZWFzc2VydGlvbnMgYXJlIGFsc28gdW5jaGVja2Vk
PwoKRm9yIGV4YW1wbGU6Cgpkcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAu
Yzpya191ZHBoeV9pbml0KCkgewoJLi4uCglya191ZHBoeV9yZXNldF9kZWFzc2VydCh1ZHBoeSwg
InBtYV9hcGIiKTsKCXJrX3VkcGh5X3Jlc2V0X2RlYXNzZXJ0KHVkcGh5LCAicGNzX2FwYiIpOwoK
CS8qIFN0ZXAgMjogc2V0IGluaXQgc2VxdWVuY2UgYW5kIHBoeSByZWZjbGsgKi8KCXJldCA9IHJl
Z21hcF9tdWx0aV9yZWdfd3JpdGUodWRwaHktPnBtYV9yZWdtYXAsIC4uLgoJLi4uCn0KCklmIHJr
X3VkcGh5X3Jlc2V0X2RlYXNzZXJ0KCkgZmFpbHMgaGVyZSwgd291bGRuJ3QgdGhlIGZvbGxvdy11
cApyZWdtYXBfbXVsdGlfcmVnX3dyaXRlKCkgdHJpZ2dlciB0aGUgZXhhY3Qgc2FtZSBTRXJyb3I/
CgpTaG91bGQgdGhlIHJlc2V0IGRlYXNzZXJ0aW9ucyBpbiBya191ZHBoeV9pbml0KCkgYWxzbyBi
ZSBjaGVja2VkPwoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tj
aGlwLXVzYmRwLmMgYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYwo+
IGluZGV4IGY3ZmY1NWYwM2I3Y2YuLmI4ZGUwYTQ3YTYxNjUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMKPiArKysgYi9kcml2ZXJzL3BoeS9y
b2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYwo+IEBAIC05MzYsNyArOTM2LDkgQEAgc3RhdGlj
IGludCBya191ZHBoeV9nZXRfaW5pdGlhbF9zdGF0dXMoc3RydWN0IHJrX3VkcGh5ICp1ZHBoeSkK
PiAgCQlyZXR1cm4gcmV0Owo+ICAJfQo+ICAKPiAtCXJrX3VkcGh5X3Jlc2V0X2RlYXNzZXJ0X2Fs
bCh1ZHBoeSk7Cj4gKwlyZXQgPSBya191ZHBoeV9yZXNldF9kZWFzc2VydF9hbGwodWRwaHkpOwo+
ICsJaWYgKHJldCkKPiArCQlnb3RvIGV4aXQ7Cj4gIAo+ICAJcmVnbWFwX3JlYWQodWRwaHktPnBt
YV9yZWdtYXAsIENNTl9MQU5FX01VWF9BTkRfRU5fT0ZGU0VULCAmdmFsdWUpOwo+ICAJaWYgKEZJ
RUxEX0dFVChDTU5fRFBfTEFORV9NVVhfQUxMLCB2YWx1ZSkgJiYgRklFTERfR0VUKENNTl9EUF9M
QU5FX0VOX0FMTCwgdmFsdWUpKSB7CgpbU2V2ZXJpdHk6IE1lZGl1bV0KVGhpcyBpcyBhIHByZS1l
eGlzdGluZyBpc3N1ZSwgYnV0IGRvZXMgdGhpcyBjb2RlIGV2YWx1YXRlIGFuIHVuaW5pdGlhbGl6
ZWQKdmFyaWFibGUgaWYgdGhlIHJlYWQgZmFpbHM/CgpJZiByZWdtYXBfcmVhZCgpIGZhaWxzIGFu
ZCByZXR1cm5zIGFuIGVycm9yLCB2YWx1ZSBpcyBub3QgaW5pdGlhbGl6ZWQsIGFuZAp0aGUgc3Vi
c2VxdWVudCBGSUVMRF9HRVQoKSBjaGVja3Mgd2lsbCBvcGVyYXRlIG9uIHVuaW5pdGlhbGl6ZWQg
c3RhY2sgbWVtb3J5LgoKU2hvdWxkIHRoZSByZXR1cm4gdmFsdWUgb2YgcmVnbWFwX3JlYWQoKSBi
ZSBjaGVja2VkIGhlcmU/Cgo+ICAJCWRldl9pbmZvKHVkcGh5LT5kZXYsICJTdGFydGVkIHdpdGgg
RFAgUEhZIHByZS1lbmFibGVkOyBzZWFtbGVzcyB0YWtlb3ZlciB1bnN1cHBvcnRlZFxuIik7Cj4g
IAkJcmtfdWRwaHlfZ3JmcmVnX3dyaXRlKHVkcGh5LT52b2dyZiwgJmNmZy0+dm9ncmZjZmdbdWRw
aHktPmlkXS5ocGRfdHJpZ2dlciwgZmFsc2UpOwo+ICAJfQoKLS0gClNhc2hpa28gQUkgcmV2aWV3
IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDYyNi1yb2NrY2hpcC11c2Jk
cC1jbGVhbnVwLXY4LTAtNDdmNjgyOTg3ODk1QGNvbGxhYm9yYS5jb20/cGFydD03CgotLSAKbGlu
dXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
