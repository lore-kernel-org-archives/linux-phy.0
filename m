Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65550ECAAA1
	for <linux-phy@archiver.kernel.org>; Tue, 30 Aug 2022 09:45:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8OYRnp/AZDWKqv7eElLTQqDHqrWC2krotgTSSOawONg=; b=wLPFhwA+7om9sM
	agkzIx7aAp+gsNAxZ94ZssH/D/GNsa6EHE0ASVCwdFE05jM8inVs01iERQT8YCdt7yoA+Hd678DO5
	RHrNXwHqzgA5cMbypvXaTBifQPtGARVuB+aFXlvx90rh0wd7hrOzDC/69k3loLI2qQJGCINyuJpza
	Eh1Q6Y1ltF4YS1602f7xhaJ+4d6Wi13kH04bsqNndgHq7lNtAAkv3t1v5M2+SCB3Zw8tpYZxND/PC
	ODrrJ+aeLG02d8Gb+tptP/Dm4EWvwLJngckVBxj90v3gaawL4TAD5RUAgf0gYFBmU7Aia/W0jIenR
	uSCIVlOFxaCYbGM12Jew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSxo6-00FoNl-L2; Tue, 30 Aug 2022 09:45:18 +0000
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSxnt-00FoFW-Nm
	for linux-phy@lists.infradead.org; Tue, 30 Aug 2022 09:45:07 +0000
Received: by mail-lj1-x22f.google.com with SMTP id z20so10766330ljq.3
        for <linux-phy@lists.infradead.org>; Tue, 30 Aug 2022 02:45:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=N4LheGfogZwAoz4Rv/ngvYZ5qgXotWdDTgd++DbmjE4=;
        b=yMR844Oy9Ze/yRFGOhG2S6WZEqMvDZZHFlHeR7wdxfjeHJF+5QfyF0dGuHL6yp4fOv
         rdvMTpaNfQOfuWbxl/n8XZtzDwbHrmQL4gAMgF5UsOQAskIfHOw20OGjIwCE9Fa+DlHK
         DeKJg7zSZ220l4BZbyyAbdYz/9b/pIjRCMPTRWI0NHt9eTAOlnRwcf52BjFzEi6noU2L
         9cF1NkvS72kEfqAO9URotrJ4ea9X7yvpIEzevtnnb0t0h+vMwo6wSKE8uw8s5BLFUCEn
         p91Bb0oubgM6vyWgbqwV1uY9oeSlN2se9vAVKn5rjiFcdjWyRWsxxsNLQKnutsIFuPBI
         qewQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=N4LheGfogZwAoz4Rv/ngvYZ5qgXotWdDTgd++DbmjE4=;
        b=TDUUt6sAXBCZt1ZDPJkzkMFcQ/e88Wo0YzjLbTaSCRuj/57AtS8iF4ygZ/6viXd+2P
         +8SpUIA4pUxcuX41PO3FD2JIkWxpJ5aB2cqZ7K87W0USd08iob1eTf2ZMyfF062neYBi
         lb/eXc2GnPjSjIIMojqzJK761t+bMm3WKvpUYTy5l9a9b4js9ILVfSQ10GgoiyDWENfT
         48wYpNkWxyHGQzHxYGuTeAMdmaXwlTfrcjaPef1Hw9C89KYpcWXeWAvmloVAleoh9sKs
         hS4E6/RCQP1Kf5fFJyntBnZh7xwwZcEL+9tKGpwSEuxHWUqmT1Ue73SEuI8DqryS7UqD
         wwxA==
X-Gm-Message-State: ACgBeo2QZdzRIK8flXy1+jSF2sztFRrmq+u7Pbc80k6c1vxDVZVtnmj6
	UWzIi8QHSqqKNebblcOixtKO8Q==
X-Google-Smtp-Source: AA6agR4jn6kVx3JsJKuIGOtqSpsDxFV6XeVfQe6nNwKELDQnsJHDnsIDeT+6VZnDMYThKJJoXi2+FA==
X-Received: by 2002:a05:651c:88e:b0:261:b5e5:8622 with SMTP id d14-20020a05651c088e00b00261b5e58622mr6375100ljq.99.1661852701925;
        Tue, 30 Aug 2022 02:45:01 -0700 (PDT)
Received: from [192.168.28.124] (balticom-73-99-134.balticom.lv. [109.73.99.134])
        by smtp.gmail.com with ESMTPSA id f10-20020a056512360a00b004946e72711bsm552290lfs.76.2022.08.30.02.44.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Aug 2022 02:45:00 -0700 (PDT)
Message-ID: <9bbce65a-b955-cc76-ebba-266675c95964@linaro.org>
Date: Tue, 30 Aug 2022 12:44:59 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v1 1/2] doc: dt-binding: mxs-usb-phy: fix
 fsl,tx-cal-45-dn-ohms max and min value
Content-Language: en-US
To: Frank Li <Frank.Li@nxp.com>, kishon@ti.com, vkoul@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 linux-imx@nxp.com, balbi@kernel.org, gregkh@linuxfoundation.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org, imx@lists.linux.dev
References: <20220829153124.2791210-1-Frank.Li@nxp.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220829153124.2791210-1-Frank.Li@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_024505_873701_A6CE3E3B 
X-CRM114-Status: UNSURE (   7.20  )
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

On 29/08/2022 18:31, Frank Li wrote:
> According to spec:
> 	0000 +19.95%
> 	....
> 	1111 -21.68%
> 
> 45 * (1 + 19.95%) = 53.9775
> 45 * (1 - 21.68%) = 35.244
> 
> Chanege fsl,tx-cal-45-dn-ohms and fsl,tx-cal-45-dp-ohms range to [35-54]
> from [30-55]
> 
> Signed-off-by: Frank Li <Frank.Li@nxp.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
