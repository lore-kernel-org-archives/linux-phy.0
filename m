Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6646EB270F
	for <linux-phy@archiver.kernel.org>; Tue, 10 Feb 2026 20:30:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S8kYZKZjUpJjKJxkYSNzOSKbK6TiEp90r3cZ/2CkhcM=; b=rP6GQIw9eu2aNZ
	2bg9qXVZ8iT5qE8xSznKfkY34ZOjWl9zVvGb9Gt9YbzOK2jrXCJw24M2iI3SPwSk564YrgtOuEEcv
	oYukbks4F6YRYS5KAB7Z4Kopi2ObQyDlWFrRAEpehsBI+eJuWOkCDjrXDo6LS+8sNyD11ys/ob7eT
	9fQwYDF84erNwyD3CM90cGDgjIgRpsjs6j44AkD4kMZsaWdyTBDEx+jP+NIaJjREEas1Ex3rFuEvX
	/P6YCScuP1WJoh5iUnMkMg2vqjT8zZs2wNox9q56l8NHmUymCfTZcjPuUmrezZBe//zA3zBrSFFG5
	92adbfgF2yFSFjQMD/IQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpuNa-0000000HU2q-07BN;
	Tue, 10 Feb 2026 20:30:38 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpuNM-0000000HU2T-1Qbx
	for linux-phy@lists.infradead.org;
	Tue, 10 Feb 2026 20:30:36 +0000
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-437696cc5a5so244278f8f.2
        for <linux-phy@lists.infradead.org>; Tue, 10 Feb 2026 12:30:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770755422; x=1771360222; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=PmFqy4a/y7/G6LMLBYsR10AC71ubgLHhE6Tq452T3aA=;
        b=iGy+qIkMQTrQ1G+7mKkeyRzdqCreP+WosDOCraGvaG8DMhWRSS/BQleT/3IFjvuyBs
         cbvsP19dNHTnet5IcC8+YODtHVdkHMOSqIFjcDwBFxWLvPq6mcWZA4t5doyj9K21OVU7
         AS1c5D+9CCh66MEKfD9AyMVWU7py5GtQlBGuQHyfUo4WxeTcdLksejpCycUY2XjuukWo
         2QHHvO5/pb00DY91kdijQZm9E8IeVakaJlwFu6NqjNZ0WV90f4UVx1Fnd3U/bLBBoppA
         8qi6eiaDZvlXrj1H6GtU4U+WPfsSv3ixxWE3zrMx+Gylar6PP5bThtac4ftBH9A4zBQh
         ZODA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770755422; x=1771360222;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PmFqy4a/y7/G6LMLBYsR10AC71ubgLHhE6Tq452T3aA=;
        b=SgsT9uEfx0XMmZHBeHtL3AGOXLR2YGjTxFZbpI4nBw7q5anFDpxhxIBfmD1l4G1gZt
         wNwouCH3NWSI8IoPPG+PvaRLcGamZdV9eoSBGmzTQYaAVb75DtIOiHVRVnZPAh2Yl08I
         yzZX3nnHUe/q9D6dxd6zk/PU0pPqkxi1mVB8U0vG8Pg21D8wveuSVGvthE7Tt8tK/bgd
         W9xENNDBxN8GCf9W5oE0paX78U3Ey58yA5ta27hleNJzWaWfA1yHOjS2YQezAp/Jpyy3
         nqHWTWpmSQvwse2UC7U7f2K0hnPCgbrdVEXBhunJi2TPXQiy4y8pUJI6SQPqqZI2jIB2
         eisw==
X-Forwarded-Encrypted: i=1; AJvYcCXPSO8KMBm1JIAeuuNPQYEj4Jkf484YWJJ+Id4XMS3ChAPjGkCuWL3QEyQmpp4d0Fsz7AcN0fVizz4=@lists.infradead.org
X-Gm-Message-State: AOJu0YwufWee3mXzyqGqNFw4r4jJ8VlSQuh8JQpJWCovcxy+HSyNLV3O
	FKQvyzqKS6whEfGqw1dEqyN7GbSfQoCWtWVWrMnHpH+qWL3QuZ9xPyjVU/N9cA==
