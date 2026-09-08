Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 359D1C79F9E
	for <linux-phy@archiver.kernel.org>; Tue,  8 Sep 2026 05:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DcQg9jpkMgvhMSn9HsQbw2hwR+1dQIzA/2HIgUVPYng=; b=uSnjcXx8k+epa7
	WqrIYi+zJ9G6oruSPAHuW9nJ9dXai128dyA6d4Ijqfz5XQZ5OPRHitgC6BJUcKDcXLEGldw9qVFl2
	rJo90rwUXt5JHBo+7CHzURrQYTvLnUhJNXEZFO6+Jv8RdDa6OTRZdzb46MAQKPHLu09eYKdtZO/W4
	tnViDmpSrH8YsCD6U5gqpfw51twDOnoYT11ghpyDO/3B2oghifaIZrWU5EszanXH4AXymndTaItg3
	9wf2F28zbHD4GvP00oKpxiktAraXlIDiowoILlBSKBGeeBv2Pz9ojmbYVQC/MNfEYzQpf0JbF0iF8
	DcKv3PrILkhp9cDqSw7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3obi-000000085uj-3gis;
	Tue, 08 Sep 2026 05:42:58 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3obe-000000085uS-3jQk
	for linux-phy@lists.infradead.org;
	Tue, 08 Sep 2026 05:42:57 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 581BF601DB;
	Tue,  8 Sep 2026 05:42:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 578471F00A3A;
	Tue,  8 Sep 2026 05:42:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788846174;
	bh=9sHEWlWrduaZo4Cw6dYBGV0fa0iwumEibZz9vIlNPKA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=DBxEq7tcZGqlXO5/Z6EAU6edEONx81ZGdqmKud2Q6iBgbQCyKt40K2lyaLG+VKwu/
	 R/RBBalhqjW0tVZiuLDagoFdSOgy5nbJdGjPmySNE7dfMU3f8H5iLyrKR4c/EyL7Hn
	 5kO03TtRYiFPXl+Hv0jFrQhrQRHcondb0Yh8iB1ZKW5RmZo+LqGhjtaRuLg4rk5Tk/
	 IPS12FoThq9s44iSZDJFo/SPW/M5pJURV7d6zUuVZqB/R4csPN6DohpKm0Kt58K/f4
	 8RkT2dxajI03pDiEArPZehWZ5V+LUeGvTb5oC4jGdCleZ1vkHrcMnuIyY980R9bEJ0
	 8OYQZOyaur3XQ==
Date: Tue, 8 Sep 2026 07:42:47 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Nabige Aala <nabige.aala@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>, 
	Mahadevan P <mahadevan.p@oss.qualcomm.com>
Subject: Re: [PATCH v3 3/4] phy: qualcomm: qmp-combo: Update link rate
 specific DP PHY tables
Message-ID: <vm7epwl7mz67xhp3flxji4lhor5g23xiclu65xyk3xhikoug4g@p372qnb34r5b>
References: <20260828-glymur-phy-v3-v3-0-8e73ce7c4636@oss.qualcomm.com>
 <20260828-glymur-phy-v3-v3-3-8e73ce7c4636@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260828-glymur-phy-v3-v3-3-8e73ce7c4636@oss.qualcomm.com>
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

T24gRnJpLCBBdWcgMjgsIDIwMjYgYXQgMDM6MTM6MTVQTSArMDUzMCwgTmFiaWdlIEFhbGEgd3Jv
dGU6Cj4gRnJvbTogUml0ZXNoIEt1bWFyIDxyaXRlc2gua3VtYXJAb3NzLnF1YWxjb21tLmNvbT4K
PiAKPiBVcGRhdGUgRFAgUEhZIGluaXRpYWxpemF0aW9uIHRhYmxlcyBmb3IgYWxsIGxpbmsgcmF0
ZXMgKFJCUiwgSEJSLAo+IEhCUjIsIEhCUjMpIHdpdGggY29ycmVjdGVkIFZDTyBjYWxpYnJhdGlv
biBjb2RlcywgbG9jayBjb21wYXJlCj4gdmFsdWVzLCBTU0Mgc3RlcCBzaXplcywgY2xvY2sgZm9y
d2FyZCBjb25maWcsIGFuZCBiaWFzIGVuYWJsZQo+IHNldHRpbmdzIGZvciBwcm9wZXIgUExMIHBy
b2dyYW1taW5nIGFjcm9zcyBkaWZmZXJlbnQgZGF0YSByYXRlcy4KPiAKPiBTaWduZWQtb2ZmLWJ5
OiBSaXRlc2ggS3VtYXIgPHJpdGVzaC5rdW1hckBvc3MucXVhbGNvbW0uY29tPgo+IFNpZ25lZC1v
ZmYtYnk6IE1haGFkZXZhbiBQIDxtYWhhZGV2YW4ucEBvc3MucXVhbGNvbW0uY29tPgo+IFNpZ25l
ZC1vZmYtYnk6IE5hYmlnZSBBYWxhIDxuYWJpZ2UuYWFsYUBvc3MucXVhbGNvbW0uY29tPgoKTWlz
c2luZyBGaXhlcyB0YWcgcG9pbnRlZCBvdXQgYnkgS29ucmFkLiBXaXRoIHRoYXQgYWRkZWQsCgpB
Y2tlZC1ieTogTWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2YW1Ab3Nz
LnF1YWxjb21tLmNvbT4KCi0gTWFuaQoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDg
rprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4
LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
