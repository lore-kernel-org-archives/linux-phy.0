Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39F15C25B50
	for <linux-phy@archiver.kernel.org>; Mon, 23 Jan 2023 11:08:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bbEpbO5fV3jwxzQKWgbS4pB9REWYe2bj8VozucWC2zA=; b=A3xG8Y7795JJ3T
	8iIoc4QCJvUf7feNrUnuxqUo+UiNxnzEPI32ow8s95eiJI4sRqg6l3ysGfaOVwhUdAPwjPFqUaXMw
	mU1sJjWj1AnsXBshxhL94upGDm5hcfVQ0Lp2E/zdV3l37ZDYWFJeysKx2SmPs8h7ELGF+NUhzdeim
	4zw2pIjlonaEw7xTA60QSdPeW8KWOyvpjbunIQ9ONRrUDGXB8WqcfcSY6kEwGDnHKBvmD2Y7Qh3m+
	aTCEclHPOUQN6Gi9QDzVdPmFAoQrcOmPHN9hxGUmhF6JHHyKCX80B7yGWbCwDTFUPvkkB9sdzitGI
	l7fQX0h0vNYhBSAyL8JA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJugH-00GvbA-Kf; Mon, 23 Jan 2023 11:08:05 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJugF-00GvZi-2w
	for linux-phy@lists.infradead.org; Mon, 23 Jan 2023 11:08:04 +0000
Received: by mail-lf1-x133.google.com with SMTP id w11so13896072lfu.11
        for <linux-phy@lists.infradead.org>; Mon, 23 Jan 2023 03:07:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DWWvq/P2rQvC944dHoFoJoaCJsFP0QQ/YpqQ85XOpVk=;
        b=xlVmUlnce8mcOV95i8iMua1zPcCngTN5MWrfnKG5ipN0/e9uX4fQQJd+C/GHFpF9vi
         aF48PdvD3Wo2vYrsOtnJ82LZMEnCR7PhDDmGFuKPlcflSiy9ayRYfliLQo7i4y3ik8TE
         diobAqRXGznqiYzol4m3/N+4Hs00blHCip1VQgRs1UWB07rMrPKR1GkTtGcoh+2mp2z6
         gra3qm0b2xaCiGIh0Cs/Fw4t8qTMBXJ+gQBIf0tVSYriUO0rr3EGwOv67RlxXUshKgmk
         uLz9EO+bwnhl4a2a8vcYE1ul0ucBIVJx6ua2sLC+1TPLryoIuvxFWcwTyN2NRfcrZhb8
         45tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DWWvq/P2rQvC944dHoFoJoaCJsFP0QQ/YpqQ85XOpVk=;
        b=RRasUEY9SNBWmpBia6m447eUDo2w1GzOF2EUFk9tBt5y7XZPIVaLwIZtNIWLyeenE1
         /BUyxLQ7XQP9BWJIfdwWI209Xa3qaGE5YHo/XZ4/KQMBS4NN/+Jz/IaoTbumjLeY8IDr
         MuaXjHqIdIa0GD6VEWHdcj8Ec4C7BLdG+Hdg/lVNl+EyTAh+2Fb6D1YMe5dluyMV0N0c
         +zXQRhu0zfoBa4aZDuD8LDrt8aEObp3vs+rofuzYoNn098Q9Ke60FCWXY4+YqIfUe+a9
         yqlRG3/v9KMk7lcByqn5pCL/93vChvmRYhz9+LQwlfJh4wGahFsU+DzIcT8WnzkGv7Mq
         WtQg==
X-Gm-Message-State: AFqh2kqHhPUsnaiW5r5gGkKUFemBA2O1afR10e+IGKObj+KeAlZEihJo
	jKUPnGAu87C0xBG5sFUQ8Ry+ow==
X-Google-Smtp-Source: AMrXdXss9WKzPKtAzjxDfNCYuw33PRC7qMBIXqzr3PPEyoU775UKFXrJ60jxxXh+Iaq6da7YeygnKw==
X-Received: by 2002:a05:6512:b99:b0:4d5:95c9:4eb9 with SMTP id b25-20020a0565120b9900b004d595c94eb9mr6473785lfv.44.1674472078039;
        Mon, 23 Jan 2023 03:07:58 -0800 (PST)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id c19-20020a056512325300b004cb3d77a936sm6494240lfr.46.2023.01.23.03.07.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Jan 2023 03:07:57 -0800 (PST)
Message-ID: <a8d0a067-f5ff-6bd8-0552-99554b52ace6@linaro.org>
Date: Mon, 23 Jan 2023 13:07:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH] phy: qcom-qmp: Introduce Kconfig symbols for discrete
 drivers
Content-Language: en-GB
To: Stephen Boyd <swboyd@chromium.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>
Cc: linux-kernel@vger.kernel.org, patches@lists.linux.dev,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 Johan Hovold <johan+linaro@kernel.org>
References: <20230114000910.1256462-1-swboyd@chromium.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20230114000910.1256462-1-swboyd@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230123_030803_183340_E0753049 
X-CRM114-Status: GOOD (  14.29  )
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

On 14/01/2023 02:09, Stephen Boyd wrote:
> Introduce a config option for each QMP PHY driver now that the QMP PHY
> mega-driver has been split up into different modules. This allows kernel
> configurators to limit the binary size of the kernel by only compiling
> in the QMP PHY driver that they need, or to split the module up into one
> per PHY driver instead of one module for all the QMP PHY drivers.
> 
> Leave the old config QCOM_QMP in place and make it into a menuconfig so
> that 'make olddefconfig' continues to work. Furthermore, set the default
> of the new Kconfig symbols to be QCOM_QMP so that the transition is
> smooth.
> 
> Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Cc: Johan Hovold <johan+linaro@kernel.org>
> Signed-off-by: Stephen Boyd <swboyd@chromium.org>
> ---
>   drivers/phy/qualcomm/Kconfig  | 50 ++++++++++++++++++++++++++++++++---
>   drivers/phy/qualcomm/Makefile | 12 ++++-----
>   2 files changed, 52 insertions(+), 10 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
