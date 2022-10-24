Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90369C38A2D
	for <linux-phy@archiver.kernel.org>; Mon, 24 Oct 2022 13:32:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FLtCcqZr9Uw9wqDc40sKG1mxulS2KjMiv1CYT+uze/8=; b=imIjFFwt7RSaKh
	E4EZM0gXtENr4ogW2BYVHmLSQ/xKIE43rDfshbKKY1ypmAUgB8rPsudQ3K/HdFWZcyh/8LqgKD23D
	injDDcAxKWtRR0ke55OuIlKv+/RlvtgM+nBdGdN6szDVZ4o1S1zC8piqbJZZSmbgY2f9ZExMPOYe1
	0BkLdCSBIvn9QePiOaysgSkmmFQUygIr+W5wQPPXk1j45UxnpfdHDnjXAtyK90CYhx7T22tbG3G9h
	YaMfh6e2RWZmEwZABJgVcRc6/l2VoS3h/KySGOUzF17J9515w8Ge9tf+3ib/xLytaSKeTA+wXKEsT
	zr/JKnekhAdEyrzC21Jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omxZZ-001iv3-1G; Mon, 24 Oct 2022 13:32:57 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omxZW-001inw-NZ
	for linux-phy@lists.infradead.org; Mon, 24 Oct 2022 13:32:55 +0000
Received: by mail-lj1-x22b.google.com with SMTP id z24so2799046ljn.4
        for <linux-phy@lists.infradead.org>; Mon, 24 Oct 2022 06:32:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2xaMm78fM2rUZsQPmBvYXK97To/2DK/rtGwK+0qiEt0=;
        b=r0gnmUhcfoDGmqHuXWVGnOZ8m4Vp2E9CRPBUM3zSGQ0+v3W6eCljPT1bVvefZLqlqN
         CGqHJtZZLjGOgMNOIzZDNUye2auuKVXnxEvNaDglhe+BOT4HQj37jr3Ot/fI3gvN1ByX
         M/d7ZLuzCaSqlvDb2NgSQDH0Mh+QStyVva74R/oPhm4lBYRxLQGKRQiX9EOjbGqDjPWx
         upfpa2Ybp5OkLnYWBBT7X9QSv/EJ5+ZvUANae+mqQdmPjY2P96gPAWAxOJUyklj5bRyk
         Qr6x+4tcHzVmHvcnPyOt+9PKe8Eyx8J7tdoTraqOIHakQI+MOCd/N4Vtv4/ic2g7wa8w
         UDfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2xaMm78fM2rUZsQPmBvYXK97To/2DK/rtGwK+0qiEt0=;
        b=eNy4HpB0/GesmInpYk935/eP/YUYn2dXapM1v6ymh/hW3AHjqhtszjRXLbI+4WhD1D
         gdLPQqlXpIUSldICC1oTY/KGZlAUOWJ3qi2ZcTQiVP/1ZxLRu/U5F698+wAS11yXe4gr
         O/P2g3di9lzdaqIMMvTpAuliWziNLLWAXGhmSmW69dflH7egdTTW8hV+4+ZtxC8+wMTw
         TCQWFaZSzLRBDfHkBzjagvH+o1oIQR1hrBVUOtPabs1s1M2HBmbYdeVuc9tB40kzi48T
         d884zqAkOmsL8jRLNn0xyu6ow1De4v/9gm8toOK8V2MVgJfR/k9SjbiNSWZuELxbJxLY
         t/4A==
X-Gm-Message-State: ACrzQf2/6hyg0/Qn24TBPeff6ROSVtD/9WWKy1GqBtolWJslPaphURlo
	P6lVCyHV5r0JdUSM4vjO9xC19g==
X-Google-Smtp-Source: AMsMyM58S+kwJjzf/AcosLQEKY92VlM/X/zNBCksGzwTStER3W9096fbJUbGcKmYoC1waiUXkJ7OAQ==
X-Received: by 2002:a05:651c:1950:b0:26f:ec78:6178 with SMTP id bs16-20020a05651c195000b0026fec786178mr11284200ljb.98.1666618374256;
        Mon, 24 Oct 2022 06:32:54 -0700 (PDT)
Received: from [10.10.15.130] ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id i11-20020ac2522b000000b00499bf7605afsm4545272lfl.143.2022.10.24.06.32.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Oct 2022 06:32:53 -0700 (PDT)
Message-ID: <614b03b7-e6ff-bdad-449c-b84f840b2e1f@linaro.org>
Date: Mon, 24 Oct 2022 16:32:53 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH 01/13] phy: qcom-qmp-usb: fix sc8280xp PCS_USB offset
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221024100632.20549-1-johan+linaro@kernel.org>
 <20221024100632.20549-2-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221024100632.20549-2-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221024_063254_797022_BA62943E 
X-CRM114-Status: GOOD (  12.31  )
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

On 24/10/2022 13:06, Johan Hovold wrote:
> The PCS_USB register block lives at an offset of 0x1000 from the PCS
> region on SC8280XP so add the missing offset to avoid corrupting
> unrelated registers on runtime suspend.
> 
> Note that the current binding is broken as it does not describe the
> PCS_USB region and the PCS register size does not cover PCS_USB and the
> regions in between. As Linux currently maps full pages, simply adding
> the offset to driver works until the binding has been fixed.
> 
> Fixes: c0c7769cdae2 ("phy: qcom-qmp: Add SC8280XP USB3 UNI phy")
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 1 +
>   1 file changed, 1 insertion(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
