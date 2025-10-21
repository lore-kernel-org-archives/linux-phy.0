Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9166FCCD1A7
	for <linux-phy@archiver.kernel.org>; Tue, 21 Oct 2025 16:33:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sqk8IJxCgVT1tHiFWvjp3ds7KuX7Ts2D+Bc0GErJXrQ=; b=sHzGo/HdJfqhb1
	fom+g+4Y33hongw+NhqIv4LHKls/5pD2GvkT0uTq5P6lEe8M/0VVrTPBkdhAZ7zq6J8SZ1oHEDlKn
	ExI8cEIuico2RN34zc7RYFU8XTUX7G++sq4NY5WGceEgfOJN8nt3qan79ddMvESYwJGFm10khm0iH
	3GZC4TzbeI63Cy9fqjjEqp8UgWgTG91UHSi1tYJ0Fqw926u96pRcVKlDHzwB7f+jVJJe+djcNuBIu
	6aHM+/p5maXdL5eK8ZmHlGY/wEKiLrRrqK1fTlSpJfJQu79UBc2muvMCPula90NDBq/GD6qk9yj8x
	wd79NvR8nYcVnYZ2L3ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBFIW-000000006nM-1I4J;
	Tue, 21 Oct 2025 16:33:20 +0000
Received: from smtpout-02.galae.net ([185.246.84.56])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBFIT-000000006ke-1wKb
	for linux-phy@lists.infradead.org;
	Tue, 21 Oct 2025 16:33:18 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 193671A15A2;
	Tue, 21 Oct 2025 16:33:16 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id E1D4F60680;
	Tue, 21 Oct 2025 16:33:15 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id E3E4B102F23EA;
	Tue, 21 Oct 2025 18:33:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1761064394; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=j8hzkMx0NGZAJQ/xFkuORjF0T7wqXOb0/2K4DFFgOl8=;
	b=xOOXa3ih9rTHX6pBNbuMIj9QgflJXrD8M2PwQra8Sou1iFuJH953sMTHOiFzgJIO3xgO4Q
	eo0jHAS0RuQIVRK2+L8Kpai4CLYbItShUEmDAhoXbqgB+M9BSSVuOE8I047yPRSj5SLS9B
	LkiII1STET/nKnamzD2u6Yt+vGaoSWcvBz7T0xE7PyU7lNWJQdESc6pF+y6Tw3id6vzsIV
	bF1xJKj6n/2k8Di9c3NzGmzhdHPbAvOa8yK0SMv26KfNobS2KgO5o0mQER3GwH4zPEc4xq
	c6JwVfHCWurZNuMG1DWPJ5ZmbvaQgDZJ4Jv0oOdu3V9GswCOUc5YfeWCyNPgCQ==
From: =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>
Date: Tue, 21 Oct 2025 18:32:44 +0200
Subject: [PATCH net-next 03/12] net: macb: match skb_reserve(skb,
 NET_IP_ALIGN) with HW alignment
MIME-Version: 1.0
Message-Id: <20251021-macb-eyeq5-v1-3-3b0b5a9d2f85@bootlin.com>
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
X-CRM114-CacheID: sfid-20251021_093317_636865_B5D5266E 
X-CRM114-Status: GOOD (  15.37  )
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

