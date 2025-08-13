Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0ADBCA0EE0
	for <linux-phy@archiver.kernel.org>; Wed, 13 Aug 2025 13:10:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vz5pNtzrBqWQxSgnTtm+sr6BT83dFpTE1ObK0Fe/rno=; b=G8E3XIdxljghPb
	WTLk0bRrWv4jxr78NzkEX8GS5/cvgO51/ejKS4X4/O1x4RBok9W6fpQYT/dK0A/ZvjjZO5E5HwdXd
	67YpHjNDDnkXkaJ5cXS5vu36HqYXqS4e2T/oubh0+6nmDWRi5cihJ8aVjBu6hoIpMLTrYSZOWsKDH
	axDzf5cDtgPW6TVwT8Umtmq2fQ2Tnp8oMxWc/frVdkhMFRdSRado/5nlnXATLpQIkQrDeeY46bzPW
	oXwJtXTGWxJ37QkUKhk4gV9F4wX8vZCL1w9qIUtdsisPKv8xyohscp3Pqm49cDCm2uj0jqBngV5jP
	5KcilFTs5gftpPunx3Xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umBFF-0000000Diuw-2ZHS;
	Wed, 13 Aug 2025 13:10:21 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umAD6-0000000Daov-2qzq
	for linux-phy@lists.infradead.org;
	Wed, 13 Aug 2025 12:04:05 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-458bece40fcso32712135e9.3
        for <linux-phy@lists.infradead.org>; Wed, 13 Aug 2025 05:04:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755086643; x=1755691443; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=jFJEM6gKLS8APrjgYw576J/ohlNo10MJL9Wdiy6gJXU=;
        b=xL43mRWKwrD9D2MZFU4KKXwzklz6K9+EwQS8588hRxkZwB4j2HRtz/j5Hrh9y7ZZfI
         cVC6iDJF5RniRW+pibXf1qUN/8wgXI6OIlBhc20UvdmtplXSiWIgynHuUAUhyQdgMflj
         cLYlbG7qZuq69JSHa4AFma2GA76SZxXP3brMxvsBxvk1I9wXOMr3L6CL+TtJzuIjy/7P
         665EyvwLAzc27zWANLwYT/5iRLhFM+zXSXrn88fN1tJbTTgRu9AR6YXn0lLMAK+dWR15
         2BkAz/o0oCgwevCppPj6TAO2NDtnQ3V/bh3+ir0FCnU/Z7MjQkqrqefFZq3Rp0BnfBIl
         DoFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755086643; x=1755691443;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jFJEM6gKLS8APrjgYw576J/ohlNo10MJL9Wdiy6gJXU=;
        b=B5iGI4/btXdIVRSMQA97yJsU3bKY0L4U9OtlRxU2qKgHQATo4IqWeVyRPOw/4tkm4b
         N/NfZfHpWrWT69BLIDy9Ao+g81/RhVJnCI2fMabVDw7u1/RovDUHrrLXXRrQ0x5F3moS
         YWptjSZQudU/thkxC7kDWUs6aY4X71O1YWY+I6ikao/DHyh4Nedl7xdCW/V44drAedaV
         u6P5NFNUC4yCXQmfMU6tfK7aP+4uE1cgR5q1ZeMBpCqMGDP1bGUvoD9zvVDvvHhVxNTP
         JqDpVTzCNAXgp1ew80P549GPLlF5KnznGhbtrB6F9zKIay10qytHzqEB4ZbqX8PQ6KbI
         EKhA==
X-Forwarded-Encrypted: i=1; AJvYcCUKjmc4iDRbam/LtmsxNA2KS9YNkwbgu73i0Wu1KKWhaNORPa681/+mOCRVUY71llAVkzshLaYgFh4=@lists.infradead.org
X-Gm-Message-State: AOJu0YweGmlK89JVJSYg8BcdOuArxQZlNxhCAYCmzJmBwz24gCwEHiSS
	SsQalPFg2oEgFT4uiMDv6K8M29S337KvF2tsFbOpOdi6OQk+Cigx5GXcO2+8NuU/Ano=
