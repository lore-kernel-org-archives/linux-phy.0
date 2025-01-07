Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7A55E77197
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jan 2025 05:18:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DMmCsG7T8Uk5TT0wPKnqpHTx+eYSVNR3BQQouA8/o1Y=; b=LXqCNnVlxmhKgb
	9pYjXZHdprpQrBFiiFjx/LBzrY4AultlnK0RxaX3s+wSXDmvfCI9VCqUo+aFeiioEXYzE1ikEvjba
	zFfDOMsQJwuHbZD1aBFr6J6aHAhGxeiG/gL7d6J9iQ8OUvLzP6yUkPn04TxxnbRG8AaggjfMdjpaN
	1jD8Lq+yoZs4E+EFB++1x9qiw8VSPmtiEIcJacY8Y5XIaVSTzGMN5GlF3yIy58hZZDVQOiSZUTO09
	YHBjVydPijWQtu7pBEgSsqs+Kbgx0Vey+SOwxceGaiVA4jeQyyxauZdDhjTxtCYhuO9CuutAaqJbW
	ucB3VdVVnUiitM2BwxOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tV1z9-00000003WtH-2vwR;
	Tue, 07 Jan 2025 05:18:35 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tV1xt-00000003WnY-02XP;
	Tue, 07 Jan 2025 05:17:20 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 5075H6xZ113433;
	Mon, 6 Jan 2025 23:17:06 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1736227026;
	bh=NbXyA0kvTR/wYiNAyrxIIwWMWIbGtt4QXDL2aJ5f6W0=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=KAMKsQVigCiDdOc9kI8/quu3qUFNZkPYIUEVg1+zfAiDvujkgxNtcL2gr9bPT9ba7
	 zmKmUXVw1VPMQmgpxQcgouSoWjDa6TAwADEaXbjyjahYHl3od43vokT9PySdYzlpJw
	 dzhmhAVUqgDoV30a6eJszMAjzZwbbPOLEwOmgTEs=
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 5075H6IZ001896
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 6 Jan 2025 23:17:06 -0600
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Mon, 6
 Jan 2025 23:17:06 -0600
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Mon, 6 Jan 2025 23:17:06 -0600
Received: from localhost (uda0492258.dhcp.ti.com [10.24.72.104])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 5075H5ka124043;
	Mon, 6 Jan 2025 23:17:05 -0600
Date: Tue, 7 Jan 2025 10:47:04 +0530
From: Siddharth Vadapalli <s-vadapalli@ti.com>
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
CC: Siddharth Vadapalli <s-vadapalli@ti.com>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <sjakhade@cadence.com>, <rogerq@kernel.org>,
        <thomas.richard@bootlin.com>, <u.kleine-koenig@baylibre.com>,
        <eballetb@redhat.com>, <linux-phy@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        <srk@ti.com>
Subject: Re: [PATCH v2 1/2] phy: cadence-torrent: Add PCIe multilink
 configuration for 100 MHz refclk
Message-ID: <bdqmoqipcx6a3w7x4nkk7bsc2hzgxpwgopmyeb3odn2qvvew6j@tk3nu3slvlrf>
References: <20250106131925.263240-1-s-vadapalli@ti.com>
 <20250106131925.263240-2-s-vadapalli@ti.com>
 <1483780d-115f-4555-82b3-3e9cffe82dce@wanadoo.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1483780d-115f-4555-82b3-3e9cffe82dce@wanadoo.fr>
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250106_211717_184418_BF1F4DD4 
X-CRM114-Status: GOOD (  20.24  )
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

