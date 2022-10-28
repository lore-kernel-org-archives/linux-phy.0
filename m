Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 75AFBECAAA1
	for <linux-phy@archiver.kernel.org>; Fri, 28 Oct 2022 02:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VQLLepQszoTY1YXvPqOq1V+Qw0yTlX+6fW8mNV+IXrw=; b=CeIZtm31HXQNW8
	VUTJfFP3EEBc2b7in/g67uq7r8xaPQd2nd7u36U9d0IRvhLW44lWgT+Ute8C/93aP6GnNmcT40S/r
	9mz8Dfbm3pvZdclOGO4PMtfm54v2vxhiHRP3KVU2vM9Ou5wIkCISe1I+b1w81CKPhu4NzvRwad8J2
	NvmEp8ki+u1bjCeH1tqa6iS3JiWH1RLtO0MMoiMWYy3NcVlaJVzxSDlDNS8fsuD9GUkv7t3Ii3kcD
	4DvenGlu11k5gUTJ4dwdaVZ0Sy9FlSRO8NwAylA8Rr11EVvnh/whPdWsGL3k5xyshJFhquxdyDr3r
	ZunZV28+K5poKS2Gu3dQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooEqe-00FTuF-Qt; Fri, 28 Oct 2022 02:11:52 +0000
Received: from mail-qt1-x834.google.com ([2607:f8b0:4864:20::834])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooEqc-00FTtl-3c
	for linux-phy@lists.infradead.org; Fri, 28 Oct 2022 02:11:51 +0000
Received: by mail-qt1-x834.google.com with SMTP id w29so2722597qtv.9
        for <linux-phy@lists.infradead.org>; Thu, 27 Oct 2022 19:11:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lqkEG8O3RdCF5eSvHKs0ga0ET4B9mitFOaFUTFXCGVs=;
        b=Os6Q0T1dUfoGYOL+6+RHujbdE1xr2+yaX9hBMWBZ66Q5Yje9NwiDTXLvy/Tc3e2i6J
         aCO869dpnTUdEGmRLapfQllkH8T/5hZ+uH4waY8sU4K379SDEaxA1Sd5LEX0wSVh9cS6
         Ehq6hJ1/EfTsvdOCzu2gpMLRf1AdaAzMYtm6PeQHODOtMHyxgC2q5n8MGtCR5Xo4HjCE
         gHnrHA8ZrzRqffjpo0DTUGQ3ZSSmGfBLKz5x1DyAlDnfYXLfi/nyoS89eKPogh8cjRgF
         N6YGOrtQkIQlTbCWPNU2C3cQyBnT4t1DbJqpeTg58oCraThO618HyM5QWCEbr90iIY/Z
         iZgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lqkEG8O3RdCF5eSvHKs0ga0ET4B9mitFOaFUTFXCGVs=;
        b=Z2wCDyP6fIAc31ghwn0ui+8TTtk7SV7dmCQyLsrNzp1smpJqDmRleiPJEcvY4fv265
         3hlmrzQXPFoql8xP1/me6rv9uw89owJWpjzAa2jgU0QwOxdfXNDRoOlB8o8kWhg688no
         XKczVgiSHONb1OxelTP8DOkyaeBygBSTIzurD+6EpVVVhUsWuPJaA6wNJYGx3cQRAqQA
         bhV5SBQTh+faJZeIxLcMVxLeZrink8Zw/10wz6W8efE36woBKBRrJmOy1ANN/zbCguOv
         FBTzs2n/jO3IEYe1DioJ+eT3lkTntLYyKEhQT0Q2LuTQINUH0djv3tO+CSnSnG48i7DH
         9Idg==
X-Gm-Message-State: ACrzQf0GAUjXYh4UsvWinFdMYvO+vnbwLS9/oCNgW9Sma1BJZ0E6VlBw
	evLDuHozejlLAVGddI01ewwQ1g==
X-Google-Smtp-Source: AMsMyM43BQ6Snvnq1Jm5XGjqmIIYgdUbbV/PbFBr7Z4M0tReDOXXdXfhlrYUPbuq0dweZtOuAkTDtA==
X-Received: by 2002:a05:622a:1b8e:b0:39c:ec9e:46c0 with SMTP id bp14-20020a05622a1b8e00b0039cec9e46c0mr43512951qtb.329.1666923107683;
        Thu, 27 Oct 2022 19:11:47 -0700 (PDT)
Received: from [192.168.1.11] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id w187-20020a3794c4000000b006ee957439f2sm2033202qkd.133.2022.10.27.19.11.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Oct 2022 19:11:47 -0700 (PDT)
Message-ID: <02bf2278-a204-f258-48ff-18aeec4d2858@linaro.org>
Date: Thu, 27 Oct 2022 22:11:45 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH 08/10] dt-bindings: phy: qcom,qmp-ufs: fix sc8280xp
 binding
Content-Language: en-US
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221024090041.19574-1-johan+linaro@kernel.org>
 <20221024090041.19574-9-johan+linaro@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221024090041.19574-9-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221027_191150_185831_7434D4F1 
X-CRM114-Status: GOOD (  15.35  )
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

On 24/10/2022 05:00, Johan Hovold wrote:
> The current QMP UFS PHY bindings are based on the original MSM8996 PCIe
> PHY binding which provided multiple PHYs per IP block and these in turn
> were described by child nodes.
> 
> The QMP UFS PHY block only provide a single PHY and the remnant child
> node does not really reflect the hardware.
> 
> The original MSM8996 binding also ended up describing the individual
> register blocks as belonging to either the wrapper node or the PHY child
> nodes.
> 
> This is an unnecessary level of detail which has lead to problems when
> later IP blocks using different register layouts have been forced to fit
> the original mould rather than updating the binding. The bindings are
> arguable also incomplete as they only the describe register blocks used
> by the current Linux drivers.
> 
> Add a new binding for the UFS QMP PHYs found on SC8280XP which further
> bindings can be based on.
> 
> Note that the current binding is simply removed instead of being
> deprecated as it was only recently merged and support for SC8280XP is
> still under development.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>



Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
