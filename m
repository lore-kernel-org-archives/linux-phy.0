Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8E15C0015E
	for <linux-phy@archiver.kernel.org>; Mon, 17 Jul 2023 07:26:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hzcx2yLk5wTDXf2GFj9av7ZMW4QGeGLceZh34CDQQhY=; b=4mbSIx9uEth/15
	2X/rVLF2AW4K2sBVT1HyD5HNefTJrk7xr1nKS2nv7v+lsYqYgRownRH1VAywTpA4OjRMwt95w/QHd
	830nDSLfO0n7xICUawG6zSfuHcUpSzfuvDCb0Qpj7dML4AERaa1WJuUJkYfsav9KvIXMdxy5EAlj5
	5EBEeELw11lQtP5IYMduLTIuplTWyrAWGr0YpUaFksuwZ/szeoKNhJ4Ghp41uKNKxcCIYZyrZFEqZ
	H5/djZacATfyXeaB7wQT0D7+Oh1vzCksBlFYTh5zHfodi8qemHfVm7IkRNJpyrf1fCX0RZSfiqwwI
	R2GYR7koUYGKpycJgmkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qLIcZ-003JCA-3B;
	Mon, 17 Jul 2023 07:26:15 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qLIcW-003JB0-2C
	for linux-phy@lists.infradead.org;
	Mon, 17 Jul 2023 07:26:14 +0000
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-51ff0e3d8c1so5477403a12.0
        for <linux-phy@lists.infradead.org>; Mon, 17 Jul 2023 00:26:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689578769; x=1692170769;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8NyLL7xIHFr8TM9wgkdAiK0RyCfmwsOPlj/7DHoIVLg=;
        b=JdfgC8rC468QIy07zzQ9PkbABPnq0krXDaXPZSbVqGDg6mLQ7/WyTwIDDRIPT8tk/K
         6Mp0KNG+0cB2rRc46Jzog/xUf/VTInxyQOZeo4t5M6oOFKJO/zU+22rrFSXvaRCZe4gQ
         Ul6em6JGJHgVtnzzYVxTSzdP6/cBl9n/KXk3uAWAbzi+wKiVH9jSS33sCzK4JhMhkN/t
         xQM0iKojs2H//BgG5SNoonrZPm7KzVYJxgLiSUsI2gVo34rWjhjYD57mSLsLUDw3ravZ
         A94PbnT9TdmKWZ6jTK4OnDxFxTwTz+ySHr9IBhaNZiIrxJt/dWAPrxvSjR7IXgYNojTr
         VA7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689578769; x=1692170769;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8NyLL7xIHFr8TM9wgkdAiK0RyCfmwsOPlj/7DHoIVLg=;
        b=OeJpDCc372Mm8XHetIQJIdTBYEQ4ieqPyv1Mq7IRSe2b2p2yR1APRQtHAkBL2QaoNa
         Uqu2mv7sJ9JzizNALzyC703QInLeaHa/zktgC5DeBEjTd0Ehckk3IAivuL0xT3rt7LbA
         9R8vPawR1to4NdsoloZqUZo6B4wppf855pjRg7RQ95p6Qfs90Mp+9udJymyluvWxt6Cm
         tsRXE61mkaf4n/QOKJYjfy1e6dw8av1d8MBL3ZucbjOkxLoYomtp4dNC3DWRyMDF9amk
         7tohyGP3Cacnsk5xyaz0FEfFOmgr8QlQd6p2Vlebi3qJultZUZo6x67Ad6AEi3TOEfEr
         r9TQ==
X-Gm-Message-State: ABy/qLYunb8zNcHpwJ3rorziMRAcfPyj2bXgLszzcvntzu74EGvRgYiE
	QkR92BmiRyYmzviLKgY51opgqw==
X-Google-Smtp-Source: APBJJlE22ZFdkIUR/k32sD9ntkgnOqDp+SIuqLRIXRHbsi5WrLBE9vSWsH4Qp/COnyAo7f04OEA9Rg==
X-Received: by 2002:a17:906:7a59:b0:973:cc48:f19c with SMTP id i25-20020a1709067a5900b00973cc48f19cmr8750922ejo.56.1689578768619;
        Mon, 17 Jul 2023 00:26:08 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id z15-20020a17090655cf00b00987e2f84768sm8808852ejp.0.2023.07.17.00.26.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Jul 2023 00:26:08 -0700 (PDT)
Message-ID: <5c6f7a88-2660-12b4-2c9b-f0eb4f108f5b@linaro.org>
Date: Mon, 17 Jul 2023 09:26:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v2 6/6] arm64: dts: qcom: sa8775p-ride: enable pcie nodes
Content-Language: en-US
To: Mrinmay Sarkar <quic_msarkar@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, konrad.dybcio@linaro.org, mani@kernel.org
Cc: quic_shazhuss@quicinc.com, quic_nitegupt@quicinc.com,
 quic_ramkri@quicinc.com, quic_nayiluri@quicinc.com,
 dmitry.baryshkov@linaro.org, Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org
References: <1689311319-22054-1-git-send-email-quic_msarkar@quicinc.com>
 <1689311319-22054-7-git-send-email-quic_msarkar@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1689311319-22054-7-git-send-email-quic_msarkar@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230717_002612_725288_CF36CBB2 
X-CRM114-Status: GOOD (  12.80  )
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

On 14/07/2023 07:08, Mrinmay Sarkar wrote:
> Enable pcie0, pcie1 nodes and their respective phy's.
> 
> Signed-off-by: Mrinmay Sarkar <quic_msarkar@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sa8775p-ride.dts | 80 +++++++++++++++++++++++++++++++
>  1 file changed, 80 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sa8775p-ride.dts b/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
> index b2aa160..d3b2ab0 100644
> --- a/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
> +++ b/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
> @@ -552,6 +552,86 @@
>  			bias-pull-down;
>  		};
>  	};
> +
> +	pcie0_default_state: pcie0-default {
> +		perst {

Really?

This is a friendly reminder during the review process.

It seems my previous comments were not fully addressed. Maybe my
feedback got lost between the quotes, maybe you just forgot to apply it.
Please go back to the previous discussion and either implement all
requested changes or keep discussing them.

Thank you.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
