Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F439CD6E55
	for <linux-phy@archiver.kernel.org>; Wed,  3 Jun 2026 05:48:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qX6TBJkkhV6EqgvS/u7In0/xT0DrBj8cVFLNOK2qcXA=; b=Z1/e1XNpOqyu0S
	+Xnyv2gYkcNgq1x7cy4BWEAhb2elHlpnWw0JJKwry+ArGkfcdUr5v3k4r1zbZYqgrzg+sHZtGIJVV
	wgSiEpjSQxzNZi51I9uIVwRn5WwPWGB83sm4u8v8QrBPsqFgyI+Z0xphriSDjqqGgAF/KhnR1IxZi
	0f1dJtc0ocKxjLGtlKuLm4i4VWPEFpJumiQ65Y97GpvXHfFAtEUnKv9DTasC4PeE625E3rQi4LXGs
	lvZ063+of6rTFndYU2djj8EBhx9uRBvjYaTwpbWv1NSqN/8bYDiNHhgi8x50n5UfvUYEzeqnNaCNP
	vWdO2bV217DDXua9calQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUeSo-0000000EJCh-1gsf;
	Wed, 03 Jun 2026 05:48:26 +0000
Received: from outbound10.mail.transip.nl ([136.144.136.17])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUeSk-0000000EJAy-0Ye1
	for linux-phy@lists.infradead.org;
	Wed, 03 Jun 2026 05:48:24 +0000
Received: from submission13.mail.transip.nl (unknown [10.103.8.164])
	by outbound10.mail.transip.nl (Postfix) with ESMTP id 4gVcDp69kyzTPNQp;
	Wed,  3 Jun 2026 07:48:10 +0200 (CEST)
Received: from herrie-desktop.. (180-93-184-31.ftth.glasoperator.nl [31.184.93.180])
	by submission13.mail.transip.nl (Postfix) with ESMTPA id 4gVcDp27W0z3fCxJ8;
	Wed,  3 Jun 2026 07:48:10 +0200 (CEST)
From: Herman van Hazendonk <github.com@herrie.org>
To: linux-phy@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Herman van Hazendonk <github.com@herrie.org>
Subject: [PATCH 1/2] dt-bindings: phy: qcom,usb-hs-phy: add qcom,vendor-init-seq
Date: Wed,  3 Jun 2026 07:48:08 +0200
Message-ID: <20260603054809.565723-2-github.com@herrie.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260603054809.565723-1-github.com@herrie.org>
References: <20260603054809.565723-1-github.com@herrie.org>
MIME-Version: 1.0
X-Scanned-By: ClueGetter at submission13.mail.transip.nl
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 s=transip-a; d=herrie.org; t=1780465690; h=from:subject:to:cc:
 references:in-reply-to:date:mime-version:content-type;
 bh=mrlcs1D27PXPLxt8+cRL/rXLqNpuksf4zApbZFH8i+Y=;
 b=hLkBtEdy3Yka9/a7Ga45aI8KLYaM5SR7TxpGV+RwPu7yLF9C+W4VWTFs6qXQbS3aB4syQ5
 amLri692kB1Y7Ym/xMvlgkRll7kmZ9pokiHzExImT0iJZaSwZb1+q2as3iWLr3LK4I3Ngm
 oT3MsFpD70Kw9GA8k1KW3GnNZlxXnvryMJFdkp0KkOUYOfzJ6LyTwXQNPOtZVUvFEoFxa7
 ZVQ/jIKrKxFivfbQRQWvfzQ2GKEvceXJ3eOcl9jnvK5BssANqM49UYQlP/m7o5tdNUP2WU
 LZIszorttoPaFc7i+tJQsTJmKeVTsESfnXZbubEvONQJeh1YdXHc3zlhaDQbTw==
X-Report-Abuse-To: abuse@transip.nl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260602_224822_672174_B294AB5D 
X-CRM114-Status: GOOD (  10.40  )
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

