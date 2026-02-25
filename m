Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D142FD3756
	for <linux-phy@archiver.kernel.org>; Wed, 25 Feb 2026 12:37:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D3oie6yUBV0ad/WTLadmWJ6j0XLReP0pfxTiUdhiWLY=; b=G2AdMzGj7JEjTs
	c09OpNjuqFyHdmoWzeyb1LtBkVTCAGkNbXYMwpUAzaVICz+BeZN+6fXaN/1955rCbD3jMMG0Itl/K
	tndK+jj2ulFzY2M/sGToak24Ej9QxuUng2zcBr/L4lCLu+9JBE8CFBjiC71zdtpQqHYBvDkRLsdK1
	GmjUqXbfNBEu2Tr+ltQ47wrQIzyBgCBAzJPuUpFjf9Uxki0ILSJWPHNnBxe6ks9dWaJj2vpCykvIS
	28xtCRm7AKuYMtSfvCqKiGihhAO8dunIKs3YkeGXemh8BXkGJq/4WXbX5+6LcLAzieXCNLuZOuftG
	5YctkDEBrFr7R2eFOOCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvE97-000000040sM-2JR9;
	Wed, 25 Feb 2026 12:37:41 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvE94-000000040rR-09TW;
	Wed, 25 Feb 2026 12:37:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1772023055;
	bh=bZmckL3Yy8Teh5h9dCs5VOGu35lRyyRphjRBHRpxOD0=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=jbVLFS2MsxEpQj+caszgA5d0ZbkwnS2Zr/hl9FkzC6cS4XZXj3onpz4CU7rPdQVKc
	 2iXclG/fHvfgyBQ0RVuylUQXOfKwjb84ZHaCaQPwxxoxfs874/cmZqnUsVJsVDjUEZ
	 RYspmveWD0K2HGdfJ0VxLxU8TaCpbfaZZpX6cYdDJIf41/V+5TXyVtDWno/uaBFb76
	 MR6b4vof+Kn015TGbuWZ4AbvCLprACkh30T66pjYS7LdmIACy90PjA30DcGBQY0yrk
	 pvZXuR7NH1VX3q6FIgpBhmC71XuB7H+6ZZRWSRrQifKRXEq4J5uEUkWOBQ79s3Irqy
	 dD9PMWFMjXkIw==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 47CA017E012E;
	Wed, 25 Feb 2026 13:37:34 +0100 (CET)
Message-ID: <edf07a47-77be-4acc-8825-b14a5d1838df@collabora.com>
Date: Wed, 25 Feb 2026 13:37:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 18/23] scsi: ufs: mediatek: Don't acquire dvfsrc-vcore
 twice
To: =?UTF-8?B?UGV0ZXIgV2FuZyAo546L5L+h5Y+LKQ==?= <peter.wang@mediatek.com>,
 "chu.stanley@gmail.com" <chu.stanley@gmail.com>,
 "robh@kernel.org" <robh@kernel.org>,
 =?UTF-8?B?Q2h1bmZlbmcgWXVuICjkupHmmKXls7Ap?= <Chunfeng.Yun@mediatek.com>,
 "kishon@kernel.org" <kishon@kernel.org>,
 "James.Bottomley@HansenPartnership.com"
 <James.Bottomley@HansenPartnership.com>,
 "bvanassche@acm.org" <bvanassche@acm.org>,
 "neil.armstrong@linaro.org" <neil.armstrong@linaro.org>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>,
 =?UTF-8?B?Q2hhb3RpYW4gSmluZyAo5LqV5pyd5aSpKQ==?=
 <Chaotian.Jing@mediatek.com>, "lgirdwood@gmail.com" <lgirdwood@gmail.com>,
 "nicolas.frattaroli@collabora.com" <nicolas.frattaroli@collabora.com>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
 "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
 "alim.akhtar@samsung.com" <alim.akhtar@samsung.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "avri.altman@wdc.com" <avri.altman@wdc.com>,
 "martin.petersen@oracle.com" <martin.petersen@oracle.com>,
 "broonie@kernel.org" <broonie@kernel.org>
