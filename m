Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D0ADC79FB6
	for <linux-phy@archiver.kernel.org>; Wed,  9 Sep 2026 17:14:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xgzccpy7LbGJW3Bn5L4o5vgiw2W5kJqOiOJLKS/2nB8=; b=lFhyCWkOoInO/9
	9/wPTyON+v1+GlM/IraEFTgQMZ37otSBuYVzkXkpa7Z1bQ/plZaVp6BnBogHD4yyj2otki03x89kr
	MwyfMZEdtIphaPuqPRMF3CK/kJtQBEF2IOR7P91fTBADx7XOgsslMN8uaFm3FKdUxSN+WsNW/xyv5
	JHG4a3PwGUtPbFzoSOnUMsjOmp/Kibb7w3fA3AQx3oZM775nkWjWKwp5hoMZ9W0hGy1m7sqkdDUCx
	P6M5XKxIEbCFiUeKrGMR+gOpSX2TbQGkFsAurDDCRwfYa5QfAef2OTOjDswr28J0y+x/k3LLKp3oM
	8DohHReooHn6bNjfcnBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4Lsd-0000000CRwQ-0TsN;
	Wed, 09 Sep 2026 17:14:39 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4Lsa-0000000CRvU-3siB;
	Wed, 09 Sep 2026 17:14:37 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 3EA2A60202;
	Wed,  9 Sep 2026 17:14:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8AA041F000FF;
	Wed,  9 Sep 2026 17:14:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788974075;
	bh=6dv2vvcGbSpShMrWofXwfOBXiT7V+DJOWD8QO9nGBVo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Tj3NCkjsGzfvDlibB9EJILNPTFhGXSWoQM16z/w2VW+JOQeWntoqTDaa9MFhPX01E
	 ftRJH3TORePkbywM7bBIOObLe5V/SPUo5MZGN/Yyw/8QahyB79h9tA3FxgUgPhALOZ
	 UlNI8YUTWEg0Q+GMUFgm/o63xnd2Qa+ceLIiOV6A/wn41+Q3q7cNUxFLHgsgOYOkWP
	 VWC9fxQvQThPK1DkIipUnLyJgZTVdgXkgBhWkMetdi7AeUSS39N/narCUgDWf1aUmb
	 nbnQ/F8nLhFhtXbE8aNvC3Ep7bsKmGpRxiQG+v7gXZmkqSaA5kafj9nzyFtcQGNtC/
	 YYAkbuDNxMuOw==
Date: Wed, 9 Sep 2026 19:14:25 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: chunfeng.yun@mediatek.com, vkoul@kernel.org, neil.armstrong@linaro.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, matthias.bgg@gmail.com, 
	chunkuang.hu@kernel.org, p.zabel@pengutronix.de, justin.yeh@mediatek.com, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, kernel@collabora.com
Subject: Re: [PATCH v3 06/12] phy: phy-mtk-dp: Support set_lanes in configure
 and properly cleanup
Message-ID: <mdaumrppvlt5xoeewouxrdaibrgb6sw73byw3qzk47t4xdib24@msutldqcnkup>
References: <20260707154245.198361-1-angelogioacchino.delregno@collabora.com>
 <20260707154245.198361-7-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260707154245.198361-7-angelogioacchino.delregno@collabora.com>
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

