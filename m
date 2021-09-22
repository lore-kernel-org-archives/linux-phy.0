Return-Path: <SRS0=p6f2=OM=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72DF4C433EF
	for <linux-phy@archiver.kernel.org>; Wed, 22 Sep 2021 15:57:07 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3162B61090
	for <linux-phy@archiver.kernel.org>; Wed, 22 Sep 2021 15:57:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 3162B61090
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/BP6PE2u/OEGsTc0lY279UcP0xLpAuA4lZZc7a8NCkQ=; b=s/9aOXoCadCKKs
	9t5nkFCig1GTaD7r9d8b85jiD97hiRxqUG70iy1OGcH8VV2+Bf1XPlF/bKI6NWBfX1wCdSJPQcj3a
	1kkUhKVvJFLV2Cb4Zn1rM2GDP1alUmZr9ciSoPA+dKKgYhBQRWoGMh0WFA0SKCi1Qev1DH+MIBE6b
	APe9/rTAKHKDgwpTimIc/TiwOKxxs5SO/F6PQ3Ed/FZJxKhbuw7mNMsve6xstFFerpLHABfsRIIxC
	0CxOQS6D+GDI/ZRzrupubI2eKZpyuA4hJYculSisq6T3SswcWhUBvTbQtOX2TyoQK4j9FRMUCSsGm
	TAuwC+Fk2X9j5UgLLMXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mT4cM-0092bR-IC; Wed, 22 Sep 2021 15:57:06 +0000
Received: from mail-oi1-x233.google.com ([2607:f8b0:4864:20::233])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mT4cJ-0092ar-H6
 for linux-phy@lists.infradead.org; Wed, 22 Sep 2021 15:57:05 +0000
Received: by mail-oi1-x233.google.com with SMTP id w206so5125459oiw.4
 for <linux-phy@lists.infradead.org>; Wed, 22 Sep 2021 08:57:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=0TAuSYSSwu/GJwA4DB4HqE/mrXxipFRUmjMtx5UU3rs=;
 b=gUEgEvaooaC3Rqh2GLU31XmPoOzYuWuJ5Sskb5tB+AyYzFiBzKMOeflVscMCBcY1Fl
 ju4OLLHyp3bwd30OyerZmpR+u0dUZRIu0Y34lwrr5Uh9kDnToaBe9A/XTbnmVA+LfoLF
 LqkjgdBABCmepohEHtTWyqKYnA74b5OxF02h+k9pAbZzBJxBcdMUZ7NQFQ6EZx7T65S7
 VrSnKx14kLZfB/kF7RKGE5AQwbFMAZwk3N2hJAx9UP60+eU+fewj7X0gw/thRMWpCtVc
 C2YMi6+HOqMbcloLdcjFCpy3nbB/dPqIhULDDCVR8vLOw7dUzW4HV3167+SKn8I9pmfm
 aVnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=0TAuSYSSwu/GJwA4DB4HqE/mrXxipFRUmjMtx5UU3rs=;
 b=IqLBtc5KBHWNhQtgKY8W5r6oVeCH3BR5OT0BFiMe+/Fr3LvxJgfpiKbWP6VZuXM0C2
 3QxlarOwGHC4gMGFhcKb/8px7eUOzauSmWyunc4uiRouoX01UjPvCt0Mam6o8FK6rjZj
 roW4f2933Mwi7ZEaCuKD6fSKxNkh+MLCdwV9EgwCQvcGB38Ee74oUs2xMZXG3kh4i/Ag
 Ojguxwi8YxvVzf0beQGvQ0kkk2CipsOf/6Gff3bkdhKXgg8i9Q6TwWEJ2vudB9r9jfca
 yrtXZDY+gZuJKOsOTI8KbBJYxIBWB0Ab/iOFOKZgaJxadXaN1u43Gox3QtZg7+A5VJvO
 QMBw==
X-Gm-Message-State: AOAM531v4YrzXBsrVRgaUGuotazRcZuQRc4k3AFIph4whUAfazQ0WwKu
 YpUbuGcUo64WWMRcmVUvhE+i4Q==
X-Google-Smtp-Source: ABdhPJyB18sOla8PLG9hVwSLx4QL3NM8iJZfOnWgcu4HPxyrEyR7I/xU53vMEQ92DIrG/nMnOtESyg==
X-Received: by 2002:aca:5cc3:: with SMTP id q186mr8558866oib.17.1632326222200; 
 Wed, 22 Sep 2021 08:57:02 -0700 (PDT)
Received: from ripper (104-57-184-186.lightspeed.austtx.sbcglobal.net.
 [104.57.184.186])
 by smtp.gmail.com with ESMTPSA id h17sm613189ooc.18.2021.09.22.08.57.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Sep 2021 08:57:01 -0700 (PDT)
Date: Wed, 22 Sep 2021 08:57:43 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Cai Huoqing <caihuoqing@baidu.com>
Cc: Andy Gross <agross@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: qcom-qmp: Make use of the helper function
 devm_add_action_or_reset()
Message-ID: <YUtSd7QxkSC0vPAa@ripper>
References: <20210922130017.692-1-caihuoqing@baidu.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210922130017.692-1-caihuoqing@baidu.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210922_085703_613283_50E3265B 
X-CRM114-Status: GOOD (  18.56  )
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

On Wed 22 Sep 06:00 PDT 2021, Cai Huoqing wrote:

> The helper function devm_add_action_or_reset() will internally
> call devm_add_action(), and gif devm_add_action() fails then it will
> execute the action mentioned and return the error code. So
> use devm_add_action_or_reset() instead of devm_add_action()
> to simplify the error handling, reduce the code.
> 

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Regards,
Bjorn

> Signed-off-by: Cai Huoqing <caihuoqing@baidu.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp.c | 12 ++----------
>  1 file changed, 2 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.c b/drivers/phy/qualcomm/phy-qcom-qmp.c
> index f14032170b1c..084e3d96264e 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp.c
> @@ -5154,11 +5154,7 @@ static int phy_pipe_clk_register(struct qcom_qmp *qmp, struct device_node *np)
>  	 * Roll a devm action because the clock provider is the child node, but
>  	 * the child node is not actually a device.
>  	 */
> -	ret = devm_add_action(qmp->dev, phy_clk_release_provider, np);
> -	if (ret)
> -		phy_clk_release_provider(np);
> -
> -	return ret;
> +	return devm_add_action_or_reset(qmp->dev, phy_clk_release_provider, np);
>  }
>  
>  /*
> @@ -5350,11 +5346,7 @@ static int phy_dp_clks_register(struct qcom_qmp *qmp, struct qmp_phy *qphy,
>  	 * Roll a devm action because the clock provider is the child node, but
>  	 * the child node is not actually a device.
>  	 */
> -	ret = devm_add_action(qmp->dev, phy_clk_release_provider, np);
> -	if (ret)
> -		phy_clk_release_provider(np);
> -
> -	return ret;
> +	return devm_add_action_or_reset(qmp->dev, phy_clk_release_provider, np);
>  }
>  
>  static const struct phy_ops qcom_qmp_phy_gen_ops = {
> -- 
> 2.25.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
