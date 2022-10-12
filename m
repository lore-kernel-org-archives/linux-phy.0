Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1BE8C43217
	for <linux-phy@archiver.kernel.org>; Wed, 12 Oct 2022 20:40:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V/JaOEvmZ5GZdfqjUcvAuWIjJ8lfXjloGFf/Tle5G9M=; b=vEsB+/89Bj/xaB
	uSfkiPzFXszaVbX1F8RI3E9ZqynOs0B1HKA+Wg0mTE0AgnVB5g+ruYHRC/7RBXxlfc3uJftKSMaxL
	tfVeOo9b9fdyq2zteNqS1bweyNVVEaGGdawKgstj5ffkMP3Ulm+uDM8U3crCb/HTlUe5rTRgQg9/I
	85U6n+WkWWXgg61j1zPmffOI0d647flCoXFXaviWHbwpP56rWfKuY6Lye6sCSR2GjFYuZcJrmXpbR
	HirdqwxzTMqejkCI8F/xm4CGjtl2cMx5RcHFKOnAvuK1vpHdD5ar4rGDEOxaoccaiYqjfXiDEKrBp
	Mjn44ZxGJzXjiVOD/NYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiiWN-009Ihr-8n; Wed, 12 Oct 2022 20:40:07 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiiWK-009Iet-KK
	for linux-phy@lists.infradead.org; Wed, 12 Oct 2022 20:40:06 +0000
Received: by mail-lf1-x12a.google.com with SMTP id b1so22462731lfs.7
        for <linux-phy@lists.infradead.org>; Wed, 12 Oct 2022 13:40:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AxTkPgU3rNcIJM9AjTkJgUGwH+NeJHSORKyf6MDGTgQ=;
        b=JTfgKXZ2+cY1aNINlKTeM7v8/Mui5ZYvMOpsHVPRBGgXrtYhDyDfLREgP8AJH7jZgL
         bfxVtpy6Xb0Z9kqJXmEplRaOyP3Qgen746xU40JRJVoUPtEQ4BIg6/zs7iz3LZ+k7mi9
         4QNrcP4CHo7HO56HQDdETRcaOLv2eHnSagkYH6x8kUYoL5i37ttmMEp4qURZ+EHZU0w9
         7mSdQFb5Whs2FAPc3pmHWMoXyuJvrrnXBA9UgiWM58PokXKkz913TOTDTEa0srX/wP/n
         r8ekR3HEBHSBq/Kdk40bXtmmJ0ivCDDvyKgRQCxLWzI6DVp/5vKU8CLaAJnuL8AoMdN6
         hGdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AxTkPgU3rNcIJM9AjTkJgUGwH+NeJHSORKyf6MDGTgQ=;
        b=h0tkND3SbWVzRsBdyda4fnb4XJfKlelRkjnBxXy0k2r47ABwt8ELu0aA9abWEp9hFO
         KLf83kyLhUF54+5nj4cX+u7g5YE4VaVKiAmoE8UHvdBjjAPPZq5kQ4hKS6CAwHTuQCT+
         +rMS2Kk6idCYNLApnFa3+7i1jLBGSJ5nGQ0KVu62APdThtm3PS3AweoIcXo11fZlqfwj
         peDWo3EazXTqfk0/PM/LuyalVeITjYwmtIQBgSjZnb4hWjSbSQ/biexVSkomeqtLkzTC
         oye5hiKITv42t1N4S0YOe4gNFrdRrcgfo5GSmBRlSr9qHTzkdpt3Kz1+if6nSqY3r+eq
         Kq2g==
X-Gm-Message-State: ACrzQf2MOl5kEtzZ2e5aE2egiFFIeckNea8Mn8NpIOYsYR0tkYlPB05X
	AqZIwrTvjHu3HWHq7YmW7ubiWA==
X-Google-Smtp-Source: AMsMyM7oPM/M/LdynQa845+2bMvdd0uoPnJOPiwohfV0wcsBTu8zbX0XE7yWGi9/xIHzdyCH+jPdWg==
X-Received: by 2002:ac2:4f03:0:b0:495:ec98:bcac with SMTP id k3-20020ac24f03000000b00495ec98bcacmr10574813lfr.339.1665607200092;
        Wed, 12 Oct 2022 13:40:00 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id o18-20020a056512053200b004976809d6a7sm88787lfc.283.2022.10.12.13.39.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Oct 2022 13:39:59 -0700 (PDT)
Message-ID: <fb44197c-1128-ad7c-4f7d-6188b508038a@linaro.org>
Date: Wed, 12 Oct 2022 23:39:59 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: [PATCH v2 07/14] phy: qcom-qmp-usb: drop unused in-layout
 configuration
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221012081241.18273-1-johan+linaro@kernel.org>
 <20221012081241.18273-8-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221012081241.18273-8-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221012_134004_774996_B49B5A9D 
X-CRM114-Status: UNSURE (   7.52  )
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

On 12/10/2022 11:12, Johan Hovold wrote:
> The QMP USB PHY driver does not use the "in-layout" configuration macro
> to configure registers that are typically accessed using "regs_layout"
> arrays (e.g. QPHY_START_CTRL) so drop this unused feature.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
