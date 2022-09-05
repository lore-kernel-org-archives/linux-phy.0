Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB2D0ECAAD5
	for <linux-phy@archiver.kernel.org>; Mon,  5 Sep 2022 03:05:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WLHyxuUs87Ei7eui7igzz5AWpztzC5NiWMOgBNEKO/g=; b=s0kNNOrPdBez7N
	YV5pTdclpOULNxY5tJ6moA/CluxBoQf3dy7uBQ+zgo4wm0rTiL0jDARBFJrdNSlrUJYQPTJwEuMrp
	yFyuQkwa4N8JweYvGLpUXCaxZLbsNzgCdocU1+40IkruHAV5jcDldyHsnEybe1MDVzmyP7ARVK/rh
	aSupGBmx8IoXuvZIUCvBdIBVWM9bOGoBCM+LdwRhAsaa2/7qrxuSRS1zwacBCa/a+OP7hX3YzgJe3
	8N+UTdwXgztrVxO7ZjefLRnAwGJRxJ3xqWxOQoYqDiy58JiPxIvOMQNfPQuZbENSEWOLDEkJa9Z5h
	UlCgqZBAzmh/GBRLwbmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV2QN-006Vcf-Gv; Mon, 05 Sep 2022 03:05:24 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV1vV-005o9l-9r; Mon, 05 Sep 2022 02:33:31 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 982A76100B;
	Mon,  5 Sep 2022 02:33:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 04097C433C1;
	Mon,  5 Sep 2022 02:33:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662345205;
	bh=SZNeueOviL5nKj7BJ/+AUY1Pi5Q6OG1O7EOPOkTCWnM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hg/p57B4dNTvp6LEJCSEWpVFxU29ieochHfl/DEkZooyvllkTCgFzHgP6ohxWiaAb
	 x4mvt/HqOb5PvdCbhCuBlOZXoEbcZbxOWtPwQNt0CxXTOHgY0rQeqPnwNFfZ+tjo4B
	 2QQnjQAghdnaKfche9KAD5gHh+Ru25xbOMZ6UqIj3S3jrBuFm0wzNO3Gfx6hnsiY+7
	 oH9GJqNSS2If2SO+UNVF9KwK5a4rs3bUXPOKxnJI+YUhpjzimbxK3MI7X7OS4LjIAY
	 5KMMjxVMSQ965pZMwwZ29v6n/1M12c2U2XvK89QHxEDdIJuI7KhUBx0B51/qKTl5gG
	 170/2k0jR4XIA==
Date: Mon, 5 Sep 2022 10:33:18 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Richard Zhu <hongxing.zhu@nxp.com>
Cc: p.zabel@pengutronix.de, l.stach@pengutronix.de, bhelgaas@google.com,
	lorenzo.pieralisi@arm.com, robh@kernel.org, vkoul@kernel.org,
	alexander.stein@ew.tq-group.com, marex@denx.de,
	richard.leitner@linux.dev, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	kernel@pengutronix.de, linux-imx@nxp.com
Subject: Re: [PATCH v7 3/7] arm64: dts: imx8mp-evk: Add PCIe support
Message-ID: <20220905023318.GE1728671@dragon>
References: <1662109086-15881-1-git-send-email-hongxing.zhu@nxp.com>
 <1662109086-15881-4-git-send-email-hongxing.zhu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1662109086-15881-4-git-send-email-hongxing.zhu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220904_193329_527269_F4F3392E 
X-CRM114-Status: UNSURE (   7.97  )
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

On Fri, Sep 02, 2022 at 04:58:02PM +0800, Richard Zhu wrote:
> Add PCIe support on i.MX8MP EVK board.
> 
> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> Tested-by: Marek Vasut <marex@denx.de>
> Tested-by: Richard Leitner <richard.leitner@skidata.com>
> Tested-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> Reviewed-by: Lucas Stach <l.stach@pengutronix.de>

Applied, thanks!

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
