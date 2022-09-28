Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83FDBC04A95
	for <linux-phy@archiver.kernel.org>; Wed, 28 Sep 2022 19:54:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ugmu9F/wbj/g9+CHXa7Z2YVcDp9sXKsD89eO5cQNh+g=; b=VQFnny13WB6z7I
	me7uEYpfkHuPWh+7YRxSQZIlQsf72OM9Vd1bKXtuoIXD+sp2kEYlBQArzmUzE9EZe39YYgoSUCqHI
	snZt7kcJTYA3rd+ppQPCsPLWrYrZq/erhrqUgzUYUW6I/W/06eSvQFvcGlRxDiyJHiq2klMg1L4oY
	oQjUX8pf+jLTJkxuTXkHQCIsXz1JnfkG1HLXqQT3gPLlvlteRMg3V5/DiRhTKY+eGcse9nBVy74mO
	WyTiJIYIhkYbTlJY/b/ButyUpXDIVXvtp49JiqZ6gPIvPZehYJZw1N7rW/kUT8iDQeZHkHAVwp/40
	9FUyh4FIjDaiHcyc9emw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odd83-000BW7-W9; Wed, 28 Sep 2022 19:54:00 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odd81-000BV1-M3
	for linux-phy@lists.infradead.org; Wed, 28 Sep 2022 19:53:58 +0000
Received: by mail-lf1-x130.google.com with SMTP id k10so21960413lfm.4
        for <linux-phy@lists.infradead.org>; Wed, 28 Sep 2022 12:53:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=ZllO30PO1yeROYtUdSMa6Q/H6OxWdD+P2ikW3S83Lss=;
        b=ibaQtNJzs8kG3duQWJcLYvC2m9Jy0BYqM6Cfj2FSXDrJYqMBGi2wh2OgSFfQqekfxE
         z1o+/0uPw2bzU6/GqNmz2T/ibUM1LhYPxXFPLsaHmp5URlFcl5ftXDjSLkAAJZaHxBn0
         yNmNxUU/14uD3qyRTEJQjBIV56tY+3Xs/LCEstIkkjXKrSusfXQ5KHlMeDIrMln5exGg
         7/AqavVdjmc6rdx/4Ylxl8NbPZ/Thq4WkrDJpKYt8NvvLNR7/v1L7rH/ndpllb8hS8v4
         I1rBrK9hevidWE1fdwwBQbAQkKfNtB0soUMaD7QNS38krtmM/MbEA8PCUnpZokhIuIMl
         edmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=ZllO30PO1yeROYtUdSMa6Q/H6OxWdD+P2ikW3S83Lss=;
        b=T9BNEtmzlNWGsdMMmWCILXcy4N7ZA+MUwTRR6KJXAcvlNNUmwDZlHYLB0ixb0C9cNo
         /CuUsDOs2mwbmbB0evDeZ740yAh4Fm6KgJQDA7+TNVpy74SqRgdJFs5rT2sVePazQsXw
         /BMfB9kbAMmp5B54xH73Lb9J9Ela5F4ORNZNqO8lL9Ae+H9bvbyRlaGVTz6uUheCdQDY
         QI4b/TS4szi/Dza2vH5IgPQXc2JSP0RIRrgYSRb75xnP9NBAaUsCc1AUOEgOJ8gzWnDL
         9PWdXs9ejCPywuiJ0aU5QTcb0lMqdij4OpFh1Ms6R2w5KR0gUXjnEjt59u5I1Sa4iRER
         5mSg==
X-Gm-Message-State: ACrzQf352nQTo9v2B7UF2yFyIsDlPWI0L7QCgwiX7SKXKfiFwtm3HB7U
	pZh866af+5h4V+tVqhM/vy/M8w==
X-Google-Smtp-Source: AMsMyM7km8qhluCC9hWcHc8DaqLBPryy1gqwvYmJLpN0wkSUCa/4AFBbR7zmIjRJYpLYT3PjHEqFAg==
X-Received: by 2002:a05:6512:b1e:b0:4a1:ba8c:7ea7 with SMTP id w30-20020a0565120b1e00b004a1ba8c7ea7mr8341594lfu.608.1664394835262;
        Wed, 28 Sep 2022 12:53:55 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id h4-20020a05651c124400b0026c1cbbf461sm531018ljh.80.2022.09.28.12.53.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Sep 2022 12:53:54 -0700 (PDT)
Message-ID: <3832dbf9-17dc-9c08-0051-aeaea2394000@linaro.org>
Date: Wed, 28 Sep 2022 22:53:54 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH 12/13] phy: qcom-qmp-usb: clean up power-down handling
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220928152822.30687-1-johan+linaro@kernel.org>
 <20220928152822.30687-13-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20220928152822.30687-13-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_125357_754668_4BF39C80 
X-CRM114-Status: UNSURE (   9.43  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 28/09/2022 18:28, Johan Hovold wrote:
> Always define the POWER_DOWN_CONTROL register instead of falling back to
> the v2 (and v3) offset during power on and power off.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 20 ++++++--------------
>   1 file changed, 6 insertions(+), 14 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
