Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C626CA9ED2
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 08:22:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=paWB+xackb4oakZJe0G4BDCXxPTF2PNrBZphciHnrb0=; b=mVxIp0XBQgy+Yj
	+LlDpGYcxIv1/+8gW2tkyU3srFkFzIrep2JyD2PjHBwOrMsqtO2QJBmnrR4SOHCNoLnI01dzcJQKW
	l9WPtsst0yf6/OETGTjLS/Dn7mKthIn7X3mL51nEmpw1kcvd+ZHQs3c9d0gxp8B/pBtNei+CJTmG+
	VM2FMGiUCFNQX7TWZn6ZRFhD8aw4eKESpMb85auBlcAkX3ww/GGuBKHu/YKMRo11efin6jCUdCNxg
	ApWOi3qwtzPUBGz8iiPMo7AJt0IXUk+xE9FDB+9OJ2p4A+0JSwbWpZFN3lwAbwR17WAoOP93IE1YW
	m88y/Mbec2lykdFM4OWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGBIt-00000009vRI-1M6M;
	Mon, 12 Oct 2026 08:22:39 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGBIs-00000009vQx-1YUj
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 08:22:38 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 8BDBD60DAC;
	Mon, 12 Oct 2026 08:22:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 45A221F0089B;
	Mon, 12 Oct 2026 08:22:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791793357;
	bh=vunSHVVpIXlUPA0r1OVxx9a4QP94XTJFw2lWyEhg7I8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=WLWpAxOmlbGixZkqHyeCcVaN+IMjaXmaX/HMvqbQMNyMmH/2+tcTzsZ9yxjqUpbaL
	 psvZvsVdsh8RxEBhskQODt83Plvmm1iM3/fKrn8x08lJs1t05hZ2ZIl9dbiE6eROGF
	 /uz/wOXY/GZ5RLDSZ2ziXdC0UPZFulspUgODFvsSQArTGYbCVwW4y4QjZ9FE4AW3Y/
	 55bCHm/2aeQXAhyz/YchjYJ2cWuAU1fbgVjAkJzF4Xg+Y4kifU5RT3+DbAqtU+pKjT
	 ROZ3FfP8OgHmZIxgujZ/4e1f6rra+z0jAPnflFYBhwhBCz723demqnF1RscXcuYqqc
	 q/+cLnfnx/lWQ==
Date: Mon, 12 Oct 2026 13:52:26 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Christian Marangi <ansuelsmth@gmail.com>, Andy Gross <agross@codeaurora.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH 08/10] phy: qcom-ipq806x-usb: support the MSM8974 SS PHY
 parameters
Message-ID: <asyYiFWP2n7JjBc6@debian>
References: <20260810-msm8974-usb3-v1-0-1a47e1185524@oss.qualcomm.com>
 <20260810-msm8974-usb3-v1-8-1a47e1185524@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260810-msm8974-usb3-v1-8-1a47e1185524@oss.qualcomm.com>
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

T24gTW9uLCBBdWcgMTAsIDIwMjYgYXQgMDI6NDI6MzhQTSArMDMwMCwgRG1pdHJ5IEJhcnlzaGtv
diB3cm90ZToKPiBGb3IgdGhlIE1TTTg5NzQgU1MgUEhZIGluc3RhbmNlIHRoZSB2ZW5kb3Iga2Vy
bmVscyBwcm9ncmFtIGFuYWxvZwo+IHBhcmFtZXRlcnMgZGlmZmVyZW50IGZyb20gdGhvc2UgdXNl
ZCBmb3IgSVBRODA2eC4gIFdpdGggdGhlIElQUTgwNngKPiB2YWx1ZXMgdGhlIG1hc2tlZCB3cml0
ZS1yZWFkYmFjayBvZiBQSFlfUEFSQU1fQ1RSTDEgZmFpbHMgYW5kIHRoZSBsYW5lCj4gcnVucyB3
aXRoIHdyb25nIGxhdW5jaCBhbXBsaXR1ZGVzLgo+IAo+IEFkZCBwbGF0Zm9ybSBkYXRhIGZvciB0
aGUgTVNNODk3NCBjb21wYXRpYmxlLgo+IAo+IEFzc2lzdGVkLWJ5OiBDbGF1ZGU6Y2xhdWRlLWZh
YmxlLTUKPiBTaWduZWQtb2ZmLWJ5OiBEbWl0cnkgQmFyeXNoa292IDxkbWl0cnkuYmFyeXNoa292
QG9zcy5xdWFsY29tbS5jb20+CgpSZXZpZXdlZC1ieTogTWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxt
YW5pdmFubmFuLnNhZGhhc2l2YW1Ab3NzLnF1YWxjb21tLmNvbT4KCi0gTWFuaQoKLS0gCuCuruCu
o+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIApsaW51
eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
