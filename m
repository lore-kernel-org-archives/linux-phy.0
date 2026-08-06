Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0BBB8C5AC7C
	for <linux-phy@archiver.kernel.org>; Thu,  6 Aug 2026 16:26:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HBSDgjw6/iAZN6dWfa4sOwfWLoACYCZ/kPvv0BXrLCE=; b=TicgOgOYIgibTU
	mV5lnmMvhg2MYO90tXmotLOj+UoWRlj5pmNANzr2dtHEj7fGrsEvkFmIVWdxW2b4B6DJaYzly0SvZ
	2NQj7lVtainidxfVfYCOJjAMT2K9r8LaYivAmNJTHAotLWoVxKCHsO88mTFsVVYLDP3tmD4ovKG71
	zRxo5d2o8x2cLrrdnspDwmyc4f5x6JG44W+hERZbZpiYR2qWqShG2fG11aWePEyW8G4nSmXTlExNY
	/Hzc+J5fnn5URZ0RRQGQ8fxuIBwcP1W6fjz4w8dGOQulLITj3Gcs0WWIhhjuFo00+e3cpoY6a4hY8
	Q6xgtZDf7Ue2AWVQDI5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ws0v3-00000006Ck7-2ew0;
	Thu, 06 Aug 2026 16:26:09 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ws0v2-00000006Cjo-1Z05
	for linux-phy@lists.infradead.org;
	Thu, 06 Aug 2026 16:26:08 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id CC41E60AB4;
	Thu,  6 Aug 2026 16:26:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2DC181F00A3D;
	Thu,  6 Aug 2026 16:26:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786033567;
	bh=l/pqGQLUylj7fu7Xe5MGl6jQ1rwT8sb60LmR8+ITD/g=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=PJ7dB3GtqowHGBiohYKQOlEo7WTFAenWvnKz8dzGJmgm2Ebo+vi2nn8Y6jJA84Nh8
	 WYHgBwiva7wY7w6MccMqJph9pvrMZoSx6BxgjKfCQCGJ1eFxGTD+nlG/GUq34fUxy8
	 l5Om8YmPqABr0H3z+oTj7YgtAEvXf1p2DY7e73D9tLfx+CsOSHFgvo01SAYlowr4eW
	 yEkjCai8jUgRnpsxwaooyX+cJV4cr7vAWmcTIdPenb5H/oU/DUs4s//SYqhg/6mlLN
	 Cm1NW+/USJUIZZBSXtsEzwXhl7R2W2povEfP5ZskDPo3Wu4JU/moN/pdFDo9wXt2l5
	 b6yRjBvKeXHVg==
From: Vinod Koul <vkoul@kernel.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Wesley Cheng <quic_wcheng@quicinc.com>, 
 Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-usb@vger.kernel.org
In-Reply-To: <20260803091441.3040830-1-mukesh.ojha@oss.qualcomm.com>
References: <20260803091441.3040830-1-mukesh.ojha@oss.qualcomm.com>
Subject: Re: (subset) [PATCH v4 0/4] phy: qcom: Introduce USB support for
 Hawi
Message-Id: <178603356377.674490.863643484295472251.b4-ty@kernel.org>
Date: Thu, 06 Aug 2026 21:56:03 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
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


On Mon, 03 Aug 2026 14:44:37 +0530, Mukesh Ojha wrote:
> This series adds USB PHY support for the Hawi SoC. It documents the
> QMP USB3-DP combo PHY and M31 eUSB2 PHY bindings, adds the Hawi
> compatible to the DWC3 USB binding, and adds the PHY initialization
> sequences to the qmp-combo driver.
> 

Applied, thanks!

[1/4] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Add Hawi QMP PHY
      commit: 19d8eca1be11bc5782f9d292d88f96ebf0cdbe7f
[2/4] dt-bindings: phy: qcom,m31-eusb2-phy: Document M31 eUSB2 PHY for Hawi
      commit: 7abc2c575d5b5d67349caf73509f069e6bf7445a
[4/4] phy: qualcomm: qmp-combo: Add support for Hawi SoC
      commit: eca0e717aab1cc90eb0b7d8c3e8aa63ca89962a5

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
