Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3FD00C04A95
	for <linux-phy@archiver.kernel.org>; Wed, 28 Sep 2022 19:53:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y948AQQu4O6npqV6V7zWi/Emp4nnwYshz15A3fzG1bg=; b=YOHlmB2ftYQc8K
	617lSrhQ07wE75Yp2JpfoBSDIpgn5Hy3CK1P1O3Rb03rjANTihU1k6PlFZZmO9UgxShDbuNE3vAPS
	9ZgSFZqPRO9PCRf1zzadGlyCT8Q+4QRifv7VUMjZnpUb7t+ZdYIVu338YISb71CJs1gB5K6BXVNmR
	69iEfCXevBrehbsSY2bNopxBVtJrwud9LYoqrMNLCRIcvRNPsIIcDDUOCexvAAl7zp7FkxM6tlHV0
	Ta8K1fzDzNqJZxhTPRclUD7vSKBKmnD+kLDa/ROQ04B+/h3TqUtUVdVQIzDNVsMKH72a5vN6YtJor
	b2/oECGu9w6WunPQpMqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odd7T-000BSJ-Lr; Wed, 28 Sep 2022 19:53:23 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odd7R-000BQv-ES
	for linux-phy@lists.infradead.org; Wed, 28 Sep 2022 19:53:22 +0000
Received: by mail-lf1-x12c.google.com with SMTP id k10so21958193lfm.4
        for <linux-phy@lists.infradead.org>; Wed, 28 Sep 2022 12:53:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=bXUCw3zJ8ZYfuv5F/h/y3vQdTBrhHcccT5yw9HbuDDM=;
        b=zW8ptox2gw1JG0tpwrsRDbW9oE1Cy4h8JzHBQFsnDk0EUe6Olm85A82ihdWeGLNhiR
         lVlCYbeSIhB5Kd0gzfqBYanJE2OW2/URExlq17eU6H4IthjYWzYL65VZvcFlDWfWio0z
         KgUhUxnmnEphrctTDeR5BrkPcU4OEnqbLicmrnMdK8RxxPSZLZUlKRoHEeMfw6sJ+ty7
         pSP2th3oIzPFIbks2eHHxT2Uz5i1RgeDeFUq5CgvRWecEezLv8cHKFMf04r5IojdLqLN
         f342SL+w7sPAPXfylnJl43Paf7s1lOhsg7ujLzVdoP4X+GBByYbV6y4MAQwW5PrC+zKW
         iEGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=bXUCw3zJ8ZYfuv5F/h/y3vQdTBrhHcccT5yw9HbuDDM=;
        b=4m4+J2XNZRa0blLc4rGFET9ZqVbeaHJIZ6PPhAW8kFkA7M66126LWTwES0MMGCTBZY
         op8w6QELHhZmm6HhuUjQh/54ktgTQcymFwsD7KFQB81r+A/+31RzWLa8Jvx/GbOp/IJy
         WQUKpAAkR4eky0WX/5KcJ2eDEjcGEXcakj4blF4jQx8+mOPHeIaZ6HUkZRd2rCv1VCQS
         uwS2MYlBwpp/VpuCkQfxx0zxxOTnlHkRQUsVuStEMJ6HvuOhq31BSxrkot0Ca1mKaGm0
         fiSfGN52VwAxAn4aI/+kJ3zGnpCiX9x5gAL8xTZrqpB9zKAjtrVnk2adJWvXFsyZ/0CT
         La4Q==
X-Gm-Message-State: ACrzQf1d7S+DRWimRWiBJDNxDVAHO9zj3BuF20AhENAL3fSzHPWu0FAx
	O/e8rjeW3KXbULcJQeVVc+TlRA==
X-Google-Smtp-Source: AMsMyM7y2lLKg3TRBlhfRTK/b5eZCxHr+aDsfu8PvRB3IrTIdz2vt+TmC4V7fWWyaVdXPOdF7CfYdA==
X-Received: by 2002:a05:6512:33c1:b0:48b:2ef6:f510 with SMTP id d1-20020a05651233c100b0048b2ef6f510mr15197286lfg.237.1664394799025;
        Wed, 28 Sep 2022 12:53:19 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id j23-20020a2e8517000000b0025dfd2f66d6sm522884lji.95.2022.09.28.12.53.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Sep 2022 12:53:18 -0700 (PDT)
Message-ID: <563c360a-4edf-4642-4805-1df0ff31075a@linaro.org>
Date: Wed, 28 Sep 2022 22:53:18 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH 10/13] phy: qcom-qmp-combo: clean up power-down handling
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220928152822.30687-1-johan+linaro@kernel.org>
 <20220928152822.30687-11-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20220928152822.30687-11-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_125321_510807_4B26E2FC 
X-CRM114-Status: UNSURE (   9.30  )
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
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 19 +++++--------------
>   1 file changed, 5 insertions(+), 14 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
