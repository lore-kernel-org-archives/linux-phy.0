Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF982D3B7FF
	for <linux-phy@archiver.kernel.org>; Tue,  9 Dec 2025 16:34:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aPjWf/3HkAbZmOTrod0EqacS2f17VY7cjqt16WoNedE=; b=oflsLp/aMWtAHH
	gRXJA7VdIfikPYQ1UfJzyiK9i3b0sTdnzPGAmkJ6d2+wL+6L97cUoFm5Swa+jxai5F0A6MdXdA2e6
	0xJk7YST0OG1TXHSUhRVqDKGU5GsXqI4tYzbE/kLmDjXR5Ke+t0az9Q5L6Krofo8QYpICOTQCxqmv
	vmPMK7zEL077NonAg10zdJH5GQD+bygI7R00Lt+y7yA8RKWUp+3b7zdciZhlb83TdvDC6P2XpfQ6O
	RhIdQOEt1rArtU1icI1bwkBOTqZTwoXmaBgtndbG+P06zWMYsDbRtXJg8wxvHC1o8XeSbhRZyvonu
	3TDQfw79Ruhkge7g4X7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vT0fr-0000000EWaY-1h6Z;
	Tue, 09 Dec 2025 16:34:51 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vT0fo-0000000EWYH-1b9l;
	Tue, 09 Dec 2025 16:34:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1765298084;
	bh=MVyNdWFXaQKj/KOaxhKV47wH1Z8rT4xOoRVTsltB5nM=;
	h=From:Subject:Date:To:Cc:From;
	b=RawSdYFuRr9LPcmeHVv0dZ2nMhAV+zfTDR+K5IcjDFQ62CXFH3hfxUGJ6DZiW+vsR
	 jBa2rGFg+fgBPgu+eH3lAkEHWmYRzQtFetgMC7IaIoufGzmhs5UuIyte7xqchgOxNL
	 yTIIg0bubFCL4TnvExB7eVSnI32lp6E6hFv4c7ACNvGk9Qkmw80AS5vKtF2GfPZsrS
	 nek3CTn7YFt4wjpsKTqRyzAGLa+RAsWOlXUnstIfzCA7t+kJzv9+vgY8o4cOrCjb0T
	 SWSdyDjij/yMVxGatles9PY1UMwGhUfwmDhU373LWCfiDF+g3yq+I1ApmcL20hErT3
	 Wkb2NI/QGO0Bw==
Received: from yukiji.home (amontpellier-657-1-116-247.w83-113.abo.wanadoo.fr [83.113.51.247])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: laeyraud)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id EDC3317E1292;
	Tue,  9 Dec 2025 17:34:43 +0100 (CET)
From: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
Subject: [PATCH 00/12] Add HDMI support for Mediatek Genio 510/700/1200-EVK
 and Radxa NIO-12L boards
Date: Tue, 09 Dec 2025 17:34:30 +0100
Message-Id: <20251209-mtk-genio-evk-hdmi-support-v1-0-9a6106effba6@collabora.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/y2NywqDMBAAfyXsuQsmxWr9leIhNasukkeTKIL47
 w21x5nDzAGJIlOCThwQaePE3hWQNwHDrN1EyKYwqErVUlV3tHnBiRx7pG3B2VjGtIbgY0bZGF3
 Lh2xVo6EEQqSR91/81V8c6bOWR74kvHUiHLy1nDvhaM/4/zyhP88vGAvUBZ0AAAA=
X-Change-ID: 20251203-mtk-genio-evk-hdmi-support-17da5161827a
To: Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Guillaume Ranquet <granquet@baylibre.com>
Cc: kernel@collabora.com, Krzysztof Kozlowski <krzk@kernel.org>, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>, 
 =?utf-8?q?N=C3=ADcolas_F=2E_R=2E_A=2E_Prado?= <nfraprado@collabora.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765298083; l=2982;
 i=louisalexis.eyraud@collabora.com; s=20250113; h=from:subject:message-id;
 bh=MVyNdWFXaQKj/KOaxhKV47wH1Z8rT4xOoRVTsltB5nM=;
 b=4SOG6oNUo8Am1C5FYpNCoOcCXaIXGUa6p1b7RQpYrj8Ibkvvbi1Xys4s0lYw1PKjqUw+zTaRS
 9/WcUpWb6zDC/sfGToCHRPBWibLvI2v9qwEWtPOqV95xzXe/TOsOOLR
X-Developer-Key: i=louisalexis.eyraud@collabora.com; a=ed25519;
 pk=CHFBDB2Kqh4EHc6JIqFn69GhxJJAzc0Zr4e8QxtumuM=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251209_083448_611675_590D7CCB 
