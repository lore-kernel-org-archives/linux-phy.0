Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9967C3601E
	for <linux-phy@archiver.kernel.org>; Mon, 14 Apr 2025 06:59:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CoFesKmL5CUdvX/Xtw5JouZ2l6XxFc1XYHezgW4v7M4=; b=zlooTvOo3YGlpx
	nmSpcyvAnJkMq5/RPQwKFidTHHObdGs4Rz7yU4sReurVdueQ7Byc0k/Y83cQ8Kfr5N3OyMQzx1cYX
	meNkUMett2RgzfBgtFl4afOHcqCTKB/stQoJ/ac078mLvLHbl+If/86+7gLlOArDstkLVtHDH9uPC
	FaX7/VVOL+da/p8XMLCJ9Rvq+afA0H5tom9r4/K8I1Un+3wcwzQNxdRhSDXMHi7oA7BbMaFYXbgTY
	BtVTWE/Z9OFkqDMSAY1FUUVZ9IOWTQK/AjUsTVzdClRmE5mEGRSfGgQ8iFzC21kwc4NU6+XyBGpk2
	HJ3SMlsBEmsni7vAYgHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4Dn1-00000000rq2-1ICD;
	Mon, 14 Apr 2025 06:59:31 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4Dkr-00000000rYf-2qaB
	for linux-phy@lists.infradead.org;
	Mon, 14 Apr 2025 06:57:17 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 5840D60007;
	Mon, 14 Apr 2025 06:57:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 53266C4CEE2;
	Mon, 14 Apr 2025 06:57:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744613835;
	bh=mqy+aOHjVKggByK6p/2KyFRHnUz1N9o7I6IVLGCDoWg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=F1mwHNTd5ZYVAB7ZS8zFkWpRKfoBKT42FaZJgQlq2mkfY70IPlKdE5GqQxfRNcMu/
	 9xsuLXjJKf8kzqzf6SGsqaFjrU9UwliEKl9wFTEoiKulve30/JW6EN9S0QV1QLCB8I
	 vDjEXEKNM51fholDhVIi99y6EafYba7bhE7mxHQhWcXxlZYTAS+lUw2ql7Z0n5qcNi
	 811gh/UUXgUR7PrJEuy0PxQpszQ0Amefim3MRPm4Zd+qegKEH0pnL/BZ84bAHyYB9H
	 Fndg5BVfKqs311r70/4kEoQgsXrON7GIFFXGaAhWOxUFGYOTOMfRMljddNi6gOkoG+
	 au8i/dKtTCmCw==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan@kernel.org>)
	id 1u4Dkk-000000001A4-19TE;
	Mon, 14 Apr 2025 08:57:11 +0200
Date: Mon, 14 Apr 2025 08:57:10 +0200
From: Johan Hovold <johan@kernel.org>
To: Chenyuan Yang <chenyuan0y@gmail.com>
Cc: vkoul@kernel.org, kishon@kernel.org, lumag@kernel.org,
	quic_kriskura@quicinc.com, manivannan.sadhasivam@linaro.org,
	konrad.dybcio@oss.qualcomm.com, quic_varada@quicinc.com,
	quic_kbajaj@quicinc.com, johan+linaro@kernel.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: qcom-qmp-usb: Fix an NULL vs IS_ERR() bug
Message-ID: <Z_yxxoa12N9rNn2z@hovoldconsulting.com>
References: <20250413212518.2625540-1-chenyuan0y@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250413212518.2625540-1-chenyuan0y@gmail.com>
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

On Sun, Apr 13, 2025 at 04:25:18PM -0500, Chenyuan Yang wrote:
> In qmp_usb_iomap(), one branch returns the result of devm_ioremap(), which
> can be NULL. Since IS_ERR() does not catch a NULL pointer,
> add an explicit NULL check in qmp_usb_parse_dt_legacy() to prevent
> potential dereference issues.

Good catch, but please move the handling of this into the
qmp_usb_iomap() helper so that it returns an error pointer also if
devm_ioremap() fails.

> Signed-off-by: Chenyuan Yang <chenyuan0y@gmail.com>
> Fixes: 2a55ec4f0a04 ("phy: qcom-qmp-usb: merge driver data")

This is not the commit that introduced the issue; this should be:

Fixes: a5d6b1ac56cb ("phy: qcom-qmp-usb: fix memleak on probe deferral")
  
>  	qmp->pcs = qmp_usb_iomap(dev, np, 2, exclusive);
> +	if (!qmp->pcs)
> +		return -ENOMEM;
>  	if (IS_ERR(qmp->pcs))
>  		return PTR_ERR(qmp->pcs);

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
