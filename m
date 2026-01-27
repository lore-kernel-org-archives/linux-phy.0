Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 344CFD2FEC3
	for <linux-phy@archiver.kernel.org>; Tue, 27 Jan 2026 17:09:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OmUU+Ca+eqOZr5Zg3xfuU32Nhoo4oSX/W0BnuKkek5A=; b=qhbrhCjSrI2b6u
	e1RBfpPSSl05qxmzdbJGbxE1lz3L7SNw+Rcd8M9IdJiPp0YLT945ruecnmsvHUj05D4VVvs1iCQgH
	NcGDuB0pFWmGQFL0n0hQ2g4Pqgu6E72Sq9kl6b2ZS5suvsyc1Ea1n6pZJ8bJMnOpRhBZ5DPDgrlf0
	6GqdaA4sHLzxex9caKyuY1AegFqotJjG6eGWchmBlNdwDw5DS7WPHTnmOsvkCZTEkoXhzXkNcSHNh
	SDHXfyr0EtvSSrWCTLOszuBmaTTmZYyQsTem2VR1FznN6qLKTPoBGvshyGpZPXCERrCO8Jxx4h+DS
	IOpQt+c+iA0InJCELKBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkmZg-0000000Ei7L-3k1q;
	Tue, 27 Jan 2026 17:09:56 +0000
Received: from smtpout-04.galae.net ([185.171.202.116])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkmZd-0000000Ei3w-02G5
	for linux-phy@lists.infradead.org;
	Tue, 27 Jan 2026 17:09:54 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 99946C211C6;
	Tue, 27 Jan 2026 17:09:53 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 79574606F5;
	Tue, 27 Jan 2026 17:09:51 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 9C80D119A869F;
	Tue, 27 Jan 2026 18:09:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1769533790; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=j3DTItJWdi9LPxqF5IOPQvF/znTVfYmJgIlAc45vP7g=;
	b=11tLmDZwEabxgokLrKZjvRoSMOaOPIh17LBQVKVAD8/AO346L9hbBUjosBZHHLSOQkRUYW
	WlEET3mBr5bRV1CbzTLJjn7os9hd4crp5A7sOSXDsrLyeIHKwulYextV5/ADPDxlRry8Ad
	7ykfEWv6krpeQvMjHD+WTXXk81B9kKsrwYet8sbc2A1wWJE3XHvK5FKnDgyWeWujngvBEK
	nQoicH8Exe0w3/JoHaeWD2d3kg558WQmo4/YaPbeyIYLinImeEPYNyAI5LrKjIj6q/78f4
	Imts5BmKBhA4WOPK7E1sCGWELRzXI7sUMFdueua6WdFsbyUn5zEcIDsKcXX50g==
From: =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>
Date: Tue, 27 Jan 2026 18:09:35 +0100
Subject: [PATCH v6 7/8] MIPS: mobileye: eyeq5: add two Cadence GEM Ethernet
 controllers
MIME-Version: 1.0
Message-Id: <20260127-macb-phy-v6-7-cdd840588188@bootlin.com>
References: <20260127-macb-phy-v6-0-cdd840588188@bootlin.com>
In-Reply-To: <20260127-macb-phy-v6-0-cdd840588188@bootlin.com>
To: Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>, 
 =?utf-8?q?Gr=C3=A9gory_Clement?= <gregory.clement@bootlin.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-mips@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-clk@vger.kernel.org, 
 =?utf-8?q?Beno=C3=AEt_Monin?= <benoit.monin@bootlin.com>, 
 Tawfik Bayouk <tawfik.bayouk@mobileye.com>, 
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 Luca Ceresoli <luca.ceresoli@bootlin.com>, 
 =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>
X-Mailer: b4 0.14.3
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260127_090953_243062_EBB8C9A2 
X-CRM114-Status: UNSURE (   7.43  )
X-CRM114-Notice: Please train this message.
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

