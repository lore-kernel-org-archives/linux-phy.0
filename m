Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19569606A31C
	for <linux-phy@archiver.kernel.org>; Mon,  9 Nov 2026 07:14:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=yb0iwScQ;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=RQTSo0jT
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=h2KT/ay8mAmaunnJvLpZo7CQs25N8Hl0cj3ZSl+E164=; b=yb0iwScQG1aDXqVtxTsb1TJbsu
	jVTTne7cxN8OsOHSZn6qKgs2tQvmY25UF5VYMp9WG/vuNqLthLScv7rdpk/z6ZLRF9mGj6lRmBxYg
	JavSdLJ7jsCKluuY2J/e1bkF7QciRZERcWwy7qEadXewpjYXicTZkZ4/eHSoNQdAzjYDrxUrF4AFG
	06KkUzxNjV0Uj+vxVeG0R7JbMt3FXMYFPxX8H9u6MZD8TI+nJm0fY2aiQDXPCnq91T9QGeGs89W7O
	af0qhVjxvsRxgbVlJphNKJourY1dacGjhZLKNQr5x3jZvW0QLGUccSeMr/fceUE4whixlFp+cVpJ7
	g2NB2qkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQJa7-0000000HYGP-2qPC;
	Mon, 09 Nov 2026 07:14:19 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQJa6-0000000HYGB-34u1
	for linux-phy@lists.infradead.org;
	Mon, 09 Nov 2026 07:14:18 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 1F84C43FF2;
	Mon,  9 Nov 2026 07:14:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9E6481F0089F;
	Mon,  9 Nov 2026 07:14:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794208458;
	bh=ZZjBmHFYrK7mcpQi/vdsSMMP3rhv3MuWMhCLuqmuudE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=RQTSo0jTdxMVE0nzH6yPmIm1xJvDO6sT8R3K7P49B2qxbSthTvKuTB6iOOkcbmJgl
	 8PvCI/O48P6Vv6MWB4zEEXlJJ/OqjI01PUBSWyPf+9VfMAR+TP0jE04HQNIRGiwwkO
	 +3MnD9MpdAgGOX3QrgabuAHp0uzD+LMH8jV9CSBpImIfTJ81XQBlR5YjuPXAKbgbcA
	 sxcEYcG5GTIgVVIvh21Iy63HEPzEkhGG0ZdHsoazysxojvYEZNnNn6FM07Fg3XNhr0
	 Se5o2YsGRxm9D83ZHZAoVwPfmuzYuKus2Sa0mhOjQoV40wSiKVzGbUKknPO4tDYtCz
	 MSY8dlBtjdYSg==
Message-ID: <sashiko-outbox-204535@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v8 4/4] phy: nuvoton: phy-ma35d1-usb2: extend to
 dual-port with OTG support
To: "Joey Lu" <a0987203069@gmail.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261109065606.62641-5-a0987203069@gmail.com>
References: <20261109065606.62641-1-a0987203069@gmail.com>
 <20261109065606.62641-5-a0987203069@gmail.com>
