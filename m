Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E4F6C55167
	for <linux-phy@archiver.kernel.org>; Fri, 31 Jul 2026 05:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uZFhL/3xzlIoipGljzQeGhc8okD8vLaT64T6sWAeuSA=; b=HnvNHO5Nvu4HDA
	aYuqaK37GY3aWHKOrJBQWhGc1w4OZffB4g6XtY2Dp8zlyKzox921kohUa5+sCWf8n9eq4rkCf1V/M
	mFlmxKHV4zuK8MXcAXCrFmkFLOi7VbwBTzvwfDZIxCcpAaFqWDgS6odF/1tgs/fRBBIeiid4MOjGV
	3mHJVAGR9/gNf2/P3u6xF3v0YmYsy6Jh62+TW3icVu2tdSsgO7yQVIfsrWyQ/AR070ZP4O1DAa50s
	U/ZTkOcfGDYvjXTIg1ge3Wrqx1kgcgK06F0EZroXChf+cQvnpQ18nn7EPzCvEibvVYyyWbQURYAMI
	kqAoujH8HmHf2HPADfhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpfns-0000000BnSK-3SSe;
	Fri, 31 Jul 2026 05:29:05 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpfnq-0000000BnSD-49h0
	for linux-phy@lists.infradead.org;
	Fri, 31 Jul 2026 05:29:03 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 7F42643D68;
	Fri, 31 Jul 2026 05:29:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 40D3F1F000E9;
	Fri, 31 Jul 2026 05:28:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785475742;
	bh=hpfz5C+TfvB14E8wVqu53t7TTO0qpqlRXsVWXcjuRrQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=bg0I1F2/j6p8OyG8tV1HYGdGQPmp6mSE9FiRqbUb1FzWPnxx/JM5v1izkNQoQtWC0
	 tKVrclKL9zXj0OJz+tCcBCZpejkqAe4eUp4rqyf3fjtOJ0N7Kqhy4CQRPba68ohtQS
	 AzSIFuYnrUCK/+8qVJKLQIE33jAgGX7nIHKmt8X6ydeJhjfZhA87YY5c075HqMXfdO
	 fcRicpb3vosTBt69UmRUqx5kisusV2WfYJQ8kyL2I5zYFT9l05g84lKk09t7XebdBu
	 S6buzQ/m7eZLLtF3f3ctkq0BJPFcZu4hM6yIuKxyAsPTRDRaBJGGkx4LPWlqoB+WNv
	 CnFgg0/B65EOg==
Date: Fri, 31 Jul 2026 07:28:54 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Qiang Yu <qiang.yu@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v8 5/6] arm64: dts: qcom: mahua: Replace pcie3a/pcie3_phy
 with dedicated pcie3b_phy
Message-ID: <egwrkt77dvm33qlcukvhefv7dfwdmyte6kzctlimk5ywodbbik@kvfimxcpm3nf>
References: <20260730-glymur_linkmode_0731-v8-0-a455265ad8bf@oss.qualcomm.com>
 <20260730-glymur_linkmode_0731-v8-5-a455265ad8bf@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260730-glymur_linkmode_0731-v8-5-a455265ad8bf@oss.qualcomm.com>
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

T24gVGh1LCBKdWwgMzAsIDIwMjYgYXQgMTA6MTM6NTRQTSAtMDcwMCwgUWlhbmcgWXUgd3JvdGU6
Cj4gVW5saWtlIEdseW11ciwgTWFodWEgb25seSBoYXMgUENJZTNiIHdpcmVkIHVwOyB0aGVyZSBp
cyBubyBQQ0llM2EKPiBjb250cm9sbGVyIGFuZCBubyBzaGFyZWQgR2VuNXg4IFBIWSBibG9jay4g
RGVsZXRlIHRoZSBpbmhlcml0ZWQgcGNpZTNhCj4gYW5kIHBjaWUzX3BoeSBub2RlcywgYW5kIGFk
ZCBhIGRlZGljYXRlZCBwY2llM2JfcGh5IHVzaW5nIHRoZSBleGlzdGluZwo+IHFjb20sZ2x5bXVy
LXFtcC1nZW41eDQtcGNpZS1waHkgY29tcGF0aWJsZS4KPiAKPiBQb2ludCBwY2llM2JfcG9ydDAn
cyBwaHlzIGFuZCB0aGUgR0NDIHBpcGUgY2xvY2sgcGFyZW50IGFycmF5IGF0Cj4gJnBjaWUzYl9w
aHkgaW5zdGVhZCBvZiB0aGUgZGVsZXRlZCAmcGNpZTNfcGh5Lgo+IAo+IFJldmlld2VkLWJ5OiBL
b25yYWQgRHliY2lvIDxrb25yYWQuZHliY2lvQG9zcy5xdWFsY29tbS5jb20+Cj4gU2lnbmVkLW9m
Zi1ieTogUWlhbmcgWXUgPHFpYW5nLnl1QG9zcy5xdWFsY29tbS5jb20+CgpSZXZpZXdlZC1ieTog
TWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2YW1Ab3NzLnF1YWxjb21t
LmNvbT4KCi0gTWFuaQoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7g
rprgrr/grrXgrq7gr40KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXBoeQo=
