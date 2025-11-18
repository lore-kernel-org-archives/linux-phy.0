Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B156CED25D
	for <linux-phy@archiver.kernel.org>; Tue, 18 Nov 2025 09:49:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5QzKIQLXff2pGffXJNi58bhMGyYECIZmPJvrJh9nTLk=; b=qTVVhhUz3S5yDR
	yxr3qV9CMPaPo5cu+7H/5uY1SgtH9bFA9s0C36c/I9yKxBXvnMVfjrsEMcFoslUs9oCuowy3QHGcP
	vu24wPxMCD43J51FXWfOf6+/ls4/rfhZYmLxMeKKoFrpPH6DPHAIBuwow3R7lvwW4llG4yY0MuP7S
	/oNufQW5a5H7gV+458/H+Tz6TfsnJ96uHoxeywGrm6tWPW2A9QaVRowlRuspEGeEPWuWnoEr5gjM7
	4RJsb6cnzEe+I+zvQMmJLE/4KoM6IRolL1/q2tIHZ1+5fNJfknuEYPyqYPRUVodDSDrniZCaORDpT
	Sn3HFPnYLGo3IMhjG78g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLIL1-00000000BeR-3Cvh;
	Tue, 18 Nov 2025 09:49:27 +0000
Received: from mail-pg1-x52d.google.com ([2607:f8b0:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLIKz-00000000Be6-14yO
	for linux-phy@lists.infradead.org;
	Tue, 18 Nov 2025 09:49:26 +0000
Received: by mail-pg1-x52d.google.com with SMTP id 41be03b00d2f7-ba599137cf8so3361756a12.0
        for <linux-phy@lists.infradead.org>; Tue, 18 Nov 2025 01:49:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763459364; x=1764064164; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=xzCBMigVD0krKuQCjmEzo9fFKxVpsyvZJvTxuR6DkP0=;
        b=jsF8gBLV4F9BOYd8jOMSonrdMGx93dLApDRqTyCx5yWrwPeJZeJVMcNcPjJhaI6WD+
         E3V7h8IbbONHU1n1qAFo6Gx+FDejbMZjjtUVBm35mCiqga0z+JyMuUQANPO/ncItuFOH
         Exifd1zmKfOGRi5gbIA2CfgJXj24zlsDP0r+ewRbV9LJRCPW/mnh3CAqdqUauCdLBiaZ
         jigX2Fo0YOPkF8RYcFB8qSZlLCjDis00UxkUe69WW/BepHG3Q852xL4KXJBcdzZdPBv6
         b4vbtjZ9mE6YNQSjUwkGsuqgA0MeUxWeFPJdsYDFZ3RM2nJmGA6szluI9Owt7R9ZejQh
         x4qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763459364; x=1764064164;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xzCBMigVD0krKuQCjmEzo9fFKxVpsyvZJvTxuR6DkP0=;
        b=C3KMnub9dKZwS9RcoWbe+iikb+otC788gX4QChQWRn4dGLRJFNM1gMDtYVPpEiFbO1
         qDQ0UAujJcCwNIs3LuZX4+ELw/DiOmh7RrwrL9bFyax0h9JyFsmkMQxbpphH34J8Am7P
         UbbZxlD7O7aVzsEnYtw6SNij18E2kZda9s3jYxnttuuyYb0kdaKFn3E/lZyBPDhCwL6M
         b9h1gLXOn3UhkJAtcLYXsWZx+z3cGcJbye1AZFDLLg3uvm7j6Nrs/k5l4FYaBXlj/SsX
         /B4d8v3XQ3N464FVD3kBaQHShZqrS3c9qvOX6aOMvoyrHpiH9PXTC+bsEy57ltCC+Zxn
         basQ==
X-Forwarded-Encrypted: i=1; AJvYcCX7zR/EAN80bv3nWh+u9fzsvlPEEGSp39NAJuG5tLzKu4Q/FBoIm16kZgE4vyooOxHwSabSOYORK4Y=@lists.infradead.org
X-Gm-Message-State: AOJu0YwrC6S8OYMa7vlHXTjo7Y82Aj4qhBBxgeCIgxs6IUhZEazdq6Sr
	FQRmrQCKtjKUCjjx7NdsFdbjDtCIJijXR0S2wfwx8XYGa9noRUIg+O9N
X-Gm-Gg: ASbGncvcKAKSYhXZ/VM0IPE0XTjoj3lAi+iBMk6ZqKJXeHQT3vIS24GVr5lvA9vwiJ7
	Oh1wEp+ylMyOwgRPzawaVItFSIrUHIcx19JP07BwpK7EaXfsABD49s9MNCnJ+0i0DBsTu/LSe0B
	FOErXv+Xi67F7u2dKzWbYcgVvHWMc6NqrB5qxJCLBLjrF2zGsq/ctGPT8Pp5xdSyOTc3PcteMgQ
	ns3JL+1KujbKjsVl3cGQ+yyE6iNzBJcjZVELqER/rL676GfIYPoytk/Cg5DZuaaqzCb3pxiL2Ua
	oStgzksNrVMXyeUhw4w1exsWZmFYk1HwBSw79+ZIL6ipOFU4Htod8SxRxdZ5Nnwv7rjLE0Ie90H
	pvxXWen46lbQvp6FOwZT8kuKFAsaePKitwPjdt5t+dyJaqyYVg1WrSvbifDB/He8cLyGeO/qTQF
	L7zQPnVpubLw==
X-Google-Smtp-Source: AGHT+IGX2vg9yS5PesxmtNKzfyWKsQEYzhdmMoZFsVnrN9bTUhkb0gAf4+KyOAW00IAt5KKjwTpS/A==
X-Received: by 2002:a05:701a:ca86:b0:11b:9386:a38e with SMTP id a92af1059eb24-11c74fb2245mr850013c88.21.1763459363884;
        Tue, 18 Nov 2025 01:49:23 -0800 (PST)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11b06088625sm59877211c88.8.2025.11.18.01.49.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Nov 2025 01:49:23 -0800 (PST)
Date: Tue, 18 Nov 2025 17:48:50 +0800
From: Inochi Amaoto <inochiama@gmail.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
	Inochi Amaoto <inochiama@gmail.com>, linux-phy@lists.infradead.org, sophgo@lists.linux.dev, 
	linux-kernel@vger.kernel.org
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Chen Wang <unicorn_wang@outlook.com>
Subject: Re: [PATCH v1 1/1] phy: sophgo: Remove unused of_gpio.h
Message-ID: <qyvtgvvvq6txgliwm64bapal3e7ehjc46fdjm3fomf6tp5gwkh@qrwyzwgvkfg5>
References: <20251112085220.1452530-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251112085220.1452530-1-andriy.shevchenko@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251118_014925_296529_9EAEFA1B 
X-CRM114-Status: GOOD (  15.26  )
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

On Wed, Nov 12, 2025 at 09:52:20AM +0100, Andy Shevchenko wrote:
> of_gpio.h is deprecated and subject to remove.
> The driver doesn't use it, simply remove the unused header.
> 
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> ---
>  drivers/phy/sophgo/phy-cv1800-usb2.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/phy/sophgo/phy-cv1800-usb2.c b/drivers/phy/sophgo/phy-cv1800-usb2.c
> index 64f8e37b4b52..6fe846534e9c 100644
> --- a/drivers/phy/sophgo/phy-cv1800-usb2.c
> +++ b/drivers/phy/sophgo/phy-cv1800-usb2.c
> @@ -11,7 +11,6 @@
>  #include <linux/module.h>
>  #include <linux/of.h>
>  #include <linux/of_address.h>
> -#include <linux/of_gpio.h>
>  #include <linux/platform_device.h>
>  #include <linux/phy/phy.h>
>  #include <linux/regmap.h>
> -- 
> 2.50.1
> 
> 
> -- 
> linux-phy mailing list
> linux-phy@lists.infradead.org
> https://lists.infradead.org/mailman/listinfo/linux-phy

LGTM

Reviewed-by: Inochi Amaoto <inochiama@gmail.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
