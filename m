Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D375C4332F
	for <linux-phy@archiver.kernel.org>; Mon, 14 Nov 2022 08:54:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=13aE2kFP6pY3PqZmwUU6x0VOtLYrW9V0f4iAHYlwS1I=; b=bnjuefmj+wFKfR
	vbAmkGlJxpgG0AW31fuF9iJfsh6hYSle0mnx8sro6nKGDzAGk80mSBgQSWtTXdw2vBS6cGVFwUb6J
	6RkoGL2Pp5roNG6Xpko6D3GBUWLviSNUP7HQ1KIaAsueSvr0N3wZozd12kEdjiGPFJ8YxRvglmLsn
	5BukTGDG4MtdezGmTulPB92usa9pGh4gOcGQ+il0e1sJZ66oJy+Cy1xE7h16610lbpiKQRF7ul8D2
	gUubUE+bAw5hQRfqr8GIQQvEORhd9zLBgqSZDef6xGfohFHNg3BKUXI1QnaBEUBfBHUJVDBnAkqag
	XwlIBcPVLVNMMe+dCQWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouVF2-00GyoT-ED; Mon, 14 Nov 2022 08:54:56 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouVEz-00GynG-Ly
	for linux-phy@lists.infradead.org; Mon, 14 Nov 2022 08:54:55 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id E1BEF60F2C;
	Mon, 14 Nov 2022 08:54:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4C008C433D6;
	Mon, 14 Nov 2022 08:54:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668416092;
	bh=pp5pDQZWN6NVccBVIUaPNVdc4w9kyJ+/i8wyV2Ao5/g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TM6hdfxGKtq2rX9QM4eMo3x3NSdDkyzMnPsOCbXreJK/TyrHS4KSYoMz+xf7pwtkk
	 BB3C/2v+PUUgk1g5sjiFKlIVfbONn1GP+52rmOXLLMVtQaTOTYVpgxAhziwfVXGtBX
	 3LMbJDgJjWVDlPTKX0jxGvInveBsT4L6YKHOIK9gFYeqKWW/ZQmFb0mKYNpMKe8X7t
	 Wea6I7lkAyN8mcjxJSINQDJfjYWq1vqnARWJ1+bcEUYl0aPQ+GUktHDKkUDXaMNmlB
	 yMvle51AFzQqSDHvXM/oj9DIvGeFrZZBolNDZG4Ib8X55pIwoAVYL4qn416K0gd8lX
	 EGKyUxf1ffXmQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1ouVER-0001zw-7f; Mon, 14 Nov 2022 09:54:19 +0100
Date: Mon, 14 Nov 2022 09:54:19 +0100
From: Johan Hovold <johan@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 17/22] phy: qcom-qmp-combo: merge USB and DP
 configurations
Message-ID: <Y3ICOwr2ld9cdgrK@hovoldconsulting.com>
References: <20221111085643.9478-1-johan+linaro@kernel.org>
 <20221111085643.9478-18-johan+linaro@kernel.org>
 <5fd7a56f-db12-deb3-753a-22867526d90b@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5fd7a56f-db12-deb3-753a-22867526d90b@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221114_005453_786018_943E920A 
X-CRM114-Status: GOOD (  18.28  )
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

On Sat, Nov 12, 2022 at 10:43:14AM +0300, Dmitry Baryshkov wrote:
> On 11/11/2022 11:56, Johan Hovold wrote:
> > It does not really make any sense to keep separate configuration
> > structures for the USB and DP parts of the same PHY so merge them.
> > 
> > Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> > ---
> >   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 182 +++++++---------------
> >   1 file changed, 57 insertions(+), 125 deletions(-)
> > 
> > diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> > index b27d1821116c..249912b75964 100644
> > --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> > +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> > @@ -798,10 +798,7 @@ static const u8 qmp_dp_v5_voltage_swing_hbr_rbr[4][4] = {
> >   
> >   struct qmp_phy;
> >   
> > -/* struct qmp_phy_cfg - per-PHY initialization config */
> >   struct qmp_phy_cfg {
> > -	/* phy-type - PCIE/UFS/USB */
> > -	unsigned int type;
> >   	int lanes;
> 
> int lanes doesn't really make sense here in my opinion. It should be 
> usb_lanes and dp_lanes.

It doesn't make much less sense than having it here currently do.

All of these USB-C PHYs are dual lane for bi-directional SS USB and
quad lane for uni-directional DP (even if only CC1 orientation and lanes
2 and 3 are currently supported).

I should probably just drop the lanes parameter completely, either as a
preparatory clean up or as follow-on one (e.g. also a bit depending on
if there are other reasons for respinning a v2).

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
