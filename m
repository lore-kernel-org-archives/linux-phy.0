Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C10F2C3DA7F
	for <linux-phy@archiver.kernel.org>; Thu,  1 Aug 2024 02:27:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qcthir/XZKBvFn0TERE+4ZStN+OoZ8J/U4DzHfiH59U=; b=N+odT2y1NovBe7
	XCxQ48ab6QqziFSc/haZ2wXHKsYviUuvM8VtFJjO2HaZG1BvrYnV7OpRkRDngl5tSRb58NmecwO5B
	26s++61cXQUwN23i9q37YnMDZBpsKUQhCn7/Vh40TyI3oeUKVbIvTGHO2M32y/QN+Z5nifx/b+Tri
	iRCsvRhz9x24Xk9lW/cGZEopzQzrPx8FcnnvQ6tIDsJwqosT4iav+LZYgM6G0dyv4syCH5pD653eZ
	SAoE4nvFayvuArdJf6qa72cd6biGLMKLoIOlzqcLulRUOkNgI/BQERunE3WjZ99tdD0tHeWfhNirP
	NEJZsXdAPahvTf3hYssQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZLWy-00000003RZL-1sJs;
	Thu, 01 Aug 2024 02:27:04 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZLWX-00000003RTr-2ZdQ
	for linux-phy@bombadil.infradead.org;
	Thu, 01 Aug 2024 02:26:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=SE4HjIBSBU7JRdKPDsjlGIYfqFe0/dXHiJVJGX0G6Fg=; b=KEsvQoM7HW465rtDCprQ9pCGKO
	kONi/eu82JMHcZLk3Q1zF7GWu2SNUz+XB8bEmfYzNfY99pgsQAOnt2vbT9s0ueLhTo3kL1b1wEpfI
	3Uoh8edQIHZsjl7Dh/ok/4R9/oPryL1UtkJ8J3IUcMVXHDHGYDvopU4hqZGLiUlWj4qkwe/db1iW9
	d4pQl6j0sO2a7XjsL5SfroLkvOPXo9Sk/NPreHeFsx/twnSFLgCklA6ST0nUMFH51tJAdKl9OZSmc
	I5KixzMHbdFr29W+sCNSiOwEPH+cvPAAF3d9ytnRjMeOBpwg4EVtcQrfLdKtQUk+z8SR+2v2x4SpD
	Qbe5JPhQ==;
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZLWT-00000005LVm-3L1V
	for linux-phy@lists.infradead.org;
	Thu, 01 Aug 2024 02:26:35 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id ADE9A6276F;
	Thu,  1 Aug 2024 02:26:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 06A26C4AF10;
	Thu,  1 Aug 2024 02:26:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722479189;
	bh=dOz9CZJAwvcwTM3cno/e4aaYLwlNEIrTcbyLJ2I+nmk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uHkqHvP+xvPRb7QSZmGyY4+JKZSbz5E+Rr6bMaoJtEzGgfv1C4fHmQrgJDKxpWcRC
	 700Y+cm9k78zsGNIEoNArxJN9YLrOc/DzplgjHl49xr2S0vhoIpSprKUdCCN707165
	 5CSX6zaB/AHGA6FcYx/DZijwLwPvoIaGcNiDlzB1kbybNAEpyvBYlPUoTYhIRyusds
	 4FYsfTUDvIoOJNyPMiYeGvXgbONgeZ/xqmKjieG8ImqZXmu9u4zo7bblvFAhi/5It7
	 h1UnXYGm3p7y4v9Uqjpaz8GsNWy3yn7tvqW/GlJeI7K8jSsNOmeaYPuAUv9IEb7/JG
	 vq9w8FkC1QHVQ==
Date: Wed, 31 Jul 2024 21:26:27 -0500
From: Bjorn Andersson <andersson@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: vkoul@kernel.org, kishon@kernel.org, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] phy: qcom: qmp: Add debug prints for register writes
Message-ID: <nkfrtuxv4ueow66bnazyb4ul3pz3z3wo6zsptu6wnw7hflxerx@pkwn7sx6gfqi>
References: <20240731115637.90351-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240731115637.90351-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240801_032634_162989_1ACA1838 
X-CRM114-Status: GOOD (  18.84  )
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

On Wed, Jul 31, 2024 at 05:26:37PM GMT, Manivannan Sadhasivam wrote:
> These register prints are useful to validate the init sequence against the
> Qcom internal documentation and also to share with the Qcom hw engineers to
> debug issues related to PHY.
> 

I've written this patch every time I've touched one of these PHYs, so I
certainly like this.

> Sample debug prints:
> 
> QMP PHY: Writing Reg: QSERDES_V5_COM_SYSCLK_EN_SEL Offset: 0x0094 Val: 0xd9
> QMP PHY: Writing Reg: QSERDES_V5_COM_HSCLK_SEL Offset: 0x0158 Val: 0x11

That said, with multiple instances of PHYs being configured at about the
same time it seems this would benefit greatly from something identifying
which PHY instance the write relates to?

dev_dbg() would certainly be nice...

> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
> 
> Changes in v2:
> 
> * Modifed the debug print to include reg offset
> 
>  drivers/phy/qualcomm/phy-qcom-qmp-common.h | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-common.h b/drivers/phy/qualcomm/phy-qcom-qmp-common.h
> index 799384210509..40beb413328f 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-common.h
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-common.h
> @@ -9,6 +9,7 @@
>  struct qmp_phy_init_tbl {
>  	unsigned int offset;
>  	unsigned int val;
> +	char *name;

const?

Regards,
Bjorn

>  	/*
>  	 * mask of lanes for which this register is written
>  	 * for cases when second lane needs different values
> @@ -20,6 +21,7 @@ struct qmp_phy_init_tbl {
>  	{				\
>  		.offset = o,		\
>  		.val = v,		\
> +		.name = #o,		\
>  		.lane_mask = 0xff,	\
>  	}
>  
> @@ -27,6 +29,7 @@ struct qmp_phy_init_tbl {
>  	{				\
>  		.offset = o,		\
>  		.val = v,		\
> +		.name = #o,		\
>  		.lane_mask = l,		\
>  	}
>  
> @@ -45,6 +48,8 @@ static inline void qmp_configure_lane(void __iomem *base,
>  		if (!(t->lane_mask & lane_mask))
>  			continue;
>  
> +		pr_debug("QMP PHY: Writing Reg: %s Offset: 0x%04x Val: 0x%02x\n",
> +			t->name, t->offset, t->val);
>  		writel(t->val, base + t->offset);
>  	}
>  }
> -- 
> 2.25.1
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
