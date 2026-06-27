Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A17BDC43458
	for <linux-phy@archiver.kernel.org>; Sat, 27 Jun 2026 16:02:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0943d1xuvkQzqG/j/O8grk0rj+wp0pvvMs9xpYIZbyU=; b=wdLybgzdvN+I+h
	Du1vva3GxMdlSlKUBkXi7h6kO4GOpq/T/jkZLP6nvKp5sNAN9ctRAFMACVP2vqYtqrmgkud7FTVkW
	sgj2j6v8zrPsIWvX6naCL2xWn03P9wvaU/KpysEoOyg+jclkDHCv5DsAPzjnfx28AXGRzDmChm2At
	tVGOw+9rezYC4ssVDIwkx5JxR5qPJS4+1Py9E+24CcYryIlImJUsvQG160JZBcssgCavw9LXIDBWV
	fjqk0tZ5j6BgRPD3wi2sB/X0vZJ0vsDlXJln7LR6nij8RxtQz5YrrVZZ70KIu+MJVqX6Q8+NBp+G6
	J777x/hLwZ0c2oK7Fd0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdVTr-0000000CcmO-1M36;
	Sat, 27 Jun 2026 16:02:07 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdVTq-0000000CcmG-0pOr
	for linux-phy@lists.infradead.org;
	Sat, 27 Jun 2026 16:02:06 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 5D8C56001A;
	Sat, 27 Jun 2026 16:02:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7461C1F000E9;
	Sat, 27 Jun 2026 16:02:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782576124;
	bh=EfJiaTU/0Qjg4T1l/d8s7gu2sv7Y27jLJytX6L5vldo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=f1lvr1juDcRIYjeUTWhv8t1n/9L1h2uTDgcCwv0M1B90aR5mEv/TJfvPb2urj+/21
	 d+frSlW+Qd93bX07LmWiniAX1MwRxe6a1IZP36wzhIbrocdnkVcU8nK27hyVniWSL7
	 kOCAtdHT9u5NXTFVU/FPKrHHu3swcVpd6tHEfRGla8LHm/77gbGQVZNyHOki+MQyQA
	 LmfquSKykS24vGdRgRlY4Z9Yef3TgkYI22o6tGNZjlFwt6WoL4QbTX55FDX18bHwja
	 1/V2JbuLp3OiTtzunwBE9PWuNTW1dvx0Va6AYLguTa00nMJ26UTM3NMPa0QmMLIAs7
	 nWYKKK5AULC5g==
From: sashiko-bot@kernel.org
Subject: Re: [RESEND PATCH 3/3] phy: zynqmp: keep SERDES scrambler and
 8b/10b enabled for USB
To: "Radhey Shyam Pandey" <radhey.shyam.pandey@amd.com>
Cc: linux-phy@lists.infradead.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20260627155229.2791113-4-radhey.shyam.pandey@amd.com>
References: <20260627155229.2791113-1-radhey.shyam.pandey@amd.com>
 <20260627155229.2791113-4-radhey.shyam.pandey@amd.com>
