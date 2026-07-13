Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FDC8C44507
	for <linux-phy@archiver.kernel.org>; Mon, 13 Jul 2026 11:12:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CGmdfwxbtcdT1ivjfkcZipDpwgv2KykyA0Qn6CyqjRk=; b=gGRJiXKODgDDAP
	W0s2tudB5pzj16lcuCNWx/WSc4CEDbh9UYn1RKzP/i74KfsWM1VZoTCFK7FIQ29JWIUWmPTcd0IEj
	Fz9OOK+oibQgQDFslh0RbO0lumqdEinc4zNgHD+zKIrkJ/u3+expejBuKbLERWQkw4lGf+iXQ5Fhs
	MXDmtAnyQf4CmHqc9WyT/rmz6rKxguj+lDV3M1XFohjwfbJiiKZk1M1HKNpLbXTfIZVjgAiAfvvrg
	O7J9ijNSFF0Dw8YKHyJNKeR72Z04Q0PEWprwGnpc0xO4iOIGw64VlIhnDFi9FWkydPYrk6mMwN6RT
	loSThHo99KSYnttoq6Jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjEaW-00000008ynY-3jQW;
	Mon, 13 Jul 2026 11:12:41 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjEaU-00000008ynL-3ZFf
	for linux-phy@lists.infradead.org;
	Mon, 13 Jul 2026 11:12:38 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id F23856004E;
	Mon, 13 Jul 2026 11:12:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9A8F41F000E9;
	Mon, 13 Jul 2026 11:12:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783941157;
	bh=+itPATlxhTbhN7l81/OGgYUotwlHoDMlh3YsBI1rLuY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=LMDpN4mjsABMx6a9b/8YHkgELyGWi8x5/IMBb/CpNiZVulzJzrRippKl5PEtGhVKB
	 L4qC2SKg4U6zbAcGfQ60SWArIjNtPvq09E9h00HVQdmEaG9H3lfq0C0tdP82ZlSy8V
	 Y6H2SkWIwhgSCcMAP4xH9Fq/Nu5R3qxPvxNKZ7VSAwE+S38laXRoF79GGhQHkdVYzr
	 pM826rvmwjDDLl6/+a63D12osQUmRy+kOH6FBkFhe+h6H40shlEywP/AjuMfXmf4lC
	 6+CkOSb+zUPiGBXo2sv4wfK+E1jmFaHOnCfO9iMh6Mh0bjIkad2JIyOWfCRPZL84C5
	 U4/RNS9v3sF7g==
Date: Mon, 13 Jul 2026 13:12:28 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: vkoul@kernel.org, Ronak Raheja <ronak.raheja@oss.qualcomm.com>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, robh@kernel.org, 
	neil.armstrong@linaro.org, gregkh@linuxfoundation.org, dmitry.baryshkov@oss.qualcomm.com, 
	konrad.dybcio@oss.qualcomm.com, abel.vesa@oss.qualcomm.com, wesley.cheng@oss.qualcomm.com, 
	krzysztof.kozlowski@oss.qualcomm.com, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 0/4] phy: qcom: Introduce USB support for Hawi
Message-ID: <chf57j2dkhhjzigpguldadfld5utepa4sxwbo7fjxk5nq37bhp@yci5agzh46ly>
References: <20260508213234.4643-1-ronak.raheja@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260508213234.4643-1-ronak.raheja@oss.qualcomm.com>
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

