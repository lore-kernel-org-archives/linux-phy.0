Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC596C05027
	for <linux-phy@archiver.kernel.org>; Fri, 20 Jan 2023 07:11:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ep/YzOfhok/9fGJZd/TEX3v9I2iyF/gKwhryhWPwvKU=; b=wIrZpJNwc21I0h
	cdEb4U3wrXQJix9EPCMT2Y3W9J5p+AwhtL6sc9wRqRSq3vUeV1jR2yd5vGlHIa1EhtTODCpb+vHnY
	s1ONa14DfLX3OAOoRjTzZYIV9Rc9nXvnmR0DDa0MGnO7OGb2cC6c7SjFS+evNg55Kfw6dTkcx0uDt
	bFULkUGHPuEfeXX0OI6SLDkjLGjIEeuEkUXJu7gQux9KsZ62X83JKSL02i5cCNs8fBkGoibQPaWmW
	cl+w+WVZDk17ojvJMIuZamIcXEsjtg7RerSxs6qTd7oZctk8ySosb7m3LDliR+0Kfq5vt/S4Hw7oW
	Kbr6PTsesNymGSOD1o1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIlYx-008jq7-6O; Fri, 20 Jan 2023 07:11:47 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIlYj-008jky-Lu
	for linux-phy@lists.infradead.org; Fri, 20 Jan 2023 07:11:39 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 69D1C61DD8;
	Fri, 20 Jan 2023 07:11:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 104FEC433D2;
	Fri, 20 Jan 2023 07:11:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674198675;
	bh=ruN1axoeesLkwpizVlQSezOYj0g97Z2CA0toTiAowkg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=s4Nc3EDdT9+NsuR0dqwZmho96bwdIryMHGcPgkzRX8rIixs38DtpJk4qpO6NjNKQO
	 AlCLw/1l8gFrahmjqQuMn8LM4NptHXP73DYwSfmWEiV5QhCKclRsShybPQ8qOE4JiM
	 fT5x/wntGrk7AF3XD7hPLjKBqvi889HsIe1OwLu77/yrdpnD7T4FaD1R77gKiSoAIU
	 iWS4fmY9DVjnqoi5oWzqW+MUPlGf4jPAw948oLkU0EzI0mAOQWXmmAW1Vn1u9im/BR
	 nAFgFhKf3EkNE+vBF+vHXkzl1lgnMgVauTKYt1cbCca5GRoKZZiyGtKNpmO8BCUuox
	 TQ9WCCRWN1VJQ==
Date: Fri, 20 Jan 2023 12:41:11 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Maxime Ripard <mripard@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: Return NULL if the PHY is optional (part two)
Message-ID: <Y8o+j8lyyANpFSvz@matsya>
References: <663dfcec9f703c41759dcd4cd824d00caa2dd5fb.1674036031.git.geert+renesas@glider.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <663dfcec9f703c41759dcd4cd824d00caa2dd5fb.1674036031.git.geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230119_231133_789951_AF57B3D2 
X-CRM114-Status: GOOD (  21.92  )
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

On 18-01-23, 11:02, Geert Uytterhoeven wrote:
> If we're trying to get a handle to an optional PHY, then the PHY
> framework being disabled shouldn't return a hard error.
> 
> Instead, return NULL just like phy_optional_get() does when there's no
> PHY provided in the DT.
> 
> Based on commit 11a6e41c0ee503ff ("phy: Return NULL if the phy is
> optional"), which did the same thing for devm_phy_optional_get().
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
> It seems there were never any in-tree users of this function since its
> introduction in 788a4d56ff378bff ("drivers: phy: Add support for
> optional phys") in v3.14.
> Perhaps it should be removed?

Ack, devm_phy_optional_get() is used by bunch of folks, but not this
one, so lets retire this

> ---
>  include/linux/phy/phy.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
> index b1413757fcc3b89b..559c3da515073697 100644
> --- a/include/linux/phy/phy.h
> +++ b/include/linux/phy/phy.h
> @@ -429,7 +429,7 @@ static inline struct phy *phy_get(struct device *dev, const char *string)
>  static inline struct phy *phy_optional_get(struct device *dev,
>  					   const char *string)
>  {
> -	return ERR_PTR(-ENOSYS);
> +	return NULL;
>  }
>  
>  static inline struct phy *devm_phy_get(struct device *dev, const char *string)
> -- 
> 2.34.1

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
