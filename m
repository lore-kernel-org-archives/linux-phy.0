Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EABB1C43334
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jun 2022 22:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EA8BPFgXWy0hte1iA+mlphCwqtiZHelc1GW3qfOa1fo=; b=E2TcxBDVp4Ot+V
	c6w6NdF6EN3dqbdXdd4tJ97Wm5Rq82qh3cC2yXv5n3uKb+XbTU3rJmkgYp0HePMhZZreCLxWFMz4u
	ywB0xwRzkPc95Iagi8YF2TCqjqDu65xlw9svbXZ/MFzZ0SEpFiqGRxQzZ6RgcIH2uJ9EklG7x1Tsf
	+dmJVUoqDzFtrS6AsNbrLwOiw8FI8W8AhQO+A9Q+oEF7E5dKbx2XcaYdpo9ffvFHzlY44iSACnzEY
	gZo1AL97NKCKs3PXL4Uc9wFd8iyqpk9DR38PF5nMJIYFWIjqCHgcWgFIeHcuw5EKjCHJNh91zQdbT
	r1LVK2fv6UJVSLcCHzyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyhmz-009tUm-9B; Tue, 07 Jun 2022 22:35:05 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyhmw-009tSw-KC
	for linux-phy@lists.infradead.org; Tue, 07 Jun 2022 22:35:04 +0000
Received: by mail-lf1-x12d.google.com with SMTP id u26so29737784lfd.8
        for <linux-phy@lists.infradead.org>; Tue, 07 Jun 2022 15:34:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=qoW1gmVljAUL2+6Knzn6x1gPtTMWpq+iXyTdn9hlFNI=;
        b=AxPXfe8Xqon4nlX+FDGyThgVp0Nb8SmKaPWlg+LsEItxm+v26x/Q/zKjDd9PdWlC0o
         Rkyh1ZjBkn+P2P0RRC6C6NFdXQeLsxI2Yo985tlacocLxk7Obpyoa173oDBH/yIjPW/o
         WkSvmlIfAQRMvMSG0gF3+POYP/X1/SbeVtj6VGXakmpPNElBmtlfytt+9VCHX9ukcGCa
         42OVURr34xEWPmvTIQ1J6Dn7qsNBN9AnI0lAMKqagsEuxZOXBZscPl3fWji8hXzn1x72
         TzqIuYdHEWuK+L9AzgIBL2YuI/C1Kzd+W5zOkCny2v9CTz1HR1joCZotKiHQDm7JNeQC
         pGUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=qoW1gmVljAUL2+6Knzn6x1gPtTMWpq+iXyTdn9hlFNI=;
        b=cj78X/ymiNOI64d9CHp3RsV7io4BIgbiNaafe+B3P3CUKtxIRdQjla92faIm7dCU1s
         4A2JHyF4Wb+rTOOjvAzIdUTSp7gRByMr6VL0NqoE82waqOk5LXoeFczl09yHQDiEhNmo
         4KljkUyPyxubiDJRYdZfWRNZjvG0S7kGSsPekgEqI1HvPHWl0mz77rX3aObNAatl8W0c
         FhuNbBSLZEql2/QRDMaT9Ynuo7ZjzHVSVQmX1vr2LkcOCRjJJM0q5IrxcWygy2b+iW9v
         7AeeiKyQi51cxPnedoCDn66XyoHfBrr9vSkn9GBPnoETmTREG0r4foyEJ2p/OVzh4c15
         gtAA==
X-Gm-Message-State: AOAM5306JGff/CbF21Yo+ByoiuuGFhLkOSEqcrsc6i8/adJIeq4dpgQf
	sCRzOmNV5pqnkEv/vtHClTuExA==
X-Google-Smtp-Source: ABdhPJzCfE5fl1O6+eZqnTJpd4HzsWT6PV949KVeMp1srMc//o0rggoboGViIvouXtvg2Af4hURThg==
X-Received: by 2002:a05:6512:545:b0:479:b15:6671 with SMTP id h5-20020a056512054500b004790b156671mr19852457lfl.579.1654641295093;
        Tue, 07 Jun 2022 15:34:55 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id p4-20020a056512312400b0047255d211f7sm3418559lfd.294.2022.06.07.15.34.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Jun 2022 15:34:54 -0700 (PDT)
Message-ID: <9077f91b-0e1d-25bc-56a9-66a500e16ff4@linaro.org>
Date: Wed, 8 Jun 2022 01:34:54 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: [PATCH v2 0/5] phy: qcom: Add SC8280XP UNI and COMBO USB phys
Content-Language: en-GB
To: Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Manu Gautam <mgautam@codeaurora.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220607213543.4057620-1-bjorn.andersson@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20220607213543.4057620-1-bjorn.andersson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220607_153502_715556_B7288963 
X-CRM114-Status: GOOD (  13.04  )
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

On 08/06/2022 00:35, Bjorn Andersson wrote:
> The Qualcomm SC8280XP has two pairs of USB phys; a pair of combo phys and a
> pair of uni phys. Introduce support for these.
> 
> This is based ontop of Dmitry's refactoring of the QMP driver:
> https://lore.kernel.org/all/20220602070909.1666068-1-dmitry.baryshkov@linaro.org/
> 
> A first version of this series was posted with only the UNI phy, this fixes a
> few comments and add the combo phy as well.
> 
> Bjorn Andersson (5):
>    dt-bindings: phy: qcom,qmp: Add compatible for SC8280XP USB phys
>    phy: qcom-qmp: Add USB3 5NM QMP UNI registers
>    phy: qcom-qmp: Add USB4 5NM QMP combo PHY registers

I've noted, which symbols look close enough to be folded into existing 
namespaces. Could you please doublecheck my analysis and merge the tables?

>    phy: qcom-qmp: Add SC8280XP USB3 UNI phy
>    phy: qcom-qmp: Add sc8280xp USB/DP combo phys
> 
>   .../devicetree/bindings/phy/qcom,qmp-phy.yaml |    2 +
>   .../bindings/phy/qcom,qmp-usb3-dp-phy.yaml    |    1 +
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c     |  205 +++
>   drivers/phy/qualcomm/phy-qcom-qmp-usb.c       |  138 ++
>   drivers/phy/qualcomm/phy-qcom-qmp.h           |   13 +
>   .../phy/qualcomm/phy-qcom-usb3-5nm-qmp-uni.h  |  617 +++++++
>   .../qualcomm/phy-qcom-usb4-5nm-qmp-combo.h    | 1547 +++++++++++++++++
>   7 files changed, 2523 insertions(+)
>   create mode 100644 drivers/phy/qualcomm/phy-qcom-usb3-5nm-qmp-uni.h
>   create mode 100644 drivers/phy/qualcomm/phy-qcom-usb4-5nm-qmp-combo.h
> 


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
