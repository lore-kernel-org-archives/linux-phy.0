Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81A1BC8303F
	for <linux-phy@archiver.kernel.org>; Tue, 26 Aug 2025 02:50:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DGtc++/zY+dkFOczeDXK5p5eiL1OOcq4otD6gDshRfI=; b=D+QJ4wiQM3rSCR
	PTFKHFYZl3S/S8d47zvNFwyaa1mu8Z8zCoJuEZUge/v/3+c10/GXIwNo8AGI4U4XaqzEy3OfMIomX
	VF1XxwTBX40X5ObJwtt6i8TZ9D4hnB5gYO5XkhDWamCIYPpjdA8FKOMXdR6ayXlAUmQTtkg4XQOOp
	+ixxnmpDUzU2qhJ4IgnnOXD/nnMJ5Lj+95QmfeOv9A0+fwPqMcH/X/fzA9KeCHrEM2UJuFuhEPeyB
	0eLMi/VUj1D29Wd5TO5H3AKvkRwvAoapfX0cARArI9HEOlaweS8BdIrWlgTAIc20KpGuEf+jTSs69
	QZYPLMSCC1La8CSwZV1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqjlc-0000000AOLm-0u28;
	Tue, 26 Aug 2025 02:50:36 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqjla-0000000AOKx-1gYK
	for linux-phy@lists.infradead.org;
	Tue, 26 Aug 2025 02:50:35 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 5298844097;
	Tue, 26 Aug 2025 02:50:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 67CCAC4CEED;
	Tue, 26 Aug 2025 02:50:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756176633;
	bh=AbJJ1EszlkRohUPvaEJ+i+FE4jPykgsI+1CKe8TjVRg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dNJ4cCU02NBjgYoZikNeB1nB6F843aosoX176giwHCVeN7LEKRfir8KlC352JbJn+
	 xRMeIQhwJJxY97jrU9EQParoxZpVaGaQlkA8F42yZXIVtfSMxvJIYnOvRWML+ehv37
	 MeHkpshnhaWd1lvgiTcutcCOVQbmYTTiLdPizJX10hO1z+k/OZvxTclcr7mLGvfSm9
	 D8z23d19m+Twew16ncgm2SP0mEVot0sXXEFwu33cB4zp/udQSZ2su2+ZOYRknIfNuG
	 9l46KVXysUJEOmapX0Kpj6aOqvo/K4GNkh4R7G3PBR56MqYjsDt1GJWdvC2N8tg1td
	 iOf9io9Jv+Acg==
Date: Mon, 25 Aug 2025 21:50:30 -0500
From: Bjorn Andersson <andersson@kernel.org>
To: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Dmitry Baryshkov <lumag@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Poovendhan Selvaraj <quic_poovendh@quicinc.com>, 
	stable@vger.kernel.org
Subject: Re: [PATCH 1/3] phy: qcom-qmp-usb: fix NULL pointer dereference in
 PM callbacks
Message-ID: <sxqgnmj4bawj7n6kan7tiutb5ynhxz6cgbtpbz2xx4ixodtdw6@q2ftbnpjouvb>
References: <20250825-qmp-null-deref-on-pm-v1-0-bbd3ca330849@oss.qualcomm.com>
 <20250825-qmp-null-deref-on-pm-v1-1-bbd3ca330849@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250825-qmp-null-deref-on-pm-v1-1-bbd3ca330849@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250825_195034_485462_278763D3 
X-CRM114-Status: GOOD (  23.08  )
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

On Mon, Aug 25, 2025 at 05:22:02PM +0530, Kathiravan Thirumoorthy wrote:
> From: Poovendhan Selvaraj <quic_poovendh@quicinc.com>
> 
> The pm ops are enabled before qmp phy create which causes
> a NULL pointer dereference when accessing qmp->phy->init_count
> in the qmp_usb_runtime_suspend.
> 

How does that happen? Do we end up in the error path inbetween the
devm_pm_runtime_enable()? Or does it happen by some other means?

This would be quite useful information for others to know if they hit
the same or just a similar problem.

> So if qmp->phy is NULL, bail out early in suspend / resume callbacks
> to avoid the NULL pointer dereference in qmp_usb_runtime_suspend and
> qmp_usb_runtime_resume.
> 
> Below is the stacktrace for reference:
> 
> [<818381a0>] (qmp_usb_runtime_suspend [phy_qcom_qmp_usb]) from [<4051d1d8>] (__rpm_callback+0x3c/0x110)
> [<4051d1d8>] (__rpm_callback) from [<4051d2fc>] (rpm_callback+0x50/0x54)
> [<4051d2fc>] (rpm_callback) from [<4051d940>] (rpm_suspend+0x23c/0x428)
> [<4051d940>] (rpm_suspend) from [<4051e808>] (pm_runtime_work+0x74/0x8c)
> [<4051e808>] (pm_runtime_work) from [<401311f4>] (process_scheduled_works+0x1d0/0x2c8)
> [<401311f4>] (process_scheduled_works) from [<40131d48>] (worker_thread+0x260/0x2e4)
> [<40131d48>] (worker_thread) from [<40138970>] (kthread+0x118/0x12c)
> [<40138970>] (kthread) from [<4010013c>] (ret_from_fork+0x14/0x38)
> 
> Cc: stable@vger.kernel.org # v6.0
> Fixes: 65753f38f530 ("phy: qcom-qmp-usb: drop multi-PHY support")

Has this been a reproducible issue for last 3 years? I think the fixes
makes sense in that it introduced the indirection, but when did the
issue actually show up?

Regards,
Bjorn

> Signed-off-by: Poovendhan Selvaraj <quic_poovendh@quicinc.com>
> Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
> index ed646a7e705ba3259708775ed5fedbbbada13735..cd04e8f22a0fe81b086b308d02713222aa95cae3 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
> @@ -1940,7 +1940,7 @@ static int __maybe_unused qmp_usb_runtime_suspend(struct device *dev)
>  
>  	dev_vdbg(dev, "Suspending QMP phy, mode:%d\n", qmp->mode);
>  
> -	if (!qmp->phy->init_count) {
> +	if (!qmp->phy || !qmp->phy->init_count) {
>  		dev_vdbg(dev, "PHY not initialized, bailing out\n");
>  		return 0;
>  	}
> @@ -1960,7 +1960,7 @@ static int __maybe_unused qmp_usb_runtime_resume(struct device *dev)
>  
>  	dev_vdbg(dev, "Resuming QMP phy, mode:%d\n", qmp->mode);
>  
> -	if (!qmp->phy->init_count) {
> +	if (!qmp->phy || !qmp->phy->init_count) {
>  		dev_vdbg(dev, "PHY not initialized, bailing out\n");
>  		return 0;
>  	}
> 
> -- 
> 2.34.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
