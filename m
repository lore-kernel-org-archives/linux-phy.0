Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B982FCF6A86
	for <linux-phy@archiver.kernel.org>; Thu,  8 Jan 2026 09:28:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6a3dpb5dX9/nOPhvAgnHi6vKuEOwgDzuysRuCH+ZXQA=; b=k8+AHRbrs1w0zr
	oe1Z2708zVS6VuD7g1Nt2/jz/DXpCWZS2kgDsbUl009yRmyjK3xBJS32iFnWMu6tZPrtYlmeRKngm
	DcYwK8gRco/R8+ghA6nG0DubWKuxV56bTZOUv6bxGDpv1TNButKXyRTSnIwm43V14g9QrPZD1Zt6P
	VPmI4iaW3jNJXW8C0XVU9ZghD/C1UrzT/NpmaYU7BQsix7WrG/9kkvW+7ynYrFlU8lXHkq+D6fQQ4
	73AEjtPWrT+uWBvyVvgSd83JjyDXnPkPnd6c9BzFcAToive0BvySuQuAe2NqJLZbRy4stqeUgsn93
	fSJRaZeerHlWbXWe5fGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdmJu-0000000GSoY-1PbL;
	Thu, 08 Jan 2026 09:28:42 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdmJr-0000000GSmn-0mjC;
	Thu, 08 Jan 2026 09:28:40 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1767864492; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=cRYqTaLZu9/Cz2hhALQrG+OnVMloqPR07D0g1j0Oj9gkB4WLvXduBwrjy3/Wrhd7HTdNahdARXVh3jZkJXhrahAbGx2emEh0OkPisxok95vWOGzXFxQwP3XSRadmpuwr7ZYfUofpWWFfDgjjvvoAYNt7v0R8LFHb53fxacceiPA=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1767864492; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=Bl8Y617sotQ73GVR2T1Q+Wa4KgXyXDvatmz5tMSVID0=; 
	b=V2NJcv8cA0trLQndvEx48Dgk0YZc9ADKFw6EoIY0bseVk0qkxp4ze4zlhtsFMh1lQsxO7Rq6n5Jf31OvLVvRsYvmUpD8b9BOVpB63CuDVgkCWQRUuQnb+kztY7fbwZTxN8FiOE4MVob+48K6Z/EBH/Od85N0aIfALnHE8DAr2Oc=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1767864491;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=Bl8Y617sotQ73GVR2T1Q+Wa4KgXyXDvatmz5tMSVID0=;
	b=EMi4YlvrwckuoEXWDPE+n0476n6VI0HuybuzhMEgHluL/U0bj8xY8nYDWEvDWeqU
	DocuVYtiK0A/HWw/vhT9xhQ6ClQ+SJPEblKV28C7BZ2NuAmZT1L+tk9xXQqt7R/a7+k
	7F1/FjbybBegbC6pPGEQ6eT0VbpqCIHSzPEgsrS8=
Received: by mx.zohomail.com with SMTPS id 1767864489427365.0551721336526;
	Thu, 8 Jan 2026 01:28:09 -0800 (PST)
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
Subject: Re: [PATCH v4 12/25] scsi: ufs: mediatek: Remove vendor kernel quirks cruft
Date: Thu, 08 Jan 2026 10:28:00 +0100
Message-ID: <13960383.uLZWGnKmhe@workhorse>
In-Reply-To: <1bbc263bafe14343b2d60a230ae6ce5dadffbf7c.camel@mediatek.com>
References: <20251218-mt8196-ufs-v4-0-ddec7a369dd2@collabora.com>
 <20251218-mt8196-ufs-v4-12-ddec7a369dd2@collabora.com>
 <1bbc263bafe14343b2d60a230ae6ce5dadffbf7c.camel@mediatek.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260108_012839_277197_1F6F7A99 
X-CRM114-Status: GOOD (  15.08  )
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

