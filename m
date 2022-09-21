Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE105C6FA90
	for <linux-phy@archiver.kernel.org>; Wed, 21 Sep 2022 14:35:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pBrzszbRi08VcIc/5VB+pxFj6naQ52UsjS5QkznnZHA=; b=HVU2um0yHj4PJg
	GFokd3CtrsCRLtReqkHIUnCRGXVTlKLX3lz4xkp6feyYUKK/RCxcAbjx9X3cV+bboZ8fEEw1VVhDo
	dTerjZARMmns0IYR0VHFq9L+InKI2K7MpUmbIvt1CSJBV3q4HbEJaC6nAsWyyw6niRVS8H15keR6j
	vX2DqstEDxpQOhFp/DL1SBUOnLltG0m9BQoxtZ5wd4Ss8ejWxCPdC95ukmgmFJ2eD+yCXzpc/4iVe
	JvGig/1IGueIQDwR06taWP+O5kaC2ZwOvdngrnUjBklaqk7DTMQYuHUDO0H+tkUyUipczb0L6puYc
	NYGekX7YBcJXilz7HGQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ob0oa-00Bbr1-Al; Wed, 21 Sep 2022 14:35:04 +0000
Received: from mail-pl1-x636.google.com ([2607:f8b0:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ob0oY-00Bbpf-C8
	for linux-phy@lists.infradead.org; Wed, 21 Sep 2022 14:35:03 +0000
Received: by mail-pl1-x636.google.com with SMTP id f23so5862456plr.6
        for <linux-phy@lists.infradead.org>; Wed, 21 Sep 2022 07:35:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date;
        bh=IJx24pWD5kavn/uysl/yW1+FtFUYsw+GT0llY/pLrjc=;
        b=Jtop5FnB2cxvuhmAwxO9I9XUia/xHvNHJCVcRFfuhfT0fxrZ6WwuBbNUK43D7M1P83
         LcL1fkQJaEdu1ONZzGLOXDJ5aguhUkfaySHXrSl4ZgSyohwuHuQ7TfdNVe5aAZ3HhD6c
         HESuSDjMqwtjI7UG52fkJcMnFi/wXmuLqrnphovgXQWaeK3f4pxM1uyRGGxynBX1R61Q
         bZnj+PO2CQ2yvQyIWuILNGMMYVzr2YVzbW7wpnL9YWKBcK8L0rZAq82L7hh4fJepP+wT
         esVa2sZzJ2RzWetNzLUcZtlRg2Rv9PXKU+K28ws1Mu3Vph3X4ZCzuxb6DA6+HrPOzytt
         WV5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=IJx24pWD5kavn/uysl/yW1+FtFUYsw+GT0llY/pLrjc=;
        b=JhpTSKQubbuiux3lvCEefeE+RVYyB9iKPsOlspklGRfqC3MH1xlS9LHbjJv+Shn/7t
         aBobLRHN7aK1dDoFuIj07ZwG3cbQu4MmpBHqB17P38NNylQGnTj1pgKWqFP/VxINTCbT
         NAXiiy2tNF1obGeULVM47Cl+d0eENuApErM0b9gwy3Xfvl1OvmDqiuCYbjhzae7oQDX1
         FUnQRAZJFzRgH0GhBDtL60Up1vRjMegdNRHq4mhtSumLPV06yFUSp0wiOIP7em2HqPoD
         ZLayl3RazuL/+blVyvdjGbn1TE5JeLv0Hxk6jrVszmGvFsjiTAhwQ6UeMa7XCQkV2k6+
         jXSg==
X-Gm-Message-State: ACrzQf3vmT+SqPQPO86wJZMzJgyrcOIOuu497mCfexD/vR0G2Ev4Ypnc
	ucOo0g5OS4ynsrtLQt/++qw=
X-Google-Smtp-Source: AMsMyM4dM+klOv+6pQUBD5nau2LCOnFIOdc+fmGnd2hNs15Z1TLWmJJjkgXwc0T6vgyAMLBgbykYgg==
X-Received: by 2002:a17:90a:fa8e:b0:200:b4b9:c6f3 with SMTP id cu14-20020a17090afa8e00b00200b4b9c6f3mr9902982pjb.190.1663770899886;
        Wed, 21 Sep 2022 07:34:59 -0700 (PDT)
Received: from hoboy.vegasvil.org ([2601:640:8200:33:e2d5:5eff:fea5:802f])
        by smtp.gmail.com with ESMTPSA id q15-20020a170902a3cf00b0017691eb7e17sm2070576plb.239.2022.09.21.07.34.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Sep 2022 07:34:59 -0700 (PDT)
Date: Wed, 21 Sep 2022 07:34:56 -0700
From: Richard Cochran <richardcochran@gmail.com>
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Cc: kishon@ti.com, vkoul@kernel.org, davem@davemloft.net,
	edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	geert+renesas@glider.be, andrew@lunn.ch,
	linux-phy@lists.infradead.org, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH v2 6/8] net: ethernet: renesas: rswitch: Add R-Car Gen4
 gPTP support
Message-ID: <YyshEGhh7zr+gXpa@hoboy.vegasvil.org>
References: <20220921084745.3355107-1-yoshihiro.shimoda.uh@renesas.com>
 <20220921084745.3355107-7-yoshihiro.shimoda.uh@renesas.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220921084745.3355107-7-yoshihiro.shimoda.uh@renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220921_073502_433931_4A7EA58C 
X-CRM114-Status: UNSURE (   9.76  )
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

On Wed, Sep 21, 2022 at 05:47:43PM +0900, Yoshihiro Shimoda wrote:

> +static int rcar_gen4_ptp_gettime(struct ptp_clock_info *ptp,
> +				 struct timespec64 *ts)
> +{
> +	struct rcar_gen4_ptp_private *ptp_priv = ptp_to_priv(ptp);
> +
> +	ts->tv_nsec = ioread32(ptp_priv->addr + ptp_priv->offs->monitor_t0);
> +	ts->tv_sec = ioread32(ptp_priv->addr + ptp_priv->offs->monitor_t1) |
> +		     ((s64)ioread32(ptp_priv->addr + ptp_priv->offs->monitor_t2) << 32);

No locking here ...

> +	return 0;
> +}
> +
> +static int rcar_gen4_ptp_settime(struct ptp_clock_info *ptp,
> +				 const struct timespec64 *ts)
> +{
> +	struct rcar_gen4_ptp_private *ptp_priv = ptp_to_priv(ptp);
> +
> +	iowrite32(1, ptp_priv->addr + ptp_priv->offs->disable);
> +	iowrite32(0, ptp_priv->addr + ptp_priv->offs->config_t2);
> +	iowrite32(0, ptp_priv->addr + ptp_priv->offs->config_t1);
> +	iowrite32(0, ptp_priv->addr + ptp_priv->offs->config_t0);
> +	iowrite32(1, ptp_priv->addr + ptp_priv->offs->enable);
> +	iowrite32(ts->tv_sec >> 32, ptp_priv->addr + ptp_priv->offs->config_t2);
> +	iowrite32(ts->tv_sec, ptp_priv->addr + ptp_priv->offs->config_t1);
> +	iowrite32(ts->tv_nsec, ptp_priv->addr + ptp_priv->offs->config_t0);

... or here?

You need to protect multiple register access against concurrent callers.

Thanks,
Richard

> +	return 0;
> +}

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
