Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24779C433EF
	for <linux-phy@archiver.kernel.org>; Fri, 15 Jul 2022 09:28:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vjqRar/j13jQgERHDAw1CVkMNLP6/q5CSgUm27sZeq0=; b=x1NqO5I/cOn97u
	muVZxPWb2PIKbXlDfJA8Pi178COPSyijuE4Wv5xU0oTZrR984MOFvWqX4PPROeXuoTZ7NBrb+vs4n
	M++eKfV7KK0fl1r9wi3n+ThyMrLLV2YIr/M149KgpNa6zzvlC3KubVvutHH4o5bdL9z+NEkW5FGAy
	9/2mll/1kQO2ICxBzmOtnKSaq7FLSU4Tc+9uw4+M6rScbJfYszZkr61ESuWs5FRJicMJuktB1cni7
	vCTCRNGhcY2sIFrn2AhJNkEwNIxXA3A75Sc0mHSZUhPIKPm/bB03T2RSwVBowVsZCw050aaiexZcp
	R8lKelLA8C1T0mMCx7+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oCHcf-0068fR-JV; Fri, 15 Jul 2022 09:28:33 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oCHcd-0068cn-7e
	for linux-phy@lists.infradead.org; Fri, 15 Jul 2022 09:28:32 +0000
Received: by mail-lf1-x136.google.com with SMTP id r9so6898899lfp.10
        for <linux-phy@lists.infradead.org>; Fri, 15 Jul 2022 02:28:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=spTRD7uH+zz+Do5jAg9snd7uUL6MjKjkWOeq5SImiLE=;
        b=elR+i8Q4YMvX9z2CIHoH5yEfNoHdH4Iv6eEt9cpquW8X9n2UHdW0Bg3EBV22ZKDSCs
         +ChICdtOdYn1Kd6GQjIB9fWEt4j39pHhRzkcuPwcB3vFRs1GxohFBiinhkndE9cMyl2P
         6z8LWcVHZ3iceZ3oZJqDktC2DtYVqk6B2ppASDSK/nzmqwyOS5+sZYi480y36Wqo7EQR
         OPJndF72VRWyV51DMcsW6Fo6qxLA8BOMlhzPvp+w+adg7goDxJSfyG1nxm7+Zk95ClXq
         s4CwW3t0jqYWsAWMb8F7fr/t7a+s7dYxMPDEvjvlXw/4YZiCPq4gyRjzx8CfdY8VFORU
         p+oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=spTRD7uH+zz+Do5jAg9snd7uUL6MjKjkWOeq5SImiLE=;
        b=dq0kKnO0+jUxOLSmYVX2eDJsdluYIwkGesxOctfyfrauTXT79PXpSsUhncPSyTFHdZ
         sUTo7SzhKN9L8hdUMm44eLm1uwMiC+MZgLuh5P8ruqtlhSJZdusdyCAlq08vVkpIez5+
         01qPK7Ja4MVPFosey4b516VwSa/D3PAz2XW/ZsPsOz667fmbaRVZWZtRBsJH+YrY0i7V
         AInnfvJbZJuATz+dcLk9coPsWR5Ag6QH0tK324lw985XrJee9wzHDWmXrVajNb5PS2XI
         b+Z0Gy96a1/upQ6NGPgeq1qB9f6tfMXiGRV18NAnZEaAmSlSHL1KUGbjKLdrgAfKdsjI
         eEHg==
X-Gm-Message-State: AJIora/NsJKUIGyJaaTUfQeX4r+ASACJ/UpP6PJNZ8VMs75yUda+QLlk
	gJY+erCgqmoWSqOU5zywN8edRA==
X-Google-Smtp-Source: AGRyM1t4UUAqL/ykt2xtB3H/xDVUDoiUS/J1dyO5R3SE+XKpuVVMRdY5sftmPnzCycKxB+c6eCnJng==
X-Received: by 2002:a05:6512:b23:b0:489:d24e:5abf with SMTP id w35-20020a0565120b2300b00489d24e5abfmr7811557lfu.636.1657877306666;
        Fri, 15 Jul 2022 02:28:26 -0700 (PDT)
Received: from [10.0.0.8] (fwa5da9-171.bb.online.no. [88.93.169.171])
        by smtp.gmail.com with ESMTPSA id s6-20020a056512202600b0047255d21190sm812585lfs.191.2022.07.15.02.28.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Jul 2022 02:28:25 -0700 (PDT)
Message-ID: <49546e85-feec-4996-e8d4-34585dd7e0e5@linaro.org>
Date: Fri, 15 Jul 2022 11:28:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v3 29/30] phy: qcom-qmp-pcie-msm8996: drop reset lane
 suffix
Content-Language: en-US
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220714124333.27643-1-johan+linaro@kernel.org>
 <20220714124333.27643-30-johan+linaro@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220714124333.27643-30-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220715_022831_300688_F7D3E6DA 
X-CRM114-Status: GOOD (  12.56  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 14/07/2022 14:43, Johan Hovold wrote:
> The lane reset is defined in the "lane" node so there's no need to keep
> adding a redundant lane-number suffix to the reset name.
> 
> Update driver to support the new binding where the "lane" reset name has
> been deprecated by instead requesting the reset by index.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
