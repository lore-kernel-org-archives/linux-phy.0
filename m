Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3068EC88E5A
	for <linux-phy@archiver.kernel.org>; Sun, 13 Sep 2026 10:56:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kz2vYpNYoxKP/Is3EgZToUNRHVWf2o4zPnlgHZ8ml8c=; b=BYg4KEB8B3Vd+5
	WECNZCGVcPO2Bf9UvBeUBueHYwidKHYyJwaFluwR3e0HPN9yl3UTWfFlcXV2Rxd7mO6ydfeMl3K93
	CNH/+bC9JPJdEm5WGvMJyvjVbzJu4mf0hcU81PEeU9rqO5Lp503RW3o64mI/UcZfhj/KFa9Tdn4hb
	wkfdcNwrVykrEKVUrE+YF/GAmCVwchM7lWExGBICjkkQiIMm68d0ENt86Hi2BTl+6DQGh+VTHQ2y+
	IrXqRHNo0cJlg+n7BuLFXjv0xGHKGnuNWpV0gBMmcpNqxDC1uReykMR+SRdTK0ve+JSBPM99BuTwt
	cfK4W0Sf8Yz1uW9EDmjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5hsw-00000001bV3-3Isr;
	Sun, 13 Sep 2026 10:56:34 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5hsv-00000001bUU-0QIK
	for linux-phy@lists.infradead.org;
	Sun, 13 Sep 2026 10:56:33 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id D8BBD41FFE;
	Sun, 13 Sep 2026 10:56:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9289E1F00893;
	Sun, 13 Sep 2026 10:56:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789296992;
	bh=P47HMdyxZh8fOVPmCb3YhWLwvJQp/EXFkFViv6/tHH4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=o2NSBs74XiBFBetQcFBoJSo4xbzO50BciS55DZmkXAkU5MT79xS4bW/Kqh8oBch+I
	 WXGQMppP0/ndi7jCVJpTh/y4/npfwW90if7quPrFYlFMadC7hUrqlzmW9mcxl7cAAK
	 nMsxY9OYzZePyTbqdz564lU2jCu7PoQavYnDE0mo7ZyYOpB0BG9GSagMz+/VdqqpvN
	 ppteqRNtHOJUDctzd669tnZhZ8QL15kvuRcVawoe+R/kCpLS1C4GfPhczclNQ2tpY8
	 fRFMAnUY0FEK/jvJO0nuZAgvm2B2hchA+VBJABLYUlH/gtkDXWU8nFYIspAceQxGyq
	 mNTRpIXUZGIdQ==
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
 Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com, 
 trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
In-Reply-To: <20260817-maili-usb-v2-0-97d7317f64b3@oss.qualcomm.com>
References: <20260817-maili-usb-v2-0-97d7317f64b3@oss.qualcomm.com>
Subject: Re: [PATCH v2 0/2] phy: qcom: Introduce USB support for Maili
Message-Id: <178929698718.215437.1349034028800179890.b4-ty@kernel.org>
Date: Sun, 13 Sep 2026 16:26:27 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.3
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


On Mon, 17 Aug 2026 23:16:04 -0700, Jingyi Wang wrote:
> Add USB PHY support for the Maili SoC. It documents the QMP USB3-DP combo
> PHY and M31 eUSB2 PHY bindings and uses Hawi and SM8750 as respective
> fallbacks.
> 
> 

Applied, thanks!

[1/2] dt-bindings: phy: qcom,m31-eusb2-phy: Document M31 eUSB2 PHY for Maili
      commit: c071d59419633460761cfaa41120296051cd7ed1
[2/2] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Add Maili QMP Phy
      commit: 08354e2cb4c673af1d60f4ed10c88402daa65cb1

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
