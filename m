Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C91DD65532
	for <linux-phy@archiver.kernel.org>; Wed, 17 Dec 2025 10:19:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EA3jop2AirgXJ+jy0Vq+N5D/9AuYxTuFioxHskqIrk4=; b=EuOcJD1Snexf4o
	eGkkVBuWA+3hJ4pIkIi1VSf7FQEH9XdeJO09yj90a1pMRUvv/9/Jx8bdkWzFH8CnRdbyVdKQvbKz/
	mYyl4WzcfgexI8LUZfWUv9OKTjElejYlseneaCTuNo+EjkWY3QRVkUc6fh91al8b0SlBNnpfyvMvO
	HlYkPBBS8ecjFDuOP/8YFtqwgCXow7h4Se2kRh56SVGlf2Uh0dvPFU5KDvOXiqHc4gy4wFPUZPb4G
	B8M2KVD6UuuuEN9dn50k7VvrKRI6xUkiPIcLBIiRUqtZHyVVDrqKOnU8kgP2Hmd4Yqc5vOvyZtWJO
	DTHG94qNvv+hfjxQ+Kzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVodH-00000006bI7-1MOU;
	Wed, 17 Dec 2025 10:19:47 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVodB-00000006bC0-0aX8;
	Wed, 17 Dec 2025 10:19:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1765966776;
	bh=2uCsiJL3FhY3PhVtUNXzBlzS29fMOK47hX+kAU0prvM=;
	h=From:Subject:Date:To:Cc:From;
	b=THOEb6ESP5uwi6VGoS1PsKosEkj0i7ulYgOgyc7NgTxwpzFbyJjWiRyVERbgBgDSQ
	 ofpGA/1oeAIwD/Pgz6hp/omZJKieqW1yx8HY0H6fcQx1dv2ufqKUNwRbGOOXOj/RtG
	 5v7dYh2XuLBH+d+3gnkvzqXvNlUwo6zOdmW6TvGuO9tMATnK57FLpWbZiexUWfy/cV
	 6BdUNOn7XamtBqd6E90wbHczSSDl4UvIAkEZHPDuV8vBduCOVUOb6WmIQ83p3HXZzT
	 JSOfnEcf/cT5Ny6XtZMH1iLbC7TBEJFJapXOc41qgtRADjiX3s8m9EGilpaxGDj+rc
	 AL8kOac3LS8Kw==
Received: from yukiji.home (amontpellier-657-1-116-247.w83-113.abo.wanadoo.fr [83.113.51.247])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: laeyraud)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id E38FF17E0506;
	Wed, 17 Dec 2025 11:19:35 +0100 (CET)
From: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
Subject: [PATCH v2 00/12] Add HDMI support for Mediatek Genio
 510/700/1200-EVK and Radxa NIO-12L boards
Date: Wed, 17 Dec 2025 11:18:59 +0100
Message-Id: <20251217-mtk-genio-evk-hdmi-support-v2-0-a994976bb39a@collabora.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/32OzQ6CMBCEX4Xs2TW0BhBOvofhUGCBDT/FthAM4
 d2t4NnjN8nMNxtYMkwWsmADQwtb1qMHeQmgbNXYEHLlGWQoIyHDGw6uw4ZG1khLh201MNp5mrR
 xKJJKRSIWd5ko8AOToZrXY/yZn2zoNXuHO0MolCUs9TCwy4KRVoenRyTwLbRsnTbv49wijsbvR
 /rvxyIwxFTFIoyprgsVP0rd96rQRl29DPJ93z8v28wF+QAAAA==
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765966775; l=3341;
 i=louisalexis.eyraud@collabora.com; s=20250113; h=from:subject:message-id;
 bh=2uCsiJL3FhY3PhVtUNXzBlzS29fMOK47hX+kAU0prvM=;
 b=DwHgGu3ADpVy9HJNoeg+SuijtIeOfDFwK7PZZIkmgREDdVTFJjHnuHBSl7+F9kKH/iEvKf+Ah
 oi8yKWg/3y9ApQSePYtEgl9XuwoXwTfSU1xD3VYKXNqcoBbT/xZgRbg
