Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0CFA0C433FE
	for <linux-phy@archiver.kernel.org>; Wed, 15 Dec 2021 15:41:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ta8acanU1Xo/1jkUoiUVW1p2fTelKF0LUPSOtZaE7zA=; b=Xu13t0G2aPOuuV
	bjTPyhifnkr2gUPVuFoT2ekryBgxcGSTjGTt3/PNijHH5C5SsjeSXV+5xvV1idtPwlFihUsrPxBtR
	RKV8TVHR4/UFqouE7QE4nRleC9MW++yz1mnqlS2Lt7/Q8gY80NZEmlXpJpS+4Gbg5AT2OCbLJCz9/
	uV5JqyrFGS4Iot3xBaDwXLAhIx4H9PPWbthgTA1JK/+C+ZIyMBxjFrP5ExsDrg3SLOJtwdzP9r1Lp
	gOScKXH2+l7L64avduzaHNorHC8gvD6UIaUdHazYSGQ82MuKLMva7wjVw7VPGQPJgyg+Dqx1nyZeY
	zhKERixNS/A6Lh4qEUfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxWPE-001P6n-Hm; Wed, 15 Dec 2021 15:41:24 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxWP1-001OSZ-1p; Wed, 15 Dec 2021 15:41:12 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 02508B81FC0;
 Wed, 15 Dec 2021 15:37:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 78D13C33D08;
 Wed, 15 Dec 2021 15:21:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1639581707;
 bh=RrbKXeLGT86mKHHzXfbS7Zvc1u/9yveHLJ8kMXAW9mA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dlFscuUbBGrpssU83yuU6eR1TmKWtsE772UwqMzDUp/KLgvzk4lHabwjfqfA7LBEy
 Em4yzgryz/iSk/bzKwRF1DuO2TAnqUFs0u3Lkv02vcexCktXDHQxM2no4+lNcc6Kfb
 C06nh42FoRWsFR70/u1Ayg0VmQmFf+czQ8yW/qAXcrK30CzeYkTf8uNEUJz1NJKiYQ
 cAqp4O9ALYk3cCwrraEwt+NgSCoSE+ysV6+r9R+31fEhm2DIm3ANgNs+OdXgyR1wtd
 M3PFDQ9d1tTLP6HMNx4eJOc/QXizjcyyUMpSl3GMnNngPUbd0A1AXt42miJB+SuxqX
 L8m7OfKB5wlqg==
Date: Wed, 15 Dec 2021 20:51:39 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Hongxing Zhu <hongxing.zhu@nxp.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 kernel test robot <lkp@intel.com>
Subject: Re: [PATCH] phy: freescale: pcie: explictly add bitfield.h
Message-ID: <YboIAzhMrUYS09As@matsya>
References: <20211215060834.921617-1-vkoul@kernel.org>
 <AS8PR04MB86765D95A0E42CED2C5D9B4D8C769@AS8PR04MB8676.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AS8PR04MB86765D95A0E42CED2C5D9B4D8C769@AS8PR04MB8676.eurprd04.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211215_074111_295545_253EE127 
X-CRM114-Status: GOOD (  13.86  )
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

On 15-12-21, 06:29, Hongxing Zhu wrote:
> > -----Original Message-----
> > From: Vinod Koul <vkoul@kernel.org>
> > Sent: Wednesday, December 15, 2021 2:09 PM
> > To: Kishon Vijay Abraham I <kishon@ti.com>; Hongxing Zhu
> > <hongxing.zhu@nxp.com>
> > Cc: linux-phy@lists.infradead.org; Vinod Koul <vkoul@kernel.org>;
> > linux-arm-kernel@lists.infradead.org; linux-kernel@vger.kernel.org;
> > kernel test robot <lkp@intel.com>
> > Subject: [PATCH] phy: freescale: pcie: explictly add bitfield.h
> > 
> > kernel test robot complains about missing FIELD_PREP, so include
> > bitfield.h for that
> > 
> > drivers/phy/freescale/phy-fsl-imx8m-pcie.c:41:37: error: implicit
> > declaration of function 'FIELD_PREP'
> > [-Werror=implicit-function-declaration]
> > drivers/phy/freescale/phy-fsl-imx8m-pcie.c:41:41: error: implicit
> > declaration of function 'FIELD_PREP'
> > [-Werror=implicit-function-declaration]
> > 
> > Reported-by: kernel test robot <lkp@intel.com>
> > Fixes: 1aa97b002258 ("phy: freescale: pcie: Initialize the imx8 pcie
> > standalone phy driver")
> > Signed-off-by: Vinod Koul <vkoul@kernel.org>
> Reviewed-by: Richard Zhu <hongxing.zhu@nxp.com>

Thanks for quick review, I have pushed this

> Thanks a lot for your help to fix it.
> And I'm sorry about that I didn't capture this error in my local build and tests.

No worries, Do test on different arch's other than yours

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
