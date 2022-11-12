Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43A52C4332F
	for <linux-phy@archiver.kernel.org>; Sat, 12 Nov 2022 11:17:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PyLpO2wj8Be5r7Xpk8VCnqW9donOxZE/e67hEUulV1U=; b=29v0kCNfh/uudX
	tJuirVDhL3vlx8nY6znwYG34MiUFzMT2JVaGT7SZLqlhmZ9mT7tV3SCvfbZnE/jVLwTqJhCFXi4w1
	a2A6EKQmE1YUwkF2yDdrLUwRdYSAEvYkWNREGKwsFfvY/AgdWxl1gxmskF/q1vC5aKWDJM+uCfeLG
	Fs4U7a9uIprN0GXlvWqKaswM5DIv4RO8BG2ci7FTTmN7ck7QR8qagnadcG/P5UP9cMLNopoS+2UH3
	C37UBXMx789p2keLLiB4KBk4ln9u/vFClE1+SZZNve7PvhOrL6a5g3qyzln9z4bX0q7m8Zb5XS51N
	kenkBIiTdr2J/LLT6dbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otoWD-005Hk0-Cx; Sat, 12 Nov 2022 11:17:49 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otoWB-005HiF-8u
	for linux-phy@lists.infradead.org; Sat, 12 Nov 2022 11:17:48 +0000
Received: by mail-lf1-x12c.google.com with SMTP id p8so11901552lfu.11
        for <linux-phy@lists.infradead.org>; Sat, 12 Nov 2022 03:17:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=a9/j7JZy19eS+PBrwwIX6icmMNg1umYgfu8PqBTGqlU=;
        b=IA9PI0oH+xolk2+oKu6YLAJEFZQE6CC9vCwb3K4oUnqvf8b5zIUkrS7ljqP5lKK+6C
         sE47n3eTAKBEk7ijQzBDVYNlBrbInB067/p1uTEdDc+cYqP6Pm/+c5N16xmT1Rvrr/ze
         EoRyzMYOd8HEViNfwq8xq1ysuDUDsJsxPWohqBixMfaOQlzohk0vl0DgktyaLKfOUpRc
         txZAR2kjZUL4VRa+RuFU71DIOAIOUjRRQLu9e+j9M4dCWpsi3xqBwHlAX+8j1LyC3Gdg
         ILVQal/7pveVY6Mrrt1Gnw2v+hRKwfvUT4BroqCosrOUfk4VQfazh7ees3v5u63aAFko
         MMUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=a9/j7JZy19eS+PBrwwIX6icmMNg1umYgfu8PqBTGqlU=;
        b=cUe06TkVfmIJ7spUtt1blDZu+b0gDFz8dyWpdGP9C8cg9zk+I6PyVR6elCxi1iqr/Z
         zXYl1pAoAQnxLuyNZc8be/fCe9up5PASQCO/gbKDLxECUil1Yux6xhiTV2LomTCMMvlG
         D/GzUwA5INnCTqEv+VY6h5SnE5GOkL2uzb0LxJZA3i8iXleI8BEgLr+cAU+dwoZ+tXOW
         xeU1Pn+y27Zweh+nB2wbsEnwCF3FOUm4baxTJkXG9c3O6xr2cQhoR3zhnVtZI3oSa2fE
         D1YhB/s+0Xv/ob9WaenD8Ta5Yf7nFD4LQGLkYMwjUZRiH4tR13yJMvQaQV7gKr3RuvML
         uVsg==
X-Gm-Message-State: ANoB5pkBTmLuGV+uw5hx1HnIJHAty8VFmYbZo5cOiyeZEW6X97m8oqOn
	X0GvVYBX6DT1Wh7lWHi414ujpA==
X-Google-Smtp-Source: AA0mqf5WR59psQF+ZKKE8lacjvMnXGhpXVifJY7jWFEezqckxEMKjxzVoBQiy73/qdltB+LriTECpw==
X-Received: by 2002:a05:6512:b8c:b0:4a4:5f2e:49b3 with SMTP id b12-20020a0565120b8c00b004a45f2e49b3mr1907346lfv.148.1668251865058;
        Sat, 12 Nov 2022 03:17:45 -0800 (PST)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id z7-20020a056512370700b004a03fd4476esm816659lfr.287.2022.11.12.03.17.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Nov 2022 03:17:44 -0800 (PST)
Message-ID: <75e188ce-99ea-7511-a561-5b0fef9feeaf@linaro.org>
Date: Sat, 12 Nov 2022 14:17:44 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH 08/14] phy: qcom-qmp-combo: drop redundant clock
 allocation
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221111092457.10546-1-johan+linaro@kernel.org>
 <20221111092457.10546-9-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221111092457.10546-9-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221112_031747_399234_AEE6195C 
X-CRM114-Status: GOOD (  10.87  )
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

On 11/11/2022 12:24, Johan Hovold wrote:
> Since the QMP driver split, there is no reason to allocate the
> fixed-rate pipe clock structure separately from the driver data.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 7 ++-----
>   1 file changed, 2 insertions(+), 5 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Note: it would be nice to port these two patches to USB & PCIe QMP PHY 
drivers.

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
