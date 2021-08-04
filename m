Return-Path: <SRS0=XorX=M3=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CE0C4338F
	for <linux-phy@archiver.kernel.org>; Wed,  4 Aug 2021 14:16:04 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 558C760F10
	for <linux-phy@archiver.kernel.org>; Wed,  4 Aug 2021 14:16:04 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 558C760F10
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-reply-to:
	Date:Subject:Cc:To:From:References:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+ZVf3HCpu2ck11VO99HXaHWpgp4VuJHd7qnaOyOOdOA=; b=nRDt+wgljtdF61
	ju5y9/+l8hE9gcqaB1BFT1MizdmIyoCDnwvkZdWOHpB8ofBH90yp81c6AqSOdKPvyBZIj1pN1NJD/
	62nFmYcrnEwHEJsGtXr7jk9drLcbNAUf7ex7sxYndGxRGgc1nTkMna6e0rwdIig6SmnKn8LTGDpj4
	SyR3lfr20sKIIf1I03s/a7DjpLui2weVI1e8cP2PRXdWaGE7Np2wVHt0GqZJ9ZhiNR8tbLK2JZBFF
	99SJbt6Hy+sWbm/rHxJjxiTIDJIDxgRFzI1T8iP/UpNE2JcVDtG3lzCcW48KIu26jXsqOVje2UOMB
	j5+ZBaGT9hOqF24GmHpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mBHgh-006NwN-Nt; Wed, 04 Aug 2021 14:16:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mBHet-006NBM-EO; Wed, 04 Aug 2021 14:14:12 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9CCE660E09;
 Wed,  4 Aug 2021 14:14:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628086450;
 bh=xAqC6seky5MiIrVf7pJwzmv1dqVzP/V4Nv7xWuyRHB0=;
 h=References:From:To:Cc:Subject:Date:In-reply-to:From;
 b=ghq+e625BvgkjatsRssojXchEuhgeMuvrUq37qEwhhgio0zsNx0roQhLaYk41ZEn1
 O13QzEBgtUMricL5Tn7KHCYWBTFCOkkvpJ4uyqkhSbNeyqISCFg//l70bsts1HxNRn
 Zk+2+HspS8u02ZBM3OrcqGLsCU0MBhouuRgkLpPJKAGtjsMR7BFgB9D77Hp7Zwbhr2
 G1PvAX5Q4Pw806/Ywb3cebwZFHREOIa6Ll3A/5bh1H18goioAmMLfcWQMN7zLwkC+p
 5lhGVgS+hmVLQ+Dapm1Nx2HZlemdb3YbyJz/sHUQrh9lKIfHC0+K10ZEnJL8ByiiQt
 75sE4nvlqg1BA==
References: <3d86f45004fe2fcbae0a2cd197df81a1fd076a1e.1628085910.git.baruch@tkos.co.il>
 <0e99e3d453547ad2a8f4541090a03f3c80b80332.1628085910.git.baruch@tkos.co.il>
User-agent: mu4e 1.6.1; emacs 27.2
From: Felipe Balbi <balbi@kernel.org>
To: Baruch Siach <baruch@tkos.co.il>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson
 <bjorn.andersson@linaro.org>, Rob Herring <robh+dt@kernel.org>, Balaji
 Prakash J <bjagadee@codeaurora.org>, Kathiravan T
 <kathirav@codeaurora.org>, Jack Pham <jackp@codeaurora.org>, Thinh Nguyen
 <Thinh.Nguyen@synopsys.com>, linux-arm-msm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
 linux-usb@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 4/6] usb: dwc3: reference clock period configuration
Date: Wed, 04 Aug 2021 17:11:58 +0300
In-reply-to: <0e99e3d453547ad2a8f4541090a03f3c80b80332.1628085910.git.baruch@tkos.co.il>
Message-ID: <87lf5h5mc2.fsf@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210804_071411_578185_73D1793B 
X-CRM114-Status: UNSURE (   6.13  )
X-CRM114-Notice: Please train this message.
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


Hi,

Baruch Siach <baruch@tkos.co.il> writes:
> @@ -1371,6 +1398,8 @@ static void dwc3_get_properties(struct dwc3 *dwc)
>  				    &dwc->hsphy_interface);
>  	device_property_read_u32(dev, "snps,quirk-frame-length-adjustment",
>  				 &dwc->fladj);
> +	device_property_read_u32(dev, "snps,ref-clock-period",
> +				 &dwc->ref_clk_per);

I wonder if it would make more sense to pass an actual clock reference
here. If valid, then reconfigure the period to the value returned by
clk_get_rate(). It would avoid yet another DT binding. If we make the
clock optional, then we won't affect any other platforms. The clock
itself could be a regular fixed clock node.

-- 
balbi

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
