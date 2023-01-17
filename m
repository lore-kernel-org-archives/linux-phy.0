Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D79FC678D9
	for <linux-phy@archiver.kernel.org>; Tue, 17 Jan 2023 14:29:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F7jEbYrbZWxe9zcW9BFAj+s6+X0hfYR7ioCBF9l4/EU=; b=yeFHn5/D8vrPWr
	fUCLG/w2L0KBx6CEz+hHSsIXKelxmHfNpZQZ6aWcLNnJEWr0Lr2ILcyIcCltrjCZ6yrV0dKAaeShE
	dcY1zONqDSHah2P6LFhEWADoNZp91NbkQ3QV7LLQrBuFaYccCUDCX0Px7a9n6e5NH2o8E7/cG8RHL
	4TWlGzAi7RoKgek/qoeX89QVcMw3wDx7XEfe43mQI8qy0PYUTatNwvHsfc0WIgcSBvVTG6vmi82js
	BZzc9u8HTKGn0MvCX3YBZQFjK1TW+6gImsAWrJBvG1jKpvPKyHATcdEhIYYEKEcNgKrITSNfYn1pf
	PONUY2lmPJprY0Tvh/jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHmxX-00EciN-JW; Tue, 17 Jan 2023 14:29:07 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHmxV-00EchA-4d
	for linux-phy@lists.infradead.org; Tue, 17 Jan 2023 14:29:06 +0000
Received: by mail-ed1-x52a.google.com with SMTP id v13so11201970eda.11
        for <linux-phy@lists.infradead.org>; Tue, 17 Jan 2023 06:29:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4UGD3C9WKKhoLcns/YO+k60vwTruXIRCWksL33OjZZU=;
        b=abmeYWOSlOCC0sm9Rn75XUSAgWCcUg+A6l5COGLADBxE0NlO8PyH1OPZQNvp61VOoX
         f+ydVjTYmeQPoLmRP0nsPcE8HSbDzdWN1zBU2VOoKmZbtkeOOgRad3kyh3Ja94bCKWCh
         j9H9C9WSPDWUjaPSn7PWUjeAU8kcZDVK/GQD/XuiOwnMaBYOEOh+FR+QRgkhGYex/UBJ
         X9PtxP2VhMuABAjzxXJQMW14VcUB2lYwR/N3bpjgh7RzFVC7fTpqpCelIkeiIsFHjzfY
         l6Il6TpAzqdv5UftkS6MWRsywpVOZmwtAsd79yosFw/9HbslH+1ifKrCbVfU2upyJLkW
         TsYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4UGD3C9WKKhoLcns/YO+k60vwTruXIRCWksL33OjZZU=;
        b=GM59/77gn3ghnxsOTmGLIjdqQzMZWqdeMlWuKDxlfOS70oj+MiFWX90cUvU0YXoB2I
         qISvmWXL4aI2lS3fCYTgbpmxMzN703kXzyVTdx9lZ2Ao0Y0tw+R+kPx6C8Gc54+8ZqqL
         SDNuZv+A94B7hhPBPfBX/GeqPQL9EX5TwRDCZD+/1sjKkLIGAFE67ajQEVYhIOWLzpD2
         YmWSvxquBlRZZ5h/s/pc0MRX3RodOKhPsvDBLYybU0SP8CkeAKk5yTjxBdY4pKNzNgzQ
         aP3OJBY5htL7MMT2pPKGG8SYpJka6T2xFTqg26bWkhMVa9YEFiw6Uhm6lursQ9BoFRzj
         U81g==
X-Gm-Message-State: AFqh2krVbZX6N+ZYLvbhGRKg9JlKxYnSHxB3zfpmClrwEcnn17N2+VF2
	bxcXqYycyE+agjJTf6tNnNGFmA==
X-Google-Smtp-Source: AMrXdXvxf9/ZCk1lQ4i0cJ8vaYUkXgZ2w4SlStRI/xVCppgh3t+Ic79lLXRd+Ny5+lB/YlZcgccXJw==
X-Received: by 2002:aa7:d7d9:0:b0:478:5688:7c9f with SMTP id e25-20020aa7d7d9000000b0047856887c9fmr12926771eds.29.1673965743743;
        Tue, 17 Jan 2023 06:29:03 -0800 (PST)
Received: from ?IPV6:2001:14ba:a085:4d00::8a5? (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id d3-20020aa7d5c3000000b004835bd8dfe5sm12988233eds.35.2023.01.17.06.29.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Jan 2023 06:29:03 -0800 (PST)
Message-ID: <49481b50-b68b-3c77-e398-8b0ae617ab06@linaro.org>
Date: Tue, 17 Jan 2023 16:29:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v4 5/6] phy: qcom-qmp: pcs-ufs: Add v6 register offsets
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
 <20230117142015.509675-6-abel.vesa@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20230117142015.509675-6-abel.vesa@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230117_062905_209249_4F695C6D 
X-CRM114-Status: GOOD (  10.37  )
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
> UFS and PCIE g3x2. Add the new PCS UFS specific offsets in a dedicated
> header file.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>   .../phy/qualcomm/phy-qcom-qmp-pcs-ufs-v6.h    | 31 +++++++++++++++++++
>   drivers/phy/qualcomm/phy-qcom-qmp-ufs.c       |  1 +
>   2 files changed, 32 insertions(+)
>   create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v6.h

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
