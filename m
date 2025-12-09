Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E74D0D3B981
	for <linux-phy@archiver.kernel.org>; Tue,  9 Dec 2025 16:34:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tVzfO5p65N6Ozp9kxpFkXF5r3APbAQryb/d4uaJ+dlo=; b=IG04q5xb9kSmyh
	gmys8ilr8JXNCEC5lVpfV01pSFPicKu68NlPglTFoPE9cma27LrEeo4VX14SvOlnsSuy6wCS1ukb8
	S56QsafNbB5OmCN9RS5pJcY12d3DliCvoKF7obySozvQd4yx+Uv98qMnnFaefImQKYzp0T32ANFQv
	YFzebFu2BTr7+pnnY87NcEbvdklV0fJ+fwfi1BYnK9ntZRL+m7+gmQKjBTvIG8jWFQGT8UayNz2qm
	/hTWCYJ1MCq26drTLhpO/SNGU8I+f8LBeDTlQDHrd8zYDIW/FuocttDKyBw5hEvvaS7Xrj6lD++1n
	gGwyckwkp97kr3X1uZvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vT0fx-0000000EWiY-1snO;
	Tue, 09 Dec 2025 16:34:57 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vT0fp-0000000EWYP-3be7;
	Tue, 09 Dec 2025 16:34:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1765298087;
	bh=D155m0dMAjWiokZAY7tsZUWjRlmivh1T9mFpxqvCODE=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=j+qrwXrNQGYEoW43YEXq6se8XNSsAjnX/kixuXIUDU74/DHpALB71ZkSB06ZZIAY9
	 szeoeb5GGVMSFik8Zs2Sq3xGh4yBTJAoD3AdKqzjaTZvU+k1vOut0xLTMyXAQNN8fz
	 BMRxU+zemYTlvYeUndmN3trp9Vt+kH88W3SmQ5MaDJF506lmiA5weqyBMmdTiJEmIF
	 LYXv21ATFzyRiFHxy81WrSDcM8trrrfKvBQCeBn0z21N1fpnQ7fcJVAnMqFyOj1R5e
	 w4UMYIBxBMvvLSo5MyPgfal1XLwkY3/HqOJZYDP5lD3RaSGvc+av9Hou7D2K5njXsV
	 IxCY9kjfeA2sg==
Received: from yukiji.home (amontpellier-657-1-116-247.w83-113.abo.wanadoo.fr [83.113.51.247])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: laeyraud)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id A4D2B17E153D;
	Tue,  9 Dec 2025 17:34:46 +0100 (CET)
From: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
Date: Tue, 09 Dec 2025 17:34:33 +0100
Subject: [PATCH 03/12] dt-bindings: phy: mediatek,hdmi-phy: Document extra
 clocks for MT8195
MIME-Version: 1.0
Message-Id: <20251209-mtk-genio-evk-hdmi-support-v1-3-9a6106effba6@collabora.com>
References: <20251209-mtk-genio-evk-hdmi-support-v1-0-9a6106effba6@collabora.com>
In-Reply-To: <20251209-mtk-genio-evk-hdmi-support-v1-0-9a6106effba6@collabora.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765298083; l=1906;
 i=louisalexis.eyraud@collabora.com; s=20250113; h=from:subject:message-id;
 bh=5hUKertYPrurznVcSH8uzvnKUCkTlAWRfoUyf3tOLDw=;
 b=yGTBS4qBLe2IPVOGk6LE9R661NMRTP144cZHShDIwPCuvjh95qxcTz+VZsNYzgulRenfyG7SE
 74uO8BYyyHYAxUnZ99zDWC4K8/g/eIfRbkDcR4GcrbTI6Oe1jkPRzJK
X-Developer-Key: i=louisalexis.eyraud@collabora.com; a=ed25519;
 pk=CHFBDB2Kqh4EHc6JIqFn69GhxJJAzc0Zr4e8QxtumuM=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251209_083450_090352_699330BA 
