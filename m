Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8507C00140
	for <linux-phy@archiver.kernel.org>; Sat, 13 Aug 2022 00:15:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pP+A302vUgivgZ9AJQgiZKhVdImqDJnNm6g/RetfjUs=; b=fkMo/sWCnsDZMV
	QIiV1MYRYZmdjpeWx4MOLro1VcAgrvqgbeELdmiWKXXi0nDOooi7fNqhKjMUHlzYPB2kgDWno1806
	J+JkGiKjw0X711LWBSWWOVi8HpZZSQyT9n2dW3yTgdTl4BbSaj3U9luc13wvePNgrJMj2VHIcH43T
	SLnxpchsIlP42/b6rpfAKxwqPPgyFLskKW26qYuEe+55nS7EennlekpuJ1h5haj2gNaaNljCE+b+P
	8ACc6MX0tptcXw3xZRDIWP5wrZ0bo7flCOplxoQ9CoQbVVWpGvTzuy5zc6j1RTBBYXAWnIHBvE/kj
	I+5sK2dLEXn9Bt7o5QGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oMeo2-0014ZC-Sr; Sat, 13 Aug 2022 00:15:10 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oMeo0-0014XX-6e
	for linux-phy@lists.infradead.org; Sat, 13 Aug 2022 00:15:09 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id B160F618C1;
	Sat, 13 Aug 2022 00:15:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EBD1EC433D6;
	Sat, 13 Aug 2022 00:15:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1660349705;
	bh=RzMj89pC0KismECC+rAZ+Z7QtCc65eVmiRrw6+aDAJw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=G8D00eQQ9Kb0wHjBl+bNfInPA6/RYyCNqy+pVtwgK/uihSfU0BDNK6UONChS9pGN6
	 Rqg1TmrMbcJJBHTWOdjtyd/f8q/O51A43cKqXBVByHO0Gs7eXZKlUanYqnBnM31Lrg
	 enRzIrHWodMDfPSjt5YudwzvXRuRYSYajmR8XqOj4MtHjbWnkI/FNJymz6HCUoLCrh
	 SfMM63E8KEN84LuvFHVb42Tbqaal+pjE3IqmRmI1RwSlsmgLLZjP0YG06nWSI2kaDK
	 FzDp2GorC+rnYAas4EZar2tqOrzb1nk7h8DmIXie/yVs4I47czN4TbRN3E3hsorBnN
	 AdKE9Oq4uCFMQ==
Received: by pali.im (Postfix)
	id D83D7C06; Sat, 13 Aug 2022 02:15:01 +0200 (CEST)
Date: Sat, 13 Aug 2022 02:15:01 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: Shinichiro Kawasaki <shinichiro.kawasaki@wdc.com>
Cc: "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"kabel@kernel.org" <kabel@kernel.org>,
	Damien Le Moal <Damien.LeMoal@wdc.com>
Subject: Re: ARMADA espressobin SATA drive detection failure
Message-ID: <20220813001501.ib4wayiw3qsgiqhu@pali>
References: <20220531124159.3e4lgn2v462irbtz@shindev>
 <20220809094234.cpv6tdpmqfb3cfqq@pali>
 <20220810103654.w3yurhdeulgyepbb@shindev>
 <20220812045650.nzisin52zfbbwhsq@shindev>
 <20220812082055.dvwmjcvsyb3iglav@pali>
 <20220812120028.xcnvr3ocxmmkioqi@shindev>
 <20220812124407.pdjjxpsf6pddsmsr@pali>
 <20220812135505.vukoik6moxzedlq6@pali>
 <20220813000235.5vwwmamngm6lirwv@shindev>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220813000235.5vwwmamngm6lirwv@shindev>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220812_171508_305438_CACE8179 
X-CRM114-Status: GOOD (  16.61  )
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