Date: Sat, 27 Jun 2026 16:02:03 +0000
Message-Id: <20260627160204.7461C1F000E9@smtp.kernel.org>
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
MyBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpQcmUtZXhpc3RpbmcgaXNzdWVzOgot
IFtIaWdoXSBQQ0llIGFuZCBEaXNwbGF5UG9ydCAoRFApIHByb3RvY29scyBsYWNrIGV4cGxpY2l0
IGluaXRpYWxpemF0aW9uIG9mIHRoZSBzY3JhbWJsZXIvZW5jb2RlciBieXBhc3Mgc3RhdGUsIGxl
YXZpbmcgdGhlbSB2dWxuZXJhYmxlIHRvIHN0YXRlIHBvbGx1dGlvbi4KLSBbSGlnaF0gU2lsZW50
bHkgaWdub3JlcyBjbG9jayBlbmFibGUgZmFpbHVyZSwgbWFza2luZyB0aGUgZXJyb3IgYW5kIGNh
dXNpbmcgdW5iYWxhbmNlZCBjbG9jayBkaXNhYmxlcyBsYXRlci4KLSBbSGlnaF0gQnVzIHdpZHRo
IHJlZ2lzdGVycyBtb2RpZmllZCBieSBTR01JSSBhcmUgbm90IHJlc2V0IGJ5IG90aGVyIHByb3Rv
Y29scywgcmlza2luZyBzdGF0ZSBpbmhlcml0YW5jZSBidWdzLgotLQoKY29tbWl0IGU2ZDVmMDZj
ZTMxYjcwYzYyNGVjM2U2YTY5YzViN2U3ZWY1NTc0NmEKQXV0aG9yOiBOYXZhIGtpc2hvcmUgTWFu
bmUgPG5hdmEua2lzaG9yZS5tYW5uZUBhbWQuY29tPgpTdWJqZWN0OiBwaHk6IHp5bnFtcDoga2Vl
cCBTRVJERVMgc2NyYW1ibGVyIGFuZCA4Yi8xMGIgZW5hYmxlZCBmb3IgVVNCCgpUaGlzIGNvbW1p
dCBlbnN1cmVzIHRoYXQgdGhlIHNjcmFtYmxlciBhbmQgOGIvMTBiIGVuY29kZXIvZGVjb2RlciBh
cmUgbm90CmJ5cGFzc2VkIGZvciBVU0Igb3BlcmF0aW9uLCBhcyBtYW5kYXRlZCBieSB0aGUgVVNC
IDMueCBzcGVjaWZpY2F0aW9uLiBUaGUKYnlwYXNzIGZ1bmN0aW9uYWxpdHkgaXMgcmVzdHJpY3Rl
ZCB0byBTQVRBIGFuZCBTR01JSSBtb2RlcyB3aGVyZSBlbmNvZGluZyBpcwpoYW5kbGVkIGluIHRo
ZSBjb250cm9sbGVyLgoKQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcKCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvcGh5L3hpbGlueC9waHktenlucW1wLmMgYi9kcml2ZXJzL3BoeS94aWxpbngvcGh5
LXp5bnFtcC5jCj4gaW5kZXggNmM1NmM0ZGY4NTIzYy4uMDg3ZmU0MDJlNGUyMCAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL3BoeS94aWxpbngvcGh5LXp5bnFtcC5jCj4gKysrIGIvZHJpdmVycy9waHkv
eGlsaW54L3BoeS16eW5xbXAuYwpbIC4uLiBdCj4gQEAgLTU0Nyw3ICs1NjIsNyBAQCBzdGF0aWMg
dm9pZCB4cHNndHJfcGh5X2luaXRfc2dtaWkoc3RydWN0IHhwc2d0cl9waHkgKmd0cl9waHkpCj4g
IAl4cHNndHJfY2xyX3NldChndHJfZGV2LCBUWF9QUk9UX0JVU19XSURUSCwgbWFzaywgdmFsKTsK
PiAgCXhwc2d0cl9jbHJfc2V0KGd0cl9kZXYsIFJYX1BST1RfQlVTX1dJRFRILCBtYXNrLCB2YWwp
OwoKW1NldmVyaXR5OiBIaWdoXQpUaGlzIGlzbid0IGEgYnVnIGludHJvZHVjZWQgYnkgdGhpcyBw
YXRjaCwgYnV0IFNHTUlJIGFsdGVycyB0aGUgZ2xvYmFsIGJ1cwp3aWR0aCByZWdpc3RlcnMgaGVy
ZSB3aXRob3V0IG90aGVyIHByb3RvY29scyBndWFyYW50ZWVpbmcgdGhleSBhcmUgcmVzdG9yZWQg
dG8KZGVmYXVsdCBzdGF0ZXMuCgpJZiBhIGxhbmUgcHJldmlvdXNseSB1c2VkIGZvciBTR01JSSBp
cyByZWFzc2lnbmVkIHRvIGFub3RoZXIgcHJvdG9jb2wgKGUuZy4sCnZpYSB3YXJtIHJlYm9vdCBv
ciBib290bG9hZGVyIGhhbmRvZmYpLCB3aWxsIHRoZSAxMC1iaXQgYnVzIHdpZHRoIHNldHRpbmcK
cGVyc2lzdCBpbiB0aGUgaGFyZHdhcmUgYW5kIHNpbGVudGx5IGJyZWFrIG90aGVyIHByb3RvY29s
cyAobGlrZSBVU0Igb3IgUENJZSkKdGhhdCBleHBlY3QgdGhlaXIgZGVmYXVsdCBidXMgd2lkdGhz
PwoKPiAgCj4gLQl4cHNndHJfYnlwYXNzX3NjcmFtYmxlcl84YjEwYihndHJfcGh5KTsKPiArCXhw
c2d0cl9ieXBhc3Nfc2NyYW1ibGVyXzhiMTBiKGd0cl9waHksIHRydWUpOwo+ICB9ClsgLi4uIF0K
PiBAQCAtNzA3LDYgKzcyMiwxMCBAQCBzdGF0aWMgaW50IHhwc2d0cl9waHlfaW5pdChzdHJ1Y3Qg
cGh5ICpwaHkpCj4gIAljYXNlIElDTV9QUk9UT0NPTF9TR01JSToKPiAgCQl4cHNndHJfcGh5X2lu
aXRfc2dtaWkoZ3RyX3BoeSk7Cj4gIAkJYnJlYWs7Cj4gKwo+ICsJY2FzZSBJQ01fUFJPVE9DT0xf
VVNCOgo+ICsJCXhwc2d0cl9ieXBhc3Nfc2NyYW1ibGVyXzhiMTBiKGd0cl9waHksIGZhbHNlKTsK
PiArCQlicmVhazsKCltTZXZlcml0eTogSGlnaF0KVGhpcyBpc24ndCBhIGJ1ZyBpbnRyb2R1Y2Vk
IGJ5IHRoaXMgcGF0Y2gsIGJ1dCB0aGUgc3dpdGNoIHN0YXRlbWVudCBpbgp4cHNndHJfcGh5X2lu
aXQoKSBtaXNzZXMgZXhwbGljaXQgYnlwYXNzIGNvbmZpZ3VyYXRpb24gZm9yIERQIGFuZCBQQ0ll
LgoKSWYgYSBsYW5lIGlzIGR5bmFtaWNhbGx5IHJlYXNzaWduZWQgb3IgbGVmdCBieXBhc3NlZCBi
eSBwcmV2aW91cyBib290IHN0YWdlcywKd2lsbCBEUCBhbmQgUENJZSBzaWxlbnRseSBmYWlsIGFz
IHRoZXkgaW5oZXJpdCBhIHN0YWxlIGJ5cGFzcyA9IHRydWUgc3RhdGU/Cgo+ICAJfQo+ICAKPiAg
b3V0OgoKW1NldmVyaXR5OiBIaWdoXQpUaGlzIGlzbid0IGEgYnVnIGludHJvZHVjZWQgYnkgdGhp
cyBwYXRjaCwgYnV0IGxvb2tpbmcgYXQgeHBzZ3RyX3BoeV9pbml0KCksCmNvdWxkIHRoZSBjbG9j
ayBlcnJvciBwYXRoIGNhdXNlIGlzc3VlcyBoZXJlPwoKZHJpdmVycy9waHkveGlsaW54L3BoeS16
eW5xbXAuYzp4cHNndHJfcGh5X2luaXQoKSB7CiAgICBpbnQgcmV0ID0gMDsKICAgIC4uLgogICAg
aWYgKGNsa19wcmVwYXJlX2VuYWJsZShndHJfZGV2LT5jbGtbZ3RyX3BoeS0+cmVmY2xrXSkpCiAg
ICAgICAgZ290byBvdXQ7CiAgICAuLi4Kb3V0OgogICAgbXV0ZXhfdW5sb2NrKCZndHJfZGV2LT5n
dHJfbXV0ZXgpOwogICAgcmV0dXJuIHJldDsKfQoKSWYgY2xrX3ByZXBhcmVfZW5hYmxlKCkgZmFp
bHMsIHdlIGJyYW5jaCB0byAnb3V0JywgYnV0ICdyZXQnIHJlbWFpbnMgMC4gV2lsbAp0aGlzIHNp
bGVudGx5IGlnbm9yZSB0aGUgY2xvY2sgZW5hYmxlIGZhaWx1cmUsIG1hc2sgdGhlIGVycm9yLCBh
bmQgY2F1c2UKdW5iYWxhbmNlZCBjbG9jayBkaXNhYmxlcyBsYXRlciB3aGVuIHhwc2d0cl9waHlf
ZXhpdCgpIGNhbGxzCmNsa19kaXNhYmxlX3VucHJlcGFyZSgpIG9uIGEgY2xvY2sgdGhhdCB3YXMg
bmV2ZXIgc3VjY2Vzc2Z1bGx5IGVuYWJsZWQ/CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0
cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNjI3MTU1MjI5LjI3OTExMTMtMS1yYWRo
ZXkuc2h5YW0ucGFuZGV5QGFtZC5jb20/cGFydD0zCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlz
dApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
