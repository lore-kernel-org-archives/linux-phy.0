Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F655606A335
	for <linux-phy@archiver.kernel.org>; Fri, 27 Nov 2026 13:41:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=RW1nGQD5;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=UKQWceuC
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=BAbny7nToDhybRXtHQUCQcMSSCTHsR7/5mffgWheuNo=; b=RW1nGQD59hAC1Ny9yaRLaXAHaA
	lPb1MUbF7xOANl82OHQ/XSTZAz91Uo8Nd5UbZ6VIuzngBXVs1AE1qF5tVlDQ8CZUG1y6kK9qIaeF/
	dRdD/Y7uNH5VOYuTYN0+Mxieh6wl+VVdi2dfN7oTiR+LIp+EKZ0o0tuUnaGjo5WH5yxlWfiqOTIku
	udCMyfeyTz4PX4imhE0U9Gt09pcpMlXc9EpLbWZaAirRx3VY0IbwO4RFctDt1D5+wjKNJIfKYGd85
	5r4lNwN09xrbYqh/xNdhcim/9rwnDKbSAsR56c2scIBHhSMmhHPsZUClwKKR5L+H/+SW0o/zhLQBR
	86N8qN4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWwCz-0000000GIKv-3bH7;
	Fri, 27 Nov 2026 13:41:49 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWwCx-0000000GIKH-3XWG
	for linux-phy@lists.infradead.org;
	Fri, 27 Nov 2026 13:41:47 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 99F2D4547C;
	Fri, 27 Nov 2026 13:41:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C02541F00893;
	Fri, 27 Nov 2026 13:41:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795786907;
	bh=BDo//JmYwl1UQRJ5WVgMZg3yymgH4OPVdjLNDAoJQ+A=;
	h=Subject:From:To:Cc:In-Reply-To:References:Date;
	b=UKQWceuCZyzZ+uqcWviiLyA5Kg9HClcVe3LQ59lbX/flKnZg7g/I9z5sRyAHbxJt8
	 4mDgKYcWOacgr7upCIGw2TDDcKq0zEPP5j3vZFwRFyDI+yXT1XuMq6OpM/hngufg7v
	 6fzz6tboP9rm+ZnVdi4+kK9aJrLmL1yxNcbI2RQFiJk6blKnkF1RxfZvj3s0GXgQZL
	 q9RCNDWj+CI045lpGZ1VbQqyPIhqBym43InYk6xnUkDrKbnLIzkthArZ3wBjzn2ll4
	 bv/sDs9R1MLwW74Ra93Skcv5Da4W/ol/TpfGUVlV53u6RM+0n53GOMBokhuTVITlQD
	 /3VY1aLaZ5jhA==
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH v2 2/2] phy: qcom: qmp-combo: Add PM suspend/resume
 callbacks
From: Manivannan Sadhasivam <mani@kernel.org>
To: Prashanth K <prashanth.k@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20261113103111.156476-3-prashanth.k@oss.qualcomm.com>
References: <20261113103111.156476-1-prashanth.k@oss.qualcomm.com>
 <20261113103111.156476-3-prashanth.k@oss.qualcomm.com>
Date: Fri, 27 Nov 2026 19:11:41 +0530
Message-Id: <179578690105.13164.10122053052435645688.b4-reply@b4>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1985; i=mani@kernel.org;
 h=from:subject:message-id; bh=y1ICl9vTrafLL51TQXZn7JctWWJLDdci3DtJErJWppU=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBrCYiXVAgM1GXDFYHgHjC61HHDNS0KF/izNjPux
 3WXJzR1geWJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCawmIlwAKCRBVnxHm/pHO
 9ScMB/4ymnEjlhbG+zY4Hv/PZ2nwUxVkgwo4O0/1+0zXApW2fmgRW+FMNCnoVvgiDxyz2MMxhcJ
 yRGAbjkUD/cmWHd48yl5OyO2dRE0NGC5703NBUKIzchfNO4IKEk4FUnQNbb58qzUwWdXeIKWz8J
 KbIJIe3x7NfgfDVijf96Ya2rh0kXpgx7AcVlDJAOcAcL59f8JponXG3bn5DRJtgfwsgE14lQaML
 oPjfkDsfBxVh1oiLDKM7czHGKOpZCUh6xrdKsnNJEOywKBzlESwOe9RKpgy3HXS8gsgMeA6XP2P
 5SczwWMOptHQC2pWPYRyfCHO6sOqfoNr9+mWjv1zktpFuixA
X-Developer-Key: i=mani@kernel.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 2026-11-13 16:01 +0530, Prashanth K wrote:
> Currently when we perform system suspend, the phy clocks aren't
> turned off leading to power leakage. Prevent this by adding PM
> suspend/resume callbacks for the qmp-combo-phy which toggles
> clocks on/off correspondingly.
> 
> While at it, add mutex guard in runtime_suspend/resume in order
> to prevent any race between RT operations and phy_init/exit(),
> as it can lead to unclocked register access crash, underflowing
> the clock enable counts.
> 

I don't see how this race can happen.

> Signed-off-by: Prashanth K <prashanth.k@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> index 187f0cd11f6c..65d280f45db1 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> @@ -4717,6 +4717,8 @@ static int __maybe_unused qmp_combo_runtime_suspend(struct device *dev)
>  
>  	dev_vdbg(dev, "Suspending QMP phy, mode:%d\n", qmp->phy_mode);
>  
> +	guard(mutex)(&qmp->phy_mutex);
> +
>  	if (!qmp->init_count) {
>  		dev_vdbg(dev, "PHY not initialized, bailing out\n");
>  		return 0;
> @@ -4737,6 +4739,8 @@ static int __maybe_unused qmp_combo_runtime_resume(struct device *dev)
>  
>  	dev_vdbg(dev, "Resuming QMP phy, mode:%d\n", qmp->phy_mode);
>  
> +	guard(mutex)(&qmp->phy_mutex);
> +
>  	if (!qmp->init_count) {
>  		dev_vdbg(dev, "PHY not initialized, bailing out\n");
>  		return 0;
> @@ -4761,6 +4765,7 @@ static int __maybe_unused qmp_combo_runtime_resume(struct device *dev)
>  static const struct dev_pm_ops qmp_combo_pm_ops = {
>  	SET_RUNTIME_PM_OPS(qmp_combo_runtime_suspend,
>  			   qmp_combo_runtime_resume, NULL)
> +	SET_SYSTEM_SLEEP_PM_OPS(pm_runtime_force_suspend, pm_runtime_force_resume)

Same comment as patch 1.

- Mani



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
