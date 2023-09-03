Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09158C83F2C
	for <linux-phy@archiver.kernel.org>; Mon,  4 Sep 2023 00:00:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WktUu/vh6n+X6/j8HPsdevB5ftf5igpYl0RCJtuoIxI=; b=Vt5m3KqjdCdfwT
	1D7Cqnuyswq9EnQs4KaXBIWwMryAzs+ziUzDVb1n2TNrRRJ7z6Tqf9zk31+mdo1p1jbC4SLuWk3bO
	FENuWNzuIkRUHQOAYooDJDZRonNtJdAgGYanqqNEHnxu44o1fIamMqF5SVBOWWvBIr8ln0pAgs4en
	6x5Bz83J+5a13DzOLhHt12M/kbApxIU2sXq3gjNnpnqZ6vzOrRsfk7D5faStFbanrFmiHVMBjJKsC
	G06D3N5GoVPqUEHkNXIcgkB7VNqZaV0/2vB4C7eBKv0MpTfSVfmFsbKKfoO18AOXawb5F2fo71eb0
	+obxPVB0ntIwQXxrGcsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qcx0q-00336t-21;
	Mon, 04 Sep 2023 00:00:16 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qcx0l-00335O-2h;
	Mon, 04 Sep 2023 00:00:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AF8CE165C;
	Sun,  3 Sep 2023 17:00:43 -0700 (PDT)
