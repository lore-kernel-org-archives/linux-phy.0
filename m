Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 149F2C56207
	for <linux-phy@archiver.kernel.org>; Thu,  6 Aug 2026 15:22:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nsUIxi5RT7c+3uuWkWQzW/tpnU+YwL/fmaWRExne2HI=; b=TAkbOjlTAN5GQu
	HzfYZEXGZl81vhagBVYB/m0MfEGkKNwVP9pva/oDBBSSskSRdzPdcMHtkk0G9CvKYvAGbpkzguGUm
	GXhUrbTT6oOTSwbH5oMBqD3cTUZLOoUz+M8TwE1yW7yGoY2A8Wn5LzoIpdPScpBvcKy84TuC234Z2
	TTw5agT12x+oGA0axbkFsz2paBFCukd+EtEDK2D2ldS7x0iAf2chfkJvUbTcXIcQaVjUnn/a8GebC
	JiyHJEtE5SfOleJqWWs7ElAcSIHK7T638CoxIjMt81f0YLyWaAVHwMtqndxpp7il38gFFmv9Noad3
	gSQTC79u+J9KMTpkW6wA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrzux-000000064Wv-121e;
	Thu, 06 Aug 2026 15:21:59 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrzuv-000000064Wi-1558
	for linux-phy@lists.infradead.org;
	Thu, 06 Aug 2026 15:21:57 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 5050360AB9;
	Thu,  6 Aug 2026 15:21:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B922A1F00A3A;
	Thu,  6 Aug 2026 15:21:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786029716;
	bh=xFVcyt2CgfIKKlSapBlFvtJpF1zdYY/HgJY/38MltjQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=NCIV2ZuVx9CUg1nBsZoWmwdE67iCbD+xvpEzLfv7UUdc91JPBxEEv2VG9oUKhZcYJ
	 lbT6SLUFYz3pQ1e6NTA9ZLI4TS7UkWg/VYxs6MaCEzKZrU4jE8mu9aJkvpLxrT7h7f
	 ITZPLaANhuCA0F48aDa20Wdmlrg6P3+bDHUYmeHfKKF4ahhAsQCdXxcyUKXcmV2MY9
	 iQ17rs7CgyKyyudYrJljdEtehupWzhy61QbBJo6nnl/qk5BPRcxGv1YRXaPk7iB7GP
	 9tl536gN3YS+seI3q9bLGpDana0KcwYRcCAfQXHMOa8pQGyhMgIvPzWIqOoZaP+h3L
	 nYVbQsmrv9I1w==
Date: Thu, 6 Aug 2026 17:21:42 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	Ronak Raheja <ronak.raheja@oss.qualcomm.com>, Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH v4 3/4] dt-bindings: usb: qcom,snps-dwc3: Add Hawi
 compatible
Message-ID: <2pjdicfsinfnxutcujk7trghwp732e67a62dsuxi7kzdgjllb5@hq4lwlhxygpv>
References: <20260803091441.3040830-1-mukesh.ojha@oss.qualcomm.com>
 <20260803091441.3040830-4-mukesh.ojha@oss.qualcomm.com>
 <anReh4gzTjkD4u7c@vaman>
 <notmuch-sha1-a1b83c8fdeaa6e5292b72468415a18abf11af9bd>
 <20260806121219.oydkvnfpbfjkktsj@hu-mojha-hyd.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260806121219.oydkvnfpbfjkktsj@hu-mojha-hyd.qualcomm.com>
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

T24gVGh1LCBBdWcgMDYsIDIwMjYgYXQgMDU6NDI6MTlQTSArMDUzMCwgTXVrZXNoIE9qaGEgd3Jv
dGU6Cj4gT24gVGh1LCBBdWcgMDYsIDIwMjYgYXQgMDU6MTA6MDFQTSArMDUzMCwgTXVrZXNoIE9q
aGEgd3JvdGU6Cj4gPiBPbiBUaHUsIEF1ZyAwNiwgMjAyNiBhdCAwMzo0NDozMVBNICswNTMwLCBW
aW5vZCBLb3VsIHdyb3RlOgo+ID4gPiBPbiAwMy0wOC0yNiwgMTQ6NDQsIE11a2VzaCBPamhhIHdy
b3RlOgo+ID4gPiA+IEZyb206IFJvbmFrIFJhaGVqYSA8cm9uYWsucmFoZWphQG9zcy5xdWFsY29t
bS5jb20+Cj4gPiA+ID4gCj4gPiA+ID4gRG9jdW1lbnQgdGhlIFN5bm9wc3lzIERXQzMgVVNCIGNv
bnRyb2xsZXIgZm91bmQgb24gdGhlIEhhd2kgcGxhdGZvcm0uCj4gPiA+IAo+ID4gPiBUaGlzIG9u
ZSBmYWlscyBvbiBwaHkvbmV4dCA6LSgKPiA+ID4KPiA+Cj4gCj4gMy80IGlzIG5vdCBhcHBseWlu
ZyBiZWNhdXNlIGl0IGlzIGJhc2VkIG9uIGxpbnV4LW5leHQgYW5kIHNvbWUgcGF0Y2hlcwo+IG1p
c3Npbmcgb24gcGh5L25leHQuCj4gCgpUaGlzIHBhdGNoIGhhcyB0byBnbyB0aHJvdWdoIFVTQiB0
cmVlLCBub3QgUEhZLgoKLSBNYW5pCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCu
muCupOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgt
cGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcGh5Cg==
