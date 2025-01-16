Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7FBFC02183
	for <linux-phy@archiver.kernel.org>; Thu, 16 Jan 2025 14:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ay7XpOxbzvqmfQYzxueZBXcibGCzqvcgFWPU7BBnOZs=; b=oueq4vSZh7GWyX
	lfDQiHfoOmkzkik0sfdIXOc3uLOWUPiu26PlfQcE3WLhaRkFXyyd7desCTdWHPbo1gbj174C7cxqU
	gfAeZlnch3vzNzycxc8pFKUSshKrcrGrZuEqASJeY8C1dBueuTVFO0Wb0y08V8TSuryS9PwuiCt84
	jwYnHAfYfk0zjXMtPelm5Xubmza2DluOz2KHLB0VIsTUSVykGe6qO/MOp1eTxdqFkXsqFdVi02O2Z
	vaevaN04XDPIDBCTM5lixCWwVBen1sgcFQ+tV3UlWAKe87n9wwB4ZcGbvDmYadNZi0izYMGlZtlfE
	yAgpBxJBhxgsPsvXoVbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tYQlK-0000000F92f-2xTG;
	Thu, 16 Jan 2025 14:22:22 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tYQlI-0000000F91y-1zRi
	for linux-phy@lists.infradead.org;
	Thu, 16 Jan 2025 14:22:21 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 30C305C5D2D;
	Thu, 16 Jan 2025 14:21:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 67A0CC4CED6;
	Thu, 16 Jan 2025 14:22:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737037339;
	bh=pJsxjspJlyLcmmLB+dqam9qL9oikWlt2JRgFOhW2txs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=grMrFL8aJmaqLvYKCBlJB99+CeWOHD/Ig5q8fG/c+00f+Qp2ZUfzLiqRyOSSeJUDj
	 Dfugujjxs5/XdrfFLP9NgPbEl6RTxMu7kiCISRyQDz6RREF0lHI27BB14l+crs4LM3
	 s2ZnF0yVOS+l8r9gotY04OPjazx2e28vu/g/0EqBRrzli35kX3dDwSFCLOPFO3hGYp
	 OPAag/EnKhYqWbuhxd0WxH/z93GG9aw1cYtq5tOjFW0Gsi6emhnTt3emr6+4xSy06K
	 G0SRzeYRLdINoRYVw9hObUbbjvxcCGk0XRuGB+6E9bFda+ouj/YIh2qEA8DBZkKmdV
	 8PP3pfZN+TCbQ==
Date: Thu, 16 Jan 2025 08:22:18 -0600
From: Rob Herring <robh@kernel.org>
To: Xin Liu <quic_liuxin@quicinc.com>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Andy Gross <agross@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
	quic_jiegan@quicinc.com, quic_aiquny@quicinc.com,
	quic_tingweiz@quicinc.com, quic_sayalil@quicinc.com,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v4 1/3] dt-bindings: ufs: qcom: Add UFS Host Controller
 for QCS615
Message-ID: <20250116142218.GA2176564-robh@kernel.org>
References: <20241216095439.531357-1-quic_liuxin@quicinc.com>
 <20241216095439.531357-2-quic_liuxin@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241216095439.531357-2-quic_liuxin@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250116_062220_554251_AB4265BA 
X-CRM114-Status: UNSURE (   8.84  )
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

On Mon, Dec 16, 2024 at 05:54:37PM +0800, Xin Liu wrote:
> From: Sayali Lokhande <quic_sayalil@quicinc.com>
> 
> Document the Universal Flash Storage(UFS) Host Controller on the Qualcomm
> QCS615 Platform.
> 
> Signed-off-by: Sayali Lokhande <quic_sayalil@quicinc.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> Co-developed-by: Xin Liu <quic_liuxin@quicinc.com>
> Signed-off-by: Xin Liu <quic_liuxin@quicinc.com>
> ---
>  Documentation/devicetree/bindings/ufs/qcom,ufs.yaml | 2 ++
>  1 file changed, 2 insertions(+)

Looks like this was missed. Applied.

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
