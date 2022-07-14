Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84382C43334
	for <linux-phy@archiver.kernel.org>; Thu, 14 Jul 2022 09:23:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qdyG7nlCGRQLSgRm8XsTEvM8BwAeMDIO+/V5Z21Lamk=; b=1QB0RWpXskEmMl
	CWvY8sE5IZ2r2JeaY9Vwcc4YA+BYS4hWxFrLlbbkTsvSGz7LykiKr15SaDi0TnKjBxihYtxqp7wHr
	o5AGqvVSoxp2saPF6SDrGuRfw90eSdgt/VOtW16BPW7UHqXnPTqpP17+EvZJqQ1+3UcBj5sFKZ1rv
	IQ3G+QmKUl8QZrc4XakJsQnm4PREMllU76z4yQOHK0kccVBbeC4uW/gVc16LQQFpaQZFYczfgRrvG
	8xtrj1cLWItH5zuXPjTM3xHXJFzwd3NMD9OoEZvP8v30lJBu6RNb7LQIqomujiHSqmJYAI6Vfq5sM
	ve95dtPYinKyvfYlI0Ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBv47-00Cn7O-Rw; Thu, 14 Jul 2022 09:23:23 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBv44-00Cn4M-VE
	for linux-phy@lists.infradead.org; Thu, 14 Jul 2022 09:23:22 +0000
Received: by mail-lf1-x136.google.com with SMTP id e28so1822832lfj.4
        for <linux-phy@lists.infradead.org>; Thu, 14 Jul 2022 02:23:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=AUwzY3hlYC7IOrVrAzCvOOC6OujctZysyq2jJzvcuUk=;
        b=C5Z3mdOYRDTVVvsiHqfZ6rD/xDQOx8TUR3cPZucQxhSZnK2fM4K0NTcMUF5We4VT64
         jR0L8Nh2NeYY2wLqJN1o33HDpDycP5hTQIWe0W5ba5WpUbpGVUwJoiqtD9SKcWwGXqWA
         UEsg4YUjO0fdlxky83xAnfZiKZeNEbf2GD3b9rS1NEP/vp7vioX6RdP4qQjS+aXySML8
         VyNW5oEHzL72rfHm7/k30o0nA1VnjMnrv1WsLq2PytqbeKOms+Bd63A9VLNwHPAg1AWV
         y0skf/9cdfqujdt7o0offypS3yqXkpaFmWOy2CFuptYFWYCInIljlSqocmmsQNoBdN8E
         gs8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=AUwzY3hlYC7IOrVrAzCvOOC6OujctZysyq2jJzvcuUk=;
        b=4N7iepi66gzhKwoc4niKPqTZqeU0WytWbUu4t+S7gIZlWLezbg845/yodF+q+Oy69O
         Pp2FiU26/T3XqY83FZBp43pD8pGhMUJua8sG+SchMkm/JkH4L4KDDcIxeBe1Uevv1nZc
         qCx3BxjImgGNiZmbnYOqWx//TUSoZy5ZSQ45E4hOqIBH/OOzyNunFVRr66J/5aOV2xKC
         7xjdXtvmwtKINP9LpAAwZZ0cMUm7gNdXgx2Uf6dvZYrFcGktfsOCo6VxJh3LYj5thOAa
         P4/61icQnZKS+/kdxG9E37IYfKjsUAqyexb1DgG1wNMs6srd6/e4lJTPyQFMZgOU252O
         w2Dg==
X-Gm-Message-State: AJIora9F8gtveDqW74pDk8nY3aSxOSLtWxn0tWNz6nM+oi5uIjvQ+o+s
	i/bPdZnxY5tAmuLS+X/2Ms3MIQ==
X-Google-Smtp-Source: AGRyM1vCFK8vQKfo8J+7uenDaDUFR82xnL9XfQLmxELjFt7++4DyEnRhG2U5pQj2yI9xMp+OlPlZaw==
X-Received: by 2002:a05:6512:324a:b0:486:a915:7b70 with SMTP id c10-20020a056512324a00b00486a9157b70mr4276112lfr.265.1657790599364;
        Thu, 14 Jul 2022 02:23:19 -0700 (PDT)
Received: from [10.0.0.8] (fwa5da9-171.bb.online.no. [88.93.169.171])
        by smtp.gmail.com with ESMTPSA id f8-20020a05651c160800b0025d5a4f53dasm175508ljq.65.2022.07.14.02.23.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jul 2022 02:23:18 -0700 (PDT)
Message-ID: <ff111f4c-3820-8f08-ed5a-606d4a9a9257@linaro.org>
Date: Thu, 14 Jul 2022 11:23:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2 18/30] dt-bindings: phy: qcom,qmp-ufs: add missing
 child node schema
Content-Language: en-US
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson
 <bjorn.andersson@linaro.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220707134725.3512-1-johan+linaro@kernel.org>
 <20220707134725.3512-19-johan+linaro@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220707134725.3512-19-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_022321_052388_FF37C450 
X-CRM114-Status: UNSURE (   7.31  )
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

On 07/07/2022 15:47, Johan Hovold wrote:
> Add the missing the description of the PHY-provider child node which was
> ignored when converting to DT schema.
> 
> Fixes: ccf51c1cedfd ("dt-bindings: phy: qcom,qmp: Convert QMP PHY bindings to yaml")
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
