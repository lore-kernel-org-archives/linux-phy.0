Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89914CA9ED0
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 16:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kwm22CoDAIXdqQYx/FPkywCBfXVtbNT3Q2DcLBsaO/8=; b=URK8xgosEE9N2L
	MNssZpBBuzO+w94oRhFU5re7Vj10fPrN7oDG0ok0V3STqH8DRuVWb3Ws/iyNTsC8PlpG79W1FYsJW
	C+KYDLqkrv835Q+YgYf+vWe8BL8aozhQ6dFxgDZr6+ASwqZRRvI1gADkiRd9FHmv52TkIRT88rIXl
	seq40Vt9/drgF0u2eOuJXsVG9XTyZOuKyXMKucnfRdMS07EedX+UsbJx2oxrUvHOp8hUrf5UV8Y0B
	ao0GI0l3BkWlH+//7JaG1qNX735CGsvtYj63uQkXAaS0RvgKOmKzI+pityj3JEV2r5WGxy765rJRq
	+n+6AuNbWDOzNG2jBXrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGIfO-0000000Avrx-11C8;
	Mon, 12 Oct 2026 16:14:22 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGIfM-0000000AvrU-3Bd8;
	Mon, 12 Oct 2026 16:14:20 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id E356B601FB;
	Mon, 12 Oct 2026 16:14:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DAAFB1F0089B;
	Mon, 12 Oct 2026 16:14:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791821659;
	bh=RFdw4NU0rqUdnwQkTW5jDTI2TrOvFLZe/E45ZXiDc1Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=axltw2OzFfnLto8lDkWnN70zzds5Hzc+9r8r1oqBZPU0ch275Tc7K4iNf8MBEEkZ+
	 ccKwY4IhxJtI0GUnsHXL6WZTobF2ZU9UFuo7FXRWAlaJjzfapOPDVfIfhz5m4y9+R8
	 Qf8uGc5HAa78+rbJgPUVlFGwIkIPkv7vPFiN4gFLW5SDMHvGiKEKfLISv9bo9hVg5r
	 uXUdQCqyJ4mCVBiXIr6g7JW4FAhem74cvuUDquwunje2NHvvz9oODV5HL2aJal5YcO
	 Rpu6WZipcjdV8zbR02T2fZPbkqVDUAbsahyIVyCqeaH7j89Bj+E75itq6p1ohWeTKw
	 9MW1TYxMr74/g==
Date: Mon, 12 Oct 2026 21:44:07 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Selvarasu Ganesan <selvarasu.g@samsung.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, krzk@kernel.org, 
	peter.griffin@linaro.org, alim.akhtar@samsung.com, pritam.sutar@samsung.com, 
	andre.draszik@linaro.org, kernel@lvkasz.us, pengpeng@iscas.ac.cn, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, jh0801.jung@samsung.com, 
	h10.kim@samsung.com, dh10.jung@samsung.com, akash.m5@samsung.com, 
	hongpooh.kim@samsung.com, eomji.oh@samsung.com, shijie.cai@samsung.com, 
	muhammed.ali@samsung.com, thiagu.r@samsung.com
Subject: Re: [PATCH v2] phy: exynos5-usbdrd: Use dynamic phy_cfg size to
 prevent OOB access
Message-ID: <as0G-bk_TKRToOkv@debian>
References: <CGME20260918103249epcas5p49c9b4bf6fd60c28f5f09f0b7b69828b6@epcas5p4.samsung.com>
 <20260918103147.2628614-1-selvarasu.g@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260918103147.2628614-1-selvarasu.g@samsung.com>
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

