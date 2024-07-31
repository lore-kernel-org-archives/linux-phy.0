Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2E50C3DA64
	for <linux-phy@archiver.kernel.org>; Wed, 31 Jul 2024 10:58:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Osu+Ajt6gOSspptKdII22TRLijfPD7Bz/Bf6wq9gMo8=; b=XspmXFgScMMwFU
	7mRzrX9u15Vu5XvmJ6ttmaaE2gdtWq2pgsXVmdaWtHHxvzZLcttJQQJOykZkI0pWKKJ8XIiSxLHR0
	KkBxsmxntIbupqbuaqMmcT5opbcMQVPblkq4LALowM5/FFytFbn1mEvOP1wmuHNI184VzjDcIp5sm
	1nAq/5dfTnTgr7ssb02DsvayjTbs7Ls8yQL9d5oZNwFUgmbV2Otj4Il1PGXX3VdtK6+DepHk3+DHz
	qA5ydEBND+BNSM3/dDpmmwKzqSBMtfqRNKUGDrUXHYdNJ1UNUnyzRP2i8OVT7m8Gn1UMT5W0gELgO
	ea36FO7Df9WDnnN/iJMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ72m-00000000oWa-1G8c;
	Wed, 31 Jul 2024 10:58:56 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ72j-00000000oW6-1VB8
	for linux-phy@lists.infradead.org;
	Wed, 31 Jul 2024 10:58:54 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 2D151CE136C;
	Wed, 31 Jul 2024 10:58:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B3311C116B1;
	Wed, 31 Jul 2024 10:58:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722423530;
	bh=VW4oCYZr2JYAYnVYbwqq9fI4vsIbWEW1k7HmyYQ1HNA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ROQFSSPPiZmZ6D3D2Cqo87i46k5tKnpMAo2siKc7e2tbHhsQBAzU0cEHU04TKzYvO
	 lNhUiv4e+dNE+iE8hVniddGFyPIaost5T855kX6LjBdBU0P2oz2DOCtHWxJMQirWyA
	 jXPLrAnq9yJN/EgqmyMJVULcMbwEWJE9u/78wkJcH2P6cNkEhFKIxISx528SA85Ha9
	 LcXXY0x7s9HQ6bPJTH/hK8M5ePXEfKEG2f0t5NkowPeGTZzw7sV+vUJlciPbKCMyGc
	 M8yf9ZoRYsYSwpyYIkoAsdHmdootVQe9QQS/2Nt9CLuvXALNzD6AZl8cdZeEQH7pb+
	 OMk1QeccRx+sw==
Date: Wed, 31 Jul 2024 16:28:46 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: kishon@kernel.org, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: qcom: qmp: Add debug prints for register writes
Message-ID: <ZqoY5kFLDEmkb495@matsya>
References: <20240730100351.51454-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240730100351.51454-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_035853_609597_E9801292 
X-CRM114-Status: GOOD (  16.44  )
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

On 30-07-24, 15:33, Manivannan Sadhasivam wrote:
> These register prints are useful to validate the init sequence against the
> Qcom internal documentation and also to share with the Qcom hw engineers to
> debug issues related to PHY.
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-common.h | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-common.h b/drivers/phy/qualcomm/phy-qcom-qmp-common.h
> index 799384210509..e6a6bcfcac28 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-common.h
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-common.h
> @@ -9,6 +9,7 @@
>  struct qmp_phy_init_tbl {
>  	unsigned int offset;
>  	unsigned int val;
> +	char *name;
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
> @@ -45,6 +48,7 @@ static inline void qmp_configure_lane(void __iomem *base,
>  		if (!(t->lane_mask & lane_mask))
>  			continue;
>  
> +		pr_debug("QMP PHY: Writing: %s --> 0x%02x\n", t->name, t->val);

This lgtm, but fails to help when offset _might_ be incorrect, including
the offset value as well (not just the name) would be better imo... 

>  		writel(t->val, base + t->offset);
>  	}
>  }
> -- 
> 2.25.1

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
