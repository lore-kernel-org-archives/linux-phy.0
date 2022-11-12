Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B408C4332F
	for <linux-phy@archiver.kernel.org>; Sat, 12 Nov 2022 11:15:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cDn9u7AGyXHM0rS1CIoDTjJgk5LRuUCJt9B40kBHanI=; b=aAIyPlfyVJApSC
	jN5pNKwAB04xEDhg+r3FEzv/DBIMtmYe44ma2a2PHryYgYRPsEpmw0xWCOkFeZmxSxzGexI8eEul6
	B2k9lbZaf/hP93TyjLMu75uzILXpwEjArwW5zE1yO30/z20hRYgm+ZCDNN6kdjcoboS1OKT/G/vTy
	9tX+y5mxIeCJhUzGWLZ/WK8+blAJkb4iEY9TeTkKglpyp/u3AQ+++5Exb/Q3j28+0jiX62+NsNukp
	Scc+TQe42IkUtZ+S5kVVnOKhNZntVo8Mz2M0/iuXYAS3C4CiUj011aq/0V50OL2N/lZohUy6G6jqa
	nxxnrjKzKr036ZDUV8DQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otoUM-005HYV-9d; Sat, 12 Nov 2022 11:15:54 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otoUJ-005HXx-Mo
	for linux-phy@lists.infradead.org; Sat, 12 Nov 2022 11:15:52 +0000
Received: by mail-lf1-x134.google.com with SMTP id p8so11897172lfu.11
        for <linux-phy@lists.infradead.org>; Sat, 12 Nov 2022 03:15:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=R7iDZL/QujFwMm7jx3Nc9pgsghkA1TlulQ08yEkqzm8=;
        b=O5j4F8KvBvXnQcWiyN7RVK0RroFeorgsDjVrKrVXeUZOcpAjnN+wsAXy2M0KOHCfmZ
         PBmsef2Qi/rk6m5Tf++cB7UB7sxVdl4lDbOoeowFZqfsKqKPxph7goa8uDComO07W6do
         DWHv7anXSdF2yrPbtbX1R2+vgturKkLnOFxNRi2PdA8Mz3WL+bzyw13D3XLuE2iB2R97
         6h5Msyndh91We4UQrFePyCw9zCSb9B6oEfiZA+JBreXN9lIpcn0OOwK+s302MJTGKTzo
         n0/gY96mFJYCz9yx5EvT67zoZSxPrvdgfL86dvQ7cgbP1/pRHyON/uD/yCCOfliVxp6Z
         QZhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=R7iDZL/QujFwMm7jx3Nc9pgsghkA1TlulQ08yEkqzm8=;
        b=eXFNLxtqx1YDZSXcdtokKJHBXKTlVvrMq1iqVqH7QoOBYA6d4823/L7a3mcR5OCroK
         e1jAAHOs+jqXqmkO/QOSlv3uho1ZICDD65ATcsslT+5+ZvOXJzPygw34hM9p49w0agaI
         pFQ+YjVWvj2s0UVtwylOD4uR8WlYsGpVTv2cwV1f+3H5KW3uetHdafQhUDSiVF58VBwE
         845+bkCr7u5QUZLIJ5UW8aKNNR/CcHaam65Rk4hRkuWPsKyvz9DGaIxU2P9vU6ZueG54
         1oKl4eUBB5CP3SXbWNkIJHN63U0W7EK3//7dHQzmimDluX0e6LXjbuaa4l5kVrUy91AE
         0oBg==
X-Gm-Message-State: ANoB5pl1K75czdiwBvqZP2JliDjLP6XQKIDWPsMnQtbG6kW6FCVxKXpV
	mMlSMCt3T7cWoqVeGYJp+FGu7w==
X-Google-Smtp-Source: AA0mqf7UnXUai6cU7HQ4E8RR2SFUUk5skG2m61T7Io4PUYpKkNCirRINVA1LiPCqs48Rz6A84/DriA==
X-Received: by 2002:a05:6512:130d:b0:4b4:c0c:8995 with SMTP id x13-20020a056512130d00b004b40c0c8995mr2229488lfu.326.1668251746795;
        Sat, 12 Nov 2022 03:15:46 -0800 (PST)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id m5-20020a056512114500b004979db5aa5bsm825066lfg.223.2022.11.12.03.15.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Nov 2022 03:15:46 -0800 (PST)
Message-ID: <d0325483-2e8b-7a09-8c64-ebf30619e3c1@linaro.org>
Date: Sat, 12 Nov 2022 14:15:45 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH 06/14] phy: qcom-qmp-combo: generate pipe clock name
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221111092457.10546-1-johan+linaro@kernel.org>
 <20221111092457.10546-7-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221111092457.10546-7-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221112_031551_770880_A8ABEE79 
X-CRM114-Status: UNSURE (   7.37  )
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

On 11/11/2022 12:24, Johan Hovold wrote:
> In preparation for supporting devicetree bindings which do not use child
> nodes, generate also the USB3 pipe clock name based on the platform
> device name as is done for the DP clocks.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