T24gRnJpLCBTZXAgMTgsIDIwMjYgYXQgMDQ6MDE6NDdQTSArMDUzMCwgU2VsdmFyYXN1IEdhbmVz
YW4gd3JvdGU6Cj4gVGhlIHByb2JlIGxvb3AgY3VycmVudGx5IGl0ZXJhdGVzIHVzaW5nIEVYWU5P
UzVfRFJEUEhZU19OVU0gKDIpLAo+IGNyZWF0aW5nIGJvdGggVVRNSSBhbmQgUElQRTMgUEhZIGlu
c3RhbmNlcyByZWdhcmRsZXNzIG9mIHRoZSBTb0MKPiBjYXBhYmlsaXR5LiBTZXZlcmFsIFNvQ3Mg
KEV4eW5vczIyMDAsIEV4eW5vczc4NzAsIEV4eW5vczg1MCwgRXh5bm9zOTkwLAo+IGFuZCBFeHlu
b3NBdXRvVjkyMCkgcHJvdmlkZSBwaHlfY2ZnIGFycmF5cyBjb250YWluaW5nIG9ubHkgYSBzaW5n
bGUKPiBlbGVtZW50Lgo+IAo+IE9uIHRoZXNlIFNvQ3MsIHdoZW4gdGhlIGxvb3AgcmVhY2hlcyBp
bmRleCAxLCB0aGUgZHJpdmVyIHJlYWRzIHBhc3QgdGhlCj4gZW5kIG9mIHRoZSByb2RhdGEgYXJy
YXksIHBvcHVsYXRpbmcgdGhlIHNlY29uZCBQSFkgaW5zdGFuY2Ugd2l0aCBnYXJiYWdlCj4gZGF0
YS4gU2luY2UgdGhlIGNvbmZpZ3VyYXRpb24gc3RydWN0dXJlIGNvbnRhaW5zIGNyaXRpY2FsIGZ1
bmN0aW9uCj4gcG9pbnRlcnMgKHBoeV9pc29sLCBwaHlfaW5pdCwgc2V0X3JlZmNsayksIGFueSBz
dWJzZXF1ZW50IGFjY2VzcyB0byB0aGlzCj4gUEhZIGluc3RhbmNlIHZpYSBleHlub3M1X3VzYmRy
ZF9waHlfeGxhdGUgY291bGQgcmVzdWx0IGluIGEga2VybmVsIG9vcHMuCj4gCj4gRml4IHRoaXMg
YnkgYWRkaW5nICduX3BoeV9jZmcnIHRvIHN0cnVjdCBleHlub3M1X3VzYmRyZF9waHlfZHJ2ZGF0
YSB0bwo+IHN0b3JlIHRoZSBhY3R1YWwgc2l6ZSBvZiB0aGUgcGh5X2NmZyBhcnJheSBmb3IgZWFj
aCBTb0MuIFVwZGF0ZSB0aGUKPiBwcm9iZSBsb29wIGFuZCB0aGUgeGxhdGUgZnVuY3Rpb24gdG8g
Ym91bmQgdGhlaXIgYWNjZXNzIGFnYWluc3QgdGhpcwo+IHZhbHVlIGluc3RlYWQgb2YgdGhlIGhh
cmRjb2RlZCBFWFlOT1M1X0RSRFBIWVNfTlVNLgo+IAo+IEFzc2lzdGVkLWJ5OiBMTE0KPiBTaWdu
ZWQtb2ZmLWJ5OiBTZWx2YXJhc3UgR2FuZXNhbiA8c2VsdmFyYXN1LmdAc2Ftc3VuZy5jb20+Cj4g
VGVzdGVkLWJ5OiDFgXVrYXN6IExlYmllZHppxYRza2kgPGtlcm5lbEBsdmthc3oudXM+Cj4gUmV2
aWV3ZWQtYnk6IEFsaW0gQWtodGFyIDxhbGltLmFraHRhckBzYW1zdW5nLmNvbT4KPiBSZXZpZXdl
ZC1ieTogQW5kcsOpIERyYXN6aWsgPGFuZHJlLmRyYXN6aWtAbGluYXJvLm9yZz4KPiBSZXZpZXdl
ZC1ieTogUGV0ZXIgR3JpZmZpbiA8cGV0ZXIuZ3JpZmZpbkBsaW5hcm8ub3JnPgoKU2luY2UgdGhp
cyBwYXRjaCBmaXhlcyBhbiBPT0IgaXNzdWUsIGl0IHNob3VsZCBoYXZlIGEgRml4ZXMgdGFnIGFu
ZCB0aGUgc3RhYmxlCmxpc3Qgc2hvdWxkIGJlIENDZWQgZm9yIGJhY2twb3J0aW5nLgoKLSBNYW5p
CgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCv
jQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5
Cg==