X-Gm-Gg: ASbGncvhpDpRfHJFTK8mB9OKVOZXX0l6fPiC1cqMggRchR7thhAZD13MVCr5y6wCgfv
	BSP01AWN1XW/PbgonA6ihyzd0+O0gXB7tl6u/IoqG2pf9UznrORk7yAodY8igY6Njt1Hpo3vvwk
	7ZAM38EplNpHoQjO5nQzQVyfFDVUi5GfGFEWcDM9Wt6R9c8ARp9IBg8DXYrEiJkPJIFAo82Uoh4
	7UcOQ4WEh5f+74VO92egBaEgdq7zanj4tlX9o9jNTmbY1GsdLV4utQNay2d1/VBdRKv9qa7DVcx
	nsR0UYNb5nUuwKR6frN2fp0f0HJ9a75ZbAxcfw1lM92IJ9zlzKmB2cCLC5+1M8ygxgS8ZKpFi1+
	L6f1tc89RDF6dcbSoSXmvLoBHVPAC+tSgX+wtfrrBhQwa
X-Google-Smtp-Source: AGHT+IEbIIUvKX+tZSVHZLQC9aoX5f2381vIkWSxUdNWd/V49S21DiHBFi/zBkvX8b3n3gIVaPjB/Q==
X-Received: by 2002:a05:600c:4f12:b0:456:fc1:c286 with SMTP id 5b1f17b1804b1-45a17949c46mr12423815e9.1.1755086642808;
        Wed, 13 Aug 2025 05:04:02 -0700 (PDT)
Received: from linaro.org ([2a02:2454:ff21:ef30:eb1a:a80:21cb:47a8])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b79c3c4beasm46169797f8f.30.2025.08.13.05.04.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Aug 2025 05:04:02 -0700 (PDT)
Date: Wed, 13 Aug 2025 14:04:00 +0200
From: Stephan Gerhold <stephan.gerhold@linaro.org>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Wenbin Yao <quic_wenbyao@quicinc.com>,
	Qiang Yu <qiang.yu@oss.qualcomm.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Konrad Dybcio <konradybcio@kernel.org>
Subject: Re: [PATCH] phy: qcom: qmp-pcie: Fix PHY initialization when powered
 down by firmware
Message-ID: <aJx_KjWFxeYE5U81@linaro.org>
References: <20250812-phy-qcom-qmp-pcie-nocsr-fix-v1-1-9a7d0a5d2b46@linaro.org>
 <f44beed6-72c3-4e86-834b-ac522c786bc7@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f44beed6-72c3-4e86-834b-ac522c786bc7@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250813_050404_719294_2D53260D 
X-CRM114-Status: GOOD (  30.22  )
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

On Wed, Aug 13, 2025 at 12:13:31PM +0200, Konrad Dybcio wrote:
> On 8/12/25 6:30 PM, Stephan Gerhold wrote:
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
> > Cc: stable@vger.kernel.org
> > Fixes: 0cc22f5a861c ("phy: qcom: qmp-pcie: Add PHY register retention support")
> > Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
> > ---
> >  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 6 ++++--
> >  1 file changed, 4 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> > index 95830dcfdec9b1f68fd55d1cc3c102985cfafcc1..6a469a8f5ae7eba6e4d1d702efaae1c658c4321e 100644
> > --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> > +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> > @@ -4339,10 +4339,12 @@ static int qmp_pcie_init(struct phy *phy)
> >  	struct qmp_pcie *qmp = phy_get_drvdata(phy);
> >  	const struct qmp_phy_cfg *cfg = qmp->cfg;
> >  	void __iomem *pcs = qmp->pcs;
> > -	bool phy_initialized = !!(readl(pcs + cfg->regs[QPHY_START_CTRL]));
> >  	int ret;
> >  
> > -	qmp->skip_init = qmp->nocsr_reset && phy_initialized;
> > +	qmp->skip_init = qmp->nocsr_reset &&
> > +		readl(pcs + cfg->regs[QPHY_START_CTRL]) &&
> > +		readl(pcs + cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL]);
> 
> I think it would be good to ensure the value matches platform config
> expectations, i.e. !(val & cfg->pwrdn_ctrl)
> 

I think ((val & cfg->pwrdn_ctrl) == cfg->pwrdn_ctrl) is what you want,
to check if all the bits we would set are actually set? That sounds
reasonable, I'll send a v2 with that soon.

I'll make the same change for QPHY_START_CTRL, to have it consistent
(checking for SERDES_START | PCS_START, which is what we would set).

Thanks,
Stephan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
