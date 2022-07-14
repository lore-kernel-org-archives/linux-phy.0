Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9BD6C433EF
	for <linux-phy@archiver.kernel.org>; Thu, 14 Jul 2022 09:49:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tztsGw0I3J6i5oi+NEyfXHW118MPaopOn4BbNIbivlI=; b=vBFeUStXHA2G+J
	llginIQQ0T8Klv5rJHnz1J/uUC+ALqE8A1pnD1tNwxcKp0evhyxScPIQxen3Eb95sbhagrj5D+jmd
	x06TphBFBhIMhhD7XQhcaOiTrInSQOCd8upTqakQBOmaIS9eBvdwoVg7WTg6pe0uhHclvwjL3Y3Wq
	SZii41VzNy2EA8gHgCTdMz0b8Hxe1T5Tm24tcyP5pu7AEscNclGJDWdwldfZqbj7nJYmSw1R+5+dz
	B7LTD6SGgx/mC/LQ3PQfiBDPh6HI8ThhgmYJMLrVthpXgcE3gkJGGeYvdlwjlaj1OswW6Wfm+/cUX
	nKH38UKH0AivQ/xQyVrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBvTD-00D305-8V; Thu, 14 Jul 2022 09:49:19 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBvTA-00D2x8-BO
	for linux-phy@lists.infradead.org; Thu, 14 Jul 2022 09:49:17 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id A65D9B81647;
	Thu, 14 Jul 2022 09:49:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 39BF1C3411C;
	Thu, 14 Jul 2022 09:49:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657792153;
	bh=TzdN4DW2zFgPK53RvV6YP1Fyg+vTq626K43wM14TO7g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QNRI8whqBTxPxnNMo+ZG1kdWF69F0pxEyEYPF0058tE1b9Wo3QuFfvqFem6LxIwVQ
	 4vvIvFYg9lkWJSR+kAvzddzpz+nRCAEBBDq2EXUtayFOjf42KPUQyWBPO71V1G3glF
	 BttOZh0IoLtrdfQpcqqNuA+nFx6umTrZDLYphdzRfMf6iSN4uPuKSfjjMkZPiAr4Vy
	 RnQ6zqZszhQ5vY1ZXYPx29SZjvEEpQch/CtpWZThh9lq4E8Kmu8tVWdCYhZxK98HO0
	 LSwnhGptJn19CwOvuyoe+Y2KKeGo2sXxrIWlJ5z/11bD4xR8/MgOKOPwFy+FGQXtAa
	 FdRbZk6+6+wgA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1oBvTB-00059C-R1; Thu, 14 Jul 2022 11:49:17 +0200
Date: Thu, 14 Jul 2022 11:49:17 +0200
From: Johan Hovold <johan@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 28/30] phy: qcom-qmp-pcie-msm8996: drop pipe clock
 lane suffix
Message-ID: <Ys/mnU/092nTIiom@hovoldconsulting.com>
References: <20220707134725.3512-1-johan+linaro@kernel.org>
 <20220707134725.3512-29-johan+linaro@kernel.org>
 <a2706253-41c1-84fa-2e17-053759888214@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a2706253-41c1-84fa-2e17-053759888214@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_024916_568575_A43C9D9E 
X-CRM114-Status: GOOD (  19.95  )
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

On Thu, Jul 14, 2022 at 11:30:36AM +0200, Krzysztof Kozlowski wrote:
> On 07/07/2022 15:47, Johan Hovold wrote:
> > The pipe clock is defined in the "lane" node so there's no need to keep
> > adding a redundant lane-number suffix to the clock name.
> > 
> > Update driver to support the new binding where the pipe clock name has
> > been deprecated by instead requesting the clock by index.
> > 
> > Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> > ---
> >  drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c | 4 +---
> >  1 file changed, 1 insertion(+), 3 deletions(-)
> > 
> > diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
> > index 812d14afb5ec..af2f14a53b38 100644
> > --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
> > +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
> > @@ -872,7 +872,6 @@ int qcom_qmp_phy_pcie_msm8996_create(struct device *dev, struct device_node *np,
> >  	struct qcom_qmp *qmp = dev_get_drvdata(dev);
> >  	struct phy *generic_phy;
> >  	struct qmp_phy *qphy;
> > -	char prop_name[MAX_PROP_NAME];
> 
> Wait, it looks like your patchset is not bisectable. Be sure each commit
> compiles cleanly.

Ah, crap. I apparently fixed up the wrong commit when I noticed the
unused prop_name variable.

Will fix in v3.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
