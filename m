Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 619F7EE57CF
	for <linux-phy@archiver.kernel.org>; Wed, 11 Sep 2024 19:01:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O3KRQ2GePqLWz9sBHvgRjDqbHrNQGqwWCpAQNSl4SF0=; b=xNWV74PzDXjkYW
	qmy9b/16hBBhSEApGzIYanPXw268fuxmN2HaN+zX8ul0rwdCzfMqmizpgety/8CNpMqSdOEYfbglX
	uKkjLWmlea6D1JwhbFrRQyCJWYKKOCX1TKbf+YbWEJvqu6aLZji2uhtffqj2CGfnWKXn8Wp2eR3b5
	lmnqA2je8CwKriHbmCSF5Nu8dP+fIajfub23gsyj/YL941U9z9glSFEJdH79ufqbh5CkRFe87WXcx
	BD7md5fyz7q1PvtOCgOHWOXx0Uh6CUUGJrMHBxpovGE5rvXb+CsXWa29OAQH0hNX+3/FfyO55S0ih
	t0KG/xgbz/mbTu+eKddA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soSb0-0000000AhvJ-2YZi;
	Wed, 11 Sep 2024 19:01:42 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soSay-0000000Ahuc-0sSj
	for linux-phy@lists.infradead.org;
	Wed, 11 Sep 2024 19:01:41 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-5366fd6fdf1so220176e87.0
        for <linux-phy@lists.infradead.org>; Wed, 11 Sep 2024 12:01:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726081298; x=1726686098; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=gWLfBvU9thbiDwhY0G6uXsn1HToOTkJx1+aOpLmvWp0=;
        b=ih8f4rcScmrHuCV2JuOERBejsDAkW4qJQJKkM2Kt2wwwinEnQZJk/cAK2ajyNNQDX6
         kaTbOJeQuRQ1RuE/15BxFQRS84UBySrLHlUT/2MrjxBEUPQcJuvSoEN0JBwQS/3WKyil
         7oMYQazlfio8Q+lECU4zI6297KGViKiNwwkzIQpNElyRUVeHyBpEM+V0vfF6JNotzSk2
         sMD3ohNAhYWuNB9K6ZadFvaybRCUKWj/lCeovMRIMAPW9lIuSsM64SqTqn6KHEpJcoOx
         Mr3C/v8mbzpP1eOoAHiRzHdQqPmb8fU6JTZBYqAJtWR+pZVcwio9LpZx+6YXrGydDQBK
         N+gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726081298; x=1726686098;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gWLfBvU9thbiDwhY0G6uXsn1HToOTkJx1+aOpLmvWp0=;
        b=a6ez6/Hod36GlIMgjXu0/k4uUOedWjPpxKzm6sM29eo4GIwc0FEGaMeJZiEkpyFOOI
         xwzkd9GgpNaFgozR9yblJWamKltoko5bS+P0d0z7L3F+XBCQ2hogrgMwUWtctqJg1t9t
         uGvUXXP5utxpTbPRdo556TkHYPAPceOpfTea7rJbhTaPHYSaSkyzbea6qawL+zUVoYRp
         MV8a8OSKQbEyB9QOF2EVc6bMvWoc7WJVe+3LIjzVgZmxUDQyraWk7aZ9NORGvGrvEtcv
         V5tro5MH3BVipA8rW57nMTBGqBsE0FT7uiQhzOOQ9uWtdLz+SxlHq+U6fC+zxqTBYMl8
         lxQg==
X-Forwarded-Encrypted: i=1; AJvYcCUq9vjTidzyM5y1Me8ad3FD4F6y8cqcVuAtk69baW2+yK2d0jCFN5lxTHLuXxXkhVAryuSNYIJVCc8=@lists.infradead.org
X-Gm-Message-State: AOJu0YzEzQ1w+n7RwyLYhDg/XwSNX/vfnvtm/ZiO2Vi8L5uJcso3g62l
	CksMJNYgX1CVz4n0TV1VY/Ca+xmQsnY4Skr4C+B7t9z/FfysaLegPJOQVF1KdsFKjeqjaVPUA89
	Q
X-Google-Smtp-Source: AGHT+IGvUrY0NXLE2kfEi1SjtrIlfxaP29Ud499f9t88oQIMLSOo2+1mSb0m/gpMYrvrvoW7C3IPNQ==
X-Received: by 2002:a05:6512:e99:b0:52e:9f6b:64 with SMTP id 2adb3069b0e04-53678fc2279mr203397e87.34.1726081296949;
        Wed, 11 Sep 2024 12:01:36 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5365f90c306sm1653668e87.245.2024.09.11.12.01.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Sep 2024 12:01:36 -0700 (PDT)
Date: Wed, 11 Sep 2024 22:01:34 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/4] phy: qcom: qmp-usb: fix NULL-deref on runtime suspend
Message-ID: <zvy3mvgvkhrey3qcj4m3mgfs7apinsr6t2zo5afjjxpijhs7ig@tzv7fe47bodk>
References: <20240911115253.10920-1-johan+linaro@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240911115253.10920-1-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240911_120140_389443_36FE5214 
X-CRM114-Status: UNSURE (   8.42  )
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

On Wed, Sep 11, 2024 at 01:52:49PM GMT, Johan Hovold wrote:
> When working on suspend support for Qualcomm platforms like x1e80100, I
> ran into a NULL-pointer dereference in one of the QMP drivers. Turns out
> this issue has since been reproduced in two more drivers.
> 
> Johan

For the series:


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
