Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EFE9ACCA47B
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 10:10:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1FDSg4/Yv8KTj42sublDjzIPXqfReUZShhWTs8YVlgo=; b=KSPtFGdZrsPvLw
	v287xtEIbUvyLL2SGxt+plHlTlhMfSssARNCvVzniixVJ8fsgaf2RfyDXVk6MS3S+kFwtEgvy19wP
	8/zNYUatD5YgBITflfxIET0VmOAXITOqhYwubA0MZ7n8CSe13U1GfsN/V6gqgx/D/0qH5hCenAeFf
	MQ1aMUneM6HiLKtGaMWhfaz7VF4QPGuQexCbkJR2zzYavKlo5eihj6u/gxOf5xvXp0XoeHrzE++Z1
	qOTrsHr47WNFZO0hwAAhbEI6/vzJ6IM2/7BK+G5b+tYYSNVFVoBP3DzE+Pzjuq9Av1d0+cOf6i9PR
	359jb4VqJ4b1+dZENLOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fWE-00H5cc-AJ; Tue, 05 Jul 2022 10:10:58 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fWB-00H5aH-Lu
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 10:10:56 +0000
Received: by mail-lf1-x12c.google.com with SMTP id e12so19713079lfr.6
        for <linux-phy@lists.infradead.org>; Tue, 05 Jul 2022 03:10:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=Ol86STMqgAKp+0F1Lxowaa3JS8aP5AgYqpMap6ZZFtM=;
        b=zzu5W00IQ5hUD8rl4I7b8Vaa5O9BXFsj1UWT9yxwlP64l+XldCO7gk1cnHrtK7OsQN
         /KZrGkRVUFbjiV1GUyGTtDzl2K8j5rVIZtrH1CH1yMVxnzFe39Uk0Kxw+zy3fK6vkt3s
         uuYc9ZiYeUqK1NYudDbNA0bmwlny1aKFnTb+Ddy3EJ1Ht+CAzrpsZ9in+sub6hd8Cwys
         zpr777mvOpIFIL5N7/UsOOzBtqEEXl4y/RXmvGRs+Ne2foZn/pMLWzy4Ml6VzEtFgw3f
         zql/vH6hR7weGmzGR6nv4cspFgaQLk493vo0SmIfMbn7bzPpy+sCM1bDynZmqhIXsycT
         vmdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Ol86STMqgAKp+0F1Lxowaa3JS8aP5AgYqpMap6ZZFtM=;
        b=7wMVKYip8e1K+Z2LL4jeUJ5+6L4/zC7HPggzmnDAsOvT7JRnnHmOOWimbhmcAsU9jp
         jbL/PUIUgREVlFZMQFckzYxi46I/bsCkJhz+4Sfz5tROu9PRdQFxgCeHnR2cCDoQtnGh
         38HaiXuD7E6h2ywQneEfgw6EUUkZKOn8gl7VJ7DW4YNdzmoWxfTKm5yq00KH0No8Pe1w
         HFvLRgDxDxeQmr+IV7vnCGIqoB+xKsSlttMyQ4ksSPTSmpCHvpN0WxsQMbsdjaFWNno4
         MeqG6CaXQfBX/zU+BshHfDUOZpCe3JFbQUosY3byCOcaXM9vgzYxg6aQgLO+NOWNwsO7
         uFbw==
X-Gm-Message-State: AJIora8tR5xnyBJ+rVMQ5FZn5q4HEiITsIS/YwFDe40xxYUpyANSGw2i
	apvkqm0NTSHyhNGRUEv8hL5q+Q==
X-Google-Smtp-Source: AGRyM1suh63veqOs9l5dpz5zDtMw1oH5sjt9T9R/ZkuzMhoMEQP61ZP6vHfmU/bcEB5jnEX6RmA6nQ==
X-Received: by 2002:a05:6512:2154:b0:484:b0b7:d319 with SMTP id s20-20020a056512215400b00484b0b7d319mr131270lfr.12.1657015853849;
        Tue, 05 Jul 2022 03:10:53 -0700 (PDT)
Received: from [192.168.1.52] ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id t26-20020a05651c205a00b0025583eb9becsm5271605ljo.69.2022.07.05.03.10.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jul 2022 03:10:53 -0700 (PDT)
Message-ID: <bd294bfa-e7d8-0e4a-4108-705fc1ebcb77@linaro.org>
Date: Tue, 5 Jul 2022 12:10:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 10/43] dt-bindings: phy: qcom,msm8996-qmp-pcie: deprecate
 PIPE clock names
Content-Language: en-US
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20220705094239.17174-1-johan+linaro@kernel.org>
 <20220705094239.17174-11-johan+linaro@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220705094239.17174-11-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_031055_768863_A3E83BA4 
X-CRM114-Status: UNSURE (   6.43  )
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

On 05/07/2022 11:42, Johan Hovold wrote:
> Drop the unnecessary "lane" suffix from the PHY PIPE clock names and
> mark the old names as deprecated.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
