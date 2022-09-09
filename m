Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC329ECAAA1
	for <linux-phy@archiver.kernel.org>; Fri,  9 Sep 2022 09:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ebjAnHrcHbVApfnP2jqRXcztjXCMloe0H5lpy5/ACxk=; b=U9PiU0OaFZoVAV
	hzC6s5bRlJEzTdaDO9xKTip0HhQr5wdeX2OaMbtp3iwOy1R+Qz3ngxvT0oqompIQa+2MmsHcXQ5i/
	dUOabA2keFZ0dNFwls8JBlHYOrxVx04xZ0un3FfsPAOrnOtDXTeYp8CGG0HzRRAO+YZ7wWX3vaF2C
	nlHmUYLEh1Xhm/1+ZDLu2sZ84cPizrNTrRLJy9bOUPXI6thKoiYJ5eC8brJ1cUWWuZyHwgD/rTczd
	UflqGoL41KSJUnBG1Dc2WRLiUua4/2h9eyGsfSatp9tT1K7efbPm6B3m9nBXuOcJ76aiKEvYk33gQ
	IinDuKQIzhZrZKrM2omw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWaSs-00F5ys-Ce; Fri, 09 Sep 2022 09:38:22 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWaSp-00F5wV-P5
	for linux-phy@lists.infradead.org; Fri, 09 Sep 2022 09:38:21 +0000
Received: by mail-lf1-x12e.google.com with SMTP id w8so1700088lft.12
        for <linux-phy@lists.infradead.org>; Fri, 09 Sep 2022 02:38:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=JSwEzblR3fhWzgBxSTAfIwU+U86WjgXDoByRzUfVV8k=;
        b=xc6HNMUXBP+pMU58wN211x4B9/0BQOvwZNSoA19lABQH94ATxm/ucaaixyIDuFiJtO
         XSw2RvhSZiFm/qjKWpToNJHCbBq2fcVOXTbjhx1jhoj1nN8TgY3DRjIm/4JlVWLaoyQP
         X6nGBPuO1Omag4pBHqviM0hjpiz/gxYckF1pJX83ZX27nEN+unzsMDYWtxycOW8HtgJ+
         T46fEFEVLkmZ6QkylccrXQx3o6omJY6BHr8KKLQaEJxt4dyXH/BgR8kqUEbRR4dBh3TY
         yDyq6ZoK/ui4rrtrxte1/g6Z1oXLSwuxM3rJq9T9veEBp/Try77mzN362wTyDZN01KRX
         czSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=JSwEzblR3fhWzgBxSTAfIwU+U86WjgXDoByRzUfVV8k=;
        b=dmK0zq5gfGQQ+DgYAjRfYhfli6xgs1S0WQ3FTCZTJUiJpnyIAsl6+xf8sBJZyWEbL/
         H4tb6hcRZiQj3ZiY7lXviz72k8enkqST9LVST1UMPsUbJKxwdac8RKh4yZanD7kdkrUU
         G3La0pBCl8U+xgkei2iSjBnLlS6bmCmuXdxpcvIUCwSKLE3kSNR6mdQPla8h6UshiZlp
         SwmkVGU937fqGeT2/dw6aelDcZFngYB0jgngJ/VoxVFzHzSlUy49MtBOjDWOJ4rkS84W
         4+eUM0o+W8tOz6Elln6I4bjMChzT49r+1+5a5wVHv+IfXiXh534r5BUDvH9jFES1+eQm
         82ZA==
X-Gm-Message-State: ACgBeo2LvXl+7UZxJjuCRGlEVXoeMpxgNyYhxIi6g/P9kHq0YUBQXIBl
	0iUj876fPdBYHdwy344NqEoNxQ==
X-Google-Smtp-Source: AA6agR4NQYf8/THkyhJ6wAWjtOvtzgin1YbJhxuhdzx9K4OkyEsreaPjW/UACP7UY+bPxSJce9khgg==
X-Received: by 2002:a05:6512:4014:b0:498:fe3c:d225 with SMTP id br20-20020a056512401400b00498fe3cd225mr436012lfb.198.1662716294357;
        Fri, 09 Sep 2022 02:38:14 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id u26-20020ac243da000000b00498f1eddad0sm11297lfl.122.2022.09.09.02.38.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Sep 2022 02:38:14 -0700 (PDT)
Message-ID: <fc18cd9d-554e-6c49-aa77-c55a922a1a56@linaro.org>
Date: Fri, 9 Sep 2022 12:38:13 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Subject: Re: [PATCH 07/16] phy: qcom-qmp-ufs: drop unused runtime PM
 implementation
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220907110728.19092-1-johan+linaro@kernel.org>
 <20220907110728.19092-8-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20220907110728.19092-8-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_023819_855095_87FC382C 
X-CRM114-Status: UNSURE (   8.63  )
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

On 07/09/2022 14:07, Johan Hovold wrote:
> Drop the unused and incomplete runtime PM implementation, which was
> only used by USB PHYs before splitting the QMP driver.
> 
> Note that the runtime PM was never disabled (and state restored) on
> driver unbind.
> 
> This effectively reverts commit ac0d239936bd ("phy: qcom-qmp: Add
> support for runtime PM").
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
