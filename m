Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1544AC10F1A
	for <linux-phy@archiver.kernel.org>; Wed,  1 May 2024 15:37:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4teQB9Q3ixW0pSMB5fAL8b4H2xagqGC3kSk4noteNb0=; b=g0+BUAqmlepq7VLthHhzejAH6+
	Ohe5lOqzoJ+OjgdNZMXaOMgPPQj5xmJIJPGTlcwF5XuvNZEefqQ3rjbVyzHQi+WxmleKMzhxc2MAE
	Sgh9eJ6r7An6MKHRyjZ5+uogjlDhma8ycG74FYksGhwdl272NL0SzYmSxjfks1yBit8bfBL3bHjhw
	27aa+2iJaRhB+g6aqWg5aLsHfaxEYo2u6y5J7eojiKayykx51iEfB9dM09UNxF6an/kFevS9lp8eN
	g0s2nXWH0qBnTW8ZCl8No4dsZncsiyjY/XB/QGZxDv3MUkVGtm2WjeO8fXMAxHVRmya+5EjBd3q9x
	agj82HOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2C1R-0000000A0vx-1JZl;
	Wed, 01 May 2024 15:37:29 +0000
Received: from mail-oa1-x32.google.com ([2001:4860:4864:20::32])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2C1O-0000000A0ua-2PNI
	for linux-phy@lists.infradead.org;
	Wed, 01 May 2024 15:37:28 +0000
Received: by mail-oa1-x32.google.com with SMTP id 586e51a60fabf-22fa7e4b0beso2771727fac.1
        for <linux-phy@lists.infradead.org>; Wed, 01 May 2024 08:37:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714577843; x=1715182643; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=34HSQZWtjbxbUcY2p0ZqE9phbqtru1lcKIiAiKLyg88=;
        b=NyGcMRGxr8hYgs0Ybf/bdRZjeuJhBnmKWVtLakphsKrAnY14mtTEUK4at0Ixbqmkus
         ysnHeuZbvx66ivFgeztZL0Pf8gYK8mahWP3UiEZa128075ij0pGDFWijdzUoezckT4x4
         +QblcMefl1aQdH/o4as0/E9W0nuXlwoUjldsn5s5ft2Obj6J+2jJ0QzvjHAZQ5x5j0Ik
         9lSUdzGzMDWRW9h5vY3g6uJWQoRa39LVz1dKA1eDb/yMMatxZXb44lQWXwShxVzHpWyJ
         cBM8QGU8UIei6+SpVspA/PZMIjSrRVKXlOPgzjsLKFhkSl8xNMkMKLZGPlu89CIctr+f
         UMrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714577843; x=1715182643;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=34HSQZWtjbxbUcY2p0ZqE9phbqtru1lcKIiAiKLyg88=;
        b=XEvXZ7mByaA44wS88zRv9sPoKKQnp3Jpecp2V4s95o+1/y8D2uJPaBYFZXmp0pLcFU
         Oh/S0WU9s2f6hFePdNPfSxmJtel0dEskRy3+z4mEtEUv3WnyewhBKt1l1dvgqvDb0Oy1
         5Tk53wC6ZUMO3oOE/Mc8dMNM4BTvZGZ3CK3dUvO1dw99QagGmng0kd2IXysof06SUaTu
         V+zljQrB0iAwsiRElZw25Hj20ojTS2spoZP+cPpfGA9uGwOprKTmn5o2O2iMdBNzPslh
         TPk0/UfOU1FJ+dbkaDocFQAA/A52JCvuAbPXTpEW4fQ4uk2UmxeJ9zITGtxs2FjC9qiV
         BvDA==