X-CRM114-Status: UNSURE (   6.84  )
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
LWJ5OiBOw61jb2xhcyBGLiBSLiBBLiBQcmFkbyA8bmZyYXByYWRvQGNvbGxhYm9yYS5jb20+ClNp
Z25lZC1vZmYtYnk6IExvdWlzLUFsZXhpcyBFeXJhdWQgPGxvdWlzYWxleGlzLmV5cmF1ZEBjb2xs
YWJvcmEuY29tPgotLS0KIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9tZWRpYXRlayxoZG1p
LXBoeS55YW1sIHwgMzYgKysrKysrKysrKysrKysrKysrKy0tLQogMSBmaWxlIGNoYW5nZWQsIDMy
IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9tZWRpYXRlayxoZG1pLXBoeS55YW1sIGIvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9tZWRpYXRlayxoZG1pLXBoeS55YW1sCmlu
ZGV4IGNkNGFjNDJlZTQ1ZTQ2NDhlZDUxMmY2OGY2ZjI4ZDFmM2YyZTExMTYuLjkxZjgxMTg2ODlk
NWU4MzhjNGQ3NTI2NDgyMmJiMDlhMDBmZWEyMWIgMTAwNjQ0Ci0tLSBhL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvbWVkaWF0ZWssaGRtaS1waHkueWFtbAorKysgYi9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L21lZGlhdGVrLGhkbWktcGh5LnlhbWwK
QEAgLTM4LDEyICszOCwxMiBAQCBwcm9wZXJ0aWVzOgogICAgIG1heEl0ZW1zOiAxCiAKICAgY2xv
Y2tzOgotICAgIGl0ZW1zOgotICAgICAgLSBkZXNjcmlwdGlvbjogUExMIHJlZmVyZW5jZSBjbG9j
aworICAgIG1pbkl0ZW1zOiAxCisgICAgbWF4SXRlbXM6IDQKIAogICBjbG9jay1uYW1lczoKLSAg
ICBpdGVtczoKLSAgICAgIC0gY29uc3Q6IHBsbF9yZWYKKyAgICBtaW5JdGVtczogMQorICAgIG1h
eEl0ZW1zOiA0CiAKICAgY2xvY2stb3V0cHV0LW5hbWVzOgogICAgIG1heEl0ZW1zOiAxCkBAIC03
OSw2ICs3OSwzNCBAQCByZXF1aXJlZDoKICAgLSAiI3BoeS1jZWxscyIKICAgLSAiI2Nsb2NrLWNl
bGxzIgogCithbGxPZjoKKyAgLSBpZjoKKyAgICAgIHByb3BlcnRpZXM6CisgICAgICAgIGNvbXBh
dGlibGU6CisgICAgICAgICAgY29uc3Q6IG1lZGlhdGVrLG10ODE5NS1oZG1pLXBoeQorICAgIHRo
ZW46CisgICAgICBwcm9wZXJ0aWVzOgorICAgICAgICBjbG9ja3M6CisgICAgICAgICAgaXRlbXM6
CisgICAgICAgICAgICAtIGRlc2NyaXB0aW9uOiBQTEwgcmVmZXJlbmNlIGNsb2NrCisgICAgICAg
ICAgICAtIGRlc2NyaXB0aW9uOiBIRE1JIDI2TUh6IGNsb2NrCisgICAgICAgICAgICAtIGRlc2Ny
aXB0aW9uOiBIRE1JIFBMTDEgY2xvY2sKKyAgICAgICAgICAgIC0gZGVzY3JpcHRpb246IEhETUkg
UExMMiBjbG9jaworICAgICAgICBjbG9jay1uYW1lczoKKyAgICAgICAgICBpdGVtczoKKyAgICAg
ICAgICAgIC0gY29uc3Q6IHBsbF9yZWYKKyAgICAgICAgICAgIC0gY29uc3Q6IGhkbWlfMjZtCisg
ICAgICAgICAgICAtIGNvbnN0OiBoZG1pX3BsbDEKKyAgICAgICAgICAgIC0gY29uc3Q6IGhkbWlf
cGxsMgorICAgIGVsc2U6CisgICAgICBwcm9wZXJ0aWVzOgorICAgICAgICBjbG9ja3M6CisgICAg
ICAgICAgaXRlbXM6CisgICAgICAgICAgICAtIGRlc2NyaXB0aW9uOiBQTEwgcmVmZXJlbmNlIGNs
b2NrCisgICAgICAgIGNsb2NrLW5hbWVzOgorICAgICAgICAgIGl0ZW1zOgorICAgICAgICAgICAg
LSBjb25zdDogcGxsX3JlZgorCiBhZGRpdGlvbmFsUHJvcGVydGllczogZmFsc2UKIAogZXhhbXBs
ZXM6CgotLSAKMi41Mi4wCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
