Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0CC57C7115C
	for <linux-phy@archiver.kernel.org>; Fri, 20 Jun 2025 15:09:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:CC:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kc91EGdhMosSxAmhAOP+DvK+SArJhRrapjMTMyJAFYg=; b=RRo5YuYhQE58Wu
	J0z+JIrICRiJe+k/bN9aZ9PAfg3W4kDKNpBSBiWcMnPKLuaUaAfJQSR6xI9YJepuDwsqJHzt19uiU
	TLYVEpGJGmQgDLUERV81HoBy6jb136QexbfuKK/HKOYa79SRBCbL14Jx/6YwOAzWFGylg/yGxR3/L
	V4n498P71uBu2o/jaZq+wSdiO86FrN6tDq2+7plWDODHkSnuAtRIAuOhnfVrVRrQmVk+O0S7ZqQ07
	hgZ15RcakPB4jJg09nd08WjrukubXx3dRSoafJMy5JAAfu4Su/5FXKmAbLKQKULEPHMa3UQfiz9BN
	1s3A3i35IxiE5nfAZGTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSdMb-0000000Fw1Y-2kya;
	Fri, 20 Jun 2025 15:09:09 +0000
Received: from fllvem-ot04.ext.ti.com ([198.47.19.246])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSdMQ-0000000Fw0P-2UvQ
	for linux-phy@lists.infradead.org;
	Fri, 20 Jun 2025 15:09:00 +0000
Received: from fllvem-sh04.itg.ti.com ([10.64.41.54])
	by fllvem-ot04.ext.ti.com (8.15.2/8.15.2) with ESMTP id 55KF8gh8958970;
	Fri, 20 Jun 2025 10:08:42 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1750432122;
	bh=L5yI6SdnJQ9HkMn9dVOfOYCgRSMMg1ztVuir82mh09M=;
	h=Date:Subject:From:To:CC:References:In-Reply-To;
	b=PV08E54/RDU3WvY7bWAHEQp/udbpEESBWxe9OmjvhmZY12e4D+BoZA/+UFdBedDSE
	 JzJCFzoTgtjE4miWEVXQMh63KrjfzreujoFDZ81TDmTm1fjU5n2ODd0215jALQnOB4
	 nHPEqmKFjOFoFuTXJl4prl8euuhyiaIH3YBGAp/w=
Received: from DFLE108.ent.ti.com (dfle108.ent.ti.com [10.64.6.29])
	by fllvem-sh04.itg.ti.com (8.18.1/8.18.1) with ESMTPS id 55KF8gQn783061
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA256 bits=128 verify=FAIL);
	Fri, 20 Jun 2025 10:08:42 -0500
Received: from DFLE104.ent.ti.com (10.64.6.25) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55; Fri, 20
 Jun 2025 10:08:41 -0500
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55 via
 Frontend Transport; Fri, 20 Jun 2025 10:08:41 -0500
Received: from [172.24.227.193] (devarsh-precision-tower-3620.dhcp.ti.com [172.24.227.193])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 55KF8bQX3142100;
	Fri, 20 Jun 2025 10:08:38 -0500
Message-ID: <e9096b46-3661-40c5-a67f-7f09f838093b@ti.com>
Date: Fri, 20 Jun 2025 20:38:37 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] phy: cadence: cdns-dphy: Fix PLL lock and
 O_CMN_READY polling
From: Devarsh Thakkar <devarsht@ti.com>
To: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
CC: <sakari.ailus@linux.intel.com>, <u.kleine-koenig@baylibre.com>,
        <vigneshr@ti.com>, <aradhya.bhatia@linux.dev>, <s-jain1@ti.com>,
        <r-donadkar@ti.com>, <vkoul@kernel.org>, <kishon@kernel.org>,
        <mripard@kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>
References: <20250502033451.2291330-1-devarsht@ti.com>
 <20250502033451.2291330-2-devarsht@ti.com>
 <b94facde-7591-41de-bc6f-b26cb46e100a@ideasonboard.com>
 <2237e887-eb0c-406d-a528-a135d62fbb0d@ti.com>
Content-Language: en-US
In-Reply-To: <2237e887-eb0c-406d-a528-a135d62fbb0d@ti.com>
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250620_080858_724245_77892359 
X-CRM114-Status: GOOD (  22.55  )
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

