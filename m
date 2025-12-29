Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78385E92FC8
	for <linux-phy@archiver.kernel.org>; Mon, 29 Dec 2025 17:51:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VyY03bPOUj2FmhQFOvRmJ6nXYLbqiOn2N7VfwZnCvHQ=; b=VkbIg6pr/2UhQI
	cxp3lHttMCUorKo9j5aqrbl0Y7CYYBzR8FDqlph68LbYUHNegUrr8wScn8b7vH0GeNqGBXaEwTpzY
	CJTTSS6pEei4wC+e65vbBLjOYI5l8pd+DpN1aUd28K7GMY0n+vb2mk5s8GpNGzR44VXF0umzr/7f1
	6va+3qdm33eFC+o698WmoHRpFM0s+kth3aPew2biY2IG6HVfv8cSe1ikmsk6OZn4vsX1MTfyF8Eo2
	W4hD2xtiep6RDgvW3QB9LmCSEGgGonQe7mpKWa57d7rYCyYS780tLL4YcJYZDc31F/RCeEhXd4t7M
	xOyyjlV/ypup9nd2TqZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vaHOk-00000003vWG-2z2i;
	Mon, 29 Dec 2025 17:51:14 +0000
Received: from mail-qv1-xf42.google.com ([2607:f8b0:4864:20::f42])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vaHOd-00000003vVN-3R7d
	for linux-phy@lists.infradead.org;
	Mon, 29 Dec 2025 17:51:13 +0000
Received: by mail-qv1-xf42.google.com with SMTP id 6a1803df08f44-8888546d570so134559096d6.2
        for <linux-phy@lists.infradead.org>; Mon, 29 Dec 2025 09:51:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1767030666; x=1767635466; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qBVKZpfddpe+Ns0g7Sdt2AUT7i0mQvsGFZpu3wnG5ic=;
        b=NTnRojrnqkf8hCa5CeOKUZoO1VGk2KhpIe8whABCOkhJRuRnmDMU6hEiuZWYCCKyeq
         A935L2Dfcp5fTQMP6flf/kLbKtMxmrWj12PLukhB/P6KotUoy0mX/6rvY65DuXsAKUMv
         PY9xG32uyRtRVAGMWY5ERORFb9a4q56OjQgvmXLIalCKQYYpMIpgfjfBmZ8nQH9AaEZW
         z1dCS5keoMsT3AD5jC6HRd8gZrHfk0I0crwbjrqPvf5zG6Mvg50GPO5hO1ys+43C2+q7
         TkEOtB4QV5H8uuczHkvOGXnVahGGNvHA4HANFjeF85Lz2pl9L0oVyF9K91JCSAH8cyPZ
         pDqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767030666; x=1767635466;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qBVKZpfddpe+Ns0g7Sdt2AUT7i0mQvsGFZpu3wnG5ic=;
        b=p1X3cUxcn4iTdd8VlYqAFKCQLTLZoOF3SYxpIEEIiSS6vajQFGjZBZwPQ3wj5ZNsIJ
         PW2C/vSNr41Lwst5CskLDUGesqoeMWy8pTlathcwHNONDlTMXUWmaXAnIKgBOj9joLAf
         gBo95cX5oy0eQpsSyPL2xmoUwt4nWLnEhV/VZW5Mfi9oUUN9EQglvmeiLa11VAvOrAg2
         jqTbnk2MjEXf7nHL8FFRVhvl11D41BlJruTovuLiB2aj2wtPllUA7/nn6Z9iDOXcgBIS
         xZVgNtdv0bP9782E6fc6c4R8gB2UKb46RltaSR/bKqG2NAm/1yDMnAiJx5XCVh3yrphN
         S1jw==
X-Forwarded-Encrypted: i=1; AJvYcCUJBWcqDeeURhPRHZnUqaYSGLDvWszltujVxI+/Mxv+gJQdER06+RqERDYBUY2aIQoQ5wN+MAF3dek=@lists.infradead.org
X-Gm-Message-State: AOJu0YzfTaRVvc9kX9VFra3P59dcdOYsLiik/WRHzlzv8EEo2U4r9Ufl
	ny1tId9jH6o+XqY2sphX9Zrr7wyQUBHRfA6FNKGsNMDUCYldrAf58t9WUc94LsKr5I36826VBq2
	y2iQT
