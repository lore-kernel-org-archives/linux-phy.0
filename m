Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B998C27C44
	for <linux-phy@archiver.kernel.org>; Tue, 28 May 2024 12:42:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1Mao0T1PyTmIm4X/KI/uARoHiY2OrzpcuAYF+eoUEMU=; b=iGDfKQcxQK37Z5
	I0RBQAvDnwjBIC5dA3aCim8TMfrAadD3Ush1ZsoF1BOa3RFeJa7Dwov94JHsr7cq0rhg0UUV3w3CC
	opcsXBg5CKedWGhBHUC4b5R30zDIQRU+kH4I6ah+2fGZMp3Ci7RRlcGSkfC9lUWjp+561auFOeAO8
	A1CLsyVUEdd18xtG85aQ4EL8Xc/qDqN3BGPcnz7jLC6BV0Ifh94Ava5Pg+ykXHy3ftO27f6u89v1+
	TYOGw77F2pNM9QtRLb1Y8Jyzo5RBMs7OOQBY0XKeJolwRNq7eIjFqtktuJxKszCFd0LXthjdtSYrF
	iqpY/pXCdpZ0aSVBvFeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBw9h-00000000ctR-2kOr;
	Tue, 28 May 2024 12:42:17 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBw9e-00000000csF-1hhO
	for linux-phy@lists.infradead.org;
	Tue, 28 May 2024 12:42:15 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-5295e488248so957711e87.2
        for <linux-phy@lists.infradead.org>; Tue, 28 May 2024 05:42:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716900132; x=1717504932; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ga2T6XeCoElWphUxptYnP0YlDqCUOZmRYJH6lTvOF0o=;
        b=XD7dMDdXMZBpOklgf+8DDgAMdYjxrWYTGRV4ele0j53SKmkn6jOiRLtQRKEle4Ou9e
         mE3UdpJp/ryJwCWhpuzdOMGrk4O7bo2q2ze2VKyDDZqWOcaGhe53ZQbGeKo4m4zQNaYR
         apYCX8wacwxCmCV1S/ky70ZjILbMgL/iPOK+esuv/U6v/mnNNk0ZDpC5XSaVfFdpUtQD
         qikWRc9eaE3YzrFKLDs5FxmIfi18a3cYp7cS9P+8t9tyWU8MGQLOY7gJg+kyMY2qHqPM
         w00NbsejYzTeW1TohqzhDqJXxdtqaRjaK6Q+eD8mOW9Ta9BuPF0qvaqtuDHRuChheaVj
         Q1gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716900132; x=1717504932;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ga2T6XeCoElWphUxptYnP0YlDqCUOZmRYJH6lTvOF0o=;
        b=h0ulp59f8BXa4D1XU7VO57LglhzLU1niMtoXhsfM06KYwhnTSC9Q7zKFUI0NeBmNLF
         PEaGcrut40rkaPpDumZeuuzzS3gN0CcwdHyexnWwZQc42cCbtfYS5wlrSKzv289cMV5T
         w0xoPalyy5O/t9LTknQkh+5FYEQLQ2gwR2A2x6Hs3fTlDjd7QZL0N3cWFyWckHfc2AD8
         VNSwF7sLta3qrBAMBKYdfeUIdUvYlT5FeV+5Uf2zA9fOe13zVcRWE6gBof5NE8VeJtk3
         MKNI9EpUmrz8hPApPTkwaftkVnGGCd/KZzeJcP5kFGICdECYciaReXq8Y16HzTThS9ge
         Qh5g==
X-Forwarded-Encrypted: i=1; AJvYcCUp68oNcsBD/ZF8O+dPTiXV2gq0sG85dRX/+/r1n7hu/FSNSeeyM8EnK+QHSUIABBKb3vcojF5JS3WXcdJg9jBzcK0T5vCsWDo4C+LsBQ==
X-Gm-Message-State: AOJu0Ywy2t6zSDZLiUnPusXAVqdUHylCuSepouoeKlqva3o8BlgFpMep
	11UP8zOQZCHjXSJUvrj4pwYDP3UByPu7BpTns/qpDxYOePKjtU58YXtduh6I8u4=
X-Google-Smtp-Source: AGHT+IEKKv3xDNv3NAqFduP1EFyw6pzWR6Vp8uFAEDeCR4NfYt5ZwVfqN9sWu3DZSG6ton8htkks7w==
X-Received: by 2002:a19:6912:0:b0:51d:998e:e0c1 with SMTP id 2adb3069b0e04-5296410ad52mr8276027e87.13.1716900132197;
        Tue, 28 May 2024 05:42:12 -0700 (PDT)
Received: from ?IPV6:2a00:f41:c97:23a9:35bc:df2e:d894:2c76? ([2a00:f41:c97:23a9:35bc:df2e:d894:2c76])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5296e887a3esm920622e87.13.2024.05.28.05.42.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 May 2024 05:42:11 -0700 (PDT)
Message-ID: <a48d87a5-0271-46cb-b5c7-3c5e0334bfd2@linaro.org>
Date: Tue, 28 May 2024 14:42:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 07/10] arm64: dts: qcom: sc8180x: Align USB nodes with
 binding
To: Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Wesley Cheng <quic_wcheng@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-usb@vger.kernel.org,
 Bjorn Andersson <quic_bjorande@quicinc.com>
References: <20240525-sc8180x-usb-mp-v1-0-60a904392438@quicinc.com>
 <20240525-sc8180x-usb-mp-v1-7-60a904392438@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240525-sc8180x-usb-mp-v1-7-60a904392438@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240528_054214_508492_350E8A75 
X-CRM114-Status: UNSURE (   7.76  )
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



On 5/25/24 20:04, Bjorn Andersson wrote:
> From: Bjorn Andersson <quic_bjorande@quicinc.com>
> 
> Add the pwr_event interrupt and rearrange the order of the other
> interrupts to match the binding.
> 
> Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> ---

The new numbers look correct as well

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
