Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2DB4C48BC4
	for <linux-phy@archiver.kernel.org>; Tue, 20 Feb 2024 11:27:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DneS9xk3j/KpnB7sd1dRZasror5mwjNfVYOzBRefLnA=; b=THhEiXZ3DGzYoq
	Z77oejZ02iYqjj4uOdQtOiAD97O0CyuoorPskSSwha99BofjltRM3x2kprxixuSSe5kYzf+V+i8MD
	HVKvUVMGFWh7A0YP8C4hO46lblj8yhM/wTT+qbc4L6yYdIWIKqqlOzOU9E7Cngjh6biLcOmIk+jFD
	ES8IEP+cVNNqR2zkf6v5ci1/bw8NUqGmiciUG81X5Ez5Z2dX177CNtVXZjn9t3hHQh8ihBKd4FWYr
	uS6WOMs6pinJYHaKlUpy+EH3QyKIxNC828vzX6arKHymEiz5KxfXF3tuzYO1F6dGn1Bi8rLzKHvDV
	AnMshydeNBLluT/Ft7Ug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcOHA-0000000ERnM-2ABX;
	Tue, 20 Feb 2024 11:27:04 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcOH7-0000000ERlG-2ovZ
	for linux-phy@lists.infradead.org;
	Tue, 20 Feb 2024 11:27:03 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 21FCB60C3F;
	Tue, 20 Feb 2024 11:27:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B0BF5C433C7;
	Tue, 20 Feb 2024 11:27:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708428420;
	bh=VddnBpFylmssPBNR8LxVy9HNAItc6vmZJuhEvw0a1cc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=r5juAYSUvCxKuNFb30xnBGP17AeDgQUJFn90heG7na3+4GVGkGHv+uzoBqj9ng/t+
	 EFpWosEYzWejLzvTu1Bjvd4u5MAlivbrRnLRMjMfuVHGn0lk6E5xGLqRZs6afOtc8c
	 SYeeknMVdh8Ikld407i7xVPx2i0/h6I2pLkXnOgloW9j9ZrZa/OkqaAfpbGDOZjNpJ
	 726ZtnhyNIwlhqnaH68sGapgpXtajy8uqaA7IHDbJGyFupXqg/fdqFU9YA2D8CGGvs
	 JXtfLbRWHbGtx5EOJuo+kL+Wh1rV5LD7kN3bAl4LuNNiiS6AWwXNixXdTwbJAnTXyp
	 H2SE4ozHo1jxw==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan@kernel.org>)
	id 1rcOH5-000000005Em-1y3j;
	Tue, 20 Feb 2024 12:26:59 +0100
Date: Tue, 20 Feb 2024 12:26:59 +0100
From: Johan Hovold <johan@kernel.org>
To: Markus Elfring <Markus.Elfring@web.de>
Cc: Johan Hovold <johan+linaro@kernel.org>, freedreno@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org, linux-phy@lists.infradead.org,
	linux-arm-msm@vger.kernel.org, kernel-janitors@vger.kernel.org,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Vinod Koul <vkoul@kernel.org>, LKML <linux-kernel@vger.kernel.org>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Kuogee Hsieh <quic_khsieh@quicinc.com>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Rob Clark <robdclark@gmail.com>, stable@vger.kernel.org
Subject: Re: [PATCH 3/6] soc: qcom: pmic_glink_altmode: fix drm bridge
 use-after-free
Message-ID: <ZdSMg63b4ZGYhUXO@hovoldconsulting.com>
References: <20240217150228.5788-4-johan+linaro@kernel.org>
 <9ff4221a-7083-4cb1-abde-1690f655da8d@web.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9ff4221a-7083-4cb1-abde-1690f655da8d@web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240220_032701_833728_B5C0E53B 
X-CRM114-Status: GOOD (  17.52  )
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

