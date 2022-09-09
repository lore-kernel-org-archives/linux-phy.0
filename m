Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95EB1ECAAA1
	for <linux-phy@archiver.kernel.org>; Fri,  9 Sep 2022 06:31:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:CC:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xg0qYXDv6xinqds5WWXcv+tB8BlXv0NIMgx0eTru7sE=; b=qlGnr6Dm6E+FA7aI5iWdfg7zFM
	fl4LqmKT4QYCiL8gG0JQj+tO0BmYf1ZhH3912GcydsJqBho9bOfdfVwNpX/CfgPIjUZDeiTBQP4rq
	KuslA+JdUvorLxoevzxqdVwphYHN1CwZv8mykorb0LvF9RfWDRP0DknP0oFevv9dFJ9oEIhqw7OR3
	aY+g7TxIg/rMB7FhUyAovkMOrfsgyimfkj0wDWLrsazcx/NCcgmabW+qV96c1JJD4iqXOC+sYMQMm
	+hPVYkpx6R8WV51d00m+Tm3SgA3hB5BVti1HRvW69eetL35AhC2NNhj3wGzJjomBywKvyPE5O08dS
	5KOLjOzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWXXa-00DKjj-LY; Fri, 09 Sep 2022 06:31:02 +0000
Received: from szxga02-in.huawei.com ([45.249.212.188])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWXXA-00DKNj-Kd
	for linux-phy@lists.infradead.org; Fri, 09 Sep 2022 06:30:38 +0000
Received: from dggemv704-chm.china.huawei.com (unknown [172.30.72.56])
	by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4MP5cc4l9GzQj7k;
	Fri,  9 Sep 2022 14:26:56 +0800 (CST)
Received: from kwepemm600010.china.huawei.com (7.193.23.86) by
 dggemv704-chm.china.huawei.com (10.3.19.47) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.24; Fri, 9 Sep 2022 14:30:34 +0800
