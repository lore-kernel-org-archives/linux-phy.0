Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 800B7C46CD2
	for <linux-phy@archiver.kernel.org>; Wed, 24 Jan 2024 13:23:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j7VO2KBwbrc6H0N2co/THdZBhE6+ZrZBzhrwckwzS9U=; b=IGwXw2QwDiTD8f
	nM2TeR/hv5hyMeIUo4vCqYuqvSbTseXleWAe0kUlppdVr7cq++V+xRQrLmt5kh+3tj5iKostJlSMc
	Q+TDlNAyBy1hlh53oVDOBq+aeuODO3qkQdznazLLzCXa8fdInSHXfIlBFkdvq2MvAQee94+L29IFB
	66RvuJ0Ofxpgw4ZpkbSVWsvLAPfA+dda45CO/T1lQBVitCdYh+3HrwtPcIU0zHg4w7LOJMploJ0Q1
	Yp2Qb6zpLqPnpbGGSEMge4TzBRxPIPRgrRct/WdcV9c2Q2jxiD/IBgMqHphfFd9dqwk/3tUGtacK/
	P2edtZX9iV3uvQUY2LhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSdDc-003S9d-08;
	Wed, 24 Jan 2024 13:23:04 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSdDZ-003S7g-0s
	for linux-phy@lists.infradead.org;
	Wed, 24 Jan 2024 13:23:02 +0000
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-2cf1c8cc870so12335971fa.1
        for <linux-phy@lists.infradead.org>; Wed, 24 Jan 2024 05:23:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706102579; x=1706707379; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=11kgJruv5+K6DtBwAzB0hg6cqT5dVQUnLRiLI1MHmYk=;
        b=b5sLdj5KbXpJHDHK5knVif13tedRG3+I1v/C+02hkhiKGCE80WRKFe9LB/veejcIz0
         RaDWi6UoiS22o14ZtimSi0RWo/QXoJqbGks1C3v3oXKO8M97+4FgmPWFiuKRfN8YmA3T
         JRW7KcGlkrMSk6iIeSsiwK0dAKEbZHHsePZK1zfKdtx5iEovBzkoa/joQalc5OIBHD+u
         +hhaXQo/c8vRL0JycitAYGlB7SHrRZ/MFy+k1DEzFks7AtY6HeE/pI4UqkKyJdzxXa8h
         kKM/xiBYWKUNDwVacjXuKiQW3px1tyYl784VFDmqHHTDuO35aQFV1w2Z7/u0QzCZeYOB
         ybPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706102579; x=1706707379;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=11kgJruv5+K6DtBwAzB0hg6cqT5dVQUnLRiLI1MHmYk=;
        b=ZZuHRvE9YqSNkwKfUYBlBR0tZnExLjNSABJyLSnfafnM6i+aVoNNuoJmlq3n6qxVUz
         F4eTBad4s4enK1pWqgwEbnO6tyvehvSLp5erMxYvvXIn6Hsr5Xa11NhhI4PME+Pfyz9c
         X8N7kQhjbDC0SueU2yQMYXzijW/Ed7Kg/4WHsOtsA5BfU00/RylDx8gKagtNUHWf+XJ+
         JHnzmvoQ2vEj9lFk7l5xrrnj+aLGY7tB7Ylt6+4A1eczXFlEM4/vb11XeXqDkA8dk2G1
         x86ZQR/FAmAuhA9E3jJ4fGxm2nWwIL0dbauIIA0gKYGpTkkANBFHImaGkWxSOvZHfNAV
         7Cdg==
X-Gm-Message-State: AOJu0Yx75ZxU4/oOwR5ao5FXMeSweMjKWRq/2RvzPk2QbqQWfCsubVLI
	mL6QCU2GLXF0klF55hVuYLcIz7T+oN54jJ7T1yeCpGPcZD/m6j/xmoMwkGMOPWo=
X-Google-Smtp-Source: AGHT+IGCJx8XZDV9wXehwa6+blBx6gU7Yw+6Pl2WRXQb/rId7vUfO2+yja1A4V5G91EOYOUuQjTl2g==
X-Received: by 2002:a19:4305:0:b0:50e:6909:7f68 with SMTP id q5-20020a194305000000b0050e69097f68mr3327351lfa.117.1706102579410;
        Wed, 24 Jan 2024 05:22:59 -0800 (PST)
Received: from [172.30.205.123] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id u6-20020ac25186000000b0050e70a5b804sm2589732lfi.302.2024.01.24.05.22.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jan 2024 05:22:59 -0800 (PST)
Message-ID: <9feae876-5170-4b57-8cd4-dbf35dddbefc@linaro.org>
Date: Wed, 24 Jan 2024 14:22:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 09/14] arm64: dts: qcom: sc8280xp: Drop PCIE_AUX_CLK from
 pcie_phy nodes
Content-Language: en-US
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240124-pcie-aux-clk-fix-v1-0-d8a4852b6ba6@linaro.org>
 <20240124-pcie-aux-clk-fix-v1-9-d8a4852b6ba6@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240124-pcie-aux-clk-fix-v1-9-d8a4852b6ba6@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240124_052301_315187_6085D171 
X-CRM114-Status: UNSURE (   7.43  )
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



On 1/24/24 08:36, Manivannan Sadhasivam wrote:
> PCIe PHY hw doesn't require PCIE_AUX_CLK for functioning. This clock is
> only required by the PCIe controller. Hence drop it from pcie_phy nodes.
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---

So, I have a small phytest module that basically does this:

phy_get
phy_init
phy_set_mode_ext(PCIE_RC)
phy_power_on

To load it, I skip PCIe init (comment out the node), then wait for clk
and pmdomain unused cleanup, then load the phytest module to ensure that
I'm not piggybacking off of the RC's resources.

I tried it out on the CRD, on PCIE2A (NVMe)

Without this patch, the PHY seems to init fine

With this patch, I get:

(1) qcom-qmp-pcie-phy 1c24000.phy: phy initialization timed-out


Kicking the PCIe GDSC from the PHY, I additionally get:

(2) gcc_pcie_2a_cfg_ahb_clk status stuck at 'off'


I think we expected (2), but is (1) okay?

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
