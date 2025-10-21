Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1AEFECCD1AF
	for <linux-phy@archiver.kernel.org>; Tue, 21 Oct 2025 16:33:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=plXDKDwPu6Ofrec9jtjSZw9Bh2rSKpuU2AvhxLzchmo=; b=15h8R8/nPpLH+a
	oXMIiJ+HihhgvaIW3+Eq9/msHmNBBfnGx/zQFHNKF8ztiX7ZjlLupKOQNcU880pp5n3NUWlJ2MaFn
	ISwd83hZUi7XADvuoJDRP+jLU6U8mncnMgGu2locvcOP5rEnX7QGP5VG+/1psKWA4nrrkSrdiakRb
	cJwr8lja11lMbuXCXefFxPSDEiV8592JP3lt7420ESFsBXXbHALM9ZXoQQS3RAI2pRz5AKstO2Wnj
	CAr57UUVEMw2qjy3Krc7SS7crAAv3RYy/hK44LVyz6Ozicytcs0bv1g0NXWSdX9dUNd1QLY+WyK8S
	DdT9YzrvasKBxwgZCDxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBFIc-000000006qq-3VWP;
	Tue, 21 Oct 2025 16:33:26 +0000
Received: from smtpout-04.galae.net ([185.171.202.116])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBFIZ-000000006oT-20Sx
	for linux-phy@lists.infradead.org;
	Tue, 21 Oct 2025 16:33:24 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 06C70C0B898;
	Tue, 21 Oct 2025 16:33:02 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 95BB260680;
	Tue, 21 Oct 2025 16:33:21 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 8D379102F241D;
	Tue, 21 Oct 2025 18:33:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1761064400; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=m5DMRTEOrzsIfvkRyqHc14yMBWIw4RysCufBCFCgiU0=;
	b=I0mLE1ghy/2tGEahiXxQjzMrqiyF6+bkbfsX8BGUvOGA7mJroxYSTybmcvWGoYdHau+645
	HpoCpG9UK2l3PDu3MJdv0ZNM/hYjijZrkAFNF+pc2wU3eHW+PP9PaXQpo6bvAPV5U0NXTn
	d+GmA/0E5MvfliAu6ttCXb3EV47sRMFhH7ZhKO/17tLQvqTXlWF5fZgSAxJLuSnwiO5LjT
	crOkMmKuyXWB+fz/UOmc91qgf2QRfHkcw3Pk2Ysqtlxk7I8FVuhTM5KU4ch094Vg07/buW
	tlXvQx/p4bGTRjovtuyFRsSIjAKkvViAZXZ/1He07PBOTZFv2BmWMkFILxp0Fw==
From: =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>
Date: Tue, 21 Oct 2025 18:32:46 +0200
Subject: [PATCH net-next 05/12] net: macb: rename bp->sgmii_phy field to
 bp->phy
MIME-Version: 1.0
Message-Id: <20251021-macb-eyeq5-v1-5-3b0b5a9d2f85@bootlin.com>
References: <20251021-macb-eyeq5-v1-0-3b0b5a9d2f85@bootlin.com>
In-Reply-To: <20251021-macb-eyeq5-v1-0-3b0b5a9d2f85@bootlin.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Nicolas Ferre <nicolas.ferre@microchip.com>, 
 Claudiu Beznea <claudiu.beznea@tuxon.dev>, 
 Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>, 
 =?utf-8?q?Gr=C3=A9gory_Clement?= <gregory.clement@bootlin.com>, 
 Russell King <linux@armlinux.org.uk>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, 
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>, 
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-clk@vger.kernel.org, 
 Tawfik Bayouk <tawfik.bayouk@mobileye.com>, 
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 =?utf-8?q?Beno=C3=AEt_Monin?= <benoit.monin@bootlin.com>, 
 Maxime Chevallier <maxime.chevallier@bootlin.com>, 
 =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>
