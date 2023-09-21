Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AEA30E71076
	for <linux-phy@archiver.kernel.org>; Thu, 21 Sep 2023 14:01:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n1Poopr7xaqI9MBc9sotQRq1HOHn7WqRUUHa3DxwSz4=; b=az93+Dhi3iA58C
	TtYliUT+z0vDbVfm398puKyLArZ7fGty60FkyU08QiJfoAoM4lzTDyWOM/aDPgCJhVjToji+wdzVE
	1BFz5hP7/k87DPAXUZdBIMPiaaDLBA0o1m4fAvNktWG2ZLh0x7NJcTgGInyAA2NooN1J8sc2ROsp0
	0fM6Tm7Pr23FlSv74FhbvA1DFa98TVB23Kdv2NS98bNlWRJbk3SbNIddgJoMKFW5acZY93mw8UzNe
	Kgn/EJNgg/ceoTs47Es4jB6vWOj/u/RiZVr+FNbUxD+pI+WfeeMhvItrPbwYzsJUTSZBd6+XTu7mX
	YoSAUc0p/4EHyjR/ZO9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjKEu-006CYb-1E;
	Thu, 21 Sep 2023 14:01:08 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjKEr-006CWm-1C;
	Thu, 21 Sep 2023 14:01:07 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id 8ADBACE2212;
	Thu, 21 Sep 2023 14:01:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 338FDC4E74A;
	Thu, 21 Sep 2023 14:01:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695304861;
	bh=fBOyl4wnZj0qgJkc8bc1nWtNS7FruFf11iwwBxp/N8Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XWV8ExU3oehstOxt6ss9ARdQ3g9ez+u6+VQS3HyjR5ECimrVni6bFZFstl0+/V0kw
	 JpxRzExfIzPRzxjCdzv/dwZYuunuD7rRqne/9aQzuFb8xTgHxkdcU/Mpk++SgAM+WA
	 ZDwqmGnB18k7KpGmtHgxu3t6Tx+DKqea37FrFud5B801Zq3BwF2aKzk8gcGfa5teC+
	 hTwNlEJ+7HGWYQW4gdIsLidhqUypVI02ioF/spHiNPhbReMhpxAsOaOHYUTtgTDztn
	 U6H9xDeXUUcCOYMwfzxb7Gb6HQRSiajHQ5awBJZH+bjOiP4068zL0P30B9/Pn2e/+H
	 JEj6Y1JM6q45A==
Date: Thu, 21 Sep 2023 16:00:58 +0200
From: Vinod Koul <vkoul@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Sandor Yu <Sandor.yu@nxp.com>, andrzej.hajda@intel.com,
	neil.armstrong@linaro.org, Laurent.pinchart@ideasonboard.com,
	jonas@kwiboo.se, jernej.skrabec@gmail.com, airlied@gmail.com,
	daniel@ffwll.ch, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org,
	s.hauer@pengutronix.de, festevam@gmail.com,
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, kernel@pengutronix.de,
	linux-imx@nxp.com, oliver.brown@nxp.com,
	alexander.stein@ew.tq-group.com, sam@ravnborg.org
Subject: Re: [PATCH v8 2/7] phy: Add HDMI configuration options
Message-ID: <ZQxMmtbqDTqgECnE@matsya>
References: <20230808083243.3113192-1-Sandor.yu@nxp.com>
 <20230808083243.3113192-3-Sandor.yu@nxp.com>
 <c485b64e-3c83-4616-b8d8-76c2c7d56b0e@linaro.org>
 <ZOS+IQgFZYxN503B@matsya>
 <CAA8EJpokkjw_Q36YMh4p6NR+r4JGgM7_b+_QXtbmcPr6GzA=ug@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA8EJpokkjw_Q36YMh4p6NR+r4JGgM7_b+_QXtbmcPr6GzA=ug@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_070105_896654_DC50575B 
X-CRM114-Status: GOOD (  16.54  )
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

On 22-08-23, 20:22, Dmitry Baryshkov wrote:
> On 22/08/2023 16:54, Vinod Koul wrote:
> > On 17-08-23, 13:05, Dmitry Baryshkov wrote:
> >> On 08/08/2023 11:32, Sandor Yu wrote:
> >>> Allow HDMI PHYs to be configured through the generic
> >>> functions through a custom structure added to the generic union.
> >>>
> >>> The parameters added here are based on HDMI PHY
> >>> implementation practices.  The current set of parameters
> >>> should cover the potential users.
> >>>
> >>> Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>
> >>> ---
> >>>    include/linux/phy/phy-hdmi.h | 24 ++++++++++++++++++++++++
> >>>    include/linux/phy/phy.h      |  7 ++++++-
> >>>    2 files changed, 30 insertions(+), 1 deletion(-)
> >>>    create mode 100644 include/linux/phy/phy-hdmi.h
> >>
> >> I think this looks good now, thank you!
> >>
> >> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> >
> > Should this go thru drm or phy...?
> 
> I'd say, PHY, together with the other PHY patches. If you can merge
> them into an immutable branch, then it can also be merged into
> drm-misc (?) to provide the dependency between drm and phy parts.

phy/topic/hdmi should be pushed out in a bit for that

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
