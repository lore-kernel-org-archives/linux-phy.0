Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1E3BC7618E
	for <linux-phy@archiver.kernel.org>; Fri, 21 Apr 2023 21:08:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=v+ughwsEikmvvNeE66xrwN0fL3vk07ovDXWfHOCRgHM=; b=HyZRqgyAdTXXqqcCIqnbOMwHg6
	bXp/ADf8A8AoCDoCKThLMRewQWgwiNn/pLb+WJ0/dGWxTIPw5tzsrmemibYEeNDpPChFKxfOTY6Lm
	VUG8wEBpuQwToQfiK4hOp7sTTyn1nrB7T9daQFSc/USMz12Erw7jIcR13h6mdBby6brdbuUb7lYbA
	YwY/vIp8rGPPJqO9tNscqHd51ZCHfPgbc/j92eB2AzBvR327s5GWGQiGv2ByO9PdJX/LebxihfWSX
	kbS+beA2XBlXr4XABY8x0bleHSMycJfKfUcdELjmGeIpwcN03gUfNlMfT5UMeQS1/1aDIRa78qga8
	VaIvUgRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ppxzt-00BrFK-1h;
	Fri, 21 Apr 2023 21:08:49 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ppxzq-00BrEj-24
	for linux-phy@lists.infradead.org;
	Fri, 21 Apr 2023 21:08:47 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-4ec8c2907c9so2170174e87.3
        for <linux-phy@lists.infradead.org>; Fri, 21 Apr 2023 14:08:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682111325; x=1684703325;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9W1D3wCw6XKucfchy0oa7eoctRHM+fcPALZxgsEbNBs=;
        b=ixIJ9Hv+jHR8BhY4DAOaBAYeOne2MN8aCbLx7zyPBmkB0j+AwCl5fX1SBIDbQhoesO
         oErScNiR/ChWnIPnHRsYPYAKqG5DUj850++d9s/1uI3clSI2bmZMv/mLlDlbA24facqM
         OiZ3BA/fEer/hdoIBAy9g6tM0ZPvlVW1UMvOSjSo3XK36mcB+zON9FtyEo+0taeHu96j
         A/iqY9N5A/vIoqxL4JEXKEkUml+uJiWtFpRsUZPncmCkCDc4Hz3AR90uuIcyYY/pxv6A
         lFZ0oaPawAeo2/oPWRVo+XUhy6kjA5epdzfh2QuPm6L005wXQCWc66QWeF8FsHUWVU8R
         6zxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682111325; x=1684703325;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9W1D3wCw6XKucfchy0oa7eoctRHM+fcPALZxgsEbNBs=;
        b=G59ZdNR2lii99MoTcMTj/EMSEpU6/+Hlzw5ky+TgyyqZg5Xqdg54I0vIEN1vnqXMhS
         6Z5Qv1ibfY1UfS3aBNFa/KYtgdsYKbb6IiMPgNAewwSa5YACa6HlFpk9De/QaCkcpTti
         NDcZ58j7paU1mN6IyJcETiCF5uE7USdkIehYvFCPu8fDtxcIllmZFJ7YFdw5FK9XmwLn
         H3z23y8jAfEpGXZThrxvNqnt/0GQA7TAdsrf8brVRxf/7C6Ki7YsdmbkKr0Ie0fx72HJ
         YRKBH2RHOmvLMMX+O6dMYoJs3vWMG+xFYCBUYAlvrsffGOuXpiuvdPjR9I7iL1vng4xf
         f34A==
X-Gm-Message-State: AAQBX9c1ZrUZJ0H9S4t6lRRUbtCZnfcCXU2De2tecC/8hmZUAuKZbQdP
	yXvq/EKSDQw9Ne8b/3nIGUDwxw==
X-Google-Smtp-Source: AKy350YLTGBr4RyKMwcNF7D0+hyZdpX3tIb57/K2TAvk9TNPrByM+p/YOtKMAaJG9fIoYe+Yxdik/Q==
X-Received: by 2002:ac2:4211:0:b0:4ed:bb8c:5036 with SMTP id y17-20020ac24211000000b004edbb8c5036mr1639270lfh.14.1682111325170;
        Fri, 21 Apr 2023 14:08:45 -0700 (PDT)
Received: from ?IPV6:2001:14ba:a085:4d00::8a5? (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id h23-20020ac250d7000000b004eeda08e9d9sm670853lfm.150.2023.04.21.14.08.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Apr 2023 14:08:44 -0700 (PDT)
Message-ID: <6837a467-7d6d-2d6e-3b4a-191a5d32e650@linaro.org>
Date: Sat, 22 Apr 2023 00:08:44 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v8 5/8] phy: qcom-qusb2: add QUSB2 support for IPQ9574
Content-Language: en-GB
To: Varadarajan Narayanan <quic_varada@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 gregkh@linuxfoundation.org, mturquette@baylibre.com, sboyd@kernel.org,
 quic_wcheng@quicinc.com, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-clk@vger.kernel.org
References: <cover.1680693149.git.quic_varada@quicinc.com>
 <096d01ea7b833cc990a3c7cd071528aa50fd1020.1680693149.git.quic_varada@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <096d01ea7b833cc990a3c7cd071528aa50fd1020.1680693149.git.quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230421_140846_688604_05DE7AFE 
X-CRM114-Status: UNSURE (   7.78  )
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

On 05/04/2023 14:41, Varadarajan Narayanan wrote:
> Add the phy init sequence for the Super Speed ports found
> on IPQ9574.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
>    Changes in v2:
> 	- Place the entry such that the list continues to be sorted

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
