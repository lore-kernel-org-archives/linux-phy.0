Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E0D8D374A8
	for <linux-phy@archiver.kernel.org>; Fri,  5 Dec 2025 21:30:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uLzpmACvF1bvjgbb5BXHHQjxuY9MNB+Us3BSfezZDaY=; b=oASFwIVg56QvWZ
	Akz1qyZqfuRxtLqLJ+BHDZMXxbfGXL8ffPQCdpSVHyu2H123jXbYPxc9jMtCJ6YQhln6wDF8Nz7FE
	Ol3ySR9w+76MApIHon2g2aCJGEWcTEYS+Vx1aBtiWjwlnvk2AMleVNqEfyDrQCEgjxMSAGtMnE0A4
	/n1gaRIegtSE6xV8fCB5TuZTQhIc4kd2AyX8UMVapIvZBYGwI60FSuwg+ueh/x67fPDPxiIaStAe0
	8VxxHrGiGwN2Sd7wFT42BIj1hPuJyrEvzdORBH5srsbiHVwdv8D8CLrFio5Km2ao0u1WlB8Y5Xvi3
	8elAKS1hqd+5K6NH4AEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRdNK-0000000A48Y-4C0u;
	Fri, 05 Dec 2025 21:30:03 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRdNJ-0000000A48M-11Eh
	for linux-phy@lists.infradead.org;
	Fri, 05 Dec 2025 21:30:01 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 4724A60138;
	Fri,  5 Dec 2025 21:30:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3697FC4CEF1;
	Fri,  5 Dec 2025 21:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764970200;
	bh=Wat73citxRfjTfvKv7uOEzz1Pks+to1ns7XuxiJ2Xpg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GF7xIsZEevHR2TvzVOgtaQJYt3cX4vrLPuut4at/iIrOgwImO3H6pKRj5M8uoTQCh
	 KYxV+nJBWFo9XgBP1tGrX8t8mXg4ikQ+CjFHieyT2lH9vVLbm8aCskI9MGUbcrVd57
	 tjnide0sHBrtBAFQqsMSJ9DAY34Gn/9NgZwUt3KOid+qt6k4247XB9pftKYXXH/ZzW
	 CIqA9LDExgb5mTE/N6vWqL5lHNUcdD2bJPL7uvDKrJrJ0LTfEH1IkkHZWLv15maede
	 MYyq/MLd85bFzyCHMNJdzZeioyP5zb7DWJ/VBAnXsuPOrZN3qpcEqVd0sy2ua8BsLj
	 FL+wB90fOkq+g==
Date: Fri, 5 Dec 2025 15:36:18 -0600
From: Bjorn Andersson <andersson@kernel.org>
To: Loic Poulain <loic.poulain@oss.qualcomm.com>
Cc: vkoul@kernel.org, kishon@kernel.org, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, dmitry.baryshkov@oss.qualcomm.com
Subject: Re: [PATCH] phy: qcom-qusb2: Fix NULL pointer dereference on early
 suspend
Message-ID: <r33k3aif4lzwfwashvkstqbxyncrr2yrtqejobfj6pm65wasi3@gyy3zex3u7lx>
References: <20251205160437.259125-1-loic.poulain@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251205160437.259125-1-loic.poulain@oss.qualcomm.com>
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

On Fri, Dec 05, 2025 at 05:04:37PM +0100, Loic Poulain wrote:
> Reorder runtime PM setup to ensure pm_runtime_forbid() is applied before
> enabling runtime PM.

Your commit message is pretty good, but in the future please consider
following the documentation [1] and really start your commit message by
establishing the problem. The "most significant bit" of your change
request isn't "let's reorder something", it's something along the line
of "enable before forbid can result in autosuspend, which results in
NULL pointer dereference".

[1] https://docs.kernel.org/process/submitting-patches.html#describe-your-changes

> This avoids possible early autosuspend and prevents
> qusb2_phy_runtime_suspend() from being called before driver data is
> initialized, which could otherwise lead to a NULL pointer dereference:
> 
> ```
> Unable to handle kernel NULL pointer dereference at virtual address 00000000000000a1
> [...]
> CPU: 0 UID: 0 PID: 11 Comm: kworker/0:1 Not tainted 6.16.7+ #116 PREEMPT
> Workqueue: pm pm_runtime_work
> pstate: 20000005 (nzCv daif -PAN -UAO -TCO -DIT -SSBS BTYPE=--)
> pc : qusb2_phy_runtime_suspend+0x14/0x1e0 [phy_qcom_qusb2]
> lr : pm_generic_runtime_suspend+0x2c/0x44

If you pipe the log through "./scripts/decode_stacktrace.sh vmlinux . ."
we get these decoded.

But that said, I'm pretty sure that what fails is the attempt to pull
cfg out of NULL on the second line?

> [...]
> ```
> 
> Fixes: 891a96f65ac3 ("phy: qcom-qusb2: Add support for runtime PM")
> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qusb2.c | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qusb2.c b/drivers/phy/qualcomm/phy-qcom-qusb2.c
> index b5514a32ff8f..97bc3755a390 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qusb2.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qusb2.c
> @@ -1093,13 +1093,14 @@ static int qusb2_phy_probe(struct platform_device *pdev)
>  		or->hsdisc_trim.override = true;
>  	}
>  
> -	pm_runtime_set_active(dev);
> -	pm_runtime_enable(dev);
> +

Doesn't this end up being two blank lines?

>  	/*
> -	 * Prevent runtime pm from being ON by default. Users can enable
> -	 * it using power/control in sysfs.
> +	 * Enable runtime PM support, but forbid it by default.
> +	 * Users can allow it again via the power/control attribute in sysfs.

I think this warrants adding "TODO: Removing the pm_runtime_forbid()
might allow autosuspend to invoke qusb2_phy_runtime_suspend() to
dereference the NULL drvdata" here.


But, if we know what the problem is, perhaps we should just fix it right
away?

Looks like the fix for the NULL pointer dereference is to move the
dev_set_drvdata() and phy_set_drvdata() above thus hunk.

And the "problem statement" stating why we're doing this change (which
still makes sense) is that "a wasteful autosuspend might happen between
pm_runtime_enable() and the pm_runtime_forbid()".

Regards,
Bjorn

>  	 */
> +	pm_runtime_set_active(dev);
>  	pm_runtime_forbid(dev);
> +	pm_runtime_enable(dev);
>  
>  	generic_phy = devm_phy_create(dev, NULL, &qusb2_phy_gen_ops);
>  	if (IS_ERR(generic_phy)) {
> -- 
> 2.34.1
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
