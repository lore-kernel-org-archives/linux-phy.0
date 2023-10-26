Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C057DC25B6B
	for <linux-phy@archiver.kernel.org>; Thu, 26 Oct 2023 11:10:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JFFyvVG8hlURzgM1jC0+Hoaw2NJx5/xEGaskCzYwEt4=; b=QaECh1u3pvGNdl
	s+Pkm0ALwrrpaeU34bb3dcl5hHSWIdWerXTCtvPMPLVYP+ZjyK2aZmIHoyFlNG+dX1eDPyBIbmR+M
	6guHsGHveOEr9ENvPlTUHoe1gKBN+gfwzaZiYa8AGJpIc7mPGDJF/mNmfN8yENJSU/mjnr4QJUJN6
	vz85nEBS2Y8+Y01/zmlVmMgG+YjNSkNIVKuAmCH20gmq5qaYsIj5GXXRQcmYSZUo1bj7ld4b4/rSj
	sJ+tBpiaXYgiKrDf276wJfZQbaDEbd0AnwSaqtzL8j6OWRbT4TwVEp1QfSgbz8XfJsLA7n4DCGY4O
	yV9c4ELqRZEqk7yunusA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qvyFc-00EL9d-1M;
	Thu, 26 Oct 2023 11:10:08 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qvyFZ-00EL9F-1e
	for linux-phy@lists.infradead.org;
	Thu, 26 Oct 2023 11:10:06 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-507bd64814fso1006330e87.1
        for <linux-phy@lists.infradead.org>; Thu, 26 Oct 2023 04:10:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698318603; x=1698923403; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CFDGqzAkT9v30DUvgbeN8oVGeAg1rb9jZ6McermBiCw=;
        b=Pt6CayDXr8Xjpk/rlcW0y45/QaBV67ckDzen9LI6Xjkc803SyUsZweNl0LOPq3agOB
         56073KbhjhHDXDg+hu9uxS43kLYxp94A5OWU1DRVqKqRXhqi7DGqb9PvTXpt+ueSJuRY
         1sL0GxZ+PI7Gi2fgS/wyU+CTsVUGp6bhacJTr4X12+D2wZCvAuRlY2JJJeqXzDUUXpbK
         T6+yYYksg6d/WGTwV55uuvk/X/nknroVtRQ7OIgRb65mEzLe/n8WVVMvoK1l78cH8VKd
         BavtdHlSkAK5e4KDuNCfaiwPPNPqxl7umTRhaWoqQJV0SiUrDcQp3ef6MicY93zQMc4k
         5Ndw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698318603; x=1698923403;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CFDGqzAkT9v30DUvgbeN8oVGeAg1rb9jZ6McermBiCw=;
        b=b7O/6jr7DWJN+bIyjqNGXT1PTAjwK2G+ORSOFnJYnn4zDLtf7V3eIEoKWypqS+AEeT
         Oq5vHW5UPvBqwz5QcOSz4KSdGTirORc3c4v0ribWYCgla3F8BWdAjVDpZJ21WlMp9xx4
         H0Ept76w7dG9wW15EzytDF26ggqfMnkv7adh/86qzUCLipb6gSG7i7AvZ2FwTkNeKcE0
         58OO2hhwK2L/zflhXlLsS5EL4mNnzbkUM06IDzSUn/a1yWUTtQgxxECPqHM62D6s443h
         oi7fRhEYHARS7QXF1ZxL5wU+GX37UwWtpOWJtEBYDe35unXktrhHtRB9+8SjuOWVQ9Oz
         U+AQ==
X-Gm-Message-State: AOJu0YwQmqQ8k3tg76j627tV3dA7GPtu/3yV6tbi5S1GXRXBvCcy6L+D
	GpSLAD0bzfOx4NU3fVQ7xG9axw==
X-Google-Smtp-Source: AGHT+IGZ7Bx52xZjwNOsaoIwxTO6OODdxBXVzVwSUitUkgzo3/Zs2ma5n6Xswx3q77LV4oLmE5LW9g==
X-Received: by 2002:ac2:44a5:0:b0:503:7fc:8afe with SMTP id c5-20020ac244a5000000b0050307fc8afemr12673901lfm.1.1698318603147;
        Thu, 26 Oct 2023 04:10:03 -0700 (PDT)
Received: from [172.30.204.123] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id u15-20020a05651220cf00b00507abbaeb22sm2984919lfr.301.2023.10.26.04.10.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Oct 2023 04:10:02 -0700 (PDT)
Message-ID: <fb0647b5-67c4-4558-ac41-ee2b21446ee2@linaro.org>
Date: Thu, 26 Oct 2023 13:10:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/5] PCI: epf-mhi: Add support for SA8775P
Content-Language: en-US
To: Mrinmay Sarkar <quic_msarkar@quicinc.com>,
 Manivannan Sadhasivam <mani@kernel.org>
Cc: agross@kernel.org, andersson@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 quic_shazhuss@quicinc.com, quic_nitegupt@quicinc.com,
 quic_ramkri@quicinc.com, quic_nayiluri@quicinc.com,
 dmitry.baryshkov@linaro.org, robh@kernel.org, quic_krichai@quicinc.com,
 quic_vbadigan@quicinc.com, quic_parass@quicinc.com,
 Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 mhi@lists.linux.dev, linux-phy@lists.infradead.org
References: <1697715430-30820-1-git-send-email-quic_msarkar@quicinc.com>
 <1697715430-30820-5-git-send-email-quic_msarkar@quicinc.com>
 <20231025075603.GD3648@thinkpad>
 <610b0621-b140-ee9b-c450-0fec6862c4fc@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <610b0621-b140-ee9b-c450-0fec6862c4fc@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231026_041005_598297_97763CE4 
X-CRM114-Status: UNSURE (   9.84  )
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



On 10/26/23 07:30, Mrinmay Sarkar wrote:
> 
> On 10/25/2023 1:26 PM, Manivannan Sadhasivam wrote:
>> On Thu, Oct 19, 2023 at 05:07:09PM +0530, Mrinmay Sarkar wrote:
>>> Add support for Qualcomm Snapdragon SA8775P SoC to the EPF driver.
>>> SA8775P has the PID (0x0306) and supports HDMA. Currently, it has
>> Is the PID fixed? I thought you just want to reuse the SDXxx PID in the
>> meantime.
>>
>> - Mani
> 
> The PID for SA8775p EP is not decided yet. So using 0x0306 PID meantime.
If it's not decided, why should it go upstream then? Would that
not break the hosts' expectations when the EP device is updated?

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
