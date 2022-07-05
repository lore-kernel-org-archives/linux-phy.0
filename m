Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4977CC433EF
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 10:02:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p22hXGDSpC34Vz0eZleRceeHGSOp7K7HRWLodB5AnR8=; b=ZkuSe74/ooJmED
	VrCUk5R2ZIQ6BQ5xPRjGVXJVCeZ84yKpY3A9eYgzhRL3rA5MlekYAU5nky6/S6bgjo6/UTSzZMmiG
	+sAFBx2OgrpeJcIV79uuRYBjzsj44p7M6L709xOG6AKBogTgAePlXhyBnXMbu7gS5J1MuW7nqzM4c
	zvu+K81ZaqnyKMmyPZZczq/W0mJ3wyywqteS8MVQ3maqzw98b9MnyP8HGicW3tPQehdVmBXg0Fa6j
	LtUzzxhdAzT9/9qWu0N1LFPpIihusdX8InxMxudCzgXw4i5rN1yUG2CtgC/44kMxD2mrw3EmKQEjd
	u6NhjwlDXEpNHjJtJU/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fNs-00H3G7-OU; Tue, 05 Jul 2022 10:02:20 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fNq-00H3Ew-JP
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 10:02:19 +0000
Received: by mail-lf1-x136.google.com with SMTP id g11so4440851lfb.11
        for <linux-phy@lists.infradead.org>; Tue, 05 Jul 2022 03:02:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=YsVdI7fHl1VxO3Wl5w8gk6OXuhIP/NlmiGI+6KYr6zs=;
        b=LUQmv684ojJXX0kS8+ZVOyZfAKtuh0TUojYHooSk1/kbN5fo1AEWOBL8BXQpL7IUhu
         +/YjUK4GHkOSfagzACV816hgVCTDsUAaMZ65YkokqADDGa8qsD+cY1t+bAm4/h7jBLzo
         TGUhCJyo/J0u4i85m2lnnFxDSPSyUBwMUIl6oFYQL4PIhUuRzdcagjqitKsei8pmEmGM
         59biwf1TYTsnphy9c+SJVl3tjOa+y1Yvm/MTVLTyiNnXB2V50MMz+2ySCWXxfhlvbDJ7
         RCFUnzHf2WhV44SxIh6j1ipaFqyo5Dd6SD5vWF1jNcvZ02j3dDk1iuJGCvU8m3imdelG
         U1eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=YsVdI7fHl1VxO3Wl5w8gk6OXuhIP/NlmiGI+6KYr6zs=;
        b=Gstl6nuZI2CdjOuAU1wCu6CfRuRPYh9W/VvkT9HiPNAgYRyrXLi9jkHrPX9GQm0+jV
         isFgzTKwQ0isj5irue1ct/FpJrkQwTrO7h5bMu3sISFKUNFZ3qwqHz9sErV8o0YgNGgH
         piymGAS+TNaga3jj/nEDnKo5NtHyOubLjqDvyfESaQ+4qh0uRhf9Av0q9AvcGKcQwMrM
         z82iP/635U9Hw5OoX4CIcc9R5SBaOtWeo3JNovALAgFRSnoocxcfBaZvlDMXyNhtdN6C
         ssCXuxRNVfnrzOPYFZOS0TRdc3woPWHOvLfolqJRt6eemyaJ53Em9CRhIvZtvMeBSOcJ
         erNA==
X-Gm-Message-State: AJIora+2v065LqpaRYClFpPJeliGyMEfnfx6P7623DrmTg4IpcYm++Cc
	25EbgeQ+ObsMLHPBrgv898Pwu/1c0iOUkg==
X-Google-Smtp-Source: AGRyM1v7t1GhNIVSZTg1X939xuA0e3pQLj4BvtxRMtuqaEdgbiTxylVDRXSRMYzbO69WGBTLo0ob/A==
X-Received: by 2002:a05:6512:3b9d:b0:47f:7712:3ece with SMTP id g29-20020a0565123b9d00b0047f77123ecemr20980076lfv.127.1657015336913;
        Tue, 05 Jul 2022 03:02:16 -0700 (PDT)
Received: from [192.168.1.52] ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id o4-20020a05651205c400b0047f8990e8c2sm5635777lfo.140.2022.07.05.03.02.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jul 2022 03:02:16 -0700 (PDT)
Message-ID: <b4058e50-8042-fe60-9a78-04bca7a09f3f@linaro.org>
Date: Tue, 5 Jul 2022 12:02:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 02/43] dt-bindings: phy: qcom,qmp: sort compatible strings
Content-Language: en-US
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20220705094239.17174-1-johan+linaro@kernel.org>
 <20220705094239.17174-3-johan+linaro@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220705094239.17174-3-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_030218_712769_9902B00C 
X-CRM114-Status: UNSURE (   6.92  )
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

On 05/07/2022 11:41, Johan Hovold wrote:
> Sort the compatible strings alphabetically to make it easier to look up
> entries and add new ones.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
