Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BFA5BF30922
	for <linux-phy@archiver.kernel.org>; Thu,  5 Mar 2026 09:58:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MwHr87tnz6woJSdeDeZlGOmZzCMKZn0xFZ6UKWBW62I=; b=gEQpGFU21pUqhk
	D+H2+s8jEZ/zmhn7hxMtdA4cEgUFYR3Gc5p5VMI3xMcWljvar44yhXteLG5DnsfL9HqUGKYvs9Dwm
	wlNShAyYi8zNM1ojeAHy3O9W07wb+Yb/KPjdOGYmCJ5q/XQQxQBkZ2QFoItdqtkHVAQ5f/YYUgMqj
	Snr+Hmru4i2O5NFVS5q42YXG13OFFdUG85YaSLTr56CpYDn3ltjPSVt5oE1HPk92qOItGcSD+u8zs
	uAfMbVS/QHWMNsB3AR+sTYHp+iprUspH5UI0LR1FF8L6MO7PQ9SYT2l88ns19dZl7ftJP4YOfQuXv
	BCWEWXgqdS1xmG4WnhfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy5TC-00000001TuW-1yE0;
	Thu, 05 Mar 2026 09:58:14 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy5TA-00000001Tsg-10Qo;
	Thu, 05 Mar 2026 09:58:13 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1772704683; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=kBoMhSSPZC5RsRfS4lwUYt+DXbeKYd998viSF8OfQgMUxb/zXbxyemZauGhuLeYTbPBelQjuTfEL9D0+cWo40OIheo5HwWCwpwlhtF3FhqUusAxKkTY416Dmd3KJxG3Sfv/E4HjLm8ThGO3Xq0gjfknscHV4kjjKHfgvW8ob+Yc=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1772704683; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=t+dM/ivqOh9qFQC6P4MhMScrDFmdYfA44gwq4G7yKZA=; 
	b=fK4RwTEpB/dukN63XUnC6gB0R4xTNhIruor1iiIurQIm8TsF4kKFxi+gMjRHWSoxFymTAVKJ+sVEYYCSrvj5kS8FLsPP41vixq+SkwRlXPTwlKClaT5CvK20ffWU7wnncuAFyu8PJwB95ylrXrsozTseCxJZpS1ZLScgCqos7R4=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1772704683;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=t+dM/ivqOh9qFQC6P4MhMScrDFmdYfA44gwq4G7yKZA=;
	b=J/301NWaZdxu3OBlGpm+tcT8tF32LtInDWcbPlcVv41C/2xK55Pi9n2RO8pJgD/l
	wkCpA7kwqrt9OFuobYiiO8tC+AKWML/dxJuO+AITRr9jlC6DgJvNBBrTSC2C5FGya/f
	yyvNJiQC2PXlDeManSvq/+q1AWUAAinyKmpE1e2Y=
Received: by mx.zohomail.com with SMTPS id 1772704680982221.39391748095557;
	Thu, 5 Mar 2026 01:58:00 -0800 (PST)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
To: "chu.stanley@gmail.com" <chu.stanley@gmail.com>,
 "robh@kernel.org" <robh@kernel.org>,
 Chunfeng Yun =?UTF-8?B?KOS6keaYpeWzsCk=?= <Chunfeng.Yun@mediatek.com>,
 "kishon@kernel.org" <kishon@kernel.org>,
 "James.Bottomley@HansenPartnership.com"
 <James.Bottomley@hansenpartnership.com>,
 "bvanassche@acm.org" <bvanassche@acm.org>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 "neil.armstrong@linaro.org" <neil.armstrong@linaro.org>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>,
 Chaotian Jing =?UTF-8?B?KOS6leacneWkqSk=?= <Chaotian.Jing@mediatek.com>,
 "lgirdwood@gmail.com" <lgirdwood@gmail.com>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
 "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
 "alim.akhtar@samsung.com" <alim.akhtar@samsung.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "avri.altman@wdc.com" <avri.altman@wdc.com>,
 "martin.petersen@oracle.com" <martin.petersen@oracle.com>,
 "broonie@kernel.org" <broonie@kernel.org>,
 Peter Wang =?UTF-8?B?KOeOi+S/oeWPiyk=?= <peter.wang@mediatek.com>
Cc: "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>,
 "kernel@collabora.com" <kernel@collabora.com>
Subject: Re: [PATCH v8 11/23] scsi: ufs: mediatek: Remove undocumented downstream
 reset cruft
Date: Thu, 05 Mar 2026 10:57:53 +0100
Message-ID: <3472277.mvXUDI8C0e@workhorse>
In-Reply-To: <3aeee75e78fed2be92038c776463a231b94462f3.camel@mediatek.com>
References: <20260304-mt8196-ufs-v8-0-5b0eac23314f@collabora.com>
 <20260304-mt8196-ufs-v8-11-5b0eac23314f@collabora.com>
 <3aeee75e78fed2be92038c776463a231b94462f3.camel@mediatek.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260305_015812_342931_7E6ED6EF 
X-CRM114-Status: GOOD (  11.28  )
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

T24gVGh1cnNkYXksIDUgTWFyY2ggMjAyNiAxMDoxNDo0NyBDZW50cmFsIEV1cm9wZWFuIFN0YW5k
YXJkIFRpbWUgUGV0ZXIgV2FuZyAo546L5L+h5Y+LKSB3cm90ZToKPiBPbiBXZWQsIDIwMjYtMDMt
MDQgYXQgMTU6NTMgKzAxMDAsIE5pY29sYXMgRnJhdHRhcm9saSB3cm90ZToKPiA+IEBAIC0yMzgz
LDM4ICsyMzgzLDEyIEBAIE1PRFVMRV9ERVZJQ0VfVEFCTEUob2YsIHVmc19tdGtfb2ZfbWF0Y2gp
Owo+ID4gIHN0YXRpYyBpbnQgdWZzX210a19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpw
ZGV2KQo+ID4gIHsKPiA+ICAJaW50IGVycjsKPiA+IC0Jc3RydWN0IGRldmljZSAqZGV2ID0gJnBk
ZXYtPmRldiwgKnBoeV9kZXYgPSBOVUxMOwo+ID4gCj4gCj4gV2lsbCB0aGVyZSBiZSBhIGJ1aWxk
IGVycm9yIGlmIHBoeV9kZXYgaXMgcmVtb3ZlZD8KPiBQbGVhc2UgbWFrZSBzdXJlIHRoYXQgZWFj
aCBwYXRjaCBjYW4gYnVpbGQgc3VjY2Vzc2Z1bGx5LCBvbmUgYnkgb25lLgo+IAo+IFRoYW5rcwo+
IFBldGVyCj4gCj4gCj4gCj4gCgpZZXMsIHRoZXNlIGFyZSB0aGUga2luZHMgb2YgbWlzdGFrZXMg
dGhhdCBoYXBwZW4gd2hlbiB5b3UgYXNrIHNvbWVvbmUKdG8gcGljayBhcGFydCBwYXRjaGVzIGZv
ciB5b3VyIGRvd25zdHJlYW0gY29udmVuaWVuY2UuCgpJJ2xsIGhhbmQgZGVhbGluZyB3aXRoIGFu
eSBmdXJ0aGVyIGZpeHVwcyBhbmQgdmFyaWFibGUgbmFtaW5nIGNvbmNlcm5zCnlvdSBoYXZlIG92
ZXIgdG8gQW5nZWxvLCBhcyBJIGNhbid0IGJlIGJvdGhlcmVkIHRvIGRlYWwgd2l0aCB5b3UKYW55
bW9yZS4KCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcGh5Cg==
