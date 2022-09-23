Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25842ECAAD8
	for <linux-phy@archiver.kernel.org>; Fri, 23 Sep 2022 06:14:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2V2ml2dUfpW3To4WjWQL26OpJHVPQ0NKJ/B1zyiDXPg=; b=RbF6YmZOBy3ww2
	buTgk77hGgd7uBmIkyK9Cx/izZUoFCkhgazcRsD1o7MT4tdZ0UEM7i2XMX4cCdLN685XlR4UMWm74
	bfS3L47JaEX8w1z12Cm//Nw+q6BB7x2PqMN9hqTCqwV//hvxhFpycb3kqfGsiko0BRlKwYdj8vhKW
	sigm12mjBqsKZDU4y4H9VR6y3usrHWgd2ZfgA5MZFSkBJKLy4SxB4KuB2quwZutQEFNDuP41eRrSu
	iFfLQy/o6avSGQZjfXtPghq14dAsoJf431JhoZLNvxf85fmO5BeNZcKA6ggCDfSzrp0UZkQCm6qE1
	D0iGyW/2rIMG2g/P862g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obbxH-002Puo-FA; Fri, 23 Sep 2022 06:14:31 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obbxE-002Pu3-So
	for linux-phy@lists.infradead.org; Fri, 23 Sep 2022 06:14:30 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 50FD9B8275A;
	Fri, 23 Sep 2022 06:14:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E56E2C433C1;
	Fri, 23 Sep 2022 06:14:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663913666;
	bh=OQTnh0dPbWoKamrOJwnvSKKtEfSByR/Nd0plk54BbF8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=anA3Qp1vfNjYW6I4ZMEGlLc0jRC6MHrE/pVH9iLiRWvCrgk2G22gaCswcBU4G3YD1
	 WyDat91xZKDrCIqAw8nevTkQggZWoWmli1UgsarsyinZXaU9hb0DX/Tnn4aSbc97ZW
	 Qtr9HFXBLZ2hbGWSQzndvIKQmCMliu3d+FC9uIxjzHlRsD3UHvGKoWu35M9U1j9KFz
	 HHkGKaFGHpna72haf4gwjpWmElvDCjP0/EcbEi4OaB/RgGeG+58+VoGF/yGZKtnXmv
	 vurzvfEJF9s6LsSg3JkPym2qKjXm0RpoLZwxGihek0K4lSFtxm7VO62h1joMjyRgbv
	 qR0qfMjgUvdOQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1obbxF-0006Fp-1X; Fri, 23 Sep 2022 08:14:29 +0200
Date: Fri, 23 Sep 2022 08:14:29 +0200
From: Johan Hovold <johan@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 17/17] phy: qcom-qmp-combo: drop redundant DP config flag
Message-ID: <Yy1OxS7NjUmaV2Aw@hovoldconsulting.com>
References: <20220920073826.20811-1-johan+linaro@kernel.org>
 <20220920073826.20811-18-johan+linaro@kernel.org>
 <8de63b63-f88a-7342-d286-8826a55e78ab@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8de63b63-f88a-7342-d286-8826a55e78ab@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220922_231429_084770_FC138714 
X-CRM114-Status: GOOD (  12.20  )
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

On Thu, Sep 22, 2022 at 09:02:49PM +0300, Dmitry Baryshkov wrote:
> On 20/09/2022 10:38, Johan Hovold wrote:
> > Drop the DP_COM control block flag from the configuration data, which is
> > set for all combo PHYs and hence no longer needed since the QMP driver
> > split.
> > 
> > Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> > ---
> >   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 63 +++++++----------------
> >   1 file changed, 18 insertions(+), 45 deletions(-)
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Thanks for the review, Dmitry.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
