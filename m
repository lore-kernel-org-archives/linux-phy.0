Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3DB12D5B84F
	for <linux-phy@archiver.kernel.org>; Mon, 15 Dec 2025 16:27:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jeAUpnMmJ3UL0cfM/BcRy6MqlI5i/hljS448Y9f2eH8=; b=LxG8m5gU7hLp4S
	bUfS0iMImUca7gW2Dw6ruSQrt7L2CkRt8RDNvtOFuYORm23xT1pgx7xUwUm/MqjuS2PtYMVDmREz3
	ZsPaibeASZorp688GiaE0TiXwa4imOTk87/ZbkI9irkvq6JLZG6kMp3NxLGie+UNBANISooKZo0RK
	oDc4gnFNM7NbVo64ZZjf40yLcvUdwHuYStSm6Dtv/sAB04iQCkMnvq4yz+H/pvLWnBnslZ9yanr6m
	WHVLpSZhRjcDCYcKqyKo1aEbE2AXCwc/bsLGOtoFXP3/7H3HbKVx5/HG8SirXyQS8AqcNb229H9Y6
	WxeaTuRreyY4RVrGWOAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVBPX-00000003z3g-47Sb;
	Mon, 15 Dec 2025 16:26:59 +0000
Received: from smtpout-02.galae.net ([185.246.84.56])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVBPW-00000003z2w-1VWo
	for linux-phy@lists.infradead.org;
	Mon, 15 Dec 2025 16:26:59 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id ECCD91A21E9;
	Mon, 15 Dec 2025 16:26:56 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id BBAEB60664;
	Mon, 15 Dec 2025 16:26:56 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 27DAE119427BD;
	Mon, 15 Dec 2025 17:26:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1765816011; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=PcFyLKn28tM/nd0u7JbcHwSmBDJOiHSl2uY1fJ6Cd+w=;
	b=VzvYMrfEnIrZa6MJkp48SrUDAeIhOVSaKZ7g6GnMOJjUZFQqL0ZtSq34R9PYkRJQgJ8LRr
	A54BPf0C0uo48KMMtTaUiMHbzIHMiNiFg7B/w8WjgTY9gaqI2eo9VE/RO9Lbe35Pindvcw
	WV87Rg12z+E0BIZj+otPuvH0qEtJc+j2BvHgEsPFlHZgAKowmmylO1UHguPZQz8mQY5h7v
	7/gfJXqorEnDVkpKvg6Sy8CTXqizNG3BMDHo3sbw/qkHHNutTuL23UnW5UhWCQZ65IVt+U
	+NzNMPZm5hybu52taBuv1VaWXHZZiGTBRM8vYBzwiKCbaWB9HkFqNkunmx99aQ==
From: =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>
Date: Mon, 15 Dec 2025 17:26:35 +0100
Subject: [PATCH v5 1/7] dt-bindings: soc: mobileye: OLB is an Ethernet PHY
 provider on EyeQ5
MIME-Version: 1.0
Message-Id: <20251215-macb-phy-v5-1-a9dfea39da34@bootlin.com>
References: <20251215-macb-phy-v5-0-a9dfea39da34@bootlin.com>
In-Reply-To: <20251215-macb-phy-v5-0-a9dfea39da34@bootlin.com>
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
 =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.14.3
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251215_082658_528841_4BBE9EEC 
X-CRM114-Status: UNSURE (   7.23  )
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
ZXMuCgpBY2tlZC1ieTogQ29ub3IgRG9vbGV5IDxjb25vci5kb29sZXlAbWljcm9jaGlwLmNvbT4K
U2lnbmVkLW9mZi1ieTogVGjDqW8gTGVicnVuIDx0aGVvLmxlYnJ1bkBib290bGluLmNvbT4KLS0t
CiAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9zb2MvbW9iaWxleWUvbW9iaWxleWUsZXllcTUtb2xi
LnlhbWwgICAgICAgfCA3ICsrKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyks
IDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3Mvc29jL21vYmlsZXllL21vYmlsZXllLGV5ZXE1LW9sYi55YW1sIGIvRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NvYy9tb2JpbGV5ZS9tb2JpbGV5ZSxleWVxNS1vbGIueWFt
bAppbmRleCA2ZDExNDcyYmE1YTcuLjU2NDAxZDc2YTliNSAxMDA2NDQKLS0tIGEvRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NvYy9tb2JpbGV5ZS9tb2JpbGV5ZSxleWVxNS1vbGIu
eWFtbAorKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc29jL21vYmlsZXll
L21vYmlsZXllLGV5ZXE1LW9sYi55YW1sCkBAIC01MSw2ICs1MSw5IEBAIHByb3BlcnRpZXM6CiAg
IGNsb2NrLW5hbWVzOgogICAgIGNvbnN0OiByZWYKIAorICAnI3BoeS1jZWxscyc6CisgICAgY29u
c3Q6IDEKKwogcGF0dGVyblByb3BlcnRpZXM6CiAgICctcGlucz8kJzoKICAgICB0eXBlOiBvYmpl
Y3QKQEAgLTMxMCw3ICszMTMsNyBAQCBhbGxPZjoKICAgICAgIHByb3BlcnRpZXM6CiAgICAgICAg
ICcjcmVzZXQtY2VsbHMnOiBmYWxzZQogCi0gICAgIyBPbmx5IEV5ZVE1IGhhcyBwaW5jdHJsIGlu
IE9MQi4KKyAgICAjIE9ubHkgRXllUTUgaGFzIHBpbmN0cmwgYW5kIFBIWSBpbiBPTEIuCiAgIC0g
aWY6CiAgICAgICBub3Q6CiAgICAgICAgIHByb3BlcnRpZXM6CkBAIC0zMjAsNiArMzIzLDggQEAg
YWxsT2Y6CiAgICAgdGhlbjoKICAgICAgIHBhdHRlcm5Qcm9wZXJ0aWVzOgogICAgICAgICAnLXBp
bnM/JCc6IGZhbHNlCisgICAgICBwcm9wZXJ0aWVzOgorICAgICAgICAnI3BoeS1jZWxscyc6IGZh
bHNlCiAKIGV4YW1wbGVzOgogICAtIHwKCi0tIAoyLjUyLjAKCgotLSAKbGludXgtcGh5IG1haWxp
bmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
