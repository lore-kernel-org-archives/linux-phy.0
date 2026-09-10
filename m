Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1AC82C79F9F
	for <linux-phy@archiver.kernel.org>; Thu, 10 Sep 2026 15:55:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m2bzx5cXfJOUCPKmBOJV7r9vOUDojOgvtE/a3ojRAZQ=; b=PF4r63m0fgvs6C
	vtii043Id8aaoYBwvGwa26uLmL/Ad1pGmkWp47BBoNDCUn9AtvpJoLvtl/pzX/DbycmgRaacACKB3
	+sb+tBPfkM6eCPggOxTr1/nvy3FRvQwV1DzbGrI5GaKxIXt1lacOg6tCOf6k/9qmNGxsHuoIE4ftx
	zHtembzs7w+ws6fI4lr9MSod/Yc3ejRmA3dTxqtrsHaHBoqxRvBP1BS70T4leewqqHkeWhhUmH2Vu
	P0Hvd8saTGsXJrxRA37+mziGL5UT25OwvdiQ7qHugDZ/6009S0qJ8Fa3hwXJqdh+NR347WyRkHbXa
	2zsSIxtw7YHa+YIHkrxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4h7s-0000000EsZt-19eI;
	Thu, 10 Sep 2026 15:55:48 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4h7q-0000000EsZ8-2gjj
	for linux-phy@lists.infradead.org;
	Thu, 10 Sep 2026 15:55:46 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 1684A601F1;
	Thu, 10 Sep 2026 15:55:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5E7AC1F00893;
	Thu, 10 Sep 2026 15:55:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789055745;
	bh=bKshaFwruqjQK9EWEG5Mo3nqXakrva70yXuhtDwvIa8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=d5Cn8kaW0O6xNYglXyTa93E79fJAGksLcKApVxsoZYHkchgMiaxhmCzfcfJOQF4UC
	 H+RBpHkMpApf5Jmv9w9QkchuuiRj3WFTWZHlWNk1pE5gacOGOdGxO980iUwa/rVQD/
	 gc+MxkDmrk8AuVDYIiB6guV2NMdpZG+bA5xa0XG1BG2CIpI0OU5Tg+OUiZ2JGOHHjx
	 DwqpMPC0hGR20Ifa0gLAy8B21pnUgzG8PcoL65zYqsZ5WKBSlVrE7q/tkuy71laCuS
	 jT4HdEOI/gfTpPB1KX8i6SalvLkIqwm3rUmVTAaiOZ2u9GudELkA3pHO2YE4Euw4af
	 zxbZjk42/dv6g==
Date: Thu, 10 Sep 2026 17:55:37 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v7 3/5] phy: snps-eusb2: Set phy type to EUSB2
Message-ID: <thiiul7sbjzwo6i3znf4qmer466elq6j4hivjf4cuyj46rhoij@ctkodmuebrg5>
References: <20260905-eusb2-interrupt-v7-v7-0-820cf5377a70@oss.qualcomm.com>
 <20260905-eusb2-interrupt-v7-v7-3-820cf5377a70@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260905-eusb2-interrupt-v7-v7-3-820cf5377a70@oss.qualcomm.com>
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

T24gU2F0LCBTZXAgMDUsIDIwMjYgYXQgMDg6NTk6MDdQTSArMDUzMCwgS3Jpc2huYSBLdXJhcGF0
aSB3cm90ZToKPiBVU0IgY29udHJvbGxlcnMgbGlrZSBEV0MzIGFyZSBhZ25vc3RpYyBvZiB0aGUg
a2luZCBvZiBwaHkgKFVTQjIvZVVTQjIpCj4gY29ubmVjdGVkIHRvIGl0LiBTZXQgdGhlIHBoeSB0
eXBlIHRvIEVVU0IyIHRvIGxldCB0aGUgY29udHJvbGxlciBrbm93Cj4gdGhlIHBoeSB0eXBlIHdo
ZW4gcXVlcmllZCBkdXJpbmcgaXRzIHByb2JlLgo+IAo+IFJldmlld2VkLWJ5OiBUaGluaCBOZ3V5
ZW4gPFRoaW5oLk5ndXllbkBzeW5vcHN5cy5jb20+Cj4gU2lnbmVkLW9mZi1ieTogS3Jpc2huYSBL
dXJhcGF0aSA8a3Jpc2huYS5rdXJhcGF0aUBvc3MucXVhbGNvbW0uY29tPgoKUmV2aWV3ZWQtYnk6
IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaXZhbm5hbi5zYWRoYXNpdmFtQG9zcy5xdWFsY29t
bS5jb20+CgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+
4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1waHkK
