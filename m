Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 535C6D2ECF7
	for <linux-phy@archiver.kernel.org>; Tue, 20 Jan 2026 09:43:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ai5eQ5LNpJFOeGnGgfnDMw1xYplBbfm38uy8p4reLWU=; b=Erg1pRc25cgcqj
	7YXvScLO8fKEwPn7KfWsZxxH/bf7SCAsPb+ArWQlJmxEBPHbnalqvMSgfo+9rjMFfRa4LnaNE91t0
	mGYZKYjttrbL7pyXvQNno2DW8hSrA8bXGqMzQ0d/osS8hxZt2IYtA7sjTlKEiS54GsAV9W5qHEcXj
	hzmOFpzK1k1bBLN4LlBQv5FOOppfBhWTIgWWTWS7KaJ0hNkmqYMp0jqjjnwvPZLXIQGAA8iGpPe53
	9M6oTZp2IqZx/sat5hcjQy1iWk+1FfBxB2yvqR4pybMCZaUYEKW+Nz02W4GwVcgSaYaRivmLjqWB9
	TNiNek7CERNfes0bpyEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vi8Gy-00000003YBy-0GWr;
	Tue, 20 Jan 2026 09:43:40 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vi8Gu-00000003YAp-1Tl3;
	Tue, 20 Jan 2026 09:43:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1768902211;
	bh=cFmtw+W0nIPjyA9JXnCJ34TLkLN51eHKUkL0cw7+gFs=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=aJf6ki/55o9knlTHmfUazfZ+yXtr8Aw7sNER1HrKmXGGtA57yT7kPoc1Sn+kz30iz
	 mGJoCamBbqY+HYJ0ltn/pgn6zRhCaK2nMrMgqGG4rI30O0xzbtrzPZJpYZnW2sJ/Zy
	 nC/6gjaBFSUnc0pSjDic7VxOFBXmGZYFT/BaVDriwRu9OdtUlgkG9Qn8drbBqxAfw9
	 KCsNLvo4KRWqXSHqZLQtfEeGt17ta1ZWgR6NXHLjKD5S2zU2hkCwKNvyaWzHc7JtWb
	 cFeBc6eKGSBkjd6wpWnPgYGxX2myF//YDwVD4YbO7f1KMXiWJjwR95tsP8ujPxB7Fb
	 x1A9PUrSKfZ4w==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 49F3F17E0CF3;
	Tue, 20 Jan 2026 10:43:30 +0100 (CET)
Message-ID: <c3878cb0-cf37-41a3-a875-cf8f2a604b0c@collabora.com>
Date: Tue, 20 Jan 2026 10:43:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 11/24] scsi: ufs: mediatek: Rework probe function
To: =?UTF-8?B?UGV0ZXIgV2FuZyAo546L5L+h5Y+LKQ==?= <peter.wang@mediatek.com>,
 "chu.stanley@gmail.com" <chu.stanley@gmail.com>,
 "robh@kernel.org" <robh@kernel.org>,
 =?UTF-8?B?Q2h1bmZlbmcgWXVuICjkupHmmKXls7Ap?= <Chunfeng.Yun@mediatek.com>,
 "kishon@kernel.org" <kishon@kernel.org>,
 "James.Bottomley@HansenPartnership.com"
 <James.Bottomley@HansenPartnership.com>,
 "bvanassche@acm.org" <bvanassche@acm.org>,
 =?UTF-8?B?Q2hhb3RpYW4gSmluZyAo5LqV5pyd5aSpKQ==?=
 <Chaotian.Jing@mediatek.com>, "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "lgirdwood@gmail.com" <lgirdwood@gmail.com>,
 "nicolas.frattaroli@collabora.com" <nicolas.frattaroli@collabora.com>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
 "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
 "alim.akhtar@samsung.com" <alim.akhtar@samsung.com>,
 "krzk@kernel.org" <krzk@kernel.org>,
 "neil.armstrong@linaro.org" <neil.armstrong@linaro.org>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "avri.altman@wdc.com" <avri.altman@wdc.com>,
 "broonie@kernel.org" <broonie@kernel.org>,
 "martin.petersen@oracle.com" <martin.petersen@oracle.com>
