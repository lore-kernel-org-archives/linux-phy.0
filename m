Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1FAB0C433F5
	for <linux-phy@archiver.kernel.org>; Tue, 11 Oct 2022 13:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mZjt+pbjqwX86kvgnYn7CDoQczoZAJp8hdZg9y10Hzs=; b=pqyfCc2nPFAvDS
	wDA2kYlOI/nMPhZSTKIZRgGY15ECnoLXA4HBT2AnKYiYeW8xm6eotc88vvhOXrwSWZgTvI1yi4BNX
	s65PT59ygVnkDWdPCrZATRNM+KSUloyyVs/Pem7CxOJbxOLQXOHZnTVF/cIt2qvEFnQnuFMFTUK/V
	twLCo/MA9b4FBmw/EEAlwWYOxJ/YJJD5uBMFxLqc64CjqcZmA5TXgZ2SIHCLX/8TRqqVgC8idjHw+
	rVu1tFeMr0ohDPGs7n21gXuhjAN3eUfhD81CINW77biu3bI7hfmhU/A4etMMnTQ9UFPfWyhGN2lh0
	TzL2Ws5zjVy4KGFyKcJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiFgx-004Oas-J9; Tue, 11 Oct 2022 13:53:07 +0000
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiFgu-004Oa6-UD
	for linux-phy@lists.infradead.org; Tue, 11 Oct 2022 13:53:06 +0000
Received: by mail-lj1-x22a.google.com with SMTP id by36so16917615ljb.4
        for <linux-phy@lists.infradead.org>; Tue, 11 Oct 2022 06:53:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IeJIpnHuqT129UsEC084ejKumQorqInuIo3PdB1cQ4E=;
        b=B38SpvG+vI3qG1WbA7n5ojiI0t6BHplUC279lwIK7JbCAJXHr90JGCMM12jnkvciX8
         AUiqM4oagksi8REQLU2xFGIqTLwFQsKbpn3kyOY8SluxCoxO07zE3Oi9yYmLO5E1FeSM
         Tk7pqA5LXil3jSvvAo3lLmgGvb51hV2uLlfdVZ3Wj3acRmOY/kGfWaVvYuEWHwiUB88U
         tm4ontIhf4HJa4uJr8RJz3QGomBz+tuDZ3kwtKAQsodOYqdo+0oyVS6fCsuICumYJeDA
         HZfrTzqprOo7LhAjUibOJUyGuGNnpZsKYc9MwzcrZynMYb91ZFSbHIwvmq0Vz1ClHVEH
         voRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IeJIpnHuqT129UsEC084ejKumQorqInuIo3PdB1cQ4E=;
        b=lDM097WyJTJvkBdlf1Ou2lsN62PVEYxUbutQ/M+tl61VUa/8RCwCqvrsn1Vejw5Kx+
         2Au1k+DxePpckpSwiTHlWSHm1kO2fwHAaM9micmrwjfra1EcjAYp+QX3GWwNjb6i/P/Q
         l9zG4EvSBL8hpIEFj7UqsLAwk8ugN/SLclJoxqWRhdVU8UUdlHdASbBZmhmsNQ9HnPVa
         cuf4MsrAhaKWZmCzdJW9aZiPgrl4EPtPmpqeBHcS7epklK4zRQEe658MCqmI5dD72bMY
         zwgfKFPE3QY+uIvedMRERpVeZRoxK6HXoCpGFwMZdIJEMbm/V4jpZPNERcP2kYMXQBRo
         gU7g==
X-Gm-Message-State: ACrzQf1iTMEh1EB/aFLN1xeKLQv1It7Ld0//yRObNh18gJXl2h2UyGsw
	aa+D0/ZWWxzQUR5zT+UYYWDbv2++qFrKdg==
X-Google-Smtp-Source: AMsMyM5f6WKeMMlHSrgriFzb4+2IqOFR3ZYlw6vcLtjqjUlMBxCxmPKIRPTWctbJPR0q4E39MUAakg==
X-Received: by 2002:a2e:a889:0:b0:25e:3d55:b092 with SMTP id m9-20020a2ea889000000b0025e3d55b092mr9315557ljq.402.1665496381822;
        Tue, 11 Oct 2022 06:53:01 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id e18-20020a195012000000b004a25bb4494fsm1873583lfb.178.2022.10.11.06.53.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Oct 2022 06:53:01 -0700 (PDT)
Message-ID: <b5112119-d04c-7fba-0a06-74de058bf3ed@linaro.org>
Date: Tue, 11 Oct 2022 16:53:00 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: [PATCH 05/13] phy: qcom-qmp-pcie-msm8996: drop unused in-layout
 configuration
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221011131416.2478-1-johan+linaro@kernel.org>
 <20221011131416.2478-6-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221011131416.2478-6-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221011_065304_995551_A00D30AA 
X-CRM114-Status: UNSURE (   8.81  )
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

On 11/10/2022 16:14, Johan Hovold wrote:
> The MSM8996 QMP PCIe PHY driver no longer uses the "in-layout"
> configuration macro to configure registers that are typically accessed
> using "regs_layout" arrays (e.g. QPHY_START_CTRL) so drop this unused
> feature.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   .../phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c  | 34 ++++---------------
>   1 file changed, 6 insertions(+), 28 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
