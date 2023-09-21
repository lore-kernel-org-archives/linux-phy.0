Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F854E7108F
	for <linux-phy@archiver.kernel.org>; Thu, 21 Sep 2023 15:46:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6Vt0VWZ5EGZNvji9/GO9YdAfa1nPNJEI1da75iOgPO0=; b=mPxfWdooiuMbOE
	mN1qwS1vOSpHFV32Br4WAR8JFbgIrXrDgEmtggtPfzfi0BfQeBCRECdkMb1aXSri6SA0a2gCKNyth
	kKLbs9KLaCwnTl4csN074Y1CXmTlYuW9Uvavbo66RgKEXsvZh3HWPna3TQdHxlBxa/J+L8ZVNB8p5
	cJcm2F+WZAbibwsfNgnNZlD5uaM5JriLHHCLws64spUoDnwifs6BiavgCA2ZBVYcrs3OTbD9WnNLg
	4aMvMdueW/MqS11ndWlboiooivN0WmCEViUSYwSb9WYED6IEtwuyFOOIhP4QzJ+tlbHV2vOs2ufVL
	LSUo7mb61YXe8A1fVkFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjLsX-006RMC-0Z;
	Thu, 21 Sep 2023 15:46:09 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjKm7-006Ire-2J;
	Thu, 21 Sep 2023 14:35:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=eU+wL/jHAIur5JgL6us11JlkcfRCwooOFarhaWA1bjs=; b=WnV+JPcLFzF0Y/fR3HB6wFwDg1
	9Gg7kbmcfCc8vFlKs4fL2nFxxhyHj7Onq4qyfw6jcO9E04aBbG54ndK3Iu1l90yhdqdRdoqai9hCb
	YhW5rtH9RnCYnBoTKOFBM1cuWhGejdVEZJQNIZsezNFsNyTKXjpQP88sYQgpTVuLgsJ5zRJVQ0/no
	H4kOx7rBHYsdm+9EB8rcHw/kOZ/jPJOOzxzyA/AQFHBMWF9wBTQlUgWXnNUNpmoHPLZIsw9Kprj5F
	o0iqnuusweYEr0jTDzKt4d45OXUoJt2aY2/7k2jvja4zlJ44bc5ax6t/ozYMuAlz2b1BCihl5uo7F
	gskaLNcw==;
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjKlz-00FRsW-0p;
	Thu, 21 Sep 2023 14:35:23 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 93269B820DC;
	Thu, 21 Sep 2023 14:35:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3B4EFC32781;
	Thu, 21 Sep 2023 14:35:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695306914;
	bh=Ashko9Vqxtf3QtmQTLjdXa1bJRP7FL+fu06wAfd3F7c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FRMShh9/zX9wUDM9v8+QIfE2SHrgP+e4G8jiMmiY532CnUx1xx/BPojQLknskBGaV
	 /tZuyOapRtkzGcTUI++k8EOhvB2FjvEDZpcWizWGkS3m2Gs6GV3ltV2UBvht06CInz
	 GEPoh/stnSW9Sd3S0EaxIKvqU8O+UtDXE9lw9Bv1en7UzL6Xd5AkJO4dNNPPwBxA4h
	 FxPhfiyO87F4c1lg/byqQEeOfnnYRPJcGfXSs1NDe5kJZmEj15AmnMWMkJyV/DGTau
	 X6ah1ms2I5mjEosoSOYhpAXbs9WmDccDu41kAk+yb9oQUdHgu85ZAT+o+VrHlv1HWM
	 TqwKyW4jUw2MA==
Date: Thu, 21 Sep 2023 16:35:11 +0200
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
Message-ID: <ZQxUn3MEVuxU3h6I@matsya>
References: <20230808083243.3113192-1-Sandor.yu@nxp.com>
 <20230808083243.3113192-3-Sandor.yu@nxp.com>
 <c485b64e-3c83-4616-b8d8-76c2c7d56b0e@linaro.org>
 <ZOS+IQgFZYxN503B@matsya>
 <CAA8EJpokkjw_Q36YMh4p6NR+r4JGgM7_b+_QXtbmcPr6GzA=ug@mail.gmail.com>
 <ZQxMmtbqDTqgECnE@matsya>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZQxMmtbqDTqgECnE@matsya>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_153521_552287_254F5302 
X-CRM114-Status: GOOD (  18.69  )
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

On 21-09-23, 16:01, Vinod Koul wrote:
> On 22-08-23, 20:22, Dmitry Baryshkov wrote:
> > On 22/08/2023 16:54, Vinod Koul wrote:
> > > On 17-08-23, 13:05, Dmitry Baryshkov wrote:
> > >> On 08/08/2023 11:32, Sandor Yu wrote:
> > >>> Allow HDMI PHYs to be configured through the generic
> > >>> functions through a custom structure added to the generic union.
> > >>>
> > >>> The parameters added here are based on HDMI PHY
> > >>> implementation practices.  The current set of parameters
> > >>> should cover the potential users.
> > >>>
> > >>> Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>
> > >>> ---
> > >>>    include/linux/phy/phy-hdmi.h | 24 ++++++++++++++++++++++++
> > >>>    include/linux/phy/phy.h      |  7 ++++++-
> > >>>    2 files changed, 30 insertions(+), 1 deletion(-)
> > >>>    create mode 100644 include/linux/phy/phy-hdmi.h
> > >>
> > >> I think this looks good now, thank you!
> > >>
> > >> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > >
> > > Should this go thru drm or phy...?
> > 
> > I'd say, PHY, together with the other PHY patches. If you can merge
> > them into an immutable branch, then it can also be merged into
> > drm-misc (?) to provide the dependency between drm and phy parts.
> 
> phy/topic/hdmi should be pushed out in a bit for that

Sorry we need the drm header, so best to merge thru drm tree:

Acked-by: Vinod Koul <vkoul@kernel.org>

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
