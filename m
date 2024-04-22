Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF7FAC4345F
	for <linux-phy@archiver.kernel.org>; Mon, 22 Apr 2024 14:29:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eyZ6ITGKGQYD19W0EQlSTOm20zTBd4/TlhcHwFgRTkU=; b=eBT1Uq5A5uiwT+
	XFd51MTmvYB10aWJ88kQL5mr3Yt21NplYKIHJ5KFT04WtBucNZBw5c/SJXltYHtHKDPW2FzGNIBs/
	ZS5GteBpD65Fbs+riJfwsnSE7VRsLIz33slvXHAVDcztlGxv971n92Kct0utTiJ5qoan6DNAXtNyh
	qTg+D6QkqfrwF2WyqQt8o4pAWNp+C8aqfVDPsZZhsRsDeqOOPe0lCd0Ir2w7T9JdpxbHWoGL96f4b
	Xl0NKbMy3sn3Syn/Zkvm313DJZUWSlfjWFyLDVIUncVt9R4NmFOt0s1qJlUMHEfzlkNB8lXqWk1Fs
	yN3WC+8N+itRok2ctBug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ryufk-0000000DvBA-1TNC;
	Mon, 22 Apr 2024 14:29:32 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ryufh-0000000Dv9J-4C30
	for linux-phy@lists.infradead.org;
	Mon, 22 Apr 2024 14:29:31 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-51aa6a8e49aso4632159e87.3
        for <linux-phy@lists.infradead.org>; Mon, 22 Apr 2024 07:29:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713796167; x=1714400967; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LXHHnDak7lgem7M5GBJJasjq0fymlxs7eNC3HgwuabY=;
        b=wSA9zsTmiczINuJ/uLZPnMTcJ95vNH+6ZRyn7LYNXBoj92fQjmC/twDSiCcnFKNk6q
         Cb/WvpG4NC5A2oh2qV1JFA80JqcWQoOHBqre/NRNkPhxcyhmpCyKJHXMrFEchrANoqTh
         iqq4ANOqtzGzntr8AmlGxVduWyuR6P/Ot3AT/wiSegQGoDgitRwwxe8b3mLycXS+q+Yo
         D3NKJB3ZzYPZvlFxczKjALtEBsTKwBPana5+V7RLFYJ0B9BZLlHW2RGvTim5LgHh2OYv
         KtZh06inwlBo5sgS31PLQmX4UhTlb+gAVhc+GrOgLVyYR/UcHWocNc/HRdzEYJ08i8F8
         Hc7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713796167; x=1714400967;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LXHHnDak7lgem7M5GBJJasjq0fymlxs7eNC3HgwuabY=;
        b=PrQT7RWZ2ZqeEe4aOalAthPrDWKdQJji2WyCs4CjX/3+pa54WVk89jM3EzuJmUF6hg
         e7ByWQijswgL+XL5/2kxVlxb2nz1REaYSiNLQwjzSHBMxsHI4oJY9dem8t4aHqETlAVY
         lTWAru03ZIHNJdO5EmGOTqX4WAMJdb1LsLF04OAbw3msq9PdFax5rHXEOXJSHxaX4aXI
         Ud8jdHTAjgVPAtkMjqXnz3OQLYw00l2Ud7ApSVvzrwwXURKLJGNMx+j2lIg1CHJuhOjB
         IywuWvy4QznWwbjtvMVzqLmSjLS8OGDEzdCTqC7W2YN+rV2Y5r/cjT6DD1V/wfJYUvuI
         T7aA==
X-Forwarded-Encrypted: i=1; AJvYcCWywSSmJojxGJ2ne8Cp9Rlzk/6/EgX6XxNXvxYb899RZvvKy5dSlgVC4MzskBixFPcmCZnet/IN6cUr4LB+fv3KJkFZPfbuL1+4eoF4Lg==
X-Gm-Message-State: AOJu0YwCj5rhx8iBLV66KC/Gzw0X1D9L4/rB/UN0a4VKUQYPOCY9qfyC
	BQRpAXw9dKCanWh8/ix9yBcB8VkoJt+P5PWAMcEt2LpTvPNRRe09GCjGVRf+s10=
X-Google-Smtp-Source: AGHT+IFURma49nlaoif2Ttdrovjgb+IMnG5pgohKMHIuVNPmGWqDe7YcAEozJ3QOwed9btGw+bfpRw==
X-Received: by 2002:a05:6512:3e0d:b0:51a:c8bb:fcf7 with SMTP id i13-20020a0565123e0d00b0051ac8bbfcf7mr6809395lfv.3.1713796166491;
        Mon, 22 Apr 2024 07:29:26 -0700 (PDT)
Received: from [172.30.205.46] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id a22-20020a195f56000000b00518e16f8297sm1780897lfj.55.2024.04.22.07.29.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Apr 2024 07:29:25 -0700 (PDT)
Message-ID: <130c31dc-5224-4442-bae3-88ed0ec23fe2@linaro.org>
Date: Mon, 22 Apr 2024 16:29:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 7/7] arm64: dts: qcom: ipq9574: add PCIe2 nodes
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 mr.nuke.me@gmail.com
Cc: Bjorn Andersson <andersson@kernel.org>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-clk@vger.kernel.org
References: <20240415182052.374494-1-mr.nuke.me@gmail.com>
 <20240415182052.374494-8-mr.nuke.me@gmail.com>
 <20240417073412.GD3894@thinkpad>
 <e8957b07-692f-7d38-e276-b0e3791d31f4@gmail.com>
 <20240422071054.GA9522@thinkpad>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240422071054.GA9522@thinkpad>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240422_072930_078106_AB19CA78 
X-CRM114-Status: UNSURE (   5.12  )
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



[...]


>>>> +
>>>> +			#interrupt-cells = <1>;
>>>> +			interrupt-map-mask = <0 0 0 0x7>;
>>>> +			interrupt-map = <0 0 0 1 &intc 0 0 164
>>>> +					 IRQ_TYPE_LEVEL_HIGH>, /* int_a */
>>>> +					<0 0 0 2 &intc 0 0 165
>>>> +					 IRQ_TYPE_LEVEL_HIGH>, /* int_b */
>>>> +					<0 0 0 3 &intc 0 0 186
>>>> +					 IRQ_TYPE_LEVEL_HIGH>, /* int_c */
>>>> +					<0 0 0 4 &intc 0 0 187
>>>> +					 IRQ_TYPE_LEVEL_HIGH>; /* int_d */
>>>
>>> Use a single line for each INTX entry even if it exceeds 80 column width.
>>
>> Yes. Will do.

And drop the /* int_x */ comments

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
