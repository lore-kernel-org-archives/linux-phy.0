Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE5D0C6FD20
	for <linux-phy@archiver.kernel.org>; Fri, 24 Mar 2023 20:44:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZkrwHIdgVTgHkmuwbIRz58XvjIiBF6rYErFo1OzSvo8=; b=OEJz0qgO3y8VaF
	X3ocCvpPKzZyvnxKpudjQ+4rfZh7sCQucsi2d8fODCI/Cv/3UEL21IUJwdlACORKKdt++vhyUyQyr
	NUKTXxhI96fmDCRTxEdRGj+guFNm/euaenSXmh59emYrGfVqtS1IlthW+nYDol+EA0VhTClpM1ZPh
	5wAOSuyljVuBCfwRRGUv7DErMmMjxEnHqJB8K4gcsBw1LTpVrVgxk8FGSwhpWmpRdkqf+zGtiiHp4
	yhy4MjtUqrs2Qk4S2zvoDruxt1Yauko+VBx/19MW4xr/+GdkQJ85MxV3JaIb29VZdDCQRq12Py+Fb
	t07+285GRpq3bPCLA9VQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfoGZ-005ZhJ-11;
	Fri, 24 Mar 2023 20:44:03 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfoGV-005ZgF-2b;
	Fri, 24 Mar 2023 20:44:01 +0000
Received: from pendragon.ideasonboard.com (213-243-189-158.bb.dnainternet.fi [213.243.189.158])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id D83D5A58;
	Fri, 24 Mar 2023 21:43:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1679690637;
	bh=DPS8aitjZuB3YdWtqamZnZNEefbvtVegFZpEpNFCGXk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ew23VkUl8ZFTEcq96y3KGxB75HxLGiGVEvGTUINqBuYp2HyplL5AoKIVfrDqdjiaL
	 iQo/2CX6ta6HYuoTZR3VyDrT3YTJH6ts4Va35mGX1XeZCishpK1lwqyNQ3ao0bRZkb
	 zaenu0RDO6Z/1ZTVmphFzdcQsnQ2W0xvYu8QgsCY=
Date: Fri, 24 Mar 2023 22:44:02 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Radhey Shyam Pandey <radhey.shyam.pandey@amd.com>
Cc: vkoul@kernel.org, kishon@kernel.org, michal.simek@xilinx.com,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, git@amd.com
Subject: Re: [PATCH] phy: xilinx: phy-zynqmp: mention SGMII as supported
 protocol
Message-ID: <20230324204402.GD23868@pendragon.ideasonboard.com>
References: <1679660679-10409-1-git-send-email-radhey.shyam.pandey@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1679660679-10409-1-git-send-email-radhey.shyam.pandey@amd.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230324_134359_987392_9F37891F 
X-CRM114-Status: GOOD (  16.98  )
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

Hi Radhey,

Thank you for the patch.

On Fri, Mar 24, 2023 at 05:54:39PM +0530, Radhey Shyam Pandey wrote:
> SGMII is validated on kria KR260 robotics starter kit. So modify the
> comment description to include it in supported controllers list.
> 
> Signed-off-by: Radhey Shyam Pandey <radhey.shyam.pandey@amd.com>
> ---
>  drivers/phy/xilinx/phy-zynqmp.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/phy/xilinx/phy-zynqmp.c b/drivers/phy/xilinx/phy-zynqmp.c
> index 9be9535ad7ab..ebe5ba730234 100644
> --- a/drivers/phy/xilinx/phy-zynqmp.c
> +++ b/drivers/phy/xilinx/phy-zynqmp.c
> @@ -8,9 +8,9 @@
>   * Author: Subbaraya Sundeep <sundeep.lkml@gmail.com>
>   * Author: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
>   *
> - * This driver is tested for USB, SATA and Display Port currently.
> - * Other controllers PCIe and SGMII should also work but that is
> - * experimental as of now.
> + * This driver is tested for USB, SGMII, SATA and Display Port currently.
> + * Other controller i.e PCIe should also work but that is experimental

As only PCIe is left, I'd write

 * PCIe should also work but that is experimental as of now.

With that,

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

Of course it would be even better if you could test PCIe ;-)

> + * as of now.
>   */
>  
>  #include <linux/clk.h>

-- 
Regards,

Laurent Pinchart

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
