Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E8AFFEEF2C
	for <linux-phy@archiver.kernel.org>; Tue,  7 Apr 2026 11:43:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K6b5csbVOV53MXb5G46Y2tlGcaplDk3U2iky/RHX3/w=; b=SrFP3LMScad0o+
	i6F/97ONnOXW6gZvgNDibTK3PNWFH/n1f6oK5Vc/0AuTzFLvgfPgapORHYACaimY6heM1uWGQppcv
	PPEO+g3PE9DoEzf2GqAsPrCMtxgEfkjup/idUxRVix12Rl8to+/VUhPFSRU1kzUZ5i5IpnZ0ahkip
	mh+NrgO6OzBhinYDFkeTPXVI+zK9uvd0xz2suVtldzdnMTATL44BXDwWyc7bJ/ki2RHK4PmmhHV3l
	pP/jicRYiIvog6aSnOeQLu44NJxEfBmIfs8BC2kcyuOY0bvbw78KqhGn0SD9LdjsT63Zs2flKo5kp
	HwDiDBITUA1SKJ0S9s/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wA4px-00000006O9i-3ugb;
	Tue, 07 Apr 2026 11:43:17 +0000
Received: from www537.your-server.de ([188.40.3.216])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wA4pt-00000006O4z-3JAi;
	Tue, 07 Apr 2026 11:43:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=ew.tq-group.com; s=default2602; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID;
	bh=fdD+gNdnYJuuk/C6povOAz6skeNjsbW/eErWFsyNXSU=; b=ajrRcvBo+p1k6zd4SeXtj8Qp8o
	080UcdpqP5fCFOgaJjm/ZJdKW6YaRtLUFAdhvXva50WTF60Cd0rIqB0F5/C1G6kiQnPUDkJZaRXbL
	yLxuwRBDS24G+DNlY36dIj/A67jq4xZ0pdYbzgFgKQgNIX4zCrlagGo4rEGhraUUjp1eb++dib6cX
	BPSn23DYQgK9RK6rivi5oMwo/egN3hp104THxhWRWJ/DEDdX1n1DRCNS7AFT+iF8TNlSn89KDX+qq
	p45k+hjSX5+tvlTFxBrmqnLC+UrqUTQHtJNNW+rulFoA0uu7OxyxrrxxmvsAyNQN3cAHepN7GZFT4
	Hr+FcXEw==;
Received: from sslproxy08.your-server.de ([78.47.166.52])
	by www537.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <nora.schiffer@ew.tq-group.com>)
	id 1wA4pq-000IJz-2W;
	Tue, 07 Apr 2026 13:43:10 +0200
Received: from localhost ([127.0.0.1])
	by sslproxy08.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <nora.schiffer@ew.tq-group.com>)
	id 1wA4pp-000PKA-0f;
	Tue, 07 Apr 2026 13:43:10 +0200
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
Subject: [PATCH v4 4/5] phy: ti: gmii-sel: add support for J722S SoC family
Date: Tue,  7 Apr 2026 13:42:36 +0200
Message-ID: <86488589fc055f61ee5341f9e268184f04febe71.1775559102.git.nora.schiffer@ew.tq-group.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <cover.1775559102.git.nora.schiffer@ew.tq-group.com>
References: <cover.1775559102.git.nora.schiffer@ew.tq-group.com>
MIME-Version: 1.0
X-Virus-Scanned: Clear (ClamAV 1.4.3/27964/Tue Apr  7 08:24:40 2026)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260407_044313_847748_FFE40772 
X-CRM114-Status: GOOD (  10.05  )
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
