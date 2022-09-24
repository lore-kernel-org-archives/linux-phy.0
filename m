Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C27DBC32771
	for <linux-phy@archiver.kernel.org>; Sat, 24 Sep 2022 06:05:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FZ/onrAR2IobafmCgboPlixtGG0AgUnztbkM8cWJk/c=; b=fmTLrUDQ+vfY+5
	iF/jMgJwbhoIKv/GK1oag3pSnSAluefEwf0tXvdmyfp93aVxiw8CCgdP+1IvwQFwC/f0nhahdmEvs
	SLK9y6Py5Bs205NTpI0ixl/S8m8D0IggT0ikVErYz4cdJrGIwHkRNawJTBEf+KiSHsfA/bsr4MMNS
	+BtIcyBFluaOb6hNAzvwUuZWI293uEb8NptOssUmbkni1dktBuUhI/WedJUHExtvuqo5qYVY4X5vF
	aGn/SgUF22E+aPl9+P6GVT76V4YwF2a+VAMmrNyg8DsKRS+a3GwKMUnp5Tu02JD3vEh1JXVEpK5fE
	qzrNOsNySsBK2mFYxFAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obyIA-006TrO-6x; Sat, 24 Sep 2022 06:05:34 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obyI7-006Tqn-V4
	for linux-phy@lists.infradead.org; Sat, 24 Sep 2022 06:05:33 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 23D1760023;
	Sat, 24 Sep 2022 06:05:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AB866C433D6;
	Sat, 24 Sep 2022 06:05:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663999530;
	bh=z+2uv0GCMfjn23y+jKd2Dac1bjrAV1YxyeF03IjsD74=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JZjLoLitrZwanLv9L0jIL+nV+9Ya9qEFGWUWy27hKSVJpZa+29vM5DF9rA3FaL3or
	 7zsPfJADlf/RUSLQtURU92gpR37+qIP/IkOj67VVu1zq2gYo/cT/9+KdHEoZHtlGlI
	 9ZLgTfEBLKvAXxQV05XGjcqqOms7RT1jmlKbQMP3l+P2JKDnusaL/l8+1VVV5r0SmI
	 n60Qn/rhAAbHzMJmOVHAgE727F9f7rC9LYk9ZeErOtqkrFRltjFOYV4pDwTl6quCCt
	 E0/H180c+sinkSn7wbo8l511+aGr+oGGkBt7aNs+iomeu9QZ5wN8dnfc+qizyqad3q
	 KBlPE0/oMjUdA==
Date: Sat, 24 Sep 2022 11:35:26 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Krishna chaitanya chundru <quic_krichai@quicinc.com>
Cc: helgaas@kernel.org, linux-pci@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
	mka@chromium.org, quic_vbadigan@quicinc.com,
	quic_hemantk@quicinc.com, quic_nitegupt@quicinc.com,
	quic_skananth@quicinc.com, quic_ramkri@quicinc.com,
	manivannan.sadhasivam@linaro.org, swboyd@chromium.org,
	dmitry.baryshkov@linaro.org, svarbanov@mm-sol.com,
	agross@kernel.org, andersson@kernel.org,
	konrad.dybcio@somainline.org, lpieralisi@kernel.org,
	robh@kernel.org, kw@linux.com, bhelgaas@google.com,
	linux-phy@lists.infradead.org, kishon@ti.com,
	mturquette@baylibre.com, linux-clk@vger.kernel.org,
	Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: Re: [PATCH v7 2/5] PCI: qcom: Add retry logic for link to be stable
 in either L1.1 or L1.2
Message-ID: <Yy6eJnXUMZk4i2PC@matsya>
References: <1663669347-29308-1-git-send-email-quic_krichai@quicinc.com>
 <1663669347-29308-3-git-send-email-quic_krichai@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1663669347-29308-3-git-send-email-quic_krichai@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220923_230532_092409_CA474490 
X-CRM114-Status: GOOD (  26.76  )
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

On 20-09-22, 15:52, Krishna chaitanya chundru wrote:
> When link is in L1ss(L1.1 or L1.2), all the clocks will gate off and there
> will be no activity on the link. At that point clocks and phy
> can be turned off. If clocks got disabled before link enters
> L1ss the PCIe link goes down.
> 
> Few endpoints are taking time more time to settle the link in L1 substates.
> When we check the traffic in protocol analyzer, we see some DLLP packets
> going on still. So Wait for max time of 200ms for the link to be stable in
> L1 substates.
> 
> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> ---
> changes since v6:
> 	- updated comments.
> ---
>  drivers/pci/controller/dwc/pcie-qcom.c | 46 ++++++++++++++++++++++++++--------
>  1 file changed, 35 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
> index 3f5424a..7a6f69e 100644
> --- a/drivers/pci/controller/dwc/pcie-qcom.c
> +++ b/drivers/pci/controller/dwc/pcie-qcom.c
> @@ -1809,23 +1809,47 @@ static int qcom_pcie_probe(struct platform_device *pdev)
>  static int __maybe_unused qcom_pcie_pm_suspend(struct qcom_pcie *pcie)
>  {
>  	u32 val;
> +	ktime_t timeout, start;
>  	struct dw_pcie *pci = pcie->pci;
>  	struct device *dev = pci->dev;
>  
> -	/* if the link is not active turn off clocks */
> -	if (!dw_pcie_link_up(pci)) {
> -		dev_dbg(dev, "Link is not active\n");
> -		goto suspend;
> -	}
> +	/*
> +	 * When link is in L1ss, all the clocks will gate off and
> +	 * there will be no activity on the link. At that point clocks
> +	 * and phy can be turned off. If clocks got disabled before
> +	 * link enters L1ss the PCIe link goes down.
> +	 *
> +	 * Few endpoints are taking time more time to settle the link
> +	 * in L1ss. Wait for max of 200ms for the link to be stable in
> +	 * L1ss.
> +	 */
> +	start = ktime_get();
> +	/* Wait max 200 ms */
> +	timeout = ktime_add_ms(start, 200);
> +
> +	while (1) {
> +		/* if the liink is not active turn off clocks */
> +		if (!dw_pcie_link_up(pci)) {
> +			dev_dbg(dev, "Link is not active\n");
> +			break;
> +		}
>  
> -	/* if the link is not in l1ss don't turn off clocks */
> -	val = readl(pcie->parf + PCIE20_PARF_PM_STTS);
> -	if (!(val & PCIE20_PARF_PM_STTS_LINKST_IN_L1SUB)) {
> -		dev_warn(dev, "Link is not in L1ss\n");
> -		return 0;
> +		/* if the link is not in l1ss don't turn off clocks */
> +		val = readl(pcie->parf + PCIE20_PARF_PM_STTS);
> +		if ((val & PCIE20_PARF_PM_STTS_LINKST_IN_L1SUB)) {
> +			dev_dbg(dev, "Link enters L1ss after %lld  ms\n",
> +					ktime_to_ms(ktime_get() - start));
> +			break;
> +		}
> +
> +		if (ktime_after(ktime_get(), timeout)) {
> +			dev_warn(dev, "Link is not in L1ss\n");
> +			return 0;
> +		}
> +

ugh, why not use readl_poll_timeout()?

> +		udelay(1000);
>  	}
>  
> -suspend:
>  	if (pcie->cfg->ops->suspend)
>  		pcie->cfg->ops->suspend(pcie);
>  
> -- 
> 2.7.4

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
