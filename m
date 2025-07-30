Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6DE76C87FCB
	for <linux-phy@archiver.kernel.org>; Wed, 30 Jul 2025 09:48:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E34H/Te2RJ8UtkIsMC36PBnhtw0yk/1dcCOv2hwwql8=; b=YLHFaMz4zUGdco
	99YHhOvQcCjH9YpyFnGOQEGncRiNB/JvtCdThkjEN3Qkg5d16/T81spzTbMd5sIr4eYDcRwMpHas1
	w4l+xim33+MqGa2LNH//gj3hSckc8JNcA8/HQVKoCul6ZrhNRlRzpF76FC4zbCsgDVxYP321WTAJJ
	vIGs4IGr9t0OR7X8/B/W48QdtBS0pZT2ywTZR+NLipwtM8pcyj6W51+TASKSJb8puZrZ819qnymgc
	CVHEWII/DINsX/09HSi8jDGdGToTVZMsy3fDUTticAmnFLRwqhhqyHNqBRdAQomByWT6FBi1B23qu
	NvFkB/cZQx5qemWMyfBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uh3Pu-000000019r8-0JVo;
	Wed, 30 Jul 2025 09:48:10 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uh3Pr-000000019qM-3LZc
	for linux-phy@lists.infradead.org;
	Wed, 30 Jul 2025 09:48:08 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 75864412EC;
	Wed, 30 Jul 2025 09:48:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4DCA3C4CEF5;
	Wed, 30 Jul 2025 09:48:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753868887;
	bh=8YrxCuXCK98kwQnH2GEjHBy78tJhFnVfKZEbIqP+f1A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hiBXEMapNuIohdzdO4nE/XGyfIAfvbU+vj/sOuZJ1kJ/A5OYjPQ0aKr0A39hxjDPV
	 mpqQBILoTuVqQwmtPQq2tPcC8SUW71oZM1LYputhKCJCTNe7tilQHbwEZuHJ2JsfgH
	 KRcnQ+aJRZ1I+ZVBkuskWnXuimg9qHmwix44evQABHp/NS4SXHhFbbKLPkiBKYGtRe
	 tfCxh5jzs/2EYYaI/ywEwZGjCMPXQGGsnzoS8onVL1d424nd6vuzeaSzsj591aY37a
	 quDhI8p1oprtEWTvjTRim6rxYXqpdjaDWwwLGl7EuelWl+1Mz08R/wNtt+//eFa09t
	 FLnnUDqcxLdVg==
Received: from johan by xi.lan with local (Exim 4.98.2)
	(envelope-from <johan@kernel.org>)
	id 1uh3Pr-000000006CL-3rL5;
	Wed, 30 Jul 2025 11:48:07 +0200
Date: Wed, 30 Jul 2025 11:48:07 +0200
From: Johan Hovold <johan@kernel.org>
To: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com,
	mani@kernel.org, lpieralisi@kernel.org, kwilczynski@kernel.org,
	bhelgaas@google.com, johan+linaro@kernel.org, vkoul@kernel.org,
	kishon@kernel.org, neil.armstrong@linaro.org, abel.vesa@linaro.org,
	kw@linux.com, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org, linux-phy@lists.infradead.org,
	qiang.yu@oss.qualcomm.com, quic_krichai@quicinc.com,
	quic_vbadigan@quicinc.com
Subject: Re: [PATCH v9 1/5] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy:
 Update pcie phy bindings for qcs8300
Message-ID: <aInqV5IEAN9LRvFV@hovoldconsulting.com>
References: <20250725104037.4054070-1-ziyue.zhang@oss.qualcomm.com>
 <20250725104037.4054070-2-ziyue.zhang@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250725104037.4054070-2-ziyue.zhang@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250730_024807_852901_745F647D 
X-CRM114-Status: UNSURE (   9.50  )
X-CRM114-Notice: Please train this message.
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

On Fri, Jul 25, 2025 at 06:40:33PM +0800, Ziyue Zhang wrote:
> The gcc_aux_clk is not required by the PCIe PHY on qcs8300 and is not
> specified in the device tree node. Hence, move the qcs8300 phy
> compatibility entry into the list of PHYs that require six clocks.
> 
> Removed the phy_aux clock from the PCIe PHY binding as it is no longer
> used by any instance.
> 
> Fixes: e46e59b77a9e ("dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Document the QCS8300 QMP PCIe PHY Gen4 x2")
> 
> Signed-off-by: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
> Acked-by: Rob Herring (Arm) <robh@kernel.org>

Reviewed-by: Johan Hovold <johan+linaro@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
