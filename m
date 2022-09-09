Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A25DDC6FA86
	for <linux-phy@archiver.kernel.org>; Fri,  9 Sep 2022 13:31:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zmgXZRtQg569fcai6/QueDk0468fuVxLorXQke9+KjI=; b=bzZLQ4Q6A1FhPV
	Z56NaapgX7skyeZmk+d6h7VYu4P0IpFrKGGjgZR2HX/SbhNfZZ5NFNDylUbJWQ7HwJ9kRC1MYTND5
	Tqds6n6IQADlQqqrXEF6joT4dGdwh1xsIyAIQ3JLxi3xrk6PkPJ+5GOgkJkIV3j8+vlfPxuBn6EA+
	D6zzjTLLXUxngCITWJkTx6/qojxHU0E9P/vNEZuacLWk2uJiT3yif7yd/1liEi2p+Ra+hIZl15c+9
	rCoVPDUooEUwkRexopU32CeCCP6u5GGWV00yH7KQR33Go8Uvpsxa8GIFKlzc2b8rxJtV1zVnBCbyP
	6hQu6hAHVH/JsIkOIHjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWe6S-00GKsV-3L; Fri, 09 Sep 2022 13:31:28 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWe6P-00GKrI-LD
	for linux-phy@lists.infradead.org; Fri, 09 Sep 2022 13:31:26 +0000
Received: by mail-lf1-x135.google.com with SMTP id o2so537317lfc.10
        for <linux-phy@lists.infradead.org>; Fri, 09 Sep 2022 06:31:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=QATEerfWdeHtuk2b8IdfnxtgvdbCuFkN8Fhc02s3dYc=;
        b=kGfLhczz0jiwGyvxrgGKB+yOGyxagqjLSeXcWNvr5CCOQX73IsQxxBKyNRT8QKUulj
         mEUKnS2LyCpuZS7VN9WNSswO2YFm9QpHpE6BMaegYn1MxlPQk4AuAoTgm5lKC5hNsZ/g
         d7aYZiovU0RNAVgHUb3/IaYxIXatlxCMzUKZcJ6bDaCXYkDZ5UhgMQtcfkLFUMHZPpDg
         i4yH8cm1FjDFd25quyConnC4nYcAL1mAuX5VERjrSv0qV5ob/vadOPP1JSJNOv8YA7Ep
         ZGamSjpMOV2qQBbaCqnOXNgIA2xvIF9tc2+Gg477MlikoPXWZeq2LgI4+M1H17T5aiUT
         uNLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=QATEerfWdeHtuk2b8IdfnxtgvdbCuFkN8Fhc02s3dYc=;
        b=rrTIzrS13lSb4TAObx5y02NmkV/lZukZjCiuvBQ6JWwIZHe4WVsADrylseFPQlQrNF
         pcrKHrGY4zlyv31jOC54LxjGRRw2rjg81Eb8XBCAFWK1PW7ECVBvI8mMrwtOpRnDp2Cn
         uHWHYSb4ite+piE5i9hlDGNLUUIyBZyI95LVSkjTHVSKkOfdJ3o5KrNseBeksGxgDugu
         IN/adBnrlf/IQVxYpoUCHFtGqsOzAeQszwjq5avf7vE/rJ66vexCBKzMAiJwvhPqVaP+
         5/FUx/8k5rj78Vtyg1OcLpuwe32kmAsi5le/qfiLfnNu7/vUYZ0O1ohCKehMy8+zOKbU
         e6wg==
X-Gm-Message-State: ACgBeo2Xz6zSF7qyjtH6flzOgYdHcKUBNA+wHcR66sHelFLWKU39/kmt
	Ac+Lczla8SkRx4BNVIFvc5j2xw==
X-Google-Smtp-Source: AA6agR7fIDxNSncdSg5suv4FMCPLL82wx2WduXPJ0SVVApKFUTY4GtAX+mJVL1Oi9vqtyY1r/6MJ/w==
X-Received: by 2002:a05:6512:3e10:b0:498:f317:e57e with SMTP id i16-20020a0565123e1000b00498f317e57emr2202136lfv.328.1662730281949;
        Fri, 09 Sep 2022 06:31:21 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id x10-20020ac259ca000000b00492e570e036sm90633lfn.54.2022.09.09.06.31.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Sep 2022 06:31:21 -0700 (PDT)
Message-ID: <9aa9828b-ecc1-0783-4dde-1af81bd54c19@linaro.org>
Date: Fri, 9 Sep 2022 15:31:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 5/6] ARM: dts: qcom: apq8064: add #clock-cells to the HDMI
 PHY node
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 Vinod Koul <vkoul@kernel.org>, linux-phy@lists.infradead.org,
 Kishon Vijay Abraham I <kishon@ti.com>
References: <20220909132010.3814817-1-dmitry.baryshkov@linaro.org>
 <20220909132010.3814817-6-dmitry.baryshkov@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220909132010.3814817-6-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_063125_724325_07CF63F5 
X-CRM114-Status: UNSURE (   7.33  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 09/09/2022 15:20, Dmitry Baryshkov wrote:
> Add #clock-cells property to the HDMI PHY device node to let other nodes
> resolve the hdmipll clock.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
