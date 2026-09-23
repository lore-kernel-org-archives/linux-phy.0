Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29CB3C98306
	for <linux-phy@archiver.kernel.org>; Wed, 23 Sep 2026 02:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jz9tSybvKbgAIXauzNfp8HeX2dKaibZj7u/ST4Cn1GU=; b=SDuO7H93OoVGqw
	IqBkCE5eCXQc439Y8GzKJmIZyEZe7oC0Q925bWR8LRQJo17omArFeYyAwIG/TsrXuxR7uLWqIIL21
	o8GiWYdnyGW2QyfHQdRPXFFr8LfP5BsRQ0Gkd+Uou0SgXMa055Fu7jeRVg5lmJ+OQZRlWzkuMafph
	yoFafEP3gJhe388r74fxKtsEtgTc3SGVKiaovKpDeVMNY9z0DoxKFY3VEMKNhoCRzfdulBu0boLzG
	URCwjed5hean89NTRarwpPS6mhV3Yw6COJ7nm+ILTURY5pZ14S91LtVm+B7NQjW08bWpVbxu6OgfH
	kMqlMEuoHNQate5Wn1gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9CyG-00000006yEv-2mBb;
	Wed, 23 Sep 2026 02:44:32 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9Cxk-00000006xs9-2xCZ
	for linux-phy@lists.infradead.org;
	Wed, 23 Sep 2026 02:44:00 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 1007B435D0;
	Wed, 23 Sep 2026 02:44:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A18151F000FF;
	Wed, 23 Sep 2026 02:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790131439;
	bh=xMwK80pq4x6ukfBDS7Ayyzhmv99QU5e6ISUuDffMBCY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=SdZgpPgswma7b6q8PdPl+wKPsGLcYuh6qHCkeN+Vl51PMAlCRWahXvMVMTLUdozqn
	 7Dxhca1PvPvfUvOJpFSw1dQW5enD6VZX43Gr5ei/TTuHZT3vrcy0YOCNvZRWnLYqzj
	 YGmyfJqU2/03fyIlQxZFlckA2nV5DwiXZjazD1wn+MBRj/UAJMqpsFfAMmfihrMEu8
	 2ThlUTcKvk7FBPWbpBeCgoNSKFRWDhOJNqtcaYGs1eAmHS4cQ777WPlgZ/fa/o618v
	 rOKMZ54pbTl0cWH1b7K4pGKS5JUFpWkUzwV1VTpVXHzs2HakAegRc2MYiMIVfqxXFm
	 AvV3QLbqCVR2A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 3/5] phy: core: Add phy bulk data helper functions
To: "Inochi Amaoto" <inochiama@gmail.com>
Cc: olteanv@gmail.com, linux-phy@lists.infradead.org, neil.armstrong@linaro.org, vkoul@kernel.org
In-Reply-To: <20260923023304.78428-4-inochiama@gmail.com>
References: <20260923023304.78428-1-inochiama@gmail.com>
 <20260923023304.78428-4-inochiama@gmail.com>
