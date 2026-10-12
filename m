Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B04ACA9EC5
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 15:42:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PS35octsLk21uPe1RwbJCXmbqFj05cM3EzkdVYe8dy8=; b=hj76Wm9KR7yt/K
	WUwvFPOP3l+TJpTDCHrnxCxQRR5F/V9EZMWAqjpvVROiq4d24h27anbNMQdQf3nPCTUPNfxyogmnz
	9VxR7RJ/jJTHXrVwga37abxPqoOigSvAObfChxp6YPgZDizwMJPfqHGysnZs0p96IwDnMU0hxejpc
	AxOyG8k2fTcHIJ1rTUF5pSisb5dyBTeTk/Vurj49pgUBZHcCXbifzRmbjfGcgSPVWPTaN9Mab1ZFZ
	IeLlxhF4GJUmxI047sBAC2BnwMWSjd71upVz88I/2iDuMJIsTlJ8e/auqwi1igonK6bYaSQAAvPX5
	noFvpQb9If7X2q4QOQ1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGIAs-0000000Apss-1ZWI;
	Mon, 12 Oct 2026 15:42:50 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGIAs-0000000ApsM-0Pyl
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 15:42:50 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 81846429EE;
	Mon, 12 Oct 2026 15:42:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E495C1F0089C;
	Mon, 12 Oct 2026 15:42:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791819769;
	bh=SyHM0rJpa0i6/JQi3L2s4V3dPDYMlVLe2JZQsMF0C/0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=R7dAvg7iyUGmIBekAWeOAmUXAljLV/GroY44/lp6nL99leW7X4yFzRaKKYaYFwdW8
	 WcdwUvnLQY+Lgqt8DVmyBt3qYG+t0X14lhcZ/iILBobtCSngmJ+WjaGlLw7clzrhkC
	 eleCv4qDQtHX2t491MSa6g+MEkSdOp40qKUbovojRYbiDrZr45Jw4zo9u/h9TAqkkS
	 iHud9xSDjJ31VeT/TBTQwQYhmGzVDqAz14dVqVDqzPwW/2qHcxJKvKAUAsWHvZyEDT
	 u5xG8hrvJQwvbnQxJsESuFRcmVQ1wtU7uIDHdPHrFC7KyWwQg+atAwr0U9WcLzeGkY
	 Nq2yr6KRVzg/w==
Date: Mon, 12 Oct 2026 21:12:39 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Abel Vesa <abelvesa@kernel.org>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
	peter.chen@oss.qualcomm.com, qiang.yu@oss.qualcomm.com, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/4] phy: qcom: qmp-pcie: Add qref and refgen
 regulator vote for QCS8300 and SA8775p PHY
Message-ID: <asz_4F1zUeTlMVvG@debian>
References: <20260916102023.2054761-1-ziyue.zhang@oss.qualcomm.com>
 <20260916102023.2054761-3-ziyue.zhang@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260916102023.2054761-3-ziyue.zhang@oss.qualcomm.com>
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

T24gV2VkLCBTZXAgMTYsIDIwMjYgYXQgMDY6MjA6MjFQTSArMDgwMCwgWml5dWUgWmhhbmcgd3Jv
dGU6Cj4gQWRkIGEgbmV3IHNhODc3NXBfcW1wX3BoeV92cmVnX2wgdGhhdCBpbmNsdWRlcyB2ZGRh
LXBoeSwgdmRkYS1wbGwsCj4gdmRkYS1xcmVmLCB2ZGRhLXJlZmdlbiBhbmQgcmVmZ2VuIHN1cHBs
aWVzLCBhbmQgdXNlIGl0IGZvciBRQ1M4MzAwCj4gYW5kIFNBODc3NXAgUENJZSBQSFkgY29uZmln
dXJhdGlvbnMuIFRoaXMgYXZvaWRzIG1vZGlmeWluZwo+IHNtODU1MF9xbXBfcGh5X3ZyZWdfbCBh
bmQgYnJlYWtpbmcgU004NTUwIGFuZCBTTTg2NTAuCj4gCj4gVGhlc2Ugc3VwcGxpZXMgd2VyZSBt
aXNzaW5nIGZyb20gdGhlIG9yaWdpbmFsIGRyaXZlciwgd2hpY2ggd2FzIGZvdW5kCj4gdG8gYmUg
dGhlIHJvb3QgY2F1c2Ugb2Ygb2NjYXNpb25hbCBzeXN0ZW0gY3Jhc2hlcyBvYnNlcnZlZCBvbiBR
Q1M4MzAwCj4gYW5kIFNBODc3NXAgcGxhdGZvcm1zLiBXaXRob3V0IHZvdGluZyBmb3IgdGhlc2Ug
c3VwcGxpZXMsIHRoZSBQQ0llIFBIWQo+IGxhY2tzIHN0YWJsZSByZWZlcmVuY2UgY2xvY2sgYW5k
IHZvbHRhZ2UsIHNvIHRoZSBQSFkgbmV2ZXIgYmVjb21lcwo+IHJlYWR5IGFuZCBpbml0aWFsaXph
dGlvbiB0aW1lcyBvdXQ6Cj4gCj4gICBbICAgIDcuMzAzMTE5XSBxY29tLXFtcC1wY2llLXBoeSAx
YzA0MDAwLnBoeTogcGh5IGluaXRpYWxpemF0aW9uIHRpbWVkLW91dAo+ICAgWyAgICA3LjMwOTk0
OF0gcGh5IHBoeS0xYzA0MDAwLnBoeS4wOiBwaHkgcG93ZXJvbiBmYWlsZWQgLS0+IC0xMTAKPiAK
PiBOb3RlIHRoYXQgZHVlIHRvIGEgaGFyZHdhcmUgaXNzdWUsIFFSRUYgYWN0dWFsbHkgZGVwZW5k
cyBvbiByZWZnZW4zCj4gcmF0aGVyIHRoYW4gcmVmZ2VuMiBhcyBkb2N1bWVudGVkOyByZWZnZW4z
IGlzIHRoZXJlZm9yZSB2b3RlZCBtYW51YWxseQo+IHZpYSB0aGUgcmVmZ2VuIHN1cHBseSBhcyBh
IHdvcmthcm91bmQuCj4gCj4gRml4ZXM6IGEwNWI2ZDUxMzVlYyAoInBoeTogcWNvbS1xbXAtcGNp
ZTogYWRkIHN1cHBvcnQgZm9yIHNhODc3NXAiKQo+IEZpeGVzOiBlYmYxOThmMTdiNWEgKCJwaHk6
IHFjb20tcW1wLXBjaWU6IGFkZCBkdWFsIGxhbmUgUEhZIHN1cHBvcnQgZm9yIFFDUzgzMDAiKQo+
IFNpZ25lZC1vZmYtYnk6IFppeXVlIFpoYW5nIDx6aXl1ZS56aGFuZ0Bvc3MucXVhbGNvbW0uY29t
PgoKUmV2aWV3ZWQtYnk6IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaXZhbm5hbi5zYWRoYXNp
dmFtQG9zcy5xdWFsY29tbS5jb20+CgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPg
rqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlz
dApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
