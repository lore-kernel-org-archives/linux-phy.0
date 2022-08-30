Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B812ECAAD4
	for <linux-phy@archiver.kernel.org>; Tue, 30 Aug 2022 11:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pniLCrkDZFSZQpm2+FnVqSAW3zXWxkUqK2KSBdgST0o=; b=hRNhcm1hJ8HNJe
	Fb0bDJV9dgGbSjaQgVLTrizTip+fmrDTL+Dn0bftPlrdN64gc72RadJffcBCN+vgh2/+O2kShepY3
	xzCT7u30BC6xWuTCqVIdIRK/l2pQHy99Z/Q0L/5WyRrvsEksYYmXhNGSmzwjKIG2PHlBY8rKnZsnf
	Mzaxyt9dQaaSFEcRCmXZVZBq8NyQIwn31eUPb3D+5Lnfpt6RYP1HlSI0bSTufGWqwRFooOfPPBFB4
	VuoELsR3+yV6BWru3y2KEKn2GSe2CX6E82SWKw3OwffceN/TmobZ09wzXiJFYPe+mqCj8Wa43SymS
	hC9l3BPpbHYEO7F8a/LQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSzYX-00GbYR-MN; Tue, 30 Aug 2022 11:37:21 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSzYU-00GbWV-ND
	for linux-phy@lists.infradead.org; Tue, 30 Aug 2022 11:37:20 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 8D787B81A5E;
	Tue, 30 Aug 2022 11:37:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 40DC5C433C1;
	Tue, 30 Aug 2022 11:37:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661859435;
	bh=EYBRvvBGDd6OFvpW88VMSSaRRt5bbgJi+wdWKcCg88M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bcTzFLWNeGw294xYrs5lPduDPIgiOiXr5GIlpOknRxEry/14FwMDYggldm2YTI2B2
	 CdFHbLcVlHQvtSfofi/JPsZ2zFfldHLZs3q0vm+ECP/cnRJSmv7wyLn1TyIPYilZgy
	 T1PGV0dCM1EN4LFWT6m7jJBL5+mZiWZHeE1llodoMR2b/iGfrwGWIZ6+l3q4y1LxR6
	 ya2X+psVY5Hj7xguBvllrp9omFUKjoc+i/MN4d8QyG0CXkOIzzT32OvM5CfF96IF6o
	 8Q5cSZHv1r1+wq11XL9GaWs49D/8SebazGxE/8SUoC0rgYSZQjIyYW8FRexAUFVpGH
	 TKDCkX7RcBjSw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1oSzYO-0008Sb-M5; Tue, 30 Aug 2022 13:37:12 +0200
Date: Tue, 30 Aug 2022 13:37:12 +0200
From: Johan Hovold <johan@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Johan Hovold <johan+linaro@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 00/30] phy: qcom,qmp: fix dt-bindings and deprecate
 lane suffix
Message-ID: <Yw32aOuN3rkTBJAy@hovoldconsulting.com>
References: <20220714124333.27643-1-johan+linaro@kernel.org>
 <Yw2a44l9a6zz5qTJ@matsya>
 <Yw21t1SUGjCcUuuw@hovoldconsulting.com>
 <aeec2729-e610-f266-f336-847675cf85ec@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aeec2729-e610-f266-f336-847675cf85ec@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_043718_935115_D0BE6FE6 
X-CRM114-Status: GOOD (  19.91  )
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

On Tue, Aug 30, 2022 at 12:32:04PM +0300, Dmitry Baryshkov wrote:
> On 30/08/2022 10:01, Johan Hovold wrote:
> > On Tue, Aug 30, 2022 at 10:36:43AM +0530, Vinod Koul wrote:
> >> On 14-07-22, 14:43, Johan Hovold wrote:
> 
> [skipped]
> 
> >>> The final patches add support for the updated binding to the (recently
> >>> split up) PHY drivers. Included is also a related combo PHY cleanup.
> >>
> >> This fails at patch 2 for me on v6.0-rc1, please rebase and resend
> > 
> > Are you sure you haven't applied anything to your local tree that causes
> > this?
> 
> When doing the QMP split, we ended up in a similar situation if I 
> remember correctly. Most probably the easiest way is to provide a branch 
> for Vinod to pull in addition to the patches being sent to ML.

Hopefully v4 will just work now.

> > I just tried fetching the v3 series from lore and it applies just fine
> > on top of 6.0-rc1.
> > 
> > Note that if you've added a new compatible string locally, the second
> > patch which sorts the compatible strings is likely to fail to apply.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
