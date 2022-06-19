Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90E1CC433EF
	for <linux-phy@archiver.kernel.org>; Sun, 19 Jun 2022 11:52:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UTyZG+pKAatiJuDfSPNTBGrNT7v0OV9jaWUZoM9WKnk=; b=XuetlwTPc+C9yE
	XqIX1kor8Nx1vinP0OPQRjy1Db8c4MWKXaIdaw0anZJkfbM765UVfUDasgTDnht71V3ZEIuvbgfiG
	nPJHmq8iweltGWlsx7KeCfW2FdcCPhiKGWQSTg3xumFVzGGFa/cOn2O9HaQaoN157hn2S5QJvm4QP
	oCSWAXQdZam40vsL5KLE/rzjBxI1oZ/Vw4lPr3PDvPo/rRi2BSkysRFwrpS0M6vPPUelKGDyuXXhF
	BaNc0t1kaZCE/5e5bximDX0DdijJQNGgzCzoVYkATR5nYqbhXetx2Q2etNrE47vEdqTLlQ4NBR2gH
	KfPEEyuE/0Ja6e0MNdHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2tTm-00E5x2-OH; Sun, 19 Jun 2022 11:52:34 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2tTE-00E5kA-OO; Sun, 19 Jun 2022 11:52:02 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id C6A3325E;
	Sun, 19 Jun 2022 13:51:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1655639519;
	bh=U8T5YtF7Hm8RYD0xYvGiWRWoW/mJIMjaHSf3ZUOezCA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AHIgK/VQ4icDuuO+diTuqMhG0/brKjaSmYB4Jf7JCPgK45iElEmIvJzWZPbYjdNdk
	 5g2WwLR+0vqyeJRVZosSzCYT878HKBRdzL8wAKvyrh8QuvqFFj6bB3lDkYX2Qw74Xj
	 jX77S9+wg7q+GijjtuNe5617yEH2uFUSGH6qZR/0=
Date: Sun, 19 Jun 2022 14:51:44 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Anurag Kumar Vulisha <anurag.kumar.vulisha@xilinx.com>,
	Michal Simek <michal.simek@xilinx.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Sean Anderson <sean.anderson@seco.com>
Subject: Re: [PATCH] dt-bindings: phy: make phy-cells description a text
Message-ID: <Yq8N0ASsp3e+rDAd@pendragon.ideasonboard.com>
References: <20220619113325.21396-1-krzysztof.kozlowski@linaro.org>
 <Yq8LHN+WGVpXDwiM@pendragon.ideasonboard.com>
 <8fbee49a-8215-32b7-3545-66df70ecc38d@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8fbee49a-8215-32b7-3545-66df70ecc38d@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220619_045200_974050_8D340694 
X-CRM114-Status: GOOD (  16.66  )
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

On Sun, Jun 19, 2022 at 01:46:17PM +0200, Krzysztof Kozlowski wrote:
> On 19/06/2022 13:40, Laurent Pinchart wrote:
> > Hi Krzysztof,
> > 
> > Thank you for the patch.
> > 
> > On Sun, Jun 19, 2022 at 01:33:25PM +0200, Krzysztof Kozlowski wrote:
> >> The description field is a string, so using YAML inside phy-cells
> >> description is not actually helpful.
> > 
> > Does it hurt though ? For xlnx,zynqmp-psgtr.yaml I wrote it that way to
> > prepare for a future where it could be described using a YAML schema
> > (but such future may never come).
> 
> No, it does not hurt. It is however confusing some folks and they think
> schema goes into description. The description should be
> readable/descriptive for humans, so if you think your approach is
> better, I am perfectly fine with it.

I don't mind much. If you think it would be a good idea to eventually
describe the #phy-cells elements in YAML schema then I'd rather keep the
current description, if there's very little chance it will happen, I
don't mind changing it.

-- 
Regards,

Laurent Pinchart

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
