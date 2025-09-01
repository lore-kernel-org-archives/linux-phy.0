Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F07CCA0FFF
	for <linux-phy@archiver.kernel.org>; Mon,  1 Sep 2025 17:14:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gjc14Yi+U88um3Hz36R+gj0dtYpFTQc+Yv4KqWviNpo=; b=VmS8Cft5SbMlHK
	bOe0CZrEgXb0r3KSUjDZ3QKn3VLQy6nl97V2ZcF3s7hDPeFwqRdb0GVjiQxlsrMb5xsABMAgCB9su
	5lKBDJJDGu2fUHQHhQDDtRrNqiIafrt4O0nIT0VR7GofH2cCI/ZgvtKAUN0vlTdWi6JFyP5Tqvqev
	YcLYYhAvkVWaDVHTwoMLabnx5eH0R7aR3y3ZIwOw1c2PD5GXwhpMl6bdyfZ5FvY6Mmkq2RjhPatjM
	/z7NJ7P6ArtRHysj3fba+aHdeQitbdvPtJ7lJO4YIhcvuQ858h1eW/lc5g5Himvzu852FyVFpDf7+
	9IsooNMUuxypgbSf4EBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ut87K-0000000DQiG-03Gy;
	Mon, 01 Sep 2025 17:14:54 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ut4zV-0000000CmPt-2zBf
	for linux-phy@lists.infradead.org;
	Mon, 01 Sep 2025 13:54:37 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 1DA24601E2;
	Mon,  1 Sep 2025 13:54:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D9B07C4CEF1;
	Mon,  1 Sep 2025 13:54:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756734876;
	bh=dKazTaBppRdZ6pcD75vpdUcxLLB5hqEqMkzZHVCiBNg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=A+jCrNZkKxm1FbmK7b6ytLKAccupSYtvZJ2uNzZpJd8Tq0XYY+TGtUnl4b4caNfMG
	 M9A+8hepao3DlYv4q/TiNnMM+DdFy5pbNyGJXOv94ql+QikuYXFWIxbQ0uSxjpevZP
	 C5uWZcc+eH++OHHJ5Pn1MatGlzqgiX+FncArgfdQorkd9kGVR/mJP499McpJ8jrYDO
	 DUmk4v14SDDEgKEv+iU817LJvYvdJ7Yo9QNnJK4iKo+U74FbHbBX0kUOoqPDlA5NNO
	 kFtiMV3LME+uq3NWq303IC7Rc4A3o1TiVBaWbOdNUdEzno6RCp9a6f9RDg/sAYfH6I
	 ip07/GiRVh4bw==
Date: Mon, 1 Sep 2025 19:24:31 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Dmitry Baryshkov <lumag@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Poovendhan Selvaraj <quic_poovendh@quicinc.com>,
	stable@vger.kernel.org
Subject: Re: [PATCH 1/3] phy: qcom-qmp-usb: fix NULL pointer dereference in
 PM callbacks
Message-ID: <aLWllyKvag-BAXjn@vaman>
References: <20250825-qmp-null-deref-on-pm-v1-0-bbd3ca330849@oss.qualcomm.com>
 <20250825-qmp-null-deref-on-pm-v1-1-bbd3ca330849@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250825-qmp-null-deref-on-pm-v1-1-bbd3ca330849@oss.qualcomm.com>
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

On 25-08-25, 17:22, Kathiravan Thirumoorthy wrote:
> From: Poovendhan Selvaraj <quic_poovendh@quicinc.com>
> 
> The pm ops are enabled before qmp phy create which causes
> a NULL pointer dereference when accessing qmp->phy->init_count
> in the qmp_usb_runtime_suspend.
> 
> So if qmp->phy is NULL, bail out early in suspend / resume callbacks
> to avoid the NULL pointer dereference in qmp_usb_runtime_suspend and
> qmp_usb_runtime_resume.

That is a band-aid. we should enable pm only when ready... 
Why not do that instead?

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

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
