Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC9C2CA9EC5
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 12:39:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h06BeZZ+Su1c9X+u6p1Q8RXv/v3k+pszraiLiJo76kM=; b=aOHXqrRMRrNtND
	pU4DV2flfHez0PxbTuH2sP6mZqdS/yMZmRG75fM5N9mzs3TILx63EhsMMgncP20WtGqWLhblcv5yk
	2qCedTJDyZzr58+RoQligDB8ol92nvFyCsyKdBJRwhviTHmDSxsCFzXmlq8KftP0fpxsh1eszodxa
	Q7GnLGKTb+l/f4iOU8ckTJTP1s7uFhgG4++6Vg1sF5FUrp5WVOkLKJi62VQHcJMwxD1RFymyPCPU1
	JYJ8kvJZH0NPIQX3rhFAkm8PO07BQB51HrCcuNcbRXpdY1GEg809JhbU+wMgY2vvS+99zoj/4glfy
	pi8XcLjy6nmYSLrJ84qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGFJ7-0000000ATwO-1dTP;
	Mon, 12 Oct 2026 12:39:09 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGFJ5-0000000ATw8-3vLF
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 12:39:07 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 4C92143A49;
	Mon, 12 Oct 2026 12:39:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BB9981F0089B;
	Mon, 12 Oct 2026 12:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791808747;
	bh=oHdXYgNhpwHFocH4Q7mwDZMLdDet4JkEUoQhncK+l0U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=KjCjUVBCT/bxUV6yw1oDs4zzHxf5/vXn4YSME1Wst03hzSVbWR+DTQ6awZTS509Dq
	 ZWga82q18xJ1JdigiVCdA2BMugp2Wj/tK8FXTTO/5Hx/ivVmcOf/r4AbqwUQParJAK
	 hpzwub6clJ3zRw9oIXcqwXMxCD8GG7Ewv+97PfY2Ts5aPIVkOaajofG5cL/+v4TGpM
	 qqcwxmchIqtu+5PUBQ51Mf01eL2kmsbdMm7QLXXgz3JZr0GPXpmN+Nk9h0myVdz9Ki
	 zPIMQtUyp87S5NbFxDDw038C3oboImMhMmxj1/hiOAMxIG9YDbwRE2050kpnlV2i+3
	 u423amj89VzwQ==
Date: Mon, 12 Oct 2026 18:08:55 +0530
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
	Stanislaw Pal <kuncy7@gmail.com>
Subject: Re: [PATCH v4 03/13] phy: qualcomm: qcom-uniphy-pcie-usb3-28lp:
 Remove unused of_device.h header file
Message-ID: <aszUn1GclB98SCLQ@debian>
References: <20260908-ipq5018-usb3-v4-0-b789702f0695@outlook.com>
 <20260908-ipq5018-usb3-v4-3-b789702f0695@outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260908-ipq5018-usb3-v4-3-b789702f0695@outlook.com>
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

T24gVHVlLCBTZXAgMDgsIDIwMjYgYXQgMDE6NDA6NTZQTSArMDQwMCwgR2VvcmdlIE1vdXNzYWxl
bSB2aWEgQjQgUmVsYXkgd3JvdGU6Cj4gRnJvbTogR2VvcmdlIE1vdXNzYWxlbSA8Z2VvcmdlLm1v
dXNzYWxlbUBvdXRsb29rLmNvbT4KPiAKPiBEcm9wIHRoZSB1bnVzZWQgb2ZfZGV2aWNlLmggaGVh
ZGVyIGZpbGUgYXMgdGhlIG9mX2RldmljZV9nZXRfbWF0Y2hfZGF0YQo+IGRlY2xhcmF0aW9uIHdh
cyBtb3ZlZCB0byBvZi5oIGluIGJlbG93IGNvbW1pdDoKPiBjb21taXQgODIxNzRhMGE5YzVjICgi
b2Y6IE1vdmUgb2ZfZGV2aWNlX2dldF9tYXRjaF9kYXRhKCkgZGVjbGFyYXRpb24iKQo+IAo+IFRl
c3RlZC1ieTogU3RhbmlzbGF3IFBhbCA8a3VuY3k3QGdtYWlsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5
OiBHZW9yZ2UgTW91c3NhbGVtIDxnZW9yZ2UubW91c3NhbGVtQG91dGxvb2suY29tPgoKUmV2aWV3
ZWQtYnk6IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaXZhbm5hbi5zYWRoYXNpdmFtQG9zcy5x
dWFsY29tbS5jb20+CgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a
4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1w
aHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1waHkK
