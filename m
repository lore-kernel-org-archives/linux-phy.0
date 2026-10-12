Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96F0ACA9ED0
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 08:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B4tofAxv6cSp86FBeIdczZwv48Y3P6Dz560pAmTykts=; b=ccLRAXBXo5hc0N
	91eKUwZzIkChXjkdwG7io41a+gkXzY38ymJJ0L4lh6Rnv3jr9B+MEJkvqPQ6ei2Tl2WVftRYeE67w
	a+vr5zJZtXlLF2y+69kggHfJjnBwt8U2BIaXsn9CReuNvxp3V4B87itbnLi2m1/ub7uFrUoiKsm2H
	U4+8drxPx/lcsrl/Aqp0fuIgoutNuhJm/3LIRlDSw5RLmeiA/Tc59+P9eYWTFfEoyyg+4aAHYghfu
	Hs9SNQG4g1PmOXQYY2aIBhRO8cKYuFTwc13+IIIqpitQkEgadF8U+QafG5kwROuQavVrU3NfjwOjN
	/3ciznmxrDw/8DUyvDyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGBX8-00000009xH0-1DiZ;
	Mon, 12 Oct 2026 08:37:22 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGBX7-00000009xGM-0oyT
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 08:37:21 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 4267060DA5;
	Mon, 12 Oct 2026 08:37:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 33D991F0089B;
	Mon, 12 Oct 2026 08:37:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791794240;
	bh=KvZy95ZhNcF4IVte9MXNd6mPq0WFSjrJGiB+RwhluU8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=F2EZZnBG8mLG+z4vPjOJykSoc8ClM7D1FcoF8RxhMHrvDBrOISNhHs8XaT91I2Iyc
	 tC+WEp1Qf2RVrn+M+pH6nXegcD0Q6IUh9pWqmBPUtvYjvZyOeSS8VIpFmXZVbkVOAI
	 qDSLIMO9OXkZujpxJvDvZ4DF4Vq7cKsGbVRv3N6pMiF3U0V7OWQsMULC1EDn4nQ1Mo
	 OYVJM+LDfPSdV4AqH0Ah3xUuOi7uENkbCHAAzAEDpSh0O2F6MDt5VCjp5d2fV2e+Ne
	 zXThZFLTMQM1SH5SSZbMgfqqEbYwxT9ZNTUjgf1m6jyauqzf7hQbmAdOTV36qteG8f
	 ugg5V9fVoM+LA==
Date: Mon, 12 Oct 2026 14:07:06 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bartosz Golaszewski <brgl@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Linus Walleij <linusw@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Xu Yang <xu.yang_2@nxp.com>, Peng Fan <peng.fan@nxp.com>, 
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Peter Chen <peter.chen@kernel.org>, Pavankumar Kondeti <quic_pkondeti@quicinc.com>, 
	Stephen Boyd <stephen.boyd@linaro.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Krzysztof Kozlowski <krzk@kernel.org>, linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	linux-phy@lists.infradead.org, Greg Kroah-Hartman <gregkh@suse.de>, 
	Peter Chen <peter.chen@nxp.com>
Subject: Re: [PATCH 04/10] phy: qcom-usb-hsic: engage HSIC mode from
 phy_calibrate()
Message-ID: <asyb2KzFNAQJ3PVm@debian>
References: <20260810-msm8974-usb-hsic-v1-0-e5f93ea76ffa@oss.qualcomm.com>
 <20260810-msm8974-usb-hsic-v1-4-e5f93ea76ffa@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260810-msm8974-usb-hsic-v1-4-e5f93ea76ffa@oss.qualcomm.com>
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

T24gTW9uLCBBdWcgMTAsIDIwMjYgYXQgMDY6NDI6MDhQTSArMDMwMCwgRG1pdHJ5IEJhcnlzaGtv
diB3cm90ZToKPiBUaGUgUEhZIHBvd2VyLW9uIHNlcXVlbmNlIGVuZHMgYnkgZW5nYWdpbmcgSFNJ
QyBtb2RlLiBXaXRoIGNoaXBpZGVhLAo+IHBvd2VyLW9uIHJ1bnMgYmVmb3JlIHRoZSBob3N0IGlz
IHN0YXJ0ZWQsIGFuZCB0aGUgSFNJQyBjb25uZWN0IG9mIGFuCj4gYWxyZWFkeS1wcmVzZW50IGRl
dmljZSBpcyBsYXRjaGVkIGF0IHRoZSBtb21lbnQgSFNJQyBtb2RlIGlzIGVuZ2FnZWQ6Cj4gcGVy
Zm9ybWVkIGJlZm9yZSB0aGUgaG9zdCBydW5zIChhbmQgYmVmb3JlIGFuIG9uYm9hcmQgaHViIGlz
IHRha2VuIG91dAo+IG9mIHJlc2V0KSwgdGhlIGNvbm5lY3QgaXMgbG9zdCBhbmQgdGhlIGRldmlj
ZSBpcyBuZXZlciBzZWVuLiBUaGlzIGlzCj4gd2h5IHRoZSBBUFE4MDc0IGRyYWdvbmJvYXJkIFVT
QjQ2MDQgaHViIG5ldmVyIGVudW1lcmF0ZWQgb24gbWFpbmxpbmUKPiB3aGlsZSB0aGUgdmVuZG9y
IGtlcm5lbCAtIHdoaWNoIHBlcmZvcm1zIHRoZSB3aG9sZSBQSFkgc2VxdWVuY2UgYWZ0ZXIKPiB1
c2JfYWRkX2hjZCgpIC0gc2VlcyBpdCBvbiBldmVyeSBib290Lgo+IAo+IEtlZXAgdGhlIGNhbGli
cmF0aW9uIHNldHVwIGFuZCB0aGUgcGFkIG11eCBpbiBwb3dlci1vbiwgYW5kIG1vdmUgdGhlCj4g
SFNJQyBtb2RlIGVuYWJsZSAoYW5kIHRoZSBhdXRvLXJlc3VtZSBkaXNhYmxlKSBpbnRvIHRoZSBj
YWxpYnJhdGUgb3AsCj4gd2hpY2ggdGhlIGNoaXBpZGVhIGhvc3Qgbm93IGludm9rZXMgYWZ0ZXIg
dGhlIGhvc3QgaXMgdXAgYW5kIHRoZQo+IG9uYm9hcmQgZGV2aWNlIHJlc2V0IGhhcyBiZWVuIHJl
bGVhc2VkLgo+IAo+IEFzc2lzdGVkLWJ5OiBDbGF1ZGU6Y2xhdWRlLWZhYmxlLTUKPiBTaWduZWQt
b2ZmLWJ5OiBEbWl0cnkgQmFyeXNoa292IDxkbWl0cnkuYmFyeXNoa292QG9zcy5xdWFsY29tbS5j
b20+CgpSZXZpZXdlZC1ieTogTWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pdmFubmFuLnNhZGhh
c2l2YW1Ab3NzLnF1YWxjb21tLmNvbT4KCi0gTWFuaQoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCu
o+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIApsaW51eC1waHkgbWFpbGluZyBs
aXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
