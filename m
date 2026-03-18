Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 527DB103E189
	for <linux-phy@archiver.kernel.org>; Wed, 18 Mar 2026 14:07:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=81rCmOg14E/ZS4D9IWKGe3RLcvn4RHcw6hD4NRPuVD8=; b=X1ToDTSr6qLwAq
	Zj90V9Vq370gtdkzMCyB5O4zThyO0d2z5GyYETHU3NEo7kLGSoDEuMYMgCWMgMFLZYsKAwiU+KiR2
	pzXFeFwFwotiE5vQadP/v51/SZfZ+1W1zYaE1laimh1+AhjYxZY8IgtagpuudtO7h0Ax48cPgd3iG
	o+W+u7rw+xJ5qu6eZbSlsOOrFdyFsJLZ1V8/U/mOjZgo4tXg9N4U2OE+dYEZH7K9fl0sgTvy0GVul
	7yvsNr0M1iuhvnfZiybSNngPLFKKUhKN8rwIDZq0RhWXvDVbVz4C/U0jCiU3pPnAE+MZDCYl3cnzF
	ugnsSGDteI5RyegpbqBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2rYF-00000008YEe-0AV6;
	Wed, 18 Mar 2026 14:07:11 +0000
Received: from www537.your-server.de ([188.40.3.216])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2rY1-00000008Y7T-1fQs;
	Wed, 18 Mar 2026 14:07:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=ew.tq-group.com; s=default2602; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID;
	bh=3YCXKNNM4ThVB3Z8qL4Lkn6GGLYvaGJjMPVWPPsNEG0=; b=MSZe5WF6EFpCxlEteYWktv6jAh
	aOiaCb7OgpyWjM/gB500qbnf9ksHnJkKFmKjPxp6TN1iQIzXr+P+J3aEAGsO61NFeRWLp031qepQs
	vECOy/Va4MBaUNU7OpTMj4R6jRAiFg9f4LGQSvHDmj4VEIw1GasLQegn/CxwhYOaOPhDeZzSkhoAw
	ZczliEOrxzENombrElaVqbcTtZgIAlZTh6R+l8S0lwpO8HGJCDmIBiq20bIqg9fUgU5HhYnNqz8zW
	1lqE5s6ZKpUJxXLcXdN+XDDDhhcWrTmtm3deXGrO2fc+vYNdz5WQBQCG4x0ZcKg5aQfiNyue75vU4
	F9YkEx+Q==;
Received: from sslproxy06.your-server.de ([78.46.172.3])
	by www537.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <nora.schiffer@ew.tq-group.com>)
	id 1w2rXx-000Bpi-06;
	Wed, 18 Mar 2026 15:06:53 +0100
Received: from localhost ([127.0.0.1])
	by sslproxy06.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <nora.schiffer@ew.tq-group.com>)
	id 1w2rXU-000B1s-0c;
	Wed, 18 Mar 2026 15:06:24 +0100
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
Subject: [PATCH 2/7] dt-bindings: phy: ti: phy-gmii-sel: Add ti,j722s-phy-gmii-sel compatible
Date: Wed, 18 Mar 2026 15:05:24 +0100
Message-ID: <1fe7e84aca488c58eee55ce29569196ad5f7121b.1773751309.git.nora.schiffer@ew.tq-group.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <cover.1773751309.git.nora.schiffer@ew.tq-group.com>
References: <cover.1773751309.git.nora.schiffer@ew.tq-group.com>
MIME-Version: 1.0
X-Virus-Scanned: Clear (ClamAV 1.4.3/27944/Wed Mar 18 07:24:13 2026)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260318_070657_479189_B2BB182A 
X-CRM114-Status: UNSURE (   8.09  )
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

VGhlIEo3MjJTIGdtaWktc2VsIGlzIG1vc3RseSBpZGVudGljYWwgdG8gdGhlIEFNNjQncywgYnV0
IGFkZGl0aW9uYWxseQpzdXBwb3J0cyBTR01JSS4KClNpZ25lZC1vZmYtYnk6IE5vcmEgU2NoaWZm
ZXIgPG5vcmEuc2NoaWZmZXJAZXcudHEtZ3JvdXAuY29tPgotLS0KIERvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9waHkvdGkscGh5LWdtaWktc2VsLnlhbWwgfCAxICsKIDEgZmlsZSBj
aGFuZ2VkLCAxIGluc2VydGlvbigrKQoKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9waHkvdGkscGh5LWdtaWktc2VsLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvcGh5L3RpLHBoeS1nbWlpLXNlbC55YW1sCmluZGV4IGJlNDFiNDU0
N2VjNmQuLmZhM2YzYWQ5ZmNjM2UgMTAwNjQ0Ci0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9waHkvdGkscGh5LWdtaWktc2VsLnlhbWwKKysrIGIvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS90aSxwaHktZ21paS1zZWwueWFtbApAQCAtNTUsNiArNTUs
NyBAQCBwcm9wZXJ0aWVzOgogICAgICAgLSB0aSxhbTY1NC1waHktZ21paS1zZWwKICAgICAgIC0g
dGksajcyMDAtY3BzdzVnLXBoeS1nbWlpLXNlbAogICAgICAgLSB0aSxqNzIxZS1jcHN3OWctcGh5
LWdtaWktc2VsCisgICAgICAtIHRpLGo3MjJzLXBoeS1nbWlpLXNlbAogICAgICAgLSB0aSxqNzg0
czQtY3BzdzlnLXBoeS1nbWlpLXNlbAogCiAgIHJlZzoKLS0gClRRLVN5c3RlbXMgR21iSCB8IE3D
vGhsc3RyYcOfZSAyLCBHdXQgRGVsbGluZyB8IDgyMjI5IFNlZWZlbGQsIEdlcm1hbnkKQW10c2dl
cmljaHQgTcO8bmNoZW4sIEhSQiAxMDUwMTgKR2VzY2jDpGZ0c2bDvGhyZXI6IERldGxlZiBTY2hu
ZWlkZXIsIFLDvGRpZ2VyIFN0YWhsLCBTdGVmYW4gU2NobmVpZGVyCmh0dHBzOi8vd3d3LnRxLWdy
b3VwLmNvbS8KCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1waHkK
