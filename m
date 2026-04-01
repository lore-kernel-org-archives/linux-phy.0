Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54127D3517C
	for <linux-phy@archiver.kernel.org>; Wed,  1 Apr 2026 12:38:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=trjIkuvG5AARHJP6EQfiKn7LmbUpFHUdXcwqPhWaZNw=; b=w+i0mzMd4qSj9d
	bZYYxFCPCbk31stJds4j3Z3n1ejCfQGa3eY9DZwDGm8TOs1gzW6f21GPA70wJh6VcF5+MMnh5OeKs
	7AmoQzUN1eKTiFJBQXp4xnLX7C3M7WuWDCmfcyCvNGdpGyWsG5j+SwjVkjj48NRP0H7zag3Gmc34+
	v+9nR1V+Bx3Br0EcKmdph+/vmdcgY681/XL8BGnLjCqkO/SVpvAJj0/4K0sOmhsvgb/P2rur20v8d
	0Z0Wsvng3w1IjdbTDJWKq+xVy0uFNyvXi3eFV1juH27cuDHOMEKfx60k8wnZinPts4rp5xBFynq/M
	WSKLaqeFmQx4XhuEjkmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7upk-0000000FCbP-3jPt;
	Wed, 01 Apr 2026 12:38:08 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7ueA-0000000F3o3-22wq;
	Wed, 01 Apr 2026 12:26:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=E2G3cP9X4cNiCp8YAHg4IjVGgRKZxQbDkjOgRFSfK7s=; b=lxU386sE9EDZnbnyqkBMBFC9q3
	LjoXGlPXmzvsS0ItERM6+4R8hyD5F7B+4iZ5inOlfjhDyvMplvtrrWZMD7yurU2GaJvdnYUcuQ8bq
	rqFjSKgHI5iG8IBeVPvkoNCjxmHKIFl1LZG5hlHbv4G9O/BMghYzgQKpLeJaK3LUYqqlZxZQ4w2Hu
	KsajjwzSP20sSBv/4Y5abS27eELl9MHOlVPqlPwAjt+6EZIi4X/OjYss6ekuu3LDGIvQDztNKd+nK
	LUtVl9rcrqEWOKZk8ljbtX0MRUWqnrfHuyDzyDiiWv2waL4a5LOAPtoVd/mfuHURgcuRtoeN/Ando
	Mz1gSqoA==;
Received: from www537.your-server.de ([188.40.3.216])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7ue7-00000000Ktp-1Nau;
	Wed, 01 Apr 2026 12:26:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=ew.tq-group.com; s=default2602; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID;
	bh=E2G3cP9X4cNiCp8YAHg4IjVGgRKZxQbDkjOgRFSfK7s=; b=qUPqjwtj78zGf4p2xh8VKaEQ+Q
	nXh0ts7fQKRqRNCbcMe+P/Qdiy6M/f2n/Gkt+xCOOKyQSjQAVmiVAsngP00UMTqqrNikSusWRdnyJ
	HoAOnGFoKlFfEWH+8ewMciN9PotAn5dqkZuL5zQbxgSz+r7SPxXXi1AfOk0u3DUJuj9zE4HxWSclL
	Wxr41qgXd//s/IAhl9wvXLV+9vWEWF3NytCTUTN7M9548MRofsfaMaCtjzwh0qzQA3bgMJGqo9ExM
	hl/fGl4BPN3TATHfh8JfCQLqCLmTz+Iso5CHa0lnTN2KXpe7xM2cNxBsWPbnoqe37oLgDZG+CGlaY
	5u0no4Uw==;
Received: from sslproxy07.your-server.de ([78.47.199.104])
	by www537.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <nora.schiffer@ew.tq-group.com>)
	id 1w7ue3-000IQk-26;
	Wed, 01 Apr 2026 14:26:03 +0200
