Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05AD6C433FE
	for <linux-phy@archiver.kernel.org>; Mon, 14 Nov 2022 08:39:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o5sIWlsXcBQfLcLqdtht5E+z/fJE+yh19asDBC5XZ1w=; b=XHCVZWqXH336uA
	iiSJAV7IpBIa5FnOFAU49y4KWlxnzRQySudfmIzwp8mTcKFusrlr2ZK8R/Kmn6i5c0U0omKHOIMUx
	NLRMZYGcSWJNZ/ZqIwzHzXR6hs58I/wq1EpGVcLCNgdsx3McRP4sxhALjDMmcmJfS5XzdOWZ54H9u
	gBsJu2oigQVXLb/AY+ZUlf5yyyq8zHjFFm1+Fjq1yD5IrWQ79rck4o1upq06WulgNd5+Un278Yf3S
	AlKlGQ/rsQ9bOM77CpR3v4ILSjYXX4TNpGe1us3mafDNK57EmgVeOfYIsVBsLbo0uAe2aezGjmJ1R
	qanzLQeVW+0ZHYU5OfDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouUzj-00Gsem-9j; Mon, 14 Nov 2022 08:39:07 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouUzf-00Gscy-H6
	for linux-phy@lists.infradead.org; Mon, 14 Nov 2022 08:39:05 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 6293760F21;
	Mon, 14 Nov 2022 08:39:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BF878C433D6;
	Mon, 14 Nov 2022 08:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668415139;
	bh=Muy39ws2qzc9C9z89cBDyoYv7kOVNo/ouftCUsXVhXg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=A6H7Fhbsie/ismyskZlBI/ASWRbTcwOB70b2kLJo+M8s+hCMor3qoHIlY8w6f9lQP
	 dpXygTlIFkrdMB1rlMO+gcv5A4BPurMKgA8GqFfH4fpk3KCN3nfUIuaFvfRz0Obo/E
	 FbDQPmswsV5K5OvBLG9I6dii9g1SYYjCi7i/aHI/ud+mkdK2zhmOZk1Ng8M6IiA+EV
	 9JBG+DU3fsQcEEjxiVwvbg19g8Snn4YS9mdWvykeDbRB5dvja1hBORltap8l90LgfH
	 QjJn5ODZbXR4Qc8+dECudIGACwtIqakQUdEju006SR0hgLaM+fUJpAwXvuVN5Fjqmt
	 KB8uB4TpTrsoA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1ouUz4-0001na-QH; Mon, 14 Nov 2022 09:38:27 +0100
Date: Mon, 14 Nov 2022 09:38:26 +0100
From: Johan Hovold <johan@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 16/22] phy: qcom-qmp-combo: add DP configuration tables
Message-ID: <Y3H+gpKZsOH05RET@hovoldconsulting.com>
References: <20221111085643.9478-1-johan+linaro@kernel.org>
 <20221111085643.9478-17-johan+linaro@kernel.org>
 <56752623-d865-2848-3132-4df769a31d39@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <56752623-d865-2848-3132-4df769a31d39@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221114_003903_673948_EE1895B9 
X-CRM114-Status: GOOD (  17.28  )
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

On Sat, Nov 12, 2022 at 10:39:12AM +0300, Dmitry Baryshkov wrote:
> On 11/11/2022 11:56, Johan Hovold wrote:
> > In preparation for merging the USB and DP configurations, add dedicated
> > pointers for the DP serdes and tx tables to the configurations.
> > 
> > Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> > ---
> >   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 45 ++++++++++++-----------
> >   1 file changed, 24 insertions(+), 21 deletions(-)
> > 
> > diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> > index 499368e19e00..b27d1821116c 100644
> > --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> > +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> > @@ -816,6 +816,11 @@ struct qmp_phy_cfg {
> >   	const struct qmp_phy_init_tbl *pcs_usb_tbl;
> >   	int pcs_usb_tbl_num;
> >   
> > +	const struct qmp_phy_init_tbl *dp_serdes_tbl;
> > +	int dp_serdes_tbl_num;
> > +	const struct qmp_phy_init_tbl *dp_tx_tbl;
> > +	int dp_tx_tbl_num;
> > +
> 
> I'd prefer to have DP-specific instance of struct qmp_phy_cfg_tbls here 
> instead of having separate dp-specific fields. WDYT?

No, I don't see any good reason for doing so currently.

You may be able to share a few pointers between some of the SoCs but
only until it turns out they need to override certain sequences anyway
(e.g. sc8280xp which mixes v4 and v5 tables currently).

You'd also need dedicated aggregate table structs for USB and DP and it
seems all of this would just make things more opaque for little gain.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
