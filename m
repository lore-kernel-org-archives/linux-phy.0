Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B260DC79F89
	for <linux-phy@archiver.kernel.org>; Mon,  7 Sep 2026 12:19:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sob/nZMp9fZ3MgUmy7l9jS72XcuZxSjKUYhOISihz5w=; b=NCSEAA9nqkiZ3o
	VufA5eJUlPEgthWw6xtrGNaPawPDCLu+9PtT1i+Zw/1S3XKTL47Q6rgYhiepks7sb3HGy+gzmk3bz
	nbnbbtZ6FuRxMmYQlb7dc1S+til1UGEPcSOUyLpQoHva/e548OwCXUrFTZYeAl/S6kTTlJiPpUGTT
	mundBzPrHt79kSxAAXlKBkh4GkIs0lSyBG8Gsoge8m83lrpmg2UPQydExhT6YqZl/BI38lVW0TnDl
	DBsqxc2JDL9jYlRhV2CUcpg79Z46OkFlfgakWCX7gRdPV0mcUUhAVNu4WaGZ9+C4j5OTr1a3Wp9SD
	W2QCPr3EDiDOB0Nh/pZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3YJS-00000006mTD-1jsu;
	Mon, 07 Sep 2026 12:19:02 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3YJQ-00000006mT6-1oUl
	for linux-phy@lists.infradead.org;
	Mon, 07 Sep 2026 12:19:00 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 0A6734400F;
	Mon,  7 Sep 2026 12:19:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 13C981F00A3A;
	Mon,  7 Sep 2026 12:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788783539;
	bh=UPCT7NivEF5dXHHkmiPyCbpMfbh32hjOvzeAZcafMWU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=BNUNtgk4QxbeBFAG7QguySvmoJVsPNkHrSIZJcjlT/BS3BRLjI1Uhort/hQ/+sJNg
	 UCLpv8dsqaW1uLOsbw5R/OER5ioCF8iZVkAXSHPqUxnkcHIuj7X/YlvpCtVQn1Bz5y
	 rPsnVfTvWwOOjaaW0rhX8I2XQTGhDMsbQQFOPWMHV+mUk1On5A66AewkhL+a63cF0V
	 EPO3Kk/W57XwmpE+KuysgTUEupcOJBHnJKbp6VcNzz3wiX3q9VpvIp4+cMqlmGypwO
	 M7yr10Tp2GK7q2rl0McATXrWEFIN2ZtJyPaeS+DPPGQzW400mOb26cEFey2E/T125h
	 sDBa30uWEK2UQ==
Date: Mon, 7 Sep 2026 14:18:49 +0200
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
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v3 05/12] phy: qualcomm: qcom-uniphy-pcie-usb3-28lp: Use
 bulk reset_control API
Message-ID: <wsejx7luoa3llvso6h3q36ewp2xnikcjhqxjnwfj24dtzgvffz@dt7kloucr7ro>
References: <20260825-ipq5018-usb3-v3-0-39be0955a6aa@outlook.com>
 <20260825-ipq5018-usb3-v3-5-39be0955a6aa@outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260825-ipq5018-usb3-v3-5-39be0955a6aa@outlook.com>
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

T24gVHVlLCBBdWcgMjUsIDIwMjYgYXQgMDQ6Mzc6MjJQTSArMDQwMCwgR2VvcmdlIE1vdXNzYWxl
bSB2aWEgQjQgUmVsYXkgd3JvdGU6Cj4gRnJvbTogR2VvcmdlIE1vdXNzYWxlbSA8Z2VvcmdlLm1v
dXNzYWxlbUBvdXRsb29rLmNvbT4KPiAKPiBTd2l0Y2ggdG8gdXNpbmcgYnVsayByZXNldF9jb250
cm9sIGZ1bmN0aW9ucyB0byBwcmVwYXJlIHRoZSBkcml2ZXIgZm9yCj4gbWFuYWdpbmcgbXVsdGlw
bGUgcmVzZXRzLCBhY3F1aXJpbmcgcmVzZXQgY29udHJvbHMgYnkgbmFtZSwgYW5kCj4gdW5pZm9y
bWx5IHN0b3JpbmcgcmVzZXRzIGluIHRoZSBwcml2YXRlIGRhdGEgc3RydWN0dXJlIHRvIGVuYWJs
ZSBzdXBwb3J0Cj4gZm9yIGZ1dHVyZSBjb21ibyBQSFkgZnVuY3Rpb25hbGl0eSByZXF1aXJpbmcg
bXVsdGlwbGUgcmVzZXRzLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEdlb3JnZSBNb3Vzc2FsZW0gPGdl
b3JnZS5tb3Vzc2FsZW1Ab3V0bG9vay5jb20+CgpSZXZpZXdlZC1ieTogTWFuaXZhbm5hbiBTYWRo
YXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2YW1Ab3NzLnF1YWxjb21tLmNvbT4KCi0gTWFuaQoK
LS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40K
Ci0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