T24gVHVlLCBGZWIgMjAsIDIwMjQgYXQgMTE6NTU6NTdBTSArMDEwMCwgTWFya3VzIEVsZnJpbmcg
d3JvdGU6Cj4g4oCmCj4gPiBTcGVjaWZpY2FsbHksIHRoZSBkcC1ocGQgYnJpZGdlIGlzIGN1cnJl
bnRseSByZWdpc3RlcmVkIGJlZm9yZSBhbGwKPiA+IHJlc291cmNlcyBoYXZlIGJlZW4gYWNxdWly
ZWQgd2hpY2ggbWVhbnMgdGhhdCBpdCBjYW4gYWxzbyBiZQo+ID4gZGVyZWdpc3RlcmVkIG9uIHBy
b2JlIGRlZmVycmFscy4KPiA+Cj4gPiBJbiB0aGUgbWVhbnRpbWUgdGhlcmUgaXMgYSByYWNlIHdp
bmRvdyB3aGVyZSB0aGUgbmV3IGF1eCBicmlkZ2UgZHJpdmVyCj4gPiAob3IgUEhZIGRyaXZlciBw
cmV2aW91c2x5KSBtYXkgaGF2ZSBsb29rZWQgdXAgdGhlIGRwLWhwZCBicmlkZ2UgYW5kCj4gPiBz
dG9yZWQgYSAobm9uLXJlZmVyZW5jZS1jb3VudGVkKSBwb2ludGVyIHRvIHRoZSBicmlkZ2Ugd2hp
Y2ggaXMgYWJvdXQgdG8KPiA+IGJlIGRlYWxsb2NhdGVkLgo+IOKApgo+ID4gKysrIGIvZHJpdmVy
cy9zb2MvcWNvbS9wbWljX2dsaW5rX2FsdG1vZGUuYwo+IOKApgo+ID4gQEAgLTQ1NCw3ICs0NTQs
NyBAQCBzdGF0aWMgaW50IHBtaWNfZ2xpbmtfYWx0bW9kZV9wcm9iZShzdHJ1Y3QgYXV4aWxpYXJ5
X2RldmljZSAqYWRldiwKPiA+ICAJCWFsdF9wb3J0LT5pbmRleCA9IHBvcnQ7Cj4gPiAgCQlJTklU
X1dPUksoJmFsdF9wb3J0LT53b3JrLCBwbWljX2dsaW5rX2FsdG1vZGVfd29ya2VyKTsKPiA+Cj4g
PiAtCQlhbHRfcG9ydC0+YnJpZGdlID0gZHJtX2RwX2hwZF9icmlkZ2VfcmVnaXN0ZXIoZGV2LCB0
b19vZl9ub2RlKGZ3bm9kZSkpOwo+ID4gKwkJYWx0X3BvcnQtPmJyaWRnZSA9IGRldm1fZHJtX2Rw
X2hwZF9icmlkZ2VfYWxsb2MoZGV2LCB0b19vZl9ub2RlKGZ3bm9kZSkpOwo+ID4gIAkJaWYgKElT
X0VSUihhbHRfcG9ydC0+YnJpZGdlKSkgewo+ID4gIAkJCWZ3bm9kZV9oYW5kbGVfcHV0KGZ3bm9k
ZSk7Cj4gPiAgCQkJcmV0dXJuIFBUUl9FUlIoYWx0X3BvcnQtPmJyaWRnZSk7Cj4g4oCmCj4gCj4g
VGhlIGZ1bmN0aW9uIGNhbGwg4oCcZndub2RlX2hhbmRsZV9wdXQoZndub2RlKeKAnSBpcyB1c2Vk
IGluIG11bHRpcGxlIGlmIGJyYW5jaGVzLgo+IGh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xp
bnV4L3Y2LjgtcmM1L3NvdXJjZS9kcml2ZXJzL3NvYy9xY29tL3BtaWNfZ2xpbmtfYWx0bW9kZS5j
I0w0MzUKPiAKPiBJIHN1Z2dlc3QgdG8gYWRkIGEganVtcCB0YXJnZXQgc28gdGhhdCBhIGJpdCBv
ZiBleGNlcHRpb24gaGFuZGxpbmcKPiBjYW4gYmUgYmV0dGVyIHJldXNlZCBhdCB0aGUgZW5kIG9m
IHRoaXMgZnVuY3Rpb24gaW1wbGVtZW50YXRpb24uCgpNYXJrdXMsIGFzIHBlb3BsZSBoYXZlIHRv
bGQgeW91IHJlcGVhdGVkbHksIGp1c3Qgc3RvcCB3aXRoIHRoZXNlCmNvbW1lbnRzLiBZb3UncmUg
bm90IGhlbHBpbmcsIGluIGZhY3QsIHlvdSBhcmUgYWN0aXZlbHkgaGFybWZ1bCB0byB0aGUKa2Vy
bmVsIGNvbW11bml0eSBhcyB5b3UgYXJlIHdhc3RpbmcgcGVvcGxlJ3MgdGltZS4KCkpvaGFuCgot
LSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
