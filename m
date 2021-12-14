Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10C3AC433F5
	for <linux-phy@archiver.kernel.org>; Tue, 14 Dec 2021 10:18:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VTrN86T2oxqq3uZE/NYpZIFaoJpVdlcu0DUj4EhZclo=; b=meOcEf1m3gN+i0
	c8N6YFgNG6FYo0YgU4n6d6UG4SLRg4sZFcQD18dykQmjkc4YKjsTV1Y2mgj0i20eLLkIetlLAxsqp
	BTJMjRBlFBtWMwsBxo4dF9hL+8Khy9afL52+HIV3xMOcs93ERDvzLiuai0NRXpxTBOkZx6jyevlF2
	OfvO5Y0xTU5xQMwKU6tu11VXQj81pI217MhYLGOG5NhRTOOvebCW+MLqQ4JAYpPpVaIdqjDC1d9Ny
	6+Kb7URc9ezUH23Zgy7cMLJOHti9tm7YqlkKsJcX2b38ZTMn9qUDMXMmTXUavq/0wM6JRiK2enGpb
	B2HlLrkd5CfAs9BcC3tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mx4t0-00DRcS-By; Tue, 14 Dec 2021 10:18:18 +0000
Received: from mail-pl1-x62c.google.com ([2607:f8b0:4864:20::62c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mx4sx-00DRbC-DQ
 for linux-phy@lists.infradead.org; Tue, 14 Dec 2021 10:18:16 +0000
Received: by mail-pl1-x62c.google.com with SMTP id p18so13179598plf.13
 for <linux-phy@lists.infradead.org>; Tue, 14 Dec 2021 02:18:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=92yYEvFNeXQBGVvIoSkyIjgYw0Oqz3137D6F4hZH+Rg=;
 b=D29J+HOYYRy51FfZDXuW6Pn/xW/GbTqEvAw3l9zPSLAi6xQuUoZ/Toleel3QrmskY9
 arTkNYFWXgaSqFWqOKy31wjsttH81Ase+jxl27crlnZ/4UQmHfJ9LVkC82FzFSAdBTD7
 4DJJnQ6/GkEuxzbNyL4mMxdgkyPTp1CA+DmG3GNit88exYDGM5zQ78pslBzxhI5PXX73
 aPUZ5qE9MXweg7YpEkmj13cDR3DrRRMMX594aolSZH+JbJfPvVUKIzv2CDrFnDU392+4
 FyD+bkK0FDr30TTej9hjYK8wwY4JH5rNAJWbmoYIy0AxS0q5wkJ7EdjMyP1/xTp2geRc
 BCcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=92yYEvFNeXQBGVvIoSkyIjgYw0Oqz3137D6F4hZH+Rg=;
 b=dXe24C4x/YRYhghI5ajcBUdwSL2ZmppysbMJVPo9m/PfJS9JByv5hcga3k0QcfF7g4
 n976l2/od1wR02vPf7ydAaUdbxZ2VSHhoSPvwXs9L+yNbEvfbWIEHi9SUmZStBNYmkpk
 JolY1j7mJw7Vp6dpsj+fa+BSDqjtTFd6Op2px3lMD2AzgTPRcWMpXCvLAN8CiDkWU2pu
 +s3rkRLFfIyO3TADBIFWJ+q2Lx3UBHStnMEcinOVYWWR1YCUlAavNqSv5ahGNXdhMfBP
 FUBqCU8IrLK/u8DDHpEUrXFVFqhOnqtteio0gdAItIFW4FLl1mElsFAddfP/wjasIfE/
 gZyg==
X-Gm-Message-State: AOAM530RKrovr4X7lPQq0H/zrrWr/3Cx7ZAAvM/qTdJ+6fjjnQcdkAuy
 0bfxWJtRbmV/4J5So4rktV4=
X-Google-Smtp-Source: ABdhPJy7Vj4Ab7OH+HG5s6Zw+akLI3sfqQUGYrwu/CBSTg5X7kdBg/K54B6pE1gANgdI8CDJ9FhHbA==
X-Received: by 2002:a17:902:c94a:b0:141:fdaa:59ac with SMTP id
 i10-20020a170902c94a00b00141fdaa59acmr4753664pla.37.1639477093554; 
 Tue, 14 Dec 2021 02:18:13 -0800 (PST)
Received: from postoffice.intern (192.243.120.180.16clouds.com.
 [192.243.120.180])
 by smtp.gmail.com with ESMTPSA id mg12sm2016244pjb.10.2021.12.14.02.18.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Dec 2021 02:18:13 -0800 (PST)
Date: Tue, 14 Dec 2021 18:17:56 +0800
From: David Yang <davidcomponentone@gmail.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: agross@kernel.org, bjorn.andersson@linaro.org, kishon@ti.com,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, Yang Guang <yang.guang5@zte.com.cn>,
 Zeal Robot <zealci@zte.com.cn>
Subject: Re: [PATCH] pyh: qcom: fix the application of sizeof to pointer
Message-ID: <YbhvVFTz+KwNtgo7@postoffice.intern>
References: <8d75af8e322a7e5839d2dd4320b696ee09ec0843.1639100549.git.yang.guang5@zte.com.cn>
 <YbhjS2Nb8yrT9Nzq@matsya>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YbhjS2Nb8yrT9Nzq@matsya>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211214_021815_490560_7F9F988F 
X-CRM114-Status: GOOD (  12.55  )
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

Sorry about that. Thank you for your advice.

On Tue, Dec 14, 2021 at 02:56:35PM +0530, Vinod Koul wrote:
> On 10-12-21, 14:21, davidcomponentone@gmail.com wrote:
> > From: Yang Guang <yang.guang5@zte.com.cn>
> > 
> > The coccinelle check report:
> > ./drivers/phy/qualcomm/phy-qcom-edp.c:574:31-37:
> > ERROR: application of sizeof to pointer
> 
> - this should be tagged v2
> - You should always note the changes done in v2 (after the --- line)
> - subsystem name is 'phy' and not pyh
> - I have already applied fix e87f13c33e126ab2c72f9acb5ae98fbb93ddfd32
> 
> -- 
> ~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