QWRkIGJvdGggTUFDQi9HRU0gaW5zdGFuY2VzIGZvdW5kIGluIHRoZSBNb2JpbGV5ZSBFeWVRNSBT
b0MuCgpBY2tlZC1ieTogVGhvbWFzIEJvZ2VuZG9lcmZlciA8dHNib2dlbmRAYWxwaGEuZnJhbmtl
bi5kZT4KU2lnbmVkLW9mZi1ieTogVGjDqW8gTGVicnVuIDx0aGVvLmxlYnJ1bkBib290bGluLmNv
bT4KLS0tCiBhcmNoL21pcHMvYm9vdC9kdHMvbW9iaWxleWUvZXllcTUuZHRzaSB8IDQ1ICsrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA0NSBpbnNlcnRp
b25zKCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9taXBzL2Jvb3QvZHRzL21vYmlsZXllL2V5ZXE1LmR0
c2kgYi9hcmNoL21pcHMvYm9vdC9kdHMvbW9iaWxleWUvZXllcTUuZHRzaQppbmRleCAzNmE3M2U4
YTYzYTEuLmNlYzVhZDg3NTIyOCAxMDA2NDQKLS0tIGEvYXJjaC9taXBzL2Jvb3QvZHRzL21vYmls
ZXllL2V5ZXE1LmR0c2kKKysrIGIvYXJjaC9taXBzL2Jvb3QvZHRzL21vYmlsZXllL2V5ZXE1LmR0
c2kKQEAgLTc3LDYgKzc3LDggQEAgYWxpYXNlcyB7CiAJCXNlcmlhbDAgPSAmdWFydDA7CiAJCXNl
cmlhbDEgPSAmdWFydDE7CiAJCXNlcmlhbDIgPSAmdWFydDI7CisJCWV0aGVybmV0MCA9ICZtYWNi
MDsKKwkJZXRoZXJuZXQxID0gJm1hY2IxOwogCX07CiAKIAljcHVfaW50YzogaW50ZXJydXB0LWNv
bnRyb2xsZXIgewpAQCAtMjMxLDYgKzIzMyw3IEBAIG9sYjogc3lzdGVtLWNvbnRyb2xsZXJAZTAw
MDAwIHsKIAkJCSNjbG9jay1jZWxscyA9IDwxPjsKIAkJCWNsb2NrcyA9IDwmeHRhbD47CiAJCQlj
bG9jay1uYW1lcyA9ICJyZWYiOworCQkJI3BoeS1jZWxscyA9IDwxPjsKIAkJfTsKIAogCQlnaWM6
IGludGVycnVwdC1jb250cm9sbGVyQDE0MDAwMCB7CkBAIC0zMDUsNiArMzA4LDQ4IEBAIGdwaW8x
OiBncGlvQDE1MDAwMDAgewogCQkJI2ludGVycnVwdC1jZWxscyA9IDwyPjsKIAkJCXJlc2V0cyA9
IDwmb2xiIDAgMjY+OwogCQl9OworCisJCWlvY3UtYnVzIHsKKwkJCWNvbXBhdGlibGUgPSAic2lt
cGxlLWJ1cyI7CisJCQkjYWRkcmVzcy1jZWxscyA9IDwyPjsKKwkJCSNzaXplLWNlbGxzID0gPDI+
OworCQkJcmFuZ2VzOworCQkJZG1hLWNvaGVyZW50OworCQkJZG1hLXJhbmdlcyA9IDwweDEwIDB4
MDAwMDAwMDAgMHgwIDB4MCAweDEwIDA+OworCisJCQltYWNiMDogZXRoZXJuZXRAMmEwMDAwMCB7
CisJCQkJY29tcGF0aWJsZSA9ICJtb2JpbGV5ZSxleWVxNS1nZW0iOworCQkJCXJlZyA9IDwweDAg
MHgwMmEwMDAwMCAweDAgMHg0MDAwPjsKKwkJCQlpbnRlcnJ1cHQtcGFyZW50ID0gPCZnaWM+Owor
CQkJCS8qIE9uZSBpbnRlcnJ1cHQgcGVyIHF1ZXVlICovCisJCQkJaW50ZXJydXB0cyA9IDxHSUNf
U0hBUkVEIDIzIElSUV9UWVBFX0xFVkVMX0hJR0g+LAorCQkJCQkgICAgIDxHSUNfU0hBUkVEIDIz
IElSUV9UWVBFX0xFVkVMX0hJR0g+LAorCQkJCQkgICAgIDxHSUNfU0hBUkVEIDIzIElSUV9UWVBF
X0xFVkVMX0hJR0g+LAorCQkJCQkgICAgIDxHSUNfU0hBUkVEIDIzIElSUV9UWVBFX0xFVkVMX0hJ
R0g+OworCQkJCWNsb2NrLW5hbWVzID0gInBjbGsiLCAiaGNsayIsICJ0c3VfY2xrIjsKKwkJCQlj
bG9ja3MgPSA8JnBjbGs+LCA8JnBjbGs+LCA8JnRzdV9jbGs+OworCQkJCW52bWVtLWNlbGxzID0g
PCZldGgwX21hYz47CisJCQkJbnZtZW0tY2VsbC1uYW1lcyA9ICJtYWMtYWRkcmVzcyI7CisJCQkJ
cGh5cyA9IDwmb2xiIDA+OworCQkJfTsKKworCQkJbWFjYjE6IGV0aGVybmV0QDJiMDAwMDAgewor
CQkJCWNvbXBhdGlibGUgPSAibW9iaWxleWUsZXllcTUtZ2VtIjsKKwkJCQlyZWcgPSA8MHgwIDB4
MDJiMDAwMDAgMHgwIDB4NDAwMD47CisJCQkJaW50ZXJydXB0LXBhcmVudCA9IDwmZ2ljPjsKKwkJ
CQkvKiBPbmUgaW50ZXJydXB0IHBlciBxdWV1ZSAqLworCQkJCWludGVycnVwdHMgPSA8R0lDX1NI
QVJFRCAyNCBJUlFfVFlQRV9MRVZFTF9ISUdIPiwKKwkJCQkJICAgICA8R0lDX1NIQVJFRCAyNCBJ
UlFfVFlQRV9MRVZFTF9ISUdIPiwKKwkJCQkJICAgICA8R0lDX1NIQVJFRCAyNCBJUlFfVFlQRV9M
RVZFTF9ISUdIPiwKKwkJCQkJICAgICA8R0lDX1NIQVJFRCAyNCBJUlFfVFlQRV9MRVZFTF9ISUdI
PjsKKwkJCQljbG9jay1uYW1lcyA9ICJwY2xrIiwgImhjbGsiLCAidHN1X2NsayI7CisJCQkJY2xv
Y2tzID0gPCZwY2xrPiwgPCZwY2xrPiwgPCZ0c3VfY2xrPjsKKwkJCQludm1lbS1jZWxscyA9IDwm
ZXRoMV9tYWM+OworCQkJCW52bWVtLWNlbGwtbmFtZXMgPSAibWFjLWFkZHJlc3MiOworCQkJCXBo
eXMgPSA8Jm9sYiAxPjsKKwkJCX07CisJCX07CisKIAl9OwogfTsKIAoKLS0gCjIuNTIuMAoKCi0t
IApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