X-Gm-Gg: AZuq6aLcChnFGyX6jYmWDRwL8tJEeJolQPbM2hqs4/i6iBO0F4vR8pskiqbEnygBNvK
	5OMe3clVTV+1ZmyMTw4u4e1SaICRZLTI3AMrb9owsMjoSG1LhePCKAZwrFJ9A2XdqcguUI2f5D2
	T8AFdiones9c7hEjmiW6+S6YVBQmQg7cHYL72wh+ouq1zwl6pw8nIHQHQG5X95tnELkCXZDAHF/
	rOER7BeZvRmsHbHSOorvmwcxXzQ0Jf+4mgFE5m3c+LoBklPIVjcUERx8DNzbVzfioIEF5ANQvgE
	jRYYkhNQ5inxAVKHVH7eDBfBLCJvohTgTs3TnTxjQRIZaM+LWwkDbbOnRPNQ6nAtnKv9eWoFhvH
	5OHxEnyX+eB8vDjEQZ3PFNxlXJ/A7JMuDh/WhGwduRcHw/t7xFPjuuUpyg2IIZa8EhUKuQ+Z0zE
	+OSFtSDubqRPSlkyo=
X-Received: by 2002:a05:600c:1f82:b0:477:7a78:3000 with SMTP id 5b1f17b1804b1-48351228e20mr24402285e9.6.1770755422195;
        Tue, 10 Feb 2026 12:30:22 -0800 (PST)
Received: from skbuf ([2a02:2f04:d501:d900:d8ac:c964:9b43:1b13])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4835a5c0df8sm3313025e9.0.2026.02.10.12.30.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 12:30:20 -0800 (PST)
Date: Tue, 10 Feb 2026 22:30:18 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Felix Gu <ustc.gu@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Jyri Sarha <jsarha@ti.com>, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: ti: j721e-wiz: Fix device_node leak in
 wiz_get_lane_phy_types()
Message-ID: <20260210203018.dr6dwj55aob3phsd@skbuf>
References: <20260211-wiz-v1-1-fdd018d02f33@gmail.com>
 <20260211-wiz-v1-1-fdd018d02f33@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260211-wiz-v1-1-fdd018d02f33@gmail.com>
 <20260211-wiz-v1-1-fdd018d02f33@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260210_123026_870830_DE470125 
X-CRM114-Status: GOOD (  21.18  )
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

Hi Felix,

On Wed, Feb 11, 2026 at 02:14:11AM +0800, Felix Gu wrote:
> The 'serdes' device_node is obtained using of_get_child_by_name(),
> which increments the reference count. However, it is never put,
> leading to a memory leak.
> 
> Use the __free(device_node) attribute to automatically decrement
> the reference count when the 'serdes' variable goes out of scope.
> 
> Fixes: 7ae14cf581f2 ("phy: ti: j721e-wiz: Implement DisplayPort mode to the wiz driver")
> Signed-off-by: Felix Gu <ustc.gu@gmail.com>
> ---
>  drivers/phy/ti/phy-j721e-wiz.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/phy/ti/phy-j721e-wiz.c b/drivers/phy/ti/phy-j721e-wiz.c
> index 12a19bf2875c..904541e9138e 100644
> --- a/drivers/phy/ti/phy-j721e-wiz.c
> +++ b/drivers/phy/ti/phy-j721e-wiz.c
> @@ -1407,9 +1407,8 @@ MODULE_DEVICE_TABLE(of, wiz_id_table);
>  
>  static int wiz_get_lane_phy_types(struct device *dev, struct wiz *wiz)
>  {
> -	struct device_node *serdes;
> -
> -	serdes = of_get_child_by_name(dev->of_node, "serdes");
> +	struct device_node *serdes __free(device_node) =
> +		of_get_child_by_name(dev->of_node, "serdes");
>  	if (!serdes) {
>  		dev_err(dev, "%s: Getting \"serdes\"-node failed\n", __func__);
>  		return -EINVAL;
> 
> ---
> base-commit: 193579fe01389bc21aff0051d13f24e8ea95b47d
> change-id: 20260204-wiz-9a67604a034f
> 
> Best regards,
> -- 
> Felix Gu <ustc.gu@gmail.com>
> 
> 

You are fixing a bug from 2020 (v5.8) with functionality introduced in 2023,
creating avoidable headache for backporters (the oldest supported LTS is
5.10, where the cleanup API does not exist). Could we reimplement this
the "normal" of_node_put() way?

I realize this is not netdev, but this piece of advice from
Documentation/process/maintainer-netdev.rst regarding use in drivers
seems common sense and relevant here:

  Low level cleanup constructs (such as ``__free()``) can be used when building
  APIs and helpers, especially scoped iterators. However, direct use of
  ``__free()`` within networking core and drivers is discouraged.
  Similar guidance applies to declaring variables mid-function.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
