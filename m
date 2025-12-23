Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2439FE6FE24
	for <linux-phy@archiver.kernel.org>; Tue, 23 Dec 2025 16:14:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pVD7Mq/tLbnATdzjwlmTq99ULh8yRxxehIGc/WWzzj8=; b=WHgNLUMqNwPkiE
	ggFMEDiJ9cjqZ8H5GxJ9FJRbQK9+UEcpDaYwVsa05+2JuyJ8CD5omolHVSSyL5Q9/yIVsTeMpU4ns
	eNkxSxSI9sQMs3gJStKJxd4yVFGIWgHfDRc5Xx0RIzaYtyIS8iBrg8fjKlzl36N258wkNwZqMMiXG
	qfz7YZNaBKCFXpG7ckyPlI7O4vbd+RETH7gb1zuopFNM7+JmrtUsyiRH7ergMHbmKVcfaYBXh0ssK
	jAijYd0Xw3BxT8VzOXnEOnq7Uoth/6EyP011bJs5PSMvwB3gldjD/H30GI2VUH4SnttjLZ4LkkVBp
	DczVsM9VJ0BNa+yXqQLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vY51S-0000000FkHu-3fNr;
	Tue, 23 Dec 2025 16:14:06 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vY51P-0000000FkH3-2FsA;
	Tue, 23 Dec 2025 16:14:04 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1766506430; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=GcLwAerCHEy/SR9JcYm3k6axVMsajNFFuPap2PgzrSCXjh4rWjBHBR68qGTzFmEtN3w7Ltea08lsuyXM5TqbBZ/wEy4Lt0BA0OELULdM6rGXc6Zpm/lcq+V2kll+jr5bGo9G+2hiQRG68jUw/5rriZEB9x1FO9zW043d4D4Ja4w=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1766506430; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=MVFVIKq0sBuyCffyYJ/1sD+iO89pe4U1D3i3N6wh6Y4=; 
	b=hgp16a5Gt/bQR/q68E5ve1yIbch7gWUfpYZwrYxqEPYRA7AjCYQWufj7UkH2WtntiJJcClOSpAjT8qbQ6hzQpa922gcQfGHjT2HYoNkxzsljhiHj3NZ1a+yqkgkpT8oA9vDxj8bmrSmjcajiXIH/eZp5StcOj4YLKIkQ6YTq43Y=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1766506430;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=MVFVIKq0sBuyCffyYJ/1sD+iO89pe4U1D3i3N6wh6Y4=;
	b=lU9ueyei4bCn1/G3l4CDl0V7jCJjtHAIWGiYxDcQVWZ69Z0gd87bNml6FjOrSs7q
	Yr35Hpe+PYjszET5s4SQgWJvKVUq7y1hrqqsKtgZ0Dq8O+HDeUXJ73zJ+et/nhTZ5bH
	ZLnMXLNksOm4agx1xpj7JKjvKjzSQjIwePAVYmn4=
Received: by mx.zohomail.com with SMTPS id 1766506427805485.7983551832393;
	Tue, 23 Dec 2025 08:13:47 -0800 (PST)
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
Subject: Re: [PATCH v4 07/25] scsi: ufs: mediatek: Rework 0.9V regulator
Date: Tue, 23 Dec 2025 17:13:39 +0100
Message-ID: <14003986.uLZWGnKmhe@workhorse>
In-Reply-To: <8206d9e715f7ef987b5369d0bda68cce13528112.camel@mediatek.com>
References: <20251218-mt8196-ufs-v4-0-ddec7a369dd2@collabora.com>
 <20251218-mt8196-ufs-v4-7-ddec7a369dd2@collabora.com>
 <8206d9e715f7ef987b5369d0bda68cce13528112.camel@mediatek.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251223_081403_624988_7088A35F 
X-CRM114-Status: GOOD (  15.68  )
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

T24gVHVlc2RheSwgMjMgRGVjZW1iZXIgMjAyNSAxMDozNTozOSBDZW50cmFsIEV1cm9wZWFuIFN0
YW5kYXJkIFRpbWUgUGV0ZXIgV2FuZyAo546L5L+h5Y+LKSB3cm90ZToKPiBPbiBUaHUsIDIwMjUt
MTItMTggYXQgMTM6NTQgKzAxMDAsIE5pY29sYXMgRnJhdHRhcm9saSB3cm90ZToKPiA+IAo+ID4g
K3N0YXRpYyBpbnQgdWZzX210a19nZXRfc3VwcGxpZXMoc3RydWN0IHVmc19tdGtfaG9zdCAqaG9z
dCkKPiA+ICt7Cj4gPiArICAgICAgIHN0cnVjdCBkZXZpY2UgKmRldiA9IGhvc3QtPmhiYS0+ZGV2
Owo+ID4gKyAgICAgICBjb25zdCBzdHJ1Y3QgdWZzX210a19zb2NfZGF0YSAqZGF0YSA9Cj4gPiBv
Zl9kZXZpY2VfZ2V0X21hdGNoX2RhdGEoZGV2KTsKPiA+ICsKPiA+ICsgICAgICAgaWYgKCFkYXRh
IHx8ICFkYXRhLT5oYXNfYXZkZDA5KQo+ID4gKyAgICAgICAgICAgICAgIHJldHVybiAwOwo+ID4g
Cj4gCj4gCj4gSGkgTmljb2xhcywKPiAKPiBJdCBzZWVtcyB0aGF0IGhhc19hdmRkMDkgaXMgbm90
IG5lY2Vzc2FyeSwgYmVjYXVzZSBpZiB0aGUgCj4gcGxhdGZvcm0gZG9lcyBub3Qgc3VwcG9ydCBh
dmRkMDksIGl0IHdpbGwgcmV0dXJuIGFuIGVycm9yCj4gKC1FTk9ERVYpIGFuZCBieXBhc3MgdGhl
IGF2ZGQwOSBmbG93LCByaWdodD8KPiAKPiBUaGFua3MKPiBQZXRlcgo+IAo+IAo+IAo+IAoKSGks
Cgp0aGF0IHdvdWxkIGFsbG93IGNvbXBhdGlibGVzIHRoYXQgYXJlIG5vdCBhbGxvd2VkIHRvIGhh
dmUgYW4gYXZkZDA5CnJlZ3VsYXRvciBieSB0aGUgYmluZGluZyAoYmVjYXVzZSB0aGUgU29DIGRv
ZXNuJ3QgaGF2ZSB0aGF0IHBpbikgdG8KaGF2ZSBvbmUgc3BlY2lmaWVkIGluIHRoZSBkZXZpY2Ug
dHJlZSBnZXQgcGlja2VkIHVwLiBUaGlzIHdvdWxkIHRoZW4KY2F1c2UgdGhvc2UgZGV2aWNlcyB3
aXRoIHN1Y2ggYSBkZXZpY2UgdHJlZSB0byBlbnRlcgp1ZnNfbXRrX3ZhMDlfcHdyX2N0cmwoKSwg
d2hpY2ggaXMgbm90IHdoYXQgd2Ugd2FudC4gV2hpbGUgd2UgY291bGQKYmxhbWUgdGhpcyBvbiB0
aGUgRFQgYmVpbmcgd3JvbmcgaW4gdGhhdCBjYXNlLCBJIHRoaW5rIGl0J3MgYmV0dGVyCmlmIHdl
IGF2b2lkIHN1Y2ggYSBzaXR1YXRpb24gZW50aXJlbHkuCgpLaW5kIHJlZ2FyZHMsCk5pY29sYXMg
RnJhdHRhcm9saQoKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1waHkK
