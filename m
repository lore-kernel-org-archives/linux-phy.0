Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D03D5C44539
	for <linux-phy@archiver.kernel.org>; Wed, 22 Jul 2026 13:57:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cCh3YzaINeZt7t5Z6fb9rT/qDSf/XecAhI+W7VsNgmE=; b=m/gol4aJgvYJjB
	tl5gZanEJxOoy/KSqzV3lcwka5q9gAuQPlGy084a+cUl+1mBYoIPBhvGdzb7Xctv9zQrvORvT/cxW
	RiykCIFRHfavVByW8Kh6znhVLEKA4HAmniTbwnl+nY8di6bzCuXnj5DllgHCnGkHPzhqYJ3sQ7lEd
	rQXzmsBOPG7Z/w/MI4CN4PgB8sEu7KSjvMOBaN/uUgWp8sdbGnH78IvAcMNykVi7FqBi6REP3SJax
	6+1vzd46FMxpKFqIyYF0Vtqtg0sMKiGalwL1YPaY7jc3TTKWX0k4dK330BjWLj0GWPucWj7dZk2Fj
	kk8BbFG9t4eLC7Ma4LRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmXRU-0000000Bxd7-2Bwb;
	Wed, 22 Jul 2026 13:57:00 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmXRT-0000000Bxcu-0SBR
	for linux-phy@lists.infradead.org;
	Wed, 22 Jul 2026 13:56:59 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id CB0E041A04;
	Wed, 22 Jul 2026 13:56:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 619991F000E9;
	Wed, 22 Jul 2026 13:56:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784728618;
	bh=W5IkN9Bk36wLwaVx2CRoX8uRyYwntWp+7T24JOGc6cM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=cu8diE3N7SK8Un1xx/bOg2eR/+kCJuOif5XR4LYeGkWDorh67F8N9hnVWNGbfgI7F
	 lSKg2lq4QydAGWxpxIl31aDAMoJ9O2mvgR2q5IEN35MKIEkQWlmrMdiuqnwRxac33l
	 Kxorn3aqLf5xUd0mAak34Mw/1ZqtQBRG7O5FclIu9J9B/bb9UX68ocd0Qn2bX1Hi/D
	 amQ4/dMgRtR70nUof2Mno0wXJ5jqDltdqGEp0CA6Rnqzbem2CaBdoNTf8vswt+zDGH
	 TrD90oGnqDLMlTx/s1e4RHHBAU3X683OZzyoNMOup8lG7WbM87ZJu3rtB1Uaf6zuzu
	 UBLzGdIxdZ/Ug==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 5/7] phy: qcom: snps-femto-v2: Fix possible
 NULL-deref on early runtime suspend
To: "Loic Poulain" <loic.poulain@oss.qualcomm.com>
Cc: linux-phy@lists.infradead.org, olteanv@gmail.com, neil.armstrong@linaro.org, vkoul@kernel.org
In-Reply-To: <20260722-qcom-usb-phy-fix-null-v6-5-534f7e61b9a6@oss.qualcomm.com>
References: <20260722-qcom-usb-phy-fix-null-v6-0-534f7e61b9a6@oss.qualcomm.com>
 <20260722-qcom-usb-phy-fix-null-v6-5-534f7e61b9a6@oss.qualcomm.com>