Date: Wed, 23 Sep 2026 02:43:59 +0000
Message-Id: <20260923024359.A18151F000FF@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gcGh5OiBkdW1teSBidWxr
IGhlbHBlcnMgcmV0dXJuIC1FT1BOT1RTVVBQIGluc3RlYWQgb2YgLUVOT1NZUwotLQoKY29tbWl0
IDEzZDc1ZjBkNzEzMGVkNzAzOGRkNDM2YmYyMmRlMzk2NWUxZmE1NjQKQXV0aG9yOiBJbm9jaGkg
QW1hb3RvIDxpbm9jaGlhbWFAZ21haWwuY29tPgoKICAgIHBoeTogY29yZTogQWRkIHBoeSBidWxr
IGRhdGEgaGVscGVyIGZ1bmN0aW9ucwogICAgCiAgICBBZGQgc2V2ZXJhbCBoZWxwZXIgZnVuY3Rp
b25zIHRoYXQgYWxsb3cgZHJpdmVycyB0byBnZXQgc2V2ZXJhbCBwaHkKICAgIGNvbnN1bWVycyBp
biBvbmUgb3BlcmF0aW9uLiBJZiBhbnkgb2YgdGhlIHBoeSBjYW5ub3QgYmUgYWNxdWlyZWQgdGhl
bgogICAgYW55IHBoeXMgdGhhdCB3ZXJlIGdvdCB3aWxsIGJlIHB1dCBiZWZvcmUgcmV0dXJuaW5n
IHRvIHRoZSBjYWxsZXIuCgo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L3BoeS9waHkuaCBi
L2luY2x1ZGUvbGludXgvcGh5L3BoeS5oCj4gaW5kZXggZWE0Nzk3NWUyODhhZS4uNzdkOWQ3NDY4
MmI3NCAxMDA2NDQKPiAtLS0gYS9pbmNsdWRlL2xpbnV4L3BoeS9waHkuaAo+ICsrKyBiL2luY2x1
ZGUvbGludXgvcGh5L3BoeS5oCgpbIC4uLiBdCgo+IEBAIC00OTMsNiArNTExLDQzIEBAIHN0YXRp
YyBpbmxpbmUgc3RydWN0IHBoeSAqZGV2bV9vZl9waHlfZ2V0X2J5X2luZGV4KHN0cnVjdCBkZXZp
Y2UgKmRldiwKPiAgCXJldHVybiBFUlJfUFRSKC1FTk9TWVMpOwo+ICB9Cj4gIAo+ICtzdGF0aWMg
aW5saW5lIGludCBwaHlfYnVsa19jaGVja19kaXNhYmxlZCh1bnNpZ25lZCBpbnQgbnVtX3BoeXMs
Cj4gKwkJCQkJICBzdHJ1Y3QgcGh5X2J1bGtfZGF0YSAqcGh5cykKPiArewo+ICsJaWYgKCFwaHlz
KQo+ICsJCXJldHVybiAwOwo+ICsKPiArCWZvciAodW5zaWduZWQgaW50IGkgPSAwOyBpIDwgbnVt
X3BoeXM7IGkrKykKPiArCQlpZiAocGh5c1tpXS5waHkpCj4gKwkJCXJldHVybiAtRU9QTk9UU1VQ
UDsKCltTZXZlcml0eTogTG93XQpEb2VzIHRoaXMgY29kZSBicmVhayB0aGUgZHVtbXkgUEhZIHN1
YnN5c3RlbSBjb252ZW50aW9ucyBieSByZXR1cm5pbmcKLUVPUE5PVFNVUFA/CgpUaGUgZmFsbGJh
Y2sgZnVuY3Rpb25zIGZvciBpbmRpdmlkdWFsIG9wZXJhdGlvbnMgbGlrZSBwaHlfaW5pdCgpIGFu
ZApwaHlfcG93ZXJfb24oKSB0eXBpY2FsbHkgcmV0dXJuIC1FTk9TWVMgd2hlbiBDT05GSUdfR0VO
RVJJQ19QSFkgaXMgZGlzYWJsZWQuClVzaW5nIC1FT1BOT1RTVVBQIGhlcmUgbWlnaHQgY2F1c2Ug
aW5jb25zaXN0ZW50IGVycm9yIGhhbmRsaW5nIGZvciBkcml2ZXJzCmZhbGxpbmcgYmFjayB0byB0
aGVzZSBidWxrIGR1bW1pZXMuCgo+ICsKPiArCXJldHVybiAwOwo+ICt9Cj4gKwo+ICtzdGF0aWMg
aW5saW5lIGludCBwaHlfYnVsa19pbml0KHVuc2lnbmVkIGludCBudW1fcGh5cywKPiArCQkJCXN0
cnVjdCBwaHlfYnVsa19kYXRhICpwaHlzKQo+ICt7Cj4gKwlyZXR1cm4gcGh5X2J1bGtfY2hlY2tf
ZGlzYWJsZWQobnVtX3BoeXMsIHBoeXMpOwo+ICt9CgpbIC4uLiBdCgotLSAKU2FzaGlrbyBBSSBy
ZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwOTIzMDIzMzA0Ljc4
NDI4LTEtaW5vY2hpYW1hQGdtYWlsLmNvbT9wYXJ0PTMKCi0tIApsaW51eC1waHkgbWFpbGluZyBs
aXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
