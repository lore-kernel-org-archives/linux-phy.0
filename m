Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1EF03D374A2
	for <linux-phy@archiver.kernel.org>; Thu, 17 Oct 2024 15:06:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4V7WI1mT9wofixDt5q3PbUhi/nn6eY1YWitIfwThkPU=; b=zT26HMV0xs0+hR
	A59THsBfIpVNYb+4CDkTnKFT3ChawqEF07is1lRShp5004/qwtDBnLNoq1mEdcHAUIWY6/H0CSWXx
	5oCFfzY6vhH1wVg3LZLcQA6vFtMgtnSCM4x4EA6ThN09vjWhJ1efqhmuUfsTlrTeVPdqBKUIoUHO6
	Yd/ZyHEgXFPtG2egsnmwITVoyh0X2OVtxdutn/J6CZAldLzi03IUvduszfiXb7SRI/tyfMZVQEJ5S
	wviNCTEBej2ix4d93HjeFhZRQtkEvGHFuApb5v02PXeu8gkVIglvKXUF01xL/6TZr+ORZ7xoai5Oa
	kqUgHPXCk4RlE4Q8QFDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1S5B-0000000FDzg-3Lex;
	Thu, 17 Oct 2024 15:06:33 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1S3f-0000000FDaU-3LRF;
	Thu, 17 Oct 2024 15:05:01 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id E8F23A43FAA;
	Thu, 17 Oct 2024 15:04:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1D9B2C4CEC3;
	Thu, 17 Oct 2024 15:04:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729177498;
	bh=/iUFQ/0rM9C2X/U7ch5ZgY6xRHDxFImBc3ZRlD2x5nA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NlIgq/EhaOF6MeriKt0Alr74nqLElWpi7SUCS4995WT2g2jWvlb+Q/48edxfR35Kd
	 tUxGEj7ZYXCSCbgFTIrtcnIDFSaE/WQs2TBFLqQp2LnNsMVPRrpcKMZRNFVQifLywC
	 eSAYg3hsFk3LYx8Glm8EekiONP9grdbvtcNYodStd8SSFjltLabBq68S35SXTiz2fu
	 P5LY3ZeeLlc7S1Tj+cJYb6QI0Ur018QsRnsD7bZrY9SyqJ7E1THr9PmGMl0PYGVnd9
	 iV93PgIwV+OYB10EqqJEdegIR4f0TWq7xHYy1QlEZ/vBHggRjUmCbrlH/nLO3lx/rb
	 wyitPFVa0W8yA==
Date: Thu, 17 Oct 2024 20:34:55 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Richard Zhu <hongxing.zhu@nxp.com>
Cc: kishon@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
	festevam@gmail.com, Frank.Li@nxp.com, marcel.ziswiler@toradex.com,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, imx@lists.linux.dev,
	kernel@pengutronix.de, stable@vger.kernel.org
Subject: Re: [PATCH] phy: freescale: imx8m-pcie: Do CMN_RST just before PHY
 PLL lock check
Message-ID: <ZxEnlx8n4rojC779@vaman>
References: <1728444303-32416-1-git-send-email-hongxing.zhu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1728444303-32416-1-git-send-email-hongxing.zhu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241017_080459_921049_4275C832 
X-CRM114-Status: UNSURE (   6.05  )
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

On 09-10-24, 11:25, Richard Zhu wrote:
> When enable initcall_debug together with higher debug level below.
> CONFIG_CONSOLE_LOGLEVEL_DEFAULT=9
> CONFIG_CONSOLE_LOGLEVEL_QUIET=9
> CONFIG_MESSAGE_LOGLEVEL_DEFAULT=7
> 
> The initialization of i.MX8MP PCIe PHY might be timeout failed randomly.
> To fix this issue, adjust the sequence of the resets refer to the power
> up sequence listed below.

This fails to apply on the phy/fixes, can you please rebase and send

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
