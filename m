Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD2B4CCD1B9
	for <linux-phy@archiver.kernel.org>; Tue, 21 Oct 2025 16:33:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pGpQT89qx6s+5j0HcqU9LHE3dYMKFQ0TOTaiKZBoBVg=; b=yVpXv7HmnfX9us
	MIGWeUjOv55yVCePJ+dhEp0Mq+9tfYVEg6a16GTlgE4jxYlP3PQCDafKMBDaC+PcJZjG0t/WBk81o
	m4HOjVN/io7sriSSSPFuj015PzgX/s0X8pvkSOEc059NvQ3fXCVUvkc8rBW/u/ysIW0+WYZjRgQv5
	3eUrf3WbG0pEvxuh5B/MslBUsELStBHZ70s76nzkFLgUJA2ExRrBCTMeTaxTp2MebM7JifDrEcEUK
	IACmsbzSFeYIAkXg3TH8wenoDHUtUBwBFOABdo1GLltIPiSnr7G10rI4kvaKpLtBNgccdZzVuEIf+
	8MdrHB1Yu55gut/s/VqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBFIU-000000006lz-2Vre;
	Tue, 21 Oct 2025 16:33:18 +0000
Received: from smtpout-03.galae.net ([185.246.85.4])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBFIQ-000000006is-2vbR
	for linux-phy@lists.infradead.org;
	Tue, 21 Oct 2025 16:33:15 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 4B2964E41244;
	Tue, 21 Oct 2025 16:33:13 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 1E9F560680;
	Tue, 21 Oct 2025 16:33:13 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 1D458102F241A;
	Tue, 21 Oct 2025 18:33:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1761064391; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=yPUyMjKAjZ0F5FN4IZiPv/08Pn+WpcjonUV7I71eTcw=;
	b=YPQNlRFFGaxd7DgH6344wSqBklEVwYtRxmrrNu8c+Jx1J8Q9y7ai+wKAGVd9JO7zN3LrTY
	S44S1/arFyXU+J8mePfOwyQa7Pmw21IzG3YiLu8WQHBEnwQvZtlznzrV0ue1yEAgXFxb9r
	r9gOR+HTk98SAsK1D75jX2CPWSEt1cwxh6GPepiqc4ELYq1oq5BHJ48yebCzvXIWKLZHN5
	ItW3JwTD9V0rncRjpTGBwVaopxVeHo/NsEK3ukSor3HLrDTZLEb4mYpl/69kEWVWtzqbbK
	lk6WPGtMS3sZ4BRE3tgsJvOHUkOwC7KdQQiJI61/Bg9/k/MSV2v5zJIcYio4CA==
From: =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>
Date: Tue, 21 Oct 2025 18:32:43 +0200
Subject: [PATCH net-next 02/12] dt-bindings: soc: mobileye: OLB is an
 Ethernet PHY provider on EyeQ5
MIME-Version: 1.0
Message-Id: <20251021-macb-eyeq5-v1-2-3b0b5a9d2f85@bootlin.com>
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
X-CRM114-CacheID: sfid-20251021_093314_873924_BC208CBA 
X-CRM114-Status: UNSURE (   7.51  )
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

T0xCIG9uIEV5ZVE1ICgibW9iaWxleWUsZXllcTUtb2xiIiBjb21wYXRpYmxlKSBpcyBub3cgZGVj
bGFyZWQgYXMgYQpnZW5lcmljIFBIWSBwcm92aWRlci4gVW5kZXIgdGhlIGhvb2QsIGl0IHByb3Zp
ZGVzIEV0aGVybmV0IFJHTUlJL1NHTUlJClBIWSBzdXBwb3J0IGZvciBib3RoIE1BQyBpbnN0YW5j
ZXMuCgpTaWduZWQtb2ZmLWJ5OiBUaMOpbyBMZWJydW4gPHRoZW8ubGVicnVuQGJvb3RsaW4uY29t
PgotLS0KIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NvYy9tb2JpbGV5ZS9tb2JpbGV5ZSxleWVx
NS1vbGIueWFtbCAgICAgICB8IDcgKysrKysrLQogMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9u
cygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9zb2MvbW9iaWxleWUvbW9iaWxleWUsZXllcTUtb2xiLnlhbWwgYi9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc29jL21vYmlsZXllL21vYmlsZXllLGV5ZXE1LW9s
Yi55YW1sCmluZGV4IDZkMTE0NzJiYTVhNy4uNTY0MDFkNzZhOWI1IDEwMDY0NAotLS0gYS9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc29jL21vYmlsZXllL21vYmlsZXllLGV5ZXE1
LW9sYi55YW1sCisrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9zb2MvbW9i
aWxleWUvbW9iaWxleWUsZXllcTUtb2xiLnlhbWwKQEAgLTUxLDYgKzUxLDkgQEAgcHJvcGVydGll
czoKICAgY2xvY2stbmFtZXM6CiAgICAgY29uc3Q6IHJlZgogCisgICcjcGh5LWNlbGxzJzoKKyAg
ICBjb25zdDogMQorCiBwYXR0ZXJuUHJvcGVydGllczoKICAgJy1waW5zPyQnOgogICAgIHR5cGU6
IG9iamVjdApAQCAtMzEwLDcgKzMxMyw3IEBAIGFsbE9mOgogICAgICAgcHJvcGVydGllczoKICAg
ICAgICAgJyNyZXNldC1jZWxscyc6IGZhbHNlCiAKLSAgICAjIE9ubHkgRXllUTUgaGFzIHBpbmN0
cmwgaW4gT0xCLgorICAgICMgT25seSBFeWVRNSBoYXMgcGluY3RybCBhbmQgUEhZIGluIE9MQi4K
ICAgLSBpZjoKICAgICAgIG5vdDoKICAgICAgICAgcHJvcGVydGllczoKQEAgLTMyMCw2ICszMjMs
OCBAQCBhbGxPZjoKICAgICB0aGVuOgogICAgICAgcGF0dGVyblByb3BlcnRpZXM6CiAgICAgICAg
ICctcGlucz8kJzogZmFsc2UKKyAgICAgIHByb3BlcnRpZXM6CisgICAgICAgICcjcGh5LWNlbGxz
JzogZmFsc2UKIAogZXhhbXBsZXM6CiAgIC0gfAoKLS0gCjIuNTEuMQoKCi0tIApsaW51eC1waHkg
bWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
