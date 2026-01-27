Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78D9AD2FEC4
	for <linux-phy@archiver.kernel.org>; Tue, 27 Jan 2026 17:09:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jeAUpnMmJ3UL0cfM/BcRy6MqlI5i/hljS448Y9f2eH8=; b=WFy7CS11FrwvvA
	BYxlcp+llBcnCURCQjaUbptjUIaCK1yZyDuctROq2NdEZEpSjlPXPGzn+EjqjQnVlzwpcjRiji06I
	ijEr7m3oZsVrMhTRZhcOmj2S5Dw9mSLQKJjp4rxvGkYzzn22XEcVgj+DAcgbr7B4OXGWrJhPm1ElU
	1OWMDQBoeTON5uGGBKXejMljHrsdgqJGbkbiwiaweNCoK2tWYZK+zsS0lpVofTJ+H5fV7ZbthboE0
	mlghLL0XROO/tbHmJA5m9Ze0MCMa87mINgEIiE/Su+oKijiG9l872M3muplDdxY6h+EPIG5Lhvefx
	xvAFGHJLYtAU1cioIcqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkmZY-0000000Ei1W-0wXa;
	Tue, 27 Jan 2026 17:09:48 +0000
Received: from smtpout-04.galae.net ([185.171.202.116])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkmZT-0000000EhyJ-3cn4
	for linux-phy@lists.infradead.org;
	Tue, 27 Jan 2026 17:09:45 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 6D221C211C8;
	Tue, 27 Jan 2026 17:09:41 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 4A6A7606F5;
	Tue, 27 Jan 2026 17:09:39 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id EDBB4119A8697;
	Tue, 27 Jan 2026 18:09:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1769533777; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=PcFyLKn28tM/nd0u7JbcHwSmBDJOiHSl2uY1fJ6Cd+w=;
	b=UA8NiG/2mFd7o8K88FkQdpuWfkiXQ0P5MQUNTAyPGh7CLIeCg44o8FZI0+bMR9IDUELhJ+
	FF+XKhRM1WxcG2TVjJBal1AYMtSMKi2S7dVKoYaW9kJzxnAD97ObnRBXzDrsq02c8YXkdF
	eXqHB4MBF6R3XJFs7ord1o+kO9LV5UWUvjews19v1UdY1Gp5zbqT6L4uwkmRu0iJo/K7eL
	ZWr5dZoUs5hP46vXiHJFKp/yjXEl2NYBwQbQJvhuG6oDNG5jqV83ATROuLVmNfxwJaaxji
	ZyLhbSCsz38lOTfFGG4zxN0K2uRWazs9L0Y2gaIrw2nawYvcfj2xY1NzzC3k+Q==
From: =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>
Date: Tue, 27 Jan 2026 18:09:29 +0100
Subject: [PATCH v6 1/8] dt-bindings: soc: mobileye: OLB is an Ethernet PHY
 provider on EyeQ5
MIME-Version: 1.0
Message-Id: <20260127-macb-phy-v6-1-cdd840588188@bootlin.com>
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
 =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.14.3
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260127_090944_412046_957434DE 
X-CRM114-Status: UNSURE (   7.88  )
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
