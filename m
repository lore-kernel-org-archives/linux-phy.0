Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 230E7C02195
	for <linux-phy@archiver.kernel.org>; Mon,  3 Feb 2025 08:54:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yXend/8jOiUV/TXb4ygJ6Ie+YohPp/OtTgwvid8IxTU=; b=HALijdCXqLpg6+
	XwoNZQGpT+djf0DiHGY0DLPmmL0OQv37X8/Yl26+CnkjmJA8a8dCncQ5/QxiqvBhO3r8h61tQJXvZ
	f7A/8YJnYXqyoCotIglI4HRImQTlzptQFW8FARrkp4ARrox3XyhqgGj+I3fgYIjQjpypu+XYKFPJH
	A9+qs8kOOTHJAcctmXckY6vZYIR2DKjKJ08jj2KHzX6CAUuFkOJjqkA9x+xKGw+Gp2D+hTBLYenMv
	YKWn9vtdZHCKOHPkWRQBB4DXTh1oDjOs8hFG6KajCTvO6cvNewKVoq2+M4Ub1de5csKSFyb7566xZ
	7lAFbfVK/EcdSoUocjEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tesDn-0000000Ev8O-1Uu3;
	Mon, 03 Feb 2025 08:54:23 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tesDl-0000000Ev8G-1oms
	for linux-phy@bombadil.infradead.org;
	Mon, 03 Feb 2025 08:54:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:CC:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=h/uGUGzt7+mJ3CwBhXgxnoxyshAQovDxkoGYmZUziAU=; b=MZHAH/y+9ahQ6wuM9GrENbOsxv
	hLbqi9yyQGFJRizYKK1fKIYT/mVcuNu+1f/wzgJm64SwQ1q9cNjrIr2zkTr5xRyr1C+nMLWiovu6e
	1hqBQVf0GzVjGfU7kEMND9gK1LaX9d+OF8y1GBsZrV7Z2Nbna/PGCLkVgIJVT3Gpp26ooYR1VCNEX
	YD8Ibp51coNBc5KMC/JWFl8GuQrKTJ6xIbclaID23qxg4oumgqwonFge1Z7Cw+MXjp4U7whKlmHQ+
	E2P4DMCNC81WyUjLzcx0mirgqByUXXqrCEtF/1VhZXW3blni6IicJkzf5NXjWPJOYMepwltBSBzIA
	lQcrkvTQ==;
Received: from [198.47.23.234] (helo=lelvem-ot01.ext.ti.com)
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tesDh-0000000G1Bj-3akU
	for linux-phy@lists.infradead.org;
	Mon, 03 Feb 2025 08:54:20 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by lelvem-ot01.ext.ti.com (8.15.2/8.15.2) with ESMTPS id 5138rtem2987207
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 3 Feb 2025 02:53:55 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1738572835;
	bh=h/uGUGzt7+mJ3CwBhXgxnoxyshAQovDxkoGYmZUziAU=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=JVUM071FNqkzh0wXZklCFaMxYYwr15bZpDwthXGdcpTEvp9sh7lNFouh1sii6iOwY
	 15P3BKVgKUn/7oPa89xdtrf4l/v9AQElIaLIMtkaahZ4/IJ84Pj+aEWhhBYb+lrqtu
	 /aFovwqal0PiVfVuX191fZJn9fOio5XNNIdi1484=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 5138rtPt014226
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 3 Feb 2025 02:53:55 -0600
Received: from DLEE109.ent.ti.com (157.170.170.41) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Mon, 3
 Feb 2025 02:53:54 -0600
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Mon, 3 Feb 2025 02:53:54 -0600
Received: from [172.24.227.193] (devarsht.dhcp.ti.com [172.24.227.193] (may be forged))
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 5138roF7064092;
	Mon, 3 Feb 2025 02:53:50 -0600
Message-ID: <63585990-b670-2a8f-a450-6ade850d53a4@ti.com>
Date: Mon, 3 Feb 2025 14:23:49 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] phy: cadence: cdns-dphy: Fix PLL lock and common ready
 poll timeout
Content-Language: en-US
To: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <mripard@kernel.org>,
        <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>
CC: <sakari.ailus@linux.intel.com>, <vigneshr@ti.com>,
        <aradhya.bhatia@linux.dev>, <s-jain1@ti.com>, <r-donadkar@ti.com>,
        <j-choudhary@ti.com>, <h-shenoy@ti.com>, <praneeth@ti.com>,
        <u-kumar1@ti.com>
References: <20241230125319.941372-1-devarsht@ti.com>
 <2cb9ff06-ca8d-4c15-a0bc-e30e065e720b@ideasonboard.com>
