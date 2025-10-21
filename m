Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9DB7CCD184
	for <linux-phy@archiver.kernel.org>; Tue, 21 Oct 2025 16:33:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9jKZT+oiQVV25JZJIRcU6uoo07HBtqEyz3V0vV/j5tI=; b=KqoOi1/2leB7yc
	gOwKA3Q8G19yGZSQW8MXcK08yVZg8s7FvxwEKO6+lRDerqL5R/6NyAOpG69uHhp3YejQ7bNfs6RKU
	+8WEAsbOsqVzf9u2xjqF6Rc2N9ts94IKy7Q9EqYALIqqfuso29YefPIPmTzuoQMpys7pzoIsDuo8o
	nxEZeFXrkJ3tj4mKiq75lRU94NWCNX41hA+mGCwsh5WRC25CxOrKVlU7935dScELKVoe2As4ZRKrU
	1CzrYtbmPE+jGho/EYSm0NAIn5UDg2GvS/n+mbjAJqjCStrmKUWC0Td+v0oWz6R8f8PUBZtxh7o+P
	0dI/zUGefSDLg0DyozVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBFIb-000000006q8-2Jqd;
	Tue, 21 Oct 2025 16:33:25 +0000
Received: from smtpout-04.galae.net ([185.171.202.116])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBFIY-000000006nD-21s9
	for linux-phy@lists.infradead.org;
	Tue, 21 Oct 2025 16:33:23 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 4664EC0B89B;
	Tue, 21 Oct 2025 16:32:59 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id D414960680;
	Tue, 21 Oct 2025 16:33:18 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id A1457102F2405;
	Tue, 21 Oct 2025 18:33:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1761064397; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=9mdT22bW8hHz3UcIVW5ieLvCN8QVDlwvevK9AMuWtRA=;
	b=B9BCn44P1EQNhvnmT7q8H6NA7TPYf+yZ1iSyRr+1SrLAbt1TuWnwmShY4Q6KIpfIsw8VvO
	t4zMt3FIB3+nPHNhUkseiOirAi6UN1puhnpuKcGWzZdAP9Yaym3HG+N8DbUOpyH9B97r2P
	OOY1jeisVrox9fOjGc8IobkUePTFQyL03YDP0ytqGhTqWiaJ2bG1V7XGv90w85Pz+pyLIe
	ZiLDwwj3rWf506aDfuwK3GHxIP02fsYDfqyQiEaKpC44953PNfJaN3uh2FNvkT8pOGXW3i
	3+Wgyim9kJqJA1IE8+0bF91dbXaTTbQQTg2NJ/F/HI+pukCAS5pYTlbrgsEaug==
From: =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>
Date: Tue, 21 Oct 2025 18:32:45 +0200
Subject: [PATCH net-next 04/12] net: macb: add no LSO capability
 (MACB_CAPS_NO_LSO)
MIME-Version: 1.0
Message-Id: <20251021-macb-eyeq5-v1-4-3b0b5a9d2f85@bootlin.com>
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
 =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>, 
 Andrew Lunn <andrew@lunn.ch>
X-Mailer: b4 0.14.3
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251021_093322_692907_29B15351 
X-CRM114-Status: GOOD (  11.79  )
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

