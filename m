Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C549EC433FE
	for <linux-phy@archiver.kernel.org>; Wed, 19 Oct 2022 12:39:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zy43Xnp79I9MyrhYzs5FvX8fojhwBEbk+ZVizEeW4r0=; b=rlOwhrJaw8CiYh
	ir01BDqoG/EITJ2uP2rCUeWhOdees4C6HAW6/N+1ZoNC/pm17jD2ujqRtrEZsdXkBHsZR9IEFSPcs
	1ijqWxU0KatNCUrl7M70N9g/i/4eKR+h8qqEtvC6rTOjh97vTOWqiZlvMjEu2gXe3RxsBG79PlUHZ
	57H5hg5ys7o+ex1QCKQcul+krHI8Ft/7P5IwGGsTYTtzzDK2T5ntIBHSy1Wb7cRzgHXGl09AuaNLb
	2nkGWlXM3sUWNyRZqlonrjKLV9P5qvNOyrkRJWWZ3AdN0qcIm7kWAi6GdnJgxJDgVZ1mrdmX1fIsY
	l5CtE3/bnW9eLl6XnN6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ol8Lw-001Y8J-8S; Wed, 19 Oct 2022 12:39:20 +0000
Received: from mail-qv1-xf2c.google.com ([2607:f8b0:4864:20::f2c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ol8Lt-001Y6A-Ee
	for linux-phy@lists.infradead.org; Wed, 19 Oct 2022 12:39:18 +0000
Received: by mail-qv1-xf2c.google.com with SMTP id y10so11226623qvo.11
        for <linux-phy@lists.infradead.org>; Wed, 19 Oct 2022 05:39:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=l6HYyoIjnUvMwU0yHagIn4/18iAr7NA//UMNayfCA+Y=;
        b=dOvlTzjU6BuP1xy7GcxjujxEOKHwCReRbfOLizRueBfSY4FEnUFZnc3MJQBdxAonYR
         cFVPgQVYkTHgCCNXwvCeexr31HkXl9SQl7x9T+RPUCiaxG4tSM/1uequdCROWB2egGVa
         LQmlcU/YaL1ZgPxRckvGKI33MT6lTRwcQyJuVL3tAwN7qdwIaNZUH5Jnd0ytgV6ZEbIi
         uEuncEuR5nDSN6XWNGqB5FbAzAfD+aapeTrfyZxkCFoqakaA5beR1rNpNBLKCa50gZnU
         aJcxDzxDJJpSQ6eLxBLX8JAU4NGfAMKodKevmuEHWebdpwQzz7riEHaZnRPp1/ibRyUo
         4tYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=l6HYyoIjnUvMwU0yHagIn4/18iAr7NA//UMNayfCA+Y=;
        b=SPFEMEVcEIktzpmgE6wNSuztyMUiporIENNOJOr/CuqBxEMVhLT7UTuU5ZnoVuiRtF
         qwGqZzHYzKfyhbuUm5m5tFcTwJk7TgyBfwerWjedDdwFGhQIumrc8crS7dTWo/DAaE8n
         k1vT5slU/JjdRjFSacw5GOMpYZ5qz1zlXWrjh/LDFL4li2dZ0eogtQlHAIjXcmd+EeTf
         V5ijdxnCFj9y/5jRmG3GZO8/fTs1WFLgCDoLuiUmvx4OCnv/zg/B1qm26CnhEwps6eif
         5qKtJLzEo+I/RJeNapUbNdas6fsiorrg8LImsHmKKbOq2DHs/4PeGFWoAoObYUBgEXC9
         2onQ==
X-Gm-Message-State: ACrzQf2WZFmC6RlwX2BhDksPJTN/DsKpCPC0F09o2wVQv+zZr0Z//Slm
	lvzE6bLjBrIwPfBHW8BPaSKaNZsGNlWPHg==
X-Google-Smtp-Source: AMsMyM6sbGZb7PJUgIQ1RnhFxi87WWEJX86EP7sxBpspPM4u/LORyoNprWbrcZrCBb0JQauxsamnLg==
X-Received: by 2002:a05:6214:d4b:b0:4b1:80eb:64e2 with SMTP id 11-20020a0562140d4b00b004b180eb64e2mr6312320qvr.123.1666183154441;
        Wed, 19 Oct 2022 05:39:14 -0700 (PDT)
Received: from [192.168.10.124] (pool-72-83-177-149.washdc.east.verizon.net. [72.83.177.149])
        by smtp.gmail.com with ESMTPSA id s15-20020a05622a178f00b0035d432f5ba3sm4043604qtk.17.2022.10.19.05.39.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Oct 2022 05:39:13 -0700 (PDT)
Message-ID: <c6cc4363-2004-a3e8-97cb-d6eb2b8c8704@linaro.org>
Date: Wed, 19 Oct 2022 08:39:12 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH v2 09/15] dt-bindings: phy: qcom,qmp-pcie: rename current
 bindings
Content-Language: en-US
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221019113552.22353-1-johan+linaro@kernel.org>
 <20221019113552.22353-10-johan+linaro@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221019113552.22353-10-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221019_053917_528892_64383E67 
X-CRM114-Status: GOOD (  16.10  )
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

On 19/10/2022 07:35, Johan Hovold wrote:
> The current QMP PCIe PHY bindings are based on the original MSM8996
> binding which provided multiple PHYs per IP block and these in turn were
> described by child nodes.
> 
> Later QMP PCIe PHY blocks only provide a single PHY and the remnant
> child node does not really reflect the hardware.
> 
> The original MSM8996 binding also ended up describing the individual
> register blocks as belonging to either the wrapper node or the PHY child
> nodes.
> 
> This is an unnecessary level of detail which has lead to problems when
> later IP blocks using different register layouts have been forced to fit
> the original mould rather than updating the binding. The bindings are
> arguable also incomplete as they only the describe register blocks used
> by the current Linux drivers (e.g. does not include the per lane PCS
> registers).
> 
> In preparation for adding new bindings for SC8280XP which further
> bindings can be based on, rename the current schema file after IPQ8074,
> which was the first SoC added to the bindings after MSM8996 (which has
> already been split out), and add a reference to the SC8280XP bindings.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>  ...om,qmp-pcie-phy.yaml => qcom,ipq8074-qmp-pcie-phy.yaml} | 7 +++++--


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