SWYgSFcgaXMgUlNDIGNhcGFibGUsIGl0IGNhbm5vdCBhZGQgZHVtbXkgYnl0ZXMgYXQgdGhlIHN0
YXJ0IG9mIElQCnBhY2tldHMuIEFsaWdubWVudCAoaWUgbnVtYmVyIG9mIGR1bW15IGJ5dGVzKSBp
cyBjb25maWd1cmVkIHVzaW5nIHRoZQpSQk9GIGZpZWxkIGluc2lkZSB0aGUgTkNGR1IgcmVnaXN0
ZXIuCgpPbiB0aGUgc29mdHdhcmUgc2lkZSwgdGhlIHNrYl9yZXNlcnZlKHNrYiwgTkVUX0lQX0FM
SUdOKSBjYWxsIG11c3Qgb25seQpiZSBkb25lIGlmIHRob3NlIGR1bW15IGJ5dGVzIGFyZSBhZGRl
ZCBieSB0aGUgaGFyZHdhcmU7IG5vdGljZSB0aGUKc2tiX3Jlc2VydmUoKSBpcyBkb25lIEFGVEVS
IHdyaXRpbmcgdGhlIGFkZHJlc3MgdG8gdGhlIGRldmljZS4KCldlIGNhbm5vdCBkbyB0aGUgc2ti
X3Jlc2VydmUoKSBjYWxsIEJFRk9SRSB3cml0aW5nIHRoZSBhZGRyZXNzIGJlY2F1c2UKdGhlIGFk
ZHJlc3MgZmllbGQgaWdub3JlcyB0aGUgbG93IDIvMyBiaXRzLiBDb25jbHVzaW9uOiBpbiBzb21l
IGNhc2VzLAp3ZSByaXNrIG5vdCBiZWluZyBhYmxlIHRvIHJlc3BlY3QgdGhlIE5FVF9JUF9BTElH
TiB2YWx1ZSAod2hpY2ggaXMKcGlja2VkIGJhc2VkIG9uIHVuYWxpZ25lZCBDUFUgYWNjZXNzIHBl
cmZvcm1hbmNlKS4KCkZpeGVzOiA0ZGY5NTEzMWVhODAgKCJuZXQvbWFjYjogY2hhbmdlIFJYIHBh
dGggZm9yIEdFTSIpClNpZ25lZC1vZmYtYnk6IFRow6lvIExlYnJ1biA8dGhlby5sZWJydW5AYm9v
dGxpbi5jb20+Ci0tLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvY2FkZW5jZS9tYWNiLmggICAgICB8
ICAzICsrKwogZHJpdmVycy9uZXQvZXRoZXJuZXQvY2FkZW5jZS9tYWNiX21haW4uYyB8IDIxICsr
KysrKysrKysrKysrKysrKy0tLQogMiBmaWxlcyBjaGFuZ2VkLCAyMSBpbnNlcnRpb25zKCspLCAz
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2NhZGVuY2Uv
bWFjYi5oIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvY2FkZW5jZS9tYWNiLmgKaW5kZXggNWI3ZDRj
ZGIyMDRkLi45M2U4ZGQwOTIzMTMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2Nh
ZGVuY2UvbWFjYi5oCisrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2NhZGVuY2UvbWFjYi5oCkBA
IC01MzcsNiArNTM3LDggQEAKIC8qIEJpdGZpZWxkcyBpbiBEQ0ZHNi4gKi8KICNkZWZpbmUgR0VN
X1BCVUZfTFNPX09GRlNFVAkJCTI3CiAjZGVmaW5lIEdFTV9QQlVGX0xTT19TSVpFCQkJMQorI2Rl
ZmluZSBHRU1fUEJVRl9SU0NfT0ZGU0VUCQkJMjYKKyNkZWZpbmUgR0VNX1BCVUZfUlNDX1NJWkUJ
CQkxCiAjZGVmaW5lIEdFTV9QQlVGX0NVVFRIUlVfT0ZGU0VUCQkJMjUKICNkZWZpbmUgR0VNX1BC
VUZfQ1VUVEhSVV9TSVpFCQkJMQogI2RlZmluZSBHRU1fREFXNjRfT0ZGU0VUCQkJMjMKQEAgLTc3
NSw2ICs3NzcsNyBAQAogI2RlZmluZSBNQUNCX0NBUFNfTUFDQl9JU19HRU0JCQlCSVQoMjApCiAj
ZGVmaW5lIE1BQ0JfQ0FQU19ETUFfNjRCCQkJQklUKDIxKQogI2RlZmluZSBNQUNCX0NBUFNfRE1B
X1BUUAkJCUJJVCgyMikKKyNkZWZpbmUgTUFDQl9DQVBTX1JTQwkJCQlCSVQoMjMpCiAKIC8qIExT
TyBzZXR0aW5ncyAqLwogI2RlZmluZSBNQUNCX0xTT19VRk9fRU5BQkxFCQkJMHgwMQpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvY2FkZW5jZS9tYWNiX21haW4uYyBiL2RyaXZlcnMv
bmV0L2V0aGVybmV0L2NhZGVuY2UvbWFjYl9tYWluLmMKaW5kZXggMjE0ZjU0M2FmM2I4Li44ZDk1
MWZhZjAwYzMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2NhZGVuY2UvbWFjYl9t
YWluLmMKKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvY2FkZW5jZS9tYWNiX21haW4uYwpAQCAt
MTMwMSw4ICsxMzAxLDE5IEBAIHN0YXRpYyB2b2lkIGdlbV9yeF9yZWZpbGwoc3RydWN0IG1hY2Jf
cXVldWUgKnF1ZXVlKQogCQkJZG1hX3dtYigpOwogCQkJbWFjYl9zZXRfYWRkcihicCwgZGVzYywg
cGFkZHIpOwogCi0JCQkvKiBwcm9wZXJseSBhbGlnbiBFdGhlcm5ldCBoZWFkZXIgKi8KLQkJCXNr
Yl9yZXNlcnZlKHNrYiwgTkVUX0lQX0FMSUdOKTsKKwkJCS8qIFByb3Blcmx5IGFsaWduIEV0aGVy
bmV0IGhlYWRlci4KKwkJCSAqCisJCQkgKiBIYXJkd2FyZSBjYW4gYWRkIGR1bW15IGJ5dGVzIGlm
IGFza2VkIHVzaW5nIHRoZSBSQk9GCisJCQkgKiBmaWVsZCBpbnNpZGUgdGhlIE5DRkdSIHJlZ2lz
dGVyLiBUaGF0IGZlYXR1cmUgaXNuJ3QKKwkJCSAqIGF2YWlsYWJsZSBpZiBoYXJkd2FyZSBpcyBS
U0MgY2FwYWJsZS4KKwkJCSAqCisJCQkgKiBXZSBjYW5ub3QgZmFsbGJhY2sgdG8gZG9pbmcgdGhl
IDItYnl0ZSBzaGlmdCBiZWZvcmUKKwkJCSAqIERNQSBtYXBwaW5nIGJlY2F1c2UgdGhlIGFkZHJl
c3MgZmllbGQgZG9lcyBub3QgYWxsb3cKKwkJCSAqIHNldHRpbmcgdGhlIGxvdyAyLzMgYml0cy4K
KwkJCSAqIEl0IGlzIDMgYml0cyBpZiBIV19ETUFfQ0FQX1BUUCwgZWxzZSAyIGJpdHMuCisJCQkg
Ki8KKwkJCWlmICghKGJwLT5jYXBzICYgTUFDQl9DQVBTX1JTQykpCisJCQkJc2tiX3Jlc2VydmUo
c2tiLCBORVRfSVBfQUxJR04pOwogCQl9IGVsc2UgewogCQkJZGVzYy0+Y3RybCA9IDA7CiAJCQlk
bWFfd21iKCk7CkBAIC0yNzc0LDcgKzI3ODUsOSBAQCBzdGF0aWMgdm9pZCBtYWNiX2luaXRfaHco
c3RydWN0IG1hY2IgKmJwKQogCW1hY2Jfc2V0X2h3YWRkcihicCk7CiAKIAljb25maWcgPSBtYWNi
X21kY19jbGtfZGl2KGJwKTsKLQljb25maWcgfD0gTUFDQl9CRihSQk9GLCBORVRfSVBfQUxJR04p
OwkvKiBNYWtlIGV0aCBkYXRhIGFsaWduZWQgKi8KKwkvKiBNYWtlIGV0aCBkYXRhIGFsaWduZWQu
IElmIFJTQyBjYXBhYmxlLCB0aGF0IG9mZnNldCBpcyBpZ25vcmVkIGJ5IEhXLiAqLworCWlmICgh
KGJwLT5jYXBzICYgTUFDQl9DQVBTX1JTQykpCisJCWNvbmZpZyB8PSBNQUNCX0JGKFJCT0YsIE5F
VF9JUF9BTElHTik7CiAJY29uZmlnIHw9IE1BQ0JfQklUKERSRkNTKTsJCS8qIERpc2NhcmQgUngg
RkNTICovCiAJaWYgKGJwLT5jYXBzICYgTUFDQl9DQVBTX0pVTUJPKQogCQljb25maWcgfD0gTUFD
Ql9CSVQoSkZSQU1FKTsJLyogRW5hYmxlIGp1bWJvIGZyYW1lcyAqLwpAQCAtNDMyMiw2ICs0MzM1
LDggQEAgc3RhdGljIHZvaWQgbWFjYl9jb25maWd1cmVfY2FwcyhzdHJ1Y3QgbWFjYiAqYnAsCiAJ
CWRjZmcgPSBnZW1fcmVhZGwoYnAsIERDRkcyKTsKIAkJaWYgKChkY2ZnICYgKEdFTV9CSVQoUlhf
UEtUX0JVRkYpIHwgR0VNX0JJVChUWF9QS1RfQlVGRikpKSA9PSAwKQogCQkJYnAtPmNhcHMgfD0g
TUFDQl9DQVBTX0ZJRk9fTU9ERTsKKwkJaWYgKEdFTV9CRkVYVChQQlVGX1JTQywgZ2VtX3JlYWRs
KGJwLCBEQ0ZHNikpKQorCQkJYnAtPmNhcHMgfD0gTUFDQl9DQVBTX1JTQzsKIAkJaWYgKGdlbV9o
YXNfcHRwKGJwKSkgewogCQkJaWYgKCFHRU1fQkZFWFQoVFNVLCBnZW1fcmVhZGwoYnAsIERDRkc1
KSkpCiAJCQkJZGV2X2VycigmYnAtPnBkZXYtPmRldiwKCi0tIAoyLjUxLjEKCgotLSAKbGludXgt
cGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
