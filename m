Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B664CECAAD3
	for <linux-phy@archiver.kernel.org>; Fri,  9 Sep 2022 13:27:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aYj1Ngd2YQ9i1rJa3A3vZ7sqGQYHVzMILWd6Ffmwezo=; b=IX/iBaDcJexFnY
	aq7kmcj3RX16ZbRiRCh/ExPz+pNwSRNUOfIEh1tn7UV81m0+spec6NLDRdtst4iEMjmXHFaS1KVpa
	+JhtYp344hw7XvMoDq++6DhLKV/RHOYxHj2DTgEasvuEOgMQy1+a47z7Bv9obNBDwrDZ0qYZrT5kF
	h/10vh+ZtGP+h9Vc1EDB1NiCLcScFvdgHpnpNIcKw+eHYpMtpiHFss9rkTUROIwVJjp06ymLux9fa
	nZU5BDnBYzpfsW/GccHYorewCnEOOXadGxngH7hRLyq5ONCMLBLbuVVU8vApj7MKAwLug/QmXFfBg
	1xXU/0DQy55Babom+2WA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWe2p-00GK4F-1l; Fri, 09 Sep 2022 13:27:43 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWe2m-00GK2b-D4
	for linux-phy@lists.infradead.org; Fri, 09 Sep 2022 13:27:42 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id EE63C61FDF;
	Fri,  9 Sep 2022 13:27:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5455BC433C1;
	Fri,  9 Sep 2022 13:27:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662730059;
	bh=BC1gUHMq3BJSSWU6Z/Gzv92Q+wtt2zl6xCAHE1m3n6Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dzX5zbtFXtywmMx/k332HuAqr4nvqBF8nnZDcOTQBMXOF8TuOsNPGEvu3pgsdrVZc
	 aua3n0pENO0oMK5mi9IE43DFFckhtg5j5qDDGA70Q72C/fO7YKz9oNG+KyfBnguqbc
	 nAthRg9yfy2448byq13FMIbuwKIUii/LfnMspkyRyY3nFP8q3YfmlixFRHlvzNaztN
	 MfwKNlbtg/1TVfftGgzWyPr7v0XYzCZOUzIDV6pKE6TPIbt6mixeEvZp3KvYMAH46E
	 KL5xfqySXgXfDttHs0R8QKfyZifkckgE7Q/+AMbmXcp94Xwyt5jfx8S4vxwvJh5e2d
	 9Epf//aEDg2Pg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1oWe2v-00027A-Dm; Fri, 09 Sep 2022 15:27:49 +0200
Date: Fri, 9 Sep 2022 15:27:49 +0200
From: Johan Hovold <johan@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 16/16] phy: qcom-qmp-usb: shorten function prefixes
Message-ID: <Yxs/VZawxRYsGwtB@hovoldconsulting.com>
References: <20220907110728.19092-1-johan+linaro@kernel.org>
 <20220907110728.19092-17-johan+linaro@kernel.org>
 <03814cce-4b48-0570-7638-a84bd84c6f7a@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <03814cce-4b48-0570-7638-a84bd84c6f7a@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_062740_513858_439079E7 
X-CRM114-Status: GOOD (  17.23  )
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

On Fri, Sep 09, 2022 at 12:48:48PM +0300, Dmitry Baryshkov wrote:
> On 07/09/2022 14:07, Johan Hovold wrote:
> > The driver function prefix has gotten unnecessarily long and hurts
> > readability.
> > 
> > Shorten "qcom_qmp_phy_" to "qmp_" (which likely stands for "Qualcomm
> > Multi PHY" or similar anyway).
> > 
> > Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> > ---
> >   drivers/phy/qualcomm/phy-qcom-qmp-ufs.c |   3 +-
> >   drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 121 ++++++++++++------------
> >   2 files changed, 60 insertions(+), 64 deletions(-)
> > 
> > diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> > index b020409b92e0..4d0eee620f37 100644
> > --- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> > +++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> > @@ -1105,8 +1105,7 @@ static const struct phy_ops qcom_qmp_ufs_ops = {
> >   	.owner		= THIS_MODULE,
> >   };
> >   
> > -static
> > -int qmp_ufs_create(struct device *dev, struct device_node *np, int id,
> > +static int qmp_ufs_create(struct device *dev, struct device_node *np, int id,
> >   			void __iomem *serdes, const struct qmp_phy_cfg *cfg)
> 
> This likely should go to the previous patch.

Ah, must have amended the wrong commit. Thanks for catching that.

Not sure its worth resending the series for though.

Vinod, could you fix it up or do you prefer I respin?

> Otherwise:
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
