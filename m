Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C828C79F99
	for <linux-phy@archiver.kernel.org>; Tue,  8 Sep 2026 05:42:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Slm8dVGs45BsfWb0TK43y9aWoJQSkpIjpdAAq/Nycc=; b=WLDY/6ku8y24Jx
	tvJHJCGuzspPoCodCvsZRu2q+V3u7uvwT+dAIKEpspcZ+AXBFY+rFASJD20fQn3RE7adU5kMSdbvl
	QgbZKSRRDdnOY7PuaNMD6PHIQS2nO7M6yhhHppih3f7Z1fL6Da/FMg9VSZqI9GrLVaHJThfxCOlmM
	/XK1hpuak3WLdp/LRUSi1DBtrgG6CmvL9p0MQlcKdVXnq9/8lAili8IaE3yzWKFHTmog4B2D9cHpH
	f7BaHBlfWsoNhbcUvzaxvYGA0s5HX0hZRPozAb1D8ZvKFvyHa6ejh6q71hmnNw6IhLUjnFNfwHH+6
	rf+NRu0xkQXMjkkzrzkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3ob0-000000085r1-3F3z;
	Tue, 08 Sep 2026 05:42:14 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3ob0-000000085qr-1YL3
	for linux-phy@lists.infradead.org;
	Tue, 08 Sep 2026 05:42:14 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 85F42601DB;
	Tue,  8 Sep 2026 05:42:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 83ED11F00A3D;
	Tue,  8 Sep 2026 05:42:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788846133;
	bh=KgnqIr7UdRvBDkUAm8N2T9hQv3n55lNAI6VA1FdVOpQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=bblt7AR7DCVrPTeI0sY3bIJ3aLvd3OzvrY4UeqZlabgashxgz+tMjwq1QVCCofOrn
	 ipqyoEfF6qToOf5a3Ez5xtWLfGodHs8XCLL0QpBjmliJYdUWP3kPpcpG+j0YWIKK5H
	 sNFZVH+k5HitVqB6lXazo9nfCZvtVhiR0H9K92hxgJK49WFx+9akipChVLjh3Rpayf
	 HHz5MePviYpGvbcfGNOuKAYHOx4iIxf+WqEP71qmiYT3IUG7pHdSlSN7UT5djkIloB
	 Q/lh2a53bJfYM40uTQsd7s+zie5ztxZVSuHpgueva+VCj02Ml8PIJ1/GXPZLH8X+T+
	 tJmrEmLr2jrEg==
Date: Tue, 8 Sep 2026 07:42:06 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Nabige Aala <nabige.aala@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>, 
	Mahadevan P <mahadevan.p@oss.qualcomm.com>
Subject: Re: [PATCH v3 2/4] phy: qualcomm: qmp-combo: Update DP PHY common
 init tables
Message-ID: <bivsendfomibvs6kemiwhrnqhamtozishrd7i2hfqikxx6ozvn@xyfhtuenipxt>
References: <20260828-glymur-phy-v3-v3-0-8e73ce7c4636@oss.qualcomm.com>
 <20260828-glymur-phy-v3-v3-2-8e73ce7c4636@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260828-glymur-phy-v3-v3-2-8e73ce7c4636@oss.qualcomm.com>
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

T24gRnJpLCBBdWcgMjgsIDIwMjYgYXQgMDM6MTM6MTRQTSArMDUzMCwgTmFiaWdlIEFhbGEgd3Jv
dGU6Cj4gRnJvbTogUml0ZXNoIEt1bWFyIDxyaXRlc2gua3VtYXJAb3NzLnF1YWxjb21tLmNvbT4K
PiAKPiBVcGRhdGUgY29tbW9uIERQIFBIWSBzZXJkZXMgYW5kIFRYIGluaXRpYWxpemF0aW9uIHRh
YmxlcyB3aXRoCj4gY29ycmVjdGVkIFBMTCBjb250cm9sIHZhbHVlcyAoTU9ERTAgaW5zdGVhZCBv
ZiBNT0RFMSksIHVwZGF0ZWQKPiBTU0Mgc3RlcCBzaXplLCByZXNldCBjb250cm9sLCBhbmQgdmFy
aW91cyBUWCBsYW5lIGNvbmZpZ3VyYXRpb24KPiBwYXJhbWV0ZXJzIGluY2x1ZGluZyBlbXBoYXNp
cyBsZXZlbHMgYW5kIGRyaXZlciBlbmFibGUgc2V0dGluZ3MuCj4gCj4gU2lnbmVkLW9mZi1ieTog
Uml0ZXNoIEt1bWFyIDxyaXRlc2gua3VtYXJAb3NzLnF1YWxjb21tLmNvbT4KPiBTaWduZWQtb2Zm
LWJ5OiBNYWhhZGV2YW4gUCA8bWFoYWRldmFuLnBAb3NzLnF1YWxjb21tLmNvbT4KPiBTaWduZWQt
b2ZmLWJ5OiBOYWJpZ2UgQWFsYSA8bmFiaWdlLmFhbGFAb3NzLnF1YWxjb21tLmNvbT4KCk1pc3Np
bmcgRml4ZXMgdGFnIGFzIHRoZSB1cGRhdGUgc291bmRzIGxpa2UgYSBmaXguCgpBY2tlZC1ieTog
TWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2YW1Ab3NzLnF1YWxjb21t
LmNvbT4KCi0gTWFuaQoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7g
rprgrr/grrXgrq7gr40KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXBoeQo=
