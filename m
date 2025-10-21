Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5CC62CCD184
	for <linux-phy@archiver.kernel.org>; Tue, 21 Oct 2025 16:33:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KQh3RdKJUDY+sY23yOErc5Jf8Yw8z6x7S+0DwIrkUV8=; b=z9IXP3ESRUKdJ2
	p+2pJsqc27eokqXpIsHbGl+KYfW5xTG11eZRmD6uQRInZD6PKn+/BouZ3jm0IztWMIsTlyyogDm8/
	gH8AE5g8jXE1mYX/CuL3uFTqmr3JaZQRPCLtJBdfB4+s8zi12Rn6x9fQ9A+x7Ul6HqtDh1B8RR+zv
	F/6i1t6blO39ejXUQ3xYgzQTPztVB2V9/N+lASZRyUrlQQ9RoiUwpTBkVWos4oQkxc9Z5NbvKlf4+
	bPeTgVzhsBByCX/PZxM1WsNGvV8lx+2QTXIyo2zqEg4qFqsynZTs1HLyl3atsZUpZESMOPmx01zNq
	/Gbv87IzlD0gcdAwyDTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBFIe-000000006rS-0QT0;
	Tue, 21 Oct 2025 16:33:28 +0000
Received: from smtpout-03.galae.net ([185.246.85.4])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBFIc-000000006q7-1XAc
	for linux-phy@lists.infradead.org;
	Tue, 21 Oct 2025 16:33:27 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id E927B4E4122A;
	Tue, 21 Oct 2025 16:33:24 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id BDE0360680;
	Tue, 21 Oct 2025 16:33:24 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 7E0F3102F241E;
	Tue, 21 Oct 2025 18:33:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1761064403; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=55HIhuBijKuHS2lkpMwIPNwxEIwRl8+fBGb4Po3C0G0=;
	b=nE5siTkC0EXtHonMTAKegXtp0rapyGqObL9hyxCLDBIv7wPa2CKlXTv4oHAEJJ77fIxGkx
	dZdALa24VQWG/phbLuGKtH81f/7cHlieY1A9SbD8k7QQt9k1fMauwCmrVj2u7A2wmnxo2M
	D1bHrMn6bvBGPQFwarbUPc6zycfuPUVKGLEGWO1J/gc6gQuWSEO4wg6e0CVQVkmK1rEvxd
	GOATDQgpFOppTwSJK24AjsPGVwbN0yDw7lfAbmgggfjH8pIhymhKRHLeISvQJL13lb5/RP
	8YYWk5v9avNfkKzeBcoWrSBQ1Kh7cxfLeVJaomPNHWDu/YIk40In178whortEg==
From: =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>
Date: Tue, 21 Oct 2025 18:32:47 +0200
Subject: [PATCH net-next 06/12] net: macb: Add "mobileye,eyeq5-gem"
 compatible
MIME-Version: 1.0
Message-Id: <20251021-macb-eyeq5-v1-6-3b0b5a9d2f85@bootlin.com>
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
X-CRM114-CacheID: sfid-20251021_093326_536315_8072407E 
X-CRM114-Status: GOOD (  12.83  )
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

