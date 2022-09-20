Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ACB64ECAAD8
	for <linux-phy@archiver.kernel.org>; Tue, 20 Sep 2022 09:36:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bR4HJYyZAisMMafTVe+aMs1B4JzL559D9ws7NKLeu0I=; b=KOnZ8+ME/jLM6M
	NXicuW8mR9s7ZsCsPb8EXY7lASSTZZB2ZRiw1PEbZXJY9dZY1fuhpCqJuTQP4PkKnw9Z/41xasPW6
	a3bO45y5cFfsjevIxWD1CM//9v8tPioZRlcmStbNn0Tjkd18MQyhZAwEb39vdzF5H4UNvOYrsh+ry
	T0eoF11Z10w4n/O6X+FNKOLphlo4QEqvvWwauUsiqaEv2V3+Orp9eB56QKWysKqUmEm+uwaFPP6Jr
	EmIvzbjbs8oe7IVSQWEl1yowEPzf66Rehi86YqRuBAEC0RMvSO3+zejbA51Q092L6omKMbOunMtct
	OtbaUlVtyqQJUiHqCdHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaZff-002SfM-Ax; Tue, 20 Sep 2022 09:36:04 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaZYq-002Obk-MK
	for linux-phy@lists.infradead.org; Tue, 20 Sep 2022 09:29:02 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id E58CE62632;
	Tue, 20 Sep 2022 09:28:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 53F92C433D6;
	Tue, 20 Sep 2022 09:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663666139;
	bh=c9tNWaX+fG4Wy0u/MHxZ7+cfWDSAeFQOc1Tp0X/dp30=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JBs016aYWv/9hPEvaf9RCowNRCwkfgSvgZ7FXp58il6YCQZHRDQdbJ3QF+GokU2rs
	 UrY8lL9GIL3WSxvpcKol9BBH/PxXKlmw228u73oxfTbt68kcD3n2rUF+meD/+brhjf
	 o8135p5R8VrhCW7O8GXaSvR/DkoEPgLvPjA9p7Cwu0bRzGwMsLaKZw2Lgqkd4apvNk
	 /ZGuQbF9NHpTVNihvmN4C+qBWxXcKgL8trBUsYxsbyeXHfObkN3MJYxThz2i/QmIYj
	 z09laYILSS8/AdN0SBWYYjPZL3dGE2NAuUo+KnHdrXwkJfsrXMHs49XTZUZ9c1h8RS
	 qfCzkbC/9pcwQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1oaZYr-0002Wy-8G; Tue, 20 Sep 2022 11:29:01 +0200
Date: Tue, 20 Sep 2022 11:29:01 +0200
From: Johan Hovold <johan@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: andersson@kernel.org, kishon@ti.com, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: qcom-qmp-pcie: Fix the SM8450 PCS registers
Message-ID: <YymH3XCz2r/pj0xY@hovoldconsulting.com>
References: <20220910063857.17372-1-manivannan.sadhasivam@linaro.org>
 <YylhpBtz8d2dqJhv@matsya>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YylhpBtz8d2dqJhv@matsya>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_022900_813805_8FE5C4E2 
X-CRM114-Status: GOOD (  17.27  )
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

On Tue, Sep 20, 2022 at 12:15:56PM +0530, Vinod Koul wrote:
> On 10-09-22, 12:08, Manivannan Sadhasivam wrote:
> > In the PCS region, registers QPHY_V5_PCS_EQ_CONFIG4 and
> > QPHY_V5_PCS_EQ_CONFIG5 should be used instead of QPHY_V5_PCS_EQ_CONFIG2
> > and QPHY_V5_PCS_EQ_CONFIG3.
> > 
> > This causes high latency when ASPM is enabled, so fix it!
> > 
> > Fixes: 2c91bf6bf290 ("phy: qcom-qmp: Add SM8450 PCIe1 PHY support")
> > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > ---

> > diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5.h
> > index 61a44519f969..cca6455ec98c 100644
> > --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5.h
> > +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5.h
> > @@ -11,7 +11,7 @@
> >  #define QPHY_V5_PCS_G3S2_PRE_GAIN			0x170
> >  #define QPHY_V5_PCS_RX_SIGDET_LVL			0x188
> >  #define QPHY_V5_PCS_RATE_SLEW_CNTRL1			0x198
> > -#define QPHY_V5_PCS_EQ_CONFIG2				0x1e0
> > -#define QPHY_V5_PCS_EQ_CONFIG3				0x1e4

Why are you removing these defines? (They are correct for sc8280xp.)

> > +#define QPHY_V5_PCS_EQ_CONFIG4				0x2e0
> > +#define QPHY_V5_PCS_EQ_CONFIG5				0x2e4
> 
> This conflicts with c0c7769cdae2 ("phy: qcom-qmp: Add SC8280XP USB3 UNI phy")
> 
> where QPHY_V5_PCS_EQ_CONFIG5 was added as 0x1e0
> 
> Do we have a different v5 for SM8450 and SC8280XP?

I can confirm that the PCS_EQ_CONFIG defines added for sc8280xp matches
the vendor's headers for both the combo and USB PHYs.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
