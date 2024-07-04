Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8935C30653
	for <linux-phy@archiver.kernel.org>; Thu,  4 Jul 2024 16:04:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ri0mvYxquvtryhc0Lb/g+0cohrhRGvSC1GVWj6D5K/c=; b=GxU/wmeBVez50k
	qapiYxm5fXL1IPrrmfVgCBJ+/noKc6iKLwXlxhkxPU0SAnIku+S3tRwNMzYw78C5/v3zad89ACv1m
	ligOpfOn4oYl5fBZqbgNlJp04c5h1EoPK4OlNmZahQfzNDlGQCxt25vyDlj0x+yqc/fJ5teDN1ejw
	VskJQAOq4dWARmyEGoAJtFFaPmd8i6ZkH3egYDPd/xTcmnlYChBOv+fqRyUii3/x8jXqVhjsxUO46
	VEvzMpg5rAljD2+M5UXKMx83updPXClFE8nPsGaBikiUaJkUPSdlRnV4SXPoxGTlfol2pohY2GL+l
	Le5v4hs24ulAqn7BJylQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPOwa-0000000Dn1n-2ayJ;
	Thu, 04 Jul 2024 16:04:24 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPOwW-0000000Dn15-483p;
	Thu, 04 Jul 2024 16:04:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=NUvYT0Apw8SqjInlbdvt2ov0pZsd3AGE3tETszdRDzg=; b=uctUXtstqOdYStp1RAdEevee8A
	og2m1rbeRGyNCyWKUOMtyM5AqIVxQFyxOPDwVFm9FnkbszNQ36vazTBa9yXYKCDMQBhsJURhhsCMA
	j1mTGX2YuuLQQvVFM9F5PJp4GaLgK5ASkZXssZl/rnBc5yDOus60fNPX7zh7xaHLB3Ec=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1sPOvS-001pKc-Qp; Thu, 04 Jul 2024 18:03:14 +0200
Date: Thu, 4 Jul 2024 18:03:14 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Tengfei Fan <quic_tengfan@quicinc.com>
Cc: Andrew Halaney <ahalaney@redhat.com>, andersson@kernel.org,
	konrad.dybcio@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, djakov@kernel.org, mturquette@baylibre.com,
	sboyd@kernel.org, jassisinghbrar@gmail.com,
	herbert@gondor.apana.org.au, davem@davemloft.net,
	manivannan.sadhasivam@linaro.org, will@kernel.org, joro@8bytes.org,
	conor@kernel.org, tglx@linutronix.de, amitk@kernel.org,
	thara.gopinath@gmail.com, linus.walleij@linaro.org,
	wim@linux-watchdog.org, linux@roeck-us.net, rafael@kernel.org,
	viresh.kumar@linaro.org, vkoul@kernel.org, edumazet@google.com,
	kuba@kernel.org, pabeni@redhat.com, mcoquelin.stm32@gmail.com,
	robimarko@gmail.com, bartosz.golaszewski@linaro.org,
	kishon@kernel.org, quic_wcheng@quicinc.com, alim.akhtar@samsung.com,
	avri.altman@wdc.com, bvanassche@acm.org, agross@kernel.org,
	gregkh@linuxfoundation.org, quic_tdas@quicinc.com,
	robin.murphy@arm.com, daniel.lezcano@linaro.org,
	rui.zhang@intel.com, lukasz.luba@arm.com, quic_rjendra@quicinc.com,
	ulf.hansson@linaro.org, quic_sibis@quicinc.com,
	otto.pflueger@abscue.de, luca@z3ntu.xyz, neil.armstrong@linaro.org,
	abel.vesa@linaro.org, bhupesh.sharma@linaro.org,
	alexandre.torgue@foss.st.com, peppe.cavallaro@st.com,
	joabreu@synopsys.com, netdev@vger.kernel.org, lpieralisi@kernel.org,
	kw@linux.com, bhelgaas@google.com, krzysztof.kozlowski@linaro.org,
	u.kleine-koenig@pengutronix.de, dmitry.baryshkov@linaro.org,
	quic_cang@quicinc.com, danila@jiaxyga.com,
	quic_nitirawa@quicinc.com, mantas@8devices.com, athierry@redhat.com,
	quic_kbajaj@quicinc.com, quic_bjorande@quicinc.com,
	quic_msarkar@quicinc.com, quic_devipriy@quicinc.com,
	quic_tsoni@quicinc.com, quic_rgottimu@quicinc.com,
	quic_shashim@quicinc.com, quic_kaushalk@quicinc.com,
	quic_tingweiz@quicinc.com, quic_aiquny@quicinc.com,
	srinivas.kandagatla@linaro.org, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org, linux-clk@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-crypto@vger.kernel.org,
	linux-scsi@vger.kernel.org, linux-usb@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
	linux-gpio@vger.kernel.org, linux-watchdog@vger.kernel.org,
	linux-pci@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
	kernel@quicinc.com
Subject: Re: [PATCH 29/47] dt-bindings: net: qcom,ethqos: add description for
 qcs9100
Message-ID: <add1bdda-2321-4c47-91ef-299f99385bc8@lunn.ch>
References: <20240703025850.2172008-1-quic_tengfan@quicinc.com>
 <20240703025850.2172008-30-quic_tengfan@quicinc.com>
 <u5ekupjqvgoehkl76pv7ljyqqzbnnyh6ci2dilfxfkcdvdy3dp@ehdujhkul7ow>
 <f4162b7f-d957-4dd6-90a0-f65c1cbc213a@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f4162b7f-d957-4dd6-90a0-f65c1cbc213a@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240704_090421_045692_8A32B22C 
X-CRM114-Status: GOOD (  15.74  )
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

On Thu, Jul 04, 2024 at 09:13:59AM +0800, Tengfei Fan wrote:
> 
> 
> On 7/3/2024 11:09 PM, Andrew Halaney wrote:
> > On Wed, Jul 03, 2024 at 10:58:32AM GMT, Tengfei Fan wrote:
> > > Add the compatible for the MAC controller on qcs9100 platforms. This MAC
> > > works with a single interrupt so add minItems to the interrupts property.
> > > The fourth clock's name is different here so change it. Enable relevant
> > > PHY properties. Add the relevant compatibles to the binding document for
> > > snps,dwmac as well.
> > 
> > This description doesn't match what was done in this patch, its what
> > Bart did when he made changes to add the sa8775 changes. Please consider
> > using a blurb indicating that this is the same SoC as sa8775p, just with
> > different firmware strategies or something along those lines?
> 
> I will update this commit message as you suggested.

Hi Andrew, Tengfei

Please trim emails when replying to just the needed context.

Thanks
	Andrew

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