QWRkIHN1cHBvcnQgZm9yIHRoZSB0d28gR0VNIGluc3RhbmNlcyBpbnNpZGUgTW9iaWxleWUgRXll
UTUgU29DcywgdXNpbmcKY29tcGF0aWJsZSAibW9iaWxleWUsZXllcTUtZ2VtIi4gV2l0aCBpdCwg
YWRkIGEgY3VzdG9tIGluaXQgc2VxdWVuY2UKdGhhdCBtdXN0IGdyYWIgYSBnZW5lcmljIFBIWSBh
bmQgaW5pdGlhbGlzZSBpdC4KCldlIHVzZSBicC0+cGh5IGluIGJvdGggUkdNSUkgYW5kIFNHTUlJ
IGNhc2VzLiBUZWxsIG91ciBtb2RlIGJ5IGFkZGluZyBhCnBoeV9zZXRfbW9kZV9leHQoKSBkdXJp
bmcgbWFjYl9vcGVuKCksIGJlZm9yZSBwaHlfcG93ZXJfb24oKS4gV2UgYXJlCnRoZSBmaXJzdCB1
c2VycyBvZiBicC0+cGh5IHRoYXQgdXNlIGl0IGluIG5vbi1TR01JSSBjYXNlcy4KClNpZ25lZC1v
ZmYtYnk6IFRow6lvIExlYnJ1biA8dGhlby5sZWJydW5AYm9vdGxpbi5jb20+Ci0tLQogZHJpdmVy
cy9uZXQvZXRoZXJuZXQvY2FkZW5jZS9tYWNiX21haW4uYyB8IDM4ICsrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMzggaW5zZXJ0aW9ucygrKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2NhZGVuY2UvbWFjYl9tYWluLmMgYi9kcml2ZXJz
L25ldC9ldGhlcm5ldC9jYWRlbmNlL21hY2JfbWFpbi5jCmluZGV4IGU2ODFkN2YzOWRmZS4uNmVh
OTljNWZkOTVjIDEwMDY0NAotLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9jYWRlbmNlL21hY2Jf
bWFpbi5jCisrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2NhZGVuY2UvbWFjYl9tYWluLmMKQEAg
LTI5NjQsNiArMjk2NCwxMCBAQCBzdGF0aWMgaW50IG1hY2Jfb3BlbihzdHJ1Y3QgbmV0X2Rldmlj
ZSAqZGV2KQogCiAJbWFjYl9pbml0X2h3KGJwKTsKIAorCWVyciA9IHBoeV9zZXRfbW9kZV9leHQo
YnAtPnBoeSwgUEhZX01PREVfRVRIRVJORVQsIGJwLT5waHlfaW50ZXJmYWNlKTsKKwlpZiAoZXJy
KQorCQlnb3RvIHJlc2V0X2h3OworCiAJZXJyID0gcGh5X3Bvd2VyX29uKGJwLT5waHkpOwogCWlm
IChlcnIpCiAJCWdvdG8gcmVzZXRfaHc7CkBAIC01MTg4LDYgKzUxOTIsMjggQEAgc3RhdGljIGlu
dCBpbml0X3Jlc2V0X29wdGlvbmFsKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJcmV0
dXJuIHJldDsKIH0KIAorc3RhdGljIGludCBleWVxNV9pbml0KHN0cnVjdCBwbGF0Zm9ybV9kZXZp
Y2UgKnBkZXYpCit7CisJc3RydWN0IG5ldF9kZXZpY2UgKm5ldGRldiA9IHBsYXRmb3JtX2dldF9k
cnZkYXRhKHBkZXYpOworCXN0cnVjdCBtYWNiICpicCA9IG5ldGRldl9wcml2KG5ldGRldik7CisJ
c3RydWN0IGRldmljZSAqZGV2ID0gJnBkZXYtPmRldjsKKwlpbnQgcmV0OworCisJYnAtPnBoeSA9
IGRldm1fcGh5X2dldChkZXYsIE5VTEwpOworCWlmIChJU19FUlIoYnAtPnBoeSkpCisJCXJldHVy
biBkZXZfZXJyX3Byb2JlKGRldiwgUFRSX0VSUihicC0+cGh5KSwKKwkJCQkgICAgICJmYWlsZWQg
dG8gZ2V0IFBIWVxuIik7CisKKwlyZXQgPSBwaHlfaW5pdChicC0+cGh5KTsKKwlpZiAocmV0KQor
CQlyZXR1cm4gZGV2X2Vycl9wcm9iZShkZXYsIHJldCwgImZhaWxlZCB0byBpbml0IFBIWVxuIik7
CisKKwlyZXQgPSBtYWNiX2luaXQocGRldik7CisJaWYgKHJldCkKKwkJcGh5X2V4aXQoYnAtPnBo
eSk7CisJcmV0dXJuIHJldDsKK30KKwogc3RhdGljIGNvbnN0IHN0cnVjdCBtYWNiX3VzcmlvX2Nv
bmZpZyBzYW1hN2c1X3VzcmlvID0gewogCS5taWkgPSAwLAogCS5ybWlpID0gMSwKQEAgLTUzNDIs
NiArNTM2OCwxNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IG1hY2JfY29uZmlnIHZlcnNhbF9jb25m
aWcgPSB7CiAJLnVzcmlvID0gJm1hY2JfZGVmYXVsdF91c3JpbywKIH07CiAKK3N0YXRpYyBjb25z
dCBzdHJ1Y3QgbWFjYl9jb25maWcgZXllcTVfY29uZmlnID0geworCS5jYXBzID0gTUFDQl9DQVBT
X0dJR0FCSVRfTU9ERV9BVkFJTEFCTEUgfCBNQUNCX0NBUFNfSlVNQk8gfAorCQlNQUNCX0NBUFNf
R0VNX0hBU19QVFAgfCBNQUNCX0NBUFNfUVVFVUVfRElTQUJMRSB8CisJCU1BQ0JfQ0FQU19OT19M
U08sCisJLmRtYV9idXJzdF9sZW5ndGggPSAxNiwKKwkuY2xrX2luaXQgPSBtYWNiX2Nsa19pbml0
LAorCS5pbml0ID0gZXllcTVfaW5pdCwKKwkuanVtYm9fbWF4X2xlbiA9IDEwMjQwLAorCS51c3Jp
byA9ICZtYWNiX2RlZmF1bHRfdXNyaW8sCit9OworCiBzdGF0aWMgY29uc3Qgc3RydWN0IG1hY2Jf
Y29uZmlnIHJhc3BiZXJyeXBpX3JwMV9jb25maWcgPSB7CiAJLmNhcHMgPSBNQUNCX0NBUFNfR0lH
QUJJVF9NT0RFX0FWQUlMQUJMRSB8IE1BQ0JfQ0FQU19DTEtfSFdfQ0hHIHwKIAkJTUFDQl9DQVBT
X0pVTUJPIHwKQEAgLTUzNzMsNiArNTQxMCw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2
aWNlX2lkIG1hY2JfZHRfaWRzW10gPSB7CiAJeyAuY29tcGF0aWJsZSA9ICJtaWNyb2NoaXAsbXBm
cy1tYWNiIiwgLmRhdGEgPSAmbXBmc19jb25maWcgfSwKIAl7IC5jb21wYXRpYmxlID0gIm1pY3Jv
Y2hpcCxzYW1hN2c1LWdlbSIsIC5kYXRhID0gJnNhbWE3ZzVfZ2VtX2NvbmZpZyB9LAogCXsgLmNv
bXBhdGlibGUgPSAibWljcm9jaGlwLHNhbWE3ZzUtZW1hYyIsIC5kYXRhID0gJnNhbWE3ZzVfZW1h
Y19jb25maWcgfSwKKwl7IC5jb21wYXRpYmxlID0gIm1vYmlsZXllLGV5ZXE1LWdlbSIsIC5kYXRh
ID0gJmV5ZXE1X2NvbmZpZyB9LAogCXsgLmNvbXBhdGlibGUgPSAicmFzcGJlcnJ5cGkscnAxLWdl
bSIsIC5kYXRhID0gJnJhc3BiZXJyeXBpX3JwMV9jb25maWcgfSwKIAl7IC5jb21wYXRpYmxlID0g
InhsbngsenlucW1wLWdlbSIsIC5kYXRhID0gJnp5bnFtcF9jb25maWd9LAogCXsgLmNvbXBhdGli
bGUgPSAieGxueCx6eW5xLWdlbSIsIC5kYXRhID0gJnp5bnFfY29uZmlnIH0sCgotLSAKMi41MS4x
CgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5
Cg==
