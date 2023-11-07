Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B3F0C4332F
	for <linux-phy@archiver.kernel.org>; Tue,  7 Nov 2023 21:57:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kfywoB67ada00nM7fmuBhGJuhsUQIsuXHgRPTHLWnv0=; b=2+9TfWuEbxEwLb
	xvlEKhR34jZyoi1s3aecj6W8GAy4yLBIbQ8lQc5GuKOfZfq1l9pE3qYcXZi4LIEJM07JH+JolmGFG
	bp2Ec1ySAzR35TisjU5yfNg2ZuK1ENmWOoGh1cRECT1vV5SjuTXPLBeIAobU4oa06BCmGfhhCFCQm
	TRW+WOKCU+dEBFS+qxvbkur9izbh5JO3q7waOQrWat20hfnfqw1pYUjWIJG9q3wWdWfL4negYcjYk
	V2QBGeRDuW/Oxe8uLf2JKEYhbB6d5Au4W245AF9mjkfEn7u1BrtRGT7bxYnmzeHXSKoshGW7laV+k
	AlaisUHJ/Pv/gruL6aog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r0U4m-002UCI-0N;
	Tue, 07 Nov 2023 21:57:36 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r0U4i-002UB9-2j
	for linux-phy@lists.infradead.org;
	Tue, 07 Nov 2023 21:57:34 +0000
Received: by mail-lj1-x236.google.com with SMTP id 38308e7fff4ca-2c514cbbe7eso87914121fa.1
        for <linux-phy@lists.infradead.org>; Tue, 07 Nov 2023 13:57:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699394247; x=1699999047; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FK647JTOvb77Maf2VTj+zONIf/6LvdRZnkupw91tgPE=;
        b=ApI3pybXuVO30jD6g2SH3UazRKbye0G71XDGQ5ZhRcjs6WMWiCBvK+1DuLj9td8Sy5
         r9/44QaJwvLQJRP778ogdgIUIUEx3d9xSpKWAmk7a6IzWD8kA5tKiKOzKmxWC1T9zPnJ
         x3yZKqAVjfMQVzV8e1ZHSSfI7akIXRmnNy2sJ698zBTi5JMb5k101Q7WCeCTdN2vnPh0
         OpBiUGPYxQoYUHEyPXaiiWSyWxiAtsyAdS52/TiQm3ofMVB3Ph+MnzVHRyYRlV3Rijst
         iDo5Ywf7z7NH+2meHYMyqJI+Ver4aoNBEinQ4DswjeIRQJzLbSaY76IBKL/J72/ZMhYw
         zUOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699394247; x=1699999047;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FK647JTOvb77Maf2VTj+zONIf/6LvdRZnkupw91tgPE=;
        b=S6pM6ImHX/nQ4ckOt/LFUoOzZGHLppP8Uoksf0Vq2Xw9uborrg8e7aK4XP01W9Fxq2
         FzYJuvsY5icSZ/d9Sb61bqDZcZQax3pnrmy/r7d3SyIm6KszKMO14fnSIT36V0NKQNhS
         CdYOdgMXyVA/FASiwJSgyO9zhlwVBC8DNMSyJTukEUItlkPQgae2mQZZUqnCeijQBsY5
         mfOcsh53RK+4WT5KWQ4tSQLFWuWBT/OZZa021+nox1wmCQm5t8aN4+PDYqESBcBfaO/I
         8t9nwWebvO4WV76TZ77IzcajBdLlCFhSkOegWcKeRmK224QLdB9MOZS2lUZrb94D8Zc7
         6+jA==
X-Gm-Message-State: AOJu0YzaOnWeU0J/wP9Q6tm5e6iHBNUs4TOtB7KU0Fuvw7DGJK4SyZ7T
	zuJiLKceSF1r5zPPF5EA72XsFA==
X-Google-Smtp-Source: AGHT+IGYyAg9ZJkuOrbMHatl2BVJxk8o6k2iosy2VGIvJ4FeYqR6CRHdhVaeJZCe9djWbe++GOivMA==
X-Received: by 2002:a05:651c:324:b0:2bc:bf29:18d3 with SMTP id b4-20020a05651c032400b002bcbf2918d3mr192132ljp.31.1699394247074;
        Tue, 07 Nov 2023 13:57:27 -0800 (PST)
Received: from [172.30.205.109] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id a18-20020a2e8612000000b002b9bf5b071bsm1611555lji.20.2023.11.07.13.57.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Nov 2023 13:57:26 -0800 (PST)
Message-ID: <8a12ccba-908d-405a-8fcb-411d50a66ebe@linaro.org>
Date: Tue, 7 Nov 2023 22:57:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/3] phy: qcom-qmp-pcie: Add support to keep refclk
 always on
Content-Language: en-US
To: Krishna chaitanya chundru <quic_krichai@quicinc.com>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 quic_vbadigan@quicinc.com, quic_ramkri@quicinc.com,
 quic_nitegupt@quicinc.com, quic_skananth@quicinc.com,
 quic_vpernami@quicinc.com, quic_parass@quicinc.com
References: <20231107-refclk_always_on-v2-0-de23962fc4b3@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231107-refclk_always_on-v2-0-de23962fc4b3@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231107_135732_882722_67A41CF9 
X-CRM114-Status: GOOD (  12.22  )
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



On 11/7/23 13:26, Krishna chaitanya chundru wrote:
> This series adds support to provide refclk to endpoint even in low
> power states.
> 
> Due to some platform specific issues with CLKREQ signal, it is not being
> propagated to the host and as host doesn't know the clkreq signal host is
> not sending refclk. Due to this endpoint is seeing linkdown and going
> to bad state.
> To avoid those ref clk should be provided always to the endpoint. The
> issue is coming only when ep intiates the L1.1 or L1.2 exit and clkreq
> is not being propagated properly to the host.
I'm gonna sound like a broken record, but:

How much power does this consume? Would it matter if we kept this
clock always-on for all platforms with this version of the phy?

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
