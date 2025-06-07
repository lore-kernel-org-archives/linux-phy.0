Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B593C61CE8
	for <linux-phy@archiver.kernel.org>; Sat,  7 Jun 2025 21:25:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zRcWc+9FJl6klUOJZHIWn0iRRMqIp8gwEkEI4mYRuCM=; b=iKZFUUmRcMOOP/
	D+Ch5wYbjDgDOwjLNO3373mDhvG70AZIVO3VhWXdOyYobA+Q98eKJNjXGtzeVphdQRN4PRXubk1z7
	NNVnnrRaQQ18UumVze4dqHpBVqSzu4ogu01DhplzMfLOgb4dTiAe8eC6BMbHpHGcZFoekSRqF7Als
	zDFiBv1Llc10/rTGmityKwv27ck6fY/tQh9Gr3S+FH79CksB4QkncOAbzjz6GHjGWtlbij3XS6cYe
	xTGPrR+gDcDjtj9p9km+SRh4dYqc6LyBdqMOZXhYDOH/NyzmUYnWKie2KjnQe79kivRMqivd8H9yc
	FIjdvrlgmEx9Sa0n/AiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uO12N-0000000275z-0BUU;
	Sat, 07 Jun 2025 21:25:11 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uO12K-0000000275X-41xm
	for linux-phy@lists.infradead.org;
	Sat, 07 Jun 2025 21:25:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 89DBA5C56B5;
	Sat,  7 Jun 2025 21:22:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BEF12C4CEF2;
	Sat,  7 Jun 2025 21:25:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749331507;
	bh=r8l2B+sq5zJq9kjyJ/SwpIdD6MXgJ5moKqvpI2Iv3ys=;
	h=From:To:Cc:Subject:Date:From;
	b=OimRilvvQlHBauX0GxAHKRZFr+/AM3M8GlVRXmuLiqnMlvAXrt2WMN5FvJtNkUo5y
	 48E2Oa6xgfiLIR2BxCaWeM7J4a4HE4rUuzU8ngn9CTSZzumI8vIG3xCEq+qq+pmaH5
	 DJ66W/ygxNAxcCi4V6IbcpCgGY5XbTHFit685UjREFq4Fx63a1sVP4oMN/TkzqXSP8
	 lDdzBAlP7Gi4BvCUAUgP3fwuk69EaNnjvwXOttk0DuD35pi179K1oYTBFFiRtLDfF4
	 A3qVvGebkHsTeiy3F9Vftn7GpLZO/m4/nmKh0x+nyBEKKfDb3Xah1aucuWJIj1wWtj
	 ppJTMipWXNbWg==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Hauke Mehrtens <hauke@hauke-m.de>,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: phy: Convert brcm,ns2-drd-phy to DT schema
Date: Sat,  7 Jun 2025 16:24:48 -0500
Message-ID: <20250607212456.740697-1-robh@kernel.org>
X-Mailer: git-send-email 2.47.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250607_142509_090372_AB77674B 
X-CRM114-Status: GOOD (  11.08  )
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

