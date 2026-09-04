Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9FAFCC79F80
	for <linux-phy@archiver.kernel.org>; Fri,  4 Sep 2026 08:48:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kJafYVRC2ABQry7+nt6nzpHnEQEZ+ZaL88vp+l1j39k=; b=bZ7xrg/6/9WfrD
	Wu+UFJvGnmM1iFkDG3FsZ3faOREfrFgiTfq48ahTfFMoLAsM8bZaZvCp5SV4RKssVbCx6A9E30eaX
	0DMBToVhvN0fslLNL5Q9TH5GvPfbMlim8Nlj5EwTlG677CnLgdQJM2vJY3VTpGUeiHqPt3pydxS4n
	S2hyY7SXV+FNXF3jGax8rYGHrH3zIXIqMjUIOCPyWMvT29WG2HItDA4bzxkyfmaVZ+q7pAJEpmw9N
	xRH3CnwhDnymVYhn/0LJrPWZcYVd20gAneCnTQtaJsojufo5uQCJ2ZZoddTLhbbtT+OkRWys+nMIv
	4RyoF6gsp5HRNcfu1B6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2Pb8-00000001SAw-1hMQ;
	Fri, 04 Sep 2026 08:48:34 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2Pb7-00000001SAg-1EgD
	for linux-phy@lists.infradead.org;
	Fri, 04 Sep 2026 08:48:33 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id BDD2043B98;
	Fri,  4 Sep 2026 08:48:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4E3671F00A3D;
	Fri,  4 Sep 2026 08:48:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788511712;
	bh=uYz+AcZEK7/l0nPzuUmN8QooC4cylpSjXrCz04hQQVY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Tng4lW2+t7QuqiUf3223txvMkYgNdQNKFeeO5Sn1Vnpdm4GxJ8tXJpYYyJTbnit+Y
	 GhJFlz+glb3mKYY73kLn+TVoT4fSFH412MthKRQt8eBTXEdd24YkZj8DdyFQUfkYt7
	 PYMtLnMiHK4RWk4xsZFF6T9ICrO1+qbplK1qPQht2azTFMoU0WMwrQ4LTnUeDlPXTh
	 ro3toehIHnxBFRf3KtkhOww7mrU/U7CcXHMU5rAGb60uU1Z9DoQZ7IgwxjVm9kz/RD
	 x75TSEvgQAhw41GPDIjUgZnabQnv7Nwb0SKYPMJnCz80PJ05bCjBk800lJNeKoRyD7
	 m3YsvcWonM0/Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/4] phy: core: Add common helper for get phy phandle
 by index
To: "Inochi Amaoto" <inochiama@gmail.com>
Cc: linux-phy@lists.infradead.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20260904083709.425893-3-inochiama@gmail.com>
References: <20260904083709.425893-1-inochiama@gmail.com>
 <20260904083709.425893-3-inochiama@gmail.com>