SGVsbG8sCgpPbiAyMC8wNi8yNSAyMDowNSwgRGV2YXJzaCBUaGFra2FyIHdyb3RlOgo+IEhpIFRv
bWksCj4gCj4gVGhhbmtzIGZvciB0aGUgcmV2aWV3Lgo+IAo+IE9uIDI2LzA1LzI1IDE2OjI5LCBU
b21pIFZhbGtlaW5lbiB3cm90ZToKPj4gSGksCj4+Cj4+IE9uIDAyLzA1LzIwMjUgMDY6MzQsIERl
dmFyc2ggVGhha2thciB3cm90ZToKPj4+IFBMTCBsb2NrdXAgYW5kIE9fQ01OX1JFQURZIGFzc2Vy
dGlvbiBjYW4gb25seSBoYXBwZW4gYWZ0ZXIgY29tbW9uIHN0YXRlCj4+PiBtYWNoaW5lIGdldHMg
ZW5hYmxlZCAoYnkgcHJvZ3JhbW1pbmcgRFBIWV9DTU5fU1NNIHJlZ2lzdGVyKSwgYnV0IAo+Pj4g
ZHJpdmVyIHdhcwo+Pj4gcG9sbGluZyB0aGVtIGJlZm9yZSB0aGUgY29tbW9uIHN0YXRlIG1hY2hp
bmUgd2FzIGVuYWJsZWQuIFRvIGZpeCB0aGlzIDoKPj4+Cj4+PiAtIEFkZCBuZXcgZnVuY3Rpb24g
Y2FsbGJhY2tzIGZvciBwb2xsaW5nIG9uIFBMTCBsb2NrIGFuZCBPX0NNTl9SRUFEWQo+Pj4gwqDC
oCBhc3NlcnRpb24uCj4+PiAtIEFzIHN0YXRlIG1hY2hpbmUgYW5kIGNsb2NrcyBnZXQgZW5hYmxl
ZCBpbiBwb3dlcl9vbiBjYWxsYmFjayBvbmx5LCAKPj4+IG1vdmUKPj4+IMKgwqAgdGhlIGNsb2Nr
IHJlbGF0ZWQgcHJvZ3JhbW1pbmcgcGFydCBmcm9tIGNvbmZpZ3VyZSBjYWxsYmFjayB0byAKPj4+
IHBvd2VyX29uCj4+PiDCoMKgIGNhbGxiYWNrIGFuZCBwb2xsIGZvciB0aGUgUExMIGxvY2t1cCBh
bmQgT19DTU5fUkVBRFkgYXNzZXJ0aW9uIGFmdGVyCj4+PiDCoMKgIHN0YXRlIG1hY2hpbmUgZ2V0
cyBlbmFibGVkLgo+Pj4gLSBUaGUgY29uZmlndXJlIGNhbGxiYWNrIG9ubHkgc2F2ZXMgdGhlIFBM
TCBjb25maWd1cmF0aW9uIHJlY2VpdmVkIAo+Pj4gZnJvbSB0aGUKPj4+IMKgwqAgY2xpZW50IGRy
aXZlciB3aGljaCB3aWxsIGJlIGFwcGxpZWQgbGF0ZXIgb24gaW4gcG93ZXJfb24gY2FsbGJhY2su
Cj4+PiAtIEFkZCBjaGVja3MgdG8gZW5zdXJlIGNvbmZpZ3VyZSBpcyBjYWxsZWQgYmVmb3JlIHBv
d2VyX29uIGFuZCBzdGF0ZQo+Pj4gwqDCoCBtYWNoaW5lIGlzIGluIGRpc2FibGVkIHN0YXRlIGJl
Zm9yZSBwb3dlcl9vbiBjYWxsYmFjayBpcyBjYWxsZWQuCj4+PiAtIERpc2FibGUgc3RhdGUgbWFj
aGluZSBpbiBwb3dlcl9vZmYgc28gdGhhdCBjbGllbnQgZHJpdmVyIGNhbgo+Pj4gwqDCoCByZS1j
b25maWd1cmUgdGhlIFBMTCBieSBmb2xsb3dpbmcgdXAgYSBwb3dlcl9vZmYsIGNvbmZpZ3VyZSwg
cG93ZXJfb24KPj4+IMKgwqAgc2VxdWVuY2UuCj4+Cj4+IElzIHRoZSBEUEhZICYgUExMIGRvY3Vt
ZW50ZWQgaW4gdGhlIFRSTSBzb21ld2hlcmU/Cj4+Cj4gCj4gSSBoYWQgZ290IHRoaXMgaW5mb3Jt
YXRpb24gZnJvbSBjYWRlbmNlIHN1cHBvcnQuIEJ1dCBJIHRoaW5rIGl0IGlzIGFsc28gCj4gZG9j
dW1lbnRlZCBpbiBKNzIxRSBUUk0gWzFdLiBEUEhZIFR4IHN0YXJ0dXAgc2VxdWVuY2UgaXMgc2Ft
ZSBhcyBEUEhZIFR4IAo+IGFuZCB0aGVyZSBpcyBhIGluaXRpYWxpemF0aW9uIGRpYWdyYW0gZm9y
IHRoZSBzYW1lIGluIEo3MjFFIFRSTSBbMV0gCj4gcmVmZXJlbmNlZCBhdCAxMi43LjIuNC4xLjIu
MSBTdGFydC11cCBTZXF1ZW5jZSBUaW1pbmcgRGlhZ3JhbS4gSXQgc2hvd3MgCj4gT19DTU5fUkVB
RFkgcG9sbGluZyBhdCB0aGUgZW5kIGFmdGVyIGNvbW1vbiBjb25maWd1cmF0aW9uIHBpbiBzZXR1
cCBhbmQgCj4gVGFibGUgMTItMTUzMy4gQ29tbW9uIENvbmZpZ3VyYXRpb24tUmVsYXRlZCBTZXR1
cCBtZW50aW9ucyBzdGF0ZSBtYWNoaW5lIAo+IGVuYWJsZSBwYXJ0IHVuZGVyIHRoZSBjb21tb24g
Y29uZmlndXJhdGlvbiBzZXR1cCB3aGljaCBoYXBwZW5zIGJlZm9yZSAKPiB0aGUgcG9sbGluZy4g
QW5kIHRoZSBvYnNlcnZhdGlvbnMgd2l0aCB0aGlzIHBhdGNoIGRvIHN5bmMgd2l0aCAKPiB1bmRl
cnN0YW5kaW5nIGFzIHdlIHNlZSBQTEwgbG9ja2luZyB1cCBmYXN0ZXIgd2l0aG91dCBhbnkgdGlt
ZW91dCB3aGljaCAKPiB3YXMgdGhlIGNhc2UgYmVmb3JlIHRoaXMgcGF0Y2guCj4gCj4+IEkganVz
dCBmaW5kIHRoZSBzZXF1ZW5jZSBhIGJpdCBvZGQuIEZvciBleGFtcGxlLCB5b3Ugd2FpdCBmb3Ig
dGhlIFBMTCB0bwo+PiBsb2NrLCBhbmQgYWZ0ZXIgdGhhdCwgeW91IGVuYWJsZSB0aGUgUExMIHJl
ZiBjbG9jay4gTWF5YmUgSSdtIG1pc3NpbmcKPj4gc29tZXRoaW5nIGhlcmUsIGJ1dC4uLiB0aGF0
IHNob3VsZCBub3Qgd29yay4KPiAKPiBJIHRoaW5rIGl0J3MgbXkgYmFkLCBidXQgaXQgd29ya3Mg
c29tZWhvdy4gQnV0IGl0IG1ha2VzIHNlbnNlIHRvIGVuYWJsZSAKPiB0aGUgY2xvY2sgYmVmb3Jl
IHdlIHN0YXJ0IHBvbGxpbmcgZm9yIFBMTCBsb2NrLCBzbyB3aWxsIHVwZGF0ZSBpdCBpbiAKPiBu
ZXh0IHJldmlzaW9uLgo+IAoKU29ycnksIGhhZCBtaXNzZWQgdG8gYWRkIHRoZSByZWZlcmVuY2Ug
OgoKWzFdOiBodHRwczovL3d3dy50aS5jb20vbGl0L3ppcC9zcHJ1aWwxCgpSZWdhcmRzCkRldmFy
c2gKCj4+Cj4+IMKgIFRvbWkKPj4KPiBSZWdhcmRzCj4gRGV2YXJzaAoKLS0gCmxpbnV4LXBoeSBt
YWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
