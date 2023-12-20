Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9E50C46CD3
	for <linux-phy@archiver.kernel.org>; Wed, 20 Dec 2023 00:34:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WKd/9lbxezsakgXzsEeHzcOvX8Bo9DWTwcqAoKKNStM=; b=EmMSd+/3cQ7i4l
	5SPF/XYQv1oCRR0iWW3Q4mmi7NHoPBg1pOC49Gh9uCXeZoZyVEkGQAEhD8UnZ9H6ybj0rKTTz2GF/
	uL5w24SeHxlNhXx3XJ660MjDEbm9XHkuQFeN6FekOz0Y4Fhqwfz1W2MKZqz+p/iBAgCp+FkQ82hIC
	O15PVt/7WWzZEaIzDNloQq+9xES7PD9IV9WsENef7OVQUwLATTzpeFmQZJUrW8g2WYRy4MHR5q8V9
	G73DvLIDNLKlgKlCj/vFghO0j7L1vThfMkPxOCeVOeHZOTF5I9/8UGvNn1reaBS+FTFbGVDnVbRJh
	xjZhzhlokBk/Llr2JHfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFkXn-00Fnzd-1J;
	Wed, 20 Dec 2023 00:34:39 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFkXk-00FnyE-30
	for linux-phy@lists.infradead.org;
	Wed, 20 Dec 2023 00:34:38 +0000
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-553b3ee88c0so790016a12.0
        for <linux-phy@lists.infradead.org>; Tue, 19 Dec 2023 16:34:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1703032474; x=1703637274; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=v5N23Sn8QSsdmZylBiT+ZRjhg/gFQjYd+L619MmIo1M=;
        b=HowrTOQHrxE08b01UFHVuAlRC8+r+01DuRmT/dGMc5zINTrbZICQ3LZVirw5Yjefzj
         1NpRgU1MlIXm+0XIPG55KPm+nvSYe7TjnTuA12w6AuTOLnJtoc3jFJpXSzY0q5fq1KTR
         QZyBltkReCHjZH935DkKu8ptvHb+oO4DqERsvFdhDlbUIRXUJaJRaZQd6rvluLNWX04A
         z0A0a0xnxJ8iW4JeGjvAIZQWhQcQ7J8P/oUgvrY4amLcRzNlInxNxq6QvpYlM4Tr5Fn5
         GHxWsIc4caJGJwCjJqp0bVjkfFweqS4bgauTpEAr2MZWo3q7ZaMZIkDGdqfw8mTEZ45b
         A3EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703032474; x=1703637274;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=v5N23Sn8QSsdmZylBiT+ZRjhg/gFQjYd+L619MmIo1M=;
        b=Vwo4Cb+jPJnts3beM2WqO76c6miZyvtVtOgn8PhLSiQqbzmZd52u2S5ZHn4mPmXW9G
         hEYTYZ1vXl/0cT+q2dU2jxGarS/Y0y20X2JrjrtD6u8+RJiSvdWtHLie+n+rmzm6Pmus
         Zoxh74NkugUgm4ZTuu9dDku87+tVAGzgElgEi1wOoFFvhnEfYwWYHh1F6aCOvH26RjMZ
         zK5d6hBpMb3KStbuhtU7Opf/ZafYE6F253zZpAOV5CmRaifM83BTmnnv3yI10cfrOeG6
         7/52iAw1NrlrztGft7yeWVVSl+0YVZQLVIR+GinCToTEHoIOaE9aZBIzyhzTLS2SOUmC
         Piqw==
X-Gm-Message-State: AOJu0YzwDGE+szsntgEEb816ymj07T+PBnN0+f27I0RobpF5P2fz7XgU
	QetdfCDs0+34VFdCSgHwJt0J7A==
X-Google-Smtp-Source: AGHT+IGCge4nWIK1iJnnFYJuAyrGuoXxyFkSZHTbwliqJVcqZdR5gHTO08w/vuxhOfBrXehx/Vp0fw==
X-Received: by 2002:a50:85c6:0:b0:54c:7b90:f40a with SMTP id q6-20020a5085c6000000b0054c7b90f40amr12472459edh.4.1703032474601;
        Tue, 19 Dec 2023 16:34:34 -0800 (PST)
Received: from [192.168.199.59] (178235179206.dynamic-4-waw-k-1-3-0.vectranet.pl. [178.235.179.206])
        by smtp.gmail.com with ESMTPSA id cr7-20020a056402222700b0054ce9ef93fbsm12104379edb.4.2023.12.19.16.34.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Dec 2023 16:34:34 -0800 (PST)
Message-ID: <42d343f8-b25f-4aa9-9dc2-9cd77a469609@linaro.org>
Date: Wed, 20 Dec 2023 01:34:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 11/16] arm64: dts: qcom: sm8150: Fix UFS PHY clocks
Content-Language: en-US
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 andersson@kernel.org, vkoul@kernel.org, sboyd@kernel.org,
 mturquette@baylibre.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, quic_cang@quicinc.com
References: <20231218120712.16438-1-manivannan.sadhasivam@linaro.org>
 <20231218120712.16438-12-manivannan.sadhasivam@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20231218120712.16438-12-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231219_163436_980636_68AFC65E 
X-CRM114-Status: UNSURE (   6.39  )
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

On 18.12.2023 13:07, Manivannan Sadhasivam wrote:
> QMP PHY used in SM8150 requires 3 clocks:
> 
> * ref - 19.2MHz reference clock from RPMh
> * ref_aux - Auxiliary reference clock from GCC
> * qref - QREF clock from GCC
> 
> While at it, let's move 'clocks' property before 'clock-names' to match
> the style used commonly.
> 
> Fixes: 3834a2e92229 ("arm64: dts: qcom: sm8150: Add ufs nodes")
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
