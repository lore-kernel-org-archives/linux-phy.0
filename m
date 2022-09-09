Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 210F0ECAAA1
	for <linux-phy@archiver.kernel.org>; Fri,  9 Sep 2022 13:20:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cdhn96xFshLEJ8+3+R7r4njJJy0Vlr3lSlXf9zg0JWA=; b=rKd233EeOYWnUB
	nq/wIsfeYclJssKtILABw3vQSeVh6w8my3E7ILPFYz8gFOflhXHfD9CV9rwh86Snnf/3oAKtoRFgB
	68mp2Ydq4JNiLiHpHW0Uq+TiqWX7+atgz7YNQo57aaQ6P11TsgZdp+Wzfd62bzNHzYBcSn7ezFvr1
	srMEnQqb7g0AoROmEbu83yEz7h42fHV4DEi28Dwl1jKu/LMjezF4NAWXacSKWe+9c44k2KBmFeWld
	I0s5W/rk/ERTSk54lHeFDaSle+akeFAVqr7qEApVvWgsMONB+BTF412TcYbDp7h4VyR6GXlVAZ7U2
	TmR6aBtm8klwktAX99GA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWdvy-00GIF4-Iz; Fri, 09 Sep 2022 13:20:38 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWdvw-00GIEj-O7
	for linux-phy@lists.infradead.org; Fri, 09 Sep 2022 13:20:37 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 5A2BB61D13;
	Fri,  9 Sep 2022 13:20:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B68F5C433C1;
	Fri,  9 Sep 2022 13:20:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662729635;
	bh=OPjDbxZoA9mO4XMuKYHJGa1f/L+5w3XwGd4XzkJ8R0A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CIvWAb/OYnRpDiKTv5aVChkLKNie0kPXsvHHNwV/FfS7fsToT+t6T5RkUO0x/0TVF
	 NZHl4pS7j7yNoV68SCyHxKl9ScvedeLhXWT7Xj/ZkdTBjxCQBvs7vOEO8l+4oVA3ho
	 tZFqvkEV/x7ZP9P8lDuh7gEr/xXZ1JnPTG055hJR8c4lpuletoPgsDDur4VnblQdau
	 5lb79mIkMay7/+T0CKxQCyuDUAmXRp+B3DdDXguce+Z65soRm1LlG7JzMqkUJpxtd4
	 FeJ6yrHb/ctsktHWVtVCxPTxSXMLLSzvbW1tXnxHB+PnTt6tu1ClvL3hbsKYYdvA44
	 g+zQsEAdgSplQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1oWdw4-00024Y-En; Fri, 09 Sep 2022 15:20:45 +0200
Date: Fri, 9 Sep 2022 15:20:44 +0200
From: Johan Hovold <johan@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 02/16] phy: qcom-qmp-combo: drop unused defines
Message-ID: <Yxs9rCf/JTL5BA1S@hovoldconsulting.com>
References: <20220907110728.19092-1-johan+linaro@kernel.org>
 <20220907110728.19092-3-johan+linaro@kernel.org>
 <7370ba1d-472c-b036-4155-f86ca13f9824@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7370ba1d-472c-b036-4155-f86ca13f9824@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_062036_839313_C7FA413C 
X-CRM114-Status: GOOD (  16.69  )
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

On Fri, Sep 09, 2022 at 12:21:12PM +0300, Dmitry Baryshkov wrote:
> On 07/09/2022 14:07, Johan Hovold wrote:
> > Drop defines and enums that are unused since the QMP driver split.
> > 
> > Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> > ---
> >   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 15 ---------------
> >   1 file changed, 15 deletions(-)
> > 
> > diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> > index 9ce2ab56be4c..838f7e328b55 100644
> > --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> > +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> > @@ -28,16 +28,11 @@
> >   #define SW_RESET				BIT(0)
> >   /* QPHY_POWER_DOWN_CONTROL */
> >   #define SW_PWRDN				BIT(0)
> > -#define REFCLK_DRV_DSBL				BIT(1)
> >   /* QPHY_START_CONTROL bits */
> >   #define SERDES_START				BIT(0)
> >   #define PCS_START				BIT(1)
> > -#define PLL_READY_GATE_EN			BIT(3)
> >   /* QPHY_PCS_STATUS bit */
> >   #define PHYSTATUS				BIT(6)
> > -#define PHYSTATUS_4_20				BIT(7)
> > -/* QPHY_PCS_READY_STATUS & QPHY_COM_PCS_READY_STATUS bit */
> > -#define PCS_READY				BIT(0)
> 
> I think these defines, describing registers and bits, can go to the 
> common header instead.

Adding those to a common header can be done later if needed at all (and
would include adding a proper prefix etc).

> For the rest of the patch:
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
