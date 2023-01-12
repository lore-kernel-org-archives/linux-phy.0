Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AEE27C61DB3
	for <linux-phy@archiver.kernel.org>; Thu, 12 Jan 2023 17:23:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CKGmddSm8o0dL6Kc89Zk1bvzXVnBtqPAwEdUsNdJcE0=; b=NIhk523pXkibGA
	Va5K4UouOOCDMHLRitgLDv6DMi+TORKp5GsZAD1qfIxm+oRSkHR/D4bTKl3PDircdRjM2lyIXxN2U
	UcHeXWMInGy34xKvApeunuC5dzeS2HMR8GVo/bn6IbCfeBFiBHigt/HuLNW7EjWGpybpnmsmj468N
	qhUv6k7bvOu8qyGlqXahSi/WUuEC1UPrTqU2qi/TDXZP4yt0HLPoXM5+udnpB2GGDgcr5BSWSozib
	L46Vny5zj2Iwv7bgab4ps0Ph/Y9CcynYKKptkUGu+JEsHRFajBWKwS2AdSH7Z+fBkrXKEP5HmT2P9
	ZE4LbTzaxLqyTCJWGlUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pG1Il-00G17G-1W; Thu, 12 Jan 2023 17:23:43 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pG1Ih-00G16O-QP
	for linux-phy@lists.infradead.org; Thu, 12 Jan 2023 17:23:40 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 54E40620B8;
	Thu, 12 Jan 2023 17:23:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 093B4C433EF;
	Thu, 12 Jan 2023 17:23:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673544218;
	bh=vH/o83cLSYXUJQUG47sGbRqM7Nxy9CAYi6BHrDZBWlA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hZ+Jedez7BxP2mTRuDnQdP3mNtC/bxyFrDTbOs66BKDtb6MwUmi1QCmZ+/laKH260
	 2/JyF7uV6SVzRFqfw/HJZetMmMYbOSZNw268G3b5aD04QYktTCuQG2RYt/Li46Dpv6
	 UiX9zb5HOUS0THNE9/o91Nb3CDUDdGcKrKyFK0nl40L1bOQ1kVViUUHwcOdH3NvwRn
	 J0R1KG1ddm8Z5OCdcXuK9OqijZZLDQ58mrhJixS0FXdw+DZ/byVAphbfNYIcMIoQbi
	 HCaKPOUKzZt5yjyBfltLFEM1q/O5FGXuzDlcDtfgd1PqqnW9NpMao33E5SZctbAV5E
	 JkyDRQjNnkirw==
Date: Thu, 12 Jan 2023 22:53:34 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Wayne Chang <waynec@nvidia.com>
Cc: gregkh@linuxfoundation.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, treding@nvidia.com,
	jonathanh@nvidia.com, thierry.reding@gmail.com,
	heikki.krogerus@linux.intel.com, ajayg@nvidia.com,
	p.zabel@pengutronix.de, balbi@kernel.org, mathias.nyman@intel.com,
	jckuo@nvidia.com, linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	singhanc@nvidia.com, linux-i2c@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org
Subject: Re: [PATCH v3 10/13] phy: tegra: xusb: Disable trk clk when not in
 use
Message-ID: <Y8BCFhDuy1gzFrX6@matsya>
References: <20221114124053.1873316-1-waynec@nvidia.com>
 <20221114124053.1873316-11-waynec@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221114124053.1873316-11-waynec@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230112_092339_909976_336F6E15 
X-CRM114-Status: UNSURE (   7.87  )
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

On 14-11-22, 20:40, Wayne Chang wrote:
> Pad tracking is a one-time calibration for Tegra186 and Tegra194.
> Clk should be disabled after calibration.
> 
> Disable clk after calibration.
> While at it add 100us delay for HW recording the calibration value.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
