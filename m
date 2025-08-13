Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 994AFC87FCF
	for <linux-phy@archiver.kernel.org>; Wed, 13 Aug 2025 21:24:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uiQ70w6IN+sarfjA+1w5o6IQn/T4B1japmrE/Kob15E=; b=QcZdViGDTchi43
	3SY4KFzOJJVRLmZuDeUHRVg8MRHNwNIZ9DxMwjVfEPfPgYVLL+S76xpnQ2VA1Xg+hj7h8HU7C5bX5
	cDTJ8eUGWHfZxxLkYB4G1XzUO8Cf3mTQ/JyInP544D71bnYTY6sFFFTeQI3FmCQjcgK9n19iHlSux
	bUwnv1sujfmsFkzUnrCPdkCfeDddXp0ZGz115pDiqV3PxKh3nJGY1Jnn2ylZO7zCvFHlVdJ0G28vH
	2H9O5gwpjTMdUo1aMrTdRTtLLiw2mSmU6IeU1hplYcSJXrBOE2YS17OsL99cEFZaJsomgCGx0GDGD
	JvCgdTnTgm94KFoRVlZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umIx0-0000000F0rL-0pTJ;
	Wed, 13 Aug 2025 21:24:02 +0000
Received: from mail-il1-x12c.google.com ([2607:f8b0:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umIuX-0000000F0Xq-3pdx
	for linux-phy@lists.infradead.org;
	Wed, 13 Aug 2025 21:21:31 +0000
Received: by mail-il1-x12c.google.com with SMTP id e9e14a558f8ab-3e571d400e0so462345ab.1
        for <linux-phy@lists.infradead.org>; Wed, 13 Aug 2025 14:21:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1755120089; x=1755724889; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xQFA3sAGjQq+4OU7ujcZ9yGUOwCjhbmi0pcUP6tFJ2k=;
        b=YxnWHUOD3fHf5YjyG5gNvqVMS94uk5ZZI8iClrJbBNkETlj6dnRNadFVMnQO9bExXX
         OLeTXjIEejBymLGd12e39e46oBNDnIrEwJLz+b2GiSgGCoqlccmR51IhWJ7qV8tMQR/6
         sj8TEzDlSzRUdHfQurclSaY6tB4gRPAZUXQqYp56PQX6vfChaWgW5p8jXofRfA7oeuM7
         ahJyMopv1ZvqCv5+uXT6LFBSxPP4QD6EvcvLIomVmGbri5UA0BqnbHUQZyfMiPRI7d0H
         xH1dT77z5+CXfRHw7iPEI7twW/YPc0oALhJaYuwNyadM3R9ICz30M0wPampkWR8tobiK
         egug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755120089; x=1755724889;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xQFA3sAGjQq+4OU7ujcZ9yGUOwCjhbmi0pcUP6tFJ2k=;
        b=OI+QibfzRXV7SB/9yfNc5NHeizs0OHYnXI6t4OaXbqmIczMEZTLmvVT4qRJLSsDopz
         1Dw6tMiRWLEc/uvDhWrPvEwv2mIU9V8JXXDwsKVNY2D3I0ZHuRZ6KpXT7j+lpFpdIdss
         4Pu+vXbuKciLiz7EB80bos0/pYmhvAyq1h3eEXH0d0FvuXm1g+zUhUYEapnaQ9tlEIz5
         Q1rY1Wu5bcoqglU550O0bj5c4syp43o7dleJUhWLDF9GKG+5+7/npWeMFTxUiusw7DjV
         I6isqeJ/Sv+Xf43fh5QUw+esksWWIpDvjCT6lzF5X61Q5OY6sguIKKGlnTi9biFjl0GS
         sopg==
X-Forwarded-Encrypted: i=1; AJvYcCU59WNOS8ax5yU2lgWk21LBMIEAi+2puTQJUVNWo+Iw5M+3IeAkvIsFh8DKzDEqn4+6nObjpr/pke4=@lists.infradead.org
X-Gm-Message-State: AOJu0YyolynqLGwttagBH6ZhWpq+HFgDisWJEpbntNfDsmD9K/wpGRbr
	GPOfeiU6fVuwTdvYNxy1hkKPmcGhs/T14zh5c0pC+RCsgg4r4q3Jr3MFsrV0P0q/XFw=
X-Gm-Gg: ASbGnctH+fHKnwlVilWfBw5Pg8vnfzuFojQk2sV9PNj0Ol8HI7Ih049uspS5mQ+kzpi
	BTy8WODDOhOJ3l7MW+M8wdMK3ztoFk9DoPGLHQCsOc7jB62cH7e6t8PHSucUrMyKMZR+nDGtLaC
	yUPQiB51G6Gl2MIndyNBKeCCr9d7vJLS3hp+muRUujhkikPd92gOwKPKAlL/cu+ReGszB5t2nvh
	yEeFfTHeGrsHLINQC/dOnZ6rvOtHhuDMrCN62lZXLaAPCWIiLVMdrxZqs7EdKbqQsW+woZFlynf
	jSpFb+Wv2XEwteVeXQW8xPYkRLHKqSNebF3cVNHC0MCi5Xn+mp6HEswP/UOH1udajd0ACyRB84K
	NbNsriKvB022tit8OLh0yD+DiJ4I0Ald2Jz67VA5NaLk5MFFn55CJY5yqP3PyAOcbIwGmPlxy
X-Google-Smtp-Source: AGHT+IE/IGDUbFdQagnAGSx2I8HtgwdLHjigGbzbwJHyQIwj+Wi68+UGSe/1cR20+rAO3AtGn9HtGg==
X-Received: by 2002:a05:6e02:1c0e:b0:3e5:4351:ad0a with SMTP id e9e14a558f8ab-3e57078c28amr12232635ab.7.1755120085109;
        Wed, 13 Aug 2025 14:21:25 -0700 (PDT)
Received: from [172.22.22.28] (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-3e5418db19csm46937395ab.2.2025.08.13.14.21.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Aug 2025 14:21:24 -0700 (PDT)
Message-ID: <8ebc466c-1b9f-4ba3-a38e-bda6007c5b97@riscstar.com>
Date: Wed, 13 Aug 2025 16:21:22 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/6] dt-bindings: phy: spacemit: introduce PCIe root
 complex
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: lpieralisi@kernel.org, quic_schintav@quicinc.com,
 devicetree@vger.kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org,
 p.zabel@pengutronix.de, linux-kernel@vger.kernel.org, inochiama@gmail.com,
 fan.ni@samsung.com, aou@eecs.berkeley.edu, alex@ghiti.fr,
 palmer@dabbelt.com, paul.walmsley@sifive.com, spacemit@lists.linux.dev,
 thippeswamy.havalige@amd.com, namcao@linutronix.de,
 linux-pci@vger.kernel.org, shradha.t@samsung.com, vkoul@kernel.org,
 dlan@gentoo.org, johan+linaro@kernel.org, kishon@kernel.org,
 mani@kernel.org, mayank.rana@oss.qualcomm.com, tglx@linutronix.de,
 bhelgaas@google.com, linux-phy@lists.infradead.org, kwilczynski@kernel.org,
 linux-riscv@lists.infradead.org
References: <20250813184701.2444372-1-elder@riscstar.com>
 <20250813184701.2444372-4-elder@riscstar.com>
 <175511815210.798605.10564052572461813362.robh@kernel.org>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <175511815210.798605.10564052572461813362.robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250813_142130_047277_26D50BDD 
X-CRM114-Status: GOOD (  17.37  )
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

On 8/13/25 3:49 PM, Rob Herring (Arm) wrote:
> 
> On Wed, 13 Aug 2025 13:46:57 -0500, Alex Elder wrote:
>> Add the Device Tree binding for the PCIe root complex found on the
>> SpacemiT K1 SoC.  This device is derived from the Synopsys Designware
>> PCIe IP.  It supports up to three PCIe ports operating at PCIe gen 2
>> link speeds (5 GT/sec).  One of the ports uses a combo PHY, which is
>> typically used to support a USB 3 port.
>>
>> Signed-off-by: Alex Elder <elder@riscstar.com>
>> ---
>>   .../bindings/pci/spacemit,k1-pcie-rc.yaml     | 141 ++++++++++++++++++
>>   1 file changed, 141 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/pci/spacemit,k1-pcie-rc.yaml
>>
> 
> My bot found errors running 'make dt_binding_check' on your patch:

Mine didn't for some reason, so I must be doing something wrong.

Simple inspection shows my compatible string contains ".yaml"!

I'll fix in a new version.  Sorry I missed this.

					-Alex

> yamllint warnings/errors:
> 
> dtschema/dtc warnings/errors:
> Documentation/devicetree/bindings/pci/spacemit,k1-pcie-rc.example.dtb: /example-0/pcie@ca000000: failed to match any schema with compatible: ['spacemit,k1-pcie-rc']
> 
> doc reference errors (make refcheckdocs):
> 
> See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20250813184701.2444372-4-elder@riscstar.com
> 
> The base for the series is generally the latest rc1. A different dependency
> should be noted in *this* patch.
> 
> If you already ran 'make dt_binding_check' and didn't see the above
> error(s), then make sure 'yamllint' is installed and dt-schema is up to
> date:
> 
> pip3 install dtschema --upgrade
> 
> Please check and re-submit after running the above command yourself. Note
> that DT_SCHEMA_FILES can be set to your schema file to speed up checking
> your schema. However, it must be unset to test all examples with your schema.
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
