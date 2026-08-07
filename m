Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5830AC2A09B
	for <linux-phy@archiver.kernel.org>; Fri,  7 Aug 2026 12:49:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kng23RNQMfEwKzFUEEUnfBJlmmYIhG4KlanXinofV2g=; b=nvnHvVbzj17efV
	jqM4PK94s4A8YCAu1LYDUR0kKZu3RWfDlfycRJE8clf4eNdC7uGQOzuQu0qm+B32HdenPmBIHWDCb
	MxMzoX32pulh0kj9ubV8vxoPUIDWmoIINEv7lUFPIpcuc5ioDRZFG35WLTTeDiypGRUK0dk0mu5Yj
	/XbrNIEVzelmA4OCNot/PrvmKOO94GL4PhD6Yq4vxqjpuur+XifllN83/RikpFkWuRsyS/nQKxd0f
	TXhpySfQwH51/zga6kdg2uNErTIfXYq0KQBlyPmI/GPjz0htZ3Louk34lJhV/BRzTtc9DYAb8quZa
	AA+/ncrOy3io1eyOUOgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsK12-000000082IV-06P0;
	Fri, 07 Aug 2026 12:49:36 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsK10-000000082IN-3xmU
	for linux-phy@lists.infradead.org;
	Fri, 07 Aug 2026 12:49:34 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 6214B40A7B;
	Fri,  7 Aug 2026 12:49:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4CF0C1F000E9;
	Fri,  7 Aug 2026 12:49:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786106974;
	bh=O9h+F9cYLnm4e5mGGpZSCeYecPFgwWXW+nLBHJ2epqA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=OOUKd6gttIW0r2cAVG5JocFqGHGo+0bKDAfJgWMkKIBhraWLsPT2bHSi3laQ33lNT
	 Hta8rEcTF8VCsWxqoYRBHARYUSdI/PBT/s90DzmAOo70r8ZC08swkzlQM5yWLEcqnN
	 4vYZu2DS9uWhbKx3OwtnCzncdHWLTnINpbEl5QKh7UdwX3DVf/Cl7llaPj3za5yCGA
	 HEGX4rfozGzn3V+ph25HX3JyhyD8p6YCzD6tdmbHTf1WU8Fc80oAFI9oxz/5mbHI5M
	 0HhVVRfGPypp7mclUq+y36JcCIvWjg5vpWK6ZjRa7ySEX3q+BEI9SEi4p1f9MpodN0
	 2gJvAvuylK+RA==
Date: Fri, 7 Aug 2026 14:49:23 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, usb4-upstream@oss.qualcomm.com, 
	Raghavendra Thoorpu <rthoorpu@qti.qualcomm.com>, Mika Westerberg <westeri@kernel.org>, 
	Sven Peter <sven@kernel.org>, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Abel Vesa <abel.vesa@oss.qualcomm.com>
Subject: Re: [PATCH v3 4/5] phy: qualcomm: qmp-combo: Add USB4/TBT3
 configuration data for Hamoa
Message-ID: <xgo7ptqqhhhuivi4ff45nfthl7efzkpp2ghnth7hdyqkpioolt@w32ygzaepm2a>
References: <20260730-topic-usb4phy-v3-0-ccf0f7ea98b5@oss.qualcomm.com>
 <20260730-topic-usb4phy-v3-4-ccf0f7ea98b5@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260730-topic-usb4phy-v3-4-ccf0f7ea98b5@oss.qualcomm.com>
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

T24gVGh1LCBKdWwgMzAsIDIwMjYgYXQgMDQ6MTk6MTZQTSArMDIwMCwgS29ucmFkIER5YmNpbyB3
cm90ZToKPiBGcm9tOiBLb25yYWQgRHliY2lvIDxrb25yYWQuZHliY2lvQG9zcy5xdWFsY29tbS5j
b20+Cj4gCj4gQWRkIHRoZSBvZmZzZXRzIGFuZCBjb25maWd1cmF0aW9uIHRhYmxlcyB0byBzdXBw
b3J0IFVTQjQgYW5kCj4gVGh1bmRlcmJvbHQgMyBvcGVyYXRpb24gb24gdGhlIFVTQjQtY2FwYWJs
ZSBQSFlzIGZvdW5kIG9uIEhhbW9hIGNoaXBzLgo+IAo+IFJldmlld2VkLWJ5OiBEbWl0cnkgQmFy
eXNoa292IDxkbWl0cnkuYmFyeXNoa292QG9zcy5xdWFsY29tbS5jb20+Cj4gUmV2aWV3ZWQtYnk6
IEFiZWwgVmVzYSA8YWJlbC52ZXNhQG9zcy5xdWFsY29tbS5jb20+Cj4gU2lnbmVkLW9mZi1ieTog
S29ucmFkIER5YmNpbyA8a29ucmFkLmR5YmNpb0Bvc3MucXVhbGNvbW0uY29tPgoKUmV2aWV3ZWQt
Ynk6IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaXZhbm5hbi5zYWRoYXNpdmFtQG9zcy5xdWFs
Y29tbS5jb20+CgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k
4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1waHkK
