Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E3F0CCF9F0
	for <linux-phy@archiver.kernel.org>; Sat,  1 Nov 2025 08:54:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kpHOrOuu0ohdDJiW9dKM2GmPtOkLdihqtMgoUb6tKtQ=; b=WTcaweisBSBBSN
	2XnAKEF5aaLWJprkgoDVDhxRuJ+0GlWM3SmS7ktUHRG8YVlYwnrQk1uWK65/Y7mnoNmqEmEhxsCi2
	KW8hASbgQ+AnqHYwDg0mktipCkVsWM4YKdwoU9/sWAqi496SdkTkK8DF/V0vtpFAKGIe7o2qi7OeL
	zmsCz6KvfaFMseIaP06A/ykPYAOURR/LlclAbLDRvb42ZiJ6009A8NukLIYaUEzscGOtKef5R1o0q
	nUelbTSD+AqWJyzQswiy/cgzF82oWHo2URPa0m3v+kwQoFqnEXcdIHiWT6fcVA1zKVbmrB5P2yqs8
	m8/Asm8PSh2I/HttJUKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vF7NC-00000007Cjo-0vAV;
	Sat, 01 Nov 2025 08:54:10 +0000
Received: from smtpout-02.galae.net ([185.246.84.56])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vF7N9-00000007Ci2-23Oa
	for linux-phy@lists.infradead.org;
	Sat, 01 Nov 2025 08:54:08 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 00BFD1A17E0;
	Sat,  1 Nov 2025 08:54:06 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id CB43D6070B;
	Sat,  1 Nov 2025 08:54:05 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id CF79B1181ABE5;
	Sat,  1 Nov 2025 09:54:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1761987244; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=ruvqMdrCplni8HhZlBta1yqMIH8AkjPXDgnT9COO8UQ=;
	b=g5V50wtvw08Inzzz98zK3gmXL9bTUiRKpx+u4+JBpo6HvbROvr+1K0OodMXd0AGL9zPRCU
	9GTt/0uozWzUgNj3c1fLqtyupWEHv+qJDSKcbwCtY7UNvBydYpR80cR2+/YO/S+2V+8i8N
	V5uoPV5BWGRtDHz2UIpYC6aZjBDk4wDXRoOkt8o/fWF+xhl0RjrOD09nyUERKpXfeV7REt
	2JjL2IlMpbx8fDlzyOmIYf14gqWZZFvLzl8GYXcoSSfwqcC7eNXUhUd2MxoapB16DqH6d8
	TpeFEPRhmoVw37X9qtGZJbShH1bMZhRsuNkorYozyWGYFOfvwWsNNxRX01Cz6Q==
From: =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>
Date: Sat, 01 Nov 2025 09:53:34 +0100
Subject: [PATCH v2 6/7] MIPS: mobileye: eyeq5: add two Cadence GEM Ethernet
 controllers
