Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DDE88D65530
	for <linux-phy@archiver.kernel.org>; Wed, 17 Dec 2025 10:19:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rPmUpCRkOpfDgrkuhPvKczRRMJuNkaJ5KIo7dXyFDTU=; b=Fsso3vxsK6njQB
	odJSGiDjITZr0xIK3imi42nysKa+QTxeZOixdLGWM6hXggn/CviyFTRnpgwQEtb/H4KgBPWBQh3CD
	5lopP7fF5IZTHN1/r5PgNj8uMMESRg621Jy3o3Pwhw0b0nRDDOTKnCvXnyx1KU7I4YWe+LBszYHYw
	qr7C1FIRjCkCp4esW8u1VodVp82eEMTUlclmu130w3i919jcoqvwPdj+HamVhtylhFWeyUbjOG19w
	FDcjwkxa3dF2AhTf9iisLCFEZ34+e5lOcN5BV46c5GGdRkH3Vfpau8pt+PYdrdzxt3EHKa/vHttKk
	ddH3Mblwf8yRm2WDcK5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVodK-00000006bMY-2S4o;
	Wed, 17 Dec 2025 10:19:50 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVodB-00000006bC5-2B7l;
	Wed, 17 Dec 2025 10:19:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1765966779;
	bh=/iHY6Ek9NZv6NH4I47nsOrQqEuFHwaSUHvBiqk85d20=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=I/SZ7qU7VSj6SCADkIyQuFrB9d48rdPfCmOLWaL41fH735Wu8o2DPTfZkt+OT6Ya1
	 ZiQ/WdZRA4p5UC+Q4qTTl3y3lMNoDbG0qaYTvzkKhCwJ5FkKOraPOrB+WWz5tyfq03
	 TjDeKnKBzt1JIZEVIqODZ9j1IjZ+51JIeuX6CTAWREP/HvBuXD8qSLkQ04gjcT/QV0
	 frYqmE0LAxw8AM6eBCHWsRCRCotlHwd9lLrtatV2eVCiDDFyUrIYBH72xhQde9aFYJ
	 5NWBciA+YpaIEvSSARRMvy8KPwx8T4tNLxPYVY36Z1QGV2ht7tyNXB5q+xlucLdxSx
	 kSvkjfUiaufvQ==
Received: from yukiji.home (amontpellier-657-1-116-247.w83-113.abo.wanadoo.fr [83.113.51.247])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: laeyraud)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 92B9917E1149;
	Wed, 17 Dec 2025 11:19:38 +0100 (CET)
From: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
Date: Wed, 17 Dec 2025 11:19:02 +0100
Subject: [PATCH v2 03/12] dt-bindings: phy: mediatek,hdmi-phy: Document
 extra clocks for MT8195
MIME-Version: 1.0
Message-Id: <20251217-mtk-genio-evk-hdmi-support-v2-3-a994976bb39a@collabora.com>
References: <20251217-mtk-genio-evk-hdmi-support-v2-0-a994976bb39a@collabora.com>
In-Reply-To: <20251217-mtk-genio-evk-hdmi-support-v2-0-a994976bb39a@collabora.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765966775; l=1648;
 i=louisalexis.eyraud@collabora.com; s=20250113; h=from:subject:message-id;
 bh=uBqYbsllwSAgfx3yFUqteOM6qhanU+ngECKB88ov1So=;
 b=mduR62ASYwH+iiccWNUlf5O1GlcYwUlq8FuJbjpMYx1h5b5vGjXRGAnq5gB3T5rwZN24QpXgq
 Xfa8pphygFXDpIY/gjvDUIJ21E0RTdZ+25sFLMncIqvoqLsb14yeHz/
X-Developer-Key: i=louisalexis.eyraud@collabora.com; a=ed25519;
 pk=CHFBDB2Kqh4EHc6JIqFn69GhxJJAzc0Zr4e8QxtumuM=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251217_021941_710846_13CF8448 
X-CRM114-Status: UNSURE (   6.99  )
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

