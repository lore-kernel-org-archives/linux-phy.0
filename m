Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6CDB6CA0ED1
	for <linux-phy@archiver.kernel.org>; Fri, 15 Aug 2025 13:14:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XBIpal2MCtx5Z3E71YRN/czQCm9iy0u/6+I3jt/0gF0=; b=KUbgzQHr0Wmz4P
	Vf3jVv4fNva4s7ZHo9lv4p550UwLwALf2PLFBGVR7YOClxTzwuhcH/FOCR9qyE9ZbIiW/F7j6qsQT
	+iceVUeVF6ZB1UAkoKUznpmrFRjbmtuEASK2qyazjZI/P/VKHKDt8TZZysfuCzxS2HcJTNRLAKAHm
	SPkthukXcbv1NZGDPXNUhRi2nX/z1uCnFm7PkTk/ysk3Ieib/t03KnTV9gA2g/yNSFx+ibjkVKOfZ
	UDbow2xSiGYVLllmfs+JmqKVLhYVAV5SLDvIrOBJXzZbp1bls5u5fXdeYJRPY/gK/rTRSWCabjo60
	m9pv2BE7nN5Rkhd7drFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umuG4-00000002Xzg-0FS3;
	Fri, 15 Aug 2025 13:14:12 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umqy6-0000000262z-0NvH
	for linux-phy@lists.infradead.org;
	Fri, 15 Aug 2025 09:43:27 +0000
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-afcb61f6044so317880266b.0
        for <linux-phy@lists.infradead.org>; Fri, 15 Aug 2025 02:43:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755251004; x=1755855804; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=jIr+uIGhy3/hPvKk8/B9PmGr5pRUF0q2I5T786hltSY=;
        b=ojtLebPDQaSHfPyLEHjqfhD4UcWyEoLcFweyOxbeto9jHn+GLUczRcnk3GQShxz5lR
         UJq1n+Vq3K62WCocxIBOZFfjP2GdBac+L9jmnakBbGFxHoYus0S9+wVzeyNTTRE0G5VX
         LSBZvhfHPbcRQzeTto2uWUpXLq3YQi6nvTLlJdG+XkAMtNV0TyLCs58wteaWw7+ktwdW
         NNcA8UBB82ud3K0L8mpij9Qo2I1G4Wzo1qkBy1sYau4a21kgKGoYydbM0kIuI1Q55Slu
         bWXkhtHqOcs6WzBJUw4xqshUkNAjkzQaGNADGg0y2xfzRe825ZiNIKg/2Sbtko9loEeu
         Kyww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755251004; x=1755855804;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jIr+uIGhy3/hPvKk8/B9PmGr5pRUF0q2I5T786hltSY=;
        b=lDl0JARRLiCZQ84/uSHafTvM528KkEKB/a/Gcf+oClFv3cvKPXemTrIG7BxJil1tQC
         YVeX5YUzo1zr0Zv9r2U85qiDSLHvzCtsdCMySzj/QZSZ5cp3LXA203oFDX9XwkD6KxI1
         FbV2cHk0eZucX1EhNpzRvg/xEfqdp/sDLXXffTAc/j2USFnve0BwCT/vw3pYG9ZxzPYQ
         nOXhXDCA/eRrgPNM3gKOdklLjx4d3oyECUuB2FlwCuI2FF1iFMEPDzA+0MDdIUvyLvC9
         B3mWCF2pXVVfYk0e7NssI95JeU7h5zTjtcDxz1fczSDrOl+2PVuP/wsfOuvK1DH34ybu
         ZgwA==
X-Forwarded-Encrypted: i=1; AJvYcCXrhOLdPZ9aSiqJ2OmIUauk1UsxTZ4c71RpEXnxWMik65jVejAjTRV2xJfwrp/cl/uM/ienRJ0dqpo=@lists.infradead.org
X-Gm-Message-State: AOJu0YxqmQGIJZIBheKEeRVETbWf1iwrQX4t9yvgxd+HIVX/M/krQXCh
	w4Y7kMPbj8arIVhEFJ40PndUIWqM2N8LtDMns3GTDYFPd/NEnIgwHWd1GxgEZSLOf2s=