Date: Mon, 09 Nov 2026 07:14:17 +0000
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Reply-To: sashiko-reviews@lists.linux.dev
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MSBwb3RlbnRpYWwKaXNzdWUgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gcGh5OiBudXZvdG9uOiBt
aXNzaW5nIE1GRF9TWVNDT04gc2VsZWN0IGFuZCB1bmNoZWNrZWQKICByZWdtYXBfcmVhZCgpCi0t
Cgpjb21taXQgY2U4N2U0NWU1MDlkY2E1Mzg2MDIxYmIwZGQ0ZTNiYjkxZTM5MzVkOApBdXRob3I6
IEpvZXkgTHUgPGEwOTg3MjAzMDY5QGdtYWlsLmNvbT4KCnBoeTogbnV2b3RvbjogcGh5LW1hMzVk
MS11c2IyOiBleHRlbmQgdG8gZHVhbC1wb3J0IHdpdGggT1RHIHN1cHBvcnQKClRoaXMgY29tbWl0
IGV4dGVuZHMgdGhlIE51dm90b24gTUEzNUQxIFVTQiAyLjAgUEhZIGRyaXZlciB0byBzdXBwb3J0
IGJvdGgKUEhZMCBhbmQgUEhZMSwgdXBkYXRlcyBjbG9jay1zdGFiaWxpdHkgcG9sbGluZyBpbiBw
aHlfaW5pdCgpLCByZWdpc3RlcnMgYQpyZWFkLW9ubHkgVVNCIHJvbGUgc3dpdGNoIGZvciBQSFkw
LCBhbmQgYWRkcyByZXNpc3RvciBjYWxpYnJhdGlvbiBhbmQKb3Zlci1jdXJyZW50IHBvbGFyaXR5
IGRldmljZS10cmVlIHByb3BlcnRpZXMuCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9udXZv
dG9uL0tjb25maWcgYi9kcml2ZXJzL3BoeS9udXZvdG9uL0tjb25maWcKPiBpbmRleCBkMDJjYWUy
ZGIzMTVhLi4xZjM3ZTg2MGRlNTA3IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5L251dm90b24v
S2NvbmZpZwo+ICsrKyBiL2RyaXZlcnMvcGh5L251dm90b24vS2NvbmZpZwo+IEBAIC02LDYgKzYs
NyBAQCBjb25maWcgUEhZX01BMzVfVVNCCj4gIAl0cmlzdGF0ZSAiTnV2b3RvbiBNQTM1IFVTQjIu
MCBQSFkgZHJpdmVyIgo+ICAJZGVwZW5kcyBvbiBBUkNIX01BMzUgfHwgQ09NUElMRV9URVNUCj4g
IAlkZXBlbmRzIG9uIE9GCj4gKwlkZXBlbmRzIG9uIFVTQl9ST0xFX1NXSVRDSCB8fCAhVVNCX1JP
TEVfU1dJVENICj4gIAlzZWxlY3QgR0VORVJJQ19QSFkKPiAgCWhlbHAKPiAgCSAgRW5hYmxlIHRo
aXMgdG8gc3VwcG9ydCB0aGUgVVNCMi4wIFBIWSBvbiB0aGUgTnV2b3RvbiBNQTM1Cj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvcGh5L251dm90b24vcGh5LW1hMzVkMS11c2IyLmMgYi9kcml2ZXJzL3Bo
eS9udXZvdG9uL3BoeS1tYTM1ZDEtdXNiMi5jCj4gaW5kZXggMGI5OTc2ZmIxNWMxNy4uYmM3MDYz
NTZjNDM0MSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9udXZvdG9uL3BoeS1tYTM1ZDEtdXNi
Mi5jCj4gKysrIGIvZHJpdmVycy9waHkvbnV2b3Rvbi9waHktbWEzNWQxLXVzYjIuYwoKWyAuLi4g
XQoKPiArc3RhdGljIGludCBtYTM1X3VzYl9waHlfaW5pdChzdHJ1Y3QgcGh5ICpwaHkpCj4gK3sK
PiArCXN0cnVjdCBtYTM1X3BoeV9wb3J0ICpwb3J0ID0gcGh5X2dldF9kcnZkYXRhKHBoeSk7Cj4g
KwlzdHJ1Y3QgbWEzNV91c2JfcGh5ICpwID0gY29udGFpbmVyX29mKHBvcnQgLSBwb3J0LT5pZHgs
Cj4gKwkJCQkJICAgICAgc3RydWN0IG1hMzVfdXNiX3BoeSwgcG9ydFswXSk7Cj4gKwl1bnNpZ25l
ZCBpbnQgbiA9IHBvcnQtPmlkeDsKPiAgCXVuc2lnbmVkIGludCB2YWw7Cj4gIAlpbnQgcmV0Owo+
ICAKPiAtCXJldCA9IGNsa19wcmVwYXJlX2VuYWJsZShwX3BoeS0+Y2xrKTsKPiAtCWlmIChyZXQg
PCAwKSB7Cj4gLQkJZGV2X2VycihwX3BoeS0+ZGV2LCAiRmFpbGVkIHRvIGVuYWJsZSBQSFkgY2xv
Y2s6ICVkXG4iLCByZXQpOwo+IC0JCXJldHVybiByZXQ7Cj4gLQl9Cj4gKwlyZXQgPSBjbGtfcHJl
cGFyZV9lbmFibGUocC0+Y2xrKTsKPiArCWlmIChyZXQpCj4gKwkJcmV0dXJuIGRldl9lcnJfcHJv
YmUocC0+ZGV2LCByZXQsICJmYWlsZWQgdG8gZW5hYmxlIGNsb2NrXG4iKTsKPiAgCj4gLQlyZWdt
YXBfcmVhZChwX3BoeS0+c3lzcmVnLCBNQTM1X1NZU19SRUdfVVNCUE1JU0NSLCAmdmFsKTsKPiAt
CWlmICh2YWwgJiBQSFkwU1VTUEVORCkgewo+IC0JCS8qCj4gLQkJICogVVNCIFBIWTAgaXMgaW4g
b3BlcmF0aW9uIG1vZGUgYWxyZWFkeQo+IC0JCSAqIG1ha2Ugc3VyZSBVU0IgUEhZIDYwIE1IeiBV
VE1JIEludGVyZmFjZSBDbG9jayByZWFkeQo+IC0JCSAqLwo+IC0JCXJldCA9IHJlZ21hcF9yZWFk
X3BvbGxfdGltZW91dChwX3BoeS0+c3lzcmVnLCBNQTM1X1NZU19SRUdfVVNCUE1JU0NSLCB2YWws
Cj4gLQkJCQkJCXZhbCAmIFBIWTBERVZDS1NUQiwgMTAsIDEwMDApOwo+IC0JCWlmIChyZXQgPT0g
MCkKPiAtCQkJcmV0dXJuIDA7Cj4gLQl9Cj4gKwlyZWdtYXBfcmVhZChwLT5zeXNyZWcsIE1BMzVf
U1lTX1VTQlBNSVNDUiwgJnZhbCk7Cj4gIAo+IC0JLyoKPiAtCSAqIHJlc2V0IFVTQiBQSFkwLgo+
IC0JICogd2FpdCB1bnRpbCBVU0IgUEhZMCA2MCBNSHogVVRNSSBJbnRlcmZhY2UgQ2xvY2sgcmVh
ZHkKPiAtCSAqLwo+IC0JcmVnbWFwX3VwZGF0ZV9iaXRzKHBfcGh5LT5zeXNyZWcsIE1BMzVfU1lT
X1JFR19VU0JQTUlTQ1IsIDB4NywgKFBIWTBQT1IgfCBQSFkwU1VTUEVORCkpOwo+ICsJaWYgKCh2
YWwgJiBVU0JQTUlTQ1JfUEhZX1NVU1BFTkQobikpICYmCj4gKwkgICAgIW1hMzVfdXNiX3BoeV93
YWl0X3JlYWR5KHAsIG4sICZ2YWwpKQo+ICsJCWdvdG8gb3V0OwoKWyAuLi4gXQoKPiArc3RhdGlj
IGVudW0gdXNiX3JvbGUgbWEzNV9yb2xlX3N3X2dldChzdHJ1Y3QgdXNiX3JvbGVfc3dpdGNoICpz
dykKPiArewo+ICsJc3RydWN0IG1hMzVfdXNiX3BoeSAqcCA9IHVzYl9yb2xlX3N3aXRjaF9nZXRf
ZHJ2ZGF0YShzdyk7Cj4gKwl1MzIgdmFsOwo+ICsKPiArCXJlZ21hcF9yZWFkKHAtPnN5c3JlZywg
TUEzNV9TWVNfUFdST05PVFAsICZ2YWwpOwo+ICsKPiArCXJldHVybiAodmFsICYgUFdST05PVFBf
VVNCUDBJRCkgPyBVU0JfUk9MRV9IT1NUIDogVVNCX1JPTEVfREVWSUNFOwo+ICt9CgpbU2V2ZXJp
dHk6IE1lZGl1bV0KQ2FuIHZhbCBiZSB1c2VkIHVuaW5pdGlhbGl6ZWQgaW4gbWEzNV91c2JfcGh5
X2luaXQoKSBhbmQKbWEzNV9yb2xlX3N3X2dldCgpIHdoZW4gcmVnbWFwX3JlYWQoKSBmYWlscyBv
ciBpcyBzdHViYmVkIG91dD8KCk5laXRoZXIgUEhZX01BMzVfVVNCIG5vciBBUkNIX01BMzUgc2Vs
ZWN0cyBNRkRfU1lTQ09OLCBzbyBQSFlfTUEzNV9VU0IgY2FuCmJlIGJ1aWx0IHdpdGggQ09ORklH
X01GRF9TWVNDT049biBhbmQgQ09ORklHX1JFR01BUD1uLiAgSW4gdGhhdApjb25maWd1cmF0aW9u
LCBzeXNjb25fcmVnbWFwX2xvb2t1cF9ieV9waGFuZGxlKCkgYWx3YXlzIGZhaWxzIHdpdGgKLUVO
T1RTVVBQLCBhbmQgdGhlIHJlZ21hcF9yZWFkKCkgc3R1YiByZXR1cm5zIC1FSU5WQUwgd2l0aG91
dCB3cml0aW5nIHZhbCwKY2F1c2luZyB0aGUgY29tcGlsZXIgdG8gZmxhZyB2YWwgYXMgdW5pbml0
aWFsaXplZCBpbiBtYTM1X3VzYl9waHlfaW5pdCgpCmFuZCBtYTM1X3JvbGVfc3dfZ2V0KCkuCgpT
ZWxlY3RpbmcgTUZEX1NZU0NPTiBpbiBQSFlfTUEzNV9VU0IgYW5kIGNoZWNraW5nIHRoZSByZWdt
YXBfcmVhZCgpIHJldHVybgp2YWx1ZSAob3IgaW5pdGlhbGl6aW5nIHZhbCkgd291bGQgYXZvaWQg
Ym90aCBpc3N1ZXMuCgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRl
di8jL3BhdGNoc2V0LzIwMjYxMTA5MDY1NjA2LjYyNjQxLTEtYTA5ODcyMDMwNjlAZ21haWwuY29t
P3BhcnQ9NAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcGh5Cg==
