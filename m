Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4874D3C927
	for <linux-phy@archiver.kernel.org>; Sun, 20 Oct 2024 07:24:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ByNofztKGsNLutP8Zb5xA3hZSxUs0KKoleOvdvEDYGg=; b=t78cdrvgQb7KE5
	V+dWFhTI8InrOzPxDCjHw8YudEqqxwPzgwnu3JcyIy/zZAWkreY2iGWM9FpScmlC9VLDkoTLDpWF3
	DQfNGI4S00AzLqO10QSCiXTDAe2LfwN0UsNjeIcVgOseFRlln0nQR93NCUWG5QvNdix4VuKkQQKpa
	wmmqW0BSjskZESf7xt+9UoM/+Htnj5sBg6x6nPKN0g1GSUIyEidAoN2cpyTRKRZBtwi8sVUB8M6WX
	AD4au75tFPuhBvOXI9R+URQcGmF2/0NAnYC3FaBcb8O0S6OphkAWCfiLNasG1OTBxNr3XqLmOluUj
	JmOTGS5kBSrtyrbfawNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2QIG-00000004Ybg-0VKC;
	Sun, 20 Oct 2024 07:24:04 +0000
Received: from smtp-28.smtpout.orange.fr ([80.12.242.28] helo=smtp.smtpout.orange.fr)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2QI2-00000004Yan-0M0p
	for linux-phy@lists.infradead.org;
	Sun, 20 Oct 2024 07:24:02 +0000
Received: from [192.168.1.37] ([90.11.132.44])
	by smtp.orange.fr with ESMTPA
	id 2QHmtx47CqSl42QHmtsEdU; Sun, 20 Oct 2024 09:23:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wanadoo.fr;
	s=t20230301; t=1729409020;
	bh=TMmAAHQKed3UL+28kOhhlB2nfADOlaN6TyUGoxjD1dQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:From;
	b=Ie1r24x01qWEkuD/Qx0FQAQSKlXSuVZw8nrURubilzSq6qoeJbvFDsMEYUkdFxHL3
	 yoDJbP2i+9JAcdEJ65msWctHUlW264cTvB/qtOtqQm8Sy5NB3MPIk2Lkes5TmAwtrR
	 t6cFlSMeW72ir7hedjuCZd8ciIK6n+8FNQBu6QkLS2rpVmvPAzJ5GjqbJJWMOdFR+L
	 FNEKvhFVKt4xzTe08tBjCFJ2dGk7r75hwhWUg+QHrB+rnCEg672swd84R+iOcy9rS1
	 9iB2JcUcHcYt9Gt3UVZZAhRaDQvNxIZeZ/HJO/Qqo1EMXOzUUg7tMc/v2y6m8ptHW9
	 auryByRv/vB/A==
X-ME-Helo: [192.168.1.37]
X-ME-Auth: bWFyaW9uLmphaWxsZXRAd2FuYWRvby5mcg==
X-ME-Date: Sun, 20 Oct 2024 09:23:40 +0200
X-ME-IP: 90.11.132.44
Message-ID: <5e828a43-9365-4ac5-b411-0be7188ab8f2@wanadoo.fr>
Date: Sun, 20 Oct 2024 09:23:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/6] phy: core: Add missing of_node_put() in
 of_phy_provider_lookup()
To: Zijun Hu <zijun_hu@icloud.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Felipe Balbi <balbi@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Rob Herring <robh@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Lee Jones <lee@kernel.org>
Cc: stable@vger.kernel.org, linux-phy@lists.infradead.org,
 netdev@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, Zijun Hu <quic_zijuhu@quicinc.com>
References: <20241020-phy_core_fix-v1-0-078062f7da71@quicinc.com>
 <20241020-phy_core_fix-v1-5-078062f7da71@quicinc.com>