X-Developer-Key: i=louisalexis.eyraud@collabora.com; a=ed25519;
 pk=CHFBDB2Kqh4EHc6JIqFn69GhxJJAzc0Zr4e8QxtumuM=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251217_021941_360944_487A94D6 
X-CRM114-Status: GOOD (  13.25  )
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
aW51eC1uZXh0ICh0YWc6IG5leHQtMjAyNTEyMTcpLgoKWzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwu
b3JnL2xpbnV4LW1lZGlhdGVrLzIwMjUwNzI0MDgzOTE0LjYxMzUxLTE2LWFuZ2Vsb2dpb2FjY2hp
bm8uZGVscmVnbm9AY29sbGFib3JhLmNvbS8KWzJdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xp
bnV4LW1lZGlhdGVrL2VlNTI1MzEyLWJkZTEtNDcyNC1iMzJmLTgzYmUzMmM4NzY5NkBrZXJuZWwu
b3JnLwoKU2lnbmVkLW9mZi1ieTogTG91aXMtQWxleGlzIEV5cmF1ZCA8bG91aXNhbGV4aXMuZXly
YXVkQGNvbGxhYm9yYS5jb20+Ci0tLQpDaGFuZ2VzIGluIHYyOiAKLSBSZWJhc2VkIG92ZXIgbmV4
dC0yMDE1MTIxNyB0YWcKLSBVcGRhdGVkIHBhdGNoIDMgdG8gdGFrZSBpbnRvIGFjY291bnQgUm9i
IEhlcnJpbmcgcmVtYXJrcyBhbmQgc2ltcGxpZnkKICBwYXRjaAotIFVwZGF0ZWQgcGF0Y2ggNCB0
byBhbGlnbiBIRE1JIHBoeSBjbG9jayBuYW1lIGNoYW5nZXMgZG9uZSBpbiBwYXRjaCAzLiAKLSBB
ZGQgcmV2aWV3ZWQtYnkgdHJhaWxlciBpbiBwYXRjaCAxCi0gTGluayB0byB2MTogaHR0cHM6Ly9s
b3JlLmtlcm5lbC5vcmcvci8yMDI1MTIwOS1tdGstZ2VuaW8tZXZrLWhkbWktc3VwcG9ydC12MS0w
LTlhNjEwNmVmZmJhNkBjb2xsYWJvcmEuY29tCgotLS0KQW5nZWxvR2lvYWNjaGlubyBEZWwgUmVn
bm8gKDUpOgogICAgICBkdC1iaW5kaW5nczogcGh5OiBtZWRpYXRlayxoZG1pLXBoeTogRml4IGNs
b2NrIG91dHB1dCBuYW1lcyBmb3IgTVQ4MTk1CiAgICAgIGFybTY0OiBkdHM6IG1lZGlhdGVrOiBt
dDgxOTU6IEFkZCBEUEkxLCBIRE1JLCBIRE1JIFBIWS9EREMgbm9kZXMKICAgICAgYXJtNjQ6IGR0
czogbWVkaWF0ZWs6IG10ODE4ODogQWRkIERQSTEsIEhETUksIEhETUkgUEhZL0REQyBub2Rlcwog
ICAgICBhcm02NDogZHRzOiBtZWRpYXRlazogbXQ4MzkwLWdlbmlvLWNvbW1vbjogRW5hYmxlIEhE
TUkgb3V0cHV0CiAgICAgIGFybTY0OiBkdHM6IG1lZGlhdGVrOiBtdDgzOTUtcmFkeGEtbmlvLTEy
bDogRW5hYmxlIEhETUkgb3V0cHV0CgpMb3Vpcy1BbGV4aXMgRXlyYXVkICg2KToKICAgICAgZHQt
YmluZGluZ3M6IHBoeTogbWVkaWF0ZWssaGRtaS1waHk6IEFkZCBzdXBwb3J0IGZvciBNVDgxODgg
U29DCiAgICAgIGFybTY0OiBkdHM6IG1lZGlhdGVrOiBtdDgzOTAtZ2VuaW8tY29tbW9uOiBBZGQg
SERNSSBzb3VuZCBvdXRwdXQgc3VwcG9ydAogICAgICBhcm02NDogZHRzOiBtZWRpYXRlazogbXQ4
Mzk1LXJhZHhhLW5pby0xMmw6IEFkZCBIRE1JIHNvdW5kIG91dHB1dCBzdXBwb3J0CiAgICAgIGFy
bTY0OiBkdHM6IG1lZGlhdGVrOiBtdDgzOTUtZ2VuaW8tY29tbW9uOiBFbmFibGUgSERNSSBvdXRw
dXQKICAgICAgYXJtNjQ6IGR0czogbWVkaWF0ZWs6IG10ODM5NS1nZW5pby1jb21tb246IEFkZCBI
RE1JIHNvdW5kIG91dHB1dCBzdXBwb3J0CiAgICAgIGFybTY0OiBkZWZjb25maWc6IEVuYWJsZSBN
ZWRpYXRlayBIRE1JdjIgZHJpdmVyCgpOw61jb2xhcyBGLiBSLiBBLiBQcmFkbyAoMSk6CiAgICAg
IGR0LWJpbmRpbmdzOiBwaHk6IG1lZGlhdGVrLGhkbWktcGh5OiBEb2N1bWVudCBleHRyYSBjbG9j
a3MgZm9yIE1UODE5NQoKIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9tZWRpYXRlayxoZG1p
LXBoeS55YW1sIHwgIDI5ICsrKy0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvbWVkaWF0ZWsvbXQ4MTg4
LmR0c2kgICAgICAgICAgIHwgIDgyICsrKysrKysrKysrCiBhcmNoL2FybTY0L2Jvb3QvZHRzL21l
ZGlhdGVrL210ODE5NS5kdHNpICAgICAgICAgICB8ICA4NSArKysrKysrKysrKysKIC4uLi9ib290
L2R0cy9tZWRpYXRlay9tdDgzOTAtZ2VuaW8tY29tbW9uLmR0c2kgICAgIHwgMTUwICsrKysrKysr
KysrKysrKysrKysrKwogLi4uL2Jvb3QvZHRzL21lZGlhdGVrL210ODM5NS1nZW5pby1jb21tb24u
ZHRzaSAgICAgfCAxNTAgKysrKysrKysrKysrKysrKysrKysrCiAuLi4vYm9vdC9kdHMvbWVkaWF0
ZWsvbXQ4Mzk1LXJhZHhhLW5pby0xMmwuZHRzICAgICB8IDE1MCArKysrKysrKysrKysrKysrKysr
KysKIGFyY2gvYXJtNjQvY29uZmlncy9kZWZjb25maWcgICAgICAgICAgICAgICAgICAgICAgIHwg
ICAxICsKIDcgZmlsZXMgY2hhbmdlZCwgNjQ1IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0p
Ci0tLQpiYXNlLWNvbW1pdDogYTUxMmJlOWU4ODM4YWZlYzZiYWE4Mzc2N2UyOTFkZmNhODY1NzQx
MApjaGFuZ2UtaWQ6IDIwMjUxMjAzLW10ay1nZW5pby1ldmstaGRtaS1zdXBwb3J0LTE3ZGE1MTYx
ODI3YQoKQmVzdCByZWdhcmRzLAotLSAKTG91aXMtQWxleGlzIEV5cmF1ZCA8bG91aXNhbGV4aXMu
ZXlyYXVkQGNvbGxhYm9yYS5jb20+CgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgt
cGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcGh5Cg==
