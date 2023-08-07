Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46418C001B0
	for <linux-phy@archiver.kernel.org>; Mon,  7 Aug 2023 12:45:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0DUVXS0WSIORSMLYbjTZoEF8hG1iFjTmm2wlHDqel18=; b=sPoHOmPM1/D3kO
	ntp7VKARrghdtvw6YdPwHdTnaiLWccpm19xc/2aX5gpZ5J0nyqCnbWPegGY7QXWh5uW2leb4utUD0
	dO3BnEFrSO3LO8VplpcRXa3VXoE2+gW1nsc3OhgOmRHJ2KPwXu5TpFETRDZd9M2XrMiqXWlRA2RyP
	FGyN8iLgWPAu1X3wMNIRFqICWcDf/U4l2f8ab8Yk1zg/XvBunp7U+WgdjqLAZrF7Q4duxg83R1he6
	XhTZ79a43+wG/rMiX5hFRk+hLIePobDTkkJxRLK2cYzTSkHiOpAN/90LtE7e7loO1BDOSifg2EtrO
	JHcsm0fXRLs18rH4gi4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qSzbj-00HGL6-3D;
	Mon, 07 Aug 2023 12:45:12 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qSzbh-00HGHi-2J
	for linux-phy@lists.infradead.org;
	Mon, 07 Aug 2023 12:45:11 +0000
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-4fe15bfb1adso7406189e87.0
        for <linux-phy@lists.infradead.org>; Mon, 07 Aug 2023 05:45:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691412305; x=1692017105;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YjDxC4rtPa0izTbvMeyjDGK6HK2/KV+hf9iWhLFqP9w=;
        b=pSfjlTr+AW86gnpB3QekvpSlBfqOaWifkCW4OVsU1WUs4eufunLuEqg+6u2kRmuD11
         vS6DT4yYYnEXEIeliX+QI4u//9VFftHPgiVAGcbnNm0xjGc1LVTj41/4Ar912dWbFcah
         NuWvuwDmCoHncEYvfA7fNVCBS8i0qXfXngHcLxHCQXF9hTyFO2JadMz40EV9RxaCgfzX
         6EO1jX/aEc5Kf/9vNPEM47hXoAEZoOGXch/8jpHxxLs+U2/Is7l8SwlH0qdEpZm8+CKv
         ZN8eCo6LOg2VerYWw1iJcusucPITSLFljF9peDG+1t6m13WmcR4yD4q+UxDp4sFtQxr3
         8jsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691412305; x=1692017105;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YjDxC4rtPa0izTbvMeyjDGK6HK2/KV+hf9iWhLFqP9w=;
        b=dWtQPByeT7M8vDFDvH3AwyAUkvRliB9+R/q+YyTmDwForzYertw5ZILv2nnKmHEelz
         1xXxyzwgXntQRV2Ic8H/aiaDORrc+0S8x7o7d+YHjiiJRsrhHuTC6dLtCRNSara2kNtN
         cKoZb/fIRWA/9jXxLQRW2rj/8mqKjfzvwHcXh9rgZ5/Yas5JzDSjygDi4ytYYEUy1Si+
         8vMZ3/RhbCGU4eRF9MOrBNoowhWW3zUKXr8WMiPd9YQKJ1/Gd73Ydkr59BY1DDKKTr0U
         o6B06LZH3gKAxVWrQ1xuBNqlR69mGBhZ7wugII+EBPPxaSikWQYuIoTwjG8Okag5TZeq
         NdbQ==
X-Gm-Message-State: AOJu0YzP1Qo2WkGHhRVwKVjYIwmfd1STP3rdCIJXbujW74HBCpNAuinh
	Z+e/v/l/yzDu1JP33ZYlLB5vAQ==
X-Google-Smtp-Source: AGHT+IHCN5mJVb8OsMRJcQcr63UMPpzxGng8hmBDj3FAI8slxL2zzPmOjqUSK5ezDMVbRIq6WOK1mQ==
X-Received: by 2002:ac2:5e66:0:b0:4fe:18be:ef37 with SMTP id a6-20020ac25e66000000b004fe18beef37mr5207112lfr.61.1691412305187;
        Mon, 07 Aug 2023 05:45:05 -0700 (PDT)
Received: from [192.168.1.101] (abxi185.neoplus.adsl.tpnet.pl. [83.9.2.185])
        by smtp.gmail.com with ESMTPSA id l17-20020ac24a91000000b004f85d80ca64sm1490547lfp.221.2023.08.07.05.45.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Aug 2023 05:45:04 -0700 (PDT)
Message-ID: <83dff121-0a0f-4bd5-bf84-0c7c83f98615@linaro.org>
Date: Mon, 7 Aug 2023 14:45:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/9] Add pmics supported in Qualcomm's SDX75 platform
Content-Language: en-US
To: Rohit Agarwal <quic_rohiagar@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, vkoul@kernel.org, kishon@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 abel.vesa@linaro.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 quic_pkondeti@quicinc.com
References: <1691411333-1556-1-git-send-email-quic_rohiagar@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <1691411333-1556-1-git-send-email-quic_rohiagar@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230807_054509_762505_CA64D396 
X-CRM114-Status: GOOD (  13.82  )
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

On 7.08.2023 14:28, Rohit Agarwal wrote:
> Hi,
> 
> Changes in v2:
>  - Added compatible for pm7550ba for eusb2 repeater and used it in DT.
>  - Addressed some minor comments from Konrad to add fixes tag, labels
>    and update the labels
> 
> This series add support of pmics that are found in SDX75 platform and
> add the corresponding regulators in the IDP platform as well.
> It also parallely updates the pmic found in SDX65 to PM7250b and add pinctrl
> support for the same pmic chip.
> This series is based on the new header inclusion[1] and movement of the
> regulators level from rpmpd to rpmhpd[2].
> This series can be picked after successfully picking [2] and [3] as [1] has
> already been applied.
> 
> [1] https://lore.kernel.org/all/1689744162-9421-1-git-send-email-quic_rohiagar@quicinc.com/
> [2] https://lore.kernel.org/all/1690781104-2290-1-git-send-email-quic_rohiagar@quicinc.com/
> [3] https://lore.kernel.org/all/1690461813-22564-1-git-send-email-quic_rohiagar@quicinc.com/
> 
> Thanks,
> Rohit.
Since you resent this (as mentioned in the first thread with "v2" [1]),
the subject should be [PATCH RESEND ...]

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
