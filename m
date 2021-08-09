Return-Path: <SRS0=DrSA=NA=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.2 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 436BBC4338F
	for <linux-phy@archiver.kernel.org>; Mon,  9 Aug 2021 14:20:55 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D8DBF60F38
	for <linux-phy@archiver.kernel.org>; Mon,  9 Aug 2021 14:20:54 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org D8DBF60F38
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9JOY1gv2SepFOnQWFAnVsa0tIWrrs+YJeECtuyd8+64=; b=17fPNx/h2uLnzwyLOPvWUepwqE
	sFSOzV4ZWR94P+PqmOhXkYIy++t/466CEV8s55vLvJkgBNekeBMSimJHYuEj3kf8JvA5FchwAut1M
	YYG6aWhh+mjaiL5j5LCzSMfDId+YY6oBFkPmVAsrKxps3yEiBhojTAo60A7zDPMEnb4QTvb4GcnfQ
	tnoROopYykpn0jrBRFgFNTwg9H5RFzJOyyBbBpbbCvN8E/IhuAszjhiw3w7q13C7wET0pt+WL1ljO
	FDtidIjGVPT/QGynTwl5Vg5huaZaO2AkzItQN9y2NHMqjw9Q/oCPqvSaC7ps+Z/wBtwFgNnL7Juwd
	dgBEVk/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mD698-000uAa-AW; Mon, 09 Aug 2021 14:20:54 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mD695-000u9k-6G
 for linux-phy@lists.infradead.org; Mon, 09 Aug 2021 14:20:53 +0000
Received: by mail-ej1-x62d.google.com with SMTP id h9so8432156ejs.4
 for <linux-phy@lists.infradead.org>; Mon, 09 Aug 2021 07:20:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=2cUuPYheF7MpNqTwmGksBjO3uT7MgJxG2duLlVpcdEg=;
 b=HQhlOG1qilaHj8fq09Fqf0ObdBnluClzIRXwKwTDW/AxKwIKrxPxMr/q4MZoYoGDYO
 s+Zv6Eu0UyeLWMZQmdexaK8aBnXYOR1JtI8oXxw5YVmlTmyRTUgT9zpiO86oaKfuKw44
 u0yuho9F5bkPEpDyYQYcoEuCL4fZZwONtHkCeYBNRnVPzDnXwtOISZ3rIwng59X4iSon
 067t52Cydzh0IBlSg4h32h8gygN/jGHwpsTsYc+cjiZvjkqwr0WnYLMXcYeOW3Mh5tub
 OvccNfKSMokynCAmKxPCDwdc574IgyBX9VYW20p0VK0vUyBYu0FD9Hs3ybxpIE+m11m1
 1Xrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=2cUuPYheF7MpNqTwmGksBjO3uT7MgJxG2duLlVpcdEg=;
 b=s0uCEA6SnfxRUt8K3s3MvM7NJ+y3eMGRgD4tFuKPfEAaSA2bOjNStwx/aOEoF6D1oQ
 P3a7XVml96hQdi9U1zmjKl8YSAq38lISc2aKR7+RSCPJh2GYdFH8vP4tTBDMxnIJ5SbO
 am5M3LKYXNtL2HRuSg+fNsxl96+myegVCx3gjaVCRC8fQgplfDSfCE5Uxasnv1vrolRI
 1wObnSh+NdH/AGV7AHu+1rAyP3w1Tyh6ANFusaUwBZXOU6qh9Zdb3mktG8upRkR786i/
 ILRrKsT+JxoryYb3ZsZaDVwm5GmCjUv2d09wKhRvEZf8TxIttt/FXzICfMJnfS92IUhm
 1KoQ==
X-Gm-Message-State: AOAM530IrmWSrjMcqVQa8Q0wgF0u6Wke14XDX5ZonVs/F98vETFMnPRH
 y/ER7GUCXPrx1dqLkCDXnxQ=
