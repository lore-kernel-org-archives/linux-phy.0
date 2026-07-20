Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CAAA0C44515
	for <linux-phy@archiver.kernel.org>; Mon, 20 Jul 2026 11:18:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fm31xwxqUDVfHxUY2OFtePKh5XLgNrTALEkQ+GMHX4M=; b=w0c5tR2NHRMKES
	hBpPNnr/kKYcXDEFgzQTozeiiA8waAOTVMjx1Eh2PiAc6gLFR7kQYFedz/9j5f5+PAyFgESytBYre
	Tioa+amqpeDzlrZZ8FYIMrimT0OXhc1smOKb/aNozejN/ziHeewQyccpV09eJilSp/Uh4F67Pg3X9
	lNDX4LrVSTuO7/832uswJnwKnSsGPiPIjbKubVJ+YQs3suj6im3lluWJoCxQZw2x0Hd4pRX2Cb+CM
	j2x6w2CQc211IXLIOaYM3deRGv2AHm3J8hYEQgmfTSRUu8SV2pFCtCCXurHsJArTfYTaCOjKBSDBc
	KDVRv9TNBL5tFxP5JhYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlm1R-00000006aT6-1azv;
	Mon, 20 Jul 2026 11:18:57 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlm1Q-00000006aSn-07Xf
	for linux-phy@lists.infradead.org;
	Mon, 20 Jul 2026 11:18:56 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 585FD60254;
	Mon, 20 Jul 2026 11:18:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4B7AB1F00A3A;
	Mon, 20 Jul 2026 11:18:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784546335;
	bh=90brq7N9vx8ptaQkJpj+PtsxJmmOQz7QVrLbmyRHcuw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=MA/rrSUAWwAcrQ34lRzEZITPZ3Fj34E37mtOEtKsHcL6tq7m/GWhp4KhVVAaDv/zz
	 xk8+Oj/r8wiUms/3smMZCE+e+Dx462s42IA5q05D6GKGtfLwmhuCJl9bATItSEeIXC
	 git3ErfsEvQXeQFSTol8m8nrNdSQvlfIbOGzxhRldM4cgvMHK5bvRjn9Knrsena38W
	 gRzM70TckBngDn/pMP6MGn5twxnZF3T7KTOe4tktrPce3AejwOEWELNIBZgCzOhHgp
	 WkLYEspzL7duqmZmq0UUhNg1vDn+l71CDxZDNMcXkEcj3bC+fVCzK/orJz/J3q4f0j
	 FZdSRaZZ8bAoQ==
Date: Mon, 20 Jul 2026 16:48:51 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: Ronak Raheja <ronak.raheja@oss.qualcomm.com>, krzk+dt@kernel.org,
	conor+dt@kernel.org, robh@kernel.org, neil.armstrong@linaro.org,
	gregkh@linuxfoundation.org, dmitry.baryshkov@oss.qualcomm.com,
	konrad.dybcio@oss.qualcomm.com, abel.vesa@oss.qualcomm.com,
	wesley.cheng@oss.qualcomm.com, krzysztof.kozlowski@oss.qualcomm.com,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 0/4] phy: qcom: Introduce USB support for Hawi
Message-ID: <al4EG1FMrI0z1D7z@vaman>
References: <20260508213234.4643-1-ronak.raheja@oss.qualcomm.com>
 <chf57j2dkhhjzigpguldadfld5utepa4sxwbo7fjxk5nq37bhp@yci5agzh46ly>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <chf57j2dkhhjzigpguldadfld5utepa4sxwbo7fjxk5nq37bhp@yci5agzh46ly>
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

On 13-07-26, 13:12, Manivannan Sadhasivam wrote:
> On Fri, May 08, 2026 at 02:32:30PM -0700, Ronak Raheja wrote:
> > This series adds USB PHY support for the Hawi SoC. It documents the
> > QMP USB3-DP combo PHY and M31 eUSB2 PHY bindings, adds the Hawi
> > compatible to the DWC3 USB binding, and adds the PHY initialization
> > sequences to the qmp-combo driver.
> > 
> 
> Vinod, does this series look good to you?

It doesnt apply for me, can you folks rebase and resend

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