MIME-Version: 1.0
Message-Id: <20251101-macb-phy-v2-6-c1519eef16d3@bootlin.com>
References: <20251101-macb-phy-v2-0-c1519eef16d3@bootlin.com>
In-Reply-To: <20251101-macb-phy-v2-0-c1519eef16d3@bootlin.com>
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
X-CRM114-CacheID: sfid-20251101_015407_682783_8ED5E05F 
X-CRM114-Status: UNSURE (   6.76  )
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
PgotLS0KIGFyY2gvbWlwcy9ib290L2R0cy9tb2JpbGV5ZS9leWVxNS5kdHNpIHwgNDUgKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDQ1IGluc2VydGlv
bnMoKykKCmRpZmYgLS1naXQgYS9hcmNoL21pcHMvYm9vdC9kdHMvbW9iaWxleWUvZXllcTUuZHRz
aSBiL2FyY2gvbWlwcy9ib290L2R0cy9tb2JpbGV5ZS9leWVxNS5kdHNpCmluZGV4IDM2YTczZThh
NjNhMS4uY2VjNWFkODc1MjI4IDEwMDY0NAotLS0gYS9hcmNoL21pcHMvYm9vdC9kdHMvbW9iaWxl
eWUvZXllcTUuZHRzaQorKysgYi9hcmNoL21pcHMvYm9vdC9kdHMvbW9iaWxleWUvZXllcTUuZHRz
aQpAQCAtNzcsNiArNzcsOCBAQCBhbGlhc2VzIHsKIAkJc2VyaWFsMCA9ICZ1YXJ0MDsKIAkJc2Vy
aWFsMSA9ICZ1YXJ0MTsKIAkJc2VyaWFsMiA9ICZ1YXJ0MjsKKwkJZXRoZXJuZXQwID0gJm1hY2Iw
OworCQlldGhlcm5ldDEgPSAmbWFjYjE7CiAJfTsKIAogCWNwdV9pbnRjOiBpbnRlcnJ1cHQtY29u
dHJvbGxlciB7CkBAIC0yMzEsNiArMjMzLDcgQEAgb2xiOiBzeXN0ZW0tY29udHJvbGxlckBlMDAw
MDAgewogCQkJI2Nsb2NrLWNlbGxzID0gPDE+OwogCQkJY2xvY2tzID0gPCZ4dGFsPjsKIAkJCWNs
b2NrLW5hbWVzID0gInJlZiI7CisJCQkjcGh5LWNlbGxzID0gPDE+OwogCQl9OwogCiAJCWdpYzog
aW50ZXJydXB0LWNvbnRyb2xsZXJAMTQwMDAwIHsKQEAgLTMwNSw2ICszMDgsNDggQEAgZ3BpbzE6
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
JmV0aDBfbWFjPjsKKwkJCQludm1lbS1jZWxsLW5hbWVzID0gIm1hYy1hZGRyZXNzIjsKKwkJCQlw
aHlzID0gPCZvbGIgMD47CisJCQl9OworCisJCQltYWNiMTogZXRoZXJuZXRAMmIwMDAwMCB7CisJ
CQkJY29tcGF0aWJsZSA9ICJtb2JpbGV5ZSxleWVxNS1nZW0iOworCQkJCXJlZyA9IDwweDAgMHgw
MmIwMDAwMCAweDAgMHg0MDAwPjsKKwkJCQlpbnRlcnJ1cHQtcGFyZW50ID0gPCZnaWM+OworCQkJ
CS8qIE9uZSBpbnRlcnJ1cHQgcGVyIHF1ZXVlICovCisJCQkJaW50ZXJydXB0cyA9IDxHSUNfU0hB
UkVEIDI0IElSUV9UWVBFX0xFVkVMX0hJR0g+LAorCQkJCQkgICAgIDxHSUNfU0hBUkVEIDI0IElS
UV9UWVBFX0xFVkVMX0hJR0g+LAorCQkJCQkgICAgIDxHSUNfU0hBUkVEIDI0IElSUV9UWVBFX0xF
VkVMX0hJR0g+LAorCQkJCQkgICAgIDxHSUNfU0hBUkVEIDI0IElSUV9UWVBFX0xFVkVMX0hJR0g+
OworCQkJCWNsb2NrLW5hbWVzID0gInBjbGsiLCAiaGNsayIsICJ0c3VfY2xrIjsKKwkJCQljbG9j
a3MgPSA8JnBjbGs+LCA8JnBjbGs+LCA8JnRzdV9jbGs+OworCQkJCW52bWVtLWNlbGxzID0gPCZl
dGgxX21hYz47CisJCQkJbnZtZW0tY2VsbC1uYW1lcyA9ICJtYWMtYWRkcmVzcyI7CisJCQkJcGh5
cyA9IDwmb2xiIDE+OworCQkJfTsKKwkJfTsKKwogCX07CiB9OwogCgotLSAKMi41MS4xCgoKLS0g
CmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
