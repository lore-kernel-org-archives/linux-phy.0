Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C06C1C4332F
	for <linux-phy@archiver.kernel.org>; Tue, 20 Dec 2022 10:40:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AWpluJU/nn20eob0upIKhBqfIeXk12mVIH1STtcugog=; b=YNGkQcOrmcY4Ek
	HrG/PdJORYIjyqUiMdU+O07KWdvOLMdgfQfWMWBvu9fugSewUN2LgFN/+u1Y2khJDeh2o1hccZafi
	y5EiH3z+FV+TSyABvx+xrus6+WtdEbeQ9oXzQqlnQt62vVM7jTRidgAt+9oDHM8mSyhohYV3NOauf
	Rt9d5ynjlEQ2aAezhsEr+mymbcgNpAq6TjXf1c7ryeSqPjkZFEQPJ9MWB6QL4s656g3L6pYJdR782
	4f9suJyay8QtbczVHl7enHc42pvrYvDeLUbdGGacRvFMz2SX4g8pExIKDvd3S18yOACIZtKajS0lm
	IBENFnAgtxFuJP1j6smg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7a2i-00DNru-E0; Tue, 20 Dec 2022 10:40:16 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7a24-00DNXZ-89
	for linux-phy@lists.infradead.org; Tue, 20 Dec 2022 10:40:12 +0000
Received: by mail-lj1-x231.google.com with SMTP id g14so11971042ljh.10
        for <linux-phy@lists.infradead.org>; Tue, 20 Dec 2022 02:39:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5xL1Bysm8EdLY3X347DVoCCUWGezEo4u07eX/6KRS+0=;
        b=r0j7NBbCigCqOvX0i3nuzeMOFHbu4cQgsSB4nJ1CdFN9Op5debTrXa93Uj5OCMbcrF
         d4RqAh58M1fHBrndOl0Ku8LUjC7h6Y2j/K5/V3tdECkz0EvfQMUhodZhK+iqQ6NmUYtt
         FliRlNnTkWb+0MfLDluGWWpeg3ZGjfjMJ0wsVMlLHuqDHkZ003Vf+2Rz4gXCv5TTcZbd
         0+/oORDaNWSx1vAyCyksSoIHdZUh4KWjVe8XuxvzxHPbPMHkWbClPIjMkipwvMuMbs/4
         ysGb878pdOuQyWsDqWRylFeLBVfVmHfaPrp0L+Y4nb8h/1unmJ6MItOrTIaowEeePPbs
         w3cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5xL1Bysm8EdLY3X347DVoCCUWGezEo4u07eX/6KRS+0=;
        b=0hUuqcup61V/VOmkfG5IEoU6bovKei1TOc8iFSJRiY5WBRr5dc48zSMPftTFjGdKMV
         6XcIv9oah04NPoSCHF4QfB03Cgrp8ihfq6BmNLdkvd0ngUMgFk6V+BJR7SwuK2nMQTXI
         UFso5rCZQt4Gm6wzuKz6hT5lKAV7XIAFoMfQncslwVApE7ohqOSvMhmji9Y0+JR7U+Wq
         ItiOtnSK453ucdPO3qPGtsYt/86D8dLQF4uKI1KLdQc6OHkvMJ3uHebKssTX6Eeb+1No
         MbA2yR9CCjV36x/eEZKJolYmYUYRxPe/8D8iHN0RoM92lGwAFq5/0K11jfwKluuzqCMO
         MGEA==
X-Gm-Message-State: AFqh2krW9QPo0hqIKmIeLPlyAWtvPq3f3hMaaRKDJ+2CEBOQnDWthvaF
	CyznRL91+Tv5BMc9zf5O3NJ2/A==
X-Google-Smtp-Source: AMrXdXsCGgnZNUm23ctiLSG/KLowQsfg2pLh0sWGz0XMMOZAfjTYl4yj+PHQSVLg1GBAZlRLv+lHeQ==
X-Received: by 2002:a2e:be1b:0:b0:27f:8546:80bd with SMTP id z27-20020a2ebe1b000000b0027f854680bdmr3251448ljq.26.1671532774407;
        Tue, 20 Dec 2022 02:39:34 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id t5-20020a2e8e65000000b002770fb5722fsm969782ljk.123.2022.12.20.02.39.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Dec 2022 02:39:34 -0800 (PST)
Message-ID: <434e45f3-96f9-b93b-1967-d30df11ae32e@linaro.org>
Date: Tue, 20 Dec 2022 11:39:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH 3/3] arm64: dts: qcom: qcs404: register PCIe PHY as a
 clock provider
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org
References: <20221216234027.539917-1-dmitry.baryshkov@linaro.org>
 <20221216234027.539917-3-dmitry.baryshkov@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221216234027.539917-3-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221220_023936_440739_DA059145 
X-CRM114-Status: UNSURE (   8.72  )
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

On 17/12/2022 00:40, Dmitry Baryshkov wrote:
> Add #clock-cells to the pcie_phy node. It provides a PCIe PIPE clock.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/qcs404.dtsi | 1 +
>  1 file changed, 1 insertion(+)

Something to fix:

Applying: arm64: dts: qcom: qcs404: register PCIe PHY as a clock provider
git/rebase-apply/patch:100: new blank line at EOF.
+
warning: 1 line adds whitespace errors.


Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
