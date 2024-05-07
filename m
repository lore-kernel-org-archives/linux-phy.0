Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC3A7C25B4F
	for <linux-phy@archiver.kernel.org>; Tue,  7 May 2024 11:43:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=80eG6jvF13RPFMLhXQIp+rQVXiejUUTsUJ6SJ5juRYI=; b=2M9En7Wsy1XpZo
	xwT+EDMuCnlhRMVgKdisVsT9ohvmkdS2HHy/sSVxq51CO7HwANOyi8C04uhDKyE8MNMExv0oER1uv
	IBQ+0CvosjOup5LLe8NGVrxB1r2VX3yrhI8X+4MUqIE5CUzO3ZYefS7a6lVo7Ai8EE7HCOSNImMDP
	+CwYBBoM9RD9by6NU3PkCGtF/EvNEzRgevTcW0WcdRXlb6M2ezprCjtnflYZF59UZeSrt+wIE614p
	FQ/oOjFMjk7pfU7qnGZUs819zqDMaMAnJjmp1uGsp2hO0itUl3oW3u/ZC1EfDX+6xq/ziGUyGlDYP
	PjERHQK/7zqGwkkNfBlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4JEB-0000000AlGp-2Gdv;
	Tue, 07 May 2024 11:43:23 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4JE8-0000000AlDx-0590
	for linux-phy@lists.infradead.org;
	Tue, 07 May 2024 11:43:21 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-52006fbae67so4237086e87.0
        for <linux-phy@lists.infradead.org>; Tue, 07 May 2024 04:43:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715082195; x=1715686995; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vCCDWmEOxdrYyg03QGM9HCNXy8fqBDtdzIoCPdDROW0=;
        b=aYm8nDYnvhbFis5ECQpCxx3IT9zx/QTIWbISNwCbR9yPGiFtnprc5W+uJKRRP5AbZM
         +CIAPo9+eojICK7nwBB6RqJNa7McgWD2ia9jGV2iR6pXL9agCfhmCisB5ZoCdqevUXy5
         vkuuUu8IU8zYjSfm+CtV3F+4UArPTOX4ngGvroUDH03z7LdQH12hnj24agz1GXPdWVIb
         JEyMBW0mvydU7hsYA/FRPkPf3CnfH36W8mY2UNqzO+nU5mk4ZtEBSbFVuA8mG0IK5UKE
         DcTPCbrOM7QpBC8zNff9+peK3Rpoq0w+bOLEXRMnqSNT0OCWP8h13psxFQT3/RVRwQ2G
         MjWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715082195; x=1715686995;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vCCDWmEOxdrYyg03QGM9HCNXy8fqBDtdzIoCPdDROW0=;
        b=tP8aHqDD7Ob6JyfCYBN8E0AqCvu5QJ68hpq3oLKWqeOm7pgyVvYDt45LkodUcSZsHK
         eOc3BStV1aMhK16NJGUq2mwpvG6qDCuXGJL/0Lb4aVa9ufcQg+CVcmAsqYN/aVWVmIGf
         rOKS3nh2QrH81Fhuu3SGNJa89wB/JqZI3Hf6Yx0vsLQMGAcOnTz+7C3CXygwX5FtNOeu
         YvWuzy3A2PsCaQbRbpkWK4XnJgXKOfTBHCvdbBu2i/jZpWCordQf7zHadpkvs6Cv/Ts+
         RUHLw0Feg1et8GV61u2TY4JO36FSkdoTRlnLcs9d+jQcozaMdcNKEtPw2smN1grZCjLK
         qdRw==
X-Forwarded-Encrypted: i=1; AJvYcCWzOx7Sjf4VIAwzORegEP1dkoH/1FtbX2A3gpTVn9KBv7/IIXQmUMSC99U1y5Trfp2NZqQbshw3Z0BwaSQD8tk7puNADGCJEIFySBDxug==
X-Gm-Message-State: AOJu0YwGUiUdTUdjhgI6IZFbv8wphXhOPGSe357GtaVwWN8rTc3Qtudt
	z6v3mdhDTAkLgId0JtRSBFIUVelXeZOFsKx/S92QB1HR72KLb5b7C5vItLGLmCk=
X-Google-Smtp-Source: AGHT+IEatV3ixiUCg3FxqsVCLWRFRBRCA8gGTMCNaxxmiDHfSI+2iThDhqWAlx33/+UViLds+bPqkg==
X-Received: by 2002:ac2:58cc:0:b0:515:cfaf:737 with SMTP id u12-20020ac258cc000000b00515cfaf0737mr6627843lfo.9.1715082195460;
        Tue, 07 May 2024 04:43:15 -0700 (PDT)
Received: from [172.30.205.144] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id h2-20020a19ca42000000b005196e3e8a84sm2121235lfj.177.2024.05.07.04.43.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 May 2024 04:43:15 -0700 (PDT)
Message-ID: <90a5b641-af5b-4640-b2ad-85dbbab523bf@linaro.org>
Date: Tue, 7 May 2024 13:43:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: qcom-snps-femto-v2: Add load and voltage setting for
 LDO's used
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Udipto Goswami <quic_ugoswami@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20240502123312.31083-1-quic_ugoswami@quicinc.com>
 <CAA8EJppeQTadmny=hcs4xCQDXHwXEBHXjeecvZCUVcSXmwBTgg@mail.gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <CAA8EJppeQTadmny=hcs4xCQDXHwXEBHXjeecvZCUVcSXmwBTgg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240507_044320_118987_CF882C1B 
X-CRM114-Status: GOOD (  13.48  )
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



On 5/2/24 15:12, Dmitry Baryshkov wrote:
> On Thu, 2 May 2024 at 15:33, Udipto Goswami <quic_ugoswami@quicinc.com> wrote:
>>
>> The Femto phy depends on 0.88/ 1.8/ 3.3V regulators for its operation.
>> If one of the regulators is not voted to the required minimum voltage
>> for phy to operate, then High speed mode of operation will fail.
>>
>> On certain targets like (qcm6490_rb3gen2) where the minimum voltage
>> of the regulator is lower than the operating voltage of the phy.
>> If not voted properly, the phy supply would be limited to the min value
>> of the LDO thereby rendering the phy non-operational.
>>
>> The current implementation of the regulators in the Femto PHY is not
>> setting the load and voltage for each LDO. The appropriate voltages and
>> loads required for the PHY to operate should be set.
> 
> Please move min/max voltages to the DTS. There is no need to set them
> from the driver.
> 
> Also, is there any reason why you can't use `regulator-initial-mode =
> <RPMH_REGULATOR_MODE_HPM>;` like other boards do?

The point is to aggregate the values and switch to HPM if a threshold is
crossed (or stay in LPM otherwise)

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
