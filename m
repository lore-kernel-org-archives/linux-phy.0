Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AEE74C54EBD
	for <linux-phy@archiver.kernel.org>; Sun,  8 Jan 2023 18:12:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9q7NvT4GKNprUSHljJivgFQAqCGvny9UvncoYolLL+U=; b=4+JdbK2YwxdNka
	7Cq2q2YRHxa8ehU1/53QM+scmabEL6ynl9rxCGSPNEOLoGHJzb+THsYFErLJkyXoP5j7U5Jy7z4YD
	iH9uaLoC79k2sa7r4gR7UChLqi4FvAwZCioHkEMuUNSPtBsU8FGvBtd2t8u0udxSIaBZMJbloBKjx
	DQ3m6+7aBPOS2La/DYq4MmnWnY1dzE4NlXFUDSIoXl25k6P7AUnRSgYo1HHOvrjpbAvdD6+mMCw5I
	vCm7P92Pz7zcYQi5GaoPLA9vczutESeRbG4wU4QEihJKyC2KsmoPAbvP8XxCiRGz/CrHF6HA3EEsp
	dGlb5H9j+d8zfsSZBY/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEaAB-00F03m-4V; Sun, 08 Jan 2023 18:12:55 +0000
Received: from mail-il1-f175.google.com ([209.85.166.175])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEaA9-00Ezuw-5N
	for linux-phy@lists.infradead.org; Sun, 08 Jan 2023 18:12:54 +0000
Received: by mail-il1-f175.google.com with SMTP id u8so3817465ilq.13
        for <linux-phy@lists.infradead.org>; Sun, 08 Jan 2023 10:12:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=39Cf33NF2XNY12BKiXzVChtAPguuQUdKSv5dHZKLHLA=;
        b=REHfsP3UKp1sBPJb3mzp757SP20YTvjwSVmDhyhhmEHUWhvS4UB1g7f4AWY+oxALna
         rkMb5FfJXcWTV3mmXlbmgBu67U5eiEGvFuYaf/7Ak7Y/qf4qxU0UyvLbedt0MTmyy4En
         FWTaUh5f21UkYkM3BUUpnUi3e57FJRv9PsQBZjdgUr4DIfIC+sFB2eJKI/pqBgdG9Gg/
         c8FgrRhB0ybXELwhmp+rV/tkFA+sVialjkygvagwcpphn6G6P02H/ahr/RbSWp4xXePB
         tTrV4DzFzHx6TZ1AkjBvCbJkmVUKjlGXLayFjs0GaogpypRMUa3cfZl/h/oQg01n2LRs
         kNgQ==
X-Gm-Message-State: AFqh2krfr7MhuQgB+mvNcrTCmGxTTTUX32xSLRsploKa7NYc4k3WW1/h
	cCG20o1m6jI9EuLPwOmRrg==
X-Google-Smtp-Source: AMrXdXsZAaxkb8liK9Eg0Agrzx+atp3rsTQ0A3RfwyhbgDjsL/zbZk+48rzHpF3zbcavFStPOlPcvg==
X-Received: by 2002:a92:d382:0:b0:30b:c7fa:7492 with SMTP id o2-20020a92d382000000b0030bc7fa7492mr42504098ilo.12.1673201569672;
        Sun, 08 Jan 2023 10:12:49 -0800 (PST)
Received: from robh_at_kernel.org ([2605:ef80:8069:516a:f2b0:691e:4315:7c0f])
        by smtp.gmail.com with ESMTPSA id v8-20020a927a08000000b0030005ae9241sm2089906ilc.43.2023.01.08.10.12.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Jan 2023 10:12:49 -0800 (PST)
Received: (nullmailer pid 157023 invoked by uid 1000);
	Sun, 08 Jan 2023 18:12:46 -0000
Date: Sun, 8 Jan 2023 12:12:46 -0600
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>, devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org, Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, linux-phy@lists.infradead.org, Kishon Vijay Abraham I <kishon@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Vinod Koul <vkoul@kernel.org>, Bjorn Andersson <andersson@kernel.org>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] dt-bindings: phy: qcom,sc7180-qmp-usb3-dp-phy:
 correct clocks per variants
Message-ID: <167320156602.156895.4809121171592550942.robh@kernel.org>
References: <20221225115944.55425-1-krzysztof.kozlowski@linaro.org>
 <20221225115944.55425-2-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221225115944.55425-2-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230108_101253_219877_DF110643 
X-CRM114-Status: UNSURE (   8.50  )
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


On Sun, 25 Dec 2022 12:59:44 +0100, Krzysztof Kozlowski wrote:
> Different variants of Qualcomm USB3 DP PHY take different clocks
> (according to upstream DTS and Linux driver):
> 
>   sc7280-herobrine-crd.dtb: phy-wrapper@88e9000: clocks: [[43, 151], [39, 0], [43, 153]] is too short
>   sc7280-herobrine-crd.dtb: phy-wrapper@88e9000: clock-names:1: 'cfg_ahb' was expected
>   ...
>   sm8250-hdk.dtb: phy@88e9000: clocks: [[46, 185], [44, 0], [46, 187]] is too short
>   sm8250-hdk.dtb: phy@88e9000: clock-names:1: 'cfg_ahb' was expected
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  .../phy/qcom,sc7180-qmp-usb3-dp-phy.yaml      | 72 ++++++++++++++++---
>  1 file changed, 62 insertions(+), 10 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
