Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 102ADC43458
	for <linux-phy@archiver.kernel.org>; Fri,  3 Jul 2026 23:58:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rs4LK5y4mIBev3AOpAXPNuj21Aho5rBuHzVr62/k0JY=; b=fYO3HKk9KRBWba
	Cbvzk19FHPGx25adXYTFBkuxI7K60nqObd4SBGGDU3NpK/xGhNLCR0hHhIFd3l8Qb0vqYLEfRvZKh
	qII3IsR9GXlpm6cnBYXGkx7eUGNIflbibOmwhrivXHnom6H5yLQ+zmCHrjujZar1jpeYkhaKNnT51
	Kf8gQqr8JQJ710aaTW+QWGKQp3XrUqh7lTElqtA9iRnAPNhAtFxWk3MXUxugt2qWoPwoz0rHQX1P/
	cEE4yMFoKQgkZ68PQDlbLvrChTYDL3dNPUaoktjuNBI3lBsTHMirkz9KdkDSS/29cSMgVeE+smNNM
	c5/CaPvAi17qgsywfatA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfnmL-0000000823D-3KCx;
	Fri, 03 Jul 2026 23:58:41 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfnmJ-00000008236-3zcK
	for linux-phy@lists.infradead.org;
	Fri, 03 Jul 2026 23:58:39 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 8E4404019A;
	Fri,  3 Jul 2026 23:58:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EF30B1F000E9;
	Fri,  3 Jul 2026 23:58:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783123119;
	bh=mj8IHoa8G5A+dFcs3Q1Lz+9JAmCeDfdLd+QU4fe96DY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=R6h7IJwXgepfEYjHB62agjDJ3FnGEmTnUENtCveCpQSzIk3Yuz0WmHG5zGGsL3NLP
	 63YEo3uPLLs1Ca5iSXifEkZPwC908Pf6m1nJZhGotal3Etnz/l4GIwv85sA9e+j0sF
	 XU1JdpQgyLEUlqeai3vfyxOwJOSQ5yOWWFacou+TtTUtKGola69gu+/4jRB6Osp4wn
	 vVem8pmgQ0wmZ7WTvv+6PQ+ztiKB2tc1De9qUA45oIn0v8SwLXoS99ac3PCQ29vpQ8
	 BOvXY2Sbrn3xKGMRrQYSxOMarW2yhQE810AHn5j3wQyjA3RDXxnNSZkKfxTtUSIH6F
	 dJL1XMU2aproA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v10 34/36] phy: rockchip: usbdp: Simplify power state
 handling
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: olteanv@gmail.com, vkoul@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260703-rockchip-usbdp-cleanup-v10-34-a392711ca8a9@collabora.com>
References: <20260703-rockchip-usbdp-cleanup-v10-0-a392711ca8a9@collabora.com>
 <20260703-rockchip-usbdp-cleanup-v10-34-a392711ca8a9@collabora.com>
