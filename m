Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1D27C4332F
	for <linux-phy@archiver.kernel.org>; Wed, 23 Feb 2022 10:15:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JxHdxTTifOML1sSZ3GAW4MmhNoBUtPLrbPmNojhP0QE=; b=VgwRsky8KDFiUS
	oCwo8gKnOcBAg7RxOwCKhWiX+cZ1vSePZl0+y+9c1gAxvZcAJ1XrtYnLO4BMw2iuWHVMdvKJn7Eo6
	t49zXYyokGu5tzeiGg6vCm+6DMUPYREyPNI5ZnLN4LxU99a2Utmj4OJN6QVAuGoZVtSDzVhFEPQ/7
	ef5EyZ238EeSKu9TYcBwJmAcvBMigBvA52f6whrF8Zfij6JHV5ii7yy57JeuNzvr4Lf6U//tq8EEM
	uUufiL1dWpR/ocn2y4PwK7khoEzSHn7JsLK5aXODoCQRTpCDSKlWesIsLY/tAcKF/wKjSGGApHhFI
	ba01Kowz5zv9/pdR64yA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nMogW-00Ddyw-9g; Wed, 23 Feb 2022 10:15:48 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nMogT-00Ddy0-FD
 for linux-phy@lists.infradead.org; Wed, 23 Feb 2022 10:15:46 +0000
Received: by mail-lj1-x236.google.com with SMTP id r20so23861154ljj.1
 for <linux-phy@lists.infradead.org>; Wed, 23 Feb 2022 02:15:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=x0hhqTD7+70BY56UgVvuj1KjLOHy0vwMSq9Dkm9spfM=;
 b=DPy2VmvLhkyfMACRJLIYku0No2FqHO7MxS8kBZKPz85pBiTzAd9xLJL643CgWMQHnv
 FaU/t+0EjXgiarKAsvykxE69jIi7MOTyHNLpj8bQrxDTxYTS0VtsSns18Hs9dAdGt185
 zi3z0bFPR9KPX4mYhRhH5Ebcm3dHo63LskNE2p8KnXRH3FWBw+P/LYwZ2hArNIM0do0x
 oDMA99CLbSoS+VA6Lv85LSM9gydEO4DRNCgoYjW/HrTX43Ps1pQjcaoWINRtXo+gQLPG
 Tcu/XT3nE2pq9tDOa7jfBbmVmovuRo/cotueEoS4ua6dB0v6rWC94gcjC6JyujOMLiDO
 8PzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=x0hhqTD7+70BY56UgVvuj1KjLOHy0vwMSq9Dkm9spfM=;
 b=5ADNPemX/QmgFbAoTkplV5o3BVf/vAHsJ4ZPKGiKukN/DVDdhPvn0cy8pReLecbCHD
 L7oeVSXlDSnqDpMKkzqiaCxnCR92wIuX6dQk663yLPmaS+nPX6H8kR9ihuNAjSk9pRMt
 Fxj+y5V/RdE2E8Qem7Dg2qNUfvkYtO5+yS7gg2KTg2l0XXLfFhAiojWMDkq0mW53SVlr
 RICQzOrJ8P5Mp+RMFJavgZNGUavHFS52Y7qAISGJLrr/yAPeISZ3OTXMnQUah3RPNPDk
 zd9EsEtJggbKiTIW+2RzZHUMlIO6qdkFxuG3pOSnK6CkfJb0ttsvsTsGDN38Q3at0vNJ
 ae/Q==
X-Gm-Message-State: AOAM530JlQIPxfdoUQ/+yQk5HaUvlhK0eLzPjbw+/8+c9p12WF+G3afK
 16SxdzO5JnSrh78hGUPn+0cVXg==
X-Google-Smtp-Source: ABdhPJyBygHlAaG01x0Rytqlew+o7vC1YMULRRZgas+QS2byaE3Kl2J4sxbbDOVziTse83JDVeh7GQ==
X-Received: by 2002:a05:651c:200c:b0:23b:8267:9ed1 with SMTP id
 s12-20020a05651c200c00b0023b82679ed1mr20856217ljo.368.1645611343630; 
 Wed, 23 Feb 2022 02:15:43 -0800 (PST)
