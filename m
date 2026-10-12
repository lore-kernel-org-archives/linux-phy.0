Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D21AACA9ED0
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 13:19:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kUEbgK9u7AqwWb0kpz5ZCTNvCFOmowv2E2RTx2pAUbA=; b=Lc6jkPmgBvbSh+
	y6oNSoIY4WAs/fZqVQZHSBIlxPggZVBSipG8dVTx1ylp3R2TVoxkjraSJ6Hb0FUxHhs6IsSyIAb1K
	V2nGKNe7vkRgtCHx4YgvA5IyJCwBxt+FrDGxarQAgz2qgWnWv5Nx9xvkHjNVfXy+Vyzs3yvFDQGRn
	CTxJ33ycfEgGp3kJPoSDwx+hka7/ZwUpxB2QhFVMN2wZxSzJ8blFv4uPHOWh0U03RB4FeymfLyw5P
	jSaANK8BMKbn1hDEjO+WhDyuYUpLdF7KRvKJAGlVncVB7AsoqncbXq8XQG4hYBko++d8peVPzYQTu
	FYCe65vsL4s8/9IxKz9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGFw0-0000000AY21-1wZi;
	Mon, 12 Oct 2026 13:19:20 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGFvz-0000000AY1m-41qw
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 13:19:20 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 7278F411E8;
	Mon, 12 Oct 2026 13:19:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4437E1F0089B;
	Mon, 12 Oct 2026 13:19:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791811159;
	bh=l8F4WlE83w/gzZrKmJrEQ/hWZM/K60nnEHKAMTgjHJA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=ZRW6XwmNU4pS1UBwDwmzH7Dj6icbWlkneHuKE1wfxjmsQYEqzhgsWMsjhg8rTWsWv
	 AUzRQfsMKXMmlx+METx2RDDHR0l71GYbo52W+t+LAmf04U/scU+gYQzVC/vP3xgKSO
	 2RnXaF5xfPen5CugsXtz3sFLD8uCAyejLSadFkTHHfhaTOffz4Ag0y/mjM8XuI30nj
	 +/8i/YmmC5VLWWn+wVthiR6FCv1jzmxw2rz7pxVZbEtwPTIL0nJ2PYhyCmyR4YQZq4
	 osYB/2VEOqpEaKr92HfGAwGADBQu043VEwmQU/4c+aSX31hYriWFo5+nVbzF6ozzF7
	 JOjsl5zN3oPUQ==
Date: Mon, 12 Oct 2026 18:49:05 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Nabige Aala <nabige.aala@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Rob Clark <robin.clark@oss.qualcomm.com>, 
	Dmitry Baryshkov <lumag@kernel.org>, Abhinav Kumar <abhinav.kumar@linux.dev>, 
	Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Kuogee Hsieh <quic_khsieh@quicinc.com>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>, 
	Mahadevan P <mahadevan.p@oss.qualcomm.com>
Subject: Re: [PATCH 09/17] phy: qcom: edp: Add Nord AUX channel and VCO
 divider configuration tables
Message-ID: <aszdt5JPfDYvMB__@debian>
References: <20260911-nord-drv-dt-v1-0-e25c073cf1b6@oss.qualcomm.com>
 <20260911-nord-drv-dt-v1-9-e25c073cf1b6@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260911-nord-drv-dt-v1-9-e25c073cf1b6@oss.qualcomm.com>
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

