Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95912C38A2D
	for <linux-phy@archiver.kernel.org>; Mon, 24 Oct 2022 13:34:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l9zCQ2+Rv1f4REHT9mBMc2bJM/fYkIVxvY3wadcC4dc=; b=a7dqNpbRYptksY
	K+wDGgQFkYWEPVYMax3m8tXVo/OxHqasMPsw5Fk01AatOo7P66WblpiqEn6LPZ8fpg57EtKFPKwKI
	sWLAJGC0+ScdT7pQCKdz/NIhklnq4zOytp9asNVp0ecelDvkmsMo78+woJLUVvfcmrlPxMBskg8/I
	FRus/iiLYmjXutpsrburO0r3eqqx/SSyG1QDguQPmF58RqrqIEoOFlUfZLtF955du1aIz7h9iiWJU
	O3gYQoyuKUEDuCwz1cZBqwqM1d+nmG2CbE9sT/27S/7TZ3gCUDk94rMGW2KNG9uEXwy8MIHtar/Jo
	XPsWZLzYCY2blZZnXBNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omxbU-001jQi-37; Mon, 24 Oct 2022 13:34:56 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omxbR-001jPk-EK
	for linux-phy@lists.infradead.org; Mon, 24 Oct 2022 13:34:54 +0000
Received: by mail-lj1-x230.google.com with SMTP id bs14so12810972ljb.9
        for <linux-phy@lists.infradead.org>; Mon, 24 Oct 2022 06:34:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OccXvrVFPSdcIBEbMx4c26n9Pf99eO9A16XUUuZhuS8=;
        b=xGHR8U9ExEcHmssSxgKskB3JbHr72wsekwdOEpuYkrGjwe8nSuiiK9vogyhh/KENCz
         VAnaFMf2/Tw1UmRC8T7XZ7uOqx4lw9CPLRqfhaF/21tt1A8MkMmMmoySSaL0LhVEqcyb
         NWFkEqPhInWC+gQIZ7xBFGfiqALA+cVLSKjCHwPmqVRSy0QvgN5w2UbtAFSTcHwgvvgK
         nHsF0b6kE9abbC1FfwKAICbAHA9JQTqNZhTYhD8X8GhJX7I/T+d90GQIMnw+YlOTDzni
         nM7Z/014IT9o9FzUrjOvPNbh3hnvzHHtuVWwCSXfCSMBKStw/0sNBirM3jhEPYwNuLx7
         0Gwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OccXvrVFPSdcIBEbMx4c26n9Pf99eO9A16XUUuZhuS8=;
        b=Y2JaRaL5/39YeqdXKxa0ESaRITMxcUxH+S5pghu6Su6kOY0+ib2PEbYHGkYVa/X/7O
         NY1N5HT3IkYM2td7K82s7ct4Tx5c42xGr9xtRaazm6aI91K7v/yk0qPEecwLU8jyD9f9
         CCJsxKz6eHy/sST6rUrhbKo0meAM0MqrSEN8HlneejlptGYgf6XgF5syHV1W7gedF8SY
         qQVitxq2RMjVqGcml/1G10YHhZ/f4ymGC8/eh8oOz3Q4WyGnOkEaHNs00KZWMoTz+R2a
         QROW1TJf+6j8cdrE2I4TSm+A0EuY4SzuVOU2IkpPm0t9PSNswUMvgtQBF2BCmCU2Xzi2
         PtaQ==
X-Gm-Message-State: ACrzQf3otjvcytLECQ6WrMIna4fCbmaDuSNii0zu0caECS4k6fuQlYTC
	YgjE8wWgEal8q89rtsD8ejUyfw==
X-Google-Smtp-Source: AMsMyM4GVB2gyMzEwr7DXV7QkBWicvLrN8nkwr0PZVkKWxNJmxv36lEuSDbONmjQQTcTuRUaEwvdww==
X-Received: by 2002:a2e:9181:0:b0:26e:91d8:5796 with SMTP id f1-20020a2e9181000000b0026e91d85796mr12231780ljg.398.1666618490966;
        Mon, 24 Oct 2022 06:34:50 -0700 (PDT)
Received: from [10.10.15.130] ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id k11-20020a05651210cb00b0048b003c4bf7sm4544630lfg.169.2022.10.24.06.34.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Oct 2022 06:34:50 -0700 (PDT)
Message-ID: <7ede9df3-f333-96a4-5b88-aa157d4b8847@linaro.org>
Date: Mon, 24 Oct 2022 16:34:50 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH 09/13] phy: qcom-qmp-usb: clean up PHY init
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221024100632.20549-1-johan+linaro@kernel.org>
 <20221024100632.20549-10-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221024100632.20549-10-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221024_063453_503407_876DFE44 
X-CRM114-Status: UNSURE (   9.06  )
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

On 24/10/2022 13:06, Johan Hovold wrote:
> Clean up the PHY initialisation somewhat by programming both tx and rx
> for the second lane after the first lane.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 8 +++-----
>   1 file changed, 3 insertions(+), 5 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
