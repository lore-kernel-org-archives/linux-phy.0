Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC815C433EF
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 09:37:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XXX/v83hKnyz8aB2RlQCDN6Do733KX9dEr+ali+KP98=; b=SJ72HJuseBSKNF
	Hoa0Rdv0imQryUiGhEKw/zA8qtQhXUFuFEVgXKTw4sRWPEZmMioviEpUihNBzqBSieR7XuYTiRckP
	aarGnvmDKrZHkqtVRu5sKKZ6CztaVxm5cJGF51an5F38FagvXTyJ2oMoCrCpqnnA0NmkSi733hBHI
	QX50t6IodrjIUBaIk7oKJBhUmbtszb3h8zLleURCnekkhuOMSaiYbhdSFrQdhy8NnAR/sKqrOisQ8
	8fYhldNT17vzJ+At1H0mBhORkjSGLFdu3tqGELroj5BpGzOxgGW8IxSravHt+E+WNO6Wlry4UF2sq
	xVxO+z12enXnjVZLkwvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8ezj-00GmiP-Rm; Tue, 05 Jul 2022 09:37:23 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8etU-00Gj16-KH
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 09:30:58 +0000
Received: by mail-lf1-x12b.google.com with SMTP id t25so19552240lfg.7
        for <linux-phy@lists.infradead.org>; Tue, 05 Jul 2022 02:30:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=25RFioIXsDd1V/OTuFJDIoijZiLPJ85nAmDq5oM1rXE=;
        b=RjDqVyyHnHJTKwb1zAXIYHD8G47BhHa9faCZRb8LhoO8l2Acfm3WfCLa3S3YQrnqxr
         7rJBu9AfOHhMjg9Tg5TXqqEYYQct2sIZR3hiAFEfuG3MNyoXyb4qH6Uj25eYz++znS8D
         FDj+vYEVidM8FlxN1Z+a7FS9hoXSohWFhobUGuNe+yNpTve4kf8DP+YK6J8k7VMIdfgM
         dOL7rE6gkk5ZzGN75LJF04FdntRQt7Vj1NAEcFpl/6y3wfR7xfplZUVpBAKdzAR+1Nhr
         7WpZZIC6bzYrxOsB2sKc9T4UL6/HSchnysI4fJIq962gD1Et6lWLJiycEGq/iEKM6nE8
         foRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=25RFioIXsDd1V/OTuFJDIoijZiLPJ85nAmDq5oM1rXE=;
        b=s0Q+YoHRuBVG3Xb5Ojct4Kbtw/cZXoeQlWials1t4T67T0fLJBcIzb/77CJ4dRdkx5
         +DL1/XvlibGk+5Y0tUWVd90vFBRRA8io+0GwqME2cVEI3+VpmkVUxhTMRGSC9ulR4mQd
         xR9+5yqw0+zwc4v+LrofMhQNZG719ZOvJRMwr4yY6+vEJ9HMJXdqui1RHaaRL4PFjy6X
         irPhGrBVpijEeb4qE4RTx6doDuo8iHq/+WfPcFY5GAbQi0hb6S/ACXwzPAoGc8AtP1Dv
         1L6L417DdA0murWpiyRF/BcG5bRtHiezoiZr/S7gpSp3vAJuiJwDT7psuD/rvenqj/PP
         khCw==
X-Gm-Message-State: AJIora/yOoWi02FmGKvWwO4FnB3wcxy1kfj/k+u0qeZaWtuM+QQXE8G5
	Q9/w+ooqadNuo8JUGmNI2WLY0A==
X-Google-Smtp-Source: AGRyM1tzHaMhD9AcvedsJKlqa3XUgEpYZiDx0EQv97JGtZN0QNuEQBVtHzNKqU74KximQc03N/+4ZQ==
X-Received: by 2002:a05:6512:261f:b0:480:fd2b:23c8 with SMTP id bt31-20020a056512261f00b00480fd2b23c8mr22443229lfb.434.1657013452562;
        Tue, 05 Jul 2022 02:30:52 -0700 (PDT)
Received: from [192.168.1.52] ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id d17-20020a0565123d1100b0047f7a5e0c23sm5592896lfv.275.2022.07.05.02.30.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jul 2022 02:30:52 -0700 (PDT)
Message-ID: <d57a09cc-ed11-44d9-f2b3-55bc461f16de@linaro.org>
Date: Tue, 5 Jul 2022 11:30:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 1/3] phy: samsung-ufs: convert phy clk usage to clk_bulk
 API
Content-Language: en-US
To: Chanho Park <chanho61.park@samsung.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 "James E . J . Bottomley" <jejb@linux.ibm.com>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 Alim Akhtar <alim.akhtar@samsung.com>, Bart Van Assche <bvanassche@acm.org>
Cc: linux-phy@lists.infradead.org, linux-scsi@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
References: <20220705065440.117864-1-chanho61.park@samsung.com>
 <CGME20220705065722epcas2p2973795cc88ee436480abcb48435059a8@epcas2p2.samsung.com>
 <20220705065440.117864-2-chanho61.park@samsung.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220705065440.117864-2-chanho61.park@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_023056_746175_3FCF2067 
X-CRM114-Status: UNSURE (   9.82  )
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

On 05/07/2022 08:54, Chanho Park wrote:
> Instead of using separated clock manipulation, this converts the phy
> clock usage to be clk_bulk APIs. By using this, we can completely
> remove has_symbol_clk check and symbol clk variables.
> Furthermore, clk_get should be moved to probe because there is no need
> to get them in the phy_init callback.
> 
> Signed-off-by: Chanho Park <chanho61.park@samsung.com>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
