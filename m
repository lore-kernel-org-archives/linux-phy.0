Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 728ABC28B20
	for <linux-phy@archiver.kernel.org>; Wed,  2 Apr 2025 13:37:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x3p+qDzMkVymE4AROXwJZHw1H52iupK69q36KoKwue4=; b=CSjjHxKL1t8c98
	vD+FowOklTN9Kl/yvZSesMJ4USc4MOlC8IVI9mJsv9MeZnIsN59t24MD3/Ty/cDRgFNh4O3+qplV8
	mP/b2CcMgMzAExXncUVGQvh+4AxSDvhPjiNTSDcoXIaJ7MyehyT6miyYM9CWXkJMdrdNaX/8UsPsD
	uK+WR3buVky6FRBF2+OFHb1WYnlAVUQcMwuVKdCrG1CDbbJxuKSRi/w4S8gPlppFJuzJLC9TW7wzr
	NLI/vQVGR+ERv2ijMiArQQMly9F6jrVYcWdAS2gD5tbdfecK3AOcp3yAFnpfa15XLW1wmtJI/6OO3
	Ell4a39PI1SDzvSPWPiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzyHv-00000006Gj8-07lc;
	Wed, 02 Apr 2025 13:37:51 +0000
Received: from lelvem-ot01.ext.ti.com ([198.47.23.234])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzyAh-00000006Ere-2AUN
	for linux-phy@lists.infradead.org;
	Wed, 02 Apr 2025 13:30:24 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by lelvem-ot01.ext.ti.com (8.15.2/8.15.2) with ESMTPS id 532DU4Qf3412145
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
	Wed, 2 Apr 2025 08:30:04 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1743600604;
	bh=Q6+HD7Ng+Z5XT/gJSd8nUlxStDa5mkVhPgGnNl3TOlc=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=ULmtb7RZ3AUji+DCJvCm67NBZfZrXV4C7xToHr4H5UoutKdsW1btkzgR+wqam9nNU
	 9ek7jMZ1Rh975TPTW7R6a/05Rs+OHJYaT1g9NAFv/CTu7Y41cR1vLwbLtvYOG4CFDt
	 J2rOFQdV203tNiR7fHtEciO9fb5j2sN05v7jW9/U=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTP id 532DU3WX090201;
	Wed, 2 Apr 2025 08:30:04 -0500
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Wed, 2
 Apr 2025 08:30:03 -0500
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Wed, 2 Apr 2025 08:30:03 -0500
Received: from [172.24.227.193] (devarsh-precision-tower-3620.dhcp.ti.com [172.24.227.193])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 532DTxC0056057;
	Wed, 2 Apr 2025 08:29:59 -0500
Message-ID: <e7cff4f9-da46-4352-8900-3eddae9345a7@ti.com>
Date: Wed, 2 Apr 2025 18:59:58 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] phy: cadence: cdns-dphy: Fix PLL lock and
 O_CMN_READY polling
To: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <mripard@kernel.org>,
        <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>
CC: <sakari.ailus@linux.intel.com>, <u.kleine-koenig@baylibre.com>,
        <vigneshr@ti.com>, <aradhya.bhatia@linux.dev>, <s-jain1@ti.com>,
        <r-donadkar@ti.com>
References: <20250326152320.3835249-1-devarsht@ti.com>
 <20250326152320.3835249-2-devarsht@ti.com>
 <cddb8c30-c614-4fae-9cbd-f5776f930165@ideasonboard.com>
Content-Language: en-US
From: Devarsh Thakkar <devarsht@ti.com>
In-Reply-To: <cddb8c30-c614-4fae-9cbd-f5776f930165@ideasonboard.com>
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250402_063023_646623_527B219F 
X-CRM114-Status: GOOD (  15.00  )
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

