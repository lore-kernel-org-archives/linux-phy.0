Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EDF22C433FE
	for <linux-phy@archiver.kernel.org>; Sat, 12 Nov 2022 06:20:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3+F/MFsDBWgxMG/LO5cKirqqxaJF/kQlpfsI+Z76Mt0=; b=4EIZDwSuJeb85b
	GAhA9v7D6Fm+pyicrGnhVYXjQog8eZ/OyJe9Cq/pUlydQyQ8fDeGc3/i5gYoEKmxkHfdHrKVx6IJ5
	3AXHutZMiEwgP+hYGJ/CCgSLr0rWI0xCmueMBOMgaJsS6o4MM0MlqyvV9WT7EnyCfg+wm2J+BlBtV
	80AHFrRss/gG9X6U09fjBkmEdxCVv9dn0lioRx3ASOq/ERmYE46VlBT6fzfCjpjt5guG9fWw8fdWL
	7Gr0hI/r+nHHKUEQ52xf2WGlUwy4Wl+zwkEjbG9lnQxJl9eZV29YqUERkvRwEtzzZlconUcOPzmXP
	WN77mOBvQTjHvdUJtWjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otjsU-003ewD-Cd; Sat, 12 Nov 2022 06:20:30 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otjsR-003etN-DR
	for linux-phy@lists.infradead.org; Sat, 12 Nov 2022 06:20:28 +0000
Received: by mail-lf1-x12f.google.com with SMTP id l12so11277752lfp.6
        for <linux-phy@lists.infradead.org>; Fri, 11 Nov 2022 22:20:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hSHCyJW/WKrtroRPB27Mpcv1HvzmA++gkg6zKF4rtMM=;
        b=jPshzJXAhKwWnhsY4+cTKZm9bi+KfBS///w5x4Bay1iZUYk2d4eSY1HR6T5zuVJUUT
         X7OOs7SOTzRG1mrUXBGFqL/PbjeBkJEh7c0mx67wYc9u311s/Jr8VB6MzOhA/aTmu0cW
         FulkVPUutExORE0bNk66KyDsdtIYobFRXeDhH2oNJ5lp3vc6NzB1QqGWACD1RJv/5UNh
         ELZCJXiIvnPG6xRQEUJoz4EccKaR/PsWw9m41Ke8xhC3WatfB1QqGIWHjBxst1IXPoDv
         OuR/DreTK19BAYXPXjUFUPcWxUM4uzB44jYgsRKxO+mYSmkH4TuvAvlQcDbb38EX0C2e
         ITQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hSHCyJW/WKrtroRPB27Mpcv1HvzmA++gkg6zKF4rtMM=;
        b=aqiI8yg3pUyN/DYCtLWkHB61e2pWHVI9X/XG25AA7eYyUVUZnjte29O5p7I96fZgIW
         LOLC0jEiDDgxTJIfdIPzzvjmjGl6QgwO3jCU3rR3HIPnuYHvvOLlHD8btV7OkXC1vbcW
         ViSNKhWt7wAsECuER6pXh7RkDTyUL5xyRMtRyFoI7yiOt4ImuF3PF8KyKJpGzfUjhKzD
         Wn6dWIobxca9L9R+oBMIdTfvqyYQF+iTaCB4nTxKFbgCnvRBEWVuQxcI4zCHgMJcyn7P
         bZF9OX2g3wtj9w+lOWOC+w2uHMi2xG4/CbAu304PtVW+qJFb5JydZiL4L88w4DTgTlvU
         rQmQ==
X-Gm-Message-State: ANoB5plD0PJ2n21Sw0YqGWGzp2hhMa0/a9m14FFH7Gyt4GNAobnT4jo2
	9sfYyPMu2HLgspvDMBn3pOCiKg==
X-Google-Smtp-Source: AA0mqf6PhN7VwzvnKs8hYhV5cIFdgzWCjX9hJIYz4X2ijUJaQ84SCIg1OHn+mY+caZMl2mX3j+ZKXQ==
X-Received: by 2002:a05:6512:3490:b0:4b4:6ca6:c669 with SMTP id v16-20020a056512349000b004b46ca6c669mr1628892lfr.338.1668234022820;
        Fri, 11 Nov 2022 22:20:22 -0800 (PST)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id z5-20020a2eb525000000b0026c42f67eb8sm763665ljm.7.2022.11.11.22.20.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Nov 2022 22:20:22 -0800 (PST)
Message-ID: <afd6f3a1-4106-dec5-3e97-ec7f4a8e8129@linaro.org>
Date: Sat, 12 Nov 2022 09:20:21 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH 06/22] phy: qcom-qmp-combo: rename USB PHY ops
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221111085643.9478-1-johan+linaro@kernel.org>
 <20221111085643.9478-7-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221111085643.9478-7-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_222027_482774_EA9B99EB 
X-CRM114-Status: UNSURE (   8.04  )
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

On 11/11/2022 11:56, Johan Hovold wrote:
> Add a "usb" infix to the USB PHY operation functions and name them
> after the corresponding operations (e.g. "init" rather than "enable").
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 12 ++++++------
>   1 file changed, 6 insertions(+), 6 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
