Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5C67C48BC4
	for <linux-phy@archiver.kernel.org>; Tue, 20 Feb 2024 07:25:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CvOS+/Xwy20WiNcGBYibPv3I0coXDw+CkV/8wSDhhzA=; b=pDqUGPClRxYZ9J
	ezrcyyQl9UZYMly3HCDn22tlDdC5vHyYv3EP4woET1pJD6SzYyxLuWQSyn5rrerNqFTzDDSm3lHo6
	XwsFS4JpctLGweaPWHhql7c6OTWjBMBv8e14R39nsTESLNfDvVONTSSXKJtg9zf6KAhNjKqHGvU6L
	VjzXsaR2ZwJ0M3xBl3IfnzudXxjDX8p/lb7jM6xcWmHbDASJQNkyV6pAZ2If/YTSXHtEEWUK6NRb+
	kPcfxyTKiOXBa6C4IfRVRiy+qu3l3YsvE8+thA3CwOWYuwMRIFjCvlPHHpIJDlE2rZA2hfDwH0nak
	UakWGtZKYksUwjst4HTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcKUy-0000000DVfG-18eZ;
	Tue, 20 Feb 2024 07:25:04 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcKUv-0000000DVeH-24x4
	for linux-phy@lists.infradead.org;
	Tue, 20 Feb 2024 07:25:03 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 63889CE1312;
	Tue, 20 Feb 2024 07:24:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 96CECC433C7;
	Tue, 20 Feb 2024 07:24:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708413898;
	bh=Km8gZMkJB7vNwcEvKJf3Z5MjG8s2kLrFv7d6SMKvVC4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Y6WSjOKxHt9TBefi2fivgCw5sGg4pib4PrIDZmtoesOTgo80CtchhROVw3pw0FeqR
	 Pc9MGfrCfAKPZbAgDQVs+NvTqOslO+bcwY0+bPdxSK2Sx7n0x9RIur2VOHGKxXS5q1
	 ZojucTaTTOXH7nqkaDAr7oKNW9keBDciLLBBztXj3jG96Dqy7egDtQFdz8u2Q2iBJt
	 aWy2UUb55Fmr0MdRm5gJysrUBrLO6+m7+7BBeis1O8wXCAb8JBXQ17KOHFtUMJxzgm
	 /zoywKFK7JfGrRP4yu7ts9/D14Ft57GqR0srDYm1N84JAeD8Tp4Vli9+dIMNop2M/1
	 B2HwmHPKoXLyg==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan@kernel.org>)
	id 1rcKUp-0000000024l-2ZkS;
	Tue, 20 Feb 2024 08:24:56 +0100
Date: Tue, 20 Feb 2024 08:24:55 +0100
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
	Rob Clark <robdclark@gmail.com>
Subject: Re: [PATCH 1/6] drm/bridge: aux-hpd: fix OF node leaks
Message-ID: <ZdRTx2lmHBVlcLub@hovoldconsulting.com>
References: <20240217150228.5788-2-johan+linaro@kernel.org>
 <c95f5ff3-8dad-4302-9384-92a9b83f7bdc@web.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c95f5ff3-8dad-4302-9384-92a9b83f7bdc@web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240219_232501_728328_1E164A40 
X-CRM114-Status: GOOD (  14.71  )
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

T24gTW9uLCBGZWIgMTksIDIwMjQgYXQgMDY6NDg6MzBQTSArMDEwMCwgTWFya3VzIEVsZnJpbmcg
d3JvdGU6Cj4gPiBUaGUgdHdvIGRldmljZSBub2RlIHJlZmVyZW5jZXMgdGFrZW4gZHVyaW5nIGFs
bG9jYXRpb24gbmVlZCB0byBiZQo+ID4gZHJvcHBlZCB3aGVuIHRoZSBhdXhpbGlhcnkgZGV2aWNl
IGlzIGZyZWVkLgo+IOKApgo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9hdXgtaHBk
LWJyaWRnZS5jCj4g4oCmCj4gPiBAQCAtNzQsNiArNzUsOCBAQCBzdHJ1Y3QgZGV2aWNlICpkcm1f
ZHBfaHBkX2JyaWRnZV9yZWdpc3RlcihzdHJ1Y3QgZGV2aWNlICpwYXJlbnQsCj4gPgo+ID4gIAly
ZXQgPSBhdXhpbGlhcnlfZGV2aWNlX2luaXQoYWRldik7Cj4gPiAgCWlmIChyZXQpIHsKPiA+ICsJ
CW9mX25vZGVfcHV0KGFkZXYtPmRldi5wbGF0Zm9ybV9kYXRhKTsKPiA+ICsJCW9mX25vZGVfcHV0
KGFkZXYtPmRldi5vZl9ub2RlKTsKPiA+ICAJCWlkYV9mcmVlKCZkcm1fYXV4X2hwZF9icmlkZ2Vf
aWRhLCBhZGV2LT5pZCk7Cj4gPiAgCQlrZnJlZShhZGV2KTsKPiA+ICAJCXJldHVybiBFUlJfUFRS
KHJldCk7Cj4gCj4gVGhlIGxhc3QgdHdvIHN0YXRlbWVudHMgYXJlIGFsc28gdXNlZCBpbiBhIHBy
ZXZpb3VzIGlmIGJyYW5jaC4KPiBodHRwczovL2VsaXhpci5ib290bGluLmNvbS9saW51eC92Ni44
LXJjNS9zb3VyY2UvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9hdXgtaHBkLWJyaWRnZS5jI0w2Mwo+
IAo+IEhvdyBkbyB5b3UgdGhpbmsgYWJvdXQgdG8gYXZvaWQgc3VjaCBhIGJpdCBvZiBkdXBsaWNh
dGUgc291cmNlIGNvZGUKPiBieSBhZGRpbmcgYSBsYWJlbCBoZXJlPwoKTm8sIHRoZSBjdXJyZW50
IGNvZGUgaXMgZmluZSBhbmQgd2hhdCB5b3UgYXJlIHN1Z2dlc3RpbmcgaXMgaW4gYW55IGNhc2UK
dW5yZWxhdGVkIHRvIHRoaXMgZml4LgoKSWYgdGhpcyBmdW5jdGlvbiBldmVyIGdyb3dzIGEgdGhp
cmQgZXJyb3IgcGF0aCBsaWtlIHRoYXQsIEkgdG9vIHdvdWxkCmNvbnNpZGVyIGl0IGhvd2V2ZXIu
CgpKb2hhbgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcGh5Cg==
