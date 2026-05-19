Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60FA4CD4F54
	for <linux-phy@archiver.kernel.org>; Tue, 19 May 2026 06:05:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n5fR7LTDy3ZRg9JFY9bKFKKprmsanv7eJ2C7iFMfpPI=; b=gkafd8KFtlfGTJ
	hgz70NaDqHPQc6Ay49mFJIyBAfhHg4WlElg46AdfWIAstEsPLeMU7SQyMtvcleizym5EVWp0/J32I
	cAgkL3ChQDAjlSn+OOmtAsh9SGceFN4tK0YrJJJg+IQPhV5vMBuqu7RH4WcwZt9gx1yXsJPBY7dyg
	jkWpAv7rfW7+Lr0GH/Beg5T3eiqYR0Fg3QZF1vW/EEOftnzjI/Y2+myetNyEaNQ+cT9nHH+U9l4we
	7AyrXjfNl4sawRxnQi5oJxaz81nmRJ5CCwf4csaD1zvvFbNvhZM3obeatMJLEavndXAEdJl5Pg57W
	4DkcE6Gvxl2RPVC20zRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPDZt-00000000GzQ-014j;
	Tue, 19 May 2026 06:05:17 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPDZq-00000000Gyq-2a7M
	for linux-phy@lists.infradead.org;
	Tue, 19 May 2026 06:05:15 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 17C6A43D9A;
	Tue, 19 May 2026 06:05:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6F33BC2BCB3;
	Tue, 19 May 2026 06:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779170714;
	bh=lczLOxMIWKK6GHmklTus7Q/fRlQn4JanaG5BYdRUsMU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XNbOhucQ/V+Bq0jrFmZCOIED4FwQPSs2O+8YeMm3ybxraUO1p0FY65YCv4j/4Q9Qm
	 tig9RyDKDPcN4GXQyzpesz1c7b2PX4gqY/k1Fvqt53397QJoVL6IFRWGYe6nLjSE4U
	 WE1vu7fRRZfUKOSSw6Nw1I+cIH2pkpNeDgChi8AKno4pasQr3i86unib0js31YNw47
	 OL62ityi6Zjly4WKJ9cju2NBVMBdL5uYnFRNUPPPJ0qR6Knvgr3hCFm/Zt02nftGhD
	 KGGyEFpmjcm1riESLa6Eg7vxevvfQrQW1MraafGit0FPsg/8i4v5QoQoHxpEKkPjPs
	 3EttKjy2i12Jg==
Date: Tue, 19 May 2026 11:35:04 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: palash.kambar@oss.qualcomm.com
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, alim.akhtar@samsung.com, 
	avri.altman@wdc.com, bvanassche@acm.org, andersson@kernel.org, 
	dmitry.baryshkov@oss.qualcomm.com, abel.vesa@oss.qualcomm.com, luca.weiss@fairphone.com, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org
Subject: Re: [PATCH V1 1/3] dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: Add
 Hawi UFS PHY compatible
Message-ID: <uut3u6djc2dc23aznjxdqvkehpx3ooa7eknzjzubnlmylwvxxb@aow3lpjurhnt>
References: <20260518165346.1732548-1-palash.kambar@oss.qualcomm.com>
 <20260518165346.1732548-2-palash.kambar@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260518165346.1732548-2-palash.kambar@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_230514_675073_22CF25A5 
X-CRM114-Status: GOOD (  11.91  )
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

T24gTW9uLCBNYXkgMTgsIDIwMjYgYXQgMTA6MjM6NDRQTSArMDUzMCwgcGFsYXNoLmthbWJhckBv
c3MucXVhbGNvbW0uY29tIHdyb3RlOgo+IEZyb206IFBhbGFzaCBLYW1iYXIgPHBhbGFzaC5rYW1i
YXJAb3NzLnF1YWxjb21tLmNvbT4KPiAKPiBEb2N1bWVudCBRTVAgVUZTIFBIWSBjb21wYXRpYmxl
IGZvciBIYXdpIFNvQy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBQYWxhc2ggS2FtYmFyIDxwYWxhc2gu
a2FtYmFyQG9zcy5xdWFsY29tbS5jb20+Cj4gLS0tCj4gIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdz
L3BoeS9xY29tLHNjODI4MHhwLXFtcC11ZnMtcGh5LnlhbWwgICAgICAgfCAxICsKPiAgMSBmaWxl
IGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4gCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSxzYzgyODB4cC1xbXAtdWZzLXBoeS55YW1sIGIv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9xY29tLHNjODI4MHhwLXFtcC11
ZnMtcGh5LnlhbWwKPiBpbmRleCA5NjE2YzczNmI2ZDQuLjIzMjZkY2YzOGE0NiAxMDA2NDQKPiAt
LS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3Fjb20sc2M4MjgweHAt
cW1wLXVmcy1waHkueWFtbAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9waHkvcWNvbSxzYzgyODB4cC1xbXAtdWZzLXBoeS55YW1sCj4gQEAgLTM3LDYgKzM3LDcgQEAg
cHJvcGVydGllczoKPiAgICAgICAgICAgICAgICAtIHFjb20sa2FhbmFwYWxpLXFtcC11ZnMtcGh5
Cj4gICAgICAgICAgICAtIGNvbnN0OiBxY29tLHNtODc1MC1xbXAtdWZzLXBoeQo+ICAgICAgICAt
IGVudW06Cj4gKyAgICAgICAgICAtIHFjb20saGF3aS1xbXAtdWZzLXBoeQoKRG9uJ3QgeW91IG5l
ZWQgdG8gYWRkIHRoZSBIYXdpIGNvbXBhdGlibGUgdG8gdGhlIGJlbG93IGNoZWNrIGZvciBjbG9j
a3M/CgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a
4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1waHkK
