Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F419DD35177
	for <linux-phy@archiver.kernel.org>; Wed,  1 Apr 2026 12:38:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K6b5csbVOV53MXb5G46Y2tlGcaplDk3U2iky/RHX3/w=; b=OCLSsCSh6flyb9
	TO5tHO8bVYBT6h9sF9nyNwbGypCv3PAQkSVpzOXvZtZUKEKCGd0mebtCz8ktsLpN1gmMh5lY+76yz
	10nMexugtUdrgvq2PAxlA3JCtMa+pyTlgSNlOMcUOkanfP6TceibJf/jNv5Dwj5wWFwmRE1rAyTnB
	wa3eP5i9oTAssnjtDcM3XyIBHQ1WAUS6gj5EibmR29p8p6U6aVDC+/9ky3f/PwDxAcYb07Wl4JwBT
	WVnB3YnMSAteA5BEzDofPuXafK8vkZKe9SIls0aBcCaRcCncvWLvvA9MOcgbm1iXEFIZ8VZNaY3y4
	wO/P0/1ngCsfET1WD9Gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7upm-0000000FCeC-39I5;
	Wed, 01 Apr 2026 12:38:10 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7ueC-0000000F3pd-13cV;
	Wed, 01 Apr 2026 12:26:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=fdD+gNdnYJuuk/C6povOAz6skeNjsbW/eErWFsyNXSU=; b=KjOoKEVIhI1C4t63rT3fPYQD8o
	1W0lKz86BvQBqMHooVhYM0Puo5C6V/qN36y8ECgx5SGseuPyQolSB6O2SumcUi2A8j6PbPDU3GU6E
	Fe+kas1dZhlzxxcv9l/bhla4tY+O5kGauhu5Ncskt/IOd2Eixe7M4qjZZ7wXIg6yJHoC5vPLDduvx
	iWokpKMX8G276GOA77VYE2l7MOVFxXoXGiE0PG8VNWOgVsEyaDzVZV5FRzW4NjqpPX+s7aVaNZovr
	p6/kz+FWZ5cqIPMEt8MwhcbfUCbr4WoWK4GntGoqtXKJIdUxnkS4eEInUmAqqph0QpjVo6pW+cugt
	6Mq/3uqw==;
Received: from www537.your-server.de ([188.40.3.216])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7ue7-00000000Ktr-1NgN;
	Wed, 01 Apr 2026 12:26:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=ew.tq-group.com; s=default2602; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID;
	bh=fdD+gNdnYJuuk/C6povOAz6skeNjsbW/eErWFsyNXSU=; b=daEpk33GuNEpIhAxxg/M583qNc
	xZWuid1EuT5B0Id7XqbOvBCBMy+BWiuLdr9rgf98OwOcp/qmQRYbH3x5pqgab5r2HZjKtCqRxrT0a
	XUnQxyIr7RMT1t5qMgZvPOgZQG1rK51G0UVDTPE4Hm1bUzUZsYGyRilME6gBG4TD9X+Mw17eGOX5I
	N+2MvqoVxJq5rtdajdn1GpjRroPlHpdUmkJ27e9TM4woV4ox1WwDw3FPfGfwuNMr4/0YfOtnt39X5
	31cNM3TCHqhk8DBieX0U+/S46J9cwS+RKyTSQr0/qt6aBDPFp5qd7ZO0VQ7s2cscT/awBU7UWQBpE
	c7NZL8GA==;
Received: from sslproxy07.your-server.de ([78.47.199.104])
	by www537.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <nora.schiffer@ew.tq-group.com>)
	id 1w7ue4-000IR7-2k;
	Wed, 01 Apr 2026 14:26:04 +0200
Received: from localhost ([127.0.0.1])
	by sslproxy07.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <nora.schiffer@ew.tq-group.com>)
	id 1w7ue4-00089b-1B;
	Wed, 01 Apr 2026 14:26:04 +0200
From: Nora Schiffer <nora.schiffer@ew.tq-group.com>
To: Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Siddharth Vadapalli <s-vadapalli@ti.com>,
	Roger Quadros <rogerq@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux@ew.tq-group.com,
	Nora Schiffer <nora.schiffer@ew.tq-group.com>
Subject: [PATCH v3 4/5] phy: ti: gmii-sel: add support for J722S SoC family
Date: Wed,  1 Apr 2026 14:25:24 +0200
Message-ID: <25a07fea53b0f7de3cef41866e208036ef1de0d9.1775045279.git.nora.schiffer@ew.tq-group.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <cover.1775045279.git.nora.schiffer@ew.tq-group.com>
References: <cover.1775045279.git.nora.schiffer@ew.tq-group.com>
MIME-Version: 1.0
X-Virus-Scanned: Clear (ClamAV 1.4.3/27958/Wed Apr  1 08:24:34 2026)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260401_132607_502766_4C9C701C 
X-CRM114-Status: GOOD (  10.66  )
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

