Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72818FA3745
	for <linux-phy@archiver.kernel.org>; Sun, 30 Oct 2022 14:26:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tVjlJ6GY388fwvH0qNB2X5kK4R0Cn6YZBXeh8+GkWqM=; b=g8JNdLrFsS8xuP
	JWCik9aQ00ksnhOQqh1OQ8vXU7DUUU9LVxDCtKudlVeSKavNMK6dr5NTQrII0XOuUcuCgNYz3/Sd9
	6LcQ1s0hsu4m9Mf8aA3WDpbXVgpnQP1RffFcEx6m+td4PNQNU0Fdr7Gi2MgRpuO/MmnLHzy2jymIT
	tFfFgAcNPj3Sqgq/GBnhKGNkmkQkjFpkHzZIvjI0nQDMn0pn7tPCt7UlMLH8Ios3oi1uivQcjL1Jk
	udaLzGJRMCUi9qEV96hK5f5xk1sCO270aS28Vu24ip435dnZwyTV0AjmAVj6tVDNlDqvW4MsDhvZG
	LSi5R59eMyhYiPP/gK9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1op9GY-00Gs9W-PG; Sun, 30 Oct 2022 14:26:22 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1op9GV-00Gs4v-Pa
	for linux-phy@lists.infradead.org; Sun, 30 Oct 2022 14:26:21 +0000
Received: by mail-lj1-x234.google.com with SMTP id u11so13956236ljk.6
        for <linux-phy@lists.infradead.org>; Sun, 30 Oct 2022 07:26:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=km6wTK9gxRICmw3iQSSF3JcpeR0eL80m2+vYs16O/UQ=;
        b=V1zyLgdo5YBUiVFFhEx4zgY3FiUrLOcOpn+wGpxtoWgS4fkYBeYa/p05+nKo9VEEBp
         v4LQhI0o8sv8o4XYdCIuPTzMr14KfVRf4SNtsIAEyNg9Jd0wjPzVCFWYY3Kk2HVO6nSw
         cgIS6tSmxGWiuXkZTTkLHlpEAVeUmlemYIHu5oP0nunhiPvWih8O43ZG8f2w2hwPd6kX
         1wHpdHkeMTCZKXjZuxf3vvAnzbn4LDUKtzn1CHFBU1ZiH7n5kMww/7khN+EDtD9P9IHq
         oFm1EWAQdBcV7UvNrfK0aShRqJ4sMGeXt1AuN5nnVMI9xfPqLeXrt9cY3It1kqxEhNt0
         bBJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=km6wTK9gxRICmw3iQSSF3JcpeR0eL80m2+vYs16O/UQ=;
        b=8C89Qz0Q6Vs3PUE163tARURCM9qtBNO0174tSGdnoVlR2yej1D9LUTD4rpiZ++MxRE
         XBwM+ps0gB3RXgaXHX/ypidzxdqQqxB05XxMiK95QmJx3o22xx2k4P6jQS00topv2BFd
         kkOGxGjlSsOvf5UVpujJhqrtZ2U2641WpsKUyEqaj8Uv3oJyrd8usIBxjQdZvwJlzsg1
         13gaqSJzQfHsCWg+eGg3rTJVcwMKXnLTqIdRX985qbJ6LaofW6TZx1PG0R4KNORMEyf4
         VQEzdQ91cWQQz9+FkXHMp23wCiehqXgdpa452oqxGi4q598TSnX79FB7TLpN5bLcr+q1
         cKIg==
X-Gm-Message-State: ACrzQf2dADVM65cSFE0ydJ14tUGTp7u55An+MOiEN7BNPJW3q7D9LFme
	Foz1L/+5jJw2V8rkp191XmvuFA==
X-Google-Smtp-Source: AMsMyM5cnvx25mpAcD4KhlBDyl+lCQToilLxqqHXKf5AeiIp0KAacgeT10PKwy3Nv+iNARZthnMX3g==
X-Received: by 2002:a05:651c:1038:b0:277:5452:60f6 with SMTP id w24-20020a05651c103800b00277545260f6mr584140ljm.21.1667139975982;
        Sun, 30 Oct 2022 07:26:15 -0700 (PDT)
Received: from [10.27.10.248] ([195.165.23.90])
        by smtp.gmail.com with ESMTPSA id c27-20020a056512239b00b0049487818dd9sm818086lfv.60.2022.10.30.07.26.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 30 Oct 2022 07:26:15 -0700 (PDT)
Message-ID: <ffabb95a-8994-a695-255a-b19c25b9fbfa@linaro.org>
Date: Sun, 30 Oct 2022 17:26:14 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH v1 0/7] PCI/phy: Add support for PCI on sm8350 platform
Content-Language: en-GB
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Jingoo Han <jingoohan1@gmail.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Johan Hovold <johan@kernel.org>,
 linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org
References: <20221030122301.GA1022001@bhelgaas>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221030122301.GA1022001@bhelgaas>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221030_072619_877883_A1F6F380 
X-CRM114-Status: GOOD (  15.83  )
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

On 30/10/2022 15:23, Bjorn Helgaas wrote:
> On Sun, Oct 30, 2022 at 12:13:05AM +0300, Dmitry Baryshkov wrote:
>> SM8350 is one of the recent Qualcomm platforms which lacks PCIe support.
> 
> I guess the "platform" (the hardware) has PCIe, but the current driver
> doesn't support it?

Yes.

> 
>> Use sm8450 PHY tables to add support for the PCIe hosts on Qualcomm SM8350 platform.
>>
>> Note: the PCIe0 table is based on the v2.1 tables, so it might work
>> incorrectly on earlier platforms.
> 
> I'm not sure what this means in terms of applying this series.  It
> sounds like "this series might break earlier platforms".  That
> wouldn't be good, so I assume it's more subtle than that.
> 
> I guess "v2.1 tables" refers to "PHY config tables"?  "PCIe0" appears
> mostly in [6/7] as a 1-lane Gen3 host.  "v2.1" and "v2_1" don't appear
> at all.  I can't quite figure out what symbols in the patches these
> refer to.

Oh, excuse me. There were several revisions of sm8350 SoC (1.0, 2.0, 
2.1), with slight differences in the PHY programming. Usually we support 
only the latest version, which is the version going into 
mass-production. I'll expand the description in the v2.

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
