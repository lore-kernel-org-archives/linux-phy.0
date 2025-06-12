Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9AC82C71136
	for <linux-phy@archiver.kernel.org>; Thu, 12 Jun 2025 11:32:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ANHBLDIObfhLLnaaFjy7uXEAd2xdI5AH/K1gBys5I4A=; b=rMBKCCULSb5CTZ
	Bo0olMz6m+4A58x33xZCygsdDpFiDLUgUgeiJgyzsk2YdP3DffRXoVtLM1qd8GBkyWOGWb40hduDB
	ndvpj6x12b4yTHI8b2+wlI42rCuaWee2FKHGCFAN35x9cKAgW9x//n7qsixRJbBfz5dl2jbZQAus4
	jdHpK4DSnDAax0J2QpqfLLBOteyHavdkjHk13UzzM8PuJqA13hmH+zbuEQ1WKkRZ9ioATj3m9vmfO
	R6B0he/gsDrnVSQot1RpnP3Vwo6lgDx3DwkjYzs1M9AczMEuNux3R7zhRjtnpuJfrXV9uocND3Slv
	rbq6pdNOJdSAF4ZedCXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPgAk-0000000D9Mh-1Hwe;
	Thu, 12 Jun 2025 11:32:42 +0000
Received: from lelvem-ot01.ext.ti.com ([198.47.23.234])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPenV-0000000CuVa-2vWJ;
	Thu, 12 Jun 2025 10:04:39 +0000
Received: from lelvem-sh01.itg.ti.com ([10.180.77.71])
	by lelvem-ot01.ext.ti.com (8.15.2/8.15.2) with ESMTP id 55CA4NFf2882638;
	Thu, 12 Jun 2025 05:04:23 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1749722663;
	bh=M0kvq/12rDbuJoW2tEUY3xZ2q0mV8QHq6VdoGLJBCVM=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=BoxAwgD2buHHc5xQReJkJk/XWxKlkhor4zR5KLFTmrpzvrwJ0RSC0RknNnYtdQy9s
	 VK584tKRpAyyAZo8czRUE19ivyZVGcX+bgWCKGZyFPH6cSseR/o3dBDFUrPSJ3dHuk
	 SGZhe2ni5JBz61w74do3uGu1TNiLfPoJUCGxHn3I=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
	by lelvem-sh01.itg.ti.com (8.18.1/8.18.1) with ESMTPS id 55CA4N3m2496745
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA256 bits=128 verify=FAIL);
	Thu, 12 Jun 2025 05:04:23 -0500
Received: from DFLE100.ent.ti.com (10.64.6.21) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55; Thu, 12
 Jun 2025 05:04:22 -0500
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55 via
 Frontend Transport; Thu, 12 Jun 2025 05:04:22 -0500
Received: from localhost (dhcp-172-24-227-169.dhcp.ti.com [172.24.227.169])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 55CA4LvJ1998196;
	Thu, 12 Jun 2025 05:04:21 -0500
Date: Thu, 12 Jun 2025 15:34:20 +0530
From: Siddharth Vadapalli <s-vadapalli@ti.com>
To: Enric Balletbo i Serra <eballetb@redhat.com>
CC: Roger Quadros <rogerq@kernel.org>,
        Siddharth Vadapalli
	<s-vadapalli@ti.com>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <sjakhade@cadence.com>,
        <thomas.richard@bootlin.com>, <christophe.jaillet@wanadoo.fr>,
        <u.kleine-koenig@baylibre.com>, <linux-phy@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        <srk@ti.com>
Subject: Re: [PATCH v3 1/2] phy: cadence-torrent: Add PCIe multilink
 configuration for 100 MHz refclk
Message-ID: <6b747de0-9d10-43e9-a2b1-23a129301538@ti.com>
References: <20250109121614.754466-1-s-vadapalli@ti.com>
 <20250109121614.754466-2-s-vadapalli@ti.com>
 <fccedc26-0bb9-4078-8a94-4199f6b383c1@kernel.org>
 <CALE0LRsdsTU-NLN4fgh2c8qnS-pPP1BDJvjnvsSOnud8amk3=A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CALE0LRsdsTU-NLN4fgh2c8qnS-pPP1BDJvjnvsSOnud8amk3=A@mail.gmail.com>
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250612_030437_943589_3A534733 
X-CRM114-Status: GOOD (  11.16  )
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

T24gVGh1LCBKdW4gMTIsIDIwMjUgYXQgMTA6NDg6MjBBTSArMDIwMCwgRW5yaWMgQmFsbGV0Ym8g
aSBTZXJyYSB3cm90ZToKCkhlbGxvIEVucmljLAoKPiBIaSBhbGwsCj4gCj4gT24gVGh1LCBKYW4g
OSwgMjAyNSBhdCA1OjM14oCvUE0gUm9nZXIgUXVhZHJvcyA8cm9nZXJxQGtlcm5lbC5vcmc+IHdy
b3RlOgo+ID4KPiA+Cj4gPgo+ID4gT24gMDkvMDEvMjAyNSAxNDoxNiwgU2lkZGhhcnRoIFZhZGFw
YWxsaSB3cm90ZToKPiA+ID4gRnJvbTogU3dhcG5pbCBKYWtoYWRlIDxzamFraGFkZUBjYWRlbmNl
LmNvbT4KPiA+ID4KPiA+ID4gQWRkIHJlZ2lzdGVyIHNlcXVlbmNlcyB0byBzdXBwb3J0IFBDSWUg
bXVsdGlsaW5rIGNvbmZpZ3VyYXRpb24gZm9yIDEwME1Iego+ID4gPiByZWZlcmVuY2UgY2xvY2su
IE1heGltdW0gdHdvIFBDSWUgbGlua3MgYXJlIHN1cHBvcnRlZC4KPiA+ID4KPiA+ID4gU2lnbmVk
LW9mZi1ieTogU3dhcG5pbCBKYWtoYWRlIDxzamFraGFkZUBjYWRlbmNlLmNvbT4KPiA+ID4gU2ln
bmVkLW9mZi1ieTogU2lkZGhhcnRoIFZhZGFwYWxsaSA8cy12YWRhcGFsbGlAdGkuY29tPgo+ID4K
PiA+IFJldmlld2VkLWJ5OiBSb2dlciBRdWFkcm9zIDxyb2dlcnFAa2VybmVsLm9yZz4KPiA+Cj4g
Cj4gVGhlc2UgcGF0Y2hlcyBzZWVtIGdvb2QgYW5kIGhhdmUgYmVlbiByZXZpZXdlZCBidXQgbG9v
ayBzdGFsbGVkIGhlcmUuCj4gVGhlcmUgaXMgYW55IGNoYW5jZSB0byByZWJhc2UgaXQgb24gdG9w
IG9mIHRoZSBtYWlubGluZT8KClRoZSBwYXRjaGVzIGFwcGx5IGNsZWFubHkgb24gdGhlIGxhdGVz
dCBsaW51eC1uZXh0IHRhZ2dlZCBuZXh0LTIwMjUwNjEyLgoKUmVnYXJkcywKU2lkZGhhcnRoLgoK
LS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