VGhlIEo3MjJTIGdtaWktc2VsIGlzIG1vc3RseSBpZGVudGljYWwgdG8gdGhlIEFNNjQncywgYnV0
IGFkZGl0aW9uYWxseQpzdXBwb3J0cyBTR01JSS4KClNpZ25lZC1vZmYtYnk6IE5vcmEgU2NoaWZm
ZXIgPG5vcmEuc2NoaWZmZXJAZXcudHEtZ3JvdXAuY29tPgotLS0KIGRyaXZlcnMvcGh5L3RpL3Bo
eS1nbWlpLXNlbC5jIHwgMTMgKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDEzIGluc2Vy
dGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS90aS9waHktZ21paS1zZWwuYyBiL2Ry
aXZlcnMvcGh5L3RpL3BoeS1nbWlpLXNlbC5jCmluZGV4IDYyMTNjMmI2MDA1YTUuLmMyODY1YTZi
MWQ3ZmIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcGh5L3RpL3BoeS1nbWlpLXNlbC5jCisrKyBiL2Ry
aXZlcnMvcGh5L3RpL3BoeS1nbWlpLXNlbC5jCkBAIC0yNTEsNiArMjUxLDE1IEBAIHN0cnVjdCBw
aHlfZ21paV9zZWxfc29jX2RhdGEgcGh5X2dtaWlfc2VsX3NvY19hbTY1NCA9IHsKIAkucmVnZmll
bGRzID0gcGh5X2dtaWlfc2VsX2ZpZWxkc19hbTY1NCwKIH07CiAKK3N0YXRpYyBjb25zdAorc3Ry
dWN0IHBoeV9nbWlpX3NlbF9zb2NfZGF0YSBwaHlfZ21paV9zZWxfc29jX2o3MjJzID0geworCS51
c2Vfb2ZfZGF0YSA9IHRydWUsCisJLmZlYXR1cmVzID0gQklUKFBIWV9HTUlJX1NFTF9SR01JSV9J
RF9NT0RFKSB8CisJCSAgICBCSVQoUEhZX0dNSUlfU0VMX0ZJWEVEX1RYX0RFTEFZKSwKKwkucmVn
ZmllbGRzID0gcGh5X2dtaWlfc2VsX2ZpZWxkc19hbTY1NCwKKwkuZXh0cmFfbW9kZXMgPSBCSVQo
UEhZX0lOVEVSRkFDRV9NT0RFX1NHTUlJKSwKK307CisKIHN0YXRpYyBjb25zdAogc3RydWN0IHBo
eV9nbWlpX3NlbF9zb2NfZGF0YSBwaHlfZ21paV9zZWxfY3BzdzVnX3NvY19qNzIwMCA9IHsKIAku
dXNlX29mX2RhdGEgPSB0cnVlLApAQCAtMzA3LDYgKzMxNiwxMCBAQCBzdGF0aWMgY29uc3Qgc3Ry
dWN0IG9mX2RldmljZV9pZCBwaHlfZ21paV9zZWxfaWRfdGFibGVbXSA9IHsKIAkJLmNvbXBhdGli
bGUJPSAidGksYW02NTQtcGh5LWdtaWktc2VsIiwKIAkJLmRhdGEJCT0gJnBoeV9nbWlpX3NlbF9z
b2NfYW02NTQsCiAJfSwKKwl7CisJCS5jb21wYXRpYmxlCT0gInRpLGo3MjJzLXBoeS1nbWlpLXNl
bCIsCisJCS5kYXRhCQk9ICZwaHlfZ21paV9zZWxfc29jX2o3MjJzLAorCX0sCiAJewogCQkuY29t
cGF0aWJsZQk9ICJ0aSxqNzIwMC1jcHN3NWctcGh5LWdtaWktc2VsIiwKIAkJLmRhdGEJCT0gJnBo
eV9nbWlpX3NlbF9jcHN3NWdfc29jX2o3MjAwLAotLSAKVFEtU3lzdGVtcyBHbWJIIHwgTcO8aGxz
dHJhw59lIDIsIEd1dCBEZWxsaW5nIHwgODIyMjkgU2VlZmVsZCwgR2VybWFueQpBbXRzZ2VyaWNo
dCBNw7xuY2hlbiwgSFJCIDEwNTAxOApHZXNjaMOkZnRzZsO8aHJlcjogRGV0bGVmIFNjaG5laWRl
ciwgUsO8ZGlnZXIgU3RhaGwsIFN0ZWZhbiBTY2huZWlkZXIKaHR0cHM6Ly93d3cudHEtZ3JvdXAu
Y29tLwoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXBoeQo=