TFNPIGlzIHJ1bnRpbWUtZGV0ZWN0ZWQgdXNpbmcgdGhlIFBCVUZfTFNPIGZpZWxkIGluc2lkZSBy
ZWdpc3RlciBEQ0ZHNi4KQWxsb3cgZGlzYWJsaW5nIHRoYXQgZmVhdHVyZSBpZiBpdCBpcyBicm9r
ZW4gYnkgdXNpbmcgYnAtPmNhcHMgY29taW5nCmZyb20gbWF0Y2ggZGF0YS4KClJldmlld2VkLWJ5
OiBBbmRyZXcgTHVubiA8YW5kcmV3QGx1bm4uY2g+ClNpZ25lZC1vZmYtYnk6IFRow6lvIExlYnJ1
biA8dGhlby5sZWJydW5AYm9vdGxpbi5jb20+Ci0tLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvY2Fk
ZW5jZS9tYWNiLmggICAgICB8IDEgKwogZHJpdmVycy9uZXQvZXRoZXJuZXQvY2FkZW5jZS9tYWNi
X21haW4uYyB8IDcgKysrKystLQogMiBmaWxlcyBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDIg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvY2FkZW5jZS9t
YWNiLmggYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9jYWRlbmNlL21hY2IuaAppbmRleCA5M2U4ZGQw
OTIzMTMuLjA1YmZhOWJkNDc4MiAxMDA2NDQKLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvY2Fk
ZW5jZS9tYWNiLmgKKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvY2FkZW5jZS9tYWNiLmgKQEAg
LTc3OCw2ICs3NzgsNyBAQAogI2RlZmluZSBNQUNCX0NBUFNfRE1BXzY0QgkJCUJJVCgyMSkKICNk
ZWZpbmUgTUFDQl9DQVBTX0RNQV9QVFAJCQlCSVQoMjIpCiAjZGVmaW5lIE1BQ0JfQ0FQU19SU0MJ
CQkJQklUKDIzKQorI2RlZmluZSBNQUNCX0NBUFNfTk9fTFNPCQkJQklUKDI0KQogCiAvKiBMU08g
c2V0dGluZ3MgKi8KICNkZWZpbmUgTUFDQl9MU09fVUZPX0VOQUJMRQkJCTB4MDEKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2NhZGVuY2UvbWFjYl9tYWluLmMgYi9kcml2ZXJzL25l
dC9ldGhlcm5ldC9jYWRlbmNlL21hY2JfbWFpbi5jCmluZGV4IDhkOTUxZmFmMDBjMy4uMjAxMGY5
MjkwYzVjIDEwMDY0NAotLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9jYWRlbmNlL21hY2JfbWFp
bi5jCisrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2NhZGVuY2UvbWFjYl9tYWluLmMKQEAgLTQ1
NjMsOCArNDU2MywxMSBAQCBzdGF0aWMgaW50IG1hY2JfaW5pdChzdHJ1Y3QgcGxhdGZvcm1fZGV2
aWNlICpwZGV2KQogCS8qIFNldCBmZWF0dXJlcyAqLwogCWRldi0+aHdfZmVhdHVyZXMgPSBORVRJ
Rl9GX1NHOwogCi0JLyogQ2hlY2sgTFNPIGNhcGFiaWxpdHkgKi8KLQlpZiAoR0VNX0JGRVhUKFBC
VUZfTFNPLCBnZW1fcmVhZGwoYnAsIERDRkc2KSkpCisJLyogQ2hlY2sgTFNPIGNhcGFiaWxpdHk7
IHJ1bnRpbWUgZGV0ZWN0aW9uIGNhbiBiZSBvdmVycmlkZGVuIGJ5IGEgY2FwCisJICogZmxhZyBp
ZiB0aGUgaGFyZHdhcmUgaXMga25vd24gdG8gYmUgYnVnZ3kKKwkgKi8KKwlpZiAoIShicC0+Y2Fw
cyAmIE1BQ0JfQ0FQU19OT19MU08pICYmCisJICAgIEdFTV9CRkVYVChQQlVGX0xTTywgZ2VtX3Jl
YWRsKGJwLCBEQ0ZHNikpKQogCQlkZXYtPmh3X2ZlYXR1cmVzIHw9IE1BQ0JfTkVUSUZfTFNPOwog
CiAJLyogQ2hlY2tzdW0gb2ZmbG9hZCBpcyBvbmx5IGF2YWlsYWJsZSBvbiBnZW0gd2l0aCBwYWNr
ZXQgYnVmZmVyICovCgotLSAKMi41MS4xCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGlu
dXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
