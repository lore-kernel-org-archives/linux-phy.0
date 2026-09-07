Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5A44C79F9E
	for <linux-phy@archiver.kernel.org>; Mon,  7 Sep 2026 06:11:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zLIvfd7IJ8v4qcCvwwikL769GpLKkViW8TNc+6ftm5o=; b=JOr5lAJk54NC9Q
	JX7+IPONXkyln6Rm45LFDI6NlmEjxSPrbUIsmohtYAj/PH0yc4DqRN8BtRW5mmeTx6r0cYDk2Ih5I
	uDKJsomixsgpJ4L2Se7Hnj8h83fnAGpzQ8Qu1e6IWBAobdHMqqkkm1qFi/S5xyo0SyPVVB7/5Ay2y
	2+A+wFZLTQSu1xCwCEcVc94IJwoaEvDlZN18XbBJnFuWvoBhDSF5IPmWg4XDy8KDJO8IiBU4XpQ4J
	725XFb+sG3OIi25TRS1X0PVkD82YzmVSlLU1vSqgs7/gnKrqLyeR941BtLXuB3lINWFf43S7lOM/s
	YyngfzTvUWQW8rPc93Jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3SZs-00000005zhU-0wjB;
	Mon, 07 Sep 2026 06:11:36 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3SZr-00000005zhO-1Wzg
	for linux-phy@lists.infradead.org;
	Mon, 07 Sep 2026 06:11:35 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id DD1ED4332A;
	Mon,  7 Sep 2026 06:11:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CDB0E1F00A3A;
	Mon,  7 Sep 2026 06:11:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788761494;
	bh=Wsa0JvYiMJouozjokH7geLU1KfAK+7PDaBgcVar9DPc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=HmUpl+lNjFYTm+p0EQ0CEekie38a2gVfgDe/BSEQF3Frn1Nu9NjheKIUfTrf5kb8n
	 ivCeG/KbcxDFiRIGBwKKGSDDIyotNUCgVuXKReLP/nzEoNtaZvmoYoq9AHOuJjosXg
	 EDXYxk3lkSbZpOjfYFGeub5X4K+Dk1EZMg5I3GFQ2Au+ZkC+yC7D6JX94E+UcnH5qU
	 t7GJJoJyLkAlyjmAllFlDITC8kv3Udt6M+txPWKH754MX+2kT2gE6Jr8U7Fi98e9/q
	 bA8FNDKeYQf2ONshunRlj0RrIcxHfq+iUiK8bHa+FxMu1RWFsqEGaBfH4oli3ocPNf
	 nbmEvqHFKiJKQ==
Date: Mon, 7 Sep 2026 08:11:30 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Shawn Guo <shengchao.guo@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
	Abel Vesa <abelvesa@kernel.org>, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
	Bartosz Golaszewski <brgl@kernel.org>, Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Subject: Re: [PATCH 1/4] dt-bindings: phy: qcom,snps-eusb2-phy: Make resets
 optional
Message-ID: <20260907-busy-sensible-mink-c6b35e@quoll>
References: <20260901095055.42229-1-shengchao.guo@oss.qualcomm.com>
 <20260901095055.42229-2-shengchao.guo@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260901095055.42229-2-shengchao.guo@oss.qualcomm.com>
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

On Tue, Sep 01, 2026 at 05:50:52PM +0800, Shawn Guo wrote:
> From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
> 
> Not every instance of this PHY has a block reset of its own. On Nord
> SoC there are three eUSB2 PHYs but only two QUSB2PHY block resets:
> the HS-only USB20 tile has no dedicated PHY reset and is instead reset as
> a whole through the controller's own USB20_PRIM_BCR. Requiring 'resets'
> makes that instance impossible to describe, since the controller and the
> PHY cannot both claim the single block reset exclusively.

Reset framework supports non-exclusive claims, so that is your fix.
Sorrry, but driver reasons are not proper for DT.

IOW, what you are saying here - device has a shared reset, but because I
wrote drivers like that, I don't care and expect other driver to handle
the reset.

Well, no.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