X-Gm-Gg: AY/fxX6PfHs378uSTHfTGX2ExGBSJzNmoLAORmUot83vg5oCj/L/6SlV0dEaxkoXwOM
	pLKDLWQit+Z2f2mGutuFtQsjFGQJBcaJHhy6T2wRnlteEC4hp8aQckqvjzd4GW4IdbrdJKEa0jS
	SnNTTRGlHZL0BJBvtEEhPvEyAjzaVNEZPNYsKAyuiVuwSqWrSNidmf57vSnR5JW0+EwQmMeoFKJ
	t5ln9AY4EJK2fU9/W/LoOFmgU/EccwFBUDn7JglE/9GTetVAB2f8SNYJafT2hBOk9om1Lir9Hkq
	KHMr0qyxYjmBEffI9Ipft9KscX4um3eh30E1XNEILLvu8UXgr4mMeIeZMdt5DnGtFB1jYs9Cnil
	38thJmCafHOZqqL+PmVIjz6Z3GMG8KhUFts2S+bZ/T+XZBVFkL9Gi6oAGZQw5oq24s7CRx3l3Kn
	0TTk96vg9g05EbFuTPd5YaIOsh6w==
X-Google-Smtp-Source: AGHT+IEsUPVraniMkuTWC397mM/y7CFhjYXQZl0a4mAweu2WnF2gu2AEx/7J4AZSNaZAIT/grNKtTA==
X-Received: by 2002:a05:622a:550f:b0:4ed:6e15:d2cc with SMTP id d75a77b69052e-4f4abd72019mr459440771cf.54.1767030666405;
        Mon, 29 Dec 2025 09:51:06 -0800 (PST)
Received: from [10.211.55.5] ([209.81.125.20])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4f4da7c31a1sm145471851cf.5.2025.12.29.09.51.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Dec 2025 09:51:06 -0800 (PST)
Message-ID: <85d045be-7b18-4bf5-b6a1-09e723cad2a0@riscstar.com>
Date: Mon, 29 Dec 2025 11:51:04 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: Kconfig: spacemit: add COMMON_CLK dependency
To: Vinod Koul <vkoul@kernel.org>
Cc: neil.armstrong@linaro.org, dlan@gentoo.org, pjw@kernel.org,
 palmer@dabbelt.com, aou@eecs.berkeley.edu, alex@ghiti.fr,
 guodong@riscstar.com, linux-phy@lists.infradead.org,
 spacemit@lists.linux.dev, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel test robot <lkp@intel.com>
References: <20251226173228.2020411-1-elder@riscstar.com>
 <aVKy87c7afpWIx33@vaman>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <aVKy87c7afpWIx33@vaman>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251229_095112_415642_A6315FEC 
X-CRM114-Status: GOOD (  14.05  )
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

On 12/29/25 10:57 AM, Vinod Koul wrote:
> On 26-12-25, 11:32, Alex Elder wrote:
>> The SpacemiT PCIe PHY driver depends on the common clock framework.
>> Not specifying that led to a failure when doing a COMPILE_TEST build
>> for the SPARC architecture.
>>
>> Reported-by: kernel test robot <lkp@intel.com>
>> Closes: https://lore.kernel.org/oe-kbuild-all/202512251903.sTVZgg6c-lkp@intel.com/
>> Signed-off-by: Alex Elder <elder@riscstar.com>
>> ---
>> Note:  This is based on phy/next, which I find doesn't currently build
>>         cleanly using "arch/riscv/configs/defconfig".
> 
> I dont build rsicv, I should add that. What is the failure you see,
> looking at changes I dont see anything that might break this


The clock calls are not defined in the SPARC environment.

   phy-spacemit-k1-pcie.o: in function `k1_pcie_phy_pll_setup':
   phy-spacemit-k1-pcie.c:299: undefined reference to `devm_clk_hw_register'
   phy-spacemit-k1-pcie.c:306: undefined reference to `devm_clk_hw_get_clk'

https://lore.kernel.org/oe-kbuild-all/202512251903.sTVZgg6c-lkp@intel.com/

(I now realize you can just click on the "Closes" link.)

					-Alex

>>
>>   drivers/phy/Kconfig | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/drivers/phy/Kconfig b/drivers/phy/Kconfig
>> index aa2d30e0e3261..3bc7378ea8658 100644
>> --- a/drivers/phy/Kconfig
>> +++ b/drivers/phy/Kconfig
>> @@ -104,6 +104,7 @@ config PHY_NXP_PTN3222
>>   config PHY_SPACEMIT_K1_PCIE
>>   	tristate "PCIe and combo PHY driver for the SpacemiT K1 SoC"
>>   	depends on ARCH_SPACEMIT || COMPILE_TEST
>> +	depends on COMMON_CLK
>>   	depends on HAS_IOMEM
>>   	depends on OF
>>   	select GENERIC_PHY
>>
>> base-commit: 27287e3b52b5954b73203d32ee76ffd5f53f5074
>> -- 
>> 2.48.1
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
