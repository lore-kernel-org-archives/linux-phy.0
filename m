Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C39AE9A779
	for <linux-phy@archiver.kernel.org>; Tue, 24 Mar 2026 12:30:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dm/WEwiG92a4LUbKqqbcumwrJoq70QVdPDyj3hSnT+c=; b=BzS/asCC1v3FFs
	7h9ix8UgPmCoVgoXLYTLcw8nvR+kQy+3jpg7go20MDcOCF40elzBPFBX+hWR4QTwO4Rg74qIDAv3R
	CDC+pZBGoqZ1wORQBmgnEBz/WBeRuWkwt/ZWXh57/6pUpkmh4VF2eCGGxx02U+WLdwSOvgjp+jr5l
	7THVOYPhn0UTLJv5YqcYzgHhDVOsRpRs2IV1dTBjGESZI4Ncfm/7BCStUxwXKFLWYDgpFdHpx0joj
	MAOvYH3V1ZEo/kBVYTcyN35+xFfIQAiSHtubleVUj5hTndi17KjwNoYNfHESa1FRiL67j3WpModu1
	HmSlaYe/wxrQk6dpvjxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w50uB-00000001Neg-18CO;
	Tue, 24 Mar 2026 12:30:43 +0000
Received: from www537.your-server.de ([188.40.3.216])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w50ty-00000001NWm-3kBC;
	Tue, 24 Mar 2026 12:30:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=ew.tq-group.com; s=default2602; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID;
	bh=HXjqylECdGDFHUiyugySRrfNFcwy5NMDZ6un9XJQF4g=; b=V9/vtmSyHhRM1BItbFutZ0uo/g
	movhuFkhMQRVN8yfy+ARUH5Zn8PpxxiU96vfqN/kf97X7iqB9ojOU9KiTN1ND0Vxy+1WMruilISqG
	gIzf2Iyybs4XPLABbmdRfx9al+sSxJdDrlTl6uZJfnTW1vPIt1pIyTQyzv9PTRiaDB6YD9eOBjEWV
	E66oCKPhMsOL2L2sd6mfTDWS1ryVhnbxDpyloRGWMVNeg41Gp+Mb/dEm953MxqdtHYBrrjbd8Hl5c
	g1SlaJel8yERvu1FVZl+MKwdTjzJ2qrKV6oFu09QYUs908htDG18zYiEFyMt6sIjM5LUEKC365b4d
	TwyRIV9g==;
Received: from sslproxy05.your-server.de ([78.46.172.2])
	by www537.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <nora.schiffer@ew.tq-group.com>)
	id 1w50tq-0005qE-0a;
	Tue, 24 Mar 2026 13:30:22 +0100
Received: from localhost ([127.0.0.1])
	by sslproxy05.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <nora.schiffer@ew.tq-group.com>)
	id 1w50tq-000Pna-01;
	Tue, 24 Mar 2026 13:30:21 +0100
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
Subject: [PATCH v2 1/7] dt-bindings: phy: ti: phy-j721e-wiz: Add ti,j722s-wiz-10g compatible
Date: Tue, 24 Mar 2026 13:29:37 +0100
Message-ID: <55a56bdcbed0e49680e3074d0f1c06f244287f9f.1774354734.git.nora.schiffer@ew.tq-group.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <cover.1774354734.git.nora.schiffer@ew.tq-group.com>
References: <cover.1774354734.git.nora.schiffer@ew.tq-group.com>
MIME-Version: 1.0
X-Virus-Scanned: Clear (ClamAV 1.4.3/27950/Tue Mar 24 07:24:19 2026)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260324_053031_022245_57A31204 
X-CRM114-Status: UNSURE (   8.15  )
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
cGh5LWo3MjFlLXdpei55YW1sICAgICAgICB8IDIwICsrKysrKysrKysrKy0tLS0tLS0KIDEgZmls
ZSBjaGFuZ2VkLCAxMyBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvdGkscGh5LWo3MjFlLXdpei55
YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS90aSxwaHktajcyMWUt
d2l6LnlhbWwKaW5kZXggM2YxNmZmMTQ0ODRkMi4uMjgzZTNlZWRjMGYzMSAxMDA2NDQKLS0tIGEv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS90aSxwaHktajcyMWUtd2l6Lnlh
bWwKKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS90aSxwaHktajcy
MWUtd2l6LnlhbWwKQEAgLTEyLDEzICsxMiwxOSBAQCBtYWludGFpbmVyczoKIAogcHJvcGVydGll
czoKICAgY29tcGF0aWJsZToKLSAgICBlbnVtOgotICAgICAgLSB0aSxqNzIxZS13aXotMTZnCi0g
ICAgICAtIHRpLGo3MjFlLXdpei0xMGcKLSAgICAgIC0gdGksajcyMXMyLXdpei0xMGcKLSAgICAg
IC0gdGksYW02NC13aXotMTBnCi0gICAgICAtIHRpLGo3MjAwLXdpei0xMGcKLSAgICAgIC0gdGks
ajc4NHM0LXdpei0xMGcKKyAgICBvbmVPZjoKKyAgICAgIC0gaXRlbXM6CisgICAgICAgICAgLSBl
bnVtOgorICAgICAgICAgICAgICAtIHRpLGo3MjFlLXdpei0xNmcKKyAgICAgICAgICAgICAgLSB0
aSxqNzIxZS13aXotMTBnCisgICAgICAgICAgICAgIC0gdGksajcyMXMyLXdpei0xMGcKKyAgICAg
ICAgICAgICAgLSB0aSxhbTY0LXdpei0xMGcKKyAgICAgICAgICAgICAgLSB0aSxqNzIwMC13aXot
MTBnCisgICAgICAgICAgICAgIC0gdGksajc4NHM0LXdpei0xMGcKKyAgICAgIC0gaXRlbXM6Cisg
ICAgICAgICAgLSBlbnVtOgorICAgICAgICAgICAgICAtIHRpLGo3MjJzLXdpei0xMGcKKyAgICAg
ICAgICAtIGNvbnN0OiB0aSxhbTY0LXdpei0xMGcKIAogICBwb3dlci1kb21haW5zOgogICAgIG1h
eEl0ZW1zOiAxCi0tIApUUS1TeXN0ZW1zIEdtYkggfCBNw7xobHN0cmHDn2UgMiwgR3V0IERlbGxp
bmcgfCA4MjIyOSBTZWVmZWxkLCBHZXJtYW55CkFtdHNnZXJpY2h0IE3DvG5jaGVuLCBIUkIgMTA1
MDE4Ckdlc2Now6RmdHNmw7xocmVyOiBEZXRsZWYgU2NobmVpZGVyLCBSw7xkaWdlciBTdGFobCwg
U3RlZmFuIFNjaG5laWRlcgpodHRwczovL3d3dy50cS1ncm91cC5jb20vCgoKLS0gCmxpbnV4LXBo
eSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