X-Mailer: b4 0.14.3
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251021_093323_859878_B55000F8 
X-CRM114-Status: GOOD (  14.05  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

VGhlIGJwLT5zZ21paV9waHkgZmllbGQgaXMgaW5pdGlhbGlzZWQgYXQgcHJvYmUgYnkgaW5pdF9y
ZXNldF9vcHRpb25hbCgpCmlmIGJwLT5waHlfaW50ZXJmYWNlID09IFBIWV9JTlRFUkZBQ0VfTU9E
RV9TR01JSS4gSXQgZ2V0cyB1c2VkIGJ5OgogLSB6eW5xbXBfY29uZmlnOiAiY2Rucyx6eW5xbXAt
Z2VtIiBvciAieGxueCx6eW5xbXAtZ2VtIiBjb21wYXRpYmxlcy4KIC0gbXBmc19jb25maWc6ICJt
aWNyb2NoaXAsbXBmcy1tYWNiIiBjb21wYXRpYmxlLgogLSB2ZXJzYWxfY29uZmlnOiAieGxueCx2
ZXJzYWwtZ2VtIiBjb21wYXRpYmxlLgoKTWFrZSBuYW1lIG1vcmUgZ2VuZXJpYyBhcyBFeWVRNSBy
ZXF1aXJlcyB0aGUgUEhZIGluIFNHTUlJICYgUkdNSUkgY2FzZXMuCgpEcm9wICJmb3IgWnlucU1Q
IFNHTUlJIG1vZGUiIGNvbW1lbnQgdGhhdCBpcyBhbHJlYWR5IGEgbGllLCBhcyBpdCBnZXRzCnVz
ZWQgb24gTWljcm9jaGlwIHBsYXRmb3JtcyBhcyB3ZWxsLiBBbmQgc29vbiBpdCB3b24ndCBiZSBT
R01JSS1vbmx5LgoKU2lnbmVkLW9mZi1ieTogVGjDqW8gTGVicnVuIDx0aGVvLmxlYnJ1bkBib290
bGluLmNvbT4KLS0tCiBkcml2ZXJzL25ldC9ldGhlcm5ldC9jYWRlbmNlL21hY2IuaCAgICAgIHwg
IDIgKy0KIGRyaXZlcnMvbmV0L2V0aGVybmV0L2NhZGVuY2UvbWFjYl9tYWluLmMgfCAyNiArKysr
KysrKysrKysrLS0tLS0tLS0tLS0tLQogMiBmaWxlcyBjaGFuZ2VkLCAxNCBpbnNlcnRpb25zKCsp
LCAxNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9jYWRl
bmNlL21hY2IuaCBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2NhZGVuY2UvbWFjYi5oCmluZGV4IDA1
YmZhOWJkNDc4Mi4uODc0MTRhMmRkZjZlIDEwMDY0NAotLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5l
dC9jYWRlbmNlL21hY2IuaAorKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9jYWRlbmNlL21hY2Iu
aApAQCAtMTM0MSw3ICsxMzQxLDcgQEAgc3RydWN0IG1hY2IgewogCiAJc3RydWN0IG1hY2JfcHRw
X2luZm8JKnB0cF9pbmZvOwkvKiBtYWNiLXB0cCBpbnRlcmZhY2UgKi8KIAotCXN0cnVjdCBwaHkJ
CSpzZ21paV9waHk7CS8qIGZvciBaeW5xTVAgU0dNSUkgbW9kZSAqLworCXN0cnVjdCBwaHkJCSpw
aHk7CiAKIAlzcGlubG9ja190IHRzdV9jbGtfbG9jazsgLyogZ2VtIHRzdSBjbG9jayBsb2NraW5n
ICovCiAJdW5zaWduZWQgaW50IHRzdV9yYXRlOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvY2FkZW5jZS9tYWNiX21haW4uYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2NhZGVuY2Uv
bWFjYl9tYWluLmMKaW5kZXggMjAxMGY5MjkwYzVjLi5lNjgxZDdmMzlkZmUgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2NhZGVuY2UvbWFjYl9tYWluLmMKKysrIGIvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvY2FkZW5jZS9tYWNiX21haW4uYwpAQCAtMjk2NCw3ICsyOTY0LDcgQEAgc3Rh
dGljIGludCBtYWNiX29wZW4oc3RydWN0IG5ldF9kZXZpY2UgKmRldikKIAogCW1hY2JfaW5pdF9o
dyhicCk7CiAKLQllcnIgPSBwaHlfcG93ZXJfb24oYnAtPnNnbWlpX3BoeSk7CisJZXJyID0gcGh5
X3Bvd2VyX29uKGJwLT5waHkpOwogCWlmIChlcnIpCiAJCWdvdG8gcmVzZXRfaHc7CiAKQEAgLTI5
ODAsNyArMjk4MCw3IEBAIHN0YXRpYyBpbnQgbWFjYl9vcGVuKHN0cnVjdCBuZXRfZGV2aWNlICpk
ZXYpCiAJcmV0dXJuIDA7CiAKIHBoeV9vZmY6Ci0JcGh5X3Bvd2VyX29mZihicC0+c2dtaWlfcGh5
KTsKKwlwaHlfcG93ZXJfb2ZmKGJwLT5waHkpOwogCiByZXNldF9odzoKIAltYWNiX3Jlc2V0X2h3
KGJwKTsKQEAgLTMwMTIsNyArMzAxMiw3IEBAIHN0YXRpYyBpbnQgbWFjYl9jbG9zZShzdHJ1Y3Qg
bmV0X2RldmljZSAqZGV2KQogCXBoeWxpbmtfc3RvcChicC0+cGh5bGluayk7CiAJcGh5bGlua19k
aXNjb25uZWN0X3BoeShicC0+cGh5bGluayk7CiAKLQlwaHlfcG93ZXJfb2ZmKGJwLT5zZ21paV9w
aHkpOworCXBoeV9wb3dlcl9vZmYoYnAtPnBoeSk7CiAKIAlzcGluX2xvY2tfaXJxc2F2ZSgmYnAt
PmxvY2ssIGZsYWdzKTsKIAltYWNiX3Jlc2V0X2h3KGJwKTsKQEAgLTUxNDAsMTMgKzUxNDAsMTMg
QEAgc3RhdGljIGludCBpbml0X3Jlc2V0X29wdGlvbmFsKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2Ug
KnBkZXYpCiAKIAlpZiAoYnAtPnBoeV9pbnRlcmZhY2UgPT0gUEhZX0lOVEVSRkFDRV9NT0RFX1NH
TUlJKSB7CiAJCS8qIEVuc3VyZSBQSFkgZGV2aWNlIHVzZWQgaW4gU0dNSUkgbW9kZSBpcyByZWFk
eSAqLwotCQlicC0+c2dtaWlfcGh5ID0gZGV2bV9waHlfb3B0aW9uYWxfZ2V0KCZwZGV2LT5kZXYs
IE5VTEwpOworCQlicC0+cGh5ID0gZGV2bV9waHlfb3B0aW9uYWxfZ2V0KCZwZGV2LT5kZXYsIE5V
TEwpOwogCi0JCWlmIChJU19FUlIoYnAtPnNnbWlpX3BoeSkpCi0JCQlyZXR1cm4gZGV2X2Vycl9w
cm9iZSgmcGRldi0+ZGV2LCBQVFJfRVJSKGJwLT5zZ21paV9waHkpLAorCQlpZiAoSVNfRVJSKGJw
LT5waHkpKQorCQkJcmV0dXJuIGRldl9lcnJfcHJvYmUoJnBkZXYtPmRldiwgUFRSX0VSUihicC0+
cGh5KSwKIAkJCQkJICAgICAiZmFpbGVkIHRvIGdldCBTR01JSSBQSFlcbiIpOwogCi0JCXJldCA9
IHBoeV9pbml0KGJwLT5zZ21paV9waHkpOworCQlyZXQgPSBwaHlfaW5pdChicC0+cGh5KTsKIAkJ
aWYgKHJldCkKIAkJCXJldHVybiBkZXZfZXJyX3Byb2JlKCZwZGV2LT5kZXYsIHJldCwKIAkJCQkJ
ICAgICAiZmFpbGVkIHRvIGluaXQgU0dNSUkgUEhZXG4iKTsKQEAgLTUxNzUsNyArNTE3NSw3IEBA
IHN0YXRpYyBpbnQgaW5pdF9yZXNldF9vcHRpb25hbChzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpw
ZGV2KQogCS8qIEZ1bGx5IHJlc2V0IGNvbnRyb2xsZXIgYXQgaGFyZHdhcmUgbGV2ZWwgaWYgbWFw
cGVkIGluIGRldmljZSB0cmVlICovCiAJcmV0ID0gZGV2aWNlX3Jlc2V0X29wdGlvbmFsKCZwZGV2
LT5kZXYpOwogCWlmIChyZXQpIHsKLQkJcGh5X2V4aXQoYnAtPnNnbWlpX3BoeSk7CisJCXBoeV9l
eGl0KGJwLT5waHkpOwogCQlyZXR1cm4gZGV2X2Vycl9wcm9iZSgmcGRldi0+ZGV2LCByZXQsICJm
YWlsZWQgdG8gcmVzZXQgY29udHJvbGxlciIpOwogCX0KIApAQCAtNTE4Myw3ICs1MTgzLDcgQEAg
c3RhdGljIGludCBpbml0X3Jlc2V0X29wdGlvbmFsKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBk
ZXYpCiAKIGVycl9vdXRfcGh5X2V4aXQ6CiAJaWYgKHJldCkKLQkJcGh5X2V4aXQoYnAtPnNnbWlp
X3BoeSk7CisJCXBoeV9leGl0KGJwLT5waHkpOwogCiAJcmV0dXJuIHJldDsKIH0KQEAgLTU1OTMs
NyArNTU5Myw3IEBAIHN0YXRpYyBpbnQgbWFjYl9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNl
ICpwZGV2KQogCW1kaW9idXNfZnJlZShicC0+bWlpX2J1cyk7CiAKIGVycl9vdXRfcGh5X2V4aXQ6
Ci0JcGh5X2V4aXQoYnAtPnNnbWlpX3BoeSk7CisJcGh5X2V4aXQoYnAtPnBoeSk7CiAKIGVycl9v
dXRfZnJlZV9uZXRkZXY6CiAJZnJlZV9uZXRkZXYoZGV2KTsKQEAgLTU2MTcsNyArNTYxNyw3IEBA
IHN0YXRpYyB2b2lkIG1hY2JfcmVtb3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJ
aWYgKGRldikgewogCQlicCA9IG5ldGRldl9wcml2KGRldik7CiAJCXVucmVnaXN0ZXJfbmV0ZGV2
KGRldik7Ci0JCXBoeV9leGl0KGJwLT5zZ21paV9waHkpOworCQlwaHlfZXhpdChicC0+cGh5KTsK
IAkJbWRpb2J1c191bnJlZ2lzdGVyKGJwLT5taWlfYnVzKTsKIAkJbWRpb2J1c19mcmVlKGJwLT5t
aWlfYnVzKTsKIApAQCAtNTY0NCw3ICs1NjQ0LDcgQEAgc3RhdGljIGludCBfX21heWJlX3VudXNl
ZCBtYWNiX3N1c3BlbmQoc3RydWN0IGRldmljZSAqZGV2KQogCXUzMiB0bXA7CiAKIAlpZiAoIWRl
dmljZV9tYXlfd2FrZXVwKCZicC0+ZGV2LT5kZXYpKQotCQlwaHlfZXhpdChicC0+c2dtaWlfcGh5
KTsKKwkJcGh5X2V4aXQoYnAtPnBoeSk7CiAKIAlpZiAoIW5ldGlmX3J1bm5pbmcobmV0ZGV2KSkK
IAkJcmV0dXJuIDA7CkBAIC01NzczLDcgKzU3NzMsNyBAQCBzdGF0aWMgaW50IF9fbWF5YmVfdW51
c2VkIG1hY2JfcmVzdW1lKHN0cnVjdCBkZXZpY2UgKmRldikKIAlpbnQgZXJyOwogCiAJaWYgKCFk
ZXZpY2VfbWF5X3dha2V1cCgmYnAtPmRldi0+ZGV2KSkKLQkJcGh5X2luaXQoYnAtPnNnbWlpX3Bo
eSk7CisJCXBoeV9pbml0KGJwLT5waHkpOwogCiAJaWYgKCFuZXRpZl9ydW5uaW5nKG5ldGRldikp
CiAJCXJldHVybiAwOwoKLS0gCjIuNTEuMQoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0Cmxp
bnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