From: Devarsh Thakkar <devarsht@ti.com>
In-Reply-To: <2cb9ff06-ca8d-4c15-a0bc-e30e065e720b@ideasonboard.com>
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250203_085418_584102_C422C7D1 
X-CRM114-Status: GOOD (  17.44  )
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

SGkgVG9taSwKClRoYW5rcyBmb3IgdGhlIHJldmlldy4KT24gMDYvMDEvMjUgMTQ6MjUsIFRvbWkg
VmFsa2VpbmVuIHdyb3RlOgoKPHNuaXA+Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgY29uc3Qgc3RydWN0IGNkbnNfZHBoeV9jZmcgKmNmZyk7Cj4+ICvCoMKgwqAgdm9pZCAo
KndhaXRfZm9yX3BsbF9sb2NrKShzdHJ1Y3QgY2Ruc19kcGh5ICpkcGh5KTsKPj4gK8KgwqDCoCB2
b2lkICgqd2FpdF9mb3JfY21uX3JlYWR5KShzdHJ1Y3QgY2Ruc19kcGh5ICpkcGh5KTsKPiAKPiBJ
IHRoaW5rIGJvdGggb2YgdGhlc2Ugc2hvdWxkIHJldHVybiBhbiBlcnJvciBjb2RlLgo+CgpZZXMg
SSB0aG91Z2h0IGFib3V0IHRoaXMgYnV0IGRpZCBub3Qgc2VlIG11Y2ggYmVuZWZpdC4gU2ltaWxh
ciB0byBvdGhlcgpjZG5zX2RwaHlfb3BzLCB0aGVyZSBpcyBubyBlcnJvciByZWNvdmVyeS9oYW5k
bGluZyBpbiBjYXNlIG9mIHRpbWVvdXQgZm9yCmFib3ZlIHR3byB3YWl0KiBmdW5jdGlvbnMuIFRo
ZSBpbXBsZW1lbnRlciBmdW5jdGlvbiBjYW4ganVzdCBwcmludCBhIGRldl9lcnIKd2l0aCB0aW1l
b3V0IG1lc3NhZ2UgYXMgYmVpbmcgZG9uZSBhbHJlYWR5LiBBbHNvIHRoaXMgbWFpbnRhaW5zIGhv
bW9nZW5laXR5CndpdGggZXhpc3RpbmcgY2Ruc19kcGh5X29wcyBzdWNoIGFzIHNldF9wbGxfY2Zn
IHdoaWNoIHVzZWQgdm9pZCBmdW5jdGlvbiBhcwpyZXR1cm4gdmFsdWUuCgo+PiDCoMKgwqDCoMKg
IHVuc2lnbmVkIGxvbmcgKCpnZXRfd2FrZXVwX3RpbWVfbnMpKHN0cnVjdCBjZG5zX2RwaHkgKmRw
aHkpOwo+PiDCoCB9Owo+PiDCoCBAQCAtMTkxLDYgKzE5MywxOCBAQCBzdGF0aWMgdW5zaWduZWQg
bG9uZwo+PiBjZG5zX2RwaHlfZ2V0X3dha2V1cF90aW1lX25zKHN0cnVjdCBjZG5zX2RwaHkgKmRw
aHkpCj4+IMKgwqDCoMKgwqAgcmV0dXJuIGRwaHktPm9wcy0+Z2V0X3dha2V1cF90aW1lX25zKGRw
aHkpOwo+PiDCoCB9Cj4+IMKgICtzdGF0aWMgdm9pZCBjZG5zX2RwaHlfd2FpdF9mb3JfcGxsX2xv
Y2soc3RydWN0IGNkbnNfZHBoeSAqZHBoeSkKPj4gK3sKPj4gK8KgwqDCoCBpZiAoZHBoeS0+b3Bz
LT53YWl0X2Zvcl9wbGxfbG9jaykKPj4gK8KgwqDCoMKgwqDCoMKgIGRwaHktPm9wcy0+d2FpdF9m
b3JfcGxsX2xvY2soZHBoeSk7Cj4+ICt9Cj4+ICsKPj4gK3N0YXRpYyB2b2lkIGNkbnNfZHBoeV93
YWl0X2Zvcl9jbW5fcmVhZHkoc3RydWN0IGNkbnNfZHBoeSAqZHBoeSkKPj4gK3sKPj4gK8KgwqDC
oCBpZiAoZHBoeS0+b3BzLT53YWl0X2Zvcl9jbW5fcmVhZHkpCj4+ICvCoMKgwqDCoMKgwqDCoCBk
cGh5LT5vcHMtPndhaXRfZm9yX2Ntbl9yZWFkeShkcGh5KTsKPj4gK30KPj4gKwo+PiDCoCBzdGF0
aWMgdW5zaWduZWQgbG9uZyBjZG5zX2RwaHlfcmVmX2dldF93YWtldXBfdGltZV9ucyhzdHJ1Y3Qg
Y2Ruc19kcGh5ICpkcGh5KQo+PiDCoCB7Cj4+IMKgwqDCoMKgwqAgLyogRGVmYXVsdCB3YWtldXAg
dGltZSBpcyA4MDAgbnMgKGluIGEgc2ltdWxhdGVkIGVudmlyb25tZW50KS4gKi8KPj4gQEAgLTIx
Miw3ICsyMjYsNyBAQCBzdGF0aWMgdm9pZCBjZG5zX2RwaHlfcmVmX3NldF9wbGxfY2ZnKHN0cnVj
dCBjZG5zX2RwaHkKPj4gKmRwaHksCj4+IMKgwqDCoMKgwqAgd3JpdGVsKERQSFlfQ01OX0ZCRElW
X0ZST01fUkVHIHwKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIERQSFlfQ01OX0ZCRElWX1ZB
TChmYmRpdl9sb3csIGZiZGl2X2hpZ2gpLAo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZHBo
eS0+cmVncyArIERQSFlfQ01OX0ZCRElWKTsKPj4gLcKgwqDCoCB3cml0ZWwoRFBIWV9DTU5fUFdN
X0hJR0goNikgfCBEUEhZX0NNTl9QV01fTE9XKDB4MTAxKSB8Cj4+ICvCoMKgwqAgd3JpdGVsKHJl
YWRsKGRwaHktPnJlZ3MgKyBEUEhZX0NNTl9QV00pIHwgRFBIWV9DTU5fUFdNX0hJR0goNikgfAo+
PiBEUEhZX0NNTl9QV01fTE9XKDB4MTAxKSB8Cj4gCj4gVGhpcywgYW5kIHRoZSByZXN0IGluIHRo
ZSBwYXRjaCwgaXMgcHJvYmFibHkgbm90IGEgZ29vZCBpZGVhLiBZb3UganVzdCAib3IiCj4gdGhl
IGJpdCBmaWVsZHMsIHdpdGhvdXQgY2xlYXJpbmcgdGhlIGZpZWxkcyBpbiB0aGUgcmVnaXN0ZXIu
IElmIHRoZSByZWdpc3Rlcgo+IGRlZmF1bHQgdmFsdWVzIGNvbnRhaW4gb25lcyAob3IgbWF5YmUg
ZS5nLiBib290bG9hZGVyIGhhcyBzZXQgdGhlIHJlZ2lzdGVyCj4gYWxyZWFkeSksIHRoaXMgbWln
aHQgcmVzdWx0IGluIHdyb25nIHZhbHVlIHdyaXR0ZW4uCj4gCj4gTWF5YmUgYWRkIGEgaGVscGVy
IHRvIHVwZGF0ZSBiaXQgZmllbGRzLCBzaW1pbGFyIHRvIHJlZ21hcF91cGRhdGVfYml0cygpLiBP
cgo+IHJlYWQgdGhlIGN1cnJlbnQgcmVnIHZhbHVlIHRvIGEgbG9jYWwsIG1vZGlmeSB0aGVyZSwg
YW5kIHdyaXRlIGJhY2suCj4gCgpZZXMsIGJ1dCBpZiB3ZSB3YW50IHRvIGJlIHRvdGFsbHkgYWdu
b3N0aWMgdG8gY3VycmVudCBzdGF0ZSBvZiByZWdpc3Rlcgphc3N1bWluZyBib290bG9hZGVyIG9y
IHNvbWUgb3RoZXIgZW50aXR5IGhhcyBhbHJlYWR5IHVwZGF0ZWQgc29tZSBiaXRzLCB0aGVuCml0
IG1lYW5zIHRoYXQgdGhlIHJlc2V0IHZhbHVlcyBmb3Igc29tZSBvciBhbGwgb2YgdGhlIHJlZ2lz
dGVyIGJpdHMgbWF5IGhhdmUKYWxzbyBiZWVuIG92ZXItd3JpdHRlbi4gSW4gdGhhdCBjYXNlIHJl
YWQtbW9kaWZ5LXdyaXRlIGJlIGl0IHdpdGgKcmVnbWFwX3VwZGF0ZV9iaXRzIG9yIGFueSBvdGhl
ciBtZWNoYW5pc20gbWF5IG5vdCBoZWxwIGVpdGhlci4KClRvIGhhbmRsZSB0aGlzLCBJIGFtIHRo
aW5raW5nIHRvIHVzZSBtYWNyb3MgZm9yIGRlZmF1bHQgcmVzZXQgYml0cyBhbmQgdXNlIGl0CmFs
d2F5cyB0byBwcm9ncmFtIGNvbmNlcm5lZCByZWdpc3RlcnMuCgpSZWdhcmRzCkRldmFyc2gKCi0t
IApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
