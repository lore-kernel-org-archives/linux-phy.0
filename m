Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F5A2CC6B03
	for <linux-phy@archiver.kernel.org>; Tue, 13 Oct 2026 13:00:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cKTi1Cev7N4sbRfT5GXCa/pKxiSIGBUiuO4poqKEyTE=; b=zZqDpdzLsmMGXY
	7bS6B9zBtHVfqzV0LaDfvDPIENpqwrf3sNfk+AQqO2gqlw/ISrQpwuAomhg7zJR5jZvbOuP4lBeod
	qqoATTfdO/H4PxwS6aqo2sGsFflga5K/neIY49xo6GhP/n8nm1/KP7tY1FuFkg5Aee9OLzqCvV6NV
	8umCHTdKx7Q9ik+SdxJZN5rUp0Tj2P8QWVcSYEzq/Re4ex0FjUgAPqYsgk7GoIKhkb9RsQLIhfFuV
	FvyZ2ox7TIQ8PwB2AyKzN6GAHXDGkXhF4uqNICZdohJGOveJzs8DZ87n70T6rFw+AVcAvPN1dK1kL
	Sl+loXUAS3gv2SbebWcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGc74-0000000CtOc-4BBH;
	Tue, 13 Oct 2026 13:00:14 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGc72-0000000CtNY-3lqR
	for linux-phy@lists.infradead.org;
	Tue, 13 Oct 2026 13:00:12 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 6403E43AC9;
	Tue, 13 Oct 2026 13:00:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C1DDA1F000FF;
	Tue, 13 Oct 2026 13:00:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791896412;
	bh=jkn00oKNilqawMytVOgJxaKIXAtfj8HSDkaiQNLRYgI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=V1xvDhsR8EK8bwdQiFPZqK3arBNNSPIfLZf1Pm4ZPVewADGjyzUVOZg8/w0x26one
	 vCFX4l+ahbDdbWwe90P+fASGoLBFP8LLZw9z8/5ODH0VD1q4nf8D+sVCNSjxL6rUkx
	 nlezNQj1LN0F6QBxvWjJ34JQey9B3G3q6wG8Ht0NluP8QS6HCddKtJF5SmATsc/vlm
	 7HVpTU7tJ4K9rspY0VbZGr1giJgwCClcKNdhYyzgM94jsNBr6dH0nvqNK7okG4Lzrb
	 HzHZ2boO8Vv08vGAoMAJRANEd+zN52mSTh27Bmsu1fW62l0mPo2O9LChUBz1DvL8XJ
	 hJ/sZDBxzJ9OA==
Message-ID: <sashiko-outbox-169764@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v1 5/6] drm/rockchip: analogix_dp: Add support for
 RK3568
To: "Damon Ding" <damon.ding@rock-chips.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261013124946.1807886-6-damon.ding@rock-chips.com>
References: <20261013124946.1807886-1-damon.ding@rock-chips.com>
 <20261013124946.1807886-6-damon.ding@rock-chips.com>
