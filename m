Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D73AC5CFCF
	for <linux-phy@archiver.kernel.org>; Tue, 11 Aug 2026 16:44:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ANaeQH9AsemplDh7f6BZ0CXnKcj4M7tSbweZVYku6FY=; b=ybXP8rCIhJvgz+
	JvrEPio/Nx3Yp1dlcmkG3Z438vRnkPgBzMcNOKXGyaUUfFRxxBu/QV9iuHo5Na/MdLDc4fNt39Mj4
	KVta2prtrb4kn1YXaw6NW7WIbmfNruotjnyASpAGKJeUCpFXlqXK+YzpROQLgVuUsTwsMR4dl/OUm
	ipzO6BjUBDZ0HrTbqpK2B0LBV+t6RKN9m+kZglXe/ZlF9A1CeqmpJep8e4MM+0KB/YRT2sq5w/Z/J
	orXiKbXXb5ufCQCl7rMjEowFZvJwmPrGIGnhVF49MTkQEM4ajbhkUxsuM/QVdsoIbk4Ts8WMhVH9n
	ErFIkNs/mRO0iuenyp4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtpaj-0000000EXXM-02ds;
	Tue, 11 Aug 2026 16:44:41 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtpag-0000000EXWg-3kJL
	for linux-phy@lists.infradead.org;
	Tue, 11 Aug 2026 16:44:38 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 57E04600AE;
	Tue, 11 Aug 2026 16:44:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2A7101F00A3D;
	Tue, 11 Aug 2026 16:44:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786466678;
	bh=AtfBFpLGShPZWATDKrUP0e0nAycm4kCCFnpD/uNXxBo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Md8r6Qw09HWoz6po61gwelyjUhG3+t+RzhCnnl6Y1rUkQzZBKGXxB7td5AP7zBXiR
	 5O+mwMG6NOQoQCtO7/r8d73G+gRPq/w1/s/5rv2FoU/QPst0Km7MTGEAwKwc5mTNGp
	 mabNBDSl7nxTSdZDaAcfBKVSBAwdBslrQ9VkUu6JhwQ7GC3ADyo4Tqz4YCAGO9eftW
	 4Od+g7hGA06xi4HgNObkWR/6FsvulGZJ+PpG01pOBusxAj/AquE7Z2fB00D4cJaRhe
	 BehfVVPjxQiOJlHhC2sLWjoF3OHQd+OCZ3kVgyuXh7kXnq6G0fxiY90pDjLLOinA7C
	 SoEFqICNcCzWQ==
Date: Tue, 11 Aug 2026 22:14:33 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: neil.armstrong@linaro.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] MAINTAINERS: Add Manivannan Sadhasivam as the Reviewer
 for Generic PHY Framework
Message-ID: <antRcTHySshDaZ5m@vaman>
References: <20260811143417.336664-1-mani@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260811143417.336664-1-mani@kernel.org>
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

On 11-08-26, 16:34, Manivannan Sadhasivam wrote:
> I'm volunteering to review the PHY patches. Hence, add myself as the
> Reviewer.

Thank you Mani

> 
> Signed-off-by: Manivannan Sadhasivam <mani@kernel.org>
> ---
>  MAINTAINERS | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 15011f5752a9..ef8b09df37db 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -10920,6 +10920,7 @@ F:	include/uapi/asm-generic/
>  GENERIC PHY FRAMEWORK
>  M:	Vinod Koul <vkoul@kernel.org>
>  R:	Neil Armstrong <neil.armstrong@linaro.org>
> +R:	Manivannan Sadhasivam <mani@kernel.org>
>  L:	linux-phy@lists.infradead.org
>  S:	Supported
>  Q:	https://patchwork.kernel.org/project/linux-phy/list/
> -- 
> 2.43.0

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