T24gRnJpLCBTZXAgMTEsIDIwMjYgYXQgMDk6MDY6NDBQTSArMDUzMCwgTmFiaWdlIEFhbGEgd3Jv
dGU6Cj4gRnJvbTogUml0ZXNoIEt1bWFyIDxyaXRlc2gua3VtYXJAb3NzLnF1YWxjb21tLmNvbT4K
PiAKPiBOb3JkIHJlcXVpcmVzIGRpZmZlcmVudCBBVVggY2hhbm5lbCBhbmQgVkNPIGRpdmlkZXIg
c2V0dGluZ3MgY29tcGFyZWQKPiB0byBleGlzdGluZyBTb0NzLiAgQWRkIGVkcF9waHlfYXV4X2Nm
Z19ub3JkIGFuZCBlZHBfcGh5X3Zjb19kaXZfY2ZnX25vcmQKPiB3aXRoIHZhbHVlcyBzb3VyY2Vk
IGZyb20gSFBHIFRhYmxlcyAyLTEtYSBhbmQgMi0xLWIgcmVzcGVjdGl2ZWx5Lgo+IAo+IFNpZ25l
ZC1vZmYtYnk6IFJpdGVzaCBLdW1hciA8cml0ZXNoLmt1bWFyQG9zcy5xdWFsY29tbS5jb20+Cj4g
U2lnbmVkLW9mZi1ieTogTmFiaWdlIEFhbGEgPG5hYmlnZS5hYWxhQG9zcy5xdWFsY29tbS5jb20+
Cj4gLS0tCj4gIGRyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLWVkcC5jIHwgMTkgKysrKysr
KysrKysrKysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgMTkgaW5zZXJ0aW9ucygrKQo+IAo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1lZHAuYyBiL2RyaXZlcnMv
cGh5L3F1YWxjb21tL3BoeS1xY29tLWVkcC5jCj4gaW5kZXggMzczZjEzYjNkNmQ1Li5lZTBkN2Yx
YTkwZmUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tZWRwLmMK
PiArKysgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1lZHAuYwo+IEBAIC0xNTA4LDYg
KzE1MDgsMjUgQEAgc3RhdGljIGludCBxY29tX2VkcF9waHlfcHJvYmUoc3RydWN0IHBsYXRmb3Jt
X2RldmljZSAqcGRldikKPiAgCXJldHVybiBQVFJfRVJSX09SX1pFUk8ocGh5X3Byb3ZpZGVyKTsK
PiAgfQo+ICAKPiArLyoKPiArICogbm9yZCBBVVggY29uZmlnIChlRFAgbW9kZSkuCj4gKyAqIEZy
b20gSFBHIFRhYmxlIDItMS1hOiBlZHBfcGh5X2F1eF9iaXN0LmNzdgo+ICsgKiBJbmRleDogIDAg
ICAgIDEgICAgIDIgICAgIDMgICAgIDQgICAgIDUgICAgIDYgICAgIDcgICAgIDggICAgIDkgICAg
MTAgICAgMTEgICAgMTIKPiArICovCj4gK3N0YXRpYyBjb25zdCB1OCBlZHBfcGh5X2F1eF9jZmdf
bm9yZFtEUF9BVVhfQ0ZHX1NJWkVdID0gewo+ICsJMHgwMCwgMHgxMywgMHhhNCwgMHgwMCwgMHgw
YSwgMHgyNiwgMHgwYSwgMHgwMywgMHgzNywgMHgwMywgMHgwMiwgMHgwMiwgMHgwNCwKPiArfTsK
PiArCj4gKy8qCj4gKyAqIG5vcmQgVkNPX0RJViBjb25maWcgZm9yIGVEUCBtb2RlLgo+ICsgKiBG
cm9tIEhQRyBUYWJsZSAyLTEtYiBBVVggQ2xvY2sgU2V0dGluZ3MgKGVEUCBtb2RlKSAtIE5vbWlu
YWwvVHVyYm8gY29sdW1uLgo+ICsgKiBJbmRpY2VzOiBbMF09MTYyMCwgWzFdPTI3MDAsIFsyXT01
NDAwLCBbM109ODEwMAo+ICsgKi8KPiArc3RhdGljIGNvbnN0IHU4IGVkcF9waHlfdmNvX2Rpdl9j
Zmdfbm9yZFs0XSA9IHsKPiArCTB4MDAsIDB4MDAsIDB4MDIsIDB4MDEsCj4gK307Cj4gKwoKRnJv
bSB0aGlzIHBhdGNoIG9ud2FyZHMgeW91IGFyZSBpbnRyb2R1Y2luZyAtV3VudXNlZCogd2Fybmlu
Z3MgZm9yIGVhY2ggcGF0Y2guCllvdSAqbXVzdCBub3QqIGRvIHRoYXQuCgpJZiBsb2dpY2FsIHNw
bGl0IGlzIHdoYXQgeW91IGFyZSBhaW1pbmcgaGVyZSwgSSBjYW4gc2F5IHRoYXQgaXQgaXNuJ3Qg
d2hhdCB5b3UKYXJlIGRvaW5nIGhlcmUuCgpQbGVhc2UgZ3JvdXAgTm9yZCBTb0Mgc3VwcG9ydCBp
biBvbmUgcGF0Y2ggYW5kIGtlZXAgdGhlIHByZXBhcmF0b3J5IHBhdGNoZXMKc2VwYXJhdGUuCgot
IE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K61
4K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1waHkK