Q29udmVydCB0aGUgQnJvYWRjb20gTlMyIFVTQjIgUEhZIGJpbmRpbmcgdG8gRFQgc2NoZW1hIGZv
cm1hdC4gSXQncyBhCnN0cmFpZ2h0IGZvcndhcmQgY29udmVyc2lvbi4KClNpZ25lZC1vZmYtYnk6
IFJvYiBIZXJyaW5nIChBcm0pIDxyb2JoQGtlcm5lbC5vcmc+Ci0tLQogLi4uL2JpbmRpbmdzL3Bo
eS9icmNtLG5zMi1kcmQtcGh5LnR4dCAgICAgICAgIHwgMzAgLS0tLS0tLS0tCiAuLi4vYmluZGlu
Z3MvcGh5L2JyY20sbnMyLWRyZC1waHkueWFtbCAgICAgICAgfCA2MiArKysrKysrKysrKysrKysr
KysrCiAyIGZpbGVzIGNoYW5nZWQsIDYyIGluc2VydGlvbnMoKyksIDMwIGRlbGV0aW9ucygtKQog
ZGVsZXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkv
YnJjbSxuczItZHJkLXBoeS50eHQKIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvcGh5L2JyY20sbnMyLWRyZC1waHkueWFtbAoKZGlmZiAtLWdpdCBh
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvYnJjbSxuczItZHJkLXBoeS50
eHQgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L2JyY20sbnMyLWRyZC1w
aHkudHh0CmRlbGV0ZWQgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwNGYwNjNhYTc4ODMuLjAwMDAw
MDAwMDAwMAotLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L2JyY20s
bnMyLWRyZC1waHkudHh0CisrKyAvZGV2L251bGwKQEAgLTEsMzAgKzAsMCBAQAotQlJPQURDT00g
Tk9SVEhTVEFSMiBVU0IyIChEVUFMIFJPTEUgREVWSUNFKSBQSFkKLQotUmVxdWlyZWQgcHJvcGVy
dGllczoKLSAtIGNvbXBhdGlibGU6IGJyY20sbnMyLWRyZC1waHkKLSAtIHJlZzogb2Zmc2V0IGFu
ZCBsZW5ndGggb2YgdGhlIE5TMiBQSFkgcmVsYXRlZCByZWdpc3RlcnMuCi0gLSByZWctbmFtZXMK
LSAgIFRoZSBiZWxvdyByZWdpc3RlcnMgbXVzdCBiZSBwcm92aWRlZC4KLSAgIGljZmcgLSBmb3Ig
RFJEIElDRkcgY29uZmlndXJhdGlvbnMKLSAgIHJzdC1jdHJsIC0gZm9yIERSRCBJRE0gcmVzZXQK
LSAgIGNybXUtY3RybCAtIGZvciBDUk1VIGNvcmUgdmRkLCBQSFkgYW5kIFBIWSBQTEwgcmVzZXQK
LSAgIHVzYjItc3RyYXAgLSBmb3IgcG9ydCBvdmVyIGN1cnJlbnQgcG9sYXJpdHkgcmV2ZXJzYWwK
LSAtICNwaHktY2VsbHM6IE11c3QgYmUgMC4gTm8gYXJncyByZXF1aXJlZC4KLSAtIHZidXMtZ3Bp
b3M6IHZidXMgZ3BpbyBiaW5kaW5nCi0gLSBpZC1ncGlvczogaWQgZ3BpbyBiaW5kaW5nCi0KLVJl
ZmVyIHRvIHBoeS9waHktYmluZGluZ3MudHh0IGZvciB0aGUgZ2VuZXJpYyBQSFkgYmluZGluZyBw
cm9wZXJ0aWVzCi0KLUV4YW1wbGU6Ci0JdXNiZHJkX3BoeTogcGh5QDY2MDAwOTYwIHsKLQkJCSNw
aHktY2VsbHMgPSA8MD47Ci0JCQljb21wYXRpYmxlID0gImJyY20sbnMyLWRyZC1waHkiOwotCQkJ
cmVnID0gPDB4NjYwMDA5NjAgMHgyND4sCi0JCQkgICAgICA8MHg2NzAxMjgwMCAweDQ+LAotCQkJ
ICAgICAgPDB4NjUwMWQxNDggMHg0PiwKLQkJCSAgICAgIDwweDY2NGQwNzAwIDB4ND47Ci0JCQly
ZWctbmFtZXMgPSAiaWNmZyIsICJyc3QtY3RybCIsCi0JCQkJICAgICJjcm11LWN0cmwiLCAidXNi
Mi1zdHJhcCI7Ci0JCQlpZC1ncGlvcyA9IDwmZ3Bpb19nIDMwIDA+OwotCQkJdmJ1cy1ncGlvcyA9
IDwmZ3Bpb19nIDMxIDA+OwotCX07CmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvcGh5L2JyY20sbnMyLWRyZC1waHkueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9waHkvYnJjbSxuczItZHJkLXBoeS55YW1sCm5ldyBmaWxlIG1vZGUg
MTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAwMC4uMWZhYjk3ZGU1YzBkCi0tLSAvZGV2L251bGwKKysr
IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9icmNtLG5zMi1kcmQtcGh5
LnlhbWwKQEAgLTAsMCArMSw2MiBAQAorIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0y
LjAtb25seSBPUiBCU0QtMi1DbGF1c2UpCislWUFNTCAxLjIKKy0tLQorJGlkOiBodHRwOi8vZGV2
aWNldHJlZS5vcmcvc2NoZW1hcy9waHkvYnJjbSxuczItZHJkLXBoeS55YW1sIworJHNjaGVtYTog
aHR0cDovL2RldmljZXRyZWUub3JnL21ldGEtc2NoZW1hcy9jb3JlLnlhbWwjCisKK3RpdGxlOiBC
cm9hZGNvbSBOb3J0aHN0YXIyIFVTQjIgRHVhbCBSb2xlIERldmljZSBQSFkKKworbWFpbnRhaW5l
cnM6CisgIC0gRmxvcmlhbiBGYWluZWxsaSA8Zmxvcmlhbi5mYWluZWxsaUBicm9hZGNvbS5jb20+
CisgIC0gSGF1a2UgTWVocnRlbnMgPGhhdWtlQGhhdWtlLW0uZGU+CisgIC0gUmFmYcWCIE1pxYJl
Y2tpIDx6YWplYzVAZ21haWwuY29tPgorCitwcm9wZXJ0aWVzOgorICBjb21wYXRpYmxlOgorICAg
IGNvbnN0OiBicmNtLG5zMi1kcmQtcGh5CisKKyAgcmVnOgorICAgIGl0ZW1zOgorICAgICAgLSBk
ZXNjcmlwdGlvbjogRFJEIElDRkcgY29uZmlndXJhdGlvbnMKKyAgICAgIC0gZGVzY3JpcHRpb246
IERSRCBJRE0gcmVzZXQKKyAgICAgIC0gZGVzY3JpcHRpb246IENSTVUgY29yZSB2ZGQsIFBIWSBh
bmQgUEhZIFBMTCByZXNldAorICAgICAgLSBkZXNjcmlwdGlvbjogUG9ydCBvdmVyIGN1cnJlbnQg
cG9sYXJpdHkgcmV2ZXJzYWwKKworICByZWctbmFtZXM6CisgICAgaXRlbXM6CisgICAgICAtIGNv
bnN0OiBpY2ZnCisgICAgICAtIGNvbnN0OiByc3QtY3RybAorICAgICAgLSBjb25zdDogY3JtdS1j
dHJsCisgICAgICAtIGNvbnN0OiB1c2IyLXN0cmFwCisKKyAgJyNwaHktY2VsbHMnOgorICAgIGNv
bnN0OiAwCisKKyAgaWQtZ3Bpb3M6CisgICAgbWF4SXRlbXM6IDEKKyAgICBkZXNjcmlwdGlvbjog
SUQgR1BJTyBsaW5lCisKKyAgdmJ1cy1ncGlvczoKKyAgICBtYXhJdGVtczogMQorICAgIGRlc2Ny
aXB0aW9uOiBWQlVTIEdQSU8gbGluZQorCityZXF1aXJlZDoKKyAgLSAnI3BoeS1jZWxscycKKyAg
LSBjb21wYXRpYmxlCisgIC0gcmVnCisgIC0gcmVnLW5hbWVzCisgIC0gaWQtZ3Bpb3MKKyAgLSB2
YnVzLWdwaW9zCisKK2FkZGl0aW9uYWxQcm9wZXJ0aWVzOiBmYWxzZQorCitleGFtcGxlczoKKyAg
LSB8CisgICAgcGh5QDY2MDAwOTYwIHsKKyAgICAgICAgI3BoeS1jZWxscyA9IDwwPjsKKyAgICAg
ICAgY29tcGF0aWJsZSA9ICJicmNtLG5zMi1kcmQtcGh5IjsKKyAgICAgICAgcmVnID0gPDB4NjYw
MDA5NjAgMHgyND4sIDwweDY3MDEyODAwIDB4ND4sIDwweDY1MDFkMTQ4IDB4ND4sIDwweDY2NGQw
NzAwIDB4ND47CisgICAgICAgIHJlZy1uYW1lcyA9ICJpY2ZnIiwgInJzdC1jdHJsIiwgImNybXUt
Y3RybCIsICJ1c2IyLXN0cmFwIjsKKyAgICAgICAgaWQtZ3Bpb3MgPSA8JmdwaW9fZyAzMCAwPjsK
KyAgICAgICAgdmJ1cy1ncGlvcyA9IDwmZ3Bpb19nIDMxIDA+OworICAgIH07Ci0tIAoyLjQ3LjIK
CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
