Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BA2CC369D9
	for <linux-phy@archiver.kernel.org>; Wed, 30 Apr 2025 07:57:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+N35LLQ3HKgtHeiniF9KwRQ1b+7jDw5IDrvA/IdnvG8=; b=zQGCt4uRYIbJdV
	9b9axP3KflzbtgmM2XFsY585RS0Fd0RvAqAlDNz8dqYmlHr/uKrVXI0JAShUO1dglnaGf5eI3BUs6
	3pS0ucSektV5DBc/PLu/ZFq9breiHzrt36mPHVBPD4bWE8SO9AuCx3al1y+UY9X84zftOgoOk++Ta
	9Y8hFynsnykss0I8lIO+HcCJ2n2qqRnimMHAgny2ydvw4Qi/12XMfuFBPT067pJI9f/pASdNuoZfu
	x9GO3cTSYSXKPgJdzwtyfENQeah/c5c7OBDlHDThYp6vnWQrhH1wQcn+zZErOG/6J9VpPj6quocPn
	Bxzbz90gGLIyz50gCSBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uA2Jt-0000000C46N-0LqI;
	Wed, 30 Apr 2025 07:57:29 +0000
Received: from lelvem-ot01.ext.ti.com ([198.47.23.234])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uA20O-0000000C12i-0LGo
	for linux-phy@lists.infradead.org;
	Wed, 30 Apr 2025 07:37:21 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by lelvem-ot01.ext.ti.com (8.15.2/8.15.2) with ESMTPS id 53U7asTv3301796
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 30 Apr 2025 02:36:54 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1745998614;
	bh=2bL+38tFsbV1m5JmQRtKkmONUu/gQUIlM2ZViEyOqs8=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=mCH4ibZxwgBfGpBM9wctCNMseoJrmnwF9mzit8EIcg9k2V8SaF2sc8XMc9QEiK27R
	 J6uZCZqAlTH7/0sFpHWXqGJh396hGDL4jsw6kXLriKX+DisKf8OvM1ImNu8fQm4fZB
	 Dcq5nUL+nSdrdaFJk5QQcEJtwPE9tDkIFZarRs80=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 53U7as1O015647
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 30 Apr 2025 02:36:54 -0500
Received: from DLEE114.ent.ti.com (157.170.170.25) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Wed, 30
 Apr 2025 02:36:54 -0500
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Wed, 30 Apr 2025 02:36:54 -0500
Received: from [172.24.227.193] (devarsh-precision-tower-3620.dhcp.ti.com [172.24.227.193])
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 53U7aogn086842;
	Wed, 30 Apr 2025 02:36:51 -0500
Message-ID: <31529961-09b9-4855-b30a-45991508ad95@ti.com>
Date: Wed, 30 Apr 2025 13:06:49 +0530
MIME-Version: 1.0
User-Agent: Betterbird (Linux)
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
X-CRM114-CacheID: sfid-20250430_003720_247211_F3CC36D3 
X-CRM114-Status: GOOD (  14.22  )
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

SGkgVG9taSwKCk9uIDAyLzA0LzI1IDE3OjEyLCBUb21pIFZhbGtlaW5lbiB3cm90ZToKPiBIaSwK
PiAKVGhhbmtzIGZvciB0aGUgcmV2aWV3LgoKPiBPbiAyNi8wMy8yMDI1IDE3OjIzLCBEZXZhcnNo
IFRoYWtrYXIgd3JvdGU6Cj4+IEBAIC00MDUsNiArNDA2LDggQEAgc3RhdGljIGludCBjZG5zX2Rw
aHlfY29uZmlndXJlKHN0cnVjdCBwaHkgKnBoeSwKPj4gdW5pb24gcGh5X2NvbmZpZ3VyZV9vcHRz
ICpvcHRzKQo+PiDCoMKgwqDCoMKgIHJlZyA9IEZJRUxEX1BSRVAoRFBIWV9CQU5EX0NGR19MRUZU
X0JBTkQsIGJhbmRfY3RybCkgfAo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIEZJRUxEX1BSRVAo
RFBIWV9CQU5EX0NGR19SSUdIVF9CQU5ELCBiYW5kX2N0cmwpOwo+PiDCoMKgwqDCoMKgIHdyaXRl
bChyZWcsIGRwaHktPnJlZ3MgKyBEUEhZX0JBTkRfQ0ZHKTsKPj4gK8KgwqDCoCB3cml0ZWwoRklF
TERfUFJFUChEUEhZX0NNTl9TU01fQ0FMX1dBSVRfVElNRSwgMHgxNCkgfAo+PiBEUEhZX0NNTl9T
U01fRU4gfCBEUEhZX0NNTl9UWF9NT0RFX0VOLAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqAgZHBo
eS0+cmVncyArIERQSFlfQ01OX1NTTSk7Cj4gCj4gVGhpcyBzb3VuZHMgbGlrZSBhIFRJIHNwZWNp
ZmljIGNoYXJhY3Rlcml6ZWQgdmFsdWUsIGJ1dCB0aGUgZnVuY3Rpb24KPiBoZXJlIGlzIGEgZ2Vu
ZXJpYyBvbmUuIEFsc28sIGlzIHRoZSB2YWx1ZSBzYW1lIGZvciBhbGwgVEkgU29Dcz8gT3IgaXMg
aXQKPiBwZXItc29jPwo+IAoKSSBzZWUgc2FtZSBjaGFyYWN0ZXJpemVkIHZhbHVlIGZvciBjYWxp
YnJhdGlvbiB3YWl0IHRpbWUgZm9yIGVhY2ggVEkgU29DCmJ1dCBhcyBkaXNjdXNzZWQgb2ZmbGlu
ZSwgSSB3aWxsIHVzZSByZWFkLW1vZGlmeS13cml0ZSB0byBwcmVzZXJ2ZSB0aGUKcmVzZXQgdmFs
dWUgd2hpY2ggd2FzIGNoYXJhY3Rlcml6ZWQgZm9yIHRoZSBjb3JyZXNwb25kaW5nIHBsYXRmb3Jt
IHNvCnRoYXQgaWYgYW55IG90aGVyIHBsYXRmb3JtIGlzIHVzaW5nIGEgZGlmZmVyZW50IGNoYXJh
Y3Rlcml6ZWQgcmVzZXQKdmFsdWUgZm9yIGNhbGlicmF0aW9uIHdhaXQgdGltZSwgaXQgd291bGQg
aGFuZGxlIHRoYXQgY2FzZSBhcyB3ZWxsLgoKUmVnYXJkcwpEZXZhcnNoCgotLSAKbGludXgtcGh5
IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