X-Gm-Gg: ASbGnctBNILaUvBoVStarenI+W57Sn9vNpsxsk7UA8Y5r4P5qM1B/mKHNLiZBSQRrHE
	MI7WQEzippIJu/lH1z+ciWlMjYG3B+nMoT4QbJmWmDhy8SPkLWYVtgxTYCIXmTLjwFk9v1xDJSh
	kku1rCWlivWHJPA0TSmduXTrMMJYzmCykwFe1YVm8QoxibvDqwRzLwkkQT4bx7BJV6Hf0NyZnCc
	ImwULgajKHRYJaJPiZMq+DHpwIm3lOHUxpMN79mC34YEwfnj8p6DnrmKAjq7D7NdRZhZAEiqtjZ
	Hh13nuhONyVQxD2BnMR07QURxApehonDm2o2FJN2mmczoJ/kM/jVej4VXdyT9z0vSEXwXH6cvmO
	z4TfgPHlERaK4YZby49DZ5i8Ys2qEOyBoVA==
X-Google-Smtp-Source: AGHT+IG3FtBw8Sw50EV/ShR8IgGNVLCbfdP5Y/YJBpfd6Jr9H+5a0yrsFxM506Jl/2wK+oZGIgZH4Q==
X-Received: by 2002:a17:906:7310:b0:af8:fded:6b7a with SMTP id a640c23a62f3a-afcbd80b8bemr620525866b.17.1755251004118;
        Fri, 15 Aug 2025 02:43:24 -0700 (PDT)
Received: from linaro.org ([2a02:2454:ff21:ef30:68bb:56a:7ad6:2647])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afcdce53f37sm105301066b.21.2025.08.15.02.43.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Aug 2025 02:43:23 -0700 (PDT)
Date: Fri, 15 Aug 2025 11:43:18 +0200
From: Stephan Gerhold <stephan.gerhold@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Wenbin Yao <quic_wenbyao@quicinc.com>,
	Qiang Yu <qiang.yu@oss.qualcomm.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Konrad Dybcio <konradybcio@kernel.org>
Subject: Re: [PATCH v2] phy: qcom: qmp-pcie: Fix PHY initialization when
 powered down by firmware
Message-ID: <aJ8BNq7NLgYzzOMA@linaro.org>
References: <20250814-phy-qcom-qmp-pcie-nocsr-fix-v2-1-fe562b5d02a1@linaro.org>
 <e5hn42qxz2eqgjanyoxb2456wvuw6zy55ibbg6fh33jma7utvq@mlq2a57owz4g>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e5hn42qxz2eqgjanyoxb2456wvuw6zy55ibbg6fh33jma7utvq@mlq2a57owz4g>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250815_024326_146587_640E1F5B 
X-CRM114-Status: GOOD (  40.37  )
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

