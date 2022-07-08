Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9880C433EF
	for <linux-phy@archiver.kernel.org>; Fri,  8 Jul 2022 05:09:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c3dLujvPU7txy1K3gaT6pCXC5v6az0VW6kBvDTOjYow=; b=OfoCNnlGEmnd8Q
	YL8KZ4BOuQMe+WlU5TCKOX2EW+LIZc0WAqHALgMyMQF1yVOqcKzsW8umahtj3iCcdv0TBCWifHgT2
	LCmxm0QLO6Yd61l3W5droZupNMEMWG4mXmLOL+0J6HexF0Lu7Anh0gPnmnwp7iYyNbSklhWPnPfsu
	u+lTcmGVpiinEcecrQEvvMwkbflErrzCH94wdQjGD77fgfeSRYR2CIVtI+HBmU0/DFtMFFgmZIaGA
	q3XnzaOrfaAo/ahoNuIakb6FyelupS8xneIjWvn3PluY9a2s/guC5oLgmIuscT5tcOAkMcCe9vZCQ
	IiX+CKd66VAZxmsEbJqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9gFH-001myS-90; Fri, 08 Jul 2022 05:09:39 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9gF6-001mxO-L4; Fri, 08 Jul 2022 05:09:29 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id E8519B81B87;
	Fri,  8 Jul 2022 05:09:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2F469C341C0;
	Fri,  8 Jul 2022 05:09:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657256962;
	bh=6V1vhx/gUObKAIONRnrqqe+o20FprZCE1K6zJ1CvgeE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SIR0WZpba+rNcvEMiPufGu9mnTAlsW9EGI3M8drJyHLtEZKAcdfuHx1bopV/vMl0z
	 pGS5ucFyDgm3Zgo5dfYXkdbO0ryl0sMj3/l+GqfiIRtIQIGZPVlAKlFSHcHcj0GRwg
	 +xjV6uLIH+LE/fmviDriLFOjFJCD5cN14GPjWu8/6RrQBM9UAcg30NydP/tfVB9l5L
	 tgp7UWIfups8BkB9zd6lwM29pBu3rSpA7UA46r4D+CSCOZsybPxNvnHcz8xm/q2jsb
	 MIh0A7w85yEGpFfl9psmJAcEMuQo7RJXiTs+bfsv+YN78gJIGp5Ww+S7JXol125EYX
	 Y5oX2ylKvmonA==
Date: Fri, 8 Jul 2022 10:39:19 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Chanho Park <chanho61.park@samsung.com>
Cc: "'Martin K. Petersen'" <martin.petersen@oracle.com>,
	'Kishon Vijay Abraham I' <kishon@ti.com>,
	'Krzysztof Kozlowski' <krzysztof.kozlowski@linaro.org>,
	"'James E . J . Bottomley'" <jejb@linux.ibm.com>,
	'Alim Akhtar' <alim.akhtar@samsung.com>,
	'Bart Van Assche' <bvanassche@acm.org>,
	linux-phy@lists.infradead.org, linux-scsi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org
Subject: Re: [PATCH v2 0/3] change exynos ufs phy control
Message-ID: <Yse7/9TBRd0vxhL6@matsya>
References: <CGME20220706020540epcas2p37a8b697af2c6786db9e4ed67cf20a40f@epcas2p3.samsung.com>
 <20220706020255.151177-1-chanho61.park@samsung.com>
 <yq17d4o624t.fsf@ca-mkp.ca.oracle.com>
 <000a01d89261$bd2c4df0$3784e9d0$@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <000a01d89261$bd2c4df0$3784e9d0$@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220707_220928_880656_B6C6A397 
X-CRM114-Status: GOOD (  15.07  )
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

On 08-07-22, 09:29, Chanho Park wrote:
> > > The first patch is for changing phy clocks manipulation from
> > > controlling each symbol/ref clocks to clk_bulk APIs. The second patch
> > > is for making power on/off sequences between pmu isolation and clk
> > > control.  Finally, the third patch changes the phy on/off and init
> > > sequences from ufs-exynos host driver.
> > 
> > Were you intending this series to go through SCSI or the phy tree?
> 
> I thinks the first two patches are going to phy-tree and you'll need to pick
> the last patch.
> 
> Vinod,
> Could you pick the first two patches in your tree?

Applied 1-2, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