Content-Language: en-US, fr-FR
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
In-Reply-To: <20241020-phy_core_fix-v1-5-078062f7da71@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241020_002350_560956_2BC49B13 
X-CRM114-Status: GOOD (  17.53  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

TGUgMjAvMTAvMjAyNCDDoCAwNzoyNywgWmlqdW4gSHUgYSDDqWNyaXTCoDoKPiBGcm9tOiBaaWp1
biBIdSA8cXVpY196aWp1aHVAcXVpY2luYy5jb20+Cj4gCj4gVGhlIGZvcl9lYWNoX2NoaWxkX29m
X25vZGUoKSBtYWNybyBhdXRvbWF0aWNhbGx5IGRlY3JlbWVudHMgdGhlIGNoaWxkCj4gcmVmY291
bnQgYXQgdGhlIGVuZCBvZiBldmVyeSBpdGVyYXRpb24uIE9uIGVhcmx5IGV4aXRzLCBvZl9ub2Rl
X3B1dCgpCj4gbXVzdCBiZSB1c2VkIHRvIG1hbnVhbGx5IGRlY3JlbWVudCB0aGUgcmVmY291bnQg
YW5kIGF2b2lkIG1lbW9yeSBsZWFrcy4KPiAKPiBUaGUgbWFjcm8gY2FsbGVkIGJ5IG9mX3BoeV9w
cm92aWRlcl9sb29rdXAoKSBoYXMgc3VjaCBlYXJseSBleGl0LCBidXQKPiBpdCBkb2VzIG5vdCBj
YWxsIG9mX25vZGVfcHV0KCkgYmVmb3JlIGVhcmx5IGV4aXQuCj4gCj4gRml4ZWQgYnkgYWRkaW5n
IG1pc3Npbmcgb2Zfbm9kZV9wdXQoKSBpbiBvZl9waHlfcHJvdmlkZXJfbG9va3VwKCkuCj4gCj4g
Rml4ZXM6IDJhNGMzNzAxNmNhOSAoInBoeTogY29yZTogRml4IG9mX3BoeV9wcm92aWRlcl9sb29r
dXAgdG8gcmV0dXJuIFBIWSBwcm92aWRlciBmb3Igc3ViIG5vZGUiKQo+IENjOiBzdGFibGVAdmdl
ci5rZXJuZWwub3JnCj4gU2lnbmVkLW9mZi1ieTogWmlqdW4gSHUgPHF1aWNfemlqdWh1QHF1aWNp
bmMuY29tPgo+IAo+IC0tLQo+IFRoZSBpbXBhY3Qgb2YgdGhpcyBjaGFuZ2UgaXMgd2lkZSBzaW5j
ZSBvZl9waHlfcHJvdmlkZXJfbG9va3VwKCkKPiBpcyBpbmRpcmVjdGx5IGNhbGxlZCBieSBBUElz
IHBoeV9nZXQoKSwgb2ZfcGh5X2dldCgpLCBhbmQKPiBkZXZtX29mX3BoeV9nZXRfYnlfaW5kZXgo
KS4KPiAKPiBUaGUgZm9sbG93aW5nIGtlcm5lbCBtYWlubGluZSBjb21taXQgaGFzIHNpbWlsYXIg
Zml4Ogo+IENvbW1pdDogYjMzN2NjM2NlNDc1ICgiYmFja2xpZ2h0OiBsbTM1MDlfYmw6IEZpeCBl
YXJseSByZXR1cm5zIGluIGZvcl9lYWNoX2NoaWxkX29mX25vZGUoKSIpCj4gLS0tCj4gICBkcml2
ZXJzL3BoeS9waHktY29yZS5jIHwgNSArKystLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0
aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcGh5
LWNvcmUuYyBiL2RyaXZlcnMvcGh5L3BoeS1jb3JlLmMKPiBpbmRleCA5Njc4NzhiNzg3OTcuLjI0
YmQ2MTlhMzNkZCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9waHktY29yZS5jCj4gKysrIGIv
ZHJpdmVycy9waHkvcGh5LWNvcmUuYwo+IEBAIC0xNDMsMTAgKzE0MywxMSBAQCBzdGF0aWMgc3Ry
dWN0IHBoeV9wcm92aWRlciAqb2ZfcGh5X3Byb3ZpZGVyX2xvb2t1cChzdHJ1Y3QgZGV2aWNlX25v
ZGUgKm5vZGUpCj4gICAJbGlzdF9mb3JfZWFjaF9lbnRyeShwaHlfcHJvdmlkZXIsICZwaHlfcHJv
dmlkZXJfbGlzdCwgbGlzdCkgewo+ICAgCQlpZiAocGh5X3Byb3ZpZGVyLT5kZXYtPm9mX25vZGUg
PT0gbm9kZSkKPiAgIAkJCXJldHVybiBwaHlfcHJvdmlkZXI7Cj4gLQo+ICAgCQlmb3JfZWFjaF9j
aGlsZF9vZl9ub2RlKHBoeV9wcm92aWRlci0+Y2hpbGRyZW4sIGNoaWxkKQo+IC0JCQlpZiAoY2hp
bGQgPT0gbm9kZSkKPiArCQkJaWYgKGNoaWxkID09IG5vZGUpIHsKPiArCQkJCW9mX25vZGVfcHV0
KGNoaWxkKTsKPiAgIAkJCQlyZXR1cm4gcGh5X3Byb3ZpZGVyOwo+ICsJCQl9CgpIaSwKCk1heWJl
IGZvcl9lYWNoX2NoaWxkX29mX25vZGVfc2NvcGVkKCkgdG8gc2xpZ2h0bHkgc2ltcGxpZnkgdGhp
bmdzIGF0IHRoZSAKc2FtZSB0aW1lPwoKPiAgIAl9Cj4gICAKPiAgIAlyZXR1cm4gRVJSX1BUUigt
RVBST0JFX0RFRkVSKTsKPiAKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1waHkK