Date: Tue, 13 Oct 2026 13:00:11 +0000
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIHJvY2tjaGlwL2RwOiB1
bmNoZWNrZWQgTlVMTCBwb2ludGVyIGRlcmVmZXJlbmNlIG9uIG1pc3NpbmcgR1JGIHByb3BlcnR5
Ci0tCgpjb21taXQgOWE2ZTZmNDVjODU0YzIyZjI0ZDQwM2NmOGJkYWI3YTA1MDQxOTliNgpBdXRo
b3I6IERhbW9uIERpbmcgPGRhbW9uLmRpbmdAcm9jay1jaGlwcy5jb20+Cgpkcm0vcm9ja2NoaXA6
IGFuYWxvZ2l4X2RwOiBBZGQgc3VwcG9ydCBmb3IgUkszNTY4CgpUaGUgUkszNTY4IGVEUCBjb250
cm9sbGVyIGRvZXMgbm90IHJlcXVpcmUgYW55IEdSRiBjb25maWd1cmF0aW9ucywKc28gbWFrZSB0
aGUgInJvY2tjaGlwLGdyZiIgcHJvcGVydHkgb3B0aW9uYWwuICBBbHNvIGVuYWJsZSB0aGUKb3B0
aW9uYWwgYXZkZC0wdjkgYW5kIGF2ZGQtMXY4IHN1cHBsaWVzIHdoaWNoIHBvd2VyIHRoZSBlRFAg
UEhZLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2FuYWxvZ2l4X2Rw
LXJvY2tjaGlwLmMgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvYW5hbG9naXhfZHAtcm9ja2No
aXAuYwo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9hbmFsb2dpeF9kcC1yb2NrY2hp
cC5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2FuYWxvZ2l4X2RwLXJvY2tjaGlw
LmMKPiBAQCAtMzIwLDggKzMyMCw5IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfZHBfb2ZfcHJvYmUo
c3RydWN0IHJvY2tjaGlwX2RwX2RldmljZSAqZHApCj4gIAlzdHJ1Y3QgZGV2aWNlICpkZXYgPSBk
cC0+ZGV2Owo+ICAJc3RydWN0IGRldmljZV9ub2RlICpucCA9IGRldi0+b2Zfbm9kZTsKPiAgCXN0
cnVjdCBjbGsgKmNsazsKPiArCWludCByZXQ7Cj4gIAo+IC0JZHAtPmdyZiA9IHN5c2Nvbl9yZWdt
YXBfbG9va3VwX2J5X3BoYW5kbGUobnAsICJyb2NrY2hpcCxncmYiKTsKPiArCWRwLT5ncmYgPSBz
eXNjb25fcmVnbWFwX2xvb2t1cF9ieV9waGFuZGxlX29wdGlvbmFsKG5wLCAicm9ja2NoaXAsZ3Jm
Iik7Cj4gIAlpZiAoSVNfRVJSKGRwLT5ncmYpKQo+ICAJCXJldHVybiBkZXZfZXJyX3Byb2JlKGRl
diwgUFRSX0VSUihkcC0+Z3JmKSwKPiAgCQkJCSAgICAgImZhaWxlZCB0byBnZXQgcm9ja2NoaXAs
Z3JmIHByb3BlcnR5XG4iKTsKCltTZXZlcml0eTogSGlnaF0KU2luY2UgdGhpcyBjaGFuZ2VzIHRo
ZSBsb29rdXAgdG8gc3lzY29uX3JlZ21hcF9sb29rdXBfYnlfcGhhbmRsZV9vcHRpb25hbCgpLApk
cC0+Z3JmIHdpbGwgYmUgTlVMTCB3aGVuIHRoZSBwcm9wZXJ0eSBpcyBhYnNlbnQsIGFuZCB0aGUg
SVNfRVJSKCkgY2hlY2sgd2lsbApwYXNzLgoKQ2FuIHRoaXMgY2F1c2UgYSBOVUxMIHBvaW50ZXIg
ZGVyZWZlcmVuY2UgZm9yIGxlZ2FjeSBTb0NzIChsaWtlIFJLMzI4OCwgUkszMzk5LApvciBSSzM1
ODgpIGlmIHRoZSBkZXZpY2UgdHJlZSBpcyBtaXNzaW5nIHRoZSBwcm9wZXJ0eT8KCkZvciB0aG9z
ZSBvbGRlciBTb0NzLCB0aGUgY2hpcF9kYXRhIHNwZWNpZmllcyB2YWxpZCBHUkYgZmllbGRzLiBE
dXJpbmcgZGlzcGxheQppbml0aWFsaXphdGlvbiwgdGhlIGRyaXZlciBjYWxscyByb2NrY2hpcF9n
cmZfZmllbGRfd3JpdGUoKToKCmRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9hbmFsb2dpeF9kcC1y
b2NrY2hpcC5jOnJvY2tjaGlwX2dyZl9maWVsZF93cml0ZSgpIHsKCWlmICghZmllbGQtPnZhbGlk
KQoJCXJldHVybiAwOwoKCW1hc2sgPSBHRU5NQVNLKGZpZWxkLT5tc2IsIGZpZWxkLT5sc2IpOwoJ
dmFsIDw8PSBmaWVsZC0+bHNiOwoKCXJldHVybiByb2NrY2hpcF9ncmZfd3JpdGUoZ3JmLCBmaWVs
ZC0+cmVnLCBtYXNrLCB2YWwpOwp9CgpUaGlzIGZvcndhcmRzIHRoZSBwb3RlbnRpYWxseSBOVUxM
IGdyZiBwb2ludGVyIHRvIHJvY2tjaGlwX2dyZl93cml0ZSgpIGFuZApldmVudHVhbGx5IHRvIHJl
Z21hcF93cml0ZSgpLCB3aGljaCBkZXJlZmVyZW5jZXMgaXQ6Cgpkcml2ZXJzL2Jhc2UvcmVnbWFw
L3JlZ21hcC5jOnJlZ21hcF93cml0ZSgpIHsKCS4uLgoJaWYgKCFJU19BTElHTkVEKHJlZywgbWFw
LT5yZWdfc3RyaWRlKSkKCQlyZXR1cm4gLUVJTlZBTDsKCS4uLgp9CgpTaG91bGQgcHJvYmUgdmFs
aWRhdGUgdGhhdCBkcC0+Z3JmICE9IE5VTEwgaWYgdGhlIGNoaXAgdHlwZSByZXF1aXJlcyBpdCwK
cmF0aGVyIHRoYW4gYWxsb3dpbmcgcHJvYmUgdG8gc3VjY2VlZCBhbmQgY2F1c2luZyBhIGtlcm5l
bCBvb3BzIGxhdGVyPwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5k
ZXYvIy9wYXRjaHNldC8yMDI2MTAxMzEyNDk0Ni4xODA3ODg2LTEtZGFtb24uZGluZ0Byb2NrLWNo
aXBzLmNvbT9wYXJ0PTUKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXBoeQo=