T24gU2F0dXJkYXkgMTMgQXVndXN0IDIwMjIgMDA6MDI6MzcgU2hpbmljaGlybyBLYXdhc2FraSB3
cm90ZToKPiBPbiBBdWcgMTIsIDIwMjIgLyAxNTo1NSwgUGFsaSBSb2jDoXIgd3JvdGU6Cj4gPiBP
biBGcmlkYXkgMTIgQXVndXN0IDIwMjIgMTQ6NDQ6MDcgUGFsaSBSb2jDoXIgd3JvdGU6Cj4gCj4g
Wy4uLl0KPiAKPiA+ID4gUHJvYmFibHkgdGhpcyBpcyBTU0QgZGlzayBzcGVjaWZpYy4gSSB3aWxs
IHRyeSB0byBwcmVwYXJlIHNvbWUga2VybmVsCj4gPiA+IGNoYW5nZXMgdG8gdGVzdCBpZiBpdCBj
aGFuZ2VzIHNvbWV0aGluZy4KPiA+IAo+ID4gQ291bGQgeW91IHBsZWFzZSB0cnkgZm9sbG93aW5n
IGNoYW5nZSBhbmQgcHJvdmlkZSBmdWxsIGRtZXNnIGxvZz8KPiA+IEZpcnN0IEkgbmVlZCB0byBr
bm93IGlmIGlzc3VlIGlzIGluIFNBVEEgcG93ZXIgb24gY29kZSBvciBzb21ld2hlcmUgZWxzZS4K
PiAKPiBNeSBwbGVhc3VyZS4gSSBhcHBsaWVkIHRoZSBwYXRjaCB0byB0aGUga2VybmVsIHY1LjE4
LjE2IGFuZCBib290ZWQgaXQgZnJvbSB0aGUKPiBsYXRlc3QgVS1Cb290LiBIZXJlIEkgYXR0YWNo
IGNvbnNvbGUgb3V0cHV0IHRha2VuIGZyb20gdGhlIG1veC1pbWFnZXIgY29tbWFuZC4KPiBJdCBo
YXMgYWxsIGtlcm5lbCBtZXNzYWdlcyBhcyB3ZWxsIGFzIFUtQm9vdCBjb25zb2xlIGxvZy4gSSBm
aW5kIHRoZSBtZXNzYWdlCj4gZnJvbSBhZGRlZCBkZXZfZXJyKCk6Cj4gCj4gICBtdmVidS1hMzcw
MC1jb21waHkgZDAwMTgzMDAucGh5OiBPSyBtdmVidV9hMzcwMF9jb21waHlfc2F0YV9wb3dlcl9v
bigpIGNhbGwKPiAKPiAtLSAKPiBTaGluJ2ljaGlybyBLYXdhc2FraQoKT2ssIHNvIFNBVEEgZG9l
cyBub3Qgd29yayBldmVuIHdoZW4gc3RhcnRpbmcgd2l0aCBvcmlnaW5hbCBTTUMKaW1wbGVtZW50
YXRpb24uCgpDb3VsZCB5b3UgcGxlYXNlIHRyeSBhbm90aGVyIHRlc3QgY2hhbmdlPwoKQEAgLTEx
MDIsNiArMTE0Miw5IEBAIHN0YXRpYyBpbnQgbXZlYnVfYTM3MDBfY29tcGh5X3Jlc2V0KHN0cnVj
dCBwaHkgKnBoeSkKIAlzdHJ1Y3QgbXZlYnVfYTM3MDBfY29tcGh5X2xhbmUgKmxhbmUgPSBwaHlf
Z2V0X2RydmRhdGEocGh5KTsKIAl1MTYgbWFzaywgZGF0YTsKIAorCWRldl9lcnIobGFuZS0+ZGV2
LCAiSUdOT1JJTkcgbXZlYnVfYTM3MDBfY29tcGh5X3Jlc2V0KCkgY2FsbFxuIik7CisJcmV0dXJu
OworCiAJZGV2X2RiZyhsYW5lLT5kZXYsICJyZXNldHRpbmcgbGFuZSAlZFxuIiwgbGFuZS0+aWQp
OwogCiAJLyogQ09NUEhZIHJlc2V0IGZvciBpbnRlcm5hbCBsb2dpYyAqLwoKCi0tIApsaW51eC1w
aHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
