Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7863FCA9EC5
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 12:37:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xW5caRZRdBcy9C7lAsgly/QHjvkWOnUQXVZ9iZsEvms=; b=GzSXLBQFDEABcN
	IcjoW8HrBRgoF5LOoinAEQ/DDsGdezjZsvEswyTSisB6SHdRcs2EvA7sFzIxnEjmj17gn4XWafgLu
	PTODAezY84BpWuqKNg/c27mnpivFXnYHuOe3Jl0+YlGq5EojijY5aQto87gUT68h5Zek6Nkp9wnDQ
	WgdpYuLqhxuHwmQWlPamAU6HrE1uey8VcQZ283CDYTAShRNAyt9kwXCPrAWxNEDEpzT5BTTZ2N0aH
	D4QaK3F2D3nUcImMeiXxbg3NtoY926XXg0fKwzCF7pHsEWWR5aesGm9HOzQh4LEz5wnUg1GVckYHp
	U9OFJUEbsTJaNxbKWQCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGFHn-0000000ATkC-0dyf;
	Mon, 12 Oct 2026 12:37:47 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGFHk-0000000ATix-2e3u
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 12:37:44 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id B263760D7C;
	Mon, 12 Oct 2026 12:37:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DC0591F0089B;
	Mon, 12 Oct 2026 12:37:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791808663;
	bh=p66xA6HMJ+HyXp1W0C0rgTV6OarYb4WpLpc6MP7K344=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=AKNTjxZM/O3cmclTrGJQXraZpzoaHpSr9sNvM7l4WOJBNbIh8CoPUkP1EMwJ5von7
	 bfeCq7WgGGrD7VxtkZG/Y6DNtgtWCjxwDMG2r3trWZaYPfhUTeZKScVe0y4NxUW1L8
	 S9fZ1BDLlTdienpPXmtvkevEb/ReBw5jqqS5kC2u6ROjlmGhloKw4Mgaaf266PzOVz
	 7B4sZerAplWUSeuxutGAdvgKH1qJgUcd2lU8wincY5Dq8FzTCh32gCEPisTbf8YQ5J
	 ZDXJQc1/p0mr4IZPdYQnJN3QqWYCi+dobg0UDYPkCp58zWMgTqo68KWWooePwGa9fR
	 Hjb6LF5HOH/pQ==
Date: Mon, 12 Oct 2026 18:07:31 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: george.moussalem@outlook.com
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Praveenkumar I <praveenkumar.i@oss.qualcomm.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>, 
	Nitheesh Sekar <quic_nsekar@quicinc.com>, Wesley Cheng <quic_wcheng@quicinc.com>, 
	Varadarajan Narayanan <quic_varada@quicinc.com>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, Stanislaw Pal <kuncy7@gmail.com>
Subject: Re: [PATCH v4 02/13] phy: qualcomm: qcom-uniphy-pcie-28lp: Convert
 to PCIe/USB3 combo PHY driver
Message-ID: <aszUGe85aahu0vW9@debian>
References: <20260908-ipq5018-usb3-v4-0-b789702f0695@outlook.com>
 <20260908-ipq5018-usb3-v4-2-b789702f0695@outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260908-ipq5018-usb3-v4-2-b789702f0695@outlook.com>
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

T24gVHVlLCBTZXAgMDgsIDIwMjYgYXQgMDE6NDA6NTVQTSArMDQwMCwgR2VvcmdlIE1vdXNzYWxl
bSB2aWEgQjQgUmVsYXkgd3JvdGU6Cj4gRnJvbTogR2VvcmdlIE1vdXNzYWxlbSA8Z2VvcmdlLm1v
dXNzYWxlbUBvdXRsb29rLmNvbT4KPiAKPiBUaGlzIFBIWSBmb3VuZCBpbiBJUFE1MzMyIGFuZCBJ
UFE1MDE4IFNvQ3MgaXMgYWN0dWFsbHkgYSBtdWx0aS1wdXJwb3NlCj4gUENJZS9VU0IzIGNvbWJv
IFBIWS4gVGhlIGRyaXZlciB3YXMgaW5pdGlhbGx5IGNyZWF0ZWQgZm9yIFBDSWUgUEhZCj4gc3Vw
cG9ydCBvbmx5LiBBcyBzdWNoLCByZW5hbWUgdGhlIGRyaXZlciBhbmQgZ2VuZXJhbGl6ZSBmdW5j
dGlvbiBhbmQKPiBzdHJ1Y3QgbmFtZXMgdG8gcmVmbGVjdCB0aGF0IGl0IGlzIGEgUENJZSBhbmQg
VVNCMyBjb21ibyBQSFkgZHJpdmVyIHNvCj4gdGhhdCBVU0IzIHN1cHBvcnQgY2FuIGJlIGFkZGVk
IGluIHN1YnNlcXVlbnQgcGF0Y2hlcy4KPiAKPiBSZXZpZXdlZC1ieTogS29ucmFkIER5YmNpbyA8
a29ucmFkLmR5YmNpb0Bvc3MucXVhbGNvbW0uY29tPgo+IFRlc3RlZC1ieTogU3RhbmlzbGF3IFBh
bCA8a3VuY3k3QGdtYWlsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBHZW9yZ2UgTW91c3NhbGVtIDxn
ZW9yZ2UubW91c3NhbGVtQG91dGxvb2suY29tPgoKUmV2aWV3ZWQtYnk6IE1hbml2YW5uYW4gU2Fk
aGFzaXZhbSA8bWFuaXZhbm5hbi5zYWRoYXNpdmFtQG9zcy5xdWFsY29tbS5jb20+CgotIE1hbmkK
Ci0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+N
CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
