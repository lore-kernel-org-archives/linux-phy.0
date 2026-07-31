Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1DA0DC55167
	for <linux-phy@archiver.kernel.org>; Fri, 31 Jul 2026 05:27:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/JmebsSqgtDWkJWtuqjTjU1kJoiE+5y8TH6VdzlGXA0=; b=sQ8LNX9oxM5WER
	EuYdOtsFFJLXG3j5PBrahZvTHJMHb5O7W4DxXAjBRcuBGnAtNxZoMumzzX5sD3J45aHG/aNscVM3Z
	FSo0eks71sdtpiIN/LF4fCUmjg+xYp4JAHb463SHxtU5bkGbaIF+unj9zmP5cNJQJLEAgsVtqJdhN
	ItqLbV3ZFatdAujpazO12qKiCY36crvjGqAV044UaGq9bPaacv2d7v5dUecjn14ovRilEcjgfxpvY
	G38BjUmg5F0YKvfmUS2ND8cWB2y+i0mVON9HSEzzo65EKWlb5wF3BoKEeJHeP7TEuwgqbIYHOF882
	I8gq/LE06fpUekPb+Uuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpfmP-0000000BnNd-3LlZ;
	Fri, 31 Jul 2026 05:27:33 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpfmM-0000000BnN6-3IUf
	for linux-phy@lists.infradead.org;
	Fri, 31 Jul 2026 05:27:33 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 7E399418ED;
	Fri, 31 Jul 2026 05:27:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3635F1F000E9;
	Fri, 31 Jul 2026 05:27:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785475650;
	bh=glmNOIapH39s42yHTpL/3rw+JUP5lYtLMkkGCOnbKMM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=HzcoW82UEpJuGs86aQvgxaqvXL5DseJO8lpiHIBUXo71WjHCZ0AVIzURoVITNdNpl
	 zU3eraVEtxOcINLMh12dhBkBdE9awA1X5sQlJ495t3ieNe5HrITr+0PbotcNl49lFA
	 0qKzSSN77U8terRN5eOgEWXWAChNNqdsamiaOoW4DkPxkfuggzG89T8OCe0allBmUc
	 CuIJFr44FUfSkM4HFArvg+E+DOko5QvN2qMAESGMYLh+0Z4Y2CBjteW79odjfq3mGD
	 /P9CIbxdY/Tj0Sf6lpdzVeND2vtIQflzScNO0/mSL07pThVxMZXmOpMrnGFZDs3Png
	 5cYtEp31lWqXA==
Date: Fri, 31 Jul 2026 07:27:22 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Qiang Yu <qiang.yu@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v8 3/6] arm64: dts: qcom: glymur: Add PCIe3 PHY and
 PCIe3a controller nodes
Message-ID: <mh4ekjxyax6hu3scoxamkryqrikdzetqyq3j626c5pqce7vyic@qlrpckswgkx5>
References: <20260730-glymur_linkmode_0731-v8-0-a455265ad8bf@oss.qualcomm.com>
 <20260730-glymur_linkmode_0731-v8-3-a455265ad8bf@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260730-glymur_linkmode_0731-v8-3-a455265ad8bf@oss.qualcomm.com>
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

T24gVGh1LCBKdWwgMzAsIDIwMjYgYXQgMTA6MTM6NTJQTSAtMDcwMCwgUWlhbmcgWXUgd3JvdGU6
Cj4gQWRkIHRoZSBQQ0llMyBQSFkgYW5kIHRoZSBQQ0llM2EgY29udHJvbGxlciBub2Rlcy4gUENJ
ZTNhIGFuZCBQQ0llM2Igc2hhcmUKPiBhIHNpbmdsZSBHZW41eDggUU1QIFBIWSB0aGF0IGNhbiBi
ZSBjb25maWd1cmVkIGVpdGhlciBhcyBvbmUgeDggbGluayBvciBhcwo+IHR3byBpbmRlcGVuZGVu
dCB4NCBsaW5rcyAoYmlmdXJjYXRlZCkuCj4gCj4gVGhlIHNoYXJlZCBQSFkgaXMgbW9kZWxsZWQg
YXMgYSBzaW5nbGUgcGNpZTNfcGh5IHByb3ZpZGVyOyBlYWNoIGNvbnRyb2xsZXIKPiBzZWxlY3Rz
IGl0cyBzdWItUEhZIHRocm91Z2ggJnBjaWUzX3BoeSAoaW5kZXggMCBmb3IgUENJZTNhLCBpbmRl
eCAxIGZvcgo+IFBDSWUzYikuIFVwZGF0ZSB0aGUgR0NDIHBpcGUgY2xvY2sgcGFyZW50IGFycmF5
IHRvIHJlZmVyZW5jZSB0aGUgbmV3IFBIWSdzCj4gY2xvY2sgb3V0cHV0cyBpbnN0ZWFkIG9mIHRo
ZSBwbGFjZWhvbGRlcnMuCj4gCj4gUmV2aWV3ZWQtYnk6IEtvbnJhZCBEeWJjaW8gPGtvbnJhZC5k
eWJjaW9Ab3NzLnF1YWxjb21tLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBRaWFuZyBZdSA8cWlhbmcu
eXVAb3NzLnF1YWxjb21tLmNvbT4KClJldmlld2VkLWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0g
PG1hbml2YW5uYW4uc2FkaGFzaXZhbUBvc3MucXVhbGNvbW0uY29tPgoKLSBNYW5pCgotLSAK4K6u
4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxp
bnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