Cc: "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>,
 "kernel@collabora.com" <kernel@collabora.com>
References: <20260216-mt8196-ufs-v7-0-b5f2907c6da7@collabora.com>
 <20260216-mt8196-ufs-v7-18-b5f2907c6da7@collabora.com>
 <010d77378b9cca477439b92d92c8f5bfb2d4df65.camel@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <010d77378b9cca477439b92d92c8f5bfb2d4df65.camel@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260225_043738_225107_04961189 
X-CRM114-Status: UNSURE (   9.90  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

SWwgMjUvMDIvMjYgMTE6MzQsIFBldGVyIFdhbmcgKOeOi+S/oeWPiykgaGEgc2NyaXR0bzoKPiBP
biBNb24sIDIwMjYtMDItMTYgYXQgMTQ6MzcgKzAxMDAsIE5pY29sYXMgRnJhdHRhcm9saSB3cm90
ZToKPj4gQEAgLTUxOSwxNSArNTE5LDEzIEBAIHN0YXRpYyB2b2lkIHVmc19tdGtfYm9vc3RfY3J5
cHQoc3RydWN0IHVmc19oYmEKPj4gKmhiYSwgYm9vbCBib29zdCkKPj4gIMKgewo+PiAgwqAJc3Ry
dWN0IHVmc19tdGtfaG9zdCAqaG9zdCA9IHVmc2hjZF9nZXRfdmFyaWFudChoYmEpOwo+PiAgwqAJ
c3RydWN0IHVmc19tdGtfY3J5cHRfY2ZnICpjZmc7Cj4+IC0Jc3RydWN0IHJlZ3VsYXRvciAqcmVn
Owo+PiAgwqAJaW50IHZvbHQsIHJldDsKPj4gICAKPj4gLQlpZiAoIXVmc19tdGtfaXNfYm9vc3Rf
Y3J5cHRfZW5hYmxlZChoYmEpKQo+PiArCWlmICghdWZzX210a19pc19ib29zdF9jcnlwdF9lbmFi
bGVkKGhiYSkgfHwgIWhvc3QtCj4+PiByZWdfdmNvcmUpCj4+ICDCoAkJcmV0dXJuOwo+IAo+IElm
IGhvc3QtPnJlZ192Y29yZSBpcyBOVUxMLAo+IHNob3VsZCB1ZnNfbXRrX2lzX2Jvb3N0X2NyeXB0
X2VuYWJsZWQgYmUgZmFsc2U/Cj4gU28gd2UgZG9u4oCZdCBuZWVkIHRvIGNoZWNrIGJvdGgsIHJp
Z2h0PwoKV2UgbmVlZCB0byBjaGVjayBib3RoIGJlY2F1c2UgVUZTX01US19DQVBfQk9PU1RfQ1JZ
UFRfRU5HSU5FIGRlcGVuZHMgb246CiAgMS4gcmVnX3Zjb3JlCiAgMi4gY2xvY2tzIChjcnlwdF9t
dXgsIGNyeXB0X2xwLCBjcnlwdF9wZXJmKS4KCkZhaWxpbmcgdG8gY2hlY2sgZm9yIGJvdGggdWZz
X210a19pc19ib29zdF9jcnlwdF9lbmFibGVkKCkgYW5kIHJlZ192Y29yZSBoZXJlCndpbGwgaW50
cm9kdWNlIGEgYnVnIHRoYXQgbWF5IHJlc3VsdCBpbiBzdG9yYWdlIGNvcnJ1cHRpb24uCgpTbyB5
ZXMsIE5pY29sYXMgaXMgY2hlY2tpbmcgYm90aCBiZWNhdXNlIGl0IGlzICpyZXF1aXJlZCogdG8g
Y2hlY2sgYm90aC4KClJlZ2FyZHMsCkFuZ2VsbwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QK
bGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
