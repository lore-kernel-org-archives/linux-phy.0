Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 058DCC76196
	for <linux-phy@archiver.kernel.org>; Mon,  3 Apr 2023 16:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QpA45PST5AlYjK15a1Qod/P+s1sGyQQOFkOLt8qdX7I=; b=cCTGjedlL2Ln7X
	/V6+Vl1xREL+v/eHYDv2lhxn0CG04f6K1P+eGsLREMm5Xi7uFUoDJ7/HBfivsEGLQ4Q9G54aMHwcF
	2XoDu694rYxIQbFPwjiwagKS8UJL1F6hhopdorHTd6Nw327gldCqhVxfFAuG0ZhdlcdEfgmRqcL2x
	IsFnzr1i8hj17HKAjN4EA9rmbdHJPl/IKriNVJbBJr5D3IZFmPJFG2LHD05t+DWUquaTyyNoElS3F
	9V9cBmnIHH4ATp4ExpRRJsNblHlLRX/40PAw41VJ8s4kZX99KddlyN3ygQd3LVmy+RaXNdyOCq7kq
	gmCPN/6Z1d2VBsYA89hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjNAp-00FyiJ-27;
	Mon, 03 Apr 2023 16:36:51 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjNAl-00Fygw-2H;
	Mon, 03 Apr 2023 16:36:48 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 3E6F0621C3;
	Mon,  3 Apr 2023 16:36:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1C00CC433A7;
	Mon,  3 Apr 2023 16:36:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680539806;
	bh=Kt9moSViwJx5yBWxvRA4G9k3CxuCk+dcQWzL3AwN3FE=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=ahWI5wtUMMDF/JK6RX094BK6NZ4T3EfR3FIlVMMZneVIfsnYjpL09ROA1rQ6N5jfQ
	 sRX9euqVfFzODLoLQso+AiLu0FoMjhWvYGA5C7Cdd/+NzJiHkqmP5bCMRxQPmEli69
	 URsh71mUZUFo3QSt1BlR6mhlS4XBNMQXcRgbncFMGYq8HoteBav1rRoR3IrUzF67dp
	 Vs/ZGSfMozsTso9jBogHMNAOICUDN1o7lp1uSHkGCUmL7mxK1k7BW5g/kCsM1bVBFr
	 8dtlBK8VMT8B6Om9g1PGZ+jeQxgi5TI2dbmkKnwTP3tQ7/cI3ydNFRXEp4NS7lXPPF
	 Is0zZPWMKCb/w==
Received: by mail-lj1-f176.google.com with SMTP id o20so28053578ljp.3;
        Mon, 03 Apr 2023 09:36:46 -0700 (PDT)
X-Gm-Message-State: AAQBX9fRNacyGe6iWCzKoSjpU5YHBy3guJ+qfgu20AZuy8FS9jjeS2RX
	om3a56tPXVapx6x33DWe7UZuKD1PVk0OojcoEg==
X-Google-Smtp-Source: AKy350YI8MSRmypV7liUfnAR04I0V60fJ/SJAQ6mMQYLy3vXtuAOgKEuMnQZv1aQSY0uDcu20Z1RIZDPBPLHhmfbBBA=
X-Received: by 2002:a2e:9dda:0:b0:2a6:199a:bd38 with SMTP id
 x26-20020a2e9dda000000b002a6199abd38mr30959ljj.10.1680539804050; Mon, 03 Apr
 2023 09:36:44 -0700 (PDT)
MIME-Version: 1.0
References: <20230403071929.360911-1-jstephan@baylibre.com> <20230403071929.360911-3-jstephan@baylibre.com>
In-Reply-To: <20230403071929.360911-3-jstephan@baylibre.com>
From: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Tue, 4 Apr 2023 00:36:32 +0800
X-Gmail-Original-Message-ID: <CAAOTY_-cd0gQ6AEK_bLZf6m87M0G7Ag_AYKKPBFyBXGgh-2y1g@mail.gmail.com>
Message-ID: <CAAOTY_-cd0gQ6AEK_bLZf6m87M0G7Ag_AYKKPBFyBXGgh-2y1g@mail.gmail.com>
Subject: Re: [PATCH 2/2] phy: mtk-mipi-csi: add driver for CSI phy
To: Julien Stephan <jstephan@baylibre.com>
Cc: Phi-bang Nguyen <pnguyen@baylibre.com>, Louis Kuo <louis.kuo@mediatek.com>, 
	Chunfeng Yun <chunfeng.yun@mediatek.com>, Andy Hsieh <andy.hsieh@mediatek.com>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	"moderated list:ARM/Mediatek USB3 PHY DRIVER" <linux-arm-kernel@lists.infradead.org>, 
	"moderated list:ARM/Mediatek USB3 PHY DRIVER" <linux-mediatek@lists.infradead.org>, 
	"open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, 
	"open list:DRM DRIVERS FOR MEDIATEK" <dri-devel@lists.freedesktop.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230403_093647_817443_A1600D58 
