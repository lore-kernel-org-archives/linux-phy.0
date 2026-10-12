Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5F5ACA9ED1
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 08:56:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sJBEvujQSALFLEBuoLalo/i0fR6JTntMRIXHfnwFyOI=; b=oB5iifWB6qYnfZ
	gYHWOEcSi+qEWoAFzANy0xPboEgOGJQs3m1YGObob+aryTDlTodVFHttMYiw0cAwPo8s5SbGsaA91
	r8cmKPOksH6DOOCLzI71whBmHH/i4p/f2QReLeakxrkJ4qfknvuFCsJCtN4oRQrpABDos48cOI+uO
	2PirOUF4TPi8aXr2VU0cJ/xFWiXAoE95gKFcQqsY1BWvR6k87IRPs5gmCijo1PzHS55RUQgfmKv3L
	aDa2YLIw+i+obCNOAGRAj+DgW1DAopu2MZmjREVjiVv4kNNwOll6E8BWLhaJjjPnpKNgPejOhOZIO
	b//rd1Lr0ax0FfEW8hcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGBpo-0000000A0EF-0xfN;
	Mon, 12 Oct 2026 08:56:40 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGBpn-0000000A0E0-0IiQ
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 08:56:39 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id CF1B740469;
	Mon, 12 Oct 2026 08:56:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 87E9A1F0089C;
	Mon, 12 Oct 2026 08:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791795398;
	bh=yXkpRTnck3boGQh7HjuUKZsKT5Kfh+CkB6JYtA7jYIQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=HJNqtxYoQ2J60dQyKxU3PJnjlZsC3eX9iH7dgEOgteno/0nn2ZjVi+cmYRWiLfQeP
	 pBxeHRLrDRLDA3rFaRCWWVsFMdB2wUWw/MU3SQ/wF06uQk+pcCBc/ebMISaAYWkf7J
	 s9rhNR0nBGFtWShPtD/wwdDSCUz/+RK7FTzb5+XZlDQCazqYOKNdcY9+Xip2bJKOKd
	 2h5LeKAVFUMw4pOOknPKkY6urwyO+2y9Osrvv8bIYJAMk45pHK8ROsiFesmPdOsN2K
	 xi2qBi9pIJisk6j42Q6gkih6/G7KBzzSXkmtJi+zzBEWtn9KvRSmTmDORZh3R1rRb5
	 zO7fOtNF7JyXg==
Date: Mon, 12 Oct 2026 14:26:29 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, Iskren Chernev <me@iskren.info>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Bjorn Andersson <andersson@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v2 3/5] phy: qcom-qusb2: Remove _SHIFT defines
Message-ID: <asygtAS5-iID3tob@debian>
References: <20260903-topic-8996_61x5_qusb2phy-v2-0-4c3f980a4560@oss.qualcomm.com>
 <20260903-topic-8996_61x5_qusb2phy-v2-3-4c3f980a4560@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260903-topic-8996_61x5_qusb2phy-v2-3-4c3f980a4560@oss.qualcomm.com>
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

T24gVGh1LCBTZXAgMDMsIDIwMjYgYXQgMDQ6MjU6MzBQTSArMDIwMCwgS29ucmFkIER5YmNpbyB3
cm90ZToKPiBGcm9tOiBLb25yYWQgRHliY2lvIDxrb25yYWQuZHliY2lvQG9zcy5xdWFsY29tbS5j
b20+Cj4gCj4gVGhlc2UgYXJlIHVubmVjZXNzYXJ5IGFzIHRoZXkgbWF5IGJlIGluZmVycmVkIGZy
b20gdGhlIG1hc2suIERyb3AgdGhlbS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBLb25yYWQgRHliY2lv
IDxrb25yYWQuZHliY2lvQG9zcy5xdWFsY29tbS5jb20+CgpSZXZpZXdlZC1ieTogTWFuaXZhbm5h
biBTYWRoYXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2YW1Ab3NzLnF1YWxjb21tLmNvbT4KCi0g
TWFuaQoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXg
rq7gr40KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXBoeQo=