On Thu, Aug 14, 2025 at 05:26:05PM -0500, Bjorn Andersson wrote:
> On Thu, Aug 14, 2025 at 11:27:10AM +0200, Stephan Gerhold wrote:
> > Commit 0cc22f5a861c ("phy: qcom: qmp-pcie: Add PHY register retention
> > support") added support for using the "no_csr" reset to skip configuration
> > of the PHY if the init sequence was already applied by the boot firmware.
> > The expectation is that the PHY is only turned on/off by using the "no_csr"
> > reset, instead of powering it down and re-programming it after a full
> > reset.
> > 
> > The boot firmware on X1E does not fully conform to this expectation: If the
> > PCIe3 link fails to come up (e.g. because no PCIe card is inserted), the
> > firmware powers down the PHY using the QPHY_PCS_POWER_DOWN_CONTROL
> > register. The QPHY_START_CTRL register is kept as-is, so the driver assumes
> > the PHY is already initialized and skips the configuration/power up
> > sequence. The PHY won't come up again without clearing the
> > QPHY_PCS_POWER_DOWN_CONTROL, so eventually initialization fails:
> > 
> >   qcom-qmp-pcie-phy 1be0000.phy: phy initialization timed-out
> >   phy phy-1be0000.phy.0: phy poweron failed --> -110
> >   qcom-pcie 1bd0000.pcie: cannot initialize host
> >   qcom-pcie 1bd0000.pcie: probe with driver qcom-pcie failed with error -110
> > 
> > This can be reliably reproduced on the X1E CRD, QCP and Devkit when no card
> > is inserted for PCIe3.
> > 
> > Fix this by checking the QPHY_PCS_POWER_DOWN_CONTROL register in addition
> > to QPHY_START_CTRL. If the PHY is powered down with the register, it
> > doesn't conform to the expectations for using the "no_csr" reset, so we
> > fully re-initialize with the normal reset sequence.
> > 
> > Also check the register more carefully to ensure all of the bits we expect
> > are actually set. A simple !!(readl()) is not enough, because the PHY might
> > be only partially set up with some of the expected bits set.
> > 
> > Cc: stable@vger.kernel.org
> > Fixes: 0cc22f5a861c ("phy: qcom: qmp-pcie: Add PHY register retention support")
> > Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
> > ---
> > Changes in v2:
> > - Ensure that all expected bits are set (Konrad)
> > - Link to v1: https://lore.kernel.org/r/20250812-phy-qcom-qmp-pcie-nocsr-fix-v1-1-9a7d0a5d2b46@linaro.org
> > ---
> >  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 14 ++++++++++++--
> >  1 file changed, 12 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> > index 95830dcfdec9b1f68fd55d1cc3c102985cfafcc1..80973527fafcb294273dff1864828532dab738db 100644
> > --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> > +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> > @@ -3067,6 +3067,14 @@ struct qmp_pcie {
> >  	struct clk_fixed_rate aux_clk_fixed;
> >  };
> >  
> > +static bool qphy_checkbits(const void __iomem *base, u32 offset, u32 val)
> > +{
> > +	u32 reg;
> > +
> > +	reg = readl(base + offset);
> > +	return (reg & val) == val;
> > +}
> > +
> >  static inline void qphy_setbits(void __iomem *base, u32 offset, u32 val)
> >  {
> >  	u32 reg;
> > @@ -4339,10 +4347,12 @@ static int qmp_pcie_init(struct phy *phy)
> >  	struct qmp_pcie *qmp = phy_get_drvdata(phy);
> >  	const struct qmp_phy_cfg *cfg = qmp->cfg;
> >  	void __iomem *pcs = qmp->pcs;
> > -	bool phy_initialized = !!(readl(pcs + cfg->regs[QPHY_START_CTRL]));
> >  	int ret;
> >  
> > -	qmp->skip_init = qmp->nocsr_reset && phy_initialized;
> > +	qmp->skip_init = qmp->nocsr_reset &&
> > +		qphy_checkbits(pcs, cfg->regs[QPHY_START_CTRL], SERDES_START | PCS_START) &&
> > +		qphy_checkbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL], cfg->pwrdn_ctrl);
> 
> IMHO the "phy_initialized" variable does provide valuable context to
> what those (now) two lines represents. That is particularly relevant as
> the second one is active low...so at least I need to think a bit extra
> to understand what's going on.
> 

I dropped the "phy_initialized" variable mainly because it didn't "look
good" together with the line wrapping of the two new longer lines. :-)

Perhaps it would already help to reuse and clarify the comment block
below, like this?

Thanks,
Stephan

@@ -4339,16 +4347,21 @@ static int qmp_pcie_init(struct phy *phy)
 	struct qmp_pcie *qmp = phy_get_drvdata(phy);
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
 	void __iomem *pcs = qmp->pcs;
-	bool phy_initialized = !!(readl(pcs + cfg->regs[QPHY_START_CTRL]));
 	int ret;
 
-	qmp->skip_init = qmp->nocsr_reset && phy_initialized;
 	/*
-	 * We need to check the existence of init sequences in two cases:
-	 * 1. The PHY doesn't support no_csr reset.
-	 * 2. The PHY supports no_csr reset but isn't initialized by bootloader.
-	 * As we can't skip init in these two cases.
+	 * We can skip PHY initialization if all of the following conditions
+	 * are met:
+	 *  1. The PHY supports the nocsr_reset that preserves the PHY config.
+	 *  2. The PHY was started (and not powered down again) by the
+	 *     bootloader, with all of the expected bits set correctly.
+	 * In this case, we can continue without having the init sequence
+	 * defined in the driver.
 	 */
+	qmp->skip_init = qmp->nocsr_reset &&
+		qphy_checkbits(pcs, cfg->regs[QPHY_START_CTRL], SERDES_START | PCS_START) &&
+		qphy_checkbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL], cfg->pwrdn_ctrl);
+
 	if (!qmp->skip_init && !cfg->tbls.serdes_num) {
 		dev_err(qmp->dev, "Init sequence not available\n");
 		return -ENODATA;

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
