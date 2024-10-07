Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 913A4CFB440
	for <linux-phy@archiver.kernel.org>; Mon,  7 Oct 2024 06:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=05dzEGJzaFb/gHcmYqiOjuZmzUFjMyAQ0dgbvxT0wIE=; b=ODwriMikNfDzBq
	X8q7Drwi9XntXRvC7yWBq1Bxngjqkv1GJmMS92aKfQLh4+XPZMH7Wc8HV+vgvHFfFBgQ1X3lDvcc6
	ILpSQlB2zXk1TbxbSN47IosQhXzIWotCmTfrcahaBkqY816jKYo4eM0oFeQcQiWa/iGgKmP6+/eqg
	N/q9umwjkfug8gl7KZTEgURX++duXYSTJsOjGR6AcqW/UWvaWpv9eb29YrgV1ZzdkA8/wPJWIS7Dk
	o4egmP9fHvc0Ydg52szIxfw4FR5C39y4dkrIQ5+xQHxnCDB8qtNyAkmNsDF2ew00xzgtzfcgFGfwG
	Tm5fYWedH+4GiJnQTV6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxhJf-00000001RpD-1Ie6;
	Mon, 07 Oct 2024 06:33:59 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxhE4-00000001Pxh-2JBr;
	Mon, 07 Oct 2024 06:28:13 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 163E4A41667;
	Mon,  7 Oct 2024 06:28:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8EF98C4CEC6;
	Mon,  7 Oct 2024 06:28:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728282491;
	bh=lJ4huQ20De27ax3+Y1wQiALnCQFPZG0PD8Xv1Wfasgw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tnXfJXfp3RbVsqldQaJi4bpsx6Y3wjpb2Hm3xon9CJQrwcGa7KifO5LESKRawT3U6
	 QzNFLTMmSh5SXHywU0LnyQzEgGPgK1sgki4bG+1FvLnZ7XAB6p3N34zofqm9dG4onT
	 N5eA2UBLOpglmpXEvNe5+2fG/AjegDhen8KFoP102x8inL3TpGHEUxkExrN7NyZF5v
	 gw1oVJpTiu3TFm4D1qErICKhlBeLr20h1wxBdas9XjDHRrzsiCbDjzjuAx1WWi+I0a
	 VkIg1XhX5qrpVAW6B1IdNu+44nVna4WE/NExuXPErYIcrZpciiBm/FnumScard0cXk
	 +WIFPj7TkEZjA==
Date: Mon, 7 Oct 2024 11:58:07 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Peter Griffin <peter.griffin@linaro.org>
Cc: kishon@kernel.org, krzysztof.kozlowski@linaro.org,
	alim.akhtar@samsung.com, tudor.ambarus@linaro.org,
	andre.draszik@linaro.org, kernel-team@android.com,
	willmcvicker@google.com, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org
Subject: Re: [PATCH 1/3] phy: Add UFS phy hibernate modes
Message-ID: <ZwN/d8l7Mk6x2GHP@vaman>
References: <20241002201555.3332138-1-peter.griffin@linaro.org>
 <20241002201555.3332138-2-peter.griffin@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241002201555.3332138-2-peter.griffin@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241006_232812_755198_5048FD42 
X-CRM114-Status: GOOD (  15.61  )
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

Hi Peter,

On 02-10-24, 21:15, Peter Griffin wrote:
> Some UFS phys need to write hibernation specific values
> when entering and exiting hibernate state.
> 
> Add two new UFS phy modes to the phy framework so that this
> is possible. One such platform that requires this is Pixel 6
> which uses the gs101 SoC.
> 
> Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> ---
>  include/linux/phy/phy.h | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
> index 03cd5bae92d3..1874e55e2bb9 100644
> --- a/include/linux/phy/phy.h
> +++ b/include/linux/phy/phy.h
> @@ -42,7 +42,9 @@ enum phy_mode {
>  	PHY_MODE_MIPI_DPHY,
>  	PHY_MODE_SATA,
>  	PHY_MODE_LVDS,
> -	PHY_MODE_DP
> +	PHY_MODE_DP,
> +	PHY_MODE_UFS_HIBERN8_ENTER,
> +	PHY_MODE_UFS_HIBERN8_EXIT,

I am not sure I like this. why should this be the model? Phy drivers
should listen to pm events and handle this in pm_suspend/resume calls,
why do we need this special mode here...
Also, this is not a "mode" for phy

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
