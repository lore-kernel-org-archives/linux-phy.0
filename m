Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E8EAC43217
	for <linux-phy@archiver.kernel.org>; Thu, 10 Nov 2022 18:25:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rANBMpQ8OeKxKFBiajx1PIJ/JPPJq0zKvqObhKa0Es4=; b=zaADCTQUfB72s/
	2oxkhY4VNFAraXyBJciZNXIgGHgOrSCzf6T32zLEfkEsvAji2ti6jmMaoz7EAKex/TrpDqlIRP/R1
	e8d8qgY6Di985M5LxQnqaxcX8Po4ngRuaS9N3S6j3/c0PoxYnxa9ApX3yiWeiv7/8qIqPHYh4Wkkb
	JrHrVLFruL1jc/+ZFQxn1V5PL0oGBmT01BsfssO5RiTkr3hHmlbHvzyL/gnl4oD1vtJM+HOwuuCqN
	UjuwQYro1W7+YNkNhJrxzGKrIGiQ1peYrY9ApkgOUuKEHEcd+gFHFurVS33SiMY76EGuw5PuZone8
	8pzmhlOjgeSaNSwgW0Aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otCEW-0086cp-Mj; Thu, 10 Nov 2022 18:25:00 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otCEU-0086ae-S6
	for linux-phy@lists.infradead.org; Thu, 10 Nov 2022 18:25:00 +0000
Received: by mail-lj1-x22d.google.com with SMTP id s24so1875401ljs.11
        for <linux-phy@lists.infradead.org>; Thu, 10 Nov 2022 10:24:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oTCljyMcfKbw9XuCwVZ96+0GS37u6vdCB1YXTkk2DbY=;
        b=vgY5Suhil67GTfIoiXw9WZ7OJAiXbWsB4vAomJN5mRDzZhxWWYIGtG4xXlaRZBVa+Q
         3IX5M7+4kBtM8jmo5CaVSSckv6h0t/XEkpMYp6mPOrv+r8oMX41YEhUQaqJErBaKFUTC
         xVZiSUmc0YTowc2kBjowNF9AG3gMLSqq9RblZW125yG00f3P7eidSvxx+AN30nETvTBd
         ycMuObSamOfl5KDXJEPcDNSBfEk6QWCPlk7YF5pXh68FC2sNYFv8YMvoKLbNgInue0py
         9upgXDIuRj3mFqML8LMsFOvnpsjreizn8WUFZ6oGrorR6AUhcQwjQXrmr+ZkjdefjHtS
         ea0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oTCljyMcfKbw9XuCwVZ96+0GS37u6vdCB1YXTkk2DbY=;
        b=PDHcsQ6X7jqeWKFE0IqGgC8SYZOqp10Lj+cyWeDu8BLGf+4qHekVURylQg7WfpgpEI
         hKfVIGFeIHjLe2isqNMEXYZ2x17I9+wT4S6QEANq3qmZ35sF3U3tFsQX7Wp4+MUFTV5I
         jwlObJzNukF3sEGJMajifAY6aVGT+vispirtvAAhdawiW1eR8C28H6FQ5r36wXVqAGU2
         ZejoBhLzIreVEjugVss/2ehMoXdxAxVrGIZ2+T4bo14NlPmIL1CWlZ07PajxO+NBRRng
         nwJ8MUgwdiuGBhAEX7sg5bqaJkC//4uLXCv9PTC8VTpfDL5JKxdJzJ0YvOZUqvaahrdw
         9jFQ==
X-Gm-Message-State: ACrzQf0bhN5YF7QOgMMoubIetEas9IroA419ED/3pm4XRjvDtrCVmOg9
	40MyF4MbfkjgMSugb3wGWfWmbQ==
X-Google-Smtp-Source: AMsMyM76w/nQzUSHmnb3AL1cENN8yfaY5B4sedrM44S2hCEC45mvyP0EBMTkqxR882LvtfQBzQJtdA==
X-Received: by 2002:a2e:9110:0:b0:277:aed:be6b with SMTP id m16-20020a2e9110000000b002770aedbe6bmr9330937ljg.322.1668104693699;
        Thu, 10 Nov 2022 10:24:53 -0800 (PST)
Received: from [10.10.15.130] ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id h8-20020a05651c124800b0027758f0619fsm21005ljh.132.2022.11.10.10.24.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Nov 2022 10:24:53 -0800 (PST)
Message-ID: <a480bc4a-7088-dfed-7cd7-a14665022d15@linaro.org>
Date: Thu, 10 Nov 2022 21:24:52 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH v2 6/8] phy: qcom-qmp-pcie: add support for sm8350
 platform
Content-Language: en-GB
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Jingoo Han <jingoohan1@gmail.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, Johan Hovold <johan@kernel.org>,
 linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org
References: <20221110103345.729018-1-dmitry.baryshkov@linaro.org>
 <20221110103345.729018-7-dmitry.baryshkov@linaro.org>
In-Reply-To: <20221110103345.729018-7-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221110_102458_959196_696848B2 
X-CRM114-Status: GOOD (  12.04  )
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

On 10/11/2022 13:33, Dmitry Baryshkov wrote:
> Add support for a single-lane and two-lane PCIe PHYs found on Qualcomm
> SM8350 platform.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 120 ++++++++++++++++++++++-
>   1 file changed, 119 insertions(+), 1 deletion(-)

Argh, this will not compile against the current phy/next. I'll have to 
send v3.

> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index 4a55b2439952..a1f5d31d161b 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
