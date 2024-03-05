Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38E03C54E41
	for <linux-phy@archiver.kernel.org>; Tue,  5 Mar 2024 21:09:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bz+8twYIv9H22k7XAPnr2aQqmcEgSa4+3dDYzFMZEg4=; b=nljmYGA0fTODjL82peYKfiggzH
	ClX02d1Aa6t4V6OjYnmktdP6y4rhLUwxVd/+lm688Hthf4JD2987joVv/47Yof1fHztuvVVtC3Of+
	qym7/9rjqryjGZAIlenWKZdMiVd4gTotdmAjhtZYTAILb/EXfhu70+KgE9zOxcQOExf654Nq7qUM0
	aGHF0iMGQKHhQ/mI3LYUK0XOy4CAP00I+OiGbtGDpy7LNgkKsiYfxipadvuBzfoxZYzcWQI11Iptm
	nVt7rHLJY8CmZhl3cWhTkJ9+MnVn3KqH7tRd32XG4Z4GeWIMpnWls2c83b5rVGtlK6+C2XGAS15lq
	oUS5SWPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhc2P-0000000FHQ8-3eJ1;
	Tue, 05 Mar 2024 21:09:25 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhc2M-0000000FHPQ-3V2o
	for linux-phy@lists.infradead.org;
	Tue, 05 Mar 2024 21:09:24 +0000
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-5131316693cso8042104e87.0
        for <linux-phy@lists.infradead.org>; Tue, 05 Mar 2024 13:09:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709672960; x=1710277760; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jJZTR3ZQLE6TxtB1On0qTLLClIpP1eKZkTdZYogVliU=;
        b=qH4aAOalx7BGVfAr0OsCPBR5+O7oZM9ER0gOatls7o0OvFpoU0IANQTSBCQQ+eTUY6
         B2hBaoAe0B3qLYkgl9WiA7x4ZaHHawyqngFx0DwAc2vFlQuXMUV7tB+m5gfhNOtQMkws
         fBELFZoMYOyjbWhOlSO5ACcKDxiHI8j9D2chNqaY7RvrD9Sy39Sx145VfQnlfJPaM1+6
         ln50eshDQm4VjTFiU9E45+4zJOSz/TWIKgjW5B49aTTukXdrC88qL4QgrjR5nPciEAwl
         8IuxLjH1LtNv4kte6lL310LMkE8d5f2eAerKvBMDPDhLJQDQjz0mHjHgxRFVNRV4ng3B
         sr6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709672960; x=1710277760;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jJZTR3ZQLE6TxtB1On0qTLLClIpP1eKZkTdZYogVliU=;
        b=HgSbJwLJ1VtSh/fRd/xjHN68sgaOSeNQokvK+t/P766Q5KLRXnMG3cqMe0BDh8mvGq
         89bxrP/01q5Qs6DuJpywWmGSfZ33Gb5FdvjYe+jP+3FO93JMfSxwW8heQY88qfgZOnXE
         X1NvcMWqKL3ek85YgYo79zEX2odZKJIFsam5392yF0l3E/J2yWeuyJOoIIpgg7KTaK/G
         EYUh0cZZhJmTHTtm9mouMV7SOsQmgVtIkJ7At8ovFYl9AJsqjZykWEjMd8Kc0RGCKGCf
         wEEiNOejP+E5rLGqbiDmIsiXfQYIUPk2tpukGhJkjzPy7IITiaLJEktcmCf2OOAs4O7+
         DpUw==
X-Forwarded-Encrypted: i=1; AJvYcCXfhzoerEZ12J4rN07rWtrVfA+lJMwM2LTILeaLZ5BorWKXKrqY9VQpQy55RwoBHOGzxfoC5CWWJo8pbqjgJISV9gpnVQPBbAjwEx2Ghg==
X-Gm-Message-State: AOJu0YzCY5M+sD1PvyZrQ49XrqLlzQERAO+G6NfNuHTtGP6waj13IsgU
	dM9asx2D2iO+eOXFPtDy1Y5aEOLrrTBPwAXIZwA6EeOKEbCXL/GPr+Bm8AgOEpE=
X-Google-Smtp-Source: AGHT+IE8CGigUxA1HCYfZiHbYBgeAldb7dQWGONv4ACnT65GTfW31N+bM8GawaFuCe4uzmmOQ4YDwg==
X-Received: by 2002:a19:f803:0:b0:513:3fa4:3f22 with SMTP id a3-20020a19f803000000b005133fa43f22mr2145235lff.35.1709672959846;
        Tue, 05 Mar 2024 13:09:19 -0800 (PST)
Received: from [172.30.204.154] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id g13-20020ac24d8d000000b0051316ccc5besm2300433lfe.269.2024.03.05.13.09.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Mar 2024 13:09:19 -0800 (PST)
Message-ID: <1697b03c-56ab-4e8b-a268-f9ceeed91c31@linaro.org>
Date: Tue, 5 Mar 2024 22:09:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC 0/3] Enable firmware-managed USB resources on Qcom targets
Content-Language: en-US
To: Sriram Dash <quic_sriramd@quicinc.com>, andersson@kernel.org,
 vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 gregkh@linuxfoundation.org, quic_wcheng@quicinc.com,
 Thinh.Nguyen@synopsys.com, p.zabel@pengutronix.de,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org, quic_psodagud@quicinc.com,
 quic_nkela@quicinc.com, manivannan.sadhasivam@linaro.org,
 ulf.hansson@linaro.org, sudeep.holla@arm.com, quic_shazhuss@quicinc.com
References: <1709657858-8563-1-git-send-email-quic_sriramd@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <1709657858-8563-1-git-send-email-quic_sriramd@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240305_130922_950127_76ECF0DC 
X-CRM114-Status: UNSURE (   5.92  )
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



On 3/5/24 17:57, Sriram Dash wrote:
> Some target systems allow multiple resources to be managed by firmware.
> On these targets, tasks related to clocks, regulators, resets, and
> interconnects can be delegated to the firmware, while the remaining
> responsibilities are handled by Linux.

Aside from the comments you already got from others, please change
[RFC m/n] to [PATCH RFC m/n] so that your series isn't filtered out
out maintainers' inboxes due to the missing PATCH keyword..

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
