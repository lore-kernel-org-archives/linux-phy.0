Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0ED0C982ED
	for <linux-phy@archiver.kernel.org>; Mon, 21 Sep 2026 23:34:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mcxgd3xbTD36Lyh3qom/JGMfODoctlyaLpXPzqI43ko=; b=McC7HG2Jk2eftX
	UsHiDZQc9sIhGQ+f0iIJdArvKnexvxFRi9tGH7bbp+ddCOa0wwpaUIC1nkPsPPZ9OUcATiKhBv1Ca
	iTsLU9/gCYWxTqVcfPcJ5TWPNUbiTuTDWwtFplWo32CFqdAMASlcSgTa5/owoYnVJzNmcTn9mcCnq
	mmnO/vtSF1GAElq+6GEb4xDDiNd08c2+ufdggk3QCXtLOH1dMSf5Rt/I0DbXMBLXsSGYQLYRFux6B
	8m0PFgP6kOsX74FxOvOmwRoTzGo29TRtDogUqQQ9/k9rDnVMfV6M3uWaDCaT1IymHj35KiGAW8vaK
	KDR0fhlu2439PN/xiOrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8nWk-00000003gcO-1WfI;
	Mon, 21 Sep 2026 23:34:26 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8nWi-00000003gcA-2V3h
	for linux-phy@lists.infradead.org;
	Mon, 21 Sep 2026 23:34:24 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 9FFC8600CB;
	Mon, 21 Sep 2026 23:34:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E6B0D1F000FF;
	Mon, 21 Sep 2026 23:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790033663;
	bh=0QO+kK+ZKQJBV2p701Uaz+sFd3B2ISZSh+P+u32nJNE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=JARiEQjQ1lVcqX+xLXO9Qw74QVqSUFwcaPyMMTJ3Up5rtz4cCRMkZfU6he+/n7Yib
	 s6e0a2sbPVnv8Hg/Cr+lgo7uOl/2poMdKWZay1JXM9ln6Q8kr5TwSCHhaXhimuc/d9
	 yf8nbrSOoa0jgfBwVfV4yDTkMb26prjgCUZ8JBW0EwLN2D2bkeAp/5fdG6+QbWyiHI
	 Yapm/lfbyw8foc7RMkSnd51dLvVTgynH04nxZRVrXs5mMwj/vlcFZVfo2Up1QQVyq8
	 VilLxbZTqYPJ0ohKdVYG8RQDFv4+NYnrIVWQEduLCXgs9At/Cs1dSxrmE8zUazZ8Ox
	 R6eX2yt6lwQDA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH] dt-bindings: phy: qcom: Relax required supplies
To: =?utf-8?b?Um9iIEhlcnJpbmcgKEFybSk=?= <robh@kernel.org>
Cc: robh@kernel.org, vkoul@kernel.org, devicetree@vger.kernel.org, olteanv@gmail.com, conor+dt@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org
In-Reply-To: <20260921232603.3129898-1-robh@kernel.org>
References: <20260921232603.3129898-1-robh@kernel.org>
Date: Mon, 21 Sep 2026 23:34:22 +0000
Message-Id: <20260921233422.E6B0D1F000FF@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gZHQtYmluZGluZ3M6
IHVuaW50ZW5kZWQgc2NoZW1hIHJlbGF4YXRpb24gZm9yIHFjb20saXBxNTIxMC1xdXNiMi1waHkK
LS0KCmNvbW1pdCA2OWVlNjM4ZjQwMDRmNmUzMjVhOTYzZjNiODA0YjNjMWNhYzVjNmZiCkF1dGhv
cjogUm9iIEhlcnJpbmcgKEFybSkgPHJvYmhAa2VybmVsLm9yZz4KCmR0LWJpbmRpbmdzOiBwaHk6
IHFjb206IFJlbGF4IHJlcXVpcmVkIHN1cHBsaWVzCgpUaGlzIGNvbW1pdCByZWxheGVzIHRoZSBy
ZXF1aXJlbWVudCBmb3IgdGhyZWUgcmVndWxhdG9yIHN1cHBsaWVzIGluIHRoZSBRVVNCMgpQSFkg
YmluZGluZyBmb3IgbGVnYWN5IElQUTYwMTggbm9kZXMgdGhhdCBkbyBub3QgZGVzY3JpYmUgYm9h
cmQgcmFpbHMuCgo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvcGh5L3Fjb20scXVzYjItcGh5LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvcGh5L3Fjb20scXVzYjItcGh5LnlhbWwKPiBpbmRleCAwMDFmZDBjY2M5ODUyLi4yNTE2
ZWFiN2Y2ZDMyIDEwMDY0NAo+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9waHkvcWNvbSxxdXNiMi1waHkueWFtbAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9waHkvcWNvbSxxdXNiMi1waHkueWFtbApbIC4uLiBdCj4gIGFsbE9mOgo+ICsg
IC0gaWY6Cj4gKyAgICAgIG5vdDoKPiArICAgICAgICBwcm9wZXJ0aWVzOgo+ICsgICAgICAgICAg
Y29tcGF0aWJsZToKPiArICAgICAgICAgICAgY29udGFpbnM6Cj4gKyAgICAgICAgICAgICAgZW51
bTogCj4gKyAgICAgICAgICAgICAgICAtIHFjb20saXBxNjAxOC1xdXNiMi1waHkKPiArICAgICAg
ICAgICAgICAgIC0gcWNvbSxpcHE4MDc0LXF1c2IyLXBoeQoKW1NldmVyaXR5OiBNZWRpdW1dCkRv
ZXMgdGhpcyB1bmludGVudGlvbmFsbHkgcmVsYXggdGhlIHNjaGVtYSByZXF1aXJlbWVudHMgZm9y
IElQUTUyMTA/CgpTaW5jZSBxY29tLGlwcTUyMTAtcXVzYjItcGh5IGZhbGxzIGJhY2sgdG8gcWNv
bSxpcHE2MDE4LXF1c2IyLXBoeSwgYW4gSVBRNTIxMApkZXZpY2UgdHJlZSBub2RlJ3MgY29tcGF0
aWJsZSBhcnJheSB3aWxsIGNvbnRhaW4gcWNvbSxpcHE2MDE4LXF1c2IyLXBoeS4KClRoZSAnY29u
dGFpbnM6IGVudW0nIGxvZ2ljIG1hdGNoZXMgdGhpcyBmYWxsYmFjaywgd2hpY2ggc2VlbXMgbGlr
ZSBpdCBtaWdodAppbmNvcnJlY3RseSBhcHBseSB0aGlzIGxlZ2FjeSBJUFE2MDE4IGV4ZW1wdGlv
biB0byBJUFE1MjEwIG5vZGVzLCBhbGxvd2luZwp0aGVtIHRvIHNpbGVudGx5IHBhc3Mgc2NoZW1h
IHZhbGlkYXRpb24gd2l0aG91dCB0aGUgcmVxdWlyZWQgcmVndWxhdG9yCnN1cHBsaWVzLgoKPiAr
ICAgIHRoZW46Cj4gKyAgICAgIHJlcXVpcmVkOgo+ICsgICAgICAgIC0gdmRkLXN1cHBseQo+ICsg
ICAgICAgIC0gdmRkYS1wbGwtc3VwcGx5Cj4gKyAgICAgICAgLSB2ZGRhLXBoeS1kcGRtLXN1cHBs
eQoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNl
dC8yMDI2MDkyMTIzMjYwMy4zMTI5ODk4LTEtcm9iaEBrZXJuZWwub3JnP3BhcnQ9MQoKLS0gCmxp
bnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