Date: Fri, 03 Jul 2026 23:58:38 +0000
Message-Id: <20260703235838.EF30B1F000E9@smtp.kernel.org>
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
Reply-To: sashiko-reviews@lists.linux.dev
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIE1pc3NpbmcgVVNCMyBw
b3J0IGRpc2FibGUgaW4gaGlnaC1zcGVlZCBtb2RlIGNhdXNlcyBEV0MzIFNFcnJvcnMgb24gcHJv
YmUuCi0tCgpjb21taXQgZTAyMTlmZDVmNGQ3ODRlNzhmZjk2OWFmMjY2ZTEwMTk2MzY3YmU2OQpB
dXRob3I6IFNlYmFzdGlhbiBSZWljaGVsIDxzZWJhc3RpYW4ucmVpY2hlbEBjb2xsYWJvcmEuY29t
PgoKcGh5OiByb2NrY2hpcDogdXNiZHA6IFNpbXBsaWZ5IHBvd2VyIHN0YXRlIGhhbmRsaW5nCgpU
aGlzIGNvbW1pdCBzaW1wbGlmaWVzIHBvd2VyIHN0YXRlIGhhbmRsaW5nIGJ5IGludHJvZHVjaW5n
IGEgc3dfbW9kZSBmaWVsZCBpbgphZGRpdGlvbiB0byB0aGUgaHdfbW9kZSBmaWVsZC4gVGhpcyBh
bGxvd3MgdGhlIFBIWSB0byB0cmFjayBoYXJkd2FyZS1zdXBwb3J0ZWQKbW9kZXMsIHNvZnR3YXJl
LXJlcXVlc3RlZCBtb2RlcywgYW5kIHRoZSBhY3R1YWwgaGFyZHdhcmUgc3RhdHVzLgoKPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMgYi9kcml2
ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYwo+IGluZGV4IGUyY2Q3MjY0M2E3
ZDcuLmNhOTQxOGZhYjhmM2EgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5
LXJvY2tjaGlwLXVzYmRwLmMKPiArKysgYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2No
aXAtdXNiZHAuYwoKWyAuLi4gXQoKPiBAQCAtMTI4OCwxNiArMTMxMSwyMiBAQCBzdGF0aWMgY29u
c3Qgc3RydWN0IHBoeV9vcHMgcmtfdWRwaHlfZHBfcGh5X29wcyA9IHsKPiAgc3RhdGljIGludCBy
a191ZHBoeV91c2IzX3BoeV9pbml0KHN0cnVjdCBwaHkgKnBoeSkKPiAgewo+ICAJc3RydWN0IHJr
X3VkcGh5ICp1ZHBoeSA9IHBoeV9nZXRfZHJ2ZGF0YShwaHkpOwo+ICsJaW50IHJldDsKPiAgCj4g
IAlndWFyZChtdXRleCkoJnVkcGh5LT5tdXRleCk7Cj4gIAo+IC0JLyogRFAgb25seSBvciBoaWdo
LXNwZWVkLCBkaXNhYmxlIFUzIHBvcnQgKi8KPiAtCWlmICghKHVkcGh5LT5od19tb2RlICYgVURQ
SFlfTU9ERV9VU0IpIHx8IHVkcGh5LT5ocykgewo+IC0JCXJrX3VkcGh5X3UzX3BvcnRfZGlzYWJs
ZSh1ZHBoeSwgdHJ1ZSk7Cj4gKwlpZiAodWRwaHktPmhzKQo+ICAJCXJldHVybiAwOwoKW1NldmVy
aXR5OiBIaWdoXQpEb2VzIHJldHVybmluZyBlYXJseSBoZXJlIHdpdGhvdXQgZGlzYWJsaW5nIHRo
ZSBVMyBwb3J0IGNhdXNlIERXQzMgU0Vycm9ycwpkdXJpbmcgcHJvYmUgaW4gaGlnaC1zcGVlZCBt
b2RlPwoKUHJldmlvdXNseSwgdGhpcyBwYXRoIGV4cGxpY2l0bHkgY2FsbGVkIHJrX3VkcGh5X3Uz
X3BvcnRfZGlzYWJsZSh1ZHBoeSwgdHJ1ZSkKYmVmb3JlIHJldHVybmluZy4gQnkgcmV0dXJuaW5n
IGVhcmx5IG5vdywgd2UgY29tcGxldGVseSBieXBhc3MKcmtfdWRwaHlfdXBkYXRlX3Bvd2VyX3N0
YXRlKCksIHdoaWNoIGxlYXZlcyB0aGUgVTMgcG9ydCBlbmFibGVkLiBXaGVuIHRoZQpEV0MzIGNv
bnRyb2xsZXIgaXMgcHJvYmVkLCB0aGlzIGNhbiBsZWF2ZSBpdCBjbG9ja2VkIGJ5IHRoZSB1bnBv
d2VyZWQgUEhZCmluc3RlYWQgb2YgdGhlIHNhZmUgVVRNSSBmYWxsYmFjayBjbG9jaywgcmVzdWx0
aW5nIGluIGFuIFNFcnJvci4KCj4gLQl9Cj4gIAo+IC0JcmV0dXJuIHJrX3VkcGh5X3Bvd2VyX29u
KHVkcGh5LCBVRFBIWV9NT0RFX1VTQik7Cj4gKwl1ZHBoeS0+c3dfbW9kZSB8PSBVRFBIWV9NT0RF
X1VTQjsKPiArCj4gKwlyZXQgPSBya191ZHBoeV91cGRhdGVfcG93ZXJfc3RhdGUodWRwaHkpOwoK
WyAuLi4gXQoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9w
YXRjaHNldC8yMDI2MDcwMy1yb2NrY2hpcC11c2JkcC1jbGVhbnVwLXYxMC0wLWEzOTI3MTFjYThh
OUBjb2xsYWJvcmEuY29tP3BhcnQ9MzQKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4
LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
