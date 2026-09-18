Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C34E0C982D9
	for <linux-phy@archiver.kernel.org>; Fri, 18 Sep 2026 10:24:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lmN932hBPFuP3ZOiFU0J14IRbiBFFQs6H9I422s7h9A=; b=PPfKTKzDaBBrm3
	fNpK0E+MMlWCNYTDW0A1hSHru3aU7eBX1f/LInICzEootQqVcg/UdgNiqHt+c0H9OxlZ3DryuQsWa
	YSIgzWJnEH08J7XqJvgf4Vx+Rg9u+sYALTh+nx2LTpiDTjEiCkqlhudCV8mOSWKqM6V0+iuhqNFTj
	EmGJ7IbYWytWbePdfqcjUn0FedlRvAtBtOgdhMBmf6xA35mbLAq81sw1CHQGVM/Xgmnke97mGGYNC
	H7S6aWv8SGJ8V3aQsFshThA+PfRH8vHd6faCMuNEshC3+cq2wbSww7J+Pcy3ER2/V+pY+TrKvDqOK
	b7tyaYlZrB4Za8QWxxqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7Vm5-0000000E5cO-1cC8;
	Fri, 18 Sep 2026 10:24:57 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7Vm3-0000000E5cH-3RHC
	for linux-phy@lists.infradead.org;
	Fri, 18 Sep 2026 10:24:55 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 7FCAB438FF;
	Fri, 18 Sep 2026 10:24:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 502F01F000FF;
	Fri, 18 Sep 2026 10:24:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789727095;
	bh=qF3nv3klH9Dbqycz2ZuFf8Ygc6MN3E6c1b20mBZp/Mo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=e41UwT5xKpy94j5nRvZBelhv3nIY9X4GO6OW2zZidTWCQZN7pM84h7dqecqkZMDf8
	 NxXLdg4DCS+q8cB+CuGzRTFgLJo9bjv0RlCIyjx0n/CAd6rC1olyg2DJRKaUTzgVpc
	 Cxro++1TJRSBGUsRsd0c+08z3zm7x8r2XOBSwxRf6sLhnXp599kNFNcjzI61iBbPnx
	 iX0HoNe55nYaT7UUd3dpAo7tpFbFZJxC8y27bzwdNPE8I+MqgPCbsQ3L82JcCuZolG
	 +gQyhNp5IzICepiXOmQPOhaNtHAzwg9ZBqKaQN7fWIqgcoN7FV3r8wewo2qGc39y8I
	 a0gfSdi1TQl4g==
Date: Fri, 18 Sep 2026 12:24:51 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abelvesa@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>, brgl@kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Shawn Guo <shengchao.guo@oss.qualcomm.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: phy: qcom,snps-eusb2-phy: Document
 the Nord eUSB2 PHY
Message-ID: <20260918-cheerful-independent-saluki-208ce3@quoll>
References: <20260916-nord-usb-phy-v2-0-2c8461bb30e6@oss.qualcomm.com>
 <20260916-nord-usb-phy-v2-1-2c8461bb30e6@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260916-nord-usb-phy-v2-1-2c8461bb30e6@oss.qualcomm.com>
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

On Wed, Sep 16, 2026 at 08:30:51PM +0200, Bartosz Golaszewski wrote:
> Add a compatible for the eUSB2 PHY found on the Qualcomm Nord SoC.
> It is compatible with the sm8550 eUSB2 PHY.
> 
> While at it: On Nord SoC there are three eUSB2 PHYs but only two QUSB2PHY
> block resets: the HS-only USB20 tile has no dedicated PHY reset and is
> instead reset as a whole through the controller's own USB20_PRIM_BCR.
> 
> Make the 'resets' property optional.

So this is a correct explanation for Nord, but you do much more than
explained here. You make it optional for Eliza, Milos and every other
device but use "Nord" as an argument. It's wrong argument. Eliza is
different than Nord. This either needs proper explanation or a fix - you
need constraints per variants (allOf:if:then).

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
