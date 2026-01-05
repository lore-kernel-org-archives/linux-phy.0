Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46EA5C2A072
	for <linux-phy@archiver.kernel.org>; Mon,  5 Jan 2026 08:05:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZM8yYlO0zl6iv+1MtryzGoWt25ZdJ7KrrdpOnFy7Gso=; b=f7i47SRM8Oe5Np
	Xr3NdTw+vwJ17PQTfn/DFQHVYGZork3xBznfiN37GYJ0Mk21vMBx9ehSazUT/2NxK2iYuQdClM7lH
	mbFmIjOKY06y5CprMnvCe+FZr1C4nka4kIjU4ZtqL2Li1wphyCs+s7G06CrnIGZ+/XazVjs1sbvnD
	ruO9OhyWtQUeqAQRs7muxZjfg2iT7rJMg0LWyz+Ncd8wmZ5EhumBvmkCkWQmWg1nEON6i/EbWClUD
	xiAomYJBAvZC41DQSkbwpJZboStWx002Gwx8ZiAYJNmQV/TruS2tVP1gWYkqAlaNVgTqqcz50lNw/
	gO2KInGgIKv9WC8jVOfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcfaq-0000000Awoy-09g7;
	Mon, 05 Jan 2026 08:05:36 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcfam-0000000AwoE-3Exv;
	Mon, 05 Jan 2026 08:05:33 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1767600323; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=lLTGgHz6gZ98q102lVXE1ZeJzmL3Y2g7P4uZTRcAiIyMuaunj4z3AXhK6zjFLkfPeJ7pAXk3l6m5NYaq/xau9e0/Slt60lYqNC6NmeERSn2mkEPkCRalMwPPJAED23AlCYzkkB8sruEuaevifqSVBHbmBRrUM/AMGpm5LKbBPHM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1767600323; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=YSUV2cf2wdwz1OA1ChgrBzOimVrQQtaAOzWGSVpTAQ0=; 
	b=alWJ32rk4UULXjYggI84BUT7QQAN3qOfOSF7SaRjS2VEvRiVx+uWFswUKZgyO9jw8ESObWkoenRh5RZBCI14QzFBIzoJpp42zkWgh1zkgh8S24VKRZUVgsR0U4N1TLQ/+OXSlU3U59csRjUWsaQdkgHjP1B0DLb2QnWQf12T+uI=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1767600323;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=YSUV2cf2wdwz1OA1ChgrBzOimVrQQtaAOzWGSVpTAQ0=;
	b=DMcNGr/fs0fh7UwlGOxtuvD57HjEG6ol1nvX4Rk3mxf5VjALVsVaNcja+GqwPJSO
	UvDmnHLhsYCruNSc2SnJHDrHkH6ywm6V/sxseE+E344dh+nz6Rqr6GICGWt4fVbYARh
	kV2RTwmB+Nk+CuF5+jELkwEwwMPBr0vcK1rBWzcc=
Received: by mx.zohomail.com with SMTPS id 1767600320138230.88590193818436;
	Mon, 5 Jan 2026 00:05:20 -0800 (PST)
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
Subject: Re: [PATCH v4 09/25] scsi: ufs: mediatek: Rework the crypt-boost stuff
Date: Mon, 05 Jan 2026 09:05:14 +0100
Message-ID: <5038393.GXAFRqVoOG@workhorse>
In-Reply-To: <a12f7ffe8448d205a7318219ea7a18f0f722727f.camel@mediatek.com>
References: <20251218-mt8196-ufs-v4-0-ddec7a369dd2@collabora.com>
 <20251218-mt8196-ufs-v4-9-ddec7a369dd2@collabora.com>
 <a12f7ffe8448d205a7318219ea7a18f0f722727f.camel@mediatek.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_000532_862090_94DC63B6 
X-CRM114-Status: GOOD (  14.37  )
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

