Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ABFD3CA0EC7
	for <linux-phy@archiver.kernel.org>; Mon, 11 Sep 2023 21:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2Hsi9j8/IJvOjJpfdx0TVAK4W+yVWMxCtOzzKAQJehE=; b=MaFn0gPIT8WKNM
	MU9uyAyvKgGsRMtNn1PkBtinfXT+ay3+IAZbysQdaSNhw5UQV8x+8Hsp7T3Wd/qf5Ek+ydjL+jmby
	bQn7ndtYwKRt17HWmh7UY3brltVmHmUyq1j+OYki2hFCg+Z6a1iTND0IRLoULlM/QB5506sIKxKmw
	63YW4YX4w1GyoGx54UBJdkezzaiYyQoBkWnd7mamgVIL57yqm7wx3YaAsJ4T4CXbRlJNPnjuqEWiU
	/xpnuiRpt6wStYuQJABmwvdAlmoPLfKV+2pwJNYSjLZ/YNmJM7yZswjZwKlIJn+7cZbs/1HLPi3JR
	s/EFcafESvabz4ntOnYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qfoLV-001Mpb-1C;
	Mon, 11 Sep 2023 21:21:25 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qfoLT-001MpT-2v
	for linux-phy@bombadil.infradead.org;
	Mon, 11 Sep 2023 21:21:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=n9+eoOqI90b5IJoojeBPaTvWJ+0uXFVbfQP0VbvcLzI=; b=HjpdGGi7JEkfxQsByfpP3ByqdJ
	zLSOv+tIianiClD22PjBrBKR3F1wMS2GaAHOSHrxaWC9e8BGm6INXmhfYLpOm3zYjEUyXKNuY6AXh
	GD3zd/kbEqWloUz1YQ3pso8xCtzY6NbhR47YsQrXR/uyM4ki1zzuc2gj75RYEFyTZTHTnPbR4eJ1u
	nQJkLbiaWYPvmSr4oK5t7hP4SOVzFvjISgAsr55Feu8Vo7lI5fLI6ukkzdkHyP1BzSIgPWulm1BHC
	L2Rd5J4hGWZu52kYAXsAsBGU5SxdBo7mg32ksQH5Z1ouWvMtQeGk4uU3fVPSAXwv+IZYJa1LJyjDo
	NEmz/SGg==;
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qfoLM-005G3X-0J
	for linux-phy@lists.infradead.org;
	Mon, 11 Sep 2023 21:21:22 +0000
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-500a398cda5so8162213e87.0
        for <linux-phy@lists.infradead.org>; Mon, 11 Sep 2023 14:21:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694467270; x=1695072070; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=n9+eoOqI90b5IJoojeBPaTvWJ+0uXFVbfQP0VbvcLzI=;
        b=X2l02HONPj2OUwgsJ45y5AKQecTRbTY6rS9aieSnaLXjldZ5tbG8m1uMpmkFzyv1O9
         gDTKQYIWs43M1pxe2DTdEGpxw9rrj2k91LTHZP3V/70JBnyHjUip5tb1l6S7yGRgxdfJ
         cy0Mv03tewPu22IuEvS6Qqu7SZZE9kw6gKoHlsRKYW3TvAS6i2l0RHVJ10fm2KsjpsNX
         4QKGoaiQFKU3w3Zx63zxHwxXi08TUh/AUkEaxg9n/SC3STh2E2At7NFJF2KyxfLCDL3S
         PJPWZxO/0icdBQ3HXEsJ+oavuowxKtyI5Xyo4oQ2le62cMCBwmWsRoO6tokMvoCHt4G5
         BySQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694467270; x=1695072070;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=n9+eoOqI90b5IJoojeBPaTvWJ+0uXFVbfQP0VbvcLzI=;
        b=sYLeMUaZYGDgKIgJcOj5w8ToMzh9qJ+y2BfXZbjKz6jcSLR4+1R+qatweecqx3nh8l
         nZtrRhqZ14ETJquCPdKPuvg2dey/221SNZmysL4LIaLhxf791GbDflC29Mo6GMFwER+e
         YebWFuRI+wTa6klxbE59KGP+iQvG4ZJUrsIpx+anX+lQ1Fk6s+blS6ZIYwsDfPiynJah
         iV5ZwZGLwfUY4x5KcL4Pz5C7Pb+JguV1cdweqCJoBXApLdTJOfAh5shhIxDA5Shms74I
         EogDoJCDirQrVgt45YLOqgyLeOVMsPDVcqt7btF9U00bNspGekRiBP2qashObOVqYoo1
         YwwQ==
X-Gm-Message-State: AOJu0Yx4tDOVMRHJrPpWAb5eY8VXaEiVngVLnyh7ZZ34RwcsjtJ/S3JF
	iyLpBKY52XwrXL3sflg7negdNh6H248m3rVO/RntTA==
X-Google-Smtp-Source: AGHT+IGBNgSqZ3PSFJY/fSPj/T1VCyEcoWAFXn3cHPB0W49tYwur5uJq49LDYKVIjCN9Ln6+GBh8Sw==
X-Received: by 2002:ac2:4db8:0:b0:500:b2c9:7da9 with SMTP id h24-20020ac24db8000000b00500b2c97da9mr8667990lfe.45.1694467270569;
        Mon, 11 Sep 2023 14:21:10 -0700 (PDT)
Received: from [192.168.37.232] (178235177248.dynamic-4-waw-k-1-1-0.vectranet.pl. [178.235.177.248])
        by smtp.gmail.com with ESMTPSA id s21-20020a170906961500b009937dbabbd5sm5841046ejx.220.2023.09.11.14.21.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Sep 2023 14:21:10 -0700 (PDT)
Message-ID: <a59aea0b-033d-4862-9d49-8d276d96e970@linaro.org>
Date: Mon, 11 Sep 2023 23:21:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] phy: qcom-qmp-combo: use v6 registers in v6 regs
 layout
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org
References: <20230911203842.778411-1-dmitry.baryshkov@linaro.org>
 <20230911203842.778411-4-dmitry.baryshkov@linaro.org>
 <2e78c237-d321-4b85-96d5-0568f1a46601@linaro.org>
 <CAA8EJpqNbykWGEGOKMDHK3OehV5ezsA8T4HcX8kadefBdSmUkg@mail.gmail.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <CAA8EJpqNbykWGEGOKMDHK3OehV5ezsA8T4HcX8kadefBdSmUkg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230911_222117_881539_AA0D928D 
X-CRM114-Status: UNSURE (   8.29  )
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

On 11.09.2023 23:17, Dmitry Baryshkov wrote:
> On Mon, 11 Sept 2023 at 23:42, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>>
>> On 11.09.2023 22:38, Dmitry Baryshkov wrote:
>>> Make sure that we use only v6 registers in qmp_v6_usb3phy_regs_layout.
>>>
>>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>>> ---
>> [...]
>>
>>>  /* Only for QMP V6 PHY - USB3 have different offsets than V5 */
>> This comment becomes invalid
> 
> This actually rises the question, why was it called v6 in the first place?
if "it" == the qmpphy "v6"
	return "perhaps v5 was mostly ok but needed evolution";

Konrad
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
