Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A13C2C04A95
	for <linux-phy@archiver.kernel.org>; Thu, 29 Sep 2022 08:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AIqP5WoeRpyKfydsb7X4lcNvuQznkHd0VgVPgIQUaUQ=; b=rj7RK6AFPCNVEt
	pqHkfmES/5Qt4id0fGFffiWQ2XXXnIo3l5GrPtWQDLdeIp+heVwCTlAQwE6KZ/J92JbdHkgpbGpXO
	beuy3LOYjceyxwBXeyfJJGIUse75U5fHkVhNBd4bzekow6h1Er0knpdS2x+rPeCpty53MUzwT4vnZ
	hZAe0tzzWNQeDzyC1SeiMsX9/qfqWs4we5VgidJsf+GeiiR4wZBbzKvNZHWzDT/EasxZgB6o3oEyC
	8hFp7bXyA/CKsELOI3z5S4+rD7j3WlVxrGPZ/QXAL3uZDQShOWpwYYM6Oi1ALoYLllh4dGBjEnu0/
	mBoIIB1JTOyogJPRzL1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odokb-001n8n-28; Thu, 29 Sep 2022 08:18:33 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odokQ-001n5t-Hk
	for linux-phy@lists.infradead.org; Thu, 29 Sep 2022 08:18:24 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id A4E1262071;
	Thu, 29 Sep 2022 08:18:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0CA7DC433D6;
	Thu, 29 Sep 2022 08:18:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664439501;
	bh=THp3JIOFU8Wk1YX5KobyWkuIqKiPW79C9J3yzbH8LG0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ki05WK2TbxZXcDYu5kb7IZCzEjAIEtdUhFQgvDWdExO6gTDlSsRLQO4mBq+3vwtLq
	 6yZv9vHMbwvTPcAvgUmzs6i83YKnBSC57fUysqSdAZC4SKiD3jnKSt4T4EIrGxNAC5
	 4y5kKg+j5zWOwygAN2/1HtJjZBxFlQxsbDFJlKRGJkaCIKSMOrLXoLobRONIc0oxzs
	 Q0AvBxUU+MR1BhtYIA8MndLefbkIRknk0oljHEVm1BMqhIWZ5nyyFUJqm004yPnx/J
	 FJQEjdrSxKivlt/AjKsKUYXh/px8Ow0sqSLJ6k5aUu8bpiQlSr13a8JvtCkJL18Xjq
	 evvqMALb1Zyrg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1odokU-0006ro-Hc; Thu, 29 Sep 2022 10:18:27 +0200
Date: Thu, 29 Sep 2022 10:18:26 +0200
From: Johan Hovold <johan@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 06/13] phy: qcom-qmp-pcie: drop bogus register update
Message-ID: <YzVU0gC4gT9FwBL+@hovoldconsulting.com>
References: <20220928152822.30687-1-johan+linaro@kernel.org>
 <20220928152822.30687-7-johan+linaro@kernel.org>
 <2bc50ea4-ec29-cacc-216b-1c21d2d2f0bc@linaro.org>
 <f9d0fb60-3e62-8f55-015e-88ca2e209323@linaro.org>
 <YzVFQikkJmTDlg4U@hovoldconsulting.com>
 <e516bd2e-baf8-7ecd-cc59-9e7c2af64918@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e516bd2e-baf8-7ecd-cc59-9e7c2af64918@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220929_011822_701944_3FE0EC5F 
X-CRM114-Status: GOOD (  29.26  )
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

On Thu, Sep 29, 2022 at 10:56:11AM +0300, Dmitry Baryshkov wrote:
> On 29/09/2022 10:12, Johan Hovold wrote:
> > On Wed, Sep 28, 2022 at 10:48:40PM +0300, Dmitry Baryshkov wrote:
> >> On 28/09/2022 22:10, Dmitry Baryshkov wrote:

> >> The programmings starts with <0x804 0x1 0x0>, writing 1 to
> >> PCS_POWER_DOWN_CONTROL (which if I'm not mistaken we do not do at this
> >> moment). Then after writing all the serdes/tx/rx/pcs/pcs_misc tables
> >> comes the write <0x804 0x3 0x0> (which you are trying to remove here).
> > 
> > The PHY would already have been powered on with the mainline driver, that
> > write has already happened.
> > 
> > Whether or not PCIe support for SDM845 has been broken since it was
> > first mainlined almost three years ago is a separate issue. I assume
> > Bjorn tested it before sending it upstream.
> > 
> > 	421c9a0e9731 ("phy: qcom: qmp: Add SDM845 PCIe QMP PHY support")
> 
> On SDM845 PCIe0 is used for the WiFi, e.g. on the RB3 (dragonboard845) 
> device. The PHY definitely works with the upstream kernels.

Ok, good.

> >> Same sequence applies to the PCIe PHY on msm8998.
> >>
> >> Most newer PHYs have the expected sequence (of writing 0x3 to
> >> PCS_POWER_DOWN_CONTROL) before writing all registers.
> >>
> >> As a short summary: unless we get any additional information that 8998
> >> and sdm845 tables are incorrect, I'd suggest adding a conditional here
> >> (ugh) and using it here and in qmp_pcie_init() call.
> > 
> > I see little point in doing that unless you dig out an SDM845, confirm
> > that it has never worked with upstream, and update the init sequence
> > first.
> 
> Digging out an sdm845 is not a problem per se. It works, but it also has 
> an additional regwrite that this patch tries to remove. I will try 
> checking whether it works with this register write being removed or not.

Right, but as I already mentioned that register already holds the same
value (0x3) when the second redundant write happens. So this should be a
no-op on sdm845 currently.

(Only MSM8996 had an intermediate update of that register in its PCS
table and therefore needs this second update.)

> >> Vinod, Bjorn, do you have any additional info?
> > 
> > An explanation of the split POWER_DOWN_CONTROL updates on MSM8996 would
> > be good to have either way

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
