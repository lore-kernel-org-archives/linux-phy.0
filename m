Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E72DEFA3741
	for <linux-phy@archiver.kernel.org>; Fri, 28 Oct 2022 02:12:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DllT6Z/Juxa+/ppM5T6ES55tURfWWFEsWVaR9lOlBRI=; b=wrDwgOMK7sjzku
	06T+AMKMbs+julEfVqKgI/PxplEP9zgbvdvCZguH7qz/MswEgPYZR1XuwpwZyzjOkEfYCzv3dvqGW
	1CHBSpKiVRdyDbSpTgXzJ6OUoz2wCR/87sgilzemMTYK+kJbGGTLpch5etSmgdGvJcJPLrOaisme1
	o6rWB2K1SS+uCMQIa8jHqiKorOCEjtKRKF6BsC0U/HFwym32gbYSB8WNlR5PrwAk138ZDrlfdr6oa
	VV0+MkPMvncGAcj4lqmw4WBo2pIw8O1Tdz9B/GFmsrtr+j9saO06whxlZEgMw12Baft4u0h/i+8Yd
	r0jJD8Q0OopovtP2L4SQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooErW-00FTzg-8f; Fri, 28 Oct 2022 02:12:46 +0000
Received: from mail-qt1-x829.google.com ([2607:f8b0:4864:20::829])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooErT-00FTzB-GQ
	for linux-phy@lists.infradead.org; Fri, 28 Oct 2022 02:12:44 +0000
Received: by mail-qt1-x829.google.com with SMTP id g11so2744065qts.1
        for <linux-phy@lists.infradead.org>; Thu, 27 Oct 2022 19:12:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1XOig2GJh/ZrkkMO4re3uTMHnPxc2ZjxhSzqqi158pI=;
        b=cB8YRF6bKcSRckrSDMJAjYPoShpSWGC4uvh1TsdUnKDOeH+JHtAQpm9I62oqCfWatD
         MlzWOSTiBmiboUN5BX8lJRNS2LZxGw2J0RHvP3x+iI6jDAetm5tx1/PvjcT1E8Ioh8WT
         kJYihdZJ2BaZM49e04E91m8UAdsNnQTTTdIjCQWmQGQSDnpYgT4IXHTRjMYR/0w/wRpF
         XLP4Ecci4bt0U+1Aq5OdOLeKTOMm37iO9th1yvcF3+fRp4XGQs0RcbnuuM1QX9OTOdb6
         clKnNetKyHUSpY1nU9U9wlO8YiyGmN7zWKZSwzpLpgtYpe1qn/tu/dHXRwqCipIgpQkg
         k6gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1XOig2GJh/ZrkkMO4re3uTMHnPxc2ZjxhSzqqi158pI=;
        b=WASvZluhLCdKwA2qt5TVEWiI4GmJB+ZmaedlrWN9cJYO181HTdIMwxzTEPDD7jsmlo
         ySfsq5ThEU5bEMFE7/IrQddBXkVA2HJEeL+Pr99pyzhlVDyG8ntsF8Ngv8Ohbft1w19A
         BFMLfIuPMMJKfCrHgRNFdmHf+M9UpH2kYOu0/3UWjNYfqrFusmZ72I6n18N5DqK1ToS+
         oJXIhrjeyBv19sYgqBOfuUyr50gZA8RcObaiy9KRA2F9Fo9bCnQwbHmg23gNe8vj1+jZ
         LWNHLbEpTAi4vwTmU1reagvG6fSTv54bJwLsw+NiqPBm+4yOl95JVDN/Ht8lf3vbe2Bd
         gNVA==
X-Gm-Message-State: ACrzQf3I9GnilBOobqWn2fzlRqitYn7QJ8fYELC++wU55lcKWAikmPqn
	6+iMO6S7AC6rWeOTMAT3TGDY8VN+a8tmWw==
X-Google-Smtp-Source: AMsMyM7sv5YsOFbu97tfGpPtGNRTBVc4iVELyLGyC1dtJbvNsYfhrUb+y8hwhZpIr1Vp8IIjAQxdjQ==
X-Received: by 2002:a05:620a:3715:b0:6ee:cbcd:3e8e with SMTP id de21-20020a05620a371500b006eecbcd3e8emr36341137qkb.98.1666923152041;
        Thu, 27 Oct 2022 19:12:32 -0700 (PDT)
Received: from [192.168.1.11] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id cj21-20020a05622a259500b003a4ec43f2b5sm1729889qtb.72.2022.10.27.19.12.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Oct 2022 19:12:31 -0700 (PDT)
Message-ID: <40833a8e-5b0c-4a63-2c8a-131374236901@linaro.org>
Date: Thu, 27 Oct 2022 22:12:29 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH 10/13] dt-bindings: phy: qcom,qmp-usb: rename current
 bindings
Content-Language: en-US
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221024100632.20549-1-johan+linaro@kernel.org>
 <20221024100632.20549-11-johan+linaro@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221024100632.20549-11-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221027_191243_576439_953CF09F 
X-CRM114-Status: GOOD (  13.55  )
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

On 24/10/2022 06:06, Johan Hovold wrote:
> The current QMP USB PHY bindings are based on the original MSM8996
> binding which provided multiple PHYs per IP block and these in turn were
> described by child nodes.
> 
> Later QMP USB PHY blocks only provide a single PHY and the remnant child
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
> by the current Linux drivers (e.g. does not include the per lane PCS
> registers).
> 
> In preparation for adding new bindings for SC8280XP which further
> bindings can be based on, rename the current bindings after MSM8996 and
> add a reference to the SC8280XP bindings.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
