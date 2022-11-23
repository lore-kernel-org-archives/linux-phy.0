Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D63A2C4332F
	for <linux-phy@archiver.kernel.org>; Wed, 23 Nov 2022 18:31:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4O3KA7QdoQ+ZKaM00GF0z4ymf/xEb9473vXJqfP04lU=; b=zKxH9f9qe4vOjj
	5xkWwn9q/XYD+S5ANf3SMlXpq+I0Xm8LFAnkLyUAEVkuxHKdhQIGkSUcUCjBpV15mJc8jMX+XRpRj
	4CjwA6GGZUt9qabTtfmQ6ytIg16zNvt+2izT/IhmaUAjFZRRdZD0F6EvyEQp855/C2EmYhwxIxXyX
	bUtiY8G7/FsAkh4Ob3EsHuwmR+RBALMTezs81TeZ+zl6CxRhMZP2PHFfuR38g3B621TK0AI7Zfa0w
	7JFvFWx4QnDEz1zfT7IoC8kRkfLwGcNDk87cQCYEjIPHsxKuJTHTKIwegqAgHyG8Xjra1BOJErs5Y
	804foG3wLFtYQ2+BHPyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxuXC-001eB1-86; Wed, 23 Nov 2022 18:31:46 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxuX2-001e1J-Q5
	for linux-phy@lists.infradead.org; Wed, 23 Nov 2022 18:31:38 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 9E0AB61E38;
	Wed, 23 Nov 2022 18:31:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C22FEC433C1;
	Wed, 23 Nov 2022 18:31:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669228294;
	bh=K+Iq1u99ln+hWt6sHmpc/POIaayidRC/UWiGVIGIdPo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JWnz1fYtlQovd9Sfe2d4PpK7jSZeCJaljf/94LGXGqteXYfT08QpviBEtK9bQhwqw
	 SQ9+2Iv5n6HXH0auYSojq8L/BgP65EZpmw8ZONZcsId5WEopaI/a8UiBfid7flzF+R
	 xv4dXbjWBTHAC+ODl1jg+IZMWJB178FFxFe7H+qvKlTdfehFfSVZAo9tcMRoV9I2Ks
	 xo0zS8Hpi7OndVwilZP33AGfYc5NpkNZdCAAokI94jWLe+gZ8vnRjEgBCSWBAAZQo6
	 mjClvOwG52kLWL5eFaNooFlPP/hVZ3PZ9LJN9qeY90+G8JknHoGI1YmY6K6VTUEFm1
	 +Gki26dGDBEIQ==
Date: Wed, 23 Nov 2022 18:31:32 +0000
From: Eric Biggers <ebiggers@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: martin.petersen@oracle.com, jejb@linux.ibm.com, andersson@kernel.org,
	vkoul@kernel.org, quic_cang@quicinc.com, quic_asutoshd@quicinc.com,
	linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-scsi@vger.kernel.org,
	dmitry.baryshkov@linaro.org, ahalaney@redhat.com,
	abel.vesa@linaro.org
Subject: Re: [PATCH v3 20/20] MAINTAINERS: Add myself as the maintainer for
 Qcom UFS driver
Message-ID: <Y35nBIIRmu3w9C1C@gmail.com>
References: <20221123074826.95369-1-manivannan.sadhasivam@linaro.org>
 <20221123074826.95369-21-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221123074826.95369-21-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221123_103136_937121_B3EE9528 
X-CRM114-Status: GOOD (  14.43  )
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

On Wed, Nov 23, 2022 at 01:18:26PM +0530, Manivannan Sadhasivam wrote:
> Qcom UFS driver has been left un-maintained till now. I'd like to step
> up to maintain the driver and its binding.
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
>  MAINTAINERS | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index cf0f18502372..149fd6daf52b 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -21097,6 +21097,14 @@ L:	linux-mediatek@lists.infradead.org (moderated for non-subscribers)
>  S:	Maintained
>  F:	drivers/ufs/host/ufs-mediatek*
>  
> +UNIVERSAL FLASH STORAGE HOST CONTROLLER DRIVER QUALCOMM HOOKS
> +M:	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> +L:	linux-arm-msm@vger.kernel.org
> +L:	linux-scsi@vger.kernel.org
> +S:	Maintained
> +F:	Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
> +F:	drivers/ufs/host/ufs-qcom.c

Thanks for volunteering to maintain this driver!

What about ufs-qcom.h and ufs-qcom-ice.c?  Those are part of this driver too.

The pattern drivers/ufs/host/ufs-qcom* would cover all these files.

- Eric

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
