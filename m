Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01674CCD184
	for <linux-phy@archiver.kernel.org>; Tue, 21 Oct 2025 16:33:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kw1uc977QHzgLpW0m+W8t2EGMXfRKKRSvos9IcwbvFo=; b=FoRHsx5d4O3AO2
	UOWpETeW8xrnt7onefwOCwKlgx2qPdhbpXFF9NI2rAuq6A9ldQY6o7hmIzNWQDmYj+q2pyDA459vR
	9qKcoyrbDBZprAVMRmflSY23F44T/iF0h8BsQGnS55WrXisJWohRpLEtemydzkBJ/6B4Afz9OGlGL
	PoegddSvw0YJC8nIai/zlVH3O+wH/ggTh/re8xCfcHqtBN5F62ZXHu0t31WafYrcbo1JkUFbZNm1v
	0XhQgzMyLRdnQ7cZF8H9yv1W9LhQib0OqqoxkVxZG4Ll5BOTNRQRIReA0lcz+VhLiCqi9dMgoW0SC
	sKxcAKqxXcE2Vovo7J/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBFIt-0000000071g-38ct;
	Tue, 21 Oct 2025 16:33:43 +0000
Received: from smtpout-04.galae.net ([185.171.202.116])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBFIr-000000006zT-16Li
	for linux-phy@lists.infradead.org;
	Tue, 21 Oct 2025 16:33:42 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id A980EC0B898;
	Tue, 21 Oct 2025 16:33:19 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 467C860680;
	Tue, 21 Oct 2025 16:33:39 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 27174102F2405;
	Tue, 21 Oct 2025 18:33:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1761064417; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=2+gipFkg5zHDFYtzA9qPB7MSffN6uW2hxVVcE15j2wo=;
	b=jlm1/M/9qSo8FAEyrs/GytfhLY4ugSKojISm4eHOcvVACESxleysO5zIA4EMCsRJNE4Gad
	fUJEnBXfirps3A18tHcO6sYYJB/T7BRJeyJ7fNu874j6IqZ37Tylw0XJIiHKa5FluH9hov
	X7EAZpBQ/2PGn5bNnc2mtnCieGqEwQ+7TBgBwj1Mb0qieXgEVEL4+yEIk6L/1DqJc+0xrB
	6AByMl/rOFH8p26X5HfpzVk0LySJXcOWHubW3Nx2aqlQouFFRaxJ6ZvcAv9MNXKJE1RNAq
	tEFQxIKwvtR5Ge4PKVNyPPv0D0V5DGfe35IbkeuLWJvwuEGj6Oqr7Hx/o4z54g==
From: =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>
Date: Tue, 21 Oct 2025 18:32:52 +0200
Subject: [PATCH net-next 11/12] MIPS: mobileye: eyeq5: add two Cadence GEM
 Ethernet controllers
