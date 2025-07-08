Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 218CEC83F0F
	for <linux-phy@archiver.kernel.org>; Tue,  8 Jul 2025 19:58:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4ZEmpJ+Cg2kpC7xFJHh0sVKom3vQtS/05lxiow8ppfI=; b=3gD2qrx7VK2Lpm
	TPLFfkR7IOaPBSDRt580224BiBUHSagNZn772tr7x33dF8Fdyk++rY/8Or1h2Xi4DiLaTQne+M/+O
	TIAfQq3RHU+d3B55rW5h4zB+zT23LIh/J/9Es7ggMM32DH3U7+35dPliPqfLkcKcTU6xBcmnzCvgY
	xum3m7ZBjEcO+2ChQDdecsNUlp5mDLujWEy/+JbxR9EnGeTnucG9lxlDSkkkhAsXIfNOz1KEEcfFe
	uKi5zr7L//jaCArXT0Q4U5iLUVXzgbHDBdBRXZxA2uH1eorbRipvuDbCaeMN3I0g4LD18IwdD2bsf
	wYlXDTddKuynDY5ZBtxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZESm-00000006RZq-2zIm;
	Tue, 08 Jul 2025 19:58:48 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZDmz-00000006Ky3-3V72
	for linux-phy@lists.infradead.org;
	Tue, 08 Jul 2025 19:15:37 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id F42326112E;
	Tue,  8 Jul 2025 19:15:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 68CA2C4CEED;
	Tue,  8 Jul 2025 19:15:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752002136;
	bh=A6+O+gvln2Yrol59tTQtT+QZC9VvWRabJ+YozCHb+TY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mxGJDdRtw3SthyZ35k4iEifShgaodxeQxzAJCC3uDweRovV/WE8eEhSr0YSRrZpka
	 dD9ALOZg4kaidgSgBS2kiN7T3bx+GAZRxbmW++xRNv57zbJRKR5np1MEDy6pDErpuT
	 XX9D96q/4qjzEt603eeUp1xYVsmHQdnE2xshPAFgtuvl/2IeS/9xgeTj4X18wdHiug
	 SMg4Ejwc1bUgg0v70MYh9jM8Zk0H6YDVilQDHnetq+iBMXOKLBY1BuEDwt8790suU6
	 XgRHgt24YIrZXVl7D8pntbRddj/cXIphQUs+PRdTs7GuUEpS+26jSLs+knxrOKxRLn
	 HH6gio/J3ZMTg==
Date: Tue, 8 Jul 2025 14:15:35 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Liu Ying <victor.liu@nxp.com>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Vinod Koul <vkoul@kernel.org>, imx@lists.linux.dev,
	Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>
Subject: Re: [PATCH] dt-bindings: phy: mixel, mipi-dsi-phy: Allow
 assigned-clock* properties
Message-ID: <175200213291.769997.6552133008506087167.robh@kernel.org>
References: <20250707-dt-bindings-phy-mixel-mipi-dsi-phy-allow-assign-clock-properties-v1-1-5e34b257e1ef@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250707-dt-bindings-phy-mixel-mipi-dsi-phy-allow-assign-clock-properties-v1-1-5e34b257e1ef@nxp.com>
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


On Mon, 07 Jul 2025 10:47:00 +0800, Liu Ying wrote:
> assigned-clock* properties can be used by default now, so allow them.
> 
> Signed-off-by: Liu Ying <victor.liu@nxp.com>
> ---
>  Documentation/devicetree/bindings/phy/mixel,mipi-dsi-phy.yaml | 5 -----
>  1 file changed, 5 deletions(-)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
