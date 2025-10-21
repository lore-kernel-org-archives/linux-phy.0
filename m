Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94D2FCCD1A7
	for <linux-phy@archiver.kernel.org>; Tue, 21 Oct 2025 16:33:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H02gyVvv3AUIeDH+rTH5rmbUSAYa38j6VrgIdHVjAKA=; b=IJ9LNYLfROf9b0
	j5kYgDB5t+HKEQfrIgssoF1hO25hBPXyBoRCQuPCIHpvPs3HT+r4gltBJHiw+HftgmZqZwYn0Mn5C
	pdk44wAS+Ep7wKb2Mr1YMvWxId4kgVGPw63AJAK4HcbzK5ob2zframEcrRLFBfkrQ3ld2AoqZfRCA
	CNKEhrex+m8mDe0O59PChotLkY7uQsPmLB6OeIrkVXIR6quk74CNiKJ4rKglSHn+LVfT2Qtu/1n4d
	JCggTL1S83RT54cImj3csbRCzK7qoIfP2vKNBJ/72b2lJ45AMdMnvlIBKfz3j0zrSjnnGfr/8AE3j
	ddO9IDnvL32eegxI5kaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBFIo-000000006y3-1NbW;
	Tue, 21 Oct 2025 16:33:38 +0000
Received: from smtpout-02.galae.net ([185.246.84.56])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBFIk-000000006uS-3be4
	for linux-phy@lists.infradead.org;
	Tue, 21 Oct 2025 16:33:36 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 785951A1594;
	Tue, 21 Oct 2025 16:33:33 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 459A960680;
	Tue, 21 Oct 2025 16:33:33 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 67E4F102F2420;
	Tue, 21 Oct 2025 18:33:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1761064412; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=xGfi/wxxIWJSZ/P38qx/iDvGfCPuBRfGoA+hd2Uxo10=;
	b=hThFaTb3NWJ1Rr18az1pUbD8tGPRjn9OEY0gD1T9HI+z0Betw9B4ykRFHjZLzIckB9t36D
	xorv3kPNkGBNMEzyQTc0Hhjv3IQov6rJNR75o67PREuFIjKMPiLd2aTOc9+qHfXj8O+cUf
	+5lkKLiXpnvi4dk7Q7PRMWStLt4R3vmnvcrRya1Bp4117dmxEdmNDMz8e9q5T1plVv3P3l
	7NIsmJ3J5vsFD1o7oJC5agheNM672E18NXrUWBOYaifvpkylmsxG92fdGvoHYkMRaBBaOP
	x9fBM2ZBCvgIH2/fhJ4w9Smj2UI7oTD/5I+mGHFcwUhQqvXiIsRhhkwJX521bg==
From: =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>
Date: Tue, 21 Oct 2025 18:32:50 +0200
Subject: [PATCH net-next 09/12] clk: eyeq: add EyeQ5 children auxiliary
 device for generic PHYs
MIME-Version: 1.0
Message-Id: <20251021-macb-eyeq5-v1-9-3b0b5a9d2f85@bootlin.com>
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
X-CRM114-CacheID: sfid-20251021_093335_061109_BF4367EF 
X-CRM114-Status: GOOD (  10.59  )
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

R3JvdyBvdXIgY2xrLWV5ZXEgZmFtaWx5OyBpdCBrbm93cyBob3cgdG8gc3Bhd24gcmVzZXQgcHJv
dmlkZXIgYW5kIHBpbgpjb250cm9sbGVyIGNoaWxkcmVuLiBFeHBhbmQgd2l0aCBhIGdlbmVyaWMg
UEhZIGRyaXZlciBvbiBFeWVRNS4KClNpZ25lZC1vZmYtYnk6IFRow6lvIExlYnJ1biA8dGhlby5s
ZWJydW5AYm9vdGxpbi5jb20+Ci0tLQogZHJpdmVycy9jbGsvY2xrLWV5ZXEuYyB8IDMgKysrCiAx
IGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9jbGsv
Y2xrLWV5ZXEuYyBiL2RyaXZlcnMvY2xrL2Nsay1leWVxLmMKaW5kZXggNjY0Y2U3ZDc4NjhkLi5h
OWRlNTczMTVlNDggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvY2xrL2Nsay1leWVxLmMKKysrIGIvZHJp
dmVycy9jbGsvY2xrLWV5ZXEuYwpAQCAtMTA5LDYgKzEwOSw3IEBAIHN0cnVjdCBlcWNfbWF0Y2hf
ZGF0YSB7CiAKIAljb25zdCBjaGFyCQkqcmVzZXRfYXV4ZGV2X25hbWU7CiAJY29uc3QgY2hhcgkJ
KnBpbmN0cmxfYXV4ZGV2X25hbWU7CisJY29uc3QgY2hhcgkJKmV0aF9waHlfYXV4ZGV2X25hbWU7
CiAKIAl1bnNpZ25lZCBpbnQJCWVhcmx5X2Nsa19jb3VudDsKIH07CkBAIC0zNjEsNiArMzYyLDcg
QEAgc3RhdGljIGludCBlcWNfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIAkv
KiBJbml0IG9wdGlvbmFsIGF1eGlsaWFyeSBkZXZpY2VzLiAqLwogCWVxY19hdXhkZXZfY3JlYXRl
X29wdGlvbmFsKGRldiwgYmFzZSwgZGF0YS0+cmVzZXRfYXV4ZGV2X25hbWUpOwogCWVxY19hdXhk
ZXZfY3JlYXRlX29wdGlvbmFsKGRldiwgYmFzZSwgZGF0YS0+cGluY3RybF9hdXhkZXZfbmFtZSk7
CisJZXFjX2F1eGRldl9jcmVhdGVfb3B0aW9uYWwoZGV2LCBiYXNlLCBkYXRhLT5ldGhfcGh5X2F1
eGRldl9uYW1lKTsKIAogCWlmIChkYXRhLT5wbGxfY291bnQgKyBkYXRhLT5kaXZfY291bnQgKyBk
YXRhLT5maXhlZF9mYWN0b3JfY291bnQgPT0gMCkKIAkJcmV0dXJuIDA7IC8qIFplcm8gY2xvY2tz
LCB3ZSBhcmUgZG9uZS4gKi8KQEAgLTUyMSw2ICs1MjMsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0
IGVxY19tYXRjaF9kYXRhIGVxY19leWVxNV9tYXRjaF9kYXRhID0gewogCiAJLnJlc2V0X2F1eGRl
dl9uYW1lID0gInJlc2V0IiwKIAkucGluY3RybF9hdXhkZXZfbmFtZSA9ICJwaW5jdHJsIiwKKwku
ZXRoX3BoeV9hdXhkZXZfbmFtZSA9ICJwaHkiLAogCiAJLmVhcmx5X2Nsa19jb3VudCA9IEFSUkFZ
X1NJWkUoZXFjX2V5ZXE1X2Vhcmx5X3BsbHMpICsKIAkJCSAgIEFSUkFZX1NJWkUoZXFjX2V5ZXE1
X2Vhcmx5X2ZpeGVkX2ZhY3RvcnMpLAoKLS0gCjIuNTEuMQoKCi0tIApsaW51eC1waHkgbWFpbGlu
ZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
