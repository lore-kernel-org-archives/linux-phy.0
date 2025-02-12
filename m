Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6560EC021A1
	for <linux-phy@archiver.kernel.org>; Wed, 12 Feb 2025 11:10:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j2zf3MRFfotMvRj/2yhWNYyjrq62tzl4Q/9q0rm2vUg=; b=K/6scpStXm/5Qd
	L8gSbm4Xv8mNQFzn88q0N2Bloug0wrszY+fVqAEOKbv4JUzOjAoEYQQ4IQnatvgBaJALTZp8YCMTF
	vgpq0h1fhAIRJl8EKTU8IY/+z47sP6zOai5ARZW49rbmAG+A5N17ycvMk1uktglTUhxHloKJ/MYBV
	xY0bae+FMBU9/ktaGVN2J5OLyaVSBh43JwQoys/7yUzYBvAptxliD/eI5FVmnInzMsk+IJtIhCoZf
	JFtnmlT+zxnL3uUO+ewuarTBfmNKbd8iOZ0OAf6ZYapsJIG4/1NEZb+UYFDfyi3ls7QpcH9UF6vXr
	FhAvyPeB+k9VYHcBQPpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tiAdA-0000000779h-3mmz;
	Wed, 12 Feb 2025 11:10:12 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tiAaV-000000076k0-173x
	for linux-phy@lists.infradead.org;
	Wed, 12 Feb 2025 11:07:28 +0000
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-543d8badc30so6903533e87.0
        for <linux-phy@lists.infradead.org>; Wed, 12 Feb 2025 03:07:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739358445; x=1739963245; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=0XrcsMcosgMotFmWvKnhVc1K8RooVNeMblYbDmD45Vw=;
        b=tagk8+ahgN2kgYNSaSlidPqIqVUtSPCv6LeA/GTzUUpxMEh3Ml24JMaZTniX4293Ds
         qGXJoDmWQ7hkWtK0UMVlkndDO1UwRLLskn2Mb0be0O6UREw+HizqWICCiQp1XUViKWL4
         zMNmpzq96o1r3Ujij+4Pymk9MDymrXY3lKm3ouEJ245QwKZOHnVRTGjgWR7gs1Rzu0zM
         GT2EQqHnb+/J0WHuMx/GbwImUlOZNBVbgXYNh9rAWWVGAb20C7uTCDcuvH15oIJPC7wc
         MN2y1KyowxdFdENsVrIhWd9qF5kMLtzL1HGwovLM/YgWxL9hj12p96D30eIHy5Igcl0A
         vKGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739358445; x=1739963245;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0XrcsMcosgMotFmWvKnhVc1K8RooVNeMblYbDmD45Vw=;
        b=tQvOfrUUOwzbmB+COILmIAzduQXQrao6v6M3C3X3vjmpvatWJFHoCXo4325VwTSO9x
         nPSLE3RpDCPoVx+da+DKxAov3PXy06R6EELdRdW2kcz0VZOtzmjDpt7K5zFcyCQEjF44
         Ak9QCnj/j4/ByypS383cKrt/UdkoV9huXeNGexCReM5kuDmYvZPLi4xpazqqYz95SSQw
         JDK+X2G/jLYZ9dwWnq7hvjqW4eUNbQNa9X8d1KsLXyPqMb5iTxgz3IQEElhKNeLxCAAg
         hOprI5JZ2g8GXDH38GncMjIx8LRvNS+qA0Vs5BTyZePY0qCQbVm0XpNwtzGh5vq4Zkih
         mMOw==
X-Forwarded-Encrypted: i=1; AJvYcCU90lfNEZ9Y1MTLI5z8qveBI/WizF/jqGDGTazcNyUCI6/YVBpADZWVScF+40oe+Qg4bSjWJMhEw5A=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy0tiMUFKz+fm/bVqewSsLppJwWJK2p0TK9yflv7EdJ5BsUPMni
	x2ZPCqVf+PWzb+JYsFg+YToeJpLzdzhI0ZkiumQJ4gTV8s0nG1gvyEK383Fw05A=
X-Gm-Gg: ASbGncuG1hPhbxtFgx2RSoYi8Xe0r2bJC1QP31kPlPWsWPCNkQB9RqT8+AoGxdCOcJB
	K+sArmCKsNxplozJpsRHK5fy7Iq/uPwfL7GDfwt+S5XXzqGMB+H5+8YWSIgL6PrxqHa3rjlglEI
	jrlOdNmG44gAGvY2HQiLuBl9+U6KQzBTmkLf/u1bBZsslqCQhuLw5/HYzwkQGWBmjbusA/ufVTb
	nDRTfX2/bdUZtPnhCJqsHyDnz9Dr7ThP97PIdo2gg2ObjpmFU6f/0ebAeZQ0OHoOf3HNE2xxa6q
	V/A2XrPUlH942u6TxBB6OlQCK+jl8KravQDZnItoqsx5GrNtr2RLN9+VIhj5ch18MFINLBo=
