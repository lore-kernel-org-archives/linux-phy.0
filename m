Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3EFBC28B20
	for <linux-phy@archiver.kernel.org>; Wed,  2 Apr 2025 13:41:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zd+NV6dCSdbpAg7jx/aipXFxmsIcGDqFZaJtl7GdxFU=; b=0muz79h3/8YY+R
	q03TpuuRcVdEEV8cP3bSTluJI1dE38P2iLNBisNMxn+QiRNXyZvof1VMcYm2BRyjuSRWmxzHZAn5w
	hxQjjLjraEtjASrJSeXz82LuJrAEzA2oMjwc9UXlBDGz2d6kQjklE2Od7v8HidFbnc89+D1Cgv+Qv
	CY+RsZWgWRSKNMIOBXcFZnr9lBaavO9YQUi0beYpYInS02tmrLefx4SUURff/iVHLLBSc1yu2mE/v
	UOL3ic3RWB1ua49yj/4y+zhRet7XLfeg4VDwuj5adLtej4/zRk5RQWCBi84I2Auj7QC2UEZpvxEsx
	0g80N1wO40o73AwEVZog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzyLO-00000006HV9-2SQR;
	Wed, 02 Apr 2025 13:41:26 +0000
Received: from fllvem-ot03.ext.ti.com ([198.47.19.245])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzyFq-00000006GEB-1meN
	for linux-phy@lists.infradead.org;
	Wed, 02 Apr 2025 13:35:44 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllvem-ot03.ext.ti.com (8.15.2/8.15.2) with ESMTPS id 532DZP2l3250588
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 2 Apr 2025 08:35:25 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1743600925;
	bh=ISpC0S/bifWyOLFGjqR1WFw8r/9cAgNMXnYHnloxEbA=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=W1P3ZIDmxQ37wf5L2VnsoRmvAZFk9FPK/urf7QxBA99vv6FyXdxBWVLcHsLU7JCLI
	 uEX3RQh7Fh0wkgdqrDkuFF6ntNHJUhIGrV6dAwac26FjY66GwCSwkhtsMu0oXCvYyN
	 au9+DUEx/J1nWoSvv9MnSiiWpLux59BLVFOmP9S4=
Received: from DFLE113.ent.ti.com (dfle113.ent.ti.com [10.64.6.34])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 532DZP5f029496
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 2 Apr 2025 08:35:25 -0500
Received: from DFLE106.ent.ti.com (10.64.6.27) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Wed, 2
 Apr 2025 08:35:25 -0500
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Wed, 2 Apr 2025 08:35:25 -0500
Received: from [172.24.227.193] (devarsh-precision-tower-3620.dhcp.ti.com [172.24.227.193])
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 532DZLh4043983;
	Wed, 2 Apr 2025 08:35:22 -0500
Message-ID: <223da324-4de7-4e62-b001-ea89c4768a13@ti.com>
Date: Wed, 2 Apr 2025 19:05:21 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] phy: cadence: cdns-dphy: Update calibration wait
 time for startup state machine
To: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
CC: <sakari.ailus@linux.intel.com>, <u.kleine-koenig@baylibre.com>,
        <vigneshr@ti.com>, <aradhya.bhatia@linux.dev>, <s-jain1@ti.com>,
        <r-donadkar@ti.com>, <vkoul@kernel.org>, <kishon@kernel.org>,
        <mripard@kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>
References: <20250326152320.3835249-1-devarsht@ti.com>
 <20250326152320.3835249-3-devarsht@ti.com>
 <5465d2dd-d81a-4e33-b76f-cbbd3386c725@ideasonboard.com>
Content-Language: en-US
From: Devarsh Thakkar <devarsht@ti.com>
In-Reply-To: <5465d2dd-d81a-4e33-b76f-cbbd3386c725@ideasonboard.com>
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250402_063542_556831_072C63ED 
X-CRM114-Status: GOOD (  17.00  )
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