QWRkIGFuIG9wdGlvbmFsICJxY29tLHZlbmRvci1pbml0LXNlcSIgcHJvcGVydHkgY2Fycnlpbmcg
cmF3IFVMUEkKKGFkZHJlc3MsIHZhbHVlKSBwYWlycyB0aGF0IGFyZSB3cml0dGVuIGFmdGVyIFBI
WSByZXNldC4KClVubGlrZSB0aGUgZXhpc3RpbmcgInFjb20saW5pdC1zZXEiIHByb3BlcnR5LCB0
aGUgYWRkcmVzcyBmaWVsZCBpcwpOT1Qgb2Zmc2V0IGJ5IFVMUElfRVhUX1ZFTkRPUl9TUEVDSUZJ
Qywgc28gdGhlIG5ldyBwcm9wZXJ0eSBjYW4KcmVhY2ggdGhlIHN0YW5kYXJkIFVMUEkgdmVuZG9y
IHJlZ2lzdGVyIHJhbmdlICgweDMwLTB4M2YpLiBNU004eDYwLQpjbGFzcyBoYXJkd2FyZSBuZWVk
cyB0aGlzIHJhbmdlIHRvIHByb2dyYW1tZSBwcmUtZW1waGFzaXMsIEhTIGRyaXZlcgpzbG9wZSBh
bmQgQ0RSIGF1dG8tcmVzZXQgYml0cyB0aGUgbGVnYWN5IG1zbV9vdGcgZHJpdmVyIHVzZWQgdG8g
c2V0CnZpYSBwbGF0Zm9ybSBkYXRhLgoKVGhlICJxY29tLGluaXQtc2VxIiBwYXRoIGlzIGxlZnQg
dW5jaGFuZ2VkLgoKU2lnbmVkLW9mZi1ieTogSGVybWFuIHZhbiBIYXplbmRvbmsgPGdpdGh1Yi5j
b21AaGVycmllLm9yZz4KLS0tCiAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSx1c2It
aHMtcGh5LnlhbWwgICB8IDE0ICsrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMTQgaW5z
ZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9waHkvcWNvbSx1c2ItaHMtcGh5LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvcGh5L3Fjb20sdXNiLWhzLXBoeS55YW1sCmluZGV4IGUwM2I1MTZjNjk4Yy4uYjllY2E2
NzA0MTlhIDEwMDY0NAotLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5
L3Fjb20sdXNiLWhzLXBoeS55YW1sCisrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9waHkvcWNvbSx1c2ItaHMtcGh5LnlhbWwKQEAgLTg1LDYgKzg1LDIwIEBAIHByb3BlcnRp
ZXM6CiAgICAgICAgICAgICB0aGUgYWRkcmVzcyBpcyBvZmZzZXQgZnJvbSB0aGUgVUxQSV9FWFRf
VkVORE9SX1NQRUNJRklDIGFkZHJlc3MKICAgICAgICAgLSBkZXNjcmlwdGlvbjogdmFsdWUKIAor
ICBxY29tLHZlbmRvci1pbml0LXNlcToKKyAgICAkcmVmOiAvc2NoZW1hcy90eXBlcy55YW1sIy9k
ZWZpbml0aW9ucy91aW50OC1hcnJheQorICAgIGRlc2NyaXB0aW9uOiA+CisgICAgICBGbGF0IHNl
cXVlbmNlIG9mIHJhdyBVTFBJIGFkZHJlc3MvdmFsdWUgYnl0ZSBwYWlycyB3cml0dGVuIGFmdGVy
CisgICAgICB0aGUgUEhZIHJlc2V0LiBFYWNoIHBhaXIgaXMgdHdvIGNvbnNlY3V0aXZlIGJ5dGVz
OgorICAgICAgW2FkZHIwLCB2YWwwLCBhZGRyMSwgdmFsMSwgLi4uXS4gVG90YWwgbGVuZ3RoIG11
c3QgYmUgZXZlbiBhbmQKKyAgICAgIG5vIG1vcmUgdGhhbiA2NCBieXRlcyAoMzIgcGFpcnMpLiBV
bmxpa2UgcWNvbSxpbml0LXNlcSB0aGUKKyAgICAgIGFkZHJlc3MgZmllbGQgaXMgbm90IG9mZnNl
dCBieSBVTFBJX0VYVF9WRU5ET1JfU1BFQ0lGSUMsIHNvIHRoaXMKKyAgICAgIHByb3BlcnR5IGNh
biByZWFjaCB0aGUgc3RhbmRhcmQgVUxQSSB2ZW5kb3IgcmFuZ2UgKDB4MzAtMHgzZikg4oCUCisg
ICAgICB1c2VkIG9uIE1TTTh4NjAtY2xhc3MgaGFyZHdhcmUgdG8gcHJvZ3JhbSBwcmUtZW1waGFz
aXMsIEhTCisgICAgICBkcml2ZXIgc2xvcGUgYW5kIENEUiBhdXRvLXJlc2V0IGJpdHMgdGhlIGxl
Z2FjeSBtc21fb3RnIGRyaXZlcgorICAgICAgdXNlZCB0byBzZXQgdmlhIHBsYXRmb3JtIGRhdGEu
CisgICAgbWF4SXRlbXM6IDY0CisKIHJlcXVpcmVkOgogICAtIGNsb2NrcwogICAtIGNsb2NrLW5h
bWVzCi0tIAoyLjQzLjAKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1waHkK
