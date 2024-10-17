Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 360C8D374A2
	for <linux-phy@archiver.kernel.org>; Thu, 17 Oct 2024 14:58:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=APCwDuhiAKigiJElm8UaZ2nirBYwRzn18WJWzsDbVG8=; b=vTyhHVfkm472S1
	QoWZ1CoAeTPaCBuiE1XmnfybnirCZer/698uRNSFXITA/BZ5tLfCpAWFi6Hd4FkuSgYeRIflwb7rp
	OvoJLF91r1wXvwmDXlqqTamjQQP1DcHZhtEHjecz+0fVA9W6Gpygmt4BucSs810iCm5ZifJFyLFwt
	IDwAKVu/U37lmPfsSq+OZie8i564P4gE7/ajijFMCndiXxBnHEHfKSV4ZIxtVa8FDHtku9BQkLKwk
	cdCT7GmFs+7EoYaO+jgautwmhrnBTosNmDGjVHVSvyq4jbnVtPqgTV8jcLEb94Np8Hum8AbDgAAO0
	Zp6dGjft2HfmUA7uyr2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1RxI-0000000FC95-3fpC;
	Thu, 17 Oct 2024 14:58:24 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1RxG-0000000FC7s-1OZ6
	for linux-phy@lists.infradead.org;
	Thu, 17 Oct 2024 14:58:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 46DB45C558E;
	Thu, 17 Oct 2024 14:58:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DAA85C4CEC3;
	Thu, 17 Oct 2024 14:58:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729177101;
	bh=avd8bg8mcUPAY+SpVapYfK6GAKFCET4ETNVrqu5Tgm0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fHYvmIA5ThfPAsfI9339n9u80VUiN+k4pRR20KZUgburi4X8DwCGDK/hJxlLCpJYP
	 J6uAKF/W8JG2B73zorjmZiUf6ZbdlEsLD4hP8AonTJV4lqbNkV8RCMZYQps06yFA3e
	 Cm5Fhy1+s/mHkoaebtE/QeMbLdEmdyCL73cjS2Ncb0y6fs/sCPuC18vwdffYCwxxL0
	 uW2qSDYzMvPgZmhc0XH7xmgL7++mtX/JT1uLiwvaj/C2A3RHt5D84IbRAW30nhtwDk
	 Aajiwxg9RFHNzv33tth1lhhpn0lPdgwbViWrX0uk024jl5r/Gm34dL5YlgOnX65jWI
	 qQx5/CSXUOfMQ==
Date: Thu, 17 Oct 2024 20:28:17 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Bartosz Wawrzyniak <bwawrzyn@cisco.com>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Swapnil Jakhade <sjakhade@cadence.com>,
	Aswath Govindraju <a-govindraju@ti.com>,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	xe-linux-external@cisco.com, Daniel Walker <danielwa@cisco.com>,
	Bartosz Stania <sbartosz@cisco.com>
Subject: Re: [PATCH v2] phy: cadence: Sierra: Fix offset of DEQ open eye
 algorithm control register
Message-ID: <ZxEmCWsViATsffE/@vaman>
References: <ZwN+8xpOl4+Ggaha@vaman>
 <20241008171000.2665935-1-bwawrzyn@cisco.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241008171000.2665935-1-bwawrzyn@cisco.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241017_075822_461444_BCE30AD9 
X-CRM114-Status: UNSURE (   5.56  )
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

On 08-10-24, 17:09, Bartosz Wawrzyniak wrote:
> Fix the value of SIERRA_DEQ_OPENEYE_CTRL_PREG and add a definition for
> SIERRA_DEQ_TAU_EPIOFFSET_MODE_PREG. This fixes the SGMII single link
> register configuration.

This does not apply for me on phy/fixes

Can you please rebase and resend

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
