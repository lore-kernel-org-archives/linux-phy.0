Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC9D8C54798
	for <linux-phy@archiver.kernel.org>; Thu, 29 Feb 2024 07:31:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pDhXNM4a3DrTbqyw4DRCfe0RLuNvRdl1FMXIf3MGG+0=; b=XYJuO//sCe8nIc
	ETIGWQzvzZcw2yUkQSZ1Ek3kUHq7sEcOMgHOcJPwGeNLe8EGCx4+z7a3Ymlpn2sn+tym5JezNEdqD
	VwH0MgkfBHrE0/268sENul1jIYtGk9jqzHrdLnyYRJG3nGww0li5YxCNiwT3OvQBIAVJq77s9c+sA
	V7i2Db79QT+Er6NH7r/zdpwLu3AoFPzfecunVrLwxJ91ofJQcBkI90uj0/7jvmZc5cXHpPo/4ylIk
	bcxaj9Y+VDqMJMaRK7Jw6ATSzgm3KSY7+qGqWKGzLLszyXv7347aILg9/MpGq/ESrgXDQzFCpqctI
	EdUN70TkO5nVacAaEjZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfatA-0000000CVNq-1nEj;
	Thu, 29 Feb 2024 07:31:32 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfat5-0000000CVJu-3INC
	for linux-phy@lists.infradead.org;
	Thu, 29 Feb 2024 07:31:30 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-412b3a69f67so4375675e9.0
        for <linux-phy@lists.infradead.org>; Wed, 28 Feb 2024 23:31:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709191885; x=1709796685; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=RiWXS0Lycg9PCC0fyWU9eT4uTxRcxADLMUayXiNfgPY=;
        b=vjAoBLhaOluZWw3cIp9Wyp8mBrjGHxNMzYWLbWnHwV4GCoeASYFzmK/qED8IIFCCGW
         lH2ntsaW0Y9uncKaohcoFoHJVpZhdxu1SqtRaiqHgl5VlgHSchbwbe4sW4uOH/T/+IVN
         m9oicxdXblRPFhvhi7ZMZ/1bMdQu+liVsmVFTeHgOf0IjN3xE9nreBH4H7e/UXZI65X/
         DoM44450H1PoCMjNZPNG44dfm7ttsS37f33k0Q2pxwHHZtFm6XF2ofmwb3YRbI2XHgSX
         wU2lJfZ/a2R29/anPugZcY1aBATYLp9Ny8S+LKMp7yXHOyp/wB/oJF28fCIPteW3NKQ+
         rCsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709191885; x=1709796685;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RiWXS0Lycg9PCC0fyWU9eT4uTxRcxADLMUayXiNfgPY=;
        b=ERy4P2MtzKX75FMRxNQ8bf5qo/ofULRx2IT/3hkIVrcgx3o41Jcyc0upWmybtMDUeh
         hxhzTv1h76UxtrO83Rlox3zpmwql6BjA72DeBoYK/P4QdudCCRKVKKODu+idC6Vhv1bl
         MAn1gUcv9O8oNY8T8VnzIH3OVjmI1EvXxnkC2wonCX/L/kjEsfEpcquVxc6OEQpd515U
         CTnxCXchGq5Fm/WOhzylbQeYYBXAzhIWyEWrDOFCHl0KLMowY/YN55u8iSyiCO8Q2f1I
         IvHb5A4GHshUmLH3wU+XVkVkzOuf4sD2WU+XM0ua810EmD5TiGWBYR9Ukk8pgX+DyxaA
         kMSg==
X-Forwarded-Encrypted: i=1; AJvYcCUxeTNwNp/k8PvDRM/zWLvfRgOPrecqj6Atm5T8zNs1KDcWFjW5PgdfSfKU0t9cFqX62yBIAMyWxhRTSUkT2d1xMB5JRDFYM2mO0iquOA==
X-Gm-Message-State: AOJu0YzOAOozqTKox7L4MH3IBVtuhaPTJwBjeSgwKYZ2vOCZAE8z4ZmM
	9TKqzBmlgmYgUKncYML3ibdOfgu7XYuTJ7FfxhIVPpjTRPHNAGRZHxXrZIMDXqc=
X-Google-Smtp-Source: AGHT+IFm2NXimeRlzG6mxS8tXCGpz0iq1MJcSQj/J2MMs2rGLvivZnF1HI63cA99XXODIDWyyxPCYw==
X-Received: by 2002:a05:600c:190c:b0:412:b8cf:150b with SMTP id j12-20020a05600c190c00b00412b8cf150bmr973212wmq.10.1709191884805;
        Wed, 28 Feb 2024 23:31:24 -0800 (PST)
Received: from localhost ([102.222.70.76])
        by smtp.gmail.com with ESMTPSA id q16-20020a5d6590000000b0033d56aa4f45sm928856wru.112.2024.02.28.23.31.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Feb 2024 23:31:24 -0800 (PST)
Date: Thu, 29 Feb 2024 10:31:20 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>,
	Jonathan Cameron <jic23@kernel.org>
Cc: Markus Elfring <Markus.Elfring@web.de>, linux-arm-msm@vger.kernel.org,
	kernel-janitors@vger.kernel.org,
	Bjorn Andersson <andersson@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	freedreno@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
	linux-phy@lists.infradead.org,
	Abhinav Kumar <quic_abhinavk@quicinc.com>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@gmail.com>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Kuogee Hsieh <quic_khsieh@quicinc.com>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Clark <robdclark@gmail.com>, Robert Foss <rfoss@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Peter Zijlstra <peterz@infradead.org>
Subject: Re: [PATCH] soc: qcom: pmic_glink_altmode: Use common error handling
 code in pmic_glink_altmode_probe()
Message-ID: <fefbec63-df17-4515-8e63-66ba3a3b9cd2@moroto.mountain>
References: <29b63eb4-2342-4ca8-a313-5de2a6ec6a83@web.de>
 <c25aa425-f350-4ad2-b92e-67de996daed3@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c25aa425-f350-4ad2-b92e-67de996daed3@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240228_233127_899176_3916D5CA 
X-CRM114-Status: GOOD (  15.88  )
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

On Thu, Feb 29, 2024 at 12:26:49AM +0100, Konrad Dybcio wrote:
> 
> 
> On 2/28/24 19:05, Markus Elfring wrote:
> > From: Markus Elfring <elfring@users.sourceforge.net>
> > Date: Wed, 28 Feb 2024 18:45:13 +0100
> > 
> > Add a jump target so that a bit of exception handling can be better reused
> > at the end of this function implementation.
> > 
> > This issue was transformed by using the Coccinelle software.
> > 
> > Signed-off-by: Markus Elfring <elfring@users.sourceforge.net>
> > ---
> 
> (+CC Peter)
> 
> Hmm.. this looks very similar to the problem that __free solves
> with <linux/cleanup.h>..
> 
> I know no better, but wouldn't the same mechanism, down to the
> usage of DEFINE_FREE work fine for _put-like functions?

Jonathan Cameron has created something like this:
https://lore.kernel.org/all/20240225142714.286440-1-jic23@kernel.org/

It hasn't been merged yet and it would need a bit of adjusting for this
use case but it's basically what you want.

regards,
dan carpenter


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
