Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 395DEC636CC
	for <linux-phy@archiver.kernel.org>; Tue, 31 Jan 2023 11:00:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iuWbwtQ+8a7mdpgi3tEeffFiUNgo1jKOQ394VxPRyso=; b=o6rrMMfU4+iAzl
	AWpAj+3awksjq0R8yeo5PtX+O0Z+Iiffko83uG5FRXy+7a8Vb1cC9VpKubqyP0Azn5AU1AQByAug9
	inEJzNBMWUnRBAml1Stffpe0Ce8+EvLCepLkdPSw2tAXpA9bZtzggQG0LliWmcXbGnjpSpUEEKk5D
	ZbjOv8QBx9w38I4Rk9pmh0F8dDYG4hx/ydvhmm07KyRyEtcFCJP5/kfwwXc5g88iwonHzg1zvrwDi
	sB8UbFcfMSmHs2LNwuSaDki3dNe/o7+LAj430+MW9RHL917I2dqQPufX4gLj+/OBt32kr7hhnCPGu
	hMG2fanIQbBSV+tJeC1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMoN9-007cXV-Ii; Tue, 31 Jan 2023 11:00:19 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMoMT-007cFC-2v; Tue, 31 Jan 2023 10:59:38 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id F2853614B3;
	Tue, 31 Jan 2023 10:59:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 39B50C4339B;
	Tue, 31 Jan 2023 10:59:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675162775;
	bh=KizWfdLaJoHcpqoGQCUVz2SlSQqe8gsl8o7bCmMfKTI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tc4D1sGpb3hOZBqC9mmXKOGlkigoH/LAkb317owIQWQmGQIW0CouS7STd22cFllnn
	 9sxW25UMMQDJLKSGqpeJpyVYA8HZRHmuYJZtksQGCMMW8BBg2jl7vztd3X4HzM64UP
	 OLunRf+rQxRTFZbFFrBrybRFihauckL3jIBhzaLjoG0u7rxt6FRu7oK3wdUbphvWPf
	 a08zUV+9tfgQmQq+8xlnekSElE4KJW4/83RKS0ug3br4+5FwXfR3TE7RkME5we2sQk
	 pCRQFBYdoggHCPwEOQgIhTNdv2Bd6l5qCcOu6tqHWlTT6igk8Yvg1SKu2w1xuGy201
	 mQR9LaHcI5cVg==
Date: Tue, 31 Jan 2023 16:29:31 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	robh+dt@kernel.org, linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, heiko@sntech.de,
	linux-phy@lists.infradead.org, krzysztof.kozlowski+dt@linaro.org,
	Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v1] dt-bindings: phy: rename phy-rockchip-inno-usb2.yaml
Message-ID: <Y9j0k4hTCsB6vo6v@matsya>
References: <99794484-d67e-ee1f-4e76-200de20a879c@gmail.com>
 <167320365145.195794.14991903357914132463.robh@kernel.org>
 <8c33967b-1b91-42d2-879b-fa73dd8ecbeb@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8c33967b-1b91-42d2-879b-fa73dd8ecbeb@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230131_025937_203621_65D2C3BC 
X-CRM114-Status: GOOD (  14.30  )
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

On 31-01-23, 11:39, Johan Jonker wrote:
> 
> 
> On 1/8/23 19:48, Rob Herring wrote:
> > 
> > On Thu, 29 Dec 2022 12:39:17 +0100, Johan Jonker wrote:
> >> Rename phy-rockchip-inno-usb2.yaml to a more common format of
> >> rockchip,inno-usb2phy.yaml
> >>
> >> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> >> ---
> >>
> 
> >> Apply after:
> >>   dt-bindings: soc: rockchip: grf: add rockchip,rk3288-dp-phy.yaml
> 
> Hi Vinod, Heiko,
> 
> This patch has been acked from the device tree side.
> If it suits you is there Ack from the phy side possible, so that Heiko can merge it to grf.yaml in the order that he likes.

Yes, lgtm:

Acked-By: Vinod Koul <vkoul@kernel.org>

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