Received: from localhost ([127.0.0.1])
	by sslproxy07.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <nora.schiffer@ew.tq-group.com>)
	id 1w7ue3-00089b-0X;
	Wed, 01 Apr 2026 14:26:02 +0200
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
Subject: [PATCH v3 2/5] dt-bindings: phy: ti: phy-gmii-sel: Add ti,j722s-phy-gmii-sel compatible
Date: Wed,  1 Apr 2026 14:25:22 +0200
Message-ID: <5ac1c52827a1a246584dddb62335f9ce4715eceb.1775045279.git.nora.schiffer@ew.tq-group.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <cover.1775045279.git.nora.schiffer@ew.tq-group.com>
References: <cover.1775045279.git.nora.schiffer@ew.tq-group.com>
MIME-Version: 1.0
X-Virus-Scanned: Clear (ClamAV 1.4.3/27958/Wed Apr  1 08:24:34 2026)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260401_132607_505414_70579611 
X-CRM114-Status: UNSURE (   8.20  )
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
IGFkZGl0aW9uYWxseQpzdXBwb3J0cyBTR01JSS4gVGhlIEFNNjQgY29tcGF0aWJsZSB0aSxhbTY1
NC1waHktZ21paS1zZWwgaXMgdXNlZCBhcyBhCmZhbGxiYWNrLgoKU2lnbmVkLW9mZi1ieTogTm9y
YSBTY2hpZmZlciA8bm9yYS5zY2hpZmZlckBldy50cS1ncm91cC5jb20+Ci0tLQogLi4uL2JpbmRp
bmdzL3BoeS90aSxwaHktZ21paS1zZWwueWFtbCAgICAgICAgIHwgMjQgKysrKysrKysrKysrLS0t
LS0tLQogMSBmaWxlIGNoYW5nZWQsIDE1IGluc2VydGlvbnMoKyksIDkgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS90aSxwaHkt
Z21paS1zZWwueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvdGks
cGh5LWdtaWktc2VsLnlhbWwKaW5kZXggYmU0MWI0NTQ3ZWM2ZC4uNmUxMmE3NTEwMGViOCAxMDA2
NDQKLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS90aSxwaHktZ21p
aS1zZWwueWFtbAorKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3Rp
LHBoeS1nbWlpLXNlbC55YW1sCkBAIC00NywxNSArNDcsMjEgQEAgZGVzY3JpcHRpb246IHwKIAog
cHJvcGVydGllczoKICAgY29tcGF0aWJsZToKLSAgICBlbnVtOgotICAgICAgLSB0aSxhbTMzNTIt
cGh5LWdtaWktc2VsCi0gICAgICAtIHRpLGRyYTd4eC1waHktZ21paS1zZWwKLSAgICAgIC0gdGks
YW00M3h4LXBoeS1nbWlpLXNlbAotICAgICAgLSB0aSxkbTgxNC1waHktZ21paS1zZWwKLSAgICAg
IC0gdGksYW02NTQtcGh5LWdtaWktc2VsCi0gICAgICAtIHRpLGo3MjAwLWNwc3c1Zy1waHktZ21p
aS1zZWwKLSAgICAgIC0gdGksajcyMWUtY3BzdzlnLXBoeS1nbWlpLXNlbAotICAgICAgLSB0aSxq
Nzg0czQtY3BzdzlnLXBoeS1nbWlpLXNlbAorICAgIG9uZU9mOgorICAgICAgLSBpdGVtczoKKyAg
ICAgICAgICAtIGVudW06CisgICAgICAgICAgICAgIC0gdGksYW0zMzUyLXBoeS1nbWlpLXNlbAor
ICAgICAgICAgICAgICAtIHRpLGRyYTd4eC1waHktZ21paS1zZWwKKyAgICAgICAgICAgICAgLSB0
aSxhbTQzeHgtcGh5LWdtaWktc2VsCisgICAgICAgICAgICAgIC0gdGksZG04MTQtcGh5LWdtaWkt
c2VsCisgICAgICAgICAgICAgIC0gdGksYW02NTQtcGh5LWdtaWktc2VsCisgICAgICAgICAgICAg
IC0gdGksajcyMDAtY3BzdzVnLXBoeS1nbWlpLXNlbAorICAgICAgICAgICAgICAtIHRpLGo3MjFl
LWNwc3c5Zy1waHktZ21paS1zZWwKKyAgICAgICAgICAgICAgLSB0aSxqNzg0czQtY3BzdzlnLXBo
eS1nbWlpLXNlbAorICAgICAgLSBpdGVtczoKKyAgICAgICAgICAtIGVudW06CisgICAgICAgICAg
ICAgIC0gdGksajcyMnMtcGh5LWdtaWktc2VsCisgICAgICAgICAgLSBjb25zdDogdGksYW02NTQt
cGh5LWdtaWktc2VsCiAKICAgcmVnOgogICAgIG1heEl0ZW1zOiAxCi0tIApUUS1TeXN0ZW1zIEdt
YkggfCBNw7xobHN0cmHDn2UgMiwgR3V0IERlbGxpbmcgfCA4MjIyOSBTZWVmZWxkLCBHZXJtYW55
CkFtdHNnZXJpY2h0IE3DvG5jaGVuLCBIUkIgMTA1MDE4Ckdlc2Now6RmdHNmw7xocmVyOiBEZXRs
ZWYgU2NobmVpZGVyLCBSw7xkaWdlciBTdGFobCwgU3RlZmFuIFNjaG5laWRlcgpodHRwczovL3d3
dy50cS1ncm91cC5jb20vCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
