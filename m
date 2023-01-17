Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB8B4C63797
	for <linux-phy@archiver.kernel.org>; Tue, 17 Jan 2023 14:28:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eAy8E7QLZa9ywGPM3N/Vp7X5VLs9HWq7zOGsv3xqJKU=; b=AZZMCK5n8SaRnG
	2mcmPWl56dWTpXD/tJL4J0h5NsiaKhlRd2wuiecA4bN6jdZt0+aPhYcO2xdX8ymljA3IU1sSJ46n4
	9dpFhDk2Wx3B+qs2RJ+iXnb4iZwPMoDiWlRVonZF0eEmPFWcjfJoh/d6/IzDBcF0F83lcamMvUDBi
	GfuvLiea3plTqRQN40CM9UqdinMVSkPjUY2/Y1Ny2SFmQKHhble6AWWORrX317L8DQ8uhOhu0IMgK
	ljXYNY49heJscPBQcGMhm83YwLXf8I7gt4jmA/tAeZlYH1O0kpmqxDXYfvi8NhKwnLqh3Sm5yL1oZ
	hoLGq3NwvbD0A7a8Zqgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHmxN-00Ecel-7a; Tue, 17 Jan 2023 14:28:57 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHmxK-00EccZ-0y
	for linux-phy@lists.infradead.org; Tue, 17 Jan 2023 14:28:55 +0000
Received: by mail-ed1-x532.google.com with SMTP id s3so7139468edd.4
        for <linux-phy@lists.infradead.org>; Tue, 17 Jan 2023 06:28:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NaZ0IlVdh+q7MBEpI5jBa+K8Ee5vJI/lj2dgRFdnnfc=;
        b=TunKgBrKl0nB1l1mnTlj9qfcrW7V7u2hmKrKebfgF7hNWS5OAtUPFGLW6NE4aRMG61
         KgR6XPx76BJWkR/4/jxt6g1jNHayqp8cq6f3DZW6fpbsMuSKvQH4K6uLjaFGtAQQADbK
         Rn/JMzaSFZM4eGJ6yvQIkFy4IkZzGkyxTIjuLMVudMn5N6BS8rD7sKbbH+c8YpAC0lel
         hSxs7RUJ6yM+1TK/SUy/T9Flz5edcthPI/TsDvZKbb7Uipg7zJ4S2LaAaWns6zRDFZ1g
         ODA7NJLDAteg/y2gsw77M6T8yRqynFSIH+fSD7cdCifYADENymasX9n25ZqLkSJ8uwKb
         F4KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NaZ0IlVdh+q7MBEpI5jBa+K8Ee5vJI/lj2dgRFdnnfc=;
        b=0cjXKs20GkxjBct6HahD4AEanPe8iGhehs+0pbKXUhPQMfLJmp5YYS5XmBzWxgZ1yr
         KRRJhfdmUqfvxrIREP6zs4iE5WCosD9lZW2dhvjAkITXjWZNZ/jUWnZvy6h4/zlu3UGy
         Wfg81+At13IqSU19Zi3hjdNelDEc00qS7GIcY9cUOZh5IfUKZrWdrWyGWSSY0zx9kQls
         CJ2lroJsembYdPhPQupp1L2dMvBK8eu7JH+ARqtv3kwEl2CBUN57/wi6yB5PcN8bjfv3
         vpWud8L1S3otw57AWQn7jK/ItA1ewnIRx2x2JgjDLw8eccaUoVPNIxPPKTjP6ayrDF83
         hwgA==
X-Gm-Message-State: AFqh2kp7R6EgP1QDx4xCaTC4SDGOWuU0UQa0DwKwB7pfdFXxJMOMdr+j
	NMjU65b1NFOgXUWl9jDNOorq4g==
X-Google-Smtp-Source: AMrXdXsYfQvUo/LDJi+qTb01CAhI9LdxAJJZGKIxi9fU1dJzQV7GO0zUblV27hUr3bg/El7pIE+qeQ==
X-Received: by 2002:a05:6402:1944:b0:49c:1fe4:9f17 with SMTP id f4-20020a056402194400b0049c1fe49f17mr13597246edz.37.1673965730355;
        Tue, 17 Jan 2023 06:28:50 -0800 (PST)
Received: from ?IPV6:2001:14ba:a085:4d00::8a5? (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id gh9-20020a170906e08900b0086f4b8f9e42sm3384284ejb.65.2023.01.17.06.28.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Jan 2023 06:28:50 -0800 (PST)
Message-ID: <5d15d855-c239-7d4c-34eb-726577d53546@linaro.org>
Date: Tue, 17 Jan 2023 16:28:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v4 2/6] phy: qcom-qmp: qserdes-com: Add v6 register
 offsets
Content-Language: en-GB
To: Abel Vesa <abel.vesa@linaro.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, "vkoul@kernel.org"
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Johan Hovold <johan@kernel.org>
References: <20230117142015.509675-1-abel.vesa@linaro.org>
 <20230117142015.509675-3-abel.vesa@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20230117142015.509675-3-abel.vesa@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230117_062854_095492_4C2BA709 
X-CRM114-Status: GOOD (  10.16  )
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

On 17/01/2023 16:20, Abel Vesa wrote:
> The new SM8550 SoC bumps up the HW version of QMP phy to v6 for USB,
> UFS and PCIE g3x2. Add the new qserdes com offsets in a dedicated
> header file.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>   .../qualcomm/phy-qcom-qmp-qserdes-com-v6.h    | 82 +++++++++++++++++++
>   drivers/phy/qualcomm/phy-qcom-qmp.h           |  2 +
>   2 files changed, 84 insertions(+)
>   create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v6.h

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