Cc: "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>,
 "kernel@collabora.com" <kernel@collabora.com>
References: <20260108-mt8196-ufs-v5-0-49215157ec41@collabora.com>
 <20260108-mt8196-ufs-v5-11-49215157ec41@collabora.com>
 <81ed17eb-2170-4e97-b56d-488b5335ff5c@kernel.org>
 <dd2eba99adaddf7517f06acf7805d32e261fafa4.camel@mediatek.com>
 <87887adf-2c94-48c2-8f83-4e772ab50f60@kernel.org>
 <e9a6da3998195b9dbda5abd26bc6dd5d3aca07ff.camel@mediatek.com>
 <66ca211a-c909-4d0c-a22c-9cbd3489d372@kernel.org>
 <46cb450f92887ceba07614dc85ed495f6af7f602.camel@mediatek.com>
 <26c68bb1-1e63-4b47-babc-21ae27e3205e@collabora.com>
 <74944c55418976375955430d27ac568149d555f1.camel@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <74944c55418976375955430d27ac568149d555f1.camel@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260120_014336_569278_2F82032D 
X-CRM114-Status: GOOD (  11.09  )
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

SWwgMTMvMDEvMjYgMDg6MjYsIFBldGVyIFdhbmcgKOeOi+S/oeWPiykgaGEgc2NyaXR0bzoKPiBP
biBNb24sIDIwMjYtMDEtMTIgYXQgMTY6MDIgKzAxMDAsIEFuZ2Vsb0dpb2FjY2hpbm8gRGVsIFJl
Z25vIHdyb3RlOgo+PiBObywgTWVkaWFUZWsncyByZXNldCBoYXJkd2FyZSBpbXBsZW1lbnRhdGlv
biBpcyBub3QgdGhlIHNhbWUgYXMgVGV4YXMKPj4gSW5zdHJ1bWVudHMuCj4+IEl0IHdhcyAqdmVy
eSBzaW1pbGFyKiB0byBUSSBpbiB0aGUgcGFzdCAoeWVhcnMgYWdvLCBhcm91bmQgdGhlIE1UNjc5
NQo+PiBIZWxpbwo+PiBnZW5lcmF0aW9uIHRpbWVzKS4KPj4KPj4gTWVkaWFUZWsncyByZXNldCBj
b250cm9sbGVyIC0gYnkgaGFyZHdhcmUgLSBpcyBkZWZpbml0ZWx5IGRpZmZlcmVudAo+PiBmcm9t
IHRoZSBvbmUKPj4gZm91bmQgaW4gVEkgU29Dcy4KPj4KPj4gUmVnYXJkcywKPj4gQW5nZWxvCj4g
Cj4gSSBkaWQgbm90IG5vdGljZSB0aGlzIGNoYW5nZS4KPiBXaWxsIHlvdSBiZSBoZWxwaW5nIHRv
IHVwc3RyZWFtIE1lZGlhVGVrJ3MgcmVzZXQgY29udHJvbGxlciBpbnN0ZWFkIG9mCj4gVEkncz8K
PiAKClRoZSBtYWluIHJlc2V0IGNvbnRyb2xsZXJzIGFyZSBhbHJlYWR5IGludGVncmF0ZWQgaW4g
Y2xvY2sgZHJpdmVycyBzaW5jZQouLi4gd2VsbCwgeWVhcnMgYWdvLgoKSWYgdGhlcmUncyBhbnkg
YWRkaXRpb25hbCByZXNldCBjb250cm9sbGVyIHRoYXQgaXMgbWlzc2luZywgYW5kIHNwZWNpYWwg
dG8KVUZTLCBhbmQgdGhhdCdzIG5vdCBpbiB0aGUgVUZTIGNsb2NrIGRyaXZlciwgeWVzIHdlIGNh
biB1cHN0cmVhbSB0aGF0LgoKQ2hlZXJzLApBbmdlbG8KCj4gVGhhbmtzCj4gUGV0ZXIKPiAKCgoK
LS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
