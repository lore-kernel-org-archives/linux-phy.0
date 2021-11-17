Return-Path: <SRS0=mYmN=QE=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 16D8CC433F5
	for <linux-phy@archiver.kernel.org>; Wed, 17 Nov 2021 07:51:00 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D37B463215
	for <linux-phy@archiver.kernel.org>; Wed, 17 Nov 2021 07:50:59 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org D37B463215
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LEgAW8MYByGvQ+hFKfgEae/OvYsN7sboroSg/g5645k=; b=liq1iWbsM0r/PX
	UABjFHZ47fIr7f1bBJHnSBP40IrLl+qR0D+BFOeBJS6dQqgr9PDSg1Stq8NIHthBDcaXKUNvrk5+m
	j6J9xbrGImGRP1dzMCW+RERkOdtozEeQGDAXd4ipyDvICUiSjGJnH3A04IE7ym/tpRWWqKZzEzUCl
	hXEy8RLmIXSjj78hnnNHEn0prguAvieeowiVq13RHzaFFYeN1cjLfsCMwRlzJhMSfr6zmuLBibNcm
	Voftw49hdETyqucx+lsMsrLxcPnFNCqUPwCDhtC/UsnmdlZ8m/xBVbtAqTJpUKTxmSZLZvilQ0BOl
	CRb6J7Ev3yEnoCIGfYGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mnFid-003rcU-Dx; Wed, 17 Nov 2021 07:50:59 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnFiP-003rXH-MF; Wed, 17 Nov 2021 07:50:47 +0000
Received: from pendragon.ideasonboard.com
 (117.145-247-81.adsl-dyn.isp.belgacom.be [81.247.145.117])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 3D8A3464;
 Wed, 17 Nov 2021 08:50:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1637135440;
 bh=ZqtMIdKGSNsSfuUw5T8CaCbr/LHYqL5hUB8UylD3eVU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Guklbz5+OKnxLzXHKcQPRJfU6BmxbLYvX3v8TnOOUmAoN2YVNhzPmUNo8rapf5x9q
 TV6b2T4vLlBZZIc1DqRN3CiyhJId/lstfnnNmi5FGnZYXZHSGf5rvCbtg9r9EuTH1B
 BbugkvBXVJ65K4uNDfM/Wfw0h3btt4PbPYGYur8k=
Date: Wed, 17 Nov 2021 09:50:18 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Liam Beguin <liambeguin@gmail.com>
Cc: Anurag Kumar Vulisha <anurag.kumar.vulisha@xilinx.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Michal Simek <michal.simek@xilinx.com>,
 Liam Beguin <lvb@xiphos.com>, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/1] dt-bindings: phy: zynqmp-psgtr: fix USB phy name
Message-ID: <YZS0Ov0CL9mcrk/l@pendragon.ideasonboard.com>
References: <20211117003841.2030813-1-lvb@xiphos.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211117003841.2030813-1-lvb@xiphos.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211116_235045_931238_A4D23BB9 
X-CRM114-Status: GOOD (  14.21  )
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

Hi Liam,

Thank you for the patch.

On Tue, Nov 16, 2021 at 07:38:41PM -0500, Liam Beguin wrote:
> PHY_TYPE_USB is undefined and was added as PHY_TYPE_USB2 and
> PHY_TYPE_USB3 in 2fbbc96d1600 (phy: Add PHY header file for DT x Driver
> defines, 2014-11-04). Fix documentation to avoid misleading users.
> 
> Signed-off-by: Liam Beguin <lvb@xiphos.com>

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> ---
>  Documentation/devicetree/bindings/phy/xlnx,zynqmp-psgtr.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/xlnx,zynqmp-psgtr.yaml b/Documentation/devicetree/bindings/phy/xlnx,zynqmp-psgtr.yaml
> index 04d5654efb38..79906519c652 100644
> --- a/Documentation/devicetree/bindings/phy/xlnx,zynqmp-psgtr.yaml
> +++ b/Documentation/devicetree/bindings/phy/xlnx,zynqmp-psgtr.yaml
> @@ -29,7 +29,7 @@ properties:
>            - PHY_TYPE_PCIE
>            - PHY_TYPE_SATA
>            - PHY_TYPE_SGMII
> -          - PHY_TYPE_USB
> +          - PHY_TYPE_USB3
>        - description: The PHY instance
>          minimum: 0
>          maximum: 1 # for DP, SATA or USB

-- 
Regards,

Laurent Pinchart

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
