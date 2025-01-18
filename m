Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29AD5C02185
	for <linux-phy@archiver.kernel.org>; Sat, 18 Jan 2025 14:44:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mEsQRlAnvJ6ozT263cKRh6qs1uJ0cwD+Vl2uG+wLVKo=; b=wZLDQfLsXEKIly
	fZ8skAr2+9+sxvgyeE2B7IHEWrHCDpzoG2gyd1VtPVcXdJavePTPZloK2C+8b5MMXilkn4Lce9yJe
	AhRDfOrKDCpeg78/JZkuaHOth1D29EkmgVoT7WFL5N+ZdECsL8SL3yPRW+gBpCuCpDd4Z0pw+l6vh
	9ciZp0Ex/cRTLO/CY+4NuKdYSyEWCiAs/G6alIbgIurgVT54JCbnonVptIu1QMtsXJjYHNmSvnmhX
	icBwW1kq8YeY/aNEjG6SDJ6vGIP7tUksd3MRQKEekBhioRA4yd18/uUKtpO9q3bMJDKHj3pfBZ/5Z
	opc5TolPxMHIw3BjdW1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tZA4F-00000002YPa-3nMx;
	Sat, 18 Jan 2025 14:44:55 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tZA4D-00000002YPD-3zc2
	for linux-phy@lists.infradead.org;
	Sat, 18 Jan 2025 14:44:55 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 2980DA41602;
	Sat, 18 Jan 2025 14:43:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B04C0C4CED1;
	Sat, 18 Jan 2025 14:44:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737211492;
	bh=yzyYeRsnULL3tlm7okdtyouKJWANz7x87jxQKcldjnY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=scEhG96PAbqb49mM4Y/7uYqd2h3X5wx9lpS03Mw2SpwwZJPeiG9cDTIyK9BE/wU9g
	 WB7AznEvt4moVwwhcpqbXxCV7a8sGlpLc65OBKN1u2Wb0K01Z06AjLEInfn5TgywtB
	 Jwjo65AeQIqXA9CEEjEqDydchgMQi0G3KfGq+8c55d6R+wgduDyk6NA4qZRk6axbLk
	 TuPPgDe/s9G65CagDhOUbS37PVyZ7wmtji0B1H1eF+VLviAsYeG9j1R58RxGkN09LG
	 FERM5tRctvmm7hIMtPE65Ez45SF7vvwFFYBwiiLi3iYF8TKs2SFkvjRQTu0Q0H4WSG
	 X8wOBDFVyYdlQ==
Date: Sat, 18 Jan 2025 15:44:49 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Melody Olvera <quic_molvera@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Avri Altman <avri.altman@wdc.com>, Bart Van Assche <bvanassche@acm.org>, 
	Bjorn Andersson <andersson@kernel.org>, Andy Gross <agross@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>, 
	Trilok Soni <quic_tsoni@quicinc.com>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org, 
	Nitin Rawat <quic_nitirawa@quicinc.com>
Subject: Re: [PATCH 1/5] dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy:
 Document the SM8750 QMP UFS PHY
Message-ID: <20250118-uptight-crocodile-of-music-2becee@krzk-bin>
References: <20250113-sm8750_ufs_master-v1-0-b3774120eb8c@quicinc.com>
 <20250113-sm8750_ufs_master-v1-1-b3774120eb8c@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250113-sm8750_ufs_master-v1-1-b3774120eb8c@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250118_064454_056919_3ADF31F1 
X-CRM114-Status: UNSURE (   6.72  )
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

On Mon, Jan 13, 2025 at 01:46:24PM -0800, Melody Olvera wrote:
> From: Nitin Rawat <quic_nitirawa@quicinc.com>
> 
> Document the QMP UFS PHY on the SM8750 Platform.

Pretty obvious commit msg, duplicating subject. Say something useful,
e.g. why this is not compatible with sm8650.

> 
> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