T24gV2VkbmVzZGF5LCAyNCBEZWNlbWJlciAyMDI1IDA3OjE2OjM0IENlbnRyYWwgRXVyb3BlYW4g
U3RhbmRhcmQgVGltZSBQZXRlciBXYW5nICjnjovkv6Hlj4spIHdyb3RlOgo+IE9uIFRodSwgMjAy
NS0xMi0xOCBhdCAxMzo1NCArMDEwMCwgTmljb2xhcyBGcmF0dGFyb2xpIHdyb3RlOgo+ID4gLQo+
ID4gLXN0YXRpYyB2b2lkIHVmc19tdGtfaW5pdF9ib29zdF9jcnlwdChzdHJ1Y3QgdWZzX2hiYSAq
aGJhKQo+ID4gK3N0YXRpYyBpbnQgdWZzX210a19pbml0X2Jvb3N0X2NyeXB0KHN0cnVjdCB1ZnNf
aGJhICpoYmEpCj4gPiAKPiAKPiBIaSBOaWNvbGFzLAo+IAo+IFBsZWFzZSBkbyBub3QgY2hhbmdl
IHRoZSByZXR1cm4gdHlwZSBpZiB5b3UgYXJlIG5vdCBjaGVja2luZyB0aGUgcmV0dXJuCj4gdmFs
dWUuCj4gCj4gCj4gPiAgewo+ID4gICAgICAgICBzdHJ1Y3QgdWZzX210a19ob3N0ICpob3N0ID0g
dWZzaGNkX2dldF92YXJpYW50KGhiYSk7Cj4gPiAgICAgICAgIHN0cnVjdCB1ZnNfbXRrX2NyeXB0
X2NmZyAqY2ZnOwo+ID4gICAgICAgICBzdHJ1Y3QgZGV2aWNlICpkZXYgPSBoYmEtPmRldjsKPiA+
IC0gICAgICAgc3RydWN0IHJlZ3VsYXRvciAqcmVnOwo+ID4gLSAgICAgICB1MzIgdm9sdDsKPiA+
ICsgICAgICAgaW50IHJldDsKPiA+IAo+ID4gLSAgICAgICBob3N0LT5jcnlwdCA9IGRldm1fa3ph
bGxvYyhkZXYsIHNpemVvZigqKGhvc3QtPmNyeXB0KSksCj4gPiAtICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIEdGUF9LRVJORUwpOwo+ID4gLSAgICAgICBpZiAoIWhvc3QtPmNyeXB0
KQo+ID4gLSAgICAgICAgICAgICAgIGdvdG8gZGlzYWJsZV9jYXBzOwo+ID4gKyAgICAgICBjZmcg
PSBkZXZtX2t6YWxsb2MoZGV2LCBzaXplb2YoKmNmZyksIEdGUF9LRVJORUwpOwo+ID4gKyAgICAg
ICBpZiAoIWNmZykKPiA+ICsgICAgICAgICAgICAgICByZXR1cm4gLUVOT01FTTsKPiA+IAo+ID4g
LSAgICAgICByZWcgPSBkZXZtX3JlZ3VsYXRvcl9nZXRfb3B0aW9uYWwoZGV2LCAiZHZmc3JjLXZj
b3JlIik7Cj4gPiAtICAgICAgIGlmIChJU19FUlIocmVnKSkgewo+ID4gLSAgICAgICAgICAgICAg
IGRldl9pbmZvKGRldiwgImZhaWxlZCB0byBnZXQgZHZmc3JjLXZjb3JlOiAlbGQiLAo+ID4gLSAg
ICAgICAgICAgICAgICAgICAgICAgIFBUUl9FUlIocmVnKSk7Cj4gPiAtICAgICAgICAgICAgICAg
Z290byBkaXNhYmxlX2NhcHM7Cj4gPiArICAgICAgIGNmZy0+cmVnX3Zjb3JlID0gZGV2bV9yZWd1
bGF0b3JfZ2V0X29wdGlvbmFsKGRldiwgImR2ZnNyYy0KPiA+IHZjb3JlIik7Cj4gPiArICAgICAg
IGlmIChJU19FUlIoY2ZnLT5yZWdfdmNvcmUpKSB7Cj4gPiArICAgICAgICAgICAgICAgZGV2X2Vy
cihkZXYsICJGYWlsZWQgdG8gZ2V0IGR2ZnNyYy12Y29yZTogJXBlIiwgY2ZnLQo+ID4gPnJlZ192
Y29yZSk7Cj4gPiAKPiAKPiBTaG91bGQgZnJlZSB0aGUgY2ZnIG1lbW9yeT8KCkl0J3MgYSBkZXZy
ZXMgYWxsb2MuIEl0J2xsIGdldCBmcmVlZCBvbiBkcml2ZXIgcmVtb3ZhbCBhdXRvbWF0aWNhbGx5
LgpGcmVlaW5nIGl0IG1hbnVhbGx5IHdvdWxkIGJlIGEgZG91YmxlLWZyZWUgb25jZSB0aGUgZHJp
dmVyIHVubG9hZHMuCgo+IAo+ID4gKyAgICAgICAgICAgICAgIHJldHVybiBQVFJfRVJSKGNmZy0+
cmVnX3Zjb3JlKTsKPiA+ICAgICAgICAgfQo+ID4gCj4gPiAtICAgICAgIGlmIChvZl9wcm9wZXJ0
eV9yZWFkX3UzMihkZXYtPm9mX25vZGUsICJib29zdC1jcnlwdC12Y29yZS0KPiA+IG1pbiIsCj4g
PiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAmdm9sdCkpIHsKPiA+IC0gICAgICAg
ICAgICAgICBkZXZfaW5mbyhkZXYsICJmYWlsZWQgdG8gZ2V0IGJvb3N0LWNyeXB0LXZjb3JlLW1p
biIpOwo+ID4gLSAgICAgICAgICAgICAgIGdvdG8gZGlzYWJsZV9jYXBzOwo+ID4gKyAgICAgICBy
ZXQgPSBvZl9wcm9wZXJ0eV9yZWFkX3UzMihkZXYtPm9mX25vZGUsICJtZWRpYXRlayxib29zdC0K
PiA+IGNyeXB0LXZjb3JlLW1pbiIsCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICZjZmctPnZjb3JlX3ZvbHQpOwo+ID4gKyAgICAgICBpZiAocmV0KSB7Cj4gPiArICAgICAg
ICAgICAgICAgZGV2X2VycihkZXYsICJGYWlsZWQgdG8gZ2V0IG1lZGlhdGVrLGJvb3N0LWNyeXB0
LQo+ID4gdmNvcmUtbWluOiAlcGVcbiIsCj4gPiArICAgICAgICAgICAgICAgICAgICAgICBFUlJf
UFRSKHJldCkpOwo+ID4gKyAgICAgICAgICAgICAgIHJldHVybiByZXQ7Cj4gPiAgICAgICAgIH0K
PiA+IAo+ID4gLSAgICAgICBjZmcgPSBob3N0LT5jcnlwdDsKPiA+IC0gICAgICAgaWYgKHVmc19t
dGtfaW5pdF9ob3N0X2NsayhoYmEsICJjcnlwdF9tdXgiLAo+ID4gLSAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICZjZmctPmNsa19jcnlwdF9tdXgpKQo+ID4gLSAgICAgICAgICAgICAg
IGdvdG8gZGlzYWJsZV9jYXBzOwo+ID4gKyAgICAgICBjZmctPmNsa19jcnlwdF9tdXggPSBkZXZt
X2Nsa19nZXQoZGV2LCAiY3J5cHRfbXV4Iik7Cj4gPiArICAgICAgIGlmIChJU19FUlIoY2ZnLT5j
bGtfY3J5cHRfbXV4KSkgewo+ID4gKyAgICAgICAgICAgICAgIGRldl9lcnIoZGV2LCAiRmFpbGVk
IHRvIGdldCBjbG9jayBjcnlwdF9tdXg6ICVwZVxuIiwKPiA+IGNmZy0+Y2xrX2NyeXB0X211eCk7
Cj4gPiArICAgICAgICAgICAgICAgcmV0dXJuIFBUUl9FUlIoY2ZnLT5jbGtfY3J5cHRfbXV4KTsK
PiA+ICsgICAgICAgfQo+ID4gCj4gPiAtICAgICAgIGlmICh1ZnNfbXRrX2luaXRfaG9zdF9jbGso
aGJhLCAiY3J5cHRfbHAiLAo+ID4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICZj
ZmctPmNsa19jcnlwdF9scCkpCj4gPiAtICAgICAgICAgICAgICAgZ290byBkaXNhYmxlX2NhcHM7
Cj4gPiArICAgICAgIGNmZy0+Y2xrX2NyeXB0X2xwID0gZGV2bV9jbGtfZ2V0KGRldiwgImNyeXB0
X2xwIik7Cj4gPiArICAgICAgIGlmIChJU19FUlIoY2ZnLT5jbGtfY3J5cHRfbHApKSB7Cj4gPiAr
ICAgICAgICAgICAgICAgZGV2X2VycihkZXYsICJGYWlsZWQgdG8gZ2V0IGNsb2NrIGNyeXB0X2xw
OiAlcGVcbiIsCj4gPiBjZmctPmNsa19jcnlwdF9scCk7Cj4gPiArICAgICAgICAgICAgICAgcmV0
dXJuIFBUUl9FUlIoY2ZnLT5jbGtfY3J5cHRfbHApOwo+ID4gKyAgICAgICB9Cj4gPiAKPiA+IC0g
ICAgICAgaWYgKHVmc19tdGtfaW5pdF9ob3N0X2NsayhoYmEsICJjcnlwdF9wZXJmIiwKPiA+IC0g
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAmY2ZnLT5jbGtfY3J5cHRfcGVyZikpCj4g
PiAtICAgICAgICAgICAgICAgZ290byBkaXNhYmxlX2NhcHM7Cj4gPiArICAgICAgIGNmZy0+Y2xr
X2NyeXB0X3BlcmYgPSBkZXZtX2Nsa19nZXQoZGV2LCAiY3J5cHRfcGVyZiIpOwo+ID4gKyAgICAg
ICBpZiAoSVNfRVJSKGNmZy0+Y2xrX2NyeXB0X3BlcmYpKSB7Cj4gPiArICAgICAgICAgICAgICAg
ZGV2X2VycihkZXYsICJGYWlsZWQgdG8gZ2V0IGNsb2NrIGNyeXB0X3BlcmY6ICVwZVxuIiwKPiA+
IGNmZy0+Y2xrX2NyeXB0X3BlcmYpOwo+ID4gKyAgICAgICAgICAgICAgIHJldHVybiBQVFJfRVJS
KGNmZy0+Y2xrX2NyeXB0X3BlcmYpOwo+ID4gKyAgICAgICB9Cj4gPiAKPiA+IC0gICAgICAgY2Zn
LT5yZWdfdmNvcmUgPSByZWc7Cj4gPiAtICAgICAgIGNmZy0+dmNvcmVfdm9sdCA9IHZvbHQ7Cj4g
PiArICAgICAgIGhvc3QtPmNyeXB0ID0gY2ZnOwo+ID4gICAgICAgICBob3N0LT5jYXBzIHw9IFVG
U19NVEtfQ0FQX0JPT1NUX0NSWVBUX0VOR0lORTsKPiA+IAo+ID4gLWRpc2FibGVfY2FwczoKPiA+
IC0gICAgICAgcmV0dXJuOwo+ID4gKyAgICAgICByZXR1cm4gMDsKPiA+ICB9Cj4gPiAKPiA+ICBz
dGF0aWMgdm9pZCB1ZnNfbXRrX2luaXRfaG9zdF9jYXBzKHN0cnVjdCB1ZnNfaGJhICpoYmEpCj4g
PiAKPiA+IC0tCj4gPiAyLjUyLjAKPiA+IAo+IAo+IAoKCgoKCi0tIApsaW51eC1waHkgbWFpbGlu
ZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