Date: Fri, 04 Sep 2026 08:48:31 +0000
Message-Id: <20260904084832.4E3671F00A3D@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpQcmUtZXhpc3RpbmcgaXNzdWVzOgot
IFtIaWdoXSBVc2UtQWZ0ZXItRnJlZSByYWNlIGNvbmRpdGlvbiBkdWUgdG8gbW9tZW50YXJpbHkg
ZHJvcHBpbmcgdGhlIFBIWSBwcm92aWRlcidzIG1vZHVsZSByZWZlcmVuY2UuCi0tCgpjb21taXQg
ODJiM2EwODIwNTI5M2RkNmRlNWQ4NmNlMzM3YmI0MzY2NGY2NTUzNApBdXRob3I6IElub2NoaSBB
bWFvdG8gPGlub2NoaWFtYUBnbWFpbC5jb20+CgpwaHk6IGNvcmU6IEFkZCBjb21tb24gaGVscGVy
IGZvciBnZXQgcGh5IHBoYW5kbGUgYnkgaW5kZXgKClRoaXMgY29tbWl0IHJlZmFjdG9ycyBzZXZl
cmFsIFBIWSBoZWxwZXJzIHRoYXQgdXNlIGFuIGluZGV4IHRvIHJldHJpZXZlCnRoZSBQSFkgcGhh
bmRsZSBvZiBhIGRldmljZSBub2RlLCBhZGRpbmcgYSBjb21tb24gaGVscGVyIGZ1bmN0aW9uIHRv
CmFsbG93IGZvciBmdXR1cmUgcmV1c2UuCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9waHkt
Y29yZS5jIGIvZHJpdmVycy9waHkvcGh5LWNvcmUuYwo+IGluZGV4IGVhNzk5MTNmYmI4N2YuLmE3
ZDdhY2I1ZDNjMmEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvcGh5LWNvcmUuYwo+ICsrKyBi
L2RyaXZlcnMvcGh5L3BoeS1jb3JlLmMKWyAuLi4gXQo+IEBAIC02ODIsMjEgKzY4MiwxOCBAQCBz
dGF0aWMgc3RydWN0IHBoeSAqX29mX3BoeV9nZXQoc3RydWN0IGRldmljZV9ub2RlICpucCwgaW50
IGluZGV4KQo+ICB9Cj4gIAo+ICAvKioKPiAtICogb2ZfcGh5X2dldCgpIC0gbG9va3VwIGFuZCBv
YnRhaW4gYSByZWZlcmVuY2UgdG8gYSBwaHkgdXNpbmcgYSBkZXZpY2Vfbm9kZS4KPiArICogb2Zf
cGh5X2dldF9ieV9pbmRleCgpIC0gbG9va3VwIGFuZCBvYnRhaW4gYSByZWZlcmVuY2UgdG8gYSBw
aHkgdXNpbmcgYQo+ICsgKiBkZXZpY2Vfbm9kZSBieSBpbmRleC4KPiAgICogQG5wOiBkZXZpY2Vf
bm9kZSBmb3Igd2hpY2ggdG8gZ2V0IHRoZSBwaHkKPiAtICogQGNvbl9pZDogbmFtZSBvZiB0aGUg
cGh5IGZyb20gZGV2aWNlJ3MgcG9pbnQgb2Ygdmlldwo+ICsgKiBAaW5kZXg6IGluZGV4IG9mIHRo
ZSBwaHkgZnJvbSBkZXZpY2UncyBwb2ludCBvZiB2aWV3Cj4gICAqCj4gLSAqIFJldHVybnMgdGhl
IHBoeSBkcml2ZXIsIGFmdGVyIGdldHRpbmcgYSByZWZjb3VudCB0byBpdDsgb3IKPiArICogUmV0
dXJuczogdGhlIHBoeSBkcml2ZXIsIGFmdGVyIGdldHRpbmcgYSByZWZjb3VudCB0byBpdDsgb3IK
PiAgICogLUVOT0RFViBpZiB0aGVyZSBpcyBubyBzdWNoIHBoeS4gVGhlIGNhbGxlciBpcyByZXNw
b25zaWJsZSBmb3IKPiAgICogY2FsbGluZyBvZl9waHlfcHV0KCkgdG8gcmVsZWFzZSB0aGF0IGNv
dW50Lgo+ICAgKi8KPiAtc3RydWN0IHBoeSAqb2ZfcGh5X2dldChzdHJ1Y3QgZGV2aWNlX25vZGUg
Km5wLCBjb25zdCBjaGFyICpjb25faWQpCj4gK3N0YXRpYyBzdHJ1Y3QgcGh5ICpvZl9waHlfZ2V0
X2J5X2luZGV4KHN0cnVjdCBkZXZpY2Vfbm9kZSAqbnAsIGludCBpbmRleCkKPiAgewo+IC0Jc3Ry
dWN0IHBoeSAqcGh5ID0gTlVMTDsKPiAtCWludCBpbmRleCA9IDA7Cj4gLQo+IC0JaWYgKGNvbl9p
ZCkKPiAtCQlpbmRleCA9IG9mX3Byb3BlcnR5X21hdGNoX3N0cmluZyhucCwgInBoeS1uYW1lcyIs
IGNvbl9pZCk7Cj4gKwlzdHJ1Y3QgcGh5ICpwaHk7Cj4gIAo+ICAJcGh5ID0gX29mX3BoeV9nZXQo
bnAsIGluZGV4KTsKPiAgCWlmIChJU19FUlIocGh5KSkKCltTZXZlcml0eTogSGlnaF0KVGhpcyBp
cyBhIHByZS1leGlzdGluZyBpc3N1ZSwgYnV0IGRvZXMgdGhpcyBwYXR0ZXJuIHJpc2sgYSB1c2Ut
YWZ0ZXItZnJlZQpyYWNlIGNvbmRpdGlvbiBpZiBhIGNvbmN1cnJlbnQgbW9kdWxlIHVubG9hZCBv
Y2N1cnM/CgpMb29raW5nIGF0IF9vZl9waHlfZ2V0KCksIGl0IHRlbXBvcmFyaWx5IGFjcXVpcmVz
IHRoZSBQSFkgcHJvdmlkZXIgbW9kdWxlCnJlZmVyZW5jZSwgYnV0IGRyb3BzIGl0IGJlZm9yZSBy
ZXR1cm5pbmcgdGhlIGJhcmUgcGh5IHBvaW50ZXI6Cgpfb2ZfcGh5X2dldCgpIHsKICAgIC4uLgog
ICAgcGh5ID0gcGh5X3Byb3ZpZGVyLT5vZl94bGF0ZShwaHlfcHJvdmlkZXItPmRldiwgJmFyZ3Mp
OwoKb3V0X3B1dF9tb2R1bGU6CiAgICBtb2R1bGVfcHV0KHBoeV9wcm92aWRlci0+b3duZXIpOwpv
dXRfdW5sb2NrOgogICAgbXV0ZXhfdW5sb2NrKCZwaHlfcHJvdmlkZXJfbXV0ZXgpOwogICAgLi4u
CiAgICByZXR1cm4gcGh5Owp9CgpCeSB0aGUgdGltZSBleGVjdXRpb24gY29udGludWVzIGluIHRo
aXMgaGVscGVyIGFuZCBjYWxscwp0cnlfbW9kdWxlX2dldChwaHktPm9wcy0+b3duZXIpIHNsaWdo
dGx5IGZ1cnRoZXIgZG93biwgdGhlIG1vZHVsZQpyZWZlcmVuY2UgaXMgbm8gbG9uZ2VyIGhlbGQu
IElmIGEgY29uY3VycmVudCBtb2R1bGUgdW5sb2FkIHByb2NlZWRzIGR1cmluZwp0aGlzIGJyaWVm
IHdpbmRvdywgdGhlIFBIWSBwcm92aWRlciBjb3VsZCBiZSB1bnJlZ2lzdGVyZWQgYW5kIHRoZSBw
aHkKc3RydWN0IGZyZWVkLCBjYXVzaW5nIHRoZSBkZXJlZmVyZW5jZSBvZiBwaHktPm9wcyB0byBh
Y2Nlc3MgZnJlZWQgbWVtb3J5LgoKQ291bGQgdGhpcyByZWZhY3RvcmluZyBiZSBhbiBvcHBvcnR1
bml0eSB0byBhZGRyZXNzIHRoaXMgcmFjZSB3aW5kb3c/CgotLSAKU2FzaGlrbyBBSSByZXZpZXcg
wrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwOTA0MDgzNzA5LjQyNTg5My0x
LWlub2NoaWFtYUBnbWFpbC5jb20/cGFydD0yCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdAps
aW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
