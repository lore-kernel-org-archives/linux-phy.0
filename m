Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E123C79F82
	for <linux-phy@archiver.kernel.org>; Tue,  8 Sep 2026 15:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GLx7RwoCRGMja8bq3B3HDWP8x2MzLD1zz8uGjT/j26c=; b=E71EJ+YtCIuhTW
	T8CqWfKsa7fQXUekclhHZoeNwnS9z9NxJ0FHvPlGjykAnuL82iYsiO17wydvrV909cO2TgvYusUii
	2P3aaiHqWNnAHDaEx12fon8G86B8fjueg2tU+BnMM3Ii/9qKBu8QPFF+eegeCLIwJDgiU2PBJsJWi
	Ttg+hSnvVl7oEF2j0qDND4OyOTyCwX6eCM/htVQNt3s6eNE54bIaiFKA0EvoXEKGIXAbuuzmJDAPy
	q7oxGy7gLhnA8ChzbSfwL1og3bFi46Wq5OBZeM1bxSzUqNNiKNp1rLv34xuFH3sYo4mI2Cj1sEuo4
	Km+eFSrzvyRfUPJMkt8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3xwK-00000009WLv-3SVf;
	Tue, 08 Sep 2026 15:40:52 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3xwJ-00000009WLo-3sad
	for linux-phy@lists.infradead.org;
	Tue, 08 Sep 2026 15:40:51 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 1C941601F7;
	Tue,  8 Sep 2026 15:40:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 665AF1F00A3D;
	Tue,  8 Sep 2026 15:40:50 +0000 (UTC)
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v4 06/10] net: pcs: xpcs: add ANRESTART support
 for SGMII link recovery
To: "Coia Prant" <coiaprant@gmail.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, vkoul@kernel.org, olteanv@gmail.com, robh@kernel.org, neil.armstrong@linaro.org, wsa+renesas@sang-engineering.com, conor+dt@kernel.org
In-Reply-To: <20260907153713.2572547-8-coiaprant@gmail.com>
References: <20260907153713.2572547-2-coiaprant@gmail.com>
 <20260907153713.2572547-8-coiaprant@gmail.com>
