Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8026DC77B73
	for <linux-phy@archiver.kernel.org>; Tue,  2 May 2023 05:45:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bcm9USCvILA8s3e18sAF70X65cuQZYXHXOZJ8fL11Ug=; b=cvIKhinlNEJSlR
	ilrurvv1XbWaiwZ4jWlJ5B62UadsJvBZbjZVtAJJHTtEhdU8hSfCGnpYGlcP6MeiOcjK8CdJ3AvMI
	xWC7xJo10sCkXssdv45Cad9YsGhq3D3Af9q2LiL8/o3ckArwVwbRQRhtYNgD3oViSGGbzesg3c+U3
	/Gd2/dVg8dyoIwIFK0MwFOLhzR3Dn9DMV5uuE7V12/aRQKw6/0UXc3BoYLcnPz/qe1WQpOnGXws2H
	ukaMRcM3m2+wJicCNEBS3pMCRhC0FG1C0LRxrI1Q2pd/PdUdW7naOaM1QLdTPwWVRrgsnaev/D4P5
	Y92VAAFHCjiUKRjve7QQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptipJ-000F8T-0X;
	Tue, 02 May 2023 05:45:25 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pthqX-0007Si-38
	for linux-phy@bombadil.infradead.org;
	Tue, 02 May 2023 04:42:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=OU7dF3apKAzTMOXKncqRNK1GXeNANPoUeBncqcRUVHo=; b=aigWiycyOqUIirYNHwm2pQuJnQ
	8YPAklguo2f5dp7kOu+wD21jV428thR4B+oStVB7jHxesULZOymdrX8pAfOZ3y+/bnP+qU8c+iWCD
	iDOvDL5A7JnBlli1dHZc1XljqQOGdbYm2BxbcNVbJeV+uF5RHMqhN/lV5CFi+7esiyGlaVMAYJj6m
	AYgqX/pD7WWRMLqo0bviB/zC4HhoQjy4OZdEXkxf4FHNGGTsCRh3dpEH+ZA5MOjUJZfzDxLe4E3HX
	JvofxIyaz/b5YemUx6a9D5K3ubNeTIPvlOC6RZkDFkkHDKehP0n/8yH6hZ2OTupr8z10AK7yc9COg
	ZnOH19NA==;
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptdhf-00F3tR-1N
	for linux-phy@lists.infradead.org;
	Tue, 02 May 2023 00:17:13 +0000
Received: by mail-lj1-x235.google.com with SMTP id 38308e7fff4ca-2a8bca69e8bso30689111fa.3
        for <linux-phy@lists.infradead.org>; Mon, 01 May 2023 17:17:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682986624; x=1685578624;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OU7dF3apKAzTMOXKncqRNK1GXeNANPoUeBncqcRUVHo=;
        b=mdKURyH6HQo/pfn4Q1Te3gyJ+qAlcaiNaOsEa36+9zRBjFMhLmGKkiqNxDKHC8Q32a
         bbYMPylauv1XesZNtJ5UG2PSsXZ8w8Of3iAF1w15rRqtk3bOtKOhYG0vXKrB07CzqOYy
         eBCHRq1Cy5eyLvQ70yuFqGzPM2lEmWt8dH+BNy3msb+WTx1I91IlOMMoFgEMubViK1dz
         zyjWtVTNZ71vrYmTG0xDrvP55A1X1CxMhyMpOXFQLpAH79MGC6emZhvomwJorVJZ5Rmo
         qbpgjbfVGkB8GT+4b1lPGVIGaagb4NsSGfrMNLEjWxEiu3DlP8Nxf6bkV6g+BRyjeU74
         dSYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682986624; x=1685578624;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OU7dF3apKAzTMOXKncqRNK1GXeNANPoUeBncqcRUVHo=;
        b=IvfsCmhDNQv1nfUsg18gADkErEFI1ojjG+we4T0WXNVLWOASsz6wxk+prAmbzG4JgX
         yhhE5P+z3STVkeQicXshQ/DGKV/4GVMaRCtMnGHZJRU7+miGmgDgzDtt1nwPj5GhziV3
         qf6/l3uB5/AUdySK/E2GyiOHxFlN550rFImn1Rg2FZ132YY7fvn5ohHWdL8YVr258VAB
         HyGF2iIopNq292iKVSEH5Qs2hLw+vnKLAi4FELx2yqVUJmphAwRuWV+v8K2mzBNQLhS0
         Vr1ZN739hS1uWxyr8xYFKjhzdXO/6s9cRFK8xsjHVLdiJizJtmG843RoK69zjTKRhRXZ
         A2Qw==
X-Gm-Message-State: AC+VfDx0LmheY1dS8ZxdJQVS/t4aTG7HhU1YjhTYjkg43983230rsgRF
	AJ9PaBrYtdYzh4kdlPjYh472ng==
X-Google-Smtp-Source: ACHHUZ6GqVdzKs8IrpnXt7KY+uXWsHZyayfyeH6RXXJ/lfzcq5t7i3oRRhU0NqvTvtGhdrGit4u8NA==
X-Received: by 2002:ac2:4438:0:b0:4b3:d6e1:26bb with SMTP id w24-20020ac24438000000b004b3d6e126bbmr4123250lfl.29.1682986624134;
        Mon, 01 May 2023 17:17:04 -0700 (PDT)
Received: from ?IPV6:2001:14ba:a0db:1f00::8a5? (dzdqv0yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::8a5])
        by smtp.gmail.com with ESMTPSA id u21-20020ac248b5000000b004eed7649d33sm4973400lfg.35.2023.05.01.17.17.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 May 2023 17:17:03 -0700 (PDT)
Message-ID: <5b36ac86-4aaa-7a6f-a132-95fa62320acb@linaro.org>
Date: Tue, 2 May 2023 03:17:03 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH v9 3/4] arm64: dts: qcom: sm6115: Add USB SS qmp phy node
Content-Language: en-GB
To: Bhupesh Sharma <bhupesh.sharma@linaro.org>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org
Cc: agross@kernel.org, linux-kernel@vger.kernel.org, andersson@kernel.org,
 bhupesh.linux@gmail.com, krzysztof.kozlowski@linaro.org, robh+dt@kernel.org,
 konrad.dybcio@linaro.org, kishon@kernel.org, vkoul@kernel.org,
 krzysztof.kozlowski+dt@linaro.org
References: <20230501192432.1220727-1-bhupesh.sharma@linaro.org>
 <20230501192432.1220727-4-bhupesh.sharma@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20230501192432.1220727-4-bhupesh.sharma@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_011712_084876_A6E6CADF 
X-CRM114-Status: UNSURE (   9.80  )
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

On 01/05/2023 22:24, Bhupesh Sharma wrote:
> Add USB superspeed qmp phy node to dtsi.
> 
> Make sure that the various board dts files (which include sm4250.dtsi file)
> continue to work as intended.
> 
> Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> ---
>   .../boot/dts/qcom/sm4250-oneplus-billie2.dts  |  3 ++
>   arch/arm64/boot/dts/qcom/sm6115.dtsi          | 29 +++++++++++++++++--
>   .../boot/dts/qcom/sm6115p-lenovo-j606f.dts    |  3 ++
>   3 files changed, 33 insertions(+), 2 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
