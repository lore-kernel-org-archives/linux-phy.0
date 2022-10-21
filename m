Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0764FC433FE
	for <linux-phy@archiver.kernel.org>; Fri, 21 Oct 2022 11:15:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6fSU8YTI8RFz3WwU5a+xSFOnuk1TqUklnEipnoAbCF8=; b=Dd++vy2KLcQg4F
	zaSYazt06ufP2wd1NLf6h/Ivhp8/fST+bodT35kVykDRjPGE58siNlZKyrBpx8UdeEPmqe7l/SHWw
	RhzeJnJrssdrabRdus8nA2goRT40JJHsenmF8VFfuRfpo5tO1v/1nnZ0239nmHnEGYdHQBLVHdHLT
	mooej3WaMkwSkvKulYKgFyHcH5V7IJNTLmSC0vFcHhHVZCWBnEHfENY5sd3LvQNh8qBwWigzN+vDg
	VmJLmKlz6bfp5bFD1hPJOeBq6j5MAsbLNbF0+N9Z/nLGUD0FrderGph4rioQkPuqxzyen9EC520/8
	iJCzBB1sV/tQwuCXtciQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olq07-007K0E-94; Fri, 21 Oct 2022 11:15:43 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olq05-007Jz7-91
	for linux-phy@lists.infradead.org; Fri, 21 Oct 2022 11:15:42 +0000
Received: by mail-lf1-x136.google.com with SMTP id j4so4634366lfk.0
        for <linux-phy@lists.infradead.org>; Fri, 21 Oct 2022 04:15:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PGR+GHvgRaXGJ8GYA/JSnsVO1HGR1HQ8rDlPdx2J0GE=;
        b=Z3o0lJQTWWf+sLuoqLF4dPCeL0HiQ1XgqGi3YTWdIoci3Pu5NCfL1G5IlOHFzViv/n
         9Q9ScniGL5TvZErLYHSOV1KIs1/JrcBJBFVe3DSQDCyi8Lh/dmfrv/eXf+9sPKCN9Xm2
         KSDszK4S46rhE/N0hEaJoN6+UIR74iqcMQ9nPyqlfBGA2lkgUD1eYg2oPPsw2QEKi5So
         xqu6DGpxjwWmG6wAqCCNPDN/i1lcWZAsPMlroDtA+4/QjTj2Azxb7JBMkwbeWwYodg/w
         UjYMmCfI9fA0DncXPSUP/ZpffTg3XkW0YQr2MdqbsYBu2XXKr5o4yAhgiKEYKcxGO0m4
         T29Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PGR+GHvgRaXGJ8GYA/JSnsVO1HGR1HQ8rDlPdx2J0GE=;
        b=vJBUzezwDeTwVDmTldapUC3O/Okopuv71qJt3489IqtSSJfTEyo0Juxz2VH+gRvWVc
         FYSoVnoC3ujEDXDAQZGHWGO7Zya/MBb2au2iSfDROvFleA6o7DZR5WD+bh1ZaqnrO58c
         S33WhQwhPUPSGi3kgwLReRlqHDkQVPTIAu+MvIbDK5ViBc7Zkcp8x1t60PIfqLtVTKEc
         GcU2Dft1bgF/X4uX4kD4B7YhSZS/IpcC3XdX1/z6VHgwqZPGtm2bDd6BqrxuDzorp08s
         I6alzNIhwT46qkyEksV05NjqT2d9+4ncFTzZGDgBfYpnCmA9G/RfqoTPUYsveAqRiQ4w
         fRPA==
X-Gm-Message-State: ACrzQf1t8M1qMp/OJBk8dricuu5bxBDc4xc5kddW2Mgp73Y/IRIcGg+l
	Sy9iUdtf1j0W0M0FT0by5oNCTA==
X-Google-Smtp-Source: AMsMyM4c/eGqlpbOOHaW2mpXrdmycPI1J44m2HICJwRMS6hlVOFS7eNhqKrKuU11PFtWZaDto+hN7g==
X-Received: by 2002:a05:6512:224d:b0:4a2:7710:9b8b with SMTP id i13-20020a056512224d00b004a277109b8bmr6201264lfu.128.1666350936509;
        Fri, 21 Oct 2022 04:15:36 -0700 (PDT)
Received: from [10.27.10.248] ([195.165.23.90])
        by smtp.gmail.com with ESMTPSA id q11-20020a19430b000000b0049ad2619becsm3119222lfa.131.2022.10.21.04.15.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Oct 2022 04:15:36 -0700 (PDT)
Message-ID: <8b0389f2-66ba-b707-a026-0b7e06d9bfb4@linaro.org>
Date: Fri, 21 Oct 2022 14:15:35 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH v3 13/15] phy: qcom-qmp-pcie: add support for pipediv2
 clock
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221021110947.28103-1-johan+linaro@kernel.org>
 <20221021110947.28103-14-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221021110947.28103-14-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221021_041541_344742_E84131D5 
X-CRM114-Status: GOOD (  10.11  )
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

On 21/10/2022 14:09, Johan Hovold wrote:
> Some QMP PHYs have a second fixed-divider pipe clock that needs to be
> enabled along with the pipe clock.
> 
> Add support for an optional "pipediv2" clock.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 25 ++++++++++++++----------
>   1 file changed, 15 insertions(+), 10 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
