Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A2CDC004D4
	for <linux-phy@archiver.kernel.org>; Wed, 18 Jan 2023 04:21:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/UO1hu6AgqrcHY+/F3X7s6NyKbIE73XUlwAnXGJO2yI=; b=cLn5dTONR3cL6J
	WgFVN9Y2eVhNW0gxurKLFIhpZfNqm6oftk+f2Xw7LvWRnDNuiFLGDVqY2Bbx95ojaa+Tcdq2N+u0n
	C1cC/M3WEGrw9o+DeoIjdpAZE3uZqUoEX0St63TIw6XgJUT24GNAA47tfOKSxBhaxhJ5GibsODDt3
	YdR/cthZFwvhYh3ug/CF353iBxSIHaCR1kzKMsJlSUEJxOPjT9weh04WxsA6GL+bOH8LIhIiwIP+/
	sKKreDsUBrotNL6WfuOzlbLqCMNGjGMgHeCDLF+HSCXnzVu6wWwH9RGbDDCpS3yv8TXIYmjsOf/R2
	nRh4S5TohAAIRNCtVQog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHzwi-00GrYM-Tg; Wed, 18 Jan 2023 04:21:08 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHzwd-00GrX7-K5
	for linux-phy@lists.infradead.org; Wed, 18 Jan 2023 04:21:07 +0000
Received: by mail-ej1-x62d.google.com with SMTP id az20so61197135ejc.1
        for <linux-phy@lists.infradead.org>; Tue, 17 Jan 2023 20:21:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jwhBr3J/U9ThzXjXZ9tSi8GQCFjSMQIBnPwd5x/QKIY=;
        b=dRGTr0Fn6VsIQtfq3Zm7M/UGuulnXyZrc2SIJAE6aB88i70h1ipbkdrnC809e+oIyr
         Etqy6XSHwucZqNNpMGxrLJwJ8NcLHopf7Qd8DEFTLfkRt7eiEhulr59JF9pQs03xnB4m
         OqNZP1OlfH8WfKnJ+NwuBHIkkEV5Yt5XVr/lGLAKlE9HTjX61uV8pmTZbL2oWRkhegpd
         UKbM29Yv3pbTdlS7UiGagMvoSYgb7eHyUhL19hjA0RbHGw1m0U9fBPsHfsKZefw5N6ch
         R6y3ZRob5tjH46fyNNGLdGYgPXVOnLT9iE+m0MgqZTsR3/7Md2Vi6OAtW35EDkdkuGPh
         VRIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jwhBr3J/U9ThzXjXZ9tSi8GQCFjSMQIBnPwd5x/QKIY=;
        b=IVOeoGRr4teWbf2zFkaDOsYXhSH1EvLePMRWBiEFo8n399NOBoLXFHhcmoeONczOFw
         r9b0+EftopEhYIUj5jJl0zk/K1okFOLKG1NcIZgJ1bDMIVH4c9MkVThEa304LuClRAUl
         bi9ehIX+PwU2mkBIH7bFp7Krp90wNtb+NgGMx9s2B+X/VQajphQy288By5q/yDr9XwI4
         XJE1reNIVkqyY45F+lk530uPt8hoCUEZ/4mgy3tE0ocnTG94BEqPlyxmZFJrtXOTy/1E
         Vq9SZVv2Si4cx2rpuCxBxKQm9PZKlX5j62Qd3x6gGzjBElGcYJwzsnQvnsVLuJT0u5Gl
         Zp+Q==
X-Gm-Message-State: AFqh2krWgB96tgDc8x5jdAkoavzE4luuJjaLSxechzUsZlKbP8jqyqmV
	vS2Q6S6VgR3MckImD+O4+M0mmw==
X-Google-Smtp-Source: AMrXdXtItNegkORRqJZIHkpkuzpZh0JDRl4O6E0z8ldy71irGFZ4ANfUbJ69u9wyPRmrIQ3E9Ch/hA==
X-Received: by 2002:a17:906:4a85:b0:84d:2f09:661 with SMTP id x5-20020a1709064a8500b0084d2f090661mr5340273eju.1.1674015660594;
        Tue, 17 Jan 2023 20:21:00 -0800 (PST)
Received: from ?IPV6:2001:14ba:a085:4d00::8a5? (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id b17-20020a1709063cb100b0079e11b8e891sm13870975ejh.125.2023.01.17.20.20.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Jan 2023 20:21:00 -0800 (PST)
Message-ID: <f9930af9-93d7-c7e6-c0d2-543b81f77cad@linaro.org>
Date: Wed, 18 Jan 2023 06:20:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v3 2/8] phy: qcom-qmp: pcs: Add v6 register offsets
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
References: <20230118005328.2378792-1-abel.vesa@linaro.org>
 <20230118005328.2378792-3-abel.vesa@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20230118005328.2378792-3-abel.vesa@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230117_202103_723598_13D143D2 
X-CRM114-Status: UNSURE (   9.92  )
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

On 18/01/2023 02:53, Abel Vesa wrote:
> The new SM8550 SoC bumps up the HW version of QMP phy to v6 for USB,
> UFS and PCIE g3x2. Add the new PCS offsets in a dedicated header file.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h | 16 ++++++++++++++++
>   drivers/phy/qualcomm/phy-qcom-qmp.h        |  2 ++
>   2 files changed, 18 insertions(+)
>   create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
