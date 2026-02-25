Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D840BFD3758
	for <linux-phy@archiver.kernel.org>; Wed, 25 Feb 2026 13:06:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ymPT8YM4BdytdBTgsv4CXMz7zYWJlzDDiai6JoZBe6k=; b=RTzeWn/D9o7GKA
	4Uzc17jabkKPnl2H12+wEZi/UOs8JItRJqydwExMtGZWCLaSxKUn3nzjp1NWip2CWmdCrZPBKW7fI
	tjvwM99Q2lCi8aHqypkg7hxVYnC/LhwZoajts6ZGEgUntBBCFqp5gFVlcbOGwxEfJBZtRNLlhSW3M
	REX9oRROtl7YqwHLrGkxCSOK0WBCmft4HumvgcDj+Pvh+3OSvR2O8llNJohrdGAzfgWAhLpdDsxhC
	UJN3zPPCzIZ5Vu97aV605cJ+TZSjB1BWsPYT4AmjGqLCmNbkHhq6EoqF69lHEJNP2Ca+ab3JfM5YH
	v+fUm5opxU9xwiOenv9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvEap-000000042nv-1vEj;
	Wed, 25 Feb 2026 13:06:19 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvEam-000000042mj-1DgG;
	Wed, 25 Feb 2026 13:06:17 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1772024764; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=epdV6sfEGGWgxTUxXR+oqoZSQob5OAuSJo/IxQeoiJmS3pQiIkTVSN9yEH8KC3zG22qWQI35fbW9BNRE7buiWsI/FI+0PDME8v6/GBoyI6n2Uvqmjlh6qxhhpjmQ4BmIdA+k3eaQ40qkHXRbuIhebhDyb5J60OvhNGCRkW5uM/o=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1772024764; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=T6dW9tqfhUfNJnxZ03UfE/DW2B+xHA6p+xbQjEx8Pf8=; 
	b=JApQiUWgQPuga1LI9SOPB7AY/Xw6+SCuYlqi+/SEGz0BpUv+HfWIeFoIRkVLndllADmqKbqgaVLWOz1HqTpeGYnSEgw0vupYa0YNhlzdOUWLDhTGqjiIYM5p0VjXndasVjcZ5dgiHAV6ahvbgu9Qe6F2c1HZH48pTaBB1/SpbHE=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1772024764;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=T6dW9tqfhUfNJnxZ03UfE/DW2B+xHA6p+xbQjEx8Pf8=;
	b=BubcYS0qqWwRPOl105g64yZkIwEjCDwd8SxMH3oqKAKPNAOTaE2y31QAoj2vOMix
	21qTnSjPngc4EFsfl9Bya0v1qpy65ZjUtS/7Ci0ekBX5zjEiJ0f9/IpBCNHfpwQfemE
	+gdnaM2TFkQbGlrVQtKoHZyT8J8cryvaUzbIM8cI=
Received: by mx.zohomail.com with SMTPS id 1772024762844490.7485741503249;
	Wed, 25 Feb 2026 05:06:02 -0800 (PST)
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
Subject: Re: [PATCH v7 16/23] scsi: ufs: mediatek: Clean up logging prints
Date: Wed, 25 Feb 2026 14:05:55 +0100
Message-ID: <2575185.irdbgypaU6@workhorse>
In-Reply-To: <c333898413d249c017430d4ae98bc7be3bf33a64.camel@mediatek.com>
References: <20260216-mt8196-ufs-v7-0-b5f2907c6da7@collabora.com>
 <20260216-mt8196-ufs-v7-16-b5f2907c6da7@collabora.com>
 <c333898413d249c017430d4ae98bc7be3bf33a64.camel@mediatek.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260225_050616_361526_25C9DC08 
X-CRM114-Status: GOOD (  18.19  )
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