MIME-Version: 1.0
Message-Id: <20251021-macb-eyeq5-v1-11-3b0b5a9d2f85@bootlin.com>
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
X-CRM114-CacheID: sfid-20251021_093341_547748_C5A0AAC2 
X-CRM114-Status: UNSURE (   6.88  )
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
b0MuCgpTaWduZWQtb2ZmLWJ5OiBUaMOpbyBMZWJydW4gPHRoZW8ubGVicnVuQGJvb3RsaW4uY29t
PgotLS0KIGFyY2gvbWlwcy9ib290L2R0cy9tb2JpbGV5ZS9leWVxNS5kdHNpIHwgNDcgKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDQ3IGluc2VydGlv
bnMoKykKCmRpZmYgLS1naXQgYS9hcmNoL21pcHMvYm9vdC9kdHMvbW9iaWxleWUvZXllcTUuZHRz
aSBiL2FyY2gvbWlwcy9ib290L2R0cy9tb2JpbGV5ZS9leWVxNS5kdHNpCmluZGV4IDM2YTczZThh
NjNhMS4uOTIzZTNmMWYxNWUxIDEwMDY0NAotLS0gYS9hcmNoL21pcHMvYm9vdC9kdHMvbW9iaWxl
eWUvZXllcTUuZHRzaQorKysgYi9hcmNoL21pcHMvYm9vdC9kdHMvbW9iaWxleWUvZXllcTUuZHRz
aQpAQCAtNzcsNiArNzcsOCBAQCBhbGlhc2VzIHsKIAkJc2VyaWFsMCA9ICZ1YXJ0MDsKIAkJc2Vy
aWFsMSA9ICZ1YXJ0MTsKIAkJc2VyaWFsMiA9ICZ1YXJ0MjsKKwkJZXRoZXJuZXQwID0gJm1hY2Iw
OworCQlldGhlcm5ldDEgPSAmbWFjYjE7CiAJfTsKIAogCWNwdV9pbnRjOiBpbnRlcnJ1cHQtY29u
dHJvbGxlciB7CkBAIC0yMzEsNiArMjMzLDcgQEAgb2xiOiBzeXN0ZW0tY29udHJvbGxlckBlMDAw
MDAgewogCQkJI2Nsb2NrLWNlbGxzID0gPDE+OwogCQkJY2xvY2tzID0gPCZ4dGFsPjsKIAkJCWNs
b2NrLW5hbWVzID0gInJlZiI7CisJCQkjcGh5LWNlbGxzID0gPDE+OwogCQl9OwogCiAJCWdpYzog
aW50ZXJydXB0LWNvbnRyb2xsZXJAMTQwMDAwIHsKQEAgLTMwNSw2ICszMDgsNTAgQEAgZ3BpbzE6
IGdwaW9AMTUwMDAwMCB7CiAJCQkjaW50ZXJydXB0LWNlbGxzID0gPDI+OwogCQkJcmVzZXRzID0g
PCZvbGIgMCAyNj47CiAJCX07CisKKwkJaW9jdS1idXMgeworCQkJY29tcGF0aWJsZSA9ICJzaW1w
bGUtYnVzIjsKKwkJCSNhZGRyZXNzLWNlbGxzID0gPDI+OworCQkJI3NpemUtY2VsbHMgPSA8Mj47
CisJCQlyYW5nZXM7CisJCQlkbWEtY29oZXJlbnQ7CisJCQlkbWEtcmFuZ2VzID0gPDB4MTAgMHgw
MDAwMDAwMCAweDAgMHgwIDB4MTAgMD47CisKKwkJCW1hY2IwOiBldGhlcm5ldEAyYTAwMDAwIHsK
KwkJCQljb21wYXRpYmxlID0gIm1vYmlsZXllLGV5ZXE1LWdlbSI7CisJCQkJcmVnID0gPDB4MCAw
eDAyYTAwMDAwIDB4MCAweDQwMDA+OworCQkJCWludGVycnVwdC1wYXJlbnQgPSA8JmdpYz47CisJ
CQkJLyogT25lIGludGVycnVwdCBwZXIgcXVldWUgKi8KKwkJCQlpbnRlcnJ1cHRzID0gPEdJQ19T
SEFSRUQgMjMgSVJRX1RZUEVfTEVWRUxfSElHSD4sCisJCQkJCSAgICAgPEdJQ19TSEFSRUQgMjMg
SVJRX1RZUEVfTEVWRUxfSElHSD4sCisJCQkJCSAgICAgPEdJQ19TSEFSRUQgMjMgSVJRX1RZUEVf
TEVWRUxfSElHSD4sCisJCQkJCSAgICAgPEdJQ19TSEFSRUQgMjMgSVJRX1RZUEVfTEVWRUxfSElH
SD47CisJCQkJY2xvY2stbmFtZXMgPSAicGNsayIsICJoY2xrIiwgInRzdV9jbGsiOworCQkJCWNs
b2NrcyA9IDwmcGNsaz4sIDwmcGNsaz4sIDwmdHN1X2Nsaz47CisJCQkJbnZtZW0tY2VsbHMgPSA8
JmV0aDBfbWFjPjsKKwkJCQludm1lbS1jZWxsLW5hbWVzID0gIm1hYy1hZGRyZXNzIjsKKwkJCQlt
b2JpbGV5ZSxvbGIgPSA8Jm9sYiAweDEyOCAweDEzND47CisJCQkJcGh5cyA9IDwmb2xiIDA+Owor
CQkJfTsKKworCQkJbWFjYjE6IGV0aGVybmV0QDJiMDAwMDAgeworCQkJCWNvbXBhdGlibGUgPSAi
bW9iaWxleWUsZXllcTUtZ2VtIjsKKwkJCQlyZWcgPSA8MHgwIDB4MDJiMDAwMDAgMHgwIDB4NDAw
MD47CisJCQkJLyogT25lIGludGVycnVwdCBwZXIgcXVldWUgKi8KKwkJCQlpbnRlcnJ1cHQtcGFy
ZW50ID0gPCZnaWM+OworCQkJCWludGVycnVwdHMgPSA8R0lDX1NIQVJFRCAyNCBJUlFfVFlQRV9M
RVZFTF9ISUdIPiwKKwkJCQkJICAgICA8R0lDX1NIQVJFRCAyNCBJUlFfVFlQRV9MRVZFTF9ISUdI
PiwKKwkJCQkJICAgICA8R0lDX1NIQVJFRCAyNCBJUlFfVFlQRV9MRVZFTF9ISUdIPiwKKwkJCQkJ
ICAgICA8R0lDX1NIQVJFRCAyNCBJUlFfVFlQRV9MRVZFTF9ISUdIPjsKKwkJCQljbG9jay1uYW1l
cyA9ICJwY2xrIiwgImhjbGsiLCAidHN1X2NsayI7CisJCQkJY2xvY2tzID0gPCZwY2xrPiwgPCZw
Y2xrPiwgPCZ0c3VfY2xrPjsKKwkJCQludm1lbS1jZWxscyA9IDwmZXRoMV9tYWM+OworCQkJCW52
bWVtLWNlbGwtbmFtZXMgPSAibWFjLWFkZHJlc3MiOworCQkJCW1vYmlsZXllLG9sYiA9IDwmb2xi
IDB4MTJjIDB4MTM4PjsKKwkJCQlwaHlzID0gPCZvbGIgMT47CisJCQl9OworCQl9OworCiAJfTsK
IH07CiAKCi0tIAoyLjUxLjEKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1waHkK