X-Google-Smtp-Source: ABdhPJz03F2uAVUGP5q+NA2jld4YbX5aZlleBTxfZ444Es0V26qTKLs/CZWAidCDgUSvQO8vJ8sorA==
X-Received: by 2002:a17:906:a044:: with SMTP id
 bg4mr19463635ejb.312.1628518848683; 
 Mon, 09 Aug 2021 07:20:48 -0700 (PDT)
Received: from [192.168.74.110] (178-169-161-196.razgrad.ddns.bulsat.com.
 [178.169.161.196])
 by smtp.gmail.com with ESMTPSA id i10sm8141488edf.12.2021.08.09.07.20.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 09 Aug 2021 07:20:48 -0700 (PDT)
Subject: Re: [PATCH v1 2/2] phy: qcom-qmp: Add support for SM6115 UFS phy
To: Vinod Koul <vkoul@kernel.org>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>,
 Andy Gross <agross@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Manu Gautam <mgautam@codeaurora.org>, Rob Herring <robh+dt@kernel.org>,
 devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
References: <20210805091727.942471-1-iskren.chernev@gmail.com>
 <20210805091727.942471-3-iskren.chernev@gmail.com> <YQ0xrgDjxXeNecAS@matsya>
 <86fcdc11-9f2c-0aa0-ebab-a26fa9ac2aca@gmail.com> <YRCzi9tXsUVi5kHS@matsya>
From: Iskren Chernev <iskren.chernev@gmail.com>
Message-ID: <c780ad2a-2292-6e06-fa89-4c8a5139c253@gmail.com>
Date: Mon, 9 Aug 2021 17:20:45 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <YRCzi9tXsUVi5kHS@matsya>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210809_072051_288687_A8CF030F 
X-CRM114-Status: GOOD (  19.50  )
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



On 8/9/21 7:48 AM, Vinod Koul wrote:
> On 06-08-21, 19:09, Iskren Chernev wrote:
>> On 8/6/21 3:57 PM, Vinod Koul wrote:
>>> On 05-08-21, 12:17, Iskren Chernev wrote:
> 
>>> why are these registers 660 specific and not V3 like we have for
>>> other generations..? Quick looks with V3 regs tells me that seem
>>> similar....
>>>
>>
>> Well, I looked at them for a long time and the only thing that is similar
>> are the first few QSERDES registers from COM_ATB_SEL1=0x000 to
>> COM_BIAS_EN_CLKBUFLR_EN=0x034. Everything else is different. So I can re-use
> 
> Is the offset different? I thought all Vn registers across chips do have
> same offsets..

Upon closer inspection, for the SERDES registers they are 19 common (the first
19), the others are different (different values, different names). About the
offsets that stay in DT -- they are the same for V3 and V3-660 (I haven't send
DT yet). Just to be clear, offset the is thing you add to each register to get
an actual register value, mainline uses relative offsets (base / offset in DT),
downstream uses a macro for each register group and the offset is hardcoded in
code. Link to the DT (will be submitted after core drivers are merged) [1]

[1] https://gitlab.com/ichernev/linux-postmarketos/-/blob/b44c853caf37dd73e059628a1831ad185356a33e/arch/arm64/boot/dts/qcom/sm4250.dtsi#L878

> 
>> the V3 for the similar regs, but they are 10%, so I figured instead of combing
>> through all of the sequences to save 10% of the constants and make it slightly
>> less readable just use new constants.
>>
>> Let me know if I should reuse the 14 regs from V3.
> 
> reuse yes, but would like to understand more why offsets are different,
> 
> Can you point me to downstream code reference for this?

As I said, the offsets are the same, the first 19 serdes relative
addresses/names are the same (can be reused), the rest is all different.
I wrote a tool to compare names and values, I can paste those as well if
needed.


This is a link to the downstream code (header) [2]


[2] https://github.com/OnePlusOSS/android_kernel_oneplus_sm4250/blob/oneplus/SM4250_Q_10.0/drivers/phy/qualcomm/phy-qcom-ufs-qmp-v3-660.h

I will do a v2 with the 19 regs reused from the v3 bunch.

Regards,
Iskren

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
