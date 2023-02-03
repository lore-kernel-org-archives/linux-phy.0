Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93EEFC05027
	for <linux-phy@archiver.kernel.org>; Fri,  3 Feb 2023 13:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4wtwQy7G3aviv/GoLJ+sk5yoyKpT+VpXPhDuDecNqbo=; b=Wu7yv85PgYBiAf
	KEWRanH0nD24AOpaEiA7gpxZ5k5IXaBmtBewxkvTV3W+CSIxbRQwt7vw1Px+fgMMSLwIwYSVDP5CO
	w2sSUX1Hyw9ToGshwlatVB8eCpGBJWlC6DizsA0cij7kHh3rnn8EbkwZsoX2ZCYUFK8ub9UgsoS7r
	3CiKlw2yqo+37lX7zMxuUejtd3oOuLyHKbJ14X0YN4BbSfZBUtsUldLCN7KK6Hl9zmNrkizLrzVGR
	eqPRm6EYOmptwP/WlAtevEx8lny6pf1v3oqbu6mVekqP5dbdtKd40Wdl9NYVuAXQnrn/5GSEw0zDe
	UEXPXY+r2cS4B/MVIvSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNwR0-002926-Ej; Fri, 03 Feb 2023 13:48:58 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNwFV-0025YW-Qo
	for linux-phy@lists.infradead.org; Fri, 03 Feb 2023 13:37:07 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 609A6B82A85;
	Fri,  3 Feb 2023 13:37:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 44020C433D2;
	Fri,  3 Feb 2023 13:37:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675431423;
	bh=ZZx3nGqH4qzHtCTP7gc5u4gXwhafYjW64wFE9xehQZI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PC8VNj+wZkDfbJoqNkderv9knz5Oo+pT3sfm3c1cr77Ubyjs3yab0Mav8a2YbJY6k
	 jtpvCnCaaokAr5EWzY1ykc0vHUHVXMKsc0ycKRc/iRKUvLCGFXt0IMzaa0uBP3dgNv
	 FXJkGaYYb9Aw3ZUGbMEgz94uHmKcGarBi78/BLR8/aI2/t+6ZmVV6F4yJsg3P8AORq
	 vspHZ51eKSajiXxbw2vZTv8NlI0QdrLKoAxh1XB+3/GAIQE7IcDzpY7u0c/XMPvrww
	 yongZFEgBem0zD3pu82swgRGLsa4ByrzeEAB6xQFtaHAhivstR5Bft9aRFXKNbFBGV
	 Sc407wctcLSEw==
Date: Fri, 3 Feb 2023 19:06:58 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Thierry Reding <thierry.reding@gmail.com>
Cc: Jon Hunter <jonathanh@nvidia.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org, linux-phy@lists.infradead.org,
	waynec@nvidia.com,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH V6 2/6] dt-bindings: phy: tegra-xusb: Add support for
 Tegra234
Message-ID: <Y90N+v0Qo0zdYdNS@matsya>
References: <20230111110450.24617-1-jonathanh@nvidia.com>
 <20230111110450.24617-3-jonathanh@nvidia.com>
 <Y9P6PJ9xPVst/um2@orome>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y9P6PJ9xPVst/um2@orome>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230203_053706_041796_07119A6F 
X-CRM114-Status: GOOD (  15.19  )
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

On 27-01-23, 17:22, Thierry Reding wrote:
> On Wed, Jan 11, 2023 at 11:04:46AM +0000, Jon Hunter wrote:
> > Add the compatible string for the Tegra234 XUSB PHY.
> > 
> > Signed-off-by: Jon Hunter <jonathanh@nvidia.com>
> > Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > ---
> > V5 -> V6: Added Krzysztof's ACK 
> > V3 -> V5: Fixed compatible string
> > V3 -> V4: Added patch
> > 
> >  .../devicetree/bindings/phy/nvidia,tegra194-xusb-padctl.yaml  | 4 +++-
> >  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> Hi Vinod,
> 
> can you pick this up into your tree? This applies on top of the
> conversion patch ("dt-bindings: phy: tegra-xusb: Convert to
> json-schema") that's aready in your next branch.

Applied now, thanks for pinging

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