T24gVHVlLCBKdWwgMDcsIDIwMjYgYXQgMDU6NDI6MzlQTSArMDIwMCwgQW5nZWxvR2lvYWNjaGlu
byBEZWwgUmVnbm8gd3JvdGU6Cj4gQWRkIHN1cHBvcnQgZm9yIGVuYWJsaW5nIGEgc3BlY2lmaWNh
bGx5IHJlcXVlc3RlZCBudW1iZXIgb2YgbGFuZXMKPiBpbiB0aGUgLmNvbmZpZ3VyZSgpIGNhbGxi
YWNrIGFuZCBkaXNhYmxlIGFsbCBsYW5lcyBpbiBwb3dlciBvZmYKPiBhbmQgcmVzZXQgY2FsbGJh
Y2tzIGZvciBwcm9wZXIgaGFyZHdhcmUgY2xlYW51cC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBBbmdl
bG9HaW9hY2NoaW5vIERlbCBSZWdubyA8YW5nZWxvZ2lvYWNjaGluby5kZWxyZWdub0Bjb2xsYWJv
cmEuY29tPgo+IC0tLQo+ICBkcml2ZXJzL3BoeS9tZWRpYXRlay9waHktbXRrLWRwLmMgfCA3NSAr
KysrKysrKysrKysrKysrKysrKysrKysrKysrLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA2OCBpbnNl
cnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9t
ZWRpYXRlay9waHktbXRrLWRwLmMgYi9kcml2ZXJzL3BoeS9tZWRpYXRlay9waHktbXRrLWRwLmMK
PiBpbmRleCBmNmIwZTgzZDQ4MzMuLjJjOGJjMGIzNzQ4NiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJz
L3BoeS9tZWRpYXRlay9waHktbXRrLWRwLmMKPiArKysgYi9kcml2ZXJzL3BoeS9tZWRpYXRlay9w
aHktbXRrLWRwLmMKPiBAQCAtMTAsNiArMTAsNyBAQAo+ICAgKiAgICAgICAgICAgICAgICAgICAg
IEFuZ2Vsb0dpb2FjY2hpbm8gRGVsIFJlZ25vIDxhbmdlbG9naW9hY2NoaW5vLmRlbHJlZ25vQGNv
bGxhYm9yYS5jb20+Cj4gICAqLwo+ICAKPiArI2luY2x1ZGUgPGxpbnV4L2JpdGZpZWxkLmg+Cj4g
ICNpbmNsdWRlIDxsaW51eC9kZWxheS5oPgo+ICAjaW5jbHVkZSA8bGludXgvaW8uaD4KPiAgI2lu
Y2x1ZGUgPGxpbnV4L21mZC9zeXNjb24uaD4KPiBAQCAtNTAsNiArNTEsOSBAQAo+ICAjZGVmaW5l
IERSSVZJTkdfUEFSQU1fMV9ERUZBVUxUCTB4MAo+ICAjZGVmaW5lIERSSVZJTkdfUEFSQU1fMl9E
RUZBVUxUCTB4MAo+ICAKPiArLyogRFBfUEhZRF9UWF9DVExfMCAqLwo+ICsjZGVmaW5lIFBIWURf
VFhfTE5fRU4JCQlHRU5NQVNLKDcsIDQpCj4gKwo+ICAjZGVmaW5lIFhUUF9MTl9UWF9MQ1RYQzBf
U1cwX1BSRTBfREVGQVVMVAlCSVQoNCkKPiAgI2RlZmluZSBYVFBfTE5fVFhfTENUWEMwX1NXMF9Q
UkUxX0RFRkFVTFQJKEJJVCgxMCkgfCBCSVQoMTIpKQo+ICAjZGVmaW5lIFhUUF9MTl9UWF9MQ1RY
QzBfU1cwX1BSRTJfREVGQVVMVAlHRU5NQVNLKDIwLCAxOSkKPiBAQCAtMTEzLDYgKzExNyw3IEBA
IGVudW0gbXRrX2RwX3BoeWRfZGlnX2dsYl9yZWdpZHggewo+ICAJRFBfUEhZRF9TV19SU1QsCj4g
IAlEUF9QSFlEX0JJVF9SQVRFLAo+ICAJRFBfUEhZRF9BVVhfUlhfQ1RMLAo+ICsJRFBfUEhZRF9U
WF9DVExfMCwKPiAgCURQX1BIWURfR0xPQkFMX01BWAo+ICB9Owo+ICAKPiBAQCAtMTMxLDYgKzEz
Niw3IEBAIHN0YXRpYyBjb25zdCB1OCBtdDgxOTVfcGh5X2RpZ19nbGJfcmVnc1tEUF9QSFlEX0dM
T0JBTF9NQVhdID0gewo+ICAJW0RQX1BIWURfU1dfUlNUXSA9IDB4MzgsCj4gIAlbRFBfUEhZRF9C
SVRfUkFURV0gPSAweDNjLAo+ICAJW0RQX1BIWURfQVVYX1JYX0NUTF0gPSAweDQwLAo+ICsJW0RQ
X1BIWURfVFhfQ1RMXzBdID0gMHg0NCwKPiAgfTsKPiAgCj4gIC8qKgo+IEBAIC0yMDAsNiArMjA2
LDcgQEAgc3RhdGljIGludCBtdGtfZHBfcGh5X2NvbmZpZ3VyZShzdHJ1Y3QgcGh5ICpwaHksIHVu
aW9uIHBoeV9jb25maWd1cmVfb3B0cyAqb3B0cykKPiAgCXN0cnVjdCBtdGtfZHBfcGh5ICpkcF9w
aHkgPSBwaHlfZ2V0X2RydmRhdGEocGh5KTsKPiAgCWNvbnN0IHN0cnVjdCBtdGtfZHBfcGh5X3Bk
YXRhICpwZGF0YSA9IGRwX3BoeS0+cGRhdGE7Cj4gIAl1MzIgdmFsOwo+ICsJaW50IGk7Cj4gIAo+
ICAJaWYgKG9wdHMtPmRwLnNldF9yYXRlKSB7Cj4gIAkJY29uc3QgdTMyIHJlZ19iaXRfcmF0ZSA9
IHBkYXRhLT5yZWdzX2RpZ19nbGJbRFBfUEhZRF9CSVRfUkFURV07Cj4gQEAgLTIyNiw2ICsyMzMs
MTcgQEAgc3RhdGljIGludCBtdGtfZHBfcGh5X2NvbmZpZ3VyZShzdHJ1Y3QgcGh5ICpwaHksIHVu
aW9uIHBoeV9jb25maWd1cmVfb3B0cyAqb3B0cykKPiAgCQlyZWdtYXBfd3JpdGUoZHBfcGh5LT5y
ZWdtYXAsIHBkYXRhLT5vZmZfZGlnX2dsYiArIHJlZ19iaXRfcmF0ZSwgdmFsKTsKPiAgCX0KPiAg
Cj4gKwlpZiAob3B0cy0+ZHAuc2V0X2xhbmVzKSB7Cj4gKwkJY29uc3QgdTMyIHJlZ19kaWdfdHhf
Y3RsID0gcGRhdGEtPnJlZ3NfZGlnX2dsYltEUF9QSFlEX1RYX0NUTF8wXTsKPiArCj4gKwkJdmFs
ID0gMDsKPiArCQlmb3IgKGkgPSAwOyBpIDwgb3B0cy0+ZHAubGFuZXM7IGkrKykKPiArCQkJdmFs
IHw9IEZJRUxEX1BSRVAoUEhZRF9UWF9MTl9FTiwgQklUKGkpKTsKPiArCj4gKwkJcmVnbWFwX3Vw
ZGF0ZV9iaXRzKGRwX3BoeS0+cmVnbWFwLCBwZGF0YS0+b2ZmX2RpZ19nbGIgKyByZWdfZGlnX3R4
X2N0bCwKPiArCQkJCSAgIFBIWURfVFhfTE5fRU4sIHZhbCk7Cj4gKwl9Cj4gKwo+ICAJcmVnbWFw
X3VwZGF0ZV9iaXRzKGRwX3BoeS0+cmVnbWFwLAo+ICAJCQkgICBwZGF0YS0+b2ZmX2RpZ19nbGIg
KyBwZGF0YS0+cmVnc19kaWdfZ2xiW0RQX1BIWURfUExMX0NUTF8xXSwKPiAgCQkJICAgVFBMTF9T
U0NfRU4sIG9wdHMtPmRwLnNzYyA/IFRQTExfU1NDX0VOIDogMCk7Cj4gQEAgLTI2MywzMSArMjgx
LDY4IEBAIHN0YXRpYyBpbnQgbXRrX2RwX3BoeV9wb3dlcl9vbihzdHJ1Y3QgcGh5ICpwaHkpCj4g
IAlyZXR1cm4gMDsKPiAgfQo+ICAKPiArc3RhdGljIGludCBtdGtfZHBfcGh5X2Rpc2FibGVfYWxs
X2xhbmVzKHN0cnVjdCBtdGtfZHBfcGh5ICpkcF9waHkpCj4gK3sKPiArCWNvbnN0IHN0cnVjdCBt
dGtfZHBfcGh5X3BkYXRhICpwZGF0YSA9IGRwX3BoeS0+cGRhdGE7Cj4gKwljb25zdCB1OCAqcmVn
cyA9IHBkYXRhLT5yZWdzX2RpZ19nbGI7Cj4gKwlpbnQgcmV0Owo+ICsJdTMyIHZhbDsKPiArCj4g
KwlyZXQgPSByZWdtYXBfcmVhZChkcF9waHktPnJlZ21hcCwgcGRhdGEtPm9mZl9kaWdfZ2xiICsg
cmVnc1tEUF9QSFlEX1RYX0NUTF8wXSwgJnZhbCk7Cj4gKwlpZiAocmV0KQo+ICsJCXJldHVybiBy
ZXQ7CgpTYW1lIGNvbW1lbnQgYXMgcHJldmlvdXMgcGF0Y2guCgotIE1hbmkKCi0tIArgrq7grqPg
rr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgt
cGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
