Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31213E65D29
	for <linux-phy@archiver.kernel.org>; Fri, 22 Nov 2024 07:38:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2UqzA68swrcJTuyDW3WK2qSsQaZdFP/DQ/Jxt076lrs=; b=ljcywZghepbyGU
	Jx5BrJK0pvC8rFcq8wkJ1flN5SiqwdZhVcOWE7DzOmQxp1saVD2yPfYtTobWRRQNFEVdk8jF3uoFp
	pZp/0z8AG78AxPQMEwLtcN0pGybBGJU1q5dhdftAA0TL70bO8kWcmKWt1hpZ/0lqsyy8bx0INvy50
	ViBfQkrmFohOjBgORtRHacIul/gMm+9ePsX5lMZy9l5OOWWZTpZtQzDeIlrSla12iMASVw8HwxuLE
	GbgIHR37ekf2y3z+ZLect92/E/G2aIWz/48De4byClXUuLbf0Mbm1PuQgwNkVBB/YUAhW0puEDiBF
	QOceTWvYfTHJnR/fUYpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tEOFY-00000001pKs-3t8M;
	Fri, 22 Nov 2024 07:38:44 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tEOFW-00000001pKW-0iFa
	for linux-phy@lists.infradead.org;
	Fri, 22 Nov 2024 07:38:43 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 26824A407D9;
	Fri, 22 Nov 2024 07:36:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3F754C4CECE;
	Fri, 22 Nov 2024 07:38:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732261121;
	bh=Il4u2JmKDCqigPfRRYGfxmRB1iP4DLOiIY1PedxhxEo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=U7gAYW49N2xAlLY+uS+rUOgVk2yvCC40uzA0KE8BvOaEPCmP0L4ti3VAEea5+eidP
	 8AjTLg4COd0PPjfAPm28xiafKY2YinZXcdWbK88MyAfzxRZIT2+nnAodi7qGSW2GNz
	 UaaD89+d9An15M/84bRSyiXb1QX6X0t84Ny0KyuoirP84M7NFblj+YcIyramAFmQAD
	 r2eW1w6AZI4ErSacmpdjVUi3oM7mni+1FyOMlpkZJzNL87ON+Jfyjni5PBeY35l1ux
	 RKn+kJaTUhFu+766u3FZcMwHH8XP7dK4qXoI36hSk1EvPrMSuK/GkblOA+RI4S2SNa
	 6R86tJqYS7R5g==
Date: Fri, 22 Nov 2024 08:38:38 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org, 
	manivannan.sadhasivam@linaro.org, bhelgaas@google.com, kw@linux.com, lpieralisi@kernel.org, 
	quic_qianyu@quicinc.com, conor+dt@kernel.org, neil.armstrong@linaro.org, 
	andersson@kernel.org, konradybcio@kernel.org, quic_tsoni@quicinc.com, 
	quic_shashim@quicinc.com, quic_kaushalk@quicinc.com, quic_tdas@quicinc.com, 
	quic_tingweiz@quicinc.com, quic_aiquny@quicinc.com, kernel@quicinc.com, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, Krishna chaitanya chundru <quic_krichai@quicinc.com>
Subject: Re: [PATCH v2 1/6] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy:
 Document the QCS615 QMP PCIe PHY Gen3 x1
Message-ID: <dpuqj6hsqourl7ln66maezhcpmdrnnju22u5vs7mvre5aotkki@y6p2bbkre6pf>
References: <20241122023314.1616353-1-quic_ziyuzhan@quicinc.com>
 <20241122023314.1616353-2-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241122023314.1616353-2-quic_ziyuzhan@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241121_233842_272602_C13EBF99 
X-CRM114-Status: GOOD (  11.24  )
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

On Fri, Nov 22, 2024 at 10:33:09AM +0800, Ziyue Zhang wrote:
> From: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> 
> Document the QMP PCIe PHY on the QCS615 platform.
> 
> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> ---
>  .../devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml     | 2 ++
>  1 file changed, 2 insertions(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

<form letter>
This is an automated instruction, just in case, because many review tags
are being ignored. If you know the process, you can skip it (please do
not feel offended by me posting it here - no bad intentions intended).
If you do not know the process, here is a short explanation:

Please add Acked-by/Reviewed-by/Tested-by tags when posting new
versions, under or above your Signed-off-by tag. Tag is "received", when
provided in a message replied to you on the mailing list. Tools like b4
can help here. However, there's no need to repost patches *only* to add
the tags. The upstream maintainer will do that for tags received on the
version they apply.

https://elixir.bootlin.com/linux/v6.5-rc3/source/Documentation/process/submitting-patches.rst#L577
</form letter>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
