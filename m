Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6CF57C61DD3
	for <linux-phy@archiver.kernel.org>; Tue,  1 Sep 2026 13:11:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K8+tyKct2egOa7EEta30KHGr93o0/Z3YjXH5TfS5uUw=; b=Bum9e6GA20wkb8
	Z2rccqg7bGXtokZxS41khf8+vI8h+pyY0Ga4uzoDq5HydmuYLd9lYDEy1MID3tq7EEA1ENmheH2Mi
	fASyOhnzGNu6pzfl5b2/b4kaAsZXIVWQx05rT6t1JQAb9h+ZugoDZFPNrIQZXDuqjxyuk1SWHjAfy
	FnFJQfJGGKEQmHJhXmWhE8rux5TWu4kUbV2xyEXYlM5vHSnytA/TVpQPEMwsdO2ZMkb70QAHyfzrh
	2vHtYQcnaxt7fFL8aqQtWL4rzMA0vuUP4jvYRSTEHIEp1FQ63SvMd7y2+Q7+dq0bpMWRP2bwATVnG
	PC7oWlOd4SEiMdDizt6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1OHN-0000000CAHz-0SQX;
	Tue, 01 Sep 2026 13:11:57 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1OHM-0000000CAHd-1TOL
	for linux-phy@lists.infradead.org;
	Tue, 01 Sep 2026 13:11:56 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 09FA24052A;
	Tue,  1 Sep 2026 13:11:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 49B961F000E9;
	Tue,  1 Sep 2026 13:11:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788268315;
	bh=84DA78nCb8/YfyuoiXwo4GACV9/6L1RAMEbU/Sql6a8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=iX9d1BPnkv0eLulEkTIePn22YHRVxyCh7GeSCVkbPQsfu0mkG9Jhor85JYaNxFOdr
	 apkciV1ShA6PDrCmSngG6bGDedqPVRk45EInJv/y74p+06cltEAS802w6/DweeUWbw
	 6xRTq0J3kkCWkLOVsOfdFLgGhM7ntPAx0JvztfBFygPvjRkVHsCnhnyaYH4PXfyat5
	 REgr0AzhgyqkJTRq8zVYNYL/S30xoqdpfHumOQZgdqaEMcdq5VryDmwJ2j7kZiKcCu
	 Os/eqaDH6D68ZMH/IkqEir/woAmhNq+6c2gepRWGe/bRiWyvBiecrYyxGuHIZfrE0/
	 2f0IDip+I7S3Q==
Date: Tue, 1 Sep 2026 15:11:41 +0200
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
Subject: Re: [PATCH v4 5/5] arm64: dts: qcom: hamoa: Extend QMPPHY
 description for USB4
Message-ID: <tpnyev4byegefqswj3dh7v67loiwwpzfswo6us4xqcsyjfsqyh@35o6qljqiwqw>
References: <20260820-topic-usb4phy-v4-0-aec9d2cb31f6@oss.qualcomm.com>
 <20260820-topic-usb4phy-v4-5-aec9d2cb31f6@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260820-topic-usb4phy-v4-5-aec9d2cb31f6@oss.qualcomm.com>
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

T24gVGh1LCBBdWcgMjAsIDIwMjYgYXQgMDQ6MjQ6MTRQTSArMDIwMCwgS29ucmFkIER5YmNpbyB3
cm90ZToKPiBGcm9tOiBLb25yYWQgRHliY2lvIDxrb25yYWQuZHliY2lvQG9zcy5xdWFsY29tbS5j
b20+Cj4gCj4gVGhlIFVTQjQgcGFydCBvZiB0aGUgUU1QUEhZIHJlcXVpcmVzIHRoYXQgb25lIG1v
cmUgR0NDIGNsb2NrIChQMlJSMlAgLQo+IFBIWS10by1Sb3V0ZXIsIFJvdXRlci10by1QSFkpIGlz
IGVuYWJsZWQgZm9yIHRoZSBQSFkgdG8gaW5pdGlhbGl6ZQo+IHN1Y2Nlc3NmdWxseS4gRGVzY3Jp
YmUgdGhhdC4KPiAKPiBSZXZpZXdlZC1ieTogRG1pdHJ5IEJhcnlzaGtvdiA8ZG1pdHJ5LmJhcnlz
aGtvdkBvc3MucXVhbGNvbW0uY29tPgo+IFJldmlld2VkLWJ5OiBBYmVsIFZlc2EgPGFiZWwudmVz
YUBvc3MucXVhbGNvbW0uY29tPgo+IFNpZ25lZC1vZmYtYnk6IEtvbnJhZCBEeWJjaW8gPGtvbnJh
ZC5keWJjaW9Ab3NzLnF1YWxjb21tLmNvbT4KCkFja2VkLWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2
YW0gPG1hbml2YW5uYW4uc2FkaGFzaXZhbUBvc3MucXVhbGNvbW0uY29tPgoKLSBNYW5pCgotLSAK
4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKLS0g
CmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