X-Forwarded-Encrypted: i=1; AJvYcCXH6DM+sEDp723ynGi54rMBbip4c6YUULOi711eCrar8aSWAXafPgwmYEOtffI8UHzyF2la0NOkD/xKrKQqCekpcEnFyy/QelQmayGwCg==
X-Gm-Message-State: AOJu0Yz6T+GKgHe/tbJ6yfrxHHK7RyJ/Vp/2TW1gqIBiLJlVcL5TsLOd
	ksmhMgM/YxYXQUQeZnkA71EuGT5q8bVbBICA5N8Pfi312WrFAro7hG5i8LZlGgM=
X-Google-Smtp-Source: AGHT+IHdOGltmMEfyguF/4cAMA+Sgnkaw7abyq40kS29fkMPdziQpNXQgqEnnEGTcu54RFw7h8jJWw==
X-Received: by 2002:a05:6870:b296:b0:22e:8d62:fa75 with SMTP id c22-20020a056870b29600b0022e8d62fa75mr2938064oao.44.1714577843194;
        Wed, 01 May 2024 08:37:23 -0700 (PDT)
Received: from [192.168.7.169] (c-98-197-58-203.hsd1.tx.comcast.net. [98.197.58.203])
        by smtp.gmail.com with ESMTPSA id qw2-20020a0568706f0200b002397a883e7csm5033024oab.12.2024.05.01.08.37.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 May 2024 08:37:22 -0700 (PDT)
Message-ID: <47665254-fe22-4369-8b10-087ca928e97f@gmail.com>
Date: Wed, 1 May 2024 10:37:20 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 RESEND 0/8] ipq9574: Enable PCI-Express support
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Manivannan Sadhasivam
 <manivannan.sadhasivam@linaro.org>, linux-arm-msm@vger.kernel.org,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-clk@vger.kernel.org
References: <20240501042847.1545145-1-mr.nuke.me@gmail.com>
 <ea1c925f-1696-4491-a792-1b9165447dad@kernel.org>
Content-Language: en-US
From: mr.nuke.me@gmail.com
In-Reply-To: <ea1c925f-1696-4491-a792-1b9165447dad@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240501_083726_670457_D9ECF0D3 
X-CRM114-Status: GOOD (  14.01  )
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



On 5/1/24 5:22 AM, Krzysztof Kozlowski wrote:
> On 01/05/2024 06:28, Alexandru Gagniuc wrote:
>> There are four PCIe ports on IPQ9574, pcie0 thru pcie3. This series
>> addresses pcie2, which is a gen3x2 port. The board I have only uses
>> pcie2, and that's the only one enabled in this series. pcie3 is added
>> as a special request, but is untested.
>>
>> I believe this makes sense as a monolithic series, as the individual
>> pieces are not that useful by themselves.
>>
>> In v2, I've had some issues regarding the dt schema checks. For
>> transparency, I used the following test invocations to test:
>>
>>        make dt_binding_check     DT_SCHEMA_FILES=qcom,pcie.yaml:qcom,ipq8074-qmp-pcie-phy.yaml
>>        make dtbs_check           DT_SCHEMA_FILES=qcom,pcie.yaml:qcom,ipq8074-qmp-pcie-phy.yaml
>>
>> Changes since v3:
>>   - "const"ify .hw.init fields for the PCIE pipe clocks
>>   - Used pciephy_v5_regs_layout instead of v4 in phy-qcom-qmp-pcie.c
>>   - Included Manivannan's patch for qcom-pcie.c clocks
>>   - Dropped redundant comments in "ranges" and "interrupt-map" of pcie2.
>>   - Added pcie3 and pcie3_phy dts nodes
>>   - Moved snoc and anoc clocks to PCIe controller from PHY
>>
> 
> Three postings within short time... Allow people to actually review your
> code. Please wait 24h before posting new version. Include entire
> feedback and all tags. Explain why you ignore/skip some tags.
> 
I'm sorry for the confusion. It's the same patch version, v3 being two 
weeks old.

Due to a tooling failure, the first attempt to send resulted in a 
double-posting, and missing cover letter. It was so bad that I felt I 
needed to re-post with the RESEND tag to clarify the intent and prevent 
further confusion.

Alex
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
