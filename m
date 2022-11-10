Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C149DC4332F
	for <linux-phy@archiver.kernel.org>; Thu, 10 Nov 2022 10:53:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yRrXwQIQI7/HiIkegsj+HgP0rZ4n4Db5nE5XVikhh+o=; b=ntayRS+hS0mg8v
	CWtmzw4dE8LRAw3BRS2kr4+cG8Qi5B1b1v8dnzwvYg8ln88iVCgpj3W7ojwivai9MzPxl5LdZILMx
	K3RIXz067xztQOH0/Q2S1T/wwIFvqfb4bcE3uTlbUwaZ4A/INgqX/rjsqsu/c9NU+OC55M0ctUruS
	kdrZJiReKW3fYXBzhcmX3j02kaOeFjMIEXGFa/np9VOr7TrAAQvQ4PE3LHFAWVmgfY/tttl3PS9no
	gKGY8gm8cejhXTdVHrlYOwGQ/7ZvEO0/ez8buxfj83E4owVO59Fn8jnvLOYb+Yuj5LibB7tzoXQaz
	FiR1tukv9y8UK4Yp7XGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ot5Bt-0059p6-2q; Thu, 10 Nov 2022 10:53:49 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ot5Bp-0059nu-96
	for linux-phy@lists.infradead.org; Thu, 10 Nov 2022 10:53:48 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id D21AA6106F;
	Thu, 10 Nov 2022 10:53:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 371B4C433C1;
	Thu, 10 Nov 2022 10:53:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668077624;
	bh=NIkFOvlY2E8XiQDmpV5S1/Wj5B+wkYmLdAyQTN8UlYI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OLBkQY41+ePvBdmK4e0Q2MjEFJxdWo4JJMDCuSJoFiLEhOdPNrprENFxufqyr+N3e
	 RZ7PfTJy1PkCDXTIQFV+QMDQHKgZRmW8EwM4vjFKGsPOZqx52vWhaMfmU7zSeVuVEu
	 tHus/nKEKLx5EFgSuFzxqucndhOn9+uv+h4ohX49EMhUjhzPQrq9i9S7H/JzfulRcG
	 2LuN54h1UvNZam/QqfjxsUqA1dL3to/KoUpbQMc1KJgAweC7adbPQ2LuywA3B3A4Cn
	 jx53s0ighWRcFzi0jhSpR3PcVet2Bj8xHfRlgusQ8n22/HyIv1bA2ilFxB28sYBflY
	 ZimwosnMTGyXA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1ot5BM-0003Yf-S0; Thu, 10 Nov 2022 11:53:16 +0100
Date: Thu, 10 Nov 2022 11:53:16 +0100
From: Johan Hovold <johan@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Jingoo Han <jingoohan1@gmail.com>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 7/8] arm64: dts: qcom: sm8350: add PCIe devices
Message-ID: <Y2zYHEZDbNoGumTl@hovoldconsulting.com>
References: <20221110103345.729018-1-dmitry.baryshkov@linaro.org>
 <20221110103345.729018-8-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221110103345.729018-8-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221110_025345_375381_4C42508F 
X-CRM114-Status: GOOD (  14.32  )
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

On Thu, Nov 10, 2022 at 01:33:44PM +0300, Dmitry Baryshkov wrote:
> Add PCIe0 and PCIe1 (and corresponding PHY) devices found on SM8350
> platform. The PCIe0 is a 1-lane Gen3 host, PCIe1 is a 2-lane Gen3 host.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8350.dtsi | 246 ++++++++++++++++++++++++++-
>  1 file changed, 244 insertions(+), 2 deletions(-)

> @@ -1761,6 +1957,52 @@ tlmm: pinctrl@f100000 {
>  			gpio-ranges = <&tlmm 0 0 204>;
>  			wakeup-parent = <&pdc>;
>  
> +			pcie0_default_state: pcie0-default-state {
> +				perst-pins {
> +					pins = "gpio94";
> +					function = "gpio";
> +					drive-strength = <2>;
> +					bias-pull-down;
> +				};
> +
> +				clkreq-pins {
> +					pins = "gpio95";
> +					function = "pcie0_clkreqn";
> +					drive-strength = <2>;
> +					bias-pull-up;
> +				};
> +
> +				wake-pins {
> +					pins = "gpio96";
> +					function = "gpio";
> +					drive-strength = <2>;
> +					bias-pull-up;
> +				};
> +			};

The pinconfig should go in the board file.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