T24gRnJpLCBNYXkgMDgsIDIwMjYgYXQgMDI6MzI6MzBQTSAtMDcwMCwgUm9uYWsgUmFoZWphIHdy
b3RlOgo+IFRoaXMgc2VyaWVzIGFkZHMgVVNCIFBIWSBzdXBwb3J0IGZvciB0aGUgSGF3aSBTb0Mu
IEl0IGRvY3VtZW50cyB0aGUKPiBRTVAgVVNCMy1EUCBjb21ibyBQSFkgYW5kIE0zMSBlVVNCMiBQ
SFkgYmluZGluZ3MsIGFkZHMgdGhlIEhhd2kKPiBjb21wYXRpYmxlIHRvIHRoZSBEV0MzIFVTQiBi
aW5kaW5nLCBhbmQgYWRkcyB0aGUgUEhZIGluaXRpYWxpemF0aW9uCj4gc2VxdWVuY2VzIHRvIHRo
ZSBxbXAtY29tYm8gZHJpdmVyLgo+IAoKVmlub2QsIGRvZXMgdGhpcyBzZXJpZXMgbG9vayBnb29k
IHRvIHlvdT8KCi0gTWFuaQoKPiAtLS0KPiBDaGFuZ2VzIGluIHYzOgo+IC0gRml4IG1pc3Npbmcg
dmVyc2lvbiB0YWcgaW4gaW5kaXZpZHVhbCBwYXRjaCBzdWJqZWN0cwo+IC0gTGluayB0byB2Mjog
aHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjYwNDI3MjE0MjE3LjI3MzUyNDAtMS1yb25h
ay5yYWhlamFAb3NzLnF1YWxjb21tLmNvbQo+IAo+IENoYW5nZXMgaW4gdjI6Cj4gLSBDbGFyaWZ5
IGluIHRoZSBRTVAgUEhZIGJpbmRpbmcgY29tbWl0IG1lc3NhZ2Ugd2h5IEhhd2kgbmVlZHMgYQo+
ICAgZGVkaWNhdGVkIGNvbXBhdGlibGUgc3RyaW5nIHZzIHByZXZpb3VzIHRhcmdldHMKPiAtIFJl
bW92ZSBzdHJheSBibGFuayBsaW5lIGluIGhhd2lfdXNiM19yeF90YmwKPiAtIExpbmsgdG8gdjE6
IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDI2MDQyNTA3MDAwMi4zNDg3MzMtMS1yb25h
ay5yYWhlamFAb3NzLnF1YWxjb21tLmNvbS8KPiAKPiBSb25hayBSYWhlamEgKDQpOgo+ICAgZHQt
YmluZGluZ3M6IHBoeTogcWNvbSxzYzgyODB4cC1xbXAtdXNiNDNkcC1waHk6IEFkZCBIYXdpIFFN
UCBQSFkKPiAgIGR0LWJpbmRpbmdzOiBwaHk6IHFjb20sbTMxLWV1c2IyLXBoeTogRG9jdW1lbnQg
TTMxIGVVU0IyIFBIWSBmb3IgSGF3aQo+ICAgZHQtYmluZGluZ3M6IHVzYjogcWNvbSxzbnBzLWR3
YzM6IEFkZCBIYXdpIGNvbXBhdGlibGUKPiAgIHBoeTogcXVhbGNvbW06IHFtcC1jb21ibzogQWRk
IHN1cHBvcnQgZm9yIEhhd2kgU29DCj4gCj4gIC4uLi9iaW5kaW5ncy9waHkvcWNvbSxtMzEtZXVz
YjItcGh5LnlhbWwgICAgICB8ICAgMSArCj4gIC4uLi9waHkvcWNvbSxzYzgyODB4cC1xbXAtdXNi
NDNkcC1waHkueWFtbCAgICB8ICAgMiArCj4gIC4uLi9iaW5kaW5ncy91c2IvcWNvbSxzbnBzLWR3
YzMueWFtbCAgICAgICAgICB8ICAgMyArCj4gIC4uLi9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1w
LWNvbS1hb24tdjEwLmggICB8ICAxNSArKwo+ICBkcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNv
bS1xbXAtY29tYm8uYyAgICAgfCAyMzEgKysrKysrKysrKysrKysrKystCj4gIC4uLi9waHkvcXVh
bGNvbW0vcGh5LXFjb20tcW1wLWRwLXBoeS12MTAuaCAgICB8ICAxNSArKwo+ICAuLi4vcGh5L3F1
YWxjb21tL3BoeS1xY29tLXFtcC1wY3MtYW9uLXYxMC5oICAgfCAgMTMgKwo+ICAuLi4vcGh5L3F1
YWxjb21tL3BoeS1xY29tLXFtcC1wY3MtdXNiLXYxMC5oICAgfCAgMTkgKysKPiAgZHJpdmVycy9w
aHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXBjcy12MTAuaCAgIHwgIDM0ICsrKwo+ICAuLi4vcXVh
bGNvbW0vcGh5LXFjb20tcW1wLXFzZXJkZXMtY29tLXYxMC5oICAgfCAgODkgKysrKysrKwo+ICAu
Li4vcXVhbGNvbW0vcGh5LXFjb20tcW1wLXFzZXJkZXMtdHhyeC12MTAuaCAgfCAgODkgKysrKysr
Kwo+ICBkcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAuaCAgICAgICAgICAgfCAgIDUg
Kwo+ICAxMiBmaWxlcyBjaGFuZ2VkLCA1MTIgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkK
PiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1j
b20tYW9uLXYxMC5oCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL3BoeS9xdWFsY29tbS9w
aHktcWNvbS1xbXAtZHAtcGh5LXYxMC5oCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL3Bo
eS9xdWFsY29tbS9waHktcWNvbS1xbXAtcGNzLWFvbi12MTAuaAo+ICBjcmVhdGUgbW9kZSAxMDA2
NDQgZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXBjcy11c2ItdjEwLmgKPiAgY3Jl
YXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1wY3MtdjEw
LmgKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFt
cC1xc2VyZGVzLWNvbS12MTAuaAo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9waHkvcXVh
bGNvbW0vcGh5LXFjb20tcW1wLXFzZXJkZXMtdHhyeC12MTAuaAo+IAo+IC0tIAo+IDIuMzQuMQo+
IAoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7g
r40KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBo
eQo=