X-CRM114-Status: GOOD (  10.92  )
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

VGhpcyBwYXRjaCBzZXJpZXMgYWRkcyBhbmQgZW5hYmxlcyB0aGUgSERNSSBvdXRwdXQgc3VwcG9y
dCBmb3IgdGhlCmZvbGxvd2luZyBib2FyZHM6Ci0gTWVkaWF0ZWsgR2VuaW8gNTEwLUVWSyAoTVQ4
MzcwKQotIE1lZGlhdGVrIEdlbmlvIDcwMC1FVksgKE1UODM5MCkKLSBNZWRpYXRlayBHZW5pbyAx
MjAwLUVWSyAoTVQ4Mzk1KQotIFJhZHhhIE5JTy0xMkwgKE1UODM5NSkKClBhdGNoIDEgaXMgYSAn
bWVkaWF0ZWssaGRtaS1waHknIGR0LWJpbmRpbmcgZml4IGZvciBNVDgxOTUgU29DIGFuZCBhCnJl
dmlzZWQgdmVyc2lvbiBvZiBbMV0sIHRoYXQgYWRkcmVzc2VzIHByZXZpb3VzIGZlZWRiYWNrIGZy
b20gbWFpbGluZwpsaXN0IChbMl0pLgpQYXRjaCAyIHdhcyBzcGxpdCBmcm9tIFsxXSBpbnRvIGEg
c2VwYXJhdGUgcGF0Y2ggYW5kIGFkZHMgYSBNVDgxODggU29DCmNvbXBhdGlibGUgaW4gJ21lZGlh
dGVrLGhkbWktcGh5JyBkdC1iaW5kaW5nLgpQYXRjaCAzIGRvY3VtZW50cyBpbiAnbWVkaWF0ZWss
aGRtaS1waHknIGR0LWJpbmRpbmcgZXh0cmEgY2xvY2tzIGZvcgpNVDgxOTUgU29DLgpQYXRjaCA0
IGFkZHMgYWxsIG9mIHRoZSBub2RlcyB0aGF0IGFyZSByZXF1aXJlZCB0byBlbmFibGUgSERNSSBv
dXRwdXQKZm9yIE1UODE5NSBTb0MgYW5kIGl0cyB2YXJpYW50IChNVDgzOTUpLgpQYXRjaCA1IGFk
ZHMgdGhlIHNhbWUgYnV0IGZvciBNVDgxODggU29DIGFuZCBpdHMgdmFyaWFudHMgKE1UODM3MCwK
TVQ4MzkwKS4KUGF0Y2hlcyA2IHRvIDExIGVuYWJsZSBIRE1JIG91dHB1dCBhbmQgc291bmQgc3Vw
cG9ydCBmb3IgZWFjaCBib2FyZC4KUGF0Y2ggMTIgZW5hYmxlcyB0aGUgTWVkaWF0ZWsgSERNSXYy
IGRyaXZlciBhcyBtb2R1bGUgaW4gZGVmY29uZmlnLgoKVGhlIHNlcmllcyBpcyBiYXNlZCBvbiBs
aW51eC1uZXh0ICh0YWc6IG5leHQtMjAyNTEyMDkpLgoKWzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwu
b3JnL2xpbnV4LW1lZGlhdGVrLzIwMjUwNzI0MDgzOTE0LjYxMzUxLTE2LWFuZ2Vsb2dpb2FjY2hp
bm8uZGVscmVnbm9AY29sbGFib3JhLmNvbS8KWzJdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xp
bnV4LW1lZGlhdGVrL2VlNTI1MzEyLWJkZTEtNDcyNC1iMzJmLTgzYmUzMmM4NzY5NkBrZXJuZWwu
b3JnLwoKU2lnbmVkLW9mZi1ieTogTG91aXMtQWxleGlzIEV5cmF1ZCA8bG91aXNhbGV4aXMuZXly
YXVkQGNvbGxhYm9yYS5jb20+Ci0tLQpBbmdlbG9HaW9hY2NoaW5vIERlbCBSZWdubyAoNSk6CiAg
ICAgIGR0LWJpbmRpbmdzOiBwaHk6IG1lZGlhdGVrLGhkbWktcGh5OiBGaXggY2xvY2sgb3V0cHV0
IG5hbWVzIGZvciBNVDgxOTUKICAgICAgYXJtNjQ6IGR0czogbWVkaWF0ZWs6IG10ODE5NTogQWRk
IERQSTEsIEhETUksIEhETUkgUEhZL0REQyBub2RlcwogICAgICBhcm02NDogZHRzOiBtZWRpYXRl
azogbXQ4MTg4OiBBZGQgRFBJMSwgSERNSSwgSERNSSBQSFkvRERDIG5vZGVzCiAgICAgIGFybTY0
OiBkdHM6IG1lZGlhdGVrOiBtdDgzOTAtZ2VuaW8tY29tbW9uOiBFbmFibGUgSERNSSBvdXRwdXQK
ICAgICAgYXJtNjQ6IGR0czogbWVkaWF0ZWs6IG10ODM5NS1yYWR4YS1uaW8tMTJsOiBFbmFibGUg
SERNSSBvdXRwdXQKCkxvdWlzLUFsZXhpcyBFeXJhdWQgKDYpOgogICAgICBkdC1iaW5kaW5nczog
cGh5OiBtZWRpYXRlayxoZG1pLXBoeTogQWRkIHN1cHBvcnQgZm9yIE1UODE4OCBTb0MKICAgICAg
YXJtNjQ6IGR0czogbWVkaWF0ZWs6IG10ODM5MC1nZW5pby1jb21tb246IEFkZCBIRE1JIHNvdW5k
IG91dHB1dCBzdXBwb3J0CiAgICAgIGFybTY0OiBkdHM6IG1lZGlhdGVrOiBtdDgzOTUtcmFkeGEt
bmlvLTEybDogQWRkIEhETUkgc291bmQgb3V0cHV0IHN1cHBvcnQKICAgICAgYXJtNjQ6IGR0czog
bWVkaWF0ZWs6IG10ODM5NS1nZW5pby1jb21tb246IEVuYWJsZSBIRE1JIG91dHB1dAogICAgICBh
cm02NDogZHRzOiBtZWRpYXRlazogbXQ4Mzk1LWdlbmlvLWNvbW1vbjogQWRkIEhETUkgc291bmQg
b3V0cHV0IHN1cHBvcnQKICAgICAgYXJtNjQ6IGRlZmNvbmZpZzogRW5hYmxlIE1lZGlhdGVrIEhE
TUl2MiBkcml2ZXIKCk7DrWNvbGFzIEYuIFIuIEEuIFByYWRvICgxKToKICAgICAgZHQtYmluZGlu
Z3M6IHBoeTogbWVkaWF0ZWssaGRtaS1waHk6IERvY3VtZW50IGV4dHJhIGNsb2NrcyBmb3IgTVQ4
MTk1CgogLi4uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L21lZGlhdGVrLGhkbWktcGh5LnlhbWwg
fCAgNDMgKysrKystCiBhcmNoL2FybTY0L2Jvb3QvZHRzL21lZGlhdGVrL210ODE4OC5kdHNpICAg
ICAgICAgICB8ICA4MiArKysrKysrKysrKwogYXJjaC9hcm02NC9ib290L2R0cy9tZWRpYXRlay9t
dDgxOTUuZHRzaSAgICAgICAgICAgfCAgODYgKysrKysrKysrKysrCiAuLi4vYm9vdC9kdHMvbWVk
aWF0ZWsvbXQ4MzkwLWdlbmlvLWNvbW1vbi5kdHNpICAgICB8IDE1MCArKysrKysrKysrKysrKysr
KysrKysKIC4uLi9ib290L2R0cy9tZWRpYXRlay9tdDgzOTUtZ2VuaW8tY29tbW9uLmR0c2kgICAg
IHwgMTUwICsrKysrKysrKysrKysrKysrKysrKwogLi4uL2Jvb3QvZHRzL21lZGlhdGVrL210ODM5
NS1yYWR4YS1uaW8tMTJsLmR0cyAgICAgfCAxNTAgKysrKysrKysrKysrKysrKysrKysrCiBhcmNo
L2FybTY0L2NvbmZpZ3MvZGVmY29uZmlnICAgICAgICAgICAgICAgICAgICAgICB8ICAgMSArCiA3
IGZpbGVzIGNoYW5nZWQsIDY1NiBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQotLS0KYmFz
ZS1jb21taXQ6IDhlYmZkNTI5MGM2MTYyZDY1ZjgzZjlhOGFjZGJiZjI0M2I0OWE1ODYKY2hhbmdl
LWlkOiAyMDI1MTIwMy1tdGstZ2VuaW8tZXZrLWhkbWktc3VwcG9ydC0xN2RhNTE2MTgyN2EKCkJl
c3QgcmVnYXJkcywKLS0gCkxvdWlzLUFsZXhpcyBFeXJhdWQgPGxvdWlzYWxleGlzLmV5cmF1ZEBj
b2xsYWJvcmEuY29tPgoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXBoeQo=
