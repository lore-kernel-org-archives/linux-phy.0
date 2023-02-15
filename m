Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C9A6C6379F
	for <linux-phy@archiver.kernel.org>; Wed, 15 Feb 2023 02:30:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:To:Cc:From:Subject:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cyTRPNbXlqfXNVz3C2LimypkZJZeX/wORGY2mcHW5sU=; b=jXO/HwXhjn97bI
	liT8beTiqAv5kqJZODy77VA99G3K5BzR909segOHPf96qnN8eZSvKFTt0tNeCNrWUfmg6Jm/G2WxU
	hrRjXHt+euz50HM+tvWw5LF9ps3aW70ZtxpU0tFn1eA3zeu+Bfry0qcFqdaq6WX8zUyg/xQeapdLP
	G8RZwFMZsedVXMjnl4Xb8WY2+wWRVJHZTCInnxfJSng4JiG29P4QqHOGv63yTlkrD9FIGwdwAv8PI
	XXDaaX5nMrhN9EqH5Cr2O0XOfqHfWqI0m06r2AI0NOUORmH7dm1brjkHP+Zgtxy/L74kA9Rjk5l7y
	EdqOvZTt45ZiIOHLRIOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pS7ZR-004Ohf-Ko; Wed, 15 Feb 2023 02:30:57 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pS7ZN-004Ogw-JN
	for linux-phy@lists.infradead.org; Wed, 15 Feb 2023 02:30:55 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id A8FC4B81F53;
	Wed, 15 Feb 2023 02:30:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5C412C433D2;
	Wed, 15 Feb 2023 02:30:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676428249;
	bh=AGKHwaWB4r2pf6OIJmuGGiQ7u++qJmgJ46AI7QfoCnY=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=piHYo2QCCVPxHHcUu0D4PnDLzWPeCK132mCT+sFpVriDNYEPDwdRFa2norYqX4k1a
	 TzozbbBPfOPqeDQuhxFqNWxsdYrjDI1KZor2ix8EvqMFHtg40MQcBaASYzCvOXGSsp
	 rOGDC9jkx/3vBtL40K9iLS5KliBRMBrOKljPVHU2vTcL3DuPv0etld6jlGJp1Ax896
	 9NXQW9uc/EhusGN+MX1ZtfXpXaRZVdStLsHA5wqEDpW+dpxOdOEnw1+b8IqGsQGLZC
	 WaYv9ZkBPZk12BV2TynueyDaMHHznXmQ73q795w9RIBmGvBPJpdtxzY1keQ6xf/KK/
	 qFtqKXfSM8pvg==
Message-ID: <f439f476121a5624b5243b0b340bd9a4.sboyd@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20230214164135.17039-6-quic_devipriy@quicinc.com>
References: <20230214164135.17039-1-quic_devipriy@quicinc.com> <20230214164135.17039-6-quic_devipriy@quicinc.com>
Subject: Re: [PATCH 5/7] dt-bindings: clock: Add PCIe pipe clock definitions
From: Stephen Boyd <sboyd@kernel.org>
Cc: quic_srichara@quicinc.com, quic_gokulsri@quicinc.com, quic_sjaganat@quicinc.com, quic_kathirav@quicinc.com, quic_arajkuma@quicinc.com, quic_anusha@quicinc.com
To: Devi Priya <quic_devipriy@quicinc.com>, agross@kernel.org, andersson@kernel.org, bhelgaas@google.com, devicetree@vger.kernel.org, kishon@kernel.org, konrad.dybcio@linaro.org, krzysztof.kozlowski+dt@linaro.org, kw@linux.com, linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, linux-phy@lists.infradead.org, lpieralisi@kernel.org, mani@kernel.org, mturquette@baylibre.com, p.zabel@pengutronix.de, robh@kernel.org, svarbanov@mm-sol.com, vkoul@kernel.org
Date: Tue, 14 Feb 2023 18:30:47 -0800
User-Agent: alot/0.10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230214_183053_827626_5DC5BC91 
X-CRM114-Status: GOOD (  10.83  )
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

Quoting Devi Priya (2023-02-14 08:41:33)
> Add PCIe clock definitions for IPQ9574 SoC
> 
> Co-developed-by: Anusha Rao <quic_anusha@quicinc.com>
> Signed-off-by: Anusha Rao <quic_anusha@quicinc.com>
> Signed-off-by: Devi Priya <quic_devipriy@quicinc.com>
> ---
>  include/dt-bindings/clock/qcom,ipq9574-gcc.h | 276 ++++++++++---------
>  1 file changed, 140 insertions(+), 136 deletions(-)
> 
> diff --git a/include/dt-bindings/clock/qcom,ipq9574-gcc.h b/include/dt-bindings/clock/qcom,ipq9574-gcc.h
> index feedfdd5e00a..c89e96d568c6 100644
> --- a/include/dt-bindings/clock/qcom,ipq9574-gcc.h
> +++ b/include/dt-bindings/clock/qcom,ipq9574-gcc.h
> @@ -74,140 +74,144 @@
>  #define GCC_PCIE3_AXI_S_BRIDGE_CLK                     65
>  #define GCC_PCIE3_AXI_S_CLK                            66
>  #define PCIE0_PIPE_CLK_SRC                             67
> -#define PCIE1_PIPE_CLK_SRC                             68

Just add the new define at the end. This number and define is ABI
forever and shouldn't change.

> -#define PCIE2_PIPE_CLK_SRC                             69
> -#define PCIE3_PIPE_CLK_SRC                             70

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
