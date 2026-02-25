Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84B2DFD3756
	for <linux-phy@archiver.kernel.org>; Wed, 25 Feb 2026 12:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TrN8ZmLZRqjqvyrhQ0zEdiO2rQwSjPnExG4l/H1wy5o=; b=NBvJSBE/NBq/tq
	58DN/poJsLc0bqjTNfwdSzwqiHhNA64aHQr4tWSjGQCjM95mq/ZvzKXTNIOSzOmOPnLS0xzBFkn98
	d9mjHClzY08m5YqM7ub5YQgl1yMQBNAAhulF7z1qppaezRFjAlukJaXCJ3wwrhLGSzK+/vnoeyNK+
	JtZMw6GoONIfeFw5XlG+d8PFEMAPvud0hk4JsZyYJXR9ZzXSD2fHcqULyyoIfkOco2rqFf+INbz2H
	k4NqPHiJEjuZiAdeeg/7wDNqRTcoc2DHvDS/Ykxns+N9T7pGtmcXTWtq7ywFiU2S7bFhU57TnNc7e
	gVVZiZrb3HPWW3Hyp7WQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvECJ-0000000415u-16EB;
	Wed, 25 Feb 2026 12:40:59 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvECG-0000000415J-0ohV;
	Wed, 25 Feb 2026 12:40:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1772023252;
	bh=ngaopgY039OjChM8qBLj6ujB7B8vDxU3MnbrCR2xlPs=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=pWdD6mGI99dJH6qGsQBVWGzvUP0BjC6j8ll7dXJ7r3qUj2dev2m56xdT5JREZegZx
	 oJHt7qifVuU+9NB3qfgmjgMXQelsciYLzjO3ZruDropQ7r7UbCYbRLWcG+kBCJXxyr
	 Z54s0yBU5k8OUs0qdu+im92weAONwkkcxqBj9x4v8l77u3xbTmcqQDoGrbX2S2VFmq
	 KAdm5Yi9IDKgkyG5sT/GcbcyH8gFV4j9LQlQretgY/ZDuqATS3ZsxBmZygEXC358kU
	 Y5V20tbJNW/YGHyIbL0x7Yjv2cTXyjT/BH2Ouy/jlwDtljXgjA2aDG7TRGjPMNj4OC
	 MKc3oKTR85SoQ==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id A013417E0BA2;
	Wed, 25 Feb 2026 13:40:51 +0100 (CET)
Message-ID: <cad2e275-8b5d-4023-b3da-a191bfd065c5@collabora.com>
Date: Wed, 25 Feb 2026 13:40:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 20/23] scsi: ufs: mediatek: Back up idle timer in
 per-instance struct
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
 <20260216-mt8196-ufs-v7-20-b5f2907c6da7@collabora.com>
 <5d9723fd6b4ff8430889efb33e0fc93a10c4a880.camel@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <5d9723fd6b4ff8430889efb33e0fc93a10c4a880.camel@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260225_044056_399372_56F25B94 
X-CRM114-Status: UNSURE (   9.39  )
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

SWwgMjUvMDIvMjYgMTE6MzUsIFBldGVyIFdhbmcgKOeOi+S/oeWPiykgaGEgc2NyaXR0bzoKPiBP
biBNb24sIDIwMjYtMDItMTYgYXQgMTQ6MzcgKzAxMDAsIE5pY29sYXMgRnJhdHRhcm9saSB3cm90
ZToKPj4gQEAgLTE4Nyw2ICsxODcsNyBAQCBzdHJ1Y3QgdWZzX210a19ob3N0IHsKPj4gIMKgCXUx
NiByZWZfY2xrX2dhdGluZ193YWl0X3VzOwo+PiAgwqAJdTMyIGlwX3ZlcjsKPj4gIMKgCWJvb2wg
bGVnYWN5X2lwX3ZlcjsKPj4gKwl1MzIgaGliZXJuYXRlX2lkbGVfdGltZXI7Cj4gCj4gVGhlIG5h
bWUgaGliZXJuYXRlX2lkbGVfdGltZXIgaXMgc29tZXdoYXQgY29uZnVzaW5nIGluCj4gdGVybXMg
b2YgaXRzIGludGVuZGVkIHVzZS4gSSB3b3VsZCBzdWdnZXN0IHVzaW5nCj4gYmFja3VwX2FoaXQg
b3Igc2F2ZWRfYWhpdCBpbnN0ZWFkLgo+IAoKSW4gbXkgb3BpbmlvbiAiYWhpdCIgaXMgd2F5IGxl
c3MgcmVhZGFibGUgdGhhbiAiaGliZXJuYXRlX2lkbGVfdGltZXIiLgoKVGhlIGhpYmVybmF0ZV9p
ZGxlX3RpbWVyIG1lbWJlciBoZXJlIHN0b3JlcyB0aGUgQVVUTyBISUJFUk5BVEUgSURMRSBUSU1F
UiwgYW5kCnRoZXJlIGlzIG5vIG90aGVyIHBvc3NpYmxlIGhpYmVybmF0aW9uIHN0YXRlIGluIHRo
aXMgZHJpdmVyLgoKTm90IHN1cmUgd2h5IHRoaXMgY291bGQgZXZlciBiZSBjb25mdXNpbmcgaW4g
dGVybXMgb2YgaXRzIGludGVuZGVkIHVzZTogaXRzCmludGVuZGVkIHVzZSBpcyB0byBzdG9yZSB0
aGUgKGF1dG8pIGhpYmVybjggaWRsZSB0aW1lciwgYW5kIHRoZSBtZW1iZXIgaXMgY2FsbGVkCmhp
YmVybmF0ZV9pZGxlX3RpbWVyLgoKSW4gbXkgZXllcywgdGhhdCBtYXRjaGVzIDE6MSB3aXRoIGl0
cyB1c2FnZS4gTG91ZCBhbmQgY2xlYXIuCgpSZWdhcmRzLApBbmdlbG8KCj4gVGhhbmtzCj4gUGV0
ZXIKPiAKCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcGh5Cg==
