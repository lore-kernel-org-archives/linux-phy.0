Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC0F3C001B5
	for <linux-phy@archiver.kernel.org>; Fri,  2 Sep 2022 17:49:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EfKdPPwZAAXMv8iFgKF/txCXVwVft6gLZbKUdSxQPwo=; b=Rn91TPwdZTCgzb
	Z+tHx7CaLwP/uJHy5pNNqrgKVndFMlFvs6W05RWUSUKgj4zE4D1uNpJB5yWqV4R+b8sj4MlqWMVO/
	3Thiu/ji2Wxm7enysJaFVvOEyRqVzh8yl63U+lKbKEXzOaM6uZfWQfr2gMy0SkudjxOYS3r67N/ob
	48xpkCD2NLbtkf65Fox3iE81ZdX6ydcjJ1FnGWn3/iTfS0HneSBA+XTEZz0MYPd6Yjz/QzBhCi67b
	Ecu9AeLrj3kzpekd262MBqy2nSsj8XgblhXcH9vtyzpOog3PI3wz8VniYXTjBbipK5m0f9uPxUGdU
	/BwcINe4YcUktisljf8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oUAnY-008Tl3-8B; Fri, 02 Sep 2022 17:49:44 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oUAnN-008Tec-Ei; Fri, 02 Sep 2022 17:49:34 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id EC39D621F0;
	Fri,  2 Sep 2022 17:49:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CF0C4C433C1;
	Fri,  2 Sep 2022 17:49:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662140972;
	bh=GOSNtRWEY0DYm6BP44LdjM1cTRDgHCPLtmZEbPDLPik=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bHWKYkw6yIb+UI2eNRUngsCmD7q/Td5OnsfwFtyU+5Dh+lRM+vjZaow8hx8QdQE45
	 bJlMdvKZ/VQBvGu4i6Xl15rMSnEaOVUu7V9eok5eWrmd2WLHjCFtCuF65otHQQVSPy
	 zwqXBRm53/JjTRuh973hFznlavubMlT2Q/O1RhAfmFfoB3szOMHGQcbiJCXzVE0Xzy
	 WR9l2HaG6nuHzvxu2uYkozRRmhC37p73SDjhCzxR74qzPa35jW09A8EtjgPSr0UCII
	 LQcm1vv7IX++7P65SlslniXwFJROMYUbPpyBAjEakTbO1nTsLeGteu/G0kEoevorqE
	 WGw2e5f0lMz3g==
Date: Fri, 2 Sep 2022 23:19:28 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Richard Zhu <hongxing.zhu@nxp.com>
Cc: a.fatoum@pengutronix.de, l.stach@pengutronix.de, bhelgaas@google.com,
	lorenzo.pieralisi@arm.com, marcel.ziswiler@toradex.com,
	kishon@ti.com, linux-phy@lists.infradead.org,
	linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, kernel@pengutronix.de,
	linux-imx@nxp.com
Subject: Re: [PATCH v2] phy: freescale: imx8m-pcie: Fix the wrong order of
 phy_init() and phy_power_on()
Message-ID: <YxJCKEuuVvJRD7wF@matsya>
References: <1661928956-12727-1-git-send-email-hongxing.zhu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1661928956-12727-1-git-send-email-hongxing.zhu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220902_104933_550358_F9FBD917 
X-CRM114-Status: GOOD (  10.60  )
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

On 31-08-22, 14:55, Richard Zhu wrote:
> Refer to phy_core driver, phy_init() must be called before phy_power_on().
> Fix the wrong order of phy_init() and phy_power_on() here.
> Squash the changes into one patch to avoid the possible bi-section hole.
> 
> Fixes: 1aa97b002258 ("phy: freescale: pcie: Initialize the imx8 pcie standalone phy driver")
> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> Tested-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> ---
>  drivers/pci/controller/dwc/pci-imx6.c      | 6 +++---
>  drivers/phy/freescale/phy-fsl-imx8m-pcie.c | 8 ++++----

Acked-By: Vinod Koul <vkoul@kernel.org>

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