Date: Wed, 22 Jul 2026 13:56:57 +0000
Message-Id: <20260722135658.619991F000E9@smtp.kernel.org>
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
IFtIaWdoXSBUaGUgcGF0Y2ggbGVhdmVzIGEgd2luZG93IG9uIHRoZSBkZXZtX3BoeV9jcmVhdGUo
KSBlcnJvciBwYXRoIHdoZXJlIGEgY29uY3VycmVudCBzeXNmcyB3cml0ZSBjb3VsZCB0cmlnZ2Vy
IGEgTlVMTCBwb2ludGVyIGRlcmVmZXJlbmNlIGluIHRoZSBydW50aW1lIFBNIHN1c3BlbmQgY2Fs
bGJhY2suCi0tCgotLS0gUGF0Y2ggWzVdOiBbUEFUQ0ggdjYgNS83XSBwaHk6IHFjb206IHNucHMt
ZmVtdG8tdjI6IEZpeCBwb3NzaWJsZSBOVUxMLWRlcmVmIG9uIGVhcmx5IHJ1bnRpbWUgc3VzcGVu
ZCAtLS0KY29tbWl0IGEwODc5YTY4YzdlYmU5MDgyNDc2NTM3NzhiODBmN2QyNzU4ZWM0MmYKQXV0
aG9yOiBMb2ljIFBvdWxhaW4gPGxvaWMucG91bGFpbkBvc3MucXVhbGNvbW0uY29tPgoKcGh5OiBx
Y29tOiBzbnBzLWZlbXRvLXYyOiBGaXggcG9zc2libGUgTlVMTC1kZXJlZiBvbiBlYXJseSBydW50
aW1lIHN1c3BlbmQKClRoaXMgY29tbWl0IGhvbGRzIGEgcnVudGltZSBQTSB1c2FnZSByZWZlcmVu
Y2UgZHVyaW5nIHByb2JlIHRvIHByZXZlbnQgZWFybHkKcnVudGltZSBzdXNwZW5kIGNhbGxiYWNr
cyBmcm9tIGRlcmVmZXJlbmNpbmcgdW5pbml0aWFsaXplZCBQSFkgZGF0YS4gSXQgYWxzbwpjb252
ZXJ0cyB0aGUgcnVudGltZSBQTSBlbmFibGUgY2FsbCB0byBpdHMgZGV2cmVzLW1hbmFnZWQgdmFy
aWFudCB0byBlbnN1cmUKcHJvcGVyIGNsZWFudXAgb24gZHJpdmVyIHJlbW92YWwuCgo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1zbnBzLWZlbXRvLXYyLmMgYi9k
cml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1zbnBzLWZlbXRvLXYyLmMKPiAtLS0gYS9kcml2
ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1zbnBzLWZlbXRvLXYyLmMKPiArKysgYi9kcml2ZXJz
L3BoeS9xdWFsY29tbS9waHktcWNvbS1zbnBzLWZlbXRvLXYyLmMKWyAuLi4gXQo+IEBAIC02MTEs
NiArNjIxLDcgQEAgc3RhdGljIGludCBxY29tX3NucHNfaHNwaHlfcHJvYmUoc3RydWN0IHBsYXRm
b3JtX2RldmljZSAqcGRldikKPiAgCWlmIChJU19FUlIoZ2VuZXJpY19waHkpKSB7Cj4gIAkJcmV0
ID0gUFRSX0VSUihnZW5lcmljX3BoeSk7Cj4gIAkJZGV2X2VycihkZXYsICJmYWlsZWQgdG8gY3Jl
YXRlIHBoeSwgJWRcbiIsIHJldCk7Cj4gKwkJcG1fcnVudGltZV9wdXRfbm9pZGxlKGRldik7Cj4g
IAkJcmV0dXJuIHJldDsKPiAgCX0KCltTZXZlcml0eTogSGlnaF0KVGhpcyBpcyBhIHByZS1leGlz
dGluZyBpc3N1ZSwgYnV0IGRvZXMgZHJvcHBpbmcgdGhlIHVzYWdlIHJlZmVyZW5jZSBoZXJlCmxl
YXZlIHRoZSBkZXZpY2UgdnVsbmVyYWJsZSB0byBhIE5VTEwgcG9pbnRlciBkZXJlZmVyZW5jZT8K
CklmIGRldm1fcGh5X2NyZWF0ZSgpIGZhaWxzLCB0aGUgZHJpdmVyIGRyb3BzIGl0cyBydW50aW1l
IFBNIHVzYWdlIGNvdW50CmFuZCByZXR1cm5zLiBCZWNhdXNlIGRldm1fcG1fcnVudGltZV9lbmFi
bGUoKSBpcyB1c2VkLCBydW50aW1lIFBNIGlzIG5vdApkaXNhYmxlZCBzeW5jaHJvbm91c2x5LCBi
dXQgaXMgZGVmZXJyZWQgdG8gZGV2cmVzIGNsZWFudXAuCgpJbiB0aGlzIHdpbmRvdywgY291bGQg
YSBjb25jdXJyZW50IHN5c2ZzIHdyaXRlIHRvIHBvd2VyL2NvbnRyb2wgKGUuZy4sCmZyb20gdWRl
diBydWxlcykgdHJpZ2dlciBhbiBhc3luY2hyb25vdXMgc3VzcGVuZD8KClNpbmNlIGRldnJlcyBj
bGVhbnVwIGNhbGxzIHBtX3J1bnRpbWVfZGlzYWJsZSgpIHdoaWNoIHdhaXRzIGZvciBhbnkKaW4t
cHJvZ3Jlc3Mgc3VzcGVuZCB0byBjb21wbGV0ZSByYXRoZXIgdGhhbiBjYW5jZWxpbmcgaXQsIGFu
ZApkZXZfc2V0X2RydmRhdGEoKSBpcyBieXBhc3NlZCBvbiB0aGlzIGVycm9yIHBhdGgsIHdvdWxk
bid0IHRoZSBydW50aW1lCnN1c3BlbmQgY2FsbGJhY2sgcmV0cmlldmUgYW5kIGRlcmVmZXJlbmNl
IGEgTlVMTCBwb2ludGVyPwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlr
by5kZXYvIy9wYXRjaHNldC8yMDI2MDcyMi1xY29tLXVzYi1waHktZml4LW51bGwtdjYtMC01MzRm
N2U2MWI5YTZAb3NzLnF1YWxjb21tLmNvbT9wYXJ0PTUKCi0tIApsaW51eC1waHkgbWFpbGluZyBs
aXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
