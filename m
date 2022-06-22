Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA77CCCA47E
	for <linux-phy@archiver.kernel.org>; Wed, 22 Jun 2022 08:02:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TaJS2mBJaJCnZB/9Bi5+MBlikQFFzaCrcfW+N/iDhkw=; b=GX8v+mvuIvERPG
	IyfyxNqxM4H77IkZNKYutAutUgieHVST6rBeUnLTKedKE8Y5XDjSG/OtNETlB99zDDdspwn2hP82A
	jjmBPaAUzzbcZW37pMiBNmNjZDV6p8uEmQTt/a81m1bwtZ3Lem2pGJrYQJEiZBRj988ez54OseC1P
	8wyeC51jYAtg8oulu5xlOnxaoyI/ycjjIs/tw468jfl7M4nXiZJ0dmrwTxyxRP/j0Iql5TuqfubWt
	6Xt9PAR4ip+Henmy7RT+abt3EOIoAKmOmJjpmmF3vBzWeFsgvBuocC4oiwjwFKfPsFOUHXiqJXPQP
	KGGGFzVtmivnH7ZAgTQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3vK0-009AA4-77; Wed, 22 Jun 2022 08:02:44 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3vJx-009A8b-Qp
	for linux-phy@lists.infradead.org; Wed, 22 Jun 2022 08:02:43 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id E7CF0DD;
	Wed, 22 Jun 2022 10:02:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1655884956;
	bh=AXPp6eJK0PtXuZNZMvLyU001mnRYAyn50gy68ytRdyM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=trDCUOhmWaUzhOzZVhF6eg1wuJhDPezILSWuc10VxhRWFAqy4kS7J/Do+9XIoTpRO
	 6Axjk/4p+DAje6oW/0zuAzdWPnByPFcBRrXdFe9XkQMYBaILKzGqP6YdtL9TtrJdpS
	 Jto5IZKymQ5Etn39/jNOhy2JKq1jBIoNnmnndAOE=
Date: Wed, 22 Jun 2022 11:02:19 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Rahul T R <r-ravikumar@ti.com>
Cc: linux-phy@lists.infradead.org, kishon@ti.com, vkoul@kernel.org,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	p.yadav@ti.com, tomi.valkeinen@ideasonboard.com,
	linux-kernel@vger.kernel.org, jpawar@cadence.com,
	sjakhade@cadence.com, mparab@cadence.com,
	devicetree@vger.kernel.org, vigneshr@ti.com, lee.jones@linaro.org
Subject: Re: [PATCH v2 1/3] phy: dt-bindings: cdns,dphy: Add compatible for
 dphy on j721e
Message-ID: <YrLMi+nWZA/HM+U+@pendragon.ideasonboard.com>
References: <20220622075340.16915-1-r-ravikumar@ti.com>
 <20220622075340.16915-2-r-ravikumar@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220622075340.16915-2-r-ravikumar@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220622_010242_055503_33D4BABD 
X-CRM114-Status: GOOD (  11.52  )
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

Hi Rahul,

Thank you for the patch.

On Wed, Jun 22, 2022 at 01:23:38PM +0530, Rahul T R wrote:
> Add compatible to support dphy tx on j721e
> 
> Signed-off-by: Rahul T R <r-ravikumar@ti.com>

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> ---
>  Documentation/devicetree/bindings/phy/cdns,dphy.yaml | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/cdns,dphy.yaml b/Documentation/devicetree/bindings/phy/cdns,dphy.yaml
> index c50629bd1b51..f0e9ca8427bb 100644
> --- a/Documentation/devicetree/bindings/phy/cdns,dphy.yaml
> +++ b/Documentation/devicetree/bindings/phy/cdns,dphy.yaml
> @@ -11,8 +11,9 @@ maintainers:
>  
>  properties:
>    compatible:
> -    items:
> -      - const: cdns,dphy
> +    enum:
> +      - cdns,dphy
> +      - ti,j721e-dphy
>  
>    reg:
>      maxItems: 1

-- 
Regards,

Laurent Pinchart

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