SGkgVG9taSwKClRoYW5rcyBmb3IgdGhlIHJldmlldy4KCk9uIDAyLzA0LzI1IDE3OjI1LCBUb21p
IFZhbGtlaW5lbiB3cm90ZToKPHNuaXA+Cj4+IMKgIC8qCj4+IMKgwqAgKiBUaGlzIGlzIHRoZSBy
ZWZlcmVuY2UgaW1wbGVtZW50YXRpb24gb2YgRFBIWSBob29rcy4gU3BlY2lmaWMgCj4+IGludGVn
cmF0aW9uIG9mCj4+IMKgwqAgKiB0aGlzIElQIG1heSBoYXZlIHRvIHJlLWltcGxlbWVudCBzb21l
IG9mIHRoZW0gZGVwZW5kaW5nIG9uIGhvdyAKPj4gdGhleSBkZWNpZGVkCj4+IEBAIC0yNzgsNiAr
MzA5LDggQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBjZG5zX2RwaHlfb3BzIGo3MjFlX2RwaHlfb3Bz
ID0gewo+PiDCoMKgwqDCoMKgIC5nZXRfd2FrZXVwX3RpbWVfbnMgPSBjZG5zX2RwaHlfajcyMWVf
Z2V0X3dha2V1cF90aW1lX25zLAo+PiDCoMKgwqDCoMKgIC5zZXRfcGxsX2NmZyA9IGNkbnNfZHBo
eV9qNzIxZV9zZXRfcGxsX2NmZywKPj4gwqDCoMKgwqDCoCAuc2V0X3BzbV9kaXYgPSBjZG5zX2Rw
aHlfajcyMWVfc2V0X3BzbV9kaXYsCj4+ICvCoMKgwqAgLndhaXRfZm9yX3BsbF9sb2NrID0gY2Ru
c19kcGh5X2o3MjFlX3dhaXRfZm9yX3BsbF9sb2NrLAo+PiArwqDCoMKgIC53YWl0X2Zvcl9jbW5f
cmVhZHkgPSBjZG5zX2RwaHlfajcyMWVfd2FpdF9mb3JfY21uX3JlYWR5LAo+PiDCoCB9Owo+PiDC
oCBzdGF0aWMgaW50IGNkbnNfZHBoeV9jb25maWdfZnJvbV9vcHRzKHN0cnVjdCBwaHkgKnBoeSwK
Pj4gQEAgLTM3Myw2ICs0MDYsMTQgQEAgc3RhdGljIGludCBjZG5zX2RwaHlfY29uZmlndXJlKHN0
cnVjdCBwaHkgKnBoeSwgCj4+IHVuaW9uIHBoeV9jb25maWd1cmVfb3B0cyAqb3B0cykKPj4gwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBGSUVMRF9QUkVQKERQSFlfQkFORF9DRkdfUklHSFRfQkFORCwg
YmFuZF9jdHJsKTsKPj4gwqDCoMKgwqDCoCB3cml0ZWwocmVnLCBkcGh5LT5yZWdzICsgRFBIWV9C
QU5EX0NGRyk7Cj4+ICvCoMKgwqAgcmV0ID0gY2Ruc19kcGh5X3dhaXRfZm9yX3BsbF9sb2NrKGRw
aHkpOwo+PiArwqDCoMKgIGlmIChyZXQpCj4+ICvCoMKgwqDCoMKgwqDCoCBkZXZfZXJyKCZkcGh5
LT5waHktPmRldiwgIkZhaWxlZCB0byBsb2NrIFBMTCB3aXRoIGVyciAlZFxuIiwgCj4+IHJldCk7
Cj4+ICsKPj4gK8KgwqDCoCByZXQgPSBjZG5zX2RwaHlfd2FpdF9mb3JfY21uX3JlYWR5KGRwaHkp
Owo+PiArwqDCoMKgIGlmIChyZXQpCj4+ICvCoMKgwqDCoMKgwqDCoCBkZXZfZXJyKCZkcGh5LT5w
aHktPmRldiwgIk9fQ01OX1JFQURZIHNpZ25hbCBmYWlsZWQgdG8gYXNzZXJ0IAo+PiB3aXRoIGVy
ciAlZFxuIiwgcmV0KTsKPj4gKwo+IAo+IFNob3VsZG4ndCB0aGVzZSByZXR1cm4gYW4gZXJyb3I/
IE9yIHdoYXQncyB0aGUgcmVhc29uIHRoZXNlIGFyZSBvayAoYW5kIAo+IGlmIHNvLCBzaG91bGQg
dGhlIHByaW50cyBiZSBkZXZfZGJnPykKPiAKClllcywgSSB0aGluayBpdCB3b3VsZCBiZSBiZXR0
ZXIgaWYgd2UgY2FuIHJldHVybiBlcnJvciBhbmQgZmFpbCBpZiAKdGltZW91dCBoYXBwZW4uIEkg
d2lsbCBmaXggaXQgaW4gbmV4dCByZXZpc2lvbi4KClJlZ2FyZHMKRGV2YXJzaAoKPiAgwqBUb21p
Cj4gCj4+IMKgwqDCoMKgwqAgcmV0dXJuIDA7Cj4+IMKgIH0KPiAKCi0tIApsaW51eC1waHkgbWFp
bGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