RnJvbTogIk7DrWNvbGFzIEYuIFIuIEEuIFByYWRvIiA8bmZyYXByYWRvQGNvbGxhYm9yYS5jb20+
CgpNVDgxOTUncyBIRE1JIFBIWSBibG9jayBoYXMgNCBjbG9ja3MgaW5zdGVhZCBvZiBqdXN0IGEg
c2luZ2xlIG9uZS4KRGVzY3JpYmUgdGhlIGV4dHJhIGNsb2NrcyBmb3IgaXQuCgpTaWduZWQtb2Zm
LWJ5OiBOw61jb2xhcyBGLiBSLiBBLiBQcmFkbyA8bmZyYXByYWRvQGNvbGxhYm9yYS5jb20+CltM
b3Vpcy1BbGV4aXMgRXlyYXVkOiBhZGRyZXNzZWQgZmVlZGJhY2sgZnJvbSBtYWlsaW5nIGxpc3Rd
ClNpZ25lZC1vZmYtYnk6IExvdWlzLUFsZXhpcyBFeXJhdWQgPGxvdWlzYWxleGlzLmV5cmF1ZEBj
b2xsYWJvcmEuY29tPgotLS0KIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9tZWRpYXRlayxo
ZG1pLXBoeS55YW1sIHwgMjIgKysrKysrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQs
IDIyIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvcGh5L21lZGlhdGVrLGhkbWktcGh5LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvcGh5L21lZGlhdGVrLGhkbWktcGh5LnlhbWwKaW5kZXggY2Q0YWM0MmVl
NDVlNDY0OGVkNTEyZjY4ZjZmMjhkMWYzZjJlMTExNi4uYWM5MzA2OWY0ODAxM2I3ZjA4MmYxYjY0
ZWUwYTZhNjBhM2E5MTJlYiAxMDA2NDQKLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL3BoeS9tZWRpYXRlayxoZG1pLXBoeS55YW1sCisrKyBiL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9waHkvbWVkaWF0ZWssaGRtaS1waHkueWFtbApAQCAtMzgsMTIgKzM4
LDIwIEBAIHByb3BlcnRpZXM6CiAgICAgbWF4SXRlbXM6IDEKIAogICBjbG9ja3M6CisgICAgbWlu
SXRlbXM6IDEKICAgICBpdGVtczoKICAgICAgIC0gZGVzY3JpcHRpb246IFBMTCByZWZlcmVuY2Ug
Y2xvY2sKKyAgICAgIC0gZGVzY3JpcHRpb246IEhETUkgMjZNSHogY2xvY2sKKyAgICAgIC0gZGVz
Y3JpcHRpb246IEhETUkgUExMMSBjbG9jaworICAgICAgLSBkZXNjcmlwdGlvbjogSERNSSBQTEwy
IGNsb2NrCiAKICAgY2xvY2stbmFtZXM6CisgICAgbWluSXRlbXM6IDEKICAgICBpdGVtczoKICAg
ICAgIC0gY29uc3Q6IHBsbF9yZWYKKyAgICAgIC0gY29uc3Q6IDI2bQorICAgICAgLSBjb25zdDog
cGxsMQorICAgICAgLSBjb25zdDogcGxsMgogCiAgIGNsb2NrLW91dHB1dC1uYW1lczoKICAgICBt
YXhJdGVtczogMQpAQCAtNzksNiArODcsMjAgQEAgcmVxdWlyZWQ6CiAgIC0gIiNwaHktY2VsbHMi
CiAgIC0gIiNjbG9jay1jZWxscyIKIAorYWxsT2Y6CisgIC0gaWY6CisgICAgICBub3Q6CisgICAg
ICAgIHByb3BlcnRpZXM6CisgICAgICAgICAgY29tcGF0aWJsZToKKyAgICAgICAgICAgIGNvbnRh
aW5zOgorICAgICAgICAgICAgICBjb25zdDogbWVkaWF0ZWssbXQ4MTk1LWhkbWktcGh5CisgICAg
dGhlbjoKKyAgICAgIHByb3BlcnRpZXM6CisgICAgICAgIGNsb2NrczoKKyAgICAgICAgICBtYXhJ
dGVtczogMQorICAgICAgICBjbG9jay1uYW1lczoKKyAgICAgICAgICBtYXhJdGVtczogMQorCiBh
ZGRpdGlvbmFsUHJvcGVydGllczogZmFsc2UKIAogZXhhbXBsZXM6CgotLSAKMi41Mi4wCgoKLS0g
CmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