X-CRM114-Status: GOOD (  13.53  )
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

SGksIEp1bGllbjoKCkp1bGllbiBTdGVwaGFuIDxqc3RlcGhhbkBiYXlsaWJyZS5jb20+IOaWvCAy
MDIz5bm0NOaciDPml6Ug6YCx5LiAIOS4i+WNiDM6MjDlr6vpgZPvvJoKPgo+IEZyb206IFBoaS1i
YW5nIE5ndXllbiA8cG5ndXllbkBiYXlsaWJyZS5jb20+Cj4KPiBUaGlzIGlzIGEgbmV3IGRyaXZl
ciB0aGF0IHN1cHBvcnRzIHRoZSBNSVBJIENTSSBDRC1QSFkgZm9yIG1lZGlhdGVrCj4gbXQ4MzY1
IHNvYwo+Cj4gU2lnbmVkLW9mZi1ieTogTG91aXMgS3VvIDxsb3Vpcy5rdW9AbWVkaWF0ZWsuY29t
Pgo+IFNpZ25lZC1vZmYtYnk6IFBoaS1iYW5nIE5ndXllbiA8cG5ndXllbkBiYXlsaWJyZS5jb20+
Cj4gW0p1bGllbiBTdGVwaGFuOiB1c2UgcmVnbWFwXQo+IFtKdWxpZW4gU3RlcGhhbjogdXNlIEdF
Tk1BU0tdCj4gQ28tZGV2ZWxvcGVkLWJ5OiBKdWxpZW4gU3RlcGhhbiA8anN0ZXBoYW5AYmF5bGli
cmUuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEp1bGllbiBTdGVwaGFuIDxqc3RlcGhhbkBiYXlsaWJy
ZS5jb20+Cj4gLS0tCj4gIC4uLi9iaW5kaW5ncy9waHkvbWVkaWF0ZWssY3NpLXBoeS55YW1sICAg
ICAgICB8ICAgOSArLQo+ICBNQUlOVEFJTkVSUyAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgfCAgIDEgKwo+ICBkcml2ZXJzL3BoeS9tZWRpYXRlay9LY29uZmlnICAgICAgICAgICAg
ICAgICAgfCAgIDggKwo+ICBkcml2ZXJzL3BoeS9tZWRpYXRlay9NYWtlZmlsZSAgICAgICAgICAg
ICAgICAgfCAgIDIgKwo+ICAuLi4vcGh5L21lZGlhdGVrL3BoeS1tdGstbWlwaS1jc2ktcngtcmVn
LmggICAgfCA0MzUgKysrKysrKysrKysrKysrKysrCj4gIGRyaXZlcnMvcGh5L21lZGlhdGVrL3Bo
eS1tdGstbWlwaS1jc2kuYyAgICAgICB8IDM5MiArKysrKysrKysrKysrKysrCj4gIDYgZmlsZXMg
Y2hhbmdlZCwgODQ1IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gIGNyZWF0ZSBtb2Rl
IDEwMDY0NCBkcml2ZXJzL3BoeS9tZWRpYXRlay9waHktbXRrLW1pcGktY3NpLXJ4LXJlZy5oCj4g
IGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL3BoeS9tZWRpYXRlay9waHktbXRrLW1pcGktY3Np
LmMKPgoKW3NuaXBdCgo+ICsKPiArI2RlZmluZSBSRUdNQVBfQklUKG1hcCwgcmVnLCBmaWVsZCwg
dmFsKSBcCj4gKyAgICAgICByZWdtYXBfdXBkYXRlX2JpdHMoKG1hcCksIHJlZywgcmVnIyNfIyNm
aWVsZCMjX01BU0ssIFwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAodmFsKSA8PCByZWcj
I18jI2ZpZWxkIyNfU0hJRlQpCj4gKwoKVXNlIEZJRUxEX1BSRVAoKSBtYWNybyAgc28geW91IGNh
biBkcm9wIHRoZSBkZWZpbml0aW9uIG9mIFNISUZUIHN5bWJvbC4KClJlZ2FyZHMsCkNodW4tS3Vh
bmcuCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1w
aHkK
