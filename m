Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0BE8C79F99
	for <linux-phy@archiver.kernel.org>; Mon,  7 Sep 2026 11:04:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cttPPc7sQIVGyfI9Kc7Q7/vZ8ojAyhCXslPpZVSx0/o=; b=dzIyAalVJxw1xd
	V5DxskfdYjCV4NlDJZ2AoVjji56IA5qvYd0Akiz9BmLJBdGlY2Fkg2JqVUFmVzUp8b1ZCYcMEWTol
	L+r37K/g2pysux/FLZv/WRAiGne1wYD7P2rSLgrtyzCiIap0yqEA7PbfXz5mOsUCSFZ+Wtvx4pVqf
	8EQLmAjYGU08WgfBWptWbR444GKhkLMGb1UULdUNLJziqJNPCRchoqJk1MAewYzNtGfHbadYieDxn
	7EsKzB+0KfZTQdjoI3KT2rxnMWbNJx/MG8rWBYPF/jC2o2H/K800AsPTAEtgpH1V8WwPRtV+oGdyZ
	MN1GD2AqfGm1ThE75J3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3X9e-00000006bYo-25Fk;
	Mon, 07 Sep 2026 11:04:50 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3X9d-00000006bYg-2MgQ
	for linux-phy@lists.infradead.org;
	Mon, 07 Sep 2026 11:04:49 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id D48AB60AB5;
	Mon,  7 Sep 2026 11:04:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8D0401F00ACF;
	Mon,  7 Sep 2026 11:04:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788779088;
	bh=UhDd3EHod0lYY5MEXGTvrMluTalNr+mv5duatZgY/ew=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=K6xbBSRQ3nCBs1A6qV78I1kbUlt139kLQPmE01Gc0apHamGHx/lMbh4OYEOFYUs+L
	 RRRqpGb9b4YopuGIXGLYkIz7Yk4RQexl1lqFxSPbwtJNbnWgKrdmlWudy8RSuIaBYa
	 uVPHko+tEbpElwnAwz23bNbmjVBHPOLPljIsXAI27FcJmhgkFNdmxjoRdALk4B2pWs
	 kR+r97c7ZDXJuXTTY03jqmYPQ55sMamMBaKmEt9HAsjWL9LbXHzs0jQDzqUEVKvaAX
	 +rWyccjjooOr0RDVk+FQ1orp2ncEdU8muUejDfy6I5YslUdTbbefr/8WevrKSvAaS9
	 oVpd6FEuQQghQ==
Date: Mon, 7 Sep 2026 13:04:38 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: george.moussalem@outlook.com
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Praveenkumar I <praveenkumar.i@oss.qualcomm.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>, 
	Nitheesh Sekar <quic_nsekar@quicinc.com>, Wesley Cheng <quic_wcheng@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH v3 09/12] dt-bindings: usb: qcom,snps-dwc3: Add clocks
 for USB3 on Qualcomm IPQ5018
Message-ID: <xhlq5d56pz5c6aq7bngxva4mrkf55zv7wt6d7xe2ql5gurqev7@7mbf6oc7eocu>
References: <20260825-ipq5018-usb3-v3-0-39be0955a6aa@outlook.com>
 <20260825-ipq5018-usb3-v3-9-39be0955a6aa@outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260825-ipq5018-usb3-v3-9-39be0955a6aa@outlook.com>
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

T24gVHVlLCBBdWcgMjUsIDIwMjYgYXQgMDQ6Mzc6MjZQTSArMDQwMCwgR2VvcmdlIE1vdXNzYWxl
bSB2aWEgQjQgUmVsYXkgd3JvdGU6Cj4gRnJvbTogR2VvcmdlIE1vdXNzYWxlbSA8Z2VvcmdlLm1v
dXNzYWxlbUBvdXRsb29rLmNvbT4KPiAKPiBBZGQgYXV4IGFuZCBsZnBzIGNsb2NrcyBpbiBRdWFs
Y29tbSBJUFE1MDE4LiBUaGVzZSBjbG9ja3MgYXJlIHJlcXVpcmVkCj4gb25seSBmb3IgVVNCIFN1
cGVyLVNwZWVkIHN1cHBvcnQuCj4gCj4gUmV2aWV3ZWQtYnk6IEtyenlzenRvZiBLb3psb3dza2kg
PGtyenlzenRvZi5rb3psb3dza2lAb3NzLnF1YWxjb21tLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBH
ZW9yZ2UgTW91c3NhbGVtIDxnZW9yZ2UubW91c3NhbGVtQG91dGxvb2suY29tPgoKQWNrZWQtYnk6
IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaXZhbm5hbi5zYWRoYXNpdmFtQG9zcy5xdWFsY29t
bS5jb20+CgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+
4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1waHkK
