Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9FA9C433F5
	for <linux-phy@archiver.kernel.org>; Mon,  4 Apr 2022 09:34:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SZjwYelfsfaWgbJC8ZIRWSw9Lv2aAVD537oAr+A4iRA=; b=jTUt/lc3Uqd1Hg
	/1hoJK1gOEpLcyw6iAw9JdNmeIPQu4RIHIgw6URBBGhJiKgtZ1HXKx1ZI1XZQePouIcTkRF04qSbe
	8nVOhAsPjrd/ojCmWFmGIdsMhOszCA8BowwnsJGqJRTFqmQj8MHjafmL12QX88NYMqby9S36Bt299
	tkJAaHhMzlaTjuoqVRlv5Ri8JbpXVEsZ2jPuJ1FRsSOQJVktUVSwCssjKFxbcMtA8jFXuTrsy/iVT
	Me/h0y5LRZwLIJ3pyROFHtVQcflmDj3TFaO074YN1epcS+bJT3f8EKnUq5UuSMIPoSXmQFf7Eitjm
	SkLCiCYBK4BAtg/OE4fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nbJ6T-00ED3O-0w; Mon, 04 Apr 2022 09:34:29 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nbJ6Q-00ECzJ-GW
 for linux-phy@lists.infradead.org; Mon, 04 Apr 2022 09:34:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1nbJ6D-000624-TH; Mon, 04 Apr 2022 11:34:13 +0200
Received: from [2a0a:edc0:0:900:1d::4e] (helo=lupine)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1nbJ6D-00101n-4r; Mon, 04 Apr 2022 11:34:11 +0200
Received: from pza by lupine with local (Exim 4.94.2)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1nbJ6B-0004fp-0u; Mon, 04 Apr 2022 11:34:11 +0200
Message-ID: <c967e6bdb586c273c187e4892b03aa82064af4ab.camel@pengutronix.de>
Subject: Re: [PATCH v2 1/7] reset: imx7: Add the iMX8MP PCIe PHY PERST support
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Richard Zhu <hongxing.zhu@nxp.com>, l.stach@pengutronix.de, 
 bhelgaas@google.com, lorenzo.pieralisi@arm.com, robh@kernel.org, 
 shawnguo@kernel.org, vkoul@kernel.org, alexander.stein@ew.tq-group.com
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, kernel@pengutronix.de, linux-imx@nxp.com
Date: Mon, 04 Apr 2022 11:34:10 +0200
In-Reply-To: <1646644054-24421-2-git-send-email-hongxing.zhu@nxp.com>
References: <1646644054-24421-1-git-send-email-hongxing.zhu@nxp.com>
 <1646644054-24421-2-git-send-email-hongxing.zhu@nxp.com>
User-Agent: Evolution 3.38.3-1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220404_023426_587880_7F8EC3B0 
X-CRM114-Status: GOOD (  13.87  )
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

SGkgUmljaGFyZCwKCk9uIE1vLCAyMDIyLTAzLTA3IGF0IDE3OjA3ICswODAwLCBSaWNoYXJkIFpo
dSB3cm90ZToKPiBBZGQgdGhlIGkuTVg4TVAgUENJZSBQSFkgUEVSU1Qgc3VwcG9ydC4KPiAKPiBT
aWduZWQtb2ZmLWJ5OiBSaWNoYXJkIFpodSA8aG9uZ3hpbmcuemh1QG54cC5jb20+Cj4gLS0tCj4g
wqBkcml2ZXJzL3Jlc2V0L3Jlc2V0LWlteDcuYyB8IDEgKwo+IMKgMSBmaWxlIGNoYW5nZWQsIDEg
aW5zZXJ0aW9uKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcmVzZXQvcmVzZXQtaW14Ny5j
IGIvZHJpdmVycy9yZXNldC9yZXNldC1pbXg3LmMKPiBpbmRleCAxODVhMzMzZGY2NmMuLmQyNDA4
NzI1ZWIyYyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3Jlc2V0L3Jlc2V0LWlteDcuYwo+ICsrKyBi
L2RyaXZlcnMvcmVzZXQvcmVzZXQtaW14Ny5jCj4gQEAgLTMyOSw2ICszMjksNyBAQCBzdGF0aWMg
aW50IGlteDhtcF9yZXNldF9zZXQoc3RydWN0Cj4gcmVzZXRfY29udHJvbGxlcl9kZXYgKnJjZGV2
LAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgYnJlYWs7Cj4gwqAKPiDCoMKgwqDC
oMKgwqDCoMKgY2FzZSBJTVg4TVBfUkVTRVRfUENJRV9DVFJMX0FQUFNfRU46Cj4gK8KgwqDCoMKg
wqDCoMKgY2FzZSBJTVg4TVBfUkVTRVRfUENJRVBIWV9QRVJTVDoKPiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoHZhbHVlID0gYXNzZXJ0ID8gMCA6IGJpdDsKPiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoGJyZWFrOwo+IMKgwqDCoMKgwqDCoMKgwqB9CgpUaGlzIGRvZXNu
J3QgZG8gd2hhdCB0aGUgY29tbWl0IGRlc2NyaXB0aW9uIHNheXMuCgpUaGUgUENJRVBIWV9QRVJT
VCBiaXQgaXMgYWxyZWFkeSBzdXBwb3J0ZWQgYnkgdGhlIGRyaXZlciAoYWxiZWl0CmluY29ycmVj
dGx5PykgLSB0aGlzIHBhdGNoIGp1c3QgaW52ZXJ0cyB0aGUgYml0LgoKU2luY2UgdGhpcyBiaXQg
aXMgbm90IGludmVydGVkIG9uIHRoZSBvdGhlciBwbGF0Zm9ybXMsIGFuZMKgdGhlIGkuTVg4TVAK
cmVmZXJlbmNlIG1hbnVhbCBzYXlzIG5vdGhpbmcgYWJvdXQgdGhpcywgcGxlYXNlIGV4cGxpY2l0
bHkgc3RhdGUgd2h5CnRoaXMgbmVlZHMgdG8gYmUgaW52ZXJ0ZWQgYW5kIGNhbGwgaXQgYSBmaXgg
aW4gdGhlIGNvbW1pdCBkZXNjcmlwdGlvbi4KCnJlZ2FyZHMKUGhpbGlwcAoKLS0gCmxpbnV4LXBo
eSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
