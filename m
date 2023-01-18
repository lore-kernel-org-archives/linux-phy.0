Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B15AC004D4
	for <linux-phy@archiver.kernel.org>; Wed, 18 Jan 2023 04:25:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ijtZ6YpgcLhGlJeCIjvvSfFi4CINQYUpTVPUR9mLn5g=; b=xIqcvoipt/eNDt
	lLWqiqzRHwYHDZ+L5CocmwQCxSLLTNInNP1N0VCGbWViRTAYD+jRcn63QJyPxIoScAUMRt+bMgDdG
	ITX2YNNFPTbQf7kDRmq3EiCaRDfsWCMBUpk/sya3k2o0ZaFFTQtaVxM759yquufmAz2z/nJS6gvxL
	HzUjp0uc0f56MxrLIVMI3X9vck6eWPGREJSAKrR24stIrTYSaPJHmCvceMDnfy40EBU6ZAieqw8BH
	bYuWOkXtQ0lZdh2Q7VQf8oW3u4ElmsXLuFgMSFTJxf7P2Ap/4cADvKOMc72HIgcwTjFeir761roqI
	f2Fz+7tKTwx1ppIIb0pg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pI01A-00Grtq-DY; Wed, 18 Jan 2023 04:25:44 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pI018-00Grt7-G3
	for linux-phy@lists.infradead.org; Wed, 18 Jan 2023 04:25:43 +0000
Received: by mail-ej1-x635.google.com with SMTP id az20so61212039ejc.1
        for <linux-phy@lists.infradead.org>; Tue, 17 Jan 2023 20:25:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BGF78K5uxVMcxASRhj9Vo8p8NdJwhzA0eYIuGJGWWLo=;
        b=An6OOmkyPzsKv0oVvpXgPHyn6ro3yRu1a7w/+aP1Np1IVgQMoVWrQBSm0tfkyz/8rP
         fNZxGNcyFUNLXu16dw4UmwldkRfedwRr5dVg1AZ2gOVuwTW4yl0VOVcTxGiOO4JkFAl3
         vGrRD2uws4mOcq1nbF6xFSrM951ioK29FC9/Jvx0nkH/JZDbvQvWMWrp88zS80VyOe0Q
         bJ61fPYfbHjIJKcYCfOcfAO5j5Q/5pp+9b9es/Q9GAEI73JgJa1JWZOo8fcDI29JgMiN
         QlRdqkWyrqi7eXGO1qScLz0+V9ZvG+VWgg2aVic8TKCbjQKcqaXwTJk+5amXDmXSywO2
         l1mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BGF78K5uxVMcxASRhj9Vo8p8NdJwhzA0eYIuGJGWWLo=;
        b=8EOkWV+LviPP9PgynfKyI/IUzg5Z29VaKkfUm7zU6EHwCmVFsj6p4fXLe0qm6PBzvB
         SjJ4gG/2K0NJv77nibquaDdctjXfhFQMQTjivh3ksgMXExGHyjh/cUn+nf4dTmHQkcfq
         PBGwqAXyTgjFxhQHTg1LeIOwyjV/I9w7hQCxLGOiqGGkVbkGaFD6qsVXEfSXoVPO1Mnb
         deTZntcJ5PqswElBf5cC5EIipA4O1VjpraRA9I6/pHcllizCj2ohXetzBMiGHrpcKRXd
         e22woLM1DghrK9t6fAoQ1SA1izZvCDBYntuycK8vc83+MJuKsEMcxyEi7zE3sEDLGaWY
         qiJA==
X-Gm-Message-State: AFqh2koAS7RpKC3Sg1kz2eBX9+Mf2SgP5LCqaG9bRqbOd5D5PVfEJKDS
	atO0SOaLwSqqUT2dHHB/sJq95Q==
X-Google-Smtp-Source: AMrXdXsq/bEn5LObZoxUw3gLg5N8OiTmO8Pqyij5vmyAwEwg7B0e+DRwxDk9J85mjR1TosuKEQpI9Q==
X-Received: by 2002:a17:906:29d8:b0:86f:a1fe:237a with SMTP id y24-20020a17090629d800b0086fa1fe237amr5847894eje.54.1674015939829;
        Tue, 17 Jan 2023 20:25:39 -0800 (PST)
Received: from ?IPV6:2001:14ba:a085:4d00::8a5? (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id q21-20020a17090676d500b0086a2e31d1c1sm6241301ejn.28.2023.01.17.20.25.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Jan 2023 20:25:39 -0800 (PST)
Message-ID: <62b5b6d7-312e-9112-b109-4e42f36445a2@linaro.org>
Date: Wed, 18 Jan 2023 06:25:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v3 3/8] phy: qcom-qmp: pcs: Add v6.20 register offsets
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
 <20230118005328.2378792-4-abel.vesa@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20230118005328.2378792-4-abel.vesa@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230117_202542_566771_C33D6153 
X-CRM114-Status: UNSURE (   9.61  )
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
> The new SM8550 SoC bumps up the HW version of QMP phy to v6.20 for
> PCIE g4x2. Add the new PCS offsets in a dedicated header file.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6_20.h | 18 ++++++++++++++++++
>   drivers/phy/qualcomm/phy-qcom-qmp.h           |  2 ++
>   2 files changed, 20 insertions(+)
>   create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6_20.h

I can not verify register offsets, but generally looks good. Thus:

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
