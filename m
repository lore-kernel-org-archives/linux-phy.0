Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F9D7D21267
	for <linux-phy@archiver.kernel.org>; Thu, 17 Oct 2024 09:20:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NgLB7W8eid35mfu+J4GIRtPTfysFhNjrxh5oDkrvRH8=; b=INgF7gbxaSfp7A
	/QIDXBa3QEAf+cjdaBFdkhB1ccj17/aLLZUy3fm2WQ5Ldy6MgiStr7YgvQzbrPdkkzYPJQ5URg2Et
	CEnscjZPlRdDv+3wWxc7ligDBPNYVWNYTLGj+7gdvJTDXErLnFQFmxnVtxmr9jqE+cV3pitrTlsIX
	hDjyM/6xvWC+R8LHlV7LT04tAls7L5kill+xkgUg83g88THLrjnyXgL/nNZPi82UcZbw4xKFvioFy
	esolnJOUgALOqM3EHTbfJM5YsIWy2Pgw8osR6VlAbHHtiwSLr4qS/t3ErnTXvxhla0roLEejlcPL/
	5DECYrqY5FWerpd8tW3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1MgQ-0000000EJa4-3QMi;
	Thu, 17 Oct 2024 09:20:38 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1MgN-0000000EJYo-1tpl
	for linux-phy@lists.infradead.org;
	Thu, 17 Oct 2024 09:20:36 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 641B9A43AED;
	Thu, 17 Oct 2024 09:20:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7D81FC4CEC5;
	Thu, 17 Oct 2024 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729156834;
	bh=EaL0DwqYapO/Y83H8NxBhBrPSZO/elEPLp5/NgQzqDU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tZxjnM5cbGFmmxY/NcihzyAoxUY5RidF2dJpudHnXR4g/M9ED7HEN6aMCHc4L6/tG
	 nvcx9XHGt1g3IF8jYp45NDhACJtNXseTZ3j/kMAl3GtMZKMDaepkqAGz1U6st8qyLL
	 arySUOz9t2ItkFxU3h9NeBYeyrCSwms+wtzHRaanMACd2eouZHiSG//YTbg/QvE155
	 qcATxUZggxaf7AETEQVkSgBvais8pfIZaidX2Zvgz37JOBapbUn7Ab/EVB0ulRFFZE
	 +I1EeAba3D45PGdUGSdACLrBgPBq34p74cPcxnweFDAyqvlpfqVJwoRbExD8qwWmmU
	 NyB3ojO/z7IDA==
Date: Thu, 17 Oct 2024 11:20:30 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Xin Liu <quic_liuxin@quicinc.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Avri Altman <avri.altman@wdc.com>, Bart Van Assche <bvanassche@acm.org>, 
	Andy Gross <agross@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org, 
	quic_jiegan@quicinc.com, quic_aiquny@quicinc.com, quic_tingweiz@quicinc.com, 
	quic_sayalil@quicinc.com
Subject: Re: [PATCH v1 1/4] dt-bindings: phy: Add QMP UFS PHY comptible for
 QCS615
Message-ID: <eirmiqaivwja4bpm7nrsloo2n6pojrvmd25wxc7bgsrzzrh7zn@k3b47pyw3kv5>
References: <20241017042300.872963-1-quic_liuxin@quicinc.com>
 <20241017042300.872963-2-quic_liuxin@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241017042300.872963-2-quic_liuxin@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241017_022035_666369_2715ED28 
X-CRM114-Status: UNSURE (   8.03  )
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

On Thu, Oct 17, 2024 at 12:22:57PM +0800, Xin Liu wrote:
> From: Sayali Lokhande <quic_sayalil@quicinc.com>	
> 	
> Document the QMP UFS PHY compatible for Qualcomm QCS615 to support physical
> layer functionality for UFS found on the SoC. Use fallback to indicate the
> compatibility of the QMP UFS PHY on the QCS615 with that on the SM6115.
> 
> Signed-off-by: Sayali Lokhande <quic_sayalil@quicinc.com>
> Co-developed-by: Xin Liu <quic_liuxin@quicinc.com>
> Signed-off-by: Xin Liu <quic_liuxin@quicinc.com>
> ---

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