Received: from [10.174.178.31] (10.174.178.31) by
 kwepemm600010.china.huawei.com (7.193.23.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.24; Fri, 9 Sep 2022 14:30:33 +0800
Subject: Re: [PATCH 1/2] phy: usb: Fix potential NULL dereference in
 sp_usb_phy_probe()
To: Greg KH <gregkh@linuxfoundation.org>
CC: <vincent.sunplus@gmail.com>, <kishon@ti.com>, <vkoul@kernel.org>,
	<p.zabel@pengutronix.de>, <linux-usb@vger.kernel.org>,
	<linux-phy@lists.infradead.org>, <kernel-janitors@vger.kernel.org>
References: <20220909013546.2259545-1-sunke32@huawei.com>
 <20220909013546.2259545-2-sunke32@huawei.com> <YxrRlCytfPobnjSv@kroah.com>
From: Sun Ke <sunke32@huawei.com>
Message-ID: <027f9ef7-b447-b685-d190-01ff1d45c46a@huawei.com>
Date: Fri, 9 Sep 2022 14:30:32 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <YxrRlCytfPobnjSv@kroah.com>
X-Originating-IP: [10.174.178.31]
X-ClientProxiedBy: dggems701-chm.china.huawei.com (10.3.19.178) To
 kwepemm600010.china.huawei.com (7.193.23.86)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220908_233036_933555_C66C27FD 
X-CRM114-Status: GOOD (  12.82  )
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
Content-Type: text/plain; charset="gbk"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

CgrU2iAyMDIyLzkvOSAxMzozOSwgR3JlZyBLSCDQtLXAOgo+IE9uIEZyaSwgU2VwIDA5LCAyMDIy
IGF0IDA5OjM1OjQ1QU0gKzA4MDAsIFN1biBLZSB3cm90ZToKPj4gcGxhdGZvcm1fZ2V0X3Jlc291
cmNlX2J5bmFtZSgpIG1heSBmYWlsIGFuZCByZXR1cm4gTlVMTCwgc28gd2Ugc2hvdWxkCj4+IGJl
dHRlciBjaGVjayBpdCBzIHJldHVybiB2YWx1ZSB0byBhdm9pZCBhIE5VTEwgcG9pbnRlciBkZXJl
ZmVyZW5jZQo+PiBhIGJpdCBsYXRlciBpbiB0aGUgY29kZS4KPj4KPj4gRml4ZXM6IDk5ZDljY2Q5
NzM4NSAoInBoeTogdXNiOiBBZGQgVVNCMi4wIHBoeSBkcml2ZXIgZm9yIFN1bnBsdXMgU1A3MDIx
IikKPj4gU2lnbmVkLW9mZi1ieTogU3VuIEtlIDxzdW5rZTMyQGh1YXdlaS5jb20+Cj4+IC0tLQo+
PiAgIGRyaXZlcnMvcGh5L3N1bnBsdXMvcGh5LXN1bnBsdXMtdXNiMi5jIHwgNCArKysrCj4+ICAg
MSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9waHkvc3VucGx1cy9waHktc3VucGx1cy11c2IyLmMgYi9kcml2ZXJzL3BoeS9zdW5wbHVzL3Bo
eS1zdW5wbHVzLXVzYjIuYwo+PiBpbmRleCA1MjY5OTY4YjMwNjAuLmQ3M2E4YTQyMWQ5YyAxMDA2
NDQKPj4gLS0tIGEvZHJpdmVycy9waHkvc3VucGx1cy9waHktc3VucGx1cy11c2IyLmMKPj4gKysr
IGIvZHJpdmVycy9waHkvc3VucGx1cy9waHktc3VucGx1cy11c2IyLmMKPj4gQEAgLTI0OSwxMSAr
MjQ5LDE1IEBAIHN0YXRpYyBpbnQgc3BfdXNiX3BoeV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2
aWNlICpwZGV2KQo+PiAgIAl1c2JwaHktPmRldiA9ICZwZGV2LT5kZXY7Cj4+ICAgCj4+ICAgCXVz
YnBoeS0+cGh5X3Jlc19tZW0gPSBwbGF0Zm9ybV9nZXRfcmVzb3VyY2VfYnluYW1lKHBkZXYsIElP
UkVTT1VSQ0VfTUVNLCAicGh5Iik7Cj4gCj4gSG93IGNhbiB0aGlzIGZhaWwgb24gdGhpcyBzeXN0
ZW0/Cj4gCj4+ICsJaWYgKCF1c2JwaHktPnBoeV9yZXNfbWVtKQo+PiArCQlyZXR1cm4gLUVJTlZB
TDsKPj4gICAJdXNicGh5LT5waHlfcmVncyA9IGRldm1faW9yZW1hcF9yZXNvdXJjZSgmcGRldi0+
ZGV2LCB1c2JwaHktPnBoeV9yZXNfbWVtKTsKPj4gICAJaWYgKElTX0VSUih1c2JwaHktPnBoeV9y
ZWdzKSkKPj4gICAJCXJldHVybiBQVFJfRVJSKHVzYnBoeS0+cGh5X3JlZ3MpOwo+PiAgIAo+PiAg
IAl1c2JwaHktPm1vb240X3Jlc19tZW0gPSBwbGF0Zm9ybV9nZXRfcmVzb3VyY2VfYnluYW1lKHBk
ZXYsIElPUkVTT1VSQ0VfTUVNLCAibW9vbjQiKTsKPiAKPiBTYW1lIGhlcmUsIGhvdyBjYW4gdGhp
cyBmYWlsPwo+IEhhdmUgeW91IHNlZW4gdGhlc2UgZmFpbHVyZXMgaGFwcGVuIGluIHJlYWwgc3lz
dGVtcz8KCk5vLCBqdXN0IGNvZGUgcmV2aWV3LgoKVGhhbmtzLApTdW4gS2UKPiAKPiB0aGFua3Ms
Cj4gCj4gZ3JlZyBrLWgKPiAuCj4gCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1w
aHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1waHkK
