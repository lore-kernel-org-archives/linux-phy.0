Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D733AFEEF25
	for <linux-phy@archiver.kernel.org>; Tue,  7 Apr 2026 11:43:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=moT5sYGLP7bXlpYLTRfkVYiCBXi1YQA+wOgn0Qbc0gU=; b=tOmRZ9r3bqi6O9
	DkHZrF1rD9jkf9SOU2nJiiZikpHdtXG7CpfspD1aQlW3G1pRu3XVQxPZFYophsEq4yGCX/DPJtnF0
	k9wry+bFp5sVpdYtQNWdnyG7wV68tugeDHw0Hj89Xw9sjqHmXXkCBB9oKLuDa59+kB6qjQZSYb5A3
	RqPTvnjUCxGApdinV0YUb35gNXBHzbUjGums1zxtQ+0q/KzJgAVzjGPHSwNbwvn0+r83MGsW3Udsz
	HCjZaJ+dOoAvMhUrzBOQcj50OGdzp7snBmO9Kce7p5zIpOdG2nrPR60h0yYH3lVxXddsI8Dv0AuXr
	uY3ctmQ0P7N5nqBb0ssA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wA4px-00000006O92-1bEg;
	Tue, 07 Apr 2026 11:43:17 +0000
Received: from www537.your-server.de ([188.40.3.216])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wA4ps-00000006O4X-0slr;
	Tue, 07 Apr 2026 11:43:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=ew.tq-group.com; s=default2602; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID;
	bh=q3lc7HIf7EMrxpUFQEZNt+F3YfJliSNzOpaipwXNlVo=; b=TBX94DZTZryfkNjOyil/zViwcG
	Cw255Z2j5ZLA53O8ToJNFlUZH0a3/GOf0r240Ey4mqAjN5wTo4ylIQxnbxVOoHTIeLEwRzazRKWZF
	4qGg5WFqW4u1BT1ki2Tg2vbIHj5wNGKa1vWXfAR1AVgKFYTuMkpLE8UDHFekpZCsnz17pGKNBkQHQ
	0E9pAU72KRdypBcx1LYEa/2G6u94Q7exQmjPhAidQt/MLAvgjOoov7xZRQD8M7jMIkQmfWNDZDL2O
	8RdfDMe5UeEA4RFM37ZbnDu4yzfHCjUaxh6AaaHOUOL5ifCnvzTfuhMzvntP237mI3VDBhLSLOyfA
	0evTaSHA==;
Received: from sslproxy08.your-server.de ([78.47.166.52])
	by www537.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <nora.schiffer@ew.tq-group.com>)
	id 1wA4po-000IJS-0T;
	Tue, 07 Apr 2026 13:43:08 +0200
Received: from localhost ([127.0.0.1])
	by sslproxy08.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <nora.schiffer@ew.tq-group.com>)
	id 1wA4pm-000PKA-1k;
	Tue, 07 Apr 2026 13:43:07 +0200
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
Subject: [PATCH v4 1/5] dt-bindings: phy: ti: phy-j721e-wiz: Add ti,j722s-wiz-10g compatible
Date: Tue,  7 Apr 2026 13:42:33 +0200
Message-ID: <1ef8adf850f2fd41b6c4e3c89e4f4e6e0f469a0e.1775559102.git.nora.schiffer@ew.tq-group.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <cover.1775559102.git.nora.schiffer@ew.tq-group.com>
References: <cover.1775559102.git.nora.schiffer@ew.tq-group.com>
MIME-Version: 1.0
X-Virus-Scanned: Clear (ClamAV 1.4.3/27964/Tue Apr  7 08:24:40 2026)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260407_044312_678943_9D514670 
X-CRM114-Status: UNSURE (   7.35  )
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
dGlvbmFsbHkgc3VwcG9ydHMKU0dNSUkuIFRoZSBBTTY0IGNvbXBhdGlibGUgdGksYW02NC13aXot
MTBnIGlzIHVzZWQgYXMgYSBmYWxsYmFjay4KClNpZ25lZC1vZmYtYnk6IE5vcmEgU2NoaWZmZXIg
PG5vcmEuc2NoaWZmZXJAZXcudHEtZ3JvdXAuY29tPgotLS0KIC4uLi9iaW5kaW5ncy9waHkvdGks
cGh5LWo3MjFlLXdpei55YW1sICAgICAgICB8IDE5ICsrKysrKysrKysrKy0tLS0tLS0KIDEgZmls
ZSBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvdGkscGh5LWo3MjFlLXdpei55
YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS90aSxwaHktajcyMWUt
d2l6LnlhbWwKaW5kZXggM2YxNmZmMTQ0ODRkMi4uMDY1MzI1MmMxOGQ4ZSAxMDA2NDQKLS0tIGEv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS90aSxwaHktajcyMWUtd2l6Lnlh
bWwKKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS90aSxwaHktajcy
MWUtd2l6LnlhbWwKQEAgLTEyLDEzICsxMiwxOCBAQCBtYWludGFpbmVyczoKIAogcHJvcGVydGll
czoKICAgY29tcGF0aWJsZToKLSAgICBlbnVtOgotICAgICAgLSB0aSxqNzIxZS13aXotMTZnCi0g
ICAgICAtIHRpLGo3MjFlLXdpei0xMGcKLSAgICAgIC0gdGksajcyMXMyLXdpei0xMGcKLSAgICAg
IC0gdGksYW02NC13aXotMTBnCi0gICAgICAtIHRpLGo3MjAwLXdpei0xMGcKLSAgICAgIC0gdGks
ajc4NHM0LXdpei0xMGcKKyAgICBvbmVPZjoKKyAgICAgIC0gZW51bToKKyAgICAgICAgICAtIHRp
LGo3MjFlLXdpei0xNmcKKyAgICAgICAgICAtIHRpLGo3MjFlLXdpei0xMGcKKyAgICAgICAgICAt
IHRpLGo3MjFzMi13aXotMTBnCisgICAgICAgICAgLSB0aSxhbTY0LXdpei0xMGcKKyAgICAgICAg
ICAtIHRpLGo3MjAwLXdpei0xMGcKKyAgICAgICAgICAtIHRpLGo3ODRzNC13aXotMTBnCisgICAg
ICAtIGl0ZW1zOgorICAgICAgICAgIC0gZW51bToKKyAgICAgICAgICAgICAgLSB0aSxqNzIycy13
aXotMTBnCisgICAgICAgICAgLSBjb25zdDogdGksYW02NC13aXotMTBnCiAKICAgcG93ZXItZG9t
YWluczoKICAgICBtYXhJdGVtczogMQotLSAKVFEtU3lzdGVtcyBHbWJIIHwgTcO8aGxzdHJhw59l
IDIsIEd1dCBEZWxsaW5nIHwgODIyMjkgU2VlZmVsZCwgR2VybWFueQpBbXRzZ2VyaWNodCBNw7xu
Y2hlbiwgSFJCIDEwNTAxOApHZXNjaMOkZnRzZsO8aHJlcjogRGV0bGVmIFNjaG5laWRlciwgUsO8
ZGlnZXIgU3RhaGwsIFN0ZWZhbiBTY2huZWlkZXIKaHR0cHM6Ly93d3cudHEtZ3JvdXAuY29tLwoK
Ci0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
