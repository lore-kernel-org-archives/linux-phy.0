Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9121ECCD184
	for <linux-phy@archiver.kernel.org>; Tue, 21 Oct 2025 16:33:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UzXdvUWguLakLqv/6ERsd5tXT9abtAzdzffjykM1WAg=; b=Maqq1uYCv5yq8b
	AnbuuuEziioDI063k/yG+tnSWu2h1WRD+UHeAKV32QFPdaYzfaOy/78W0Cd/8Y2tbhtRJTa+U0e9V
	+4XD+R0541AnPmltYnqXaZcF7Up7SNdA5b5IioGLyAnVDIzRef6wRIEUA+ae53DGuL2CsRcHBl7Wg
	CLJRSfFXFunqjlxNXwhlUOgRu2RcojpCAOhNPlL/5naEQzRnEYaouNMd43UMDoG5ImybYAynUWFkc
	7GvajOcfChE/EqRtaoe4iksitQfjXRAlJNb7NGaDBwaA46HpltH5TlRdEUxGZ4U1D5+mDUtEN/qYY
	O3qiaOiaqNo5a9IwhASg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBFIS-000000006k9-0Lw4;
	Tue, 21 Oct 2025 16:33:16 +0000
Received: from smtpout-02.galae.net ([185.246.84.56])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBFIO-000000006i8-3JFd
	for linux-phy@lists.infradead.org;
	Tue, 21 Oct 2025 16:33:14 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 920071A15A2;
	Tue, 21 Oct 2025 16:33:10 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 66D0460680;
	Tue, 21 Oct 2025 16:33:10 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 3030F102F2405;
	Tue, 21 Oct 2025 18:33:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1761064388; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=L/XpHoQ2KPQc9riZ+r/LMfIVvh/XodPx0VGR9VmHzQ0=;
	b=dd2WKl4rlX7iuNhneCMwl8/nGilha0A6oGI+pLtSZKJzGZRFeYUyZnpqOB9uBhZ2Aegwee
	FYSAzU+yRZcfq/RU0ZriMlXqtD0aNxcf4erzxc0wrUnFnCcWXfwYF6Z7at63J+0UnFyzDw
	AEvdOE2zCuZEg+ZmUaAX/+/oaaL/XedOyMV1M2AIPDliW0HK+b2lRy6aDJNWOmWBVYJDm9
	ZDa5cGU5rKh/T5heRPKK4ZGfLiTNTAhnbWNCDIVmL5FQj9n6IL4UVPlcQbwZaJufYUpSac
	J+zemdnErjqGuFG73uRCBlqLJlWyF+eO2ka4Ei9j11+TagCvmYxLXlo62RFyfQ==
From: =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>
Date: Tue, 21 Oct 2025 18:32:42 +0200
Subject: [PATCH net-next 01/12] dt-bindings: net: cdns,macb: add Mobileye
 EyeQ5 ethernet interface
MIME-Version: 1.0
Message-Id: <20251021-macb-eyeq5-v1-1-3b0b5a9d2f85@bootlin.com>
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
X-CRM114-CacheID: sfid-20251021_093312_957016_0ABCF266 
X-CRM114-Status: UNSURE (   7.17  )
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

QWRkICJjZG5zLGV5ZXE1LWdlbSIgYXMgY29tcGF0aWJsZSBmb3IgdGhlIGludGVncmF0ZWQgR0VN
IGJsb2NrIGluc2lkZQpNb2JpbGV5ZSBFeWVRNSBTb0NzLiBJdCBpcyBkaWZmZXJlbnQgZnJvbSBv
dGhlciBjb21wYXRpYmxlcyBpbiB0d28gbWFpbgp3YXlzOiAoMSkgaXQgcmVxdWlyZXMgYSBnZW5l
cmljIFBIWSBhbmQgKDIpIGl0IGlzIGJldHRlciB0byBrZWVwIFRDUApTZWdtZW50YXRpb24gT2Zm
bG9hZCAoVFNPKSBkaXNhYmxlZC4KClNpZ25lZC1vZmYtYnk6IFRow6lvIExlYnJ1biA8dGhlby5s
ZWJydW5AYm9vdGxpbi5jb20+Ci0tLQogRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L25ldC9jZG5zLG1hY2IueWFtbCB8IDEwICsrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAxMCBp
bnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL25ldC9jZG5zLG1hY2IueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9uZXQvY2RucyxtYWNiLnlhbWwKaW5kZXggMDJmMTRhMGI3MmY5Li5lYTgzMzc4NDZhYjIgMTAw
NjQ0Ci0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvY2RucyxtYWNi
LnlhbWwKKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9jZG5zLG1h
Y2IueWFtbApAQCAtNTcsNiArNTcsNyBAQCBwcm9wZXJ0aWVzOgogICAgICAgICAgIC0gY2Rucyxu
cDQtbWFjYiAgICAgICAgICAgICAjIE5QNCBTb0MgZGV2aWNlcwogICAgICAgICAgIC0gbWljcm9j
aGlwLHNhbWE3ZzUtZW1hYyAgICAjIE1pY3JvY2hpcCBTQU1BN0c1IGV0aGVybmV0IGludGVyZmFj
ZQogICAgICAgICAgIC0gbWljcm9jaGlwLHNhbWE3ZzUtZ2VtICAgICAjIE1pY3JvY2hpcCBTQU1B
N0c1IGdpZ2FiaXQgZXRoZXJuZXQgaW50ZXJmYWNlCisgICAgICAgICAgLSBtb2JpbGV5ZSxleWVx
NS1nZW0gICAgICAgICMgTW9iaWxleWUgRXllUTUgU29DcwogICAgICAgICAgIC0gcmFzcGJlcnJ5
cGkscnAxLWdlbSAgICAgICAjIFJhc3BiZXJyeSBQaSBSUDEgZ2lnYWJpdCBldGhlcm5ldCBpbnRl
cmZhY2UKICAgICAgICAgICAtIHNpZml2ZSxmdTU0MC1jMDAwLWdlbSAgICAgIyBTaUZpdmUgRlU1
NDAtQzAwMCBTb0MKIApAQCAtMTgzLDYgKzE4NCwxNSBAQCBhbGxPZjoKICAgICAgICAgcmVnOgog
ICAgICAgICAgIG1heEl0ZW1zOiAxCiAKKyAgLSBpZjoKKyAgICAgIHByb3BlcnRpZXM6CisgICAg
ICAgIGNvbXBhdGlibGU6CisgICAgICAgICAgY29udGFpbnM6CisgICAgICAgICAgICBjb25zdDog
bW9iaWxleWUsZXllcTUtZ2VtCisgICAgdGhlbjoKKyAgICAgIHJlcXVpcmVkOgorICAgICAgICAt
IHBoeXMKKwogdW5ldmFsdWF0ZWRQcm9wZXJ0aWVzOiBmYWxzZQogCiBleGFtcGxlczoKCi0tIAoy
LjUxLjEKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1waHkK
