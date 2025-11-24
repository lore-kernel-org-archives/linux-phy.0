Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08C1DCFD340
	for <linux-phy@archiver.kernel.org>; Mon, 24 Nov 2025 14:41:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n1wIS4wBHpDmZlyCLLTJX6pJLH0S2atvzp9hE5EDQj8=; b=TjpQ+81SE5yhAk
	dC6PMex6a2S6pZfA/VlKTpTYWgIwB+vcyrQ9whbDIaOfBJuSi+izbzMlf1dQtb4H2aqRIfHZK8Vzb
	qRtnJRcdkPkbnVOERg1juVoUmT2XPj1Dik+hxNDOHu/z9YRKeP437T1ofMj+o2GfqtbgA7n+VxtKK
	C3Y2tLfQbZy0mJb3RBUA+NZUtydJWW5hhn2JRyadL6YqOeYzdCEHvpWiFsZe2Lx/DuBOjs6ZTfMGx
	snCg+f+B9+pJVL9dCWzWviTPyRUsW3Xr4ndthr1Azzm/KZR8s9xHogDrvDdMOpUXSKNJA+7694m3b
	5lAUF+0pH8xkH/KrfRmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNXkx-0000000BrXE-3GFS;
	Mon, 24 Nov 2025 14:41:31 +0000
Received: from smtpout-02.galae.net ([185.246.84.56])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNXkv-0000000BrUU-1mu6
	for linux-phy@lists.infradead.org;
	Mon, 24 Nov 2025 14:41:30 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 079B61A1D21;
	Mon, 24 Nov 2025 14:41:28 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id CE37A606FC;
	Mon, 24 Nov 2025 14:41:27 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 81F8910371DB2;
	Mon, 24 Nov 2025 15:41:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1763995286; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=klQnWzZzV5kOkpTDc5MuQiqgbTxND08gty2EDxoTZ9U=;
	b=th+AGnXjyLfMJ5lc16+skBJIeIAmY3nvrbQD2M3lOfM2SvBntx/SUjzW3nHILo3nnR0Mw5
	Bo6XZlwLlFNBRS1bfbtXpgPc6LCafvsnrO5t5PIJMnQKYTPbhUYnnSNYOgnElvccEECWrB
	bOHom8nVjecmZXw78spnVhe9dzKSR80tcD4Iu8po8Qoy/Cq4HJZHYaG3GLLH+0+ef+NNdB
	wn/3xIrN7EavFH0PiWMHO/g1uQrwJQKjCIIWyBuAhB0I+nvHFsfBhdMuKIzR5tSSnNX7RQ
	WQIm+pD64QCJqQ+3eZgcp9bF0BfjbKYMtZE+Q244b041pKF1/aNAM7e17+Uwug==
From: =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>
Date: Mon, 24 Nov 2025 15:41:07 +0100
Subject: [PATCH v4 6/7] MIPS: mobileye: eyeq5: add two Cadence GEM Ethernet
 controllers
MIME-Version: 1.0
Message-Id: <20251124-macb-phy-v4-6-955c625a81a7@bootlin.com>
References: <20251124-macb-phy-v4-0-955c625a81a7@bootlin.com>
In-Reply-To: <20251124-macb-phy-v4-0-955c625a81a7@bootlin.com>
To: Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>, 
 =?utf-8?q?Gr=C3=A9gory_Clement?= <gregory.clement@bootlin.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Cc: linux-mips@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-clk@vger.kernel.org, 
 =?utf-8?q?Beno=C3=AEt_Monin?= <benoit.monin@bootlin.com>, 
 Maxime Chevallier <maxime.chevallier@bootlin.com>, 
 Tawfik Bayouk <tawfik.bayouk@mobileye.com>, 
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>
X-Mailer: b4 0.14.3
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251124_064129_657014_649216F3 
X-CRM114-Status: UNSURE (   7.01  )
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
eXMgPSA8Jm9sYiAxPjsKKwkJCX07CisJCX07CisKIAl9OwogfTsKIAoKLS0gCjIuNTEuMgoKCi0t
IApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
