Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 322C1C46CD2
	for <linux-phy@archiver.kernel.org>; Wed, 24 Jan 2024 05:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n4G3zdrSgtJ2tUM5fXOI+rEvt4TKa6hGbCatLIURNLI=; b=uBpq9DZP82IUyH
	AtiW4c7BHIM97YNemO7+UhCTpUeS87pSMJJRN9oB4rk84880Fw/GU8R5oyq8opGVd9H2ivV5YFC6i
	Mv0d53e5+Xt6S/8XOPs1NOoiVELN59fX/rWsY3rxcp49P1HXoNFZPrSlVXkgm2BqKdi/bR+BC3Knn
	71tenIYgktpOHAPlFukL/mx6xGguAVYfTdWqTrFM/D09e+tZNx++gY7HlYsCPZKw10tFnHI7K9GiN
	GsCP4p+Q70fI1i4yceLaehE/FH23u8g2mz4h276trrnT3EPMY8gaPMcpKV/VyLB953JkZtFwxty99
	nYS69R/jYUXyz6xBOsXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSW4I-001cmy-2R;
	Wed, 24 Jan 2024 05:44:58 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSW4F-001cmQ-0N
	for linux-phy@lists.infradead.org;
	Wed, 24 Jan 2024 05:44:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 4763D60FDB;
	Wed, 24 Jan 2024 05:44:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3AB01C433C7;
	Wed, 24 Jan 2024 05:44:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706075090;
	bh=wydq3m3awroYwRKyCn8UdwP+RAL9z4c7EejX5926Jyg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ry/iJkcO2HUVEdQ7x7oBemcfuHqJLabZ2pEtEkfpCmGxW+KA1kPHTtCLCH9cdugrE
	 ifbeEdyDnPdsimCGVzqKdQtuHze+DLoBulaP5++3w/72QxWVQwSEizTz+IFImdiZ1w
	 FaQUp8lZumV5yd64FOj0MErKaaoKUuJY+JOvwLTTqpe9O4XIJmoW1DAnEiWez+Nlst
	 NrUNpAS1Ks8Y4BoaX0+FBEiUGWK3RYWMUylRn8Ka+N/VNXdZD+zUqWBTDbleMGwxEu
	 8Rs1GKw6RzShKppIdHvtzgbdmPvb1WF2QzprGmU++4NfjllOl9lPwSK4Zy3AqBtFGZ
	 bO/B9sQMFANWA==
Date: Wed, 24 Jan 2024 11:14:45 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: andersson@kernel.org, konrad.dybcio@linaro.org, sboyd@kernel.org,
	mturquette@baylibre.com, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, quic_cang@quicinc.com,
	Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v2 01/16] dt-bindings: phy: qmp-ufs: Fix PHY clocks
Message-ID: <ZbCjzeMTKtbRxJHw@matsya>
References: <20231218120712.16438-1-manivannan.sadhasivam@linaro.org>
 <20231218120712.16438-2-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231218120712.16438-2-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240123_214455_212838_2C9A07D5 
X-CRM114-Status: UNSURE (   7.73  )
X-CRM114-Notice: Please train this message.
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

On 18-12-23, 17:36, Manivannan Sadhasivam wrote:
> All QMP UFS PHYs except MSM8996 require 3 clocks:
> 
> * ref - 19.2MHz reference clock from RPMh
> * ref_aux - Auxiliary reference clock from GCC
> * qref - QREF clock from GCC or TCSR (since SM8550)
> 
> MSM8996 only requires 'ref' and 'qref' clocks. Hence, fix the binding to
> reflect the actual clock topology.
> 
> This change obviously breaks the ABI, but it is inevitable since the
> clock topology needs to be accurately described in the binding.

This fails to apply on phy/fixes, pls rebase

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