Received: from slackpad.lan (unknown [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 072F13F766;
	Sun,  3 Sep 2023 17:00:03 -0700 (PDT)
Date: Mon, 4 Sep 2023 00:58:55 +0100
From: Andre Przywara <andre.przywara@arm.com>
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec
 <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>,
 linux-kernel@vger.kernel.org, kernel-janitors@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@lists.linux.dev
Subject: Re: [PATCH] phy: sun4i-usb: Fix a W=1 compilation failure
Message-ID: <20230904005855.658819b3@slackpad.lan>
In-Reply-To: <0bc81612171baaa6d5dff58c8e009debc03e1ba8.1693735840.git.christophe.jaillet@wanadoo.fr>
References: <0bc81612171baaa6d5dff58c8e009debc03e1ba8.1693735840.git.christophe.jaillet@wanadoo.fr>
Organization: Arm Ltd.
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.31; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230903_170011_948791_C9DB920F 
X-CRM114-Status: GOOD (  19.43  )
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

T24gU3VuLCAgMyBTZXAgMjAyMyAxMjoxMTowNiArMDIwMApDaHJpc3RvcGhlIEpBSUxMRVQgPGNo
cmlzdG9waGUuamFpbGxldEB3YW5hZG9vLmZyPiB3cm90ZToKCj4gV2l0aCBnY2MgMTIuMy4wLCB3
aGVuIHRoaXMgZmlsZSBpcyBidWlsdCwgd2UgZ2V0IGVycm9ycyBzdWNoIGFzOgo+IAo+IGRyaXZl
cnMvcGh5L2FsbHdpbm5lci9waHktc3VuNGktdXNiLmM6IEluIGZ1bmN0aW9uIOKAmHN1bjRpX3Vz
Yl9waHlfcHJvYmXigJk6Cj4gZHJpdmVycy9waHkvYWxsd2lubmVyL3BoeS1zdW40aS11c2IuYzo3
OTA6NTI6IGVycm9yOiDigJhfdmJ1c+KAmSBkaXJlY3RpdmUgb3V0cHV0IG1heSBiZSB0cnVuY2F0
ZWQgd3JpdGluZyA1IGJ5dGVzIGludG8gYSByZWdpb24gb2Ygc2l6ZSBiZXR3ZWVuIDIgYW5kIDEy
IFstV2Vycm9yPWZvcm1hdC10cnVuY2F0aW9uPV0KPiAgIDc5MCB8ICAgICAgICAgICAgICAgICBz
bnByaW50ZihuYW1lLCBzaXplb2YobmFtZSksICJ1c2IlZF92YnVzIiwgaSk7Cj4gICAgICAgfCAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBefn5+fgo+
IGRyaXZlcnMvcGh5L2FsbHdpbm5lci9waHktc3VuNGktdXNiLmM6NzkwOjE3OiBub3RlOiDigJhz
bnByaW50ZuKAmSBvdXRwdXQgYmV0d2VlbiAxMCBhbmQgMjAgYnl0ZXMgaW50byBhIGRlc3RpbmF0
aW9uIG9mIHNpemUgMTYKPiAgIDc5MCB8ICAgICAgICAgICAgICAgICBzbnByaW50ZihuYW1lLCBz
aXplb2YobmFtZSksICJ1c2IlZF92YnVzIiwgaSk7Cj4gICAgICAgfCAgICAgICAgICAgICAgICAg
Xn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+Cj4gCj4gQmVjYXVz
ZSBvZiB0aGUgcG9zc2libGUgdmFsdWUgb2YgJ2knLCB0aGlzIGNhbid0IGJlIGFuIGlzc3VlIGlu
IHJlYWwgd29ybGQKCldvdWxkIHVzaW5nICJ1OCBpOyIgaGVscD8gQWZ0ZXIgYWxsIGN1cnJlbnRs
eSB0aGVyZSBhcmUgb25seSA0IFBIWXMKbWF4LCBhbmQgaW4gZ2VuZXJhbCB0aGlzIGlzbid0IGV4
cGVjdGVkIHRvIGJlIG1vcmUgdGhhbiBhICJoYW5kZnVsIiwgc28KOCBiaXRzIHNob3VsZCBiZSBw
bGVudHkuIEFuIHVuc2lnbmVkIGlzIGJldHRlciBhbnl3YXkuCkl0IGxlYXZlcyBhIGJpdCBvZiBh
IGJpdHRlciB0YXN0ZSwgdGhvdWdoLCBhcyB3ZSBzaG91bGRuJ3QgZG8gdGhpcyBraW5kCnR5cGUg
dHdlYWtpbmcsIGVzcGVjaWFsbHkgbm90IHRvIHdvcmsgYXJvdW5kIHRoZSBjb21waWxlciB0cnlp
bmcgdG8gYmUKY2xldmVyLCBidXQgdGhlbiBub3Qgc2VlaW5nIHRoZSB3aG9sZSBwaWN0dXJlICh0
aGF0ICJpIiBpcyBib3VuZGVkIGJ5CmNvbXBpbGUgdGltZSBjb25zdGFudHMgbm90IGV4Y2VlZGlu
ZyAiNCIpLgoKQ2hlZXJzLApBbmRyZQoKPiBhcHBsaWNhdGlvbiwgYnV0IGluIG9yZGVyIHRvIGhh
dmUgIm1ha2UgVz0xIiB3b3JrIGNvcnJlY3RseSwgZ2l2ZSBtb3JlCj4gc3BhY2UgZm9yICduYW1l
Jy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3RvcGhlIEpBSUxMRVQgPGNocmlzdG9waGUuamFp
bGxldEB3YW5hZG9vLmZyPgo+IC0tLQo+ICBkcml2ZXJzL3BoeS9hbGx3aW5uZXIvcGh5LXN1bjRp
LXVzYi5jIHwgMiArLQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRp
b24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvYWxsd2lubmVyL3BoeS1zdW40aS11
c2IuYyBiL2RyaXZlcnMvcGh5L2FsbHdpbm5lci9waHktc3VuNGktdXNiLmMKPiBpbmRleCBlYzU1
MTQ2NGRkNGYuLmU1M2E5YTkzMTdiYyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9hbGx3aW5u
ZXIvcGh5LXN1bjRpLXVzYi5jCj4gKysrIGIvZHJpdmVycy9waHkvYWxsd2lubmVyL3BoeS1zdW40
aS11c2IuYwo+IEBAIC03ODIsNyArNzgyLDcgQEAgc3RhdGljIGludCBzdW40aV91c2JfcGh5X3By
b2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gIAo+ICAJZm9yIChpID0gMDsgaSA8
IGRhdGEtPmNmZy0+bnVtX3BoeXM7IGkrKykgewo+ICAJCXN0cnVjdCBzdW40aV91c2JfcGh5ICpw
aHkgPSBkYXRhLT5waHlzICsgaTsKPiAtCQljaGFyIG5hbWVbMTZdOwo+ICsJCWNoYXIgbmFtZVsz
Ml07Cj4gIAo+ICAJCWlmIChkYXRhLT5jZmctPm1pc3NpbmdfcGh5cyAmIEJJVChpKSkKPiAgCQkJ
Y29udGludWU7CgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcGh5Cg==
