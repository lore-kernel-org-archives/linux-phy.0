Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C252C4828D
	for <linux-phy@archiver.kernel.org>; Thu,  1 Feb 2024 19:16:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ua8wxjQShM/rab00DpJIhBmskui16rasg1v4cmAXSAE=; b=yU93li8PJVLdXO
	vuILkxNVf72CRSotKkzlCyTFYzO0e/oFrRlFTsSeb05TbzSj8ib74kY/mtxal8Yq64NCTxXxexcb/
	sT6ljdgAiSXHbq4O1tblWnXC+S4AugPXIePiyhO8DuBVND2+jrB7+kqcWdd+iqnhk5eQCTNTeLT5n
	Ad5bkpw013LgRhwA+SS+XnOgZHv2gk3CeGZXDKbCF0up+QChKue5x1vQgMZur2zTju+w2+jteU7M4
	BBCjT9HTlaR7z8sjv/TU1q1NR1HXAxRlQuEGT2oh/iR6eDiZLckp00VLEgertDWG647nIDw7mh9/u
	KXQP0jKXzhP1iO0cEotg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVcYE-000000098em-176v;
	Thu, 01 Feb 2024 19:16:42 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVcYB-000000098dt-3PCS
	for linux-phy@lists.infradead.org;
	Thu, 01 Feb 2024 19:16:41 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-51121c08535so2061422e87.3
        for <linux-phy@lists.infradead.org>; Thu, 01 Feb 2024 11:16:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706814997; x=1707419797; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hoIj9II25PNIZhnmzc7SonBXWyc/dj/iIiU1Yyw7lNg=;
        b=zZ9CDx9lEZ0B5dsrXZAp8wy4ptln9Wd74ZuWVL17TsrTzFKPVz4nuU4kGmYM77mgrT
         xHaeZoTNSz0zW4BYCya5kMaA7L34vwUE3z831qkR+QtZ7Yjb32TpuWFoF8oo96ZXCyWi
         ouSm8kKijMUynEn8zscsimrOdP2jOmfpKiMf1yBr3pcqfa9x87AD6gz2m22nQbvjfwey
         wcUPRTz7+Z2B0Dkssq6RTTMlDF4Dl94mci9mICzIoY2HI/QYiSjw4D8P8bAsf5J/4LpX
         Et2dnuzCZkxJpZPL8GldjfE3YRpAIqEHFoslwD3yqsch066B2vEauRoYL8egw/sgJ3If
         ML0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706814997; x=1707419797;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hoIj9II25PNIZhnmzc7SonBXWyc/dj/iIiU1Yyw7lNg=;
        b=ay8JHQglzFladIkQ3FkFm7+tWm3v/qq6+XVTce8mHyqqp5pbbc4rBACdNpPYu4wLEM
         qGAfl+CoAzcMqr1S4sx30voUvVZzZzfpjx1LP0cmuFS8fQrYTlxFEPl5OFkF27f8u2xw
         qMHYaFVD/zL9rv308k84gPEqN6NiWBsaxOl+CPFlhD9cfmucYHECZpd3adQIs+o1XCGJ
         TdF3fBHmlTvb2TEu9/Q7Cfaz4pmNLKuXxRQ7HqICdUVZNK5vaEX+RD+0LsIBiZXahAFT
         ZKRRVW3wReGdsipa4Hu0A/BvGxmNeJPYEufhlpdr1iDg0/8QCg9gL7gZXJ/EfTrp4JGx
         9QcA==
X-Gm-Message-State: AOJu0YxC+YsSig2kKAxjhvVKIri/wUGwuc4laN5S90kK41gbfmdDPFiG
	qrdcHXu798bBEi++XdRQjNo04QnyV8K/qktdqDf+y2LKV9Ya8p2vD/AJWxuTMb8=
X-Google-Smtp-Source: AGHT+IE0U9RFwXa9ogJKDBpgq0w+sUwlvmcEpk0KoM0FFUx9lGsGX5z4ghDUieUh5oipGaoF07To6g==
X-Received: by 2002:a05:6512:1143:b0:511:f41:dff7 with SMTP id m3-20020a056512114300b005110f41dff7mr2139593lfg.56.1706814997345;
        Thu, 01 Feb 2024 11:16:37 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCX7jmPIWKpaz+qEeXcpuehLATCNsmJ943Q2ct/ectfJgLVmPtBuch2JIUSL/trV8bxg7LDYhQRzBRAfWXb7We/ajO3Kca7JJshUQEwY5EFAFx2xL65jn6dEAZMH1UTZ6psmZwEvzdeamDpSvFXSzF+8y4FUtI/7auQYxj6koyd32KsU4JzdOEQ1aQhPR+ACKVhq874oyh2TcxDyXCVOp7tyjKdHQd852702+r5DPUHCxRehnU6SzCFQRcqrheVd+u+EAvos8y/YHFp0m7dJpmYXhrjeBdtKMIAuxEoCV9q95U54l+AG2WSQSM1jjVXqkP3awKQfkhbuNN+JnW1ZEyDAFuE4AMPJikQ2rWuFprsKvajs19vfDwC2lxYJT4FY3pupz58nyvdhWfBAUKOg2qOB+oSrKYOTk8c1vnrt5jr42y3cVvi1vy6Acdh828NBtawpg0QRP+XT9Syhv/cLNtDqt8bMnE7bU4X3+9BfXkc4g7y4U/HtA8IXiAOLDAdh
Received: from [192.168.159.104] (178235179129.dynamic-4-waw-k-1-3-0.vectranet.pl. [178.235.179.129])
        by smtp.gmail.com with ESMTPSA id vk8-20020a170907cbc800b00a36f8fdeb98sm23088ejc.59.2024.02.01.11.16.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Feb 2024 11:16:36 -0800 (PST)
Message-ID: <c7606dea-8b6b-4c9b-9ad0-3516d545a6e4@linaro.org>
Date: Thu, 1 Feb 2024 20:16:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 02/17] phy: qcom-qmp-ufs: Switch to
 devm_clk_bulk_get_all() API
Content-Language: en-US
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, quic_cang@quicinc.com
References: <20240131-ufs-phy-clock-v3-0-58a49d2f4605@linaro.org>
 <20240131-ufs-phy-clock-v3-2-58a49d2f4605@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20240131-ufs-phy-clock-v3-2-58a49d2f4605@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240201_111639_886425_8D1B98C5 
X-CRM114-Status: UNSURE (   8.74  )
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

On 31.01.2024 08:07, Manivannan Sadhasivam wrote:
> Device drivers should just rely on the clocks provided by the devicetree
> and enable/disable them based on the requirement. There is no need to
> validate the clocks provided by devicetree in the driver. That's the job
> of DT schema.
> 
> So let's switch to devm_clk_bulk_get_all() API that just gets the clocks
> provided by devicetree and remove hardcoded clocks info.
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---

Amazing, thanks

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