Received: from [192.168.43.7] ([94.25.228.217])
 by smtp.gmail.com with ESMTPSA id o10sm145880ljh.43.2022.02.23.02.15.42
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 23 Feb 2022 02:15:43 -0800 (PST)
Message-ID: <449637fd-322b-35b5-b73b-c72e970a7c59@linaro.org>
Date: Wed, 23 Feb 2022 13:15:40 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.0
Subject: Re: [PATCH v5 4/5] PCI: qcom: Add interconnect support to 2.7.0/1.9.0
 ops
Content-Language: en-GB
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Stanimir Varbanov <svarbanov@mm-sol.com>, Bjorn Helgaas
 <bhelgaas@google.com>, Krzysztof Wilczy??ski <kw@linux.com>,
 linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-phy@lists.infradead.org
References: <20211218141024.500952-1-dmitry.baryshkov@linaro.org>
 <20211218141024.500952-5-dmitry.baryshkov@linaro.org>
 <Yfv7gh8YycxH2Wtm@ripper> <527f0365-1544-ad73-cf49-b839ae629340@linaro.org>
 <20220211161208.GB448@lpieralisi> <YhV2EhQvReObX/4J@ripper>
 <20220223093119.GA26626@lpieralisi>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20220223093119.GA26626@lpieralisi>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220223_021545_546591_60377536 
X-CRM114-Status: GOOD (  16.28  )
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

On 23/02/2022 12:31, Lorenzo Pieralisi wrote:
> On Tue, Feb 22, 2022 at 03:47:30PM -0800, Bjorn Andersson wrote:
>> On Fri 11 Feb 08:12 PST 2022, Lorenzo Pieralisi wrote:
>>
>>> On Fri, Feb 04, 2022 at 05:38:33PM +0300, Dmitry Baryshkov wrote:
>>>> On 03/02/2022 18:57, Bjorn Andersson wrote:
>>>>> On Sat 18 Dec 06:10 PST 2021, Dmitry Baryshkov wrote:
>>>>>
>>>>>> Add optional interconnect support for the 2.7.0/1.9.0 hosts. Set the
>>>>>> bandwidth according to the values from the downstream driver.
>>>>>>
>>>>>
>>>>> What memory transactions will travel this path? I would expect there to
>>>>> be two different paths involved, given the rather low bw numbers I
>>>>> presume this is the config path?
>>>>
>>>> I think so. Downstream votes on this path for most of the known SoCs. Two
>>>> spotted omissions are ipq8074 and qcs404.
>>>>
>>>>>
>>>>> Is there no vote for the data path?
>>>>
>>>> CNSS devices can vote additionally on the MASTER_PCI to memory paths:
>>>> For sm845 (45 = MASTER_PCIE):
>>>>                  qcom,msm-bus,vectors-KBps =
>>>>                          <45 512 0 0>,
>>>>                          <45 512 600000 800000>; /* ~4.6Gbps (MCS12) */
>>>>
>>>> On sm8150/sm8250 qca bindings do not contain a vote, but wil6210 does (100 =
>>>> MASTER_PCIE_1):
>>>>                  qcom,msm-bus,vectors-KBps =
>>>>                          <100 512 0 0>,
>>>>                          <100 512 600000 800000>; /* ~4.6Gbps (MCS12) */
>>>>
>>>> For sm8450 there are two paths used by cnss:
>>>> 		<&pcie_noc MASTER_PCIE_0 &pcie_noc SLAVE_ANOC_PCIE_GEM_NOC>,
>>>> 		<&gem_noc MASTER_ANOC_PCIE_GEM_NOC &mc_virt SLAVE_EBI1>;
>>>>
>>>> with multiple entries per each path.
>>>>
>>>> So, I'm not sure about these values.
>>>
>>> This discussion is gating the series, please let me know if you want me
>>> to cherry-pick the other patches or you will resend the series.
>>>
>>
>> Please pick the other patches and I'll work with Dmitry to conclude how
>> this is actually connected to the busses inside the SoC.
> 
> Hi,
> 
> can you resend the series without this patch rebased on top of
> v5.17-rc1 please ?

Done. I've posted v6.

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
