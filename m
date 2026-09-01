Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5BB50C624D3
	for <linux-phy@archiver.kernel.org>; Tue,  1 Sep 2026 16:18:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yNmvZg0jtKUAGYQNstwdtUgG4a2W0kLNeib1JA3vMrw=; b=h91N5xHOctSDBX
	r1wXwDb5zqlQNzYsFp3jr+buxpCYMahs4Y1vr4i0ldZULsR+TZv172UVioo3MeUNNHzEgop2vlK3p
	a2cRiPIa0pqu/6AG16LSx2Z/5p5HyiLlT7ZCKFqMZBDoJdG5POE/wM3nsz0B8bGmCEbOlAMWdAvRm
	Dy0OLqblvvDyiTKoNJnejlYNGET2ptQP/R5npgVgNbvs/gMZ3FsN5pUgnLrn2jFY7u4UGQhH6hscU
	hBujxW133F/Kto+XHqNxmW3ABCKRc3QpDSJrCxdFJVbK3fl0sxZyexoFDqXjA+6e4SZuhAp2Vn7bs
	4DR8mg0mRHPQd5idIdEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1RC1-0000000Cdyd-47QP;
	Tue, 01 Sep 2026 16:18:38 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1RC0-0000000CdyM-2XaG
	for linux-phy@lists.infradead.org;
	Tue, 01 Sep 2026 16:18:36 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id DD1E06020D;
	Tue,  1 Sep 2026 16:18:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1AFA91F000E9;
	Tue,  1 Sep 2026 16:18:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788279515;
	bh=zxysoKyIvSHPIzqfXxkvp0kcCUztD7lpcnz06wNw6jQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=KvFF6mBwWb9GLmzp6i2RT3SiCVr7boSEObWDcKLYNgRl0sVvXDk6sBImMK2jHAXOW
	 khGC69q+tPLyKJ9whfrYyBZwFvbN4A3N9joem80HlU0FVfjkzMSu2MQHDleXMdio1t
	 uZqqnYCENlUwSfVeVy2bStYxmBRukz6blNQ6Uhyn7gBCRNhMfEbkrSQfcGONvuv86S
	 ZmhbunAHAKgZsxzldDUHM6YO/we1IJEVJm2RzxAH0UnhKx7zMDoqVCIK7ao1Pca9PB
	 TE+aGcQo5H67eltHi9AmrLf2LiT4ejSvhQeeyPJartRAnP21ETZXpqzJkk/Oq7yWid
	 lrtL0uyUp6cjw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v11 17/24] scsi: ufs: mediatek: Clean up logging prints
To: "Louis-Alexis Eyraud" <louisalexis.eyraud@collabora.com>
Cc: robh@kernel.org, linux-scsi@vger.kernel.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org, vkoul@kernel.org, conor+dt@kernel.org, linux-phy@lists.infradead.org, olteanv@gmail.com
In-Reply-To: <20260901-mt8196-ufs-v11-17-dbd007704490@collabora.com>
References: <20260901-mt8196-ufs-v11-0-dbd007704490@collabora.com>
 <20260901-mt8196-ufs-v11-17-dbd007704490@collabora.com>
Date: Tue, 01 Sep 2026 16:18:34 +0000
Message-Id: <20260901161835.1AFA91F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gTWlzc2luZyBleHBsaWNp
dCBgI2luY2x1ZGUgPGxpbnV4L3N0cmluZ19jaG9pY2VzLmg+YCBmb3IgYHN0cl90cnVlX2ZhbHNl
KClgLgotLQoKY29tbWl0IDE0YjRiN2QzZjA5MjNiMDNjNzFlM2E1ZmRkYjU4NjY2ZTkzM2Y2NGEK
QXV0aG9yOiBOaWNvbGFzIEZyYXR0YXJvbGkgPG5pY29sYXMuZnJhdHRhcm9saUBjb2xsYWJvcmEu
Y29tPgoKc2NzaTogdWZzOiBtZWRpYXRlazogQ2xlYW4gdXAgbG9nZ2luZyBwcmludHMKClRoaXMg
Y29tbWl0IGNsZWFucyB1cCB0aGUgbG9nZ2luZyBsZXZlbHMgaW4gdGhlIE1lZGlhVGVrIFVGUyBk
cml2ZXIgdG8gZW5zdXJlCmVycm9ycyBhcmUgbG9nZ2VkIGF0IHRoZSBlcnJvciBsZXZlbCByYXRo
ZXIgdGhhbiBpbmZvIG9yIHdhcm5pbmcgbGV2ZWxzLiBJdAphbHNvIHVwZGF0ZXMgcHJpbnRzIHRv
IHVzZSB0aGUgdXNlci1mcmllbmRseSAlcGUgZm9ybWF0IGNvZGVzIGZvciBlcnJvcnMuCgo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL3Vmcy9ob3N0L3Vmcy1tZWRpYXRlay5jIGIvZHJpdmVycy91ZnMv
aG9zdC91ZnMtbWVkaWF0ZWsuYwo+IGluZGV4IDQzZmI1ZGJiMjUwYjAuLmE4NGJmZmUwNjllYjgg
MTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy91ZnMvaG9zdC91ZnMtbWVkaWF0ZWsuYwo+ICsrKyBiL2Ry
aXZlcnMvdWZzL2hvc3QvdWZzLW1lZGlhdGVrLmMKWyAuLi4gXQo+IEBAIC04NTksNyArODU1LDgg
QEAgc3RhdGljIGJvb2wgdWZzX210a19pc19sZWdhY3lfY2hpcHNldChzdHJ1Y3QgdWZzX2hiYSAq
aGJhLCB1MzIgaHdfaXBfdmVyKQo+ICAJZGVmYXVsdDoKPiAgCQlicmVhazsKPiAgCX0KPiAtCWRl
dl9pbmZvKGhiYS0+ZGV2LCAibGVnYWN5IElQIHZlcnNpb24gLSAweCV4LCBpcyBsZWdhY3kgOiAl
ZCIsIGh3X2lwX3ZlciwgaXNfbGVnYWN5KTsKPiArCWRldl9kYmcoaGJhLT5kZXYsICJJUCB2ZXJz
aW9uIDB4JXgsIGxlZ2FjeSA9ICVzIiwgaHdfaXBfdmVyLAo+ICsJCXN0cl90cnVlX2ZhbHNlKGlz
X2xlZ2FjeSkpOwoKW1NldmVyaXR5OiBMb3ddCkRvZXMgdGhpcyBjb2RlIHJlbHkgb24gaW1wbGlj
aXQgaGVhZGVyIGluY2x1c2lvbnM/IFVzaW5nIHN0cl90cnVlX2ZhbHNlKCkgCmluIHVmc19tdGtf
aXNfbGVnYWN5X2NoaXBzZXQoKSByZXF1aXJlcyBsaW51eC9zdHJpbmdfY2hvaWNlcy5oLCBidXQg
aXQgCmRvZXNuJ3QgYXBwZWFyIHRvIGJlIGV4cGxpY2l0bHkgaW5jbHVkZWQgaW4gdGhpcyBmaWxl
IG9yIGFkZGVkIGJ5IHRoaXMgcGF0Y2guCgo+ICAKPiAgCXJldHVybiBpc19sZWdhY3k7Cj4gIH0K
Ci0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQv
MjAyNjA5MDEtbXQ4MTk2LXVmcy12MTEtMC1kYmQwMDc3MDQ0OTBAY29sbGFib3JhLmNvbT9wYXJ0
PTE3CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1w
aHkK