T24gTW9uLCBKYW4gMDYsIDIwMjUgYXQgMTE6MDA6MTRQTSArMDEwMCwgQ2hyaXN0b3BoZSBKQUlM
TEVUIHdyb3RlOgo+IExlIDA2LzAxLzIwMjUgw6AgMTQ6MTksIFNpZGRoYXJ0aCBWYWRhcGFsbGkg
YSDDqWNyaXTCoDoKPiA+IEZyb206IFN3YXBuaWwgSmFraGFkZSA8c2pha2hhZGVAY2FkZW5jZS5j
b20+Cj4gPiAKPiA+IEFkZCByZWdpc3RlciBzZXF1ZW5jZXMgdG8gc3VwcG9ydCBQQ0llIG11bHRp
bGluayBjb25maWd1cmF0aW9uIGZvciAxMDBNSHoKPiA+IHJlZmVyZW5jZSBjbG9jay4gTWF4aW11
bSB0d28gUENJZSBsaW5rcyBhcmUgc3VwcG9ydGVkLgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBT
d2FwbmlsIEpha2hhZGUgPHNqYWtoYWRlQGNhZGVuY2UuY29tPgo+ID4gU2lnbmVkLW9mZi1ieTog
U2lkZGhhcnRoIFZhZGFwYWxsaSA8cy12YWRhcGFsbGlAdGkuY29tPgo+ID4gLS0tCj4gPiAKPiA+
ICoqKk5PVEUqKioKPiA+IFNpbmNlIEkgZG9uJ3QgaGF2ZSB0aGUgaGFyZHdhcmUgcmVxdWlyZWQg
dG8gdmFsaWRhdGUgUENJZSBNdWx0aWxpbmsgKwo+ID4gVVNCIGZ1bmN0aW9uYWxpdHksIGtpbmRs
eSAqZG8gbm90IG1lcmdlKiB0aGlzIHNlcmllcyB1bnRpbCBpdCBnZXRzIGEKPiA+ICJUZXN0ZWQt
YnkiIHRhZyB3aXRoIHByb3BlciB2YWxpZGF0aW9uIG9mIHRoZSBmdW5jdGlvbmFsaXR5Lgo+ID4g
Cj4gPiBSZWdhcmRzLAo+ID4gU2lkZGhhcnRoLgo+ID4gCj4gPiAgIGRyaXZlcnMvcGh5L2NhZGVu
Y2UvcGh5LWNhZGVuY2UtdG9ycmVudC5jIHwgMTMwICsrKysrKysrKysrKysrKysrKysrKy0KPiA+
ICAgMSBmaWxlIGNoYW5nZWQsIDEyOSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gPiAK
PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9jYWRlbmNlL3BoeS1jYWRlbmNlLXRvcnJlbnQu
YyBiL2RyaXZlcnMvcGh5L2NhZGVuY2UvcGh5LWNhZGVuY2UtdG9ycmVudC5jCj4gPiBpbmRleCBh
MjgxYzBkZmFlOTcuLmIwYjVmNGJkZDdlMiAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvcGh5L2Nh
ZGVuY2UvcGh5LWNhZGVuY2UtdG9ycmVudC5jCj4gPiArKysgYi9kcml2ZXJzL3BoeS9jYWRlbmNl
L3BoeS1jYWRlbmNlLXRvcnJlbnQuYwoKWy4uLl0KCj4gPiBAQCAtMzEzMSw2ICszMTM0LDEwMSBA
QCBzdGF0aWMgdm9pZCBjZG5zX3RvcnJlbnRfcGh5X3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2
aWNlICpwZGV2KQo+ID4gICAJY2Ruc190b3JyZW50X2Nsa19jbGVhbnVwKGNkbnNfcGh5KTsKPiA+
ICAgfQo+ID4gKy8qIE11bHRpIGxpbmsgUENJZSBjb25maWd1cmF0aW9uICovCj4gPiArc3RhdGlj
IHN0cnVjdCBjZG5zX3JlZ19wYWlycyBtbF9wY2llX2xpbmtfY21uX3JlZ3NbXSA9IHsKPiA+ICsJ
ezB4MDAwMiwgUEhZX1BMTF9DRkd9LAo+ID4gKwl7MHgwNjAxLCBDTU5fUERJQUdfUExMMF9DTEtf
U0VMX00wfQo+ID4gK307Cj4gCj4gSSB0aGluayB0aGF0IHNvbWUsIGlmIG5vdCBhbGwsIG9mIHRo
ZXNlIG5ldyBzdHJ1Y3QgY291bGQgYmUgY29uc3QsIGFzCj4gZWxzZXdoZXJlIGluIHRoaXMgZmls
ZS4KClRoYW5rIHlvdSBmb3IgcmV2aWV3aW5nIHRoZSBwYXRjaCBhbmQgcG9pbnRpbmcgdGhpcyBv
dXQuIEkgd2lsbCBjaGFuZ2UKdGhlbSB0byAnY29uc3QnIGluIHRoZSB2MyBzZXJpZXMuCj4gCj4g
PiArCj4gPiArc3RhdGljIHN0cnVjdCBjZG5zX3JlZ19wYWlycyBtbF9wY2llX3hjdnJfZGlhZ19s
bl9yZWdzW10gPSB7Cj4gPiArCXsweDAxMDAsIFhDVlJfRElBR19IU0NMS19TRUx9LAo+ID4gKwl7
MHgwMDAxLCBYQ1ZSX0RJQUdfSFNDTEtfRElWfSwKPiA+ICsJezB4MDgxMiwgWENWUl9ESUFHX1BM
TERSQ19DVFJMfQo+ID4gK307CgpSZWdhcmRzLApTaWRkaGFydGguCgotLSAKbGludXgtcGh5IG1h
aWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
