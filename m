Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B7FEC5DF62
	for <linux-phy@archiver.kernel.org>; Wed, 26 Jan 2022 02:26:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CT1HSpOWELmPAml7rQGxvzBgUU+kLJ3xlE5C1SOpz7o=; b=S+jlydP2wvb1d7
	8EiWMo98bp6Nc189VdaPy5QMhOWqZmKEdIQi1emtZwsIz9Yx4qd/d3SB2/jnSb6cBK7UkbNMIcoQA
	CSdyksSNubCarM6OSRJIPf//+51XjJjieFPfrNh54qvGZdzjs0VB83zuNfp8K2cdAAW4KWfnreI3d
	jM/lj5nTitXo9SWe7Mirc6bHs06ag4M3x1+Dylth99r7DoTyjQc9LkpOfEiqbRfHbznerh0bMOXNL
	aHUWbiPmnXyxuOoiSPUv8yaNbva8mDtQ1r6KILan3TC8PXEgFcuzOJBCYSbvHFNeEgVVER4QN7rOA
	GTq8w+/5e0sQuxR7JzuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nCY0n-009sgZ-VA; Wed, 26 Jan 2022 02:26:17 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nCY0V-009sa2-Q4; Wed, 26 Jan 2022 02:26:01 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 4F3136169A;
 Wed, 26 Jan 2022 02:25:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C02A8C340E0;
 Wed, 26 Jan 2022 02:25:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1643163958;
 bh=RmgzmvNM3U88+c1923i7TOMfJnQBr8QzL2GLg1H5+ug=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=In4Rrh/bYyNC6EHa3YVOy+PmmZTzXzW2TtCDuW6jazHo1cQCGBFoZcl6d2e0oY/3b
 QXTvHSnTmxQni9PZRkEf3+ZANu+mdl/lNPOgFfUYAwXgvp3Rhaoiek47BriA5JHhel
 AxmA6wf8Fn++WP2v+37pA0GvRPFx9I5IVEs+1YELa4QVi+dnvkSEAjMhKttk+5zHvH
 1xF+ZT8HTVOUz46u0k201ipNnjZ8pgaa/dCn7w3cL4xzp7kYTYCqAknfvFjv+qtbr7
 XE7pQ3K73xd3qPsXARmznPqD+Kk53Z5KkMmQKBuDYe5cWA1QNDyliI9V4DbC2Unuia
 H3s2YRwobxuxA==
Date: Wed, 26 Jan 2022 10:25:52 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Richard Zhu <hongxing.zhu@nxp.com>
Cc: l.stach@pengutronix.de, bhelgaas@google.com, lorenzo.pieralisi@arm.com,
 marcel.ziswiler@toradex.com, tharvey@gateworks.com, kishon@ti.com,
 vkoul@kernel.org, robh@kernel.org, galak@kernel.crashing.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@pengutronix.de, linux-imx@nxp.com
Subject: Re: [PATCH v7 6/8] arm64: dts: imx8mm: Add the pcie support
Message-ID: <20220126022552.GC4686@dragon>
References: <1638432158-4119-1-git-send-email-hongxing.zhu@nxp.com>
 <1638432158-4119-7-git-send-email-hongxing.zhu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1638432158-4119-7-git-send-email-hongxing.zhu@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220125_182559_929328_419677F7 
X-CRM114-Status: UNSURE (   8.58  )
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

On Thu, Dec 02, 2021 at 04:02:36PM +0800, Richard Zhu wrote:
> Add the PCIe support on i.MX8MM platforms.
> 
> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> Tested-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>
> Reviewed-by: Tim Harvey <tharvey@gateworks.com>
> Tested-by: Tim Harvey <tharvey@gateworks.com>

Applied, thanks!

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