SGkgVG9taSwKClRoYW5rcyBmb3IgdGhlIHJldmlldy4KCk9uIDAyLzA0LzI1IDE3OjEyLCBUb21p
IFZhbGtlaW5lbiB3cm90ZToKPiBIaSwKPiAKPiBPbiAyNi8wMy8yMDI1IDE3OjIzLCBEZXZhcnNo
IFRoYWtrYXIgd3JvdGU6Cj4+IFVzZSBzeXN0ZW0gY2hhcmFjdGVyaXplZCByZXNldCB2YWx1ZSBz
cGVjaWZpZWQgaW4gVFJNIFsxXSB0byBwcm9ncmFtCj4+IGNhbGlicmF0aW9uIHdhaXQgdGltZSB3
aGljaCBkZWZpbmVzIG51bWJlciBvZiBjeWNsZXMgdG8gd2FpdCBmb3IgYWZ0ZXIKPj4gc3RhcnR1
cCBzdGF0ZSBtYWNoaW5lIGlzIGluIGJhbmRnYXAgZW5hYmxlIHN0YXRlLgo+Pgo+PiBUaGlzIGZp
eGVzIFBMTCBsb2NrIHRpbWVvdXQgZXJyb3IgZmFjZWQgd2hpbGUgdXNpbmcgUlBpIERTSSBQYW5l
bCBvbiBUSSdzCj4+IEFNNjJMIGFuZCBKNzIxRSBTb0MgWzJdLgo+Pgo+PiBbMV0gQU02MlAgVFJN
IChTZWN0aW9uICk6Cj4+IGh0dHBzOi8vd3d3LnRpLmNvbS9saXQvcGRmL3NwcnVqODMKPj4KPj4g
WzJdOgo+PiBMaW5rOiBodHRwczovL2dpc3QuZ2l0aHViLmNvbS9kZXZhcnNodC84OWU0ODMwZTg4
Njc3NGZjZDUwYWE2ZTI5Y2NlM2E3OQo+Pgo+PiBDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZwo+
PiBGaXhlczogN2EzNDNjOGJmNGI1ICgicGh5OiBBZGQgQ2FkZW5jZSBELVBIWSBzdXBwb3J0IikK
Pj4gU2lnbmVkLW9mZi1ieTogRGV2YXJzaCBUaGFra2FyIDxkZXZhcnNodEB0aS5jb20+Cj4+IC0t
LQo+PiBWMjogSW50cm9kdWNlZCB0aGlzIGFzIGFzIHNlcGFyYXRlIHBhdGNoCj4+Cj4+IMKgIGRy
aXZlcnMvcGh5L2NhZGVuY2UvY2Rucy1kcGh5LmMgfCAzICsrKwo+PiDCoCAxIGZpbGUgY2hhbmdl
ZCwgMyBpbnNlcnRpb25zKCspCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9jYWRlbmNl
L2NkbnMtZHBoeS5jIAo+PiBiL2RyaXZlcnMvcGh5L2NhZGVuY2UvY2Rucy1kcGh5LmMKPj4gaW5k
ZXggYzRkZTllNGQzZTkzLi4xMWZiZmZlNWFhZmQgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvcGh5
L2NhZGVuY2UvY2Rucy1kcGh5LmMKPj4gKysrIGIvZHJpdmVycy9waHkvY2FkZW5jZS9jZG5zLWRw
aHkuYwo+PiBAQCAtMzAsNiArMzAsNyBAQAo+PiDCoCAjZGVmaW5lIERQSFlfQ01OX1NTTcKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgRFBIWV9QTUFfQ01OKDB4MjApCj4+IMKgICNkZWZpbmUgRFBIWV9D
TU5fU1NNX0VOwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBCSVQoMCkKPj4gKyNkZWZpbmUgRFBIWV9D
TU5fU1NNX0NBTF9XQUlUX1RJTUXCoMKgwqAgR0VOTUFTSyg4LCAxKQo+PiDCoCAjZGVmaW5lIERQ
SFlfQ01OX1RYX01PREVfRU7CoMKgwqDCoMKgwqDCoCBCSVQoOSkKPj4gwqAgI2RlZmluZSBEUEhZ
X0NNTl9QV03CoMKgwqDCoMKgwqDCoMKgwqDCoMKgIERQSFlfUE1BX0NNTigweDQwKQo+PiBAQCAt
NDA1LDYgKzQwNiw4IEBAIHN0YXRpYyBpbnQgY2Ruc19kcGh5X2NvbmZpZ3VyZShzdHJ1Y3QgcGh5
ICpwaHksIAo+PiB1bmlvbiBwaHlfY29uZmlndXJlX29wdHMgKm9wdHMpCj4+IMKgwqDCoMKgwqAg
cmVnID0gRklFTERfUFJFUChEUEhZX0JBTkRfQ0ZHX0xFRlRfQkFORCwgYmFuZF9jdHJsKSB8Cj4+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgRklFTERfUFJFUChEUEhZX0JBTkRfQ0ZHX1JJR0hUX0JB
TkQsIGJhbmRfY3RybCk7Cj4+IMKgwqDCoMKgwqAgd3JpdGVsKHJlZywgZHBoeS0+cmVncyArIERQ
SFlfQkFORF9DRkcpOwo+PiArwqDCoMKgIHdyaXRlbChGSUVMRF9QUkVQKERQSFlfQ01OX1NTTV9D
QUxfV0FJVF9USU1FLCAweDE0KSB8IAo+PiBEUEhZX0NNTl9TU01fRU4gfCBEUEhZX0NNTl9UWF9N
T0RFX0VOLAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqAgZHBoeS0+cmVncyArIERQSFlfQ01OX1NT
TSk7Cj4gCj4gVGhpcyBzb3VuZHMgbGlrZSBhIFRJIHNwZWNpZmljIGNoYXJhY3Rlcml6ZWQgdmFs
dWUsIGJ1dCB0aGUgZnVuY3Rpb24gCj4gaGVyZSBpcyBhIGdlbmVyaWMgb25lLiBBbHNvLCBpcyB0
aGUgdmFsdWUgc2FtZSBmb3IgYWxsIFRJIFNvQ3M/IE9yIGlzIGl0IAo+IHBlci1zb2M/Cj4gCgpO
byB0aGlzIGlzIG5vdCBUSSBzcGVjaWZpYyB2YWx1ZS4gQXMgbWVudGlvbmVkIGluIGNvbW1pdCBt
ZXNzYWdlLCAweDE0IAppcyB0aGUgY2FkZW5jZSBjaGFyYWN0ZXJpemVkIGRlZmF1bHQgdmFsdWUg
Zm9yIGNhbGlicmF0aW9uIHdhaXQgdGltZSAKd2hpY2ggdGhleSBwdXQgaW4gYXMgcmVzZXQgdmFs
dWUgaW4gdGhlIElQIChpZiB5b3UgcmVzZXQgdGhlIElQIHlvdSB3aWxsIApzZWUgY2FsaWJyYXRp
b24gd2FpdCB0aW1lIGFzIDB4MTQpIHRvIGJlIHVzZWQgYnkgc29mdHdhcmUgZm9yIG9wdGltYWwg
CmluaXRpYWxpemF0aW9uLgoKUmVnYXJkcwpEZXZhcnNoCgotLSAKbGludXgtcGh5IG1haWxpbmcg
bGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
