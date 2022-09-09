Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55730ECAAA1
	for <linux-phy@archiver.kernel.org>; Fri,  9 Sep 2022 09:37:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XKtCqnfDmqtYIzpPhq2vdLSAI2VDL39PDRqq8u1WmWQ=; b=fHMBE33y9VNsOr
	2PAX9Lqp3rlUqgvyFeW9aIyLe90iJMx6W6iyrvcX3/yqnYqvF7kP4YuAWk2D5MApVHNPvBvDFoYzv
	2mEzAid+9dCKU95BMTjil0dnaK+w7uokLppIqN7r1P098e3hmp18spNZHGXZQ5fTM4ctzY3IPB1ck
	lh7LJgCEzPJITx2b06i12NRqnfbM2OZFoJOOM1nee3M5snizfm1SnjbDW2b1Mlf+QrclKypfI3IIv
	uo2dvd0+4L0PhkPLf7tvHk5x24hhq/oQC6JDOYDZntQv6s3kmv2I8Y4dQSnkjdTYn8iL87NhE3FAf
	XSTPeUXX2yG+6dXfSWIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWaRv-00F5i0-PK; Fri, 09 Sep 2022 09:37:23 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWaRt-00F5gr-M6
	for linux-phy@lists.infradead.org; Fri, 09 Sep 2022 09:37:22 +0000
Received: by mail-lf1-x131.google.com with SMTP id u18so1715882lfo.8
        for <linux-phy@lists.infradead.org>; Fri, 09 Sep 2022 02:37:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=x8Y3CR3NsRCi8B/rXKSFsQwnh4mKoxTQWWbEyouuflE=;
        b=RN5XvpZ/B/VR7eGmUkJG7k3fsmmyfy1EQi4hAukLN/ScIYtqSrf2MveBet15oxoig3
         8OCsPzTi47xYK+sufbtwtSFcSD9tN0rsP7VsYNI4YLg7qpWDuWvjJvkqeftF2YkVnjGx
         +9uBdTzDXRbg0vWG8+i9gtBbtdrpyXkykWBuLeOSz20HVJT9bmEUk+ZncDr7LW5avU4G
         JqRP45HEYLKom2cImMryw2Ckzp/Xqx+V8SAA6kyOYrswCkFplY+U3+jsQizvrR58pN0h
         w4Jr+N1mzhpTHSvJejZSGbP/tV1XCKN3EilosX63LsB1rs/W1Tq1T0Wk/G4EJgXWFhgP
         bRug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=x8Y3CR3NsRCi8B/rXKSFsQwnh4mKoxTQWWbEyouuflE=;
        b=b83y9ce6/qZgYZibzFGN8R4xXW19qEVlw9soVu25KbuQiV9qkZAxJ5f9Pk5DSTGcJq
         q9ZL4s6CgTtIC5FPeth5U1hYSwXr9Q9t8jWj0P7l+CMiu+5G6EB8la/yDvkOJvRHNEtO
         ltncC09n1Sq41Cpa9S6FuE1Rj3NyXdZNSBc7USEZIahFJZ+vMRXA8l14M0Igv8Me+RpX
         XbCv8f8S/0bFLEQbgGmbnc+Wpx1FU7KqluvBPsjO5lAoigcOqvdEB+wje5uMkLYtc3pe
         iPOtxPydeteMDV1i+ddM6IAH/hkQbIR5LWymcTmpWk6z3NzTTXO02z1y8kkVVSoy+XR9
         QJpg==
X-Gm-Message-State: ACgBeo3/m31g3byqowTSY4nQyhjQWooCTtrocQB+65iP+YjQUWN8QtHH
	2/cNe1buCNmlYbq5SL9AQrFQ6Q==
X-Google-Smtp-Source: AA6agR4tg4jDITyEd+ydvsYoqEXDelr0wc4PV5xvP7VIfd2Kev1QD0c3wkFIFMxlcvNPq76ds93jsw==
X-Received: by 2002:a05:6512:3f18:b0:492:ed03:1aa8 with SMTP id y24-20020a0565123f1800b00492ed031aa8mr4535166lfa.515.1662716237850;
        Fri, 09 Sep 2022 02:37:17 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id g3-20020a056512118300b004947f8b6266sm5732lfr.203.2022.09.09.02.37.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Sep 2022 02:37:17 -0700 (PDT)
Message-ID: <a1a29ffc-f0ee-7b26-f342-b4c99e1443c5@linaro.org>
Date: Fri, 9 Sep 2022 12:37:16 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Subject: Re: [PATCH 04/16] phy: qcom-qmp-pcie: drop unused defines
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220907110728.19092-1-johan+linaro@kernel.org>
 <20220907110728.19092-5-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20220907110728.19092-5-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_023721_750654_0C49E3E5 
X-CRM114-Status: UNSURE (   7.87  )
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
> Drop defines and enums that are unused since the QMP driver split.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 24 ------------------------
>   1 file changed, 24 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