T24gVHVlc2RheSwgMjQgRmVicnVhcnkgMjAyNiAxMzo0NzoyOCBDZW50cmFsIEV1cm9wZWFuIFN0
YW5kYXJkIFRpbWUgUGV0ZXIgV2FuZyAo546L5L+h5Y+LKSB3cm90ZToKPiBPbiBNb24sIDIwMjYt
MDItMTYgYXQgMTQ6MzcgKzAxMDAsIE5pY29sYXMgRnJhdHRhcm9saSB3cm90ZToKPiA+ICBkcml2
ZXJzL3Vmcy9ob3N0L3Vmcy1tZWRpYXRlay5jIHwgOTkgKysrKysrKysrKysrKysrKysrLS0tLS0t
LS0tLS0tLQo+ID4gLS0tLS0tLS0tLQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCA0MyBpbnNlcnRpb25z
KCspLCA1NiBkZWxldGlvbnMoLSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvdWZzL2hv
c3QvdWZzLW1lZGlhdGVrLmMgYi9kcml2ZXJzL3Vmcy9ob3N0L3Vmcy0KPiA+IG1lZGlhdGVrLmMK
PiA+IGluZGV4IGVjZjE2ZTgyYTMyNi4uMmIxZjI2YjU1NzgyIDEwMDY0NAo+ID4gLS0tIGEvZHJp
dmVycy91ZnMvaG9zdC91ZnMtbWVkaWF0ZWsuYwo+ID4gKysrIGIvZHJpdmVycy91ZnMvaG9zdC91
ZnMtbWVkaWF0ZWsuYwo+ID4gWy4uLiBzbmlwIC4uLl0KPiA+IEBAIC04MTAsMTEgKzgwNiwxMSBA
QCBzdGF0aWMgdm9pZCB1ZnNfbXRrX21jcV9zZXRfaXJxX2FmZmluaXR5KHN0cnVjdAo+ID4gdWZz
X2hiYSAqaGJhLCB1bnNpZ25lZCBpbnQgY3B1KQo+ID4gIAlfY3B1ID0gKGNwdSA9PSAwKSA/IDMg
OiBjcHU7Cj4gPiAgCXJldCA9IGlycV9zZXRfYWZmaW5pdHkoaXJxLCBjcHVtYXNrX29mKF9jcHUp
KTsKPiA+ICAJaWYgKHJldCkgewo+ID4gLQkJZGV2X2VycihoYmEtPmRldiwgInNldCBpcnEgJWQg
YWZmaW5pdHkgdG8gQ1BVICVkCj4gPiBmYWlsZWRcbiIsCj4gPiArCQlkZXZfZXJyKGhiYS0+ZGV2
LCAic2V0dGluZyBpcnEgJWQgYWZmaW5pdHkgdG8gQ1BVICVkCj4gPiBmYWlsZWRcbiIsCj4gPiAg
CQkJaXJxLCBfY3B1KTsKPiA+ICAJCXJldHVybjsKPiA+ICAJfQo+ID4gLQlkZXZfaW5mbyhoYmEt
PmRldiwgInNldCBpcnEgJWQgYWZmaW5pdHkgdG8gQ1BVOiAlZFxuIiwgaXJxLAo+ID4gX2NwdSk7
Cj4gPiArCWRldl9kYmcoaGJhLT5kZXYsICJzZXQgaXJxICVkIGFmZmluaXR5IHRvIENQVSAlZFxu
IiwgaXJxLAo+ID4gX2NwdSk7Cj4gPiAKPiAKPiBJcyBpdCBtb3JlIGFwcHJvcHJpYXRlIHRvIHVz
ZSBkZXZfaW5mbyBmb3Igc3RhdGUgY2hhbmdlcyBvciBmb3Igc2V0dGluZwo+IGNoYW5nZXM/CgpJ
cyB0aGlzIGluZm9ybWF0aW9uIGEgdXNlciB3b3VsZCB3YW50IHRvIHNlZSBpbiB0aGVpciBib290
dXAgbG9nIGluCmV2ZXJ5IGNhc2U/IE15IHVuZGVyc3RhbmRpbmcgcmlnaHQgbm93IGlzIG5vLgoK
PiA+IFsuLi4gc25pcCAuLi5dCj4gPiBAQCAtMTU3MSw3ICsxNTU5LDcgQEAgc3RhdGljIGludCB1
ZnNfbXRrX2RldmljZV9yZXNldChzdHJ1Y3QgdWZzX2hiYQo+ID4gKmhiYSkKPiA+ICAJLyogU29t
ZSBkZXZpY2VzIG1heSBuZWVkIHRpbWUgdG8gcmVzcG9uZCB0byByc3RfbiAqLwo+ID4gIAl1c2xl
ZXBfcmFuZ2UoMTAwMDAsIDE1MDAwKTsKPiA+ICAKPiA+IC0JZGV2X2luZm8oaGJhLT5kZXYsICJk
ZXZpY2UgcmVzZXQgZG9uZVxuIik7Cj4gPiArCWRldl9kYmcoaGJhLT5kZXYsICJkZXZpY2UgcmVz
ZXQgZG9uZVxuIik7Cj4gPiAgCj4gCj4gSXMgaXQgbW9yZSBhcHByb3ByaWF0ZSB0byB1c2UgZGV2
X2luZm8gZm9yIHN0YXRlIGNoYW5nZXMgb3IgZm9yIHNldHRpbmcKPiBjaGFuZ2VzPwoKRGVwZW5k
cyBvbiB5b3VyIHZpZXcgb2Ygd2hhdCdzIHVzZWZ1bCBpbmZvcm1hdGlvbiBmb3IgdGhlIHVzZXIu
CgpJIGNhbiBjaGFuZ2UgYm90aCBvZiB0aGVzZSBiYWNrIHRvIF9pbmZvIGlmIEkgaGF2ZSB0byBz
ZW5kIG91dCBhIG5leHQKcmV2aXNpb24sIGp1c3QgdG8gZ2V0IHRoaXMgdGhyb3VnaCB0aG91Z2gu
Cgo+IAo+IFRoYW5rcwo+IFBldGVyCj4gCgoKCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QK
bGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