X-Google-Smtp-Source: AGHT+IGk7ilb21dI1tWaLiaK33rLAvEcR3Cz6NPO4Liu0mG/KS3Lk7rbmF6c9dM+6Y2HrYHp/mPLwA==
X-Received: by 2002:a05:6512:31d3:b0:545:61b:c84b with SMTP id 2adb3069b0e04-5451818c5b6mr933058e87.32.1739358445264;
        Wed, 12 Feb 2025 03:07:25 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5450a76bc6fsm1018745e87.241.2025.02.12.03.07.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Feb 2025 03:07:23 -0800 (PST)
Date: Wed, 12 Feb 2025 13:07:21 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: "Wenbin Yao (Consultant)" <quic_wenbyao@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, p.zabel@pengutronix.de, 
	abel.vesa@linaro.org, quic_qianyu@quicinc.com, neil.armstrong@linaro.org, 
	manivannan.sadhasivam@linaro.org, quic_devipriy@quicinc.com, konrad.dybcio@oss.qualcomm.com, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] phy: qcom: qmp-pcie: Add PHY register retention
 support
Message-ID: <fwfxhy535nm7227wzlwlojxyxrr3ond5hmc3njqbcje3usfh5t@hqrnbpmdqweg>
References: <20250211094231.1813558-1-quic_wenbyao@quicinc.com>
 <20250211094231.1813558-3-quic_wenbyao@quicinc.com>
 <7deghiadmomrz7w7vq3v7nkzq2kabq4xbhkouswjrexif7pip3@tvjlpvuulxvp>
 <791fa29e-a2b5-d5f6-3cbc-0f499b463262@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <791fa29e-a2b5-d5f6-3cbc-0f499b463262@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250212_030727_314363_B54B1DF9 
X-CRM114-Status: GOOD (  22.93  )
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

On Wed, Feb 12, 2025 at 04:31:21PM +0800, Wenbin Yao (Consultant) wrote:
> On 2/12/2025 8:13 AM, Dmitry Baryshkov wrote:
> > On Tue, Feb 11, 2025 at 05:42:31PM +0800, Wenbin Yao wrote:
> > > From: Qiang Yu <quic_qianyu@quicinc.com>
> > > 
> > > Some QCOM PCIe PHYs support no_csr reset. Unlike BCR reset which resets the
> > > whole PHY (hardware and register), no_csr reset only resets PHY hardware
> > > but retains register values, which means PHY setting can be skipped during
> > > PHY init if PCIe link is enabled in booltloader and only no_csr is toggled
> > > after that.
> > > 
> > > Hence, determine whether the PHY has been enabled in bootloader by
> > > verifying QPHY_START_CTRL register. If it's programmed and no_csr reset is
> > > available, skip BCR reset and PHY register setting to establish the PCIe
> > > link with bootloader - programmed PHY settings.
> > > 
> > > Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
> > > Signed-off-by: Wenbin Yao <quic_wenbyao@quicinc.com>
> > > ---
> > >   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 91 +++++++++++++++---------
> > >   1 file changed, 58 insertions(+), 33 deletions(-)
> > > 

> > > @@ -4042,16 +4057,22 @@ static int qmp_pcie_power_on(struct phy *phy)
> > >   	unsigned int mask, val;
> > >   	int ret;
> > > -	qphy_setbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
> > > -			cfg->pwrdn_ctrl);
> > > +	/*
> > > +	 * Write CSR register for phy that doesn't support no_csr
> > what is CSR register?
> The registers of PHY.

So 'CSR registers for phy' means 'registers of PHY for phy'? that seems
incorrect.

> > 
> > > +	 * reset or has not been initialized
> > > +	 */
> > > +	if (!qmp->nocsr_reset || !qmp->phy_initialized) {
> > > +		qphy_setbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
> > > +				cfg->pwrdn_ctrl);
> > > -	if (qmp->mode == PHY_MODE_PCIE_RC)
> > > -		mode_tbls = cfg->tbls_rc;
> > > -	else
> > > -		mode_tbls = cfg->tbls_ep;
> > > +		if (qmp->mode == PHY_MODE_PCIE_RC)
> > > +			mode_tbls = cfg->tbls_rc;
> > > +		else
> > > +			mode_tbls = cfg->tbls_ep;
> > > -	qmp_pcie_init_registers(qmp, &cfg->tbls);
> > > -	qmp_pcie_init_registers(qmp, mode_tbls);
> > > +		qmp_pcie_init_registers(qmp, &cfg->tbls);
> > > +		qmp_pcie_init_registers(qmp, mode_tbls);
> > > +	}
> > >   	ret = clk_bulk_prepare_enable(qmp->num_pipe_clks, qmp->pipe_clks);
> > >   	if (ret)

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