T24gVHVlc2RheSwgNiBKYW51YXJ5IDIwMjYgMTQ6MjU6MjIgQ2VudHJhbCBFdXJvcGVhbiBTdGFu
ZGFyZCBUaW1lIFBldGVyIFdhbmcgKOeOi+S/oeWPiykgd3JvdGU6Cj4gT24gVGh1LCAyMDI1LTEy
LTE4IGF0IDEzOjU1ICswMTAwLCBOaWNvbGFzIEZyYXR0YXJvbGkgd3JvdGU6Cj4gPiAKPiA+IEJv
dGggdWZzX210a192cmVnX2ZpeF92Y2MgYW5kIHVmc19tdGtfdnJlZ19maXhfdmNjcXggbG9vayBs
aWtlIHRoZXkKPiA+IGFyZQo+ID4gdmVuZG9yIGtlcm5lbCBoYWNrcyB0byB3b3JrIGFyb3VuZCBl
eGlzdGluZyBkb3duc3RyZWFtIGRldmljZSB0cmVlcy4KPiA+IE1haW5saW5lIGRvZXMgbm90IG5l
ZWQgb3Igd2FudCB0aGVtLCBzbyByZW1vdmUgdGhlbS4KPiA+IAo+IAo+IEhpIE5pY29sYXMsCj4g
Cj4gVGhpcyBpcyBhIGZsZXhpYmxlIGFwcHJvYWNoIHRvIGltcGxlbWVudCBvbmUgc29mdHdhcmUg
c3VwcG9ydGluZwo+IG11bHRpcGxlCj4gaGFyZHdhcmUgY29uZmlndXJhdGlvbnMuIEJlY2F1c2Ug
eW91IGNhbm5vdCBndWFyYW50ZWUgdGhhdCB5b3VyIFNPQwo+IHdpbGwgCj4gYWx3YXlzIHVzZSBV
RlMgMi4wIG9yIFVGUyAzLjAsIG9yIHRoYXQgdGhlIFBNSUMgeW91IHVzZSB3aWxsIG9ubHkgaGF2
ZQo+IG9uZSBzZXQuCgpCeSAib25lIHNvZnR3YXJlIHN1cHBvcnRpbmcgbXVsdGlwbGUgaGFyZHdh
cmUgY29uZmlndXJhdGlvbnMiLCBkbyB5b3UKbWVhbiBvbmUgZGV2aWNlIHRyZWU/IEJlY2F1c2Ug
aWYgc28sIEkgZG9uJ3QgdGhpbmsgdGhhdCdzIGEgZ29vZCBpZGVhLgpEZXZpY2UgdHJlZSBpcyBt
ZWFudCB0byBkZXNjcmliZSBub24tZW51bWVyYWJsZSBoYXJkd2FyZS4KCkV2ZW4gaWYgeW91IHdh
bnQgdG8gbWFrZSBpdCBlYXNpZXIgZm9yIHlvdXIgY3VzdG9tZXJzIHRvIHNoaXAgb25lIGltYWdl
CmZvciBzZXZlcmFsIFNLVXMsIHRoZXJlJ3MgYmV0dGVyIHdheXMgdG8gZG8gdGhpcyB0aGFuIGhh
dmluZyBkcml2ZXJzCmZpeCB1cCBpbmRpdmlkdWFsIERUIG5vZGVzLiBUaGUgcGxhdGZvcm0gZmly
bXdhcmUgbGlrZSB1LWJvb3QgY2FuIGNob29zZQphIERUIGJhc2VkIG9uIGRpZmZlcmVuY2VzIGl0
IGNhbiBwcm9iZS4gRS5nLiBvbiBSYWR4YSBST0NLIDVCLzVCKyBib2FyZHMsCndlIGhhdmUgdS1i
b290IGNob29zZSBiZXR3ZWVuIHRoZSA1QiBhbmQgNUIrIERUIGJhc2VkIG9uIHdoZXRoZXIgTFBE
RFI1CmlzIHByZXNlbnQsIGFzIDVCIGRvZXMgbm90IGhhdmUgTFBERFI1LCBzbyBhcyBsb25nIGFz
IHUtYm9vdCBpcyB0b2xkIGl0J3MKZWl0aGVyIGEgUk9DSyA1QiBvciBST0NLIDVCKywgaXQgY2Fu
IGZpZ3VyZSBvdXQgd2hpY2ggb25lIHNwZWNpZmljYWxseSBiYXNlZApvbiB0aGF0LiBTaW1pbGFy
bHksIGZvciB3aGljaGV2ZXIgYm9hcmRzIHRoaXMgaXMgZm9yLCB0aGVyZSBtYXkgYmUKZGlmZmVy
ZW5jZXMgdGhhdCBjYW4gYmUgcHJvYmVkIHRvIGRpc2FtYmlndWF0ZSBiZXR3ZWVuIHNldmVyYWwg
U0tVcyBvZiB0aGUKYm9hcmQgYXMgbG9uZyBhcyBpdCdzIGtub3duIGl0IG11c3QgYmUgYXQgbGVh
c3Qgb25lIG9mIHRob3NlIFNLVXMuCgo+IAo+IFRoYW5rcwo+IFBldGVyCj4gCj4gCj4gCgoKCgoK
LS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
