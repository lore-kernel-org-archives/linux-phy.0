Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71556C4321E
	for <linux-phy@archiver.kernel.org>; Thu,  1 Dec 2022 20:19:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gj5wf464qqeNhJaB/dgjlEVoaYybPIV3AmQRnRDTWEg=; b=LE0pJ8nv5lfybk
	Rr8ECSwgzwt3Cc6+0Mleeb4TkNytIQviWtGGilb+Zu0ljJ+5/WDa11r7mrwZDhMfKUwABx+t26v3A
	O54Rc+R4kTzsou1xSlqdhEZXm44D9NtI9ELTMqpSzo+tnfCECgN+13qHB863jKzpSLolXKMbOyoy7
	irxtOU5MEbn/M1xohKVKNmEk+qJuzHbNvft6SwgS8C5DBg1kCIyK7JOgDYjQ3hHcMWnCCrlJ3FbVT
	thwMMbj+jhWhUUj7nTMKZsjzQYk7SlliZqunlYACf+mFX66ylF2Ne1D67g5OXID5jPFmgw3xsKHFm
	20KQySfhq5umD3Xdpd1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0q1L-00AllV-Ns; Thu, 01 Dec 2022 20:18:59 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0pyE-00Akks-Gp
	for linux-phy@lists.infradead.org; Thu, 01 Dec 2022 20:15:47 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 485B3B81F90;
	Thu,  1 Dec 2022 20:15:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F3DC8C433D6;
	Thu,  1 Dec 2022 20:15:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669925743;
	bh=NJZdGIoTQ+syZmGFc9QowZvmsGy6Ky1CvgYKtzEukIM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UoCrH0/cQsxc9IjEbuD5u3e9fmgx3T1slPaJJPc9macrTyYP5SSVV9e1vIDUWYX74
	 jfjgS8kZFGEPdm6FQQPpGaMyL+hZ9Z73FDsd4+utvQARXPkm/S04USxyCglP8O94JQ
	 k/ALzVut9f78dqhlXiJzMCdENjpnS+z0NbGwV/6HgiJLN2aexYf1YWjY0ZWiV+QbLa
	 mYkXRN2xLYy7w9Mu4WAbNI5X2QPgydRtY1kuTE9MTlZQjX7uXbdt2DOmJ9tZLA4Nbe
	 6gbQ6gkDNintLXmpf/kUs3JaeQukAlrKiimbKekL2pgsdH5ZfVqP24xcwzsvOf/8yC
	 Kw/ha74cQuwNQ==
Date: Thu, 1 Dec 2022 14:15:39 -0600
From: Bjorn Andersson <andersson@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: martin.petersen@oracle.com, jejb@linux.ibm.com, vkoul@kernel.org,
	quic_cang@quicinc.com, quic_asutoshd@quicinc.com,
	linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-scsi@vger.kernel.org,
	dmitry.baryshkov@linaro.org, ahalaney@redhat.com,
	abel.vesa@linaro.org, alim.akhtar@samsung.com, avri.altman@wdc.com,
	bvanassche@acm.org
Subject: Re: [PATCH v4 23/23] MAINTAINERS: Add myself as the maintainer for
 Qcom UFS drivers
Message-ID: <20221201201539.ohhbs2n75ryw6lad@builder.lan>
References: <20221201174328.870152-1-manivannan.sadhasivam@linaro.org>
 <20221201174328.870152-24-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221201174328.870152-24-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221201_121546_743114_91B323E1 
X-CRM114-Status: GOOD (  14.04  )
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

On Thu, Dec 01, 2022 at 11:13:28PM +0530, Manivannan Sadhasivam wrote:
> Qcom UFS drivers are left un-maintained till now. I'd like to step up to
> maintain the drivers and the binding.
> 

Acked-by: Bjorn Andersson <andersson@kernel.org>

> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
>  MAINTAINERS | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 3583c5f6889d..3c8214f4a3cf 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -21379,6 +21379,14 @@ L:	linux-mediatek@lists.infradead.org (moderated for non-subscribers)
>  S:	Maintained
>  F:	drivers/ufs/host/ufs-mediatek*
>  
> +UNIVERSAL FLASH STORAGE HOST CONTROLLER DRIVER QUALCOMM HOOKS
> +M:	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> +L:	linux-arm-msm@vger.kernel.org
> +L:	linux-scsi@vger.kernel.org
> +S:	Maintained
> +F:	Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
> +F:	drivers/ufs/host/ufs-qcom*
> +
>  UNIVERSAL FLASH STORAGE HOST CONTROLLER DRIVER RENESAS HOOKS
>  M:	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
>  L:	linux-renesas-soc@vger.kernel.org
> -- 
> 2.25.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