Date: Tue, 08 Sep 2026 15:40:26 +0000
Message-Id: <20260908154050.665AF1F00A3D@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gU3RhbGUgY29tbWVudCBj
b250cmFkaWN0cyBuZXcgQU5SRVNUQVJUIGJlaGF2aW9yLgotLQoKY29tbWl0IDU1M2EwYWFkNDcw
MzNkODgwMDE1NWMxMzU0NzVlMDNlYmJlYWNmMjYKQXV0aG9yOiBDb2lhIFByYW50IDxjb2lhcHJh
bnRAZ21haWwuY29tPgoKbmV0OiBwY3M6IHhwY3M6IGFkZCBBTlJFU1RBUlQgc3VwcG9ydCBmb3Ig
U0dNSUkgbGluayByZWNvdmVyeQoKVGhpcyBjb21taXQgbW9kaWZpZXMgdGhlIFhQQ1MgZHJpdmVy
IHRvIHRyaWdnZXIgQU5SRVNUQVJUIGFsb25nc2lkZSBBTkVOQUJMRQp0byBlbnN1cmUgYXV0by1u
ZWdvdGlhdGlvbiBjb3JyZWN0bHkgcmVzdGFydHMgb24gbGluayBzdGF0ZSBjaGFuZ2VzIGZvcgpj
ZXJ0YWluIGhhcmR3YXJlLiBJdCBhcHBsaWVzIHRoaXMgYm90aCB3aGVuIHN0YXJ0aW5nIEFOIGFu
ZCB3aGVuIHRoZSBsaW5rCmlzIGRvd24gYnV0IEFOIGNvbXBsZXRpb24gaXMgZGV0ZWN0ZWQuCgo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9wY3MvcGNzLXhwY3MuYyBiL2RyaXZlcnMvbmV0L3Bj
cy9wY3MteHBjcy5jCj4gaW5kZXggMDMzN2UyYmNjMDEyNS4uNTBiOWNkZjk0ZmRhYSAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL25ldC9wY3MvcGNzLXhwY3MuYwo+ICsrKyBiL2RyaXZlcnMvbmV0L3Bj
cy9wY3MteHBjcy5jCj4gQEAgLTgxNiw5ICs4MTYsMTQgQEAgc3RhdGljIGludCB4cGNzX2NvbmZp
Z19hbmVnX2MzN19zZ21paShzdHJ1Y3QgZHdfeHBjcyAqeHBjcywKWyAuLi4gXQo+ICAJaWYgKG5l
Z19tb2RlID09IFBIWUxJTktfUENTX05FR19JTkJBTkRfRU5BQkxFRCkKPiAgCQlyZXQgPSB4cGNz
X3dyaXRlKHhwY3MsIE1ESU9fTU1EX1ZFTkQyLCBNSUlfQk1DUiwKPiAtCQkJCSBtZGlvX2N0cmwg
fCBCTUNSX0FORU5BQkxFKTsKPiArCQkJCSBtZGlvX2N0cmwgfCBCTUNSX0FORU5BQkxFIHwgQk1D
Ul9BTlJFU1RBUlQpOwoKW1NldmVyaXR5OiBMb3ddClNpbmNlIHRoaXMgY2hhbmdlIGV4cGxpY2l0
bHkgdHJpZ2dlcnMgQU4gcmVzdGFydCBoZXJlLCBkb2VzIHRoZSBjb21tZW50CmVhcmxpZXIgaW4g
eHBjc19jb25maWdfYW5lZ19jMzdfc2dtaWkoKSBuZWVkIHRvIGJlIHVwZGF0ZWQ/CgpUaGUgYmxv
Y2sgY29tbWVudCBhdCB0aGUgdG9wIG9mIHRoZSBmdW5jdGlvbiBjdXJyZW50bHkgc3RhdGVzOgoK
ICAgICAgICAvKiBGb3IgQU4gZm9yIEMzNyBTR01JSSBtb2RlLCB0aGUgc2V0dGluZ3MgYXJlIDot
ClsgLi4uIF0KICAgICAgICAgKiBOb3RlOiBTaW5jZSBpdCBpcyBNQUMgc2lkZSBTR01JSSwgdGhl
cmUgaXMgbm8gbmVlZCB0byBzZXQKICAgICAgICAgKiAgICAgICBTUl9NSUlfQU5fQURWLiBNQUMg
c2lkZSBTR01JSSByZWNlaXZlcyBBTiBUeCBDb25maWcgZnJvbQogICAgICAgICAqICAgICAgIFBI
WSBhYm91dCB0aGUgbGluayBzdGF0ZSBjaGFuZ2UgYWZ0ZXIgQzI4IEFOIGlzIGNvbXBsZXRlZAog
ICAgICAgICAqICAgICAgIGJldHdlZW4gUEhZIGFuZCBMaW5rIFBhcnRuZXIuIFRoZXJlIGlzIGFs
c28gbm8gbmVlZCB0bwogICAgICAgICAqICAgICAgIHRyaWdnZXIgQU4gcmVzdGFydCBmb3IgTUFD
LXNpZGUgU0dNSUkuCiAgICAgICAgICovCiAgICAgICAgIApJdCBzZWVtcyB0aGUgbmV3IGNvZGUg
bG9naWMgY29udHJhZGljdHMgdGhlIGxhc3Qgc2VudGVuY2Ugb2YgdGhpcyBjb21tZW50LgoKLS0g
ClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2
MDkwNzE1MzcxMy4yNTcyNTQ3LTItY29pYXByYW50QGdtYWlsLmNvbT9wYXJ0PTYKCi0tIApsaW51
eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
