Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 988AD103E17A
	for <linux-phy@archiver.kernel.org>; Wed, 18 Mar 2026 14:07:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=at2VGhYjlvPO0BFdsyO2N8C7kc+0/LxhTMJxgMivLHo=; b=xOnA02KLfibDs7
	ZgJyXdUHab30HHNLxX1H+5sYZcBjtznZgkn+i10dojWPLh2N/hr2yj8et1AfZd4Y1/Z4BOXe5ArWC
	fdpTzKB48SDwmKBwBjctfzqQNywyPXbGhtAn0/2fKAfbMwbaExCwsAaCbC4EbuOyc5qXC52z/I/aC
	FvpA4Dloc6RM0b9hhOieM8xSDBeBt5zZvNK6Dmggdo5ZA5VTYyfGV6z9m3toHsR2rYgPUTx1glITz
	5c5sWlgpnW2nbx2lZ53MWAQeDQ+hG85YeXzWwONPJ5PZbsPwM7kl1dndCa5ra2HyEWm5pCrUHV2UF
	FOhha/4Jw0Df318oTbbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2rY5-00000008YAs-1278;
	Wed, 18 Mar 2026 14:07:01 +0000
Received: from www537.your-server.de ([188.40.3.216])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2rY1-00000008Y7O-1J5c;
	Wed, 18 Mar 2026 14:06:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=ew.tq-group.com; s=default2602; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID;
	bh=tZfBa15R8mVfW2pS+B1G1OqSBydrfEzOeof2IKR1SZY=; b=MLomabLxtVH8K0odRdeQlzb53e
	Sgw0ZMCOatqGd4plMrayQ18K8RtAapzWJIQbnUQSguHkczSEHXoIPAbY/5sPowxpd2ooXpWAJffcA
	62z7nm/K5cYYqnQzlS0Xou+yx02ipd23N8bTAXVkeIAx3FGibgDoRIQU4ovLIGKkwg8Oy0zqe2oQU
	0q4aGTAsOuxNMxNttPbq6ve2+bdxdZI+zt55hNGCGLXc4hjTymmwdgHpLIVvXCEyD9BDYHTpBVOGJ
	myStcZfZSF2He4o3ufESPuCw6YPPqf6esuyj6yssZPKGQPwFb9fsmIdU9rj8dTO5lUY0R0iRftSAw
	8IjsuZJw==;
Received: from sslproxy06.your-server.de ([78.46.172.3])
	by www537.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <nora.schiffer@ew.tq-group.com>)
	id 1w2rXw-000Bpc-1U;
	Wed, 18 Mar 2026 15:06:52 +0100
Received: from localhost ([127.0.0.1])
	by sslproxy06.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <nora.schiffer@ew.tq-group.com>)
	id 1w2rXT-000B1s-1z;
	Wed, 18 Mar 2026 15:06:23 +0100
From: Nora Schiffer <nora.schiffer@ew.tq-group.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>
Cc: Siddharth Vadapalli <s-vadapalli@ti.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux@ew.tq-group.com,
	Nora Schiffer <nora.schiffer@ew.tq-group.com>
Subject: [PATCH 1/7] dt-bindings: phy: ti: phy-j721e-wiz: Add ti,j722s-wiz-10g compatible
Date: Wed, 18 Mar 2026 15:05:23 +0100
Message-ID: <54b55c7aa46530283224b5af631cf3ae20966e59.1773751309.git.nora.schiffer@ew.tq-group.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <cover.1773751309.git.nora.schiffer@ew.tq-group.com>
References: <cover.1773751309.git.nora.schiffer@ew.tq-group.com>
MIME-Version: 1.0
X-Virus-Scanned: Clear (ClamAV 1.4.3/27944/Wed Mar 18 07:24:13 2026)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260318_070657_487123_98E4CF1F 
X-CRM114-Status: UNSURE (   7.97  )
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

VGhlIEo3MjJTIFdJWiBpcyBtb3N0bHkgaWRlbnRpY2FsIHRvIHRoZSBBTTY0J3MsIGJ1dCBhZGRp
dGlvbmFsbHkgc3VwcG9ydHMKU0dNSUkuCgpTaWduZWQtb2ZmLWJ5OiBOb3JhIFNjaGlmZmVyIDxu
b3JhLnNjaGlmZmVyQGV3LnRxLWdyb3VwLmNvbT4KLS0tCiBEb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvcGh5L3RpLHBoeS1qNzIxZS13aXoueWFtbCB8IDEgKwogMSBmaWxlIGNoYW5n
ZWQsIDEgaW5zZXJ0aW9uKCspCgpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL3BoeS90aSxwaHktajcyMWUtd2l6LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvcGh5L3RpLHBoeS1qNzIxZS13aXoueWFtbAppbmRleCAzZjE2ZmYxNDQ4
NGQyLi5lNDc2ZmYxOTkxYjEzIDEwMDY0NAotLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvcGh5L3RpLHBoeS1qNzIxZS13aXoueWFtbAorKysgYi9Eb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvcGh5L3RpLHBoeS1qNzIxZS13aXoueWFtbApAQCAtMTcsNiArMTcs
NyBAQCBwcm9wZXJ0aWVzOgogICAgICAgLSB0aSxqNzIxZS13aXotMTBnCiAgICAgICAtIHRpLGo3
MjFzMi13aXotMTBnCiAgICAgICAtIHRpLGFtNjQtd2l6LTEwZworICAgICAgLSB0aSxqNzIycy13
aXotMTBnCiAgICAgICAtIHRpLGo3MjAwLXdpei0xMGcKICAgICAgIC0gdGksajc4NHM0LXdpei0x
MGcKIAotLSAKVFEtU3lzdGVtcyBHbWJIIHwgTcO8aGxzdHJhw59lIDIsIEd1dCBEZWxsaW5nIHwg
ODIyMjkgU2VlZmVsZCwgR2VybWFueQpBbXRzZ2VyaWNodCBNw7xuY2hlbiwgSFJCIDEwNTAxOApH
ZXNjaMOkZnRzZsO8aHJlcjogRGV0bGVmIFNjaG5laWRlciwgUsO8ZGlnZXIgU3RhaGwsIFN0ZWZh
biBTY2huZWlkZXIKaHR0cHM6Ly93d3cudHEtZ3JvdXAuY29tLwoKCi0tIApsaW51eC1waHkgbWFp
bGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
