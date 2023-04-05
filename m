Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D60AC77B6E
	for <linux-phy@archiver.kernel.org>; Wed,  5 Apr 2023 11:35:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vcQsGnSoWZMcoM0UOtnYC6exxhLTnXh65AW41Ur2Kkg=; b=W3TjJS660OBGyf
	l44WuZLsoOcBc+evuJI9UHz1JzPvzoPSst6/4U1B6yKHOcfRegnJluGR1zjnv//u4gCxTdHrF6GiT
	PqH6BSfVDDXFr6HJSYtMxRlbZSCDZaNsit0f4g+ye4EvHZSHju2Bg32U/YCNK6+mihoW5t/IcyXFa
	qEA3XebeXpyQscdEVGNwG1Be+RZRcpZLoMBe8vo7xBZSXC7EatvVzemMAM3WCNEZcloO/J9FB9V43
	qJh9G0rIBrIV4S5dsptzJ62zlNqTYL7GuSMegrYyepchnuEynVuc/fr5BKPoy35jGGeFVohhU3/zQ
	RgkRj78k5OUpMEiZbp5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pk1Qf-004Hlr-2D;
	Wed, 05 Apr 2023 11:35:53 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pk1Qd-004HlP-0C
	for linux-phy@lists.infradead.org;
	Wed, 05 Apr 2023 11:35:52 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 520C86280B;
	Wed,  5 Apr 2023 11:35:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 81B23C4339B;
	Wed,  5 Apr 2023 11:35:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680694549;
	bh=N42vKwPQpUIupvynklxUyAnnLu6zzFjrSXXRLaZg/fY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Gx8dsTBHCpRbuAfcq1O0Y5Fpgr1DQDue3HT7scEALTFp7pUvSQmhFdsn/Hb5ilf1M
	 PC48TiFwMIBKp+DwBwds8bikkKAPYZlOS5kOZ1OoaGEfDSHN/icpl97vXVRq0DYIQd
	 XOLlWb9AB+0glIS914Tpbj6m/PLMzi97oCeQYFtZDkpSmbNW5aQvcE7p0Y5ij8ll5m
	 s7TzdpzxQfG07R7EGnN1W5HUbCx3ylVe0Q7eh1QAP1eUyDyUw0MLNXrn8fI+mq3xVl
	 MZABA9XHORt8OvCV/sXdrR9/v8PwdqFMt5ZRQ/BpypoOW75oFJ4BRLJyjYrOa/G5rF
	 xedpWfoD61n2w==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1pk1R5-00042y-1L; Wed, 05 Apr 2023 13:36:19 +0200
Date: Wed, 5 Apr 2023 13:36:19 +0200
From: Johan Hovold <johan@kernel.org>
To: Varadarajan Narayanan <quic_varada@quicinc.com>,
	Bjorn Andersson <quic_bjorande@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
	vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, gregkh@linuxfoundation.org,
	mturquette@baylibre.com, sboyd@kernel.org, quic_wcheng@quicinc.com,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org, linux-clk@vger.kernel.org
Subject: Re: [PATCH v7 7/8] arm64: dts: qcom: ipq9574: Add USB related nodes
Message-ID: <ZC1dM3CP5sAfga16@hovoldconsulting.com>
References: <cover.1680688209.git.quic_varada@quicinc.com>
 <a66878525affbc5db9fe1423018ba6250c03ae19.1680688209.git.quic_varada@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a66878525affbc5db9fe1423018ba6250c03ae19.1680688209.git.quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230405_043551_140629_74BF9A0A 
X-CRM114-Status: GOOD (  12.82  )
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

On Wed, Apr 05, 2023 at 03:24:04PM +0530, Varadarajan Narayanan wrote:
> Add USB phy and controller related nodes
> 
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
>  Changes in v7:
> 	- Change com_aux -> cfg_ahb
>  Changes in v6:
> 	- Introduce fixed regulators for the phy
> 	- Resolved all 'make dtbs_check' messages

> +		usb_0_qmpphy: phy@7d000 {
> +			compatible = "qcom,ipq9574-qmp-usb3-phy";
> +			reg = <0x0007d000 0xa00>;
> +			#phy-cells = <0>;
> +
> +			clocks = <&gcc GCC_USB0_AUX_CLK>,
> +				 <&xo_board_clk>,
> +				 <&gcc GCC_USB0_PHY_CFG_AHB_CLK>,
> +				 <&gcc GCC_USB0_PIPE_CLK>;
> +			clock-names = "aux",
> +				      "ref",
> +				      "cfg_ahb",

You still did not update the binding to match this clock. So this is
essentially the third time I'm pointing out the same issue. This is
simply not acceptable.

Just slow down, and don't rush out new revisions of series before
you've had time to review them yourself (and preferably internally at
qualcomm) to make sure that you have addressed all review comments you
have received.

Maintainer and reviewer time is scarce. Our development model really
does not scale unless people take more care.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
