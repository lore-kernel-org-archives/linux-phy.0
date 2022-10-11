Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5611C433FE
	for <linux-phy@archiver.kernel.org>; Tue, 11 Oct 2022 13:51:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=15YCz01PSWZGsgksEiZ24Ql3I+rewYzu+G4+zUhS9hg=; b=BGH2HbU9IcEDA/
	IT5F4TVDZyc4g0yR4WQ/G4bwJUTGFma6cncrQlx2IAIdbOIwg8g7kdMxKDIg8MWtI0pVWPrJrqdK/
	ZQbFbg0yulLRt5RZMt+ipDtMiErRvdzjwJOnRUO/uWG66ni7TFZcoTHpY7ViAHvdwW5og1onktFYu
	rhsdIOKpWF9TwaLJqLg/cwgVoF8Hixxt7Tf3dnrSXharGHUWzhyO3hHkUJ1oSMQMLrZLB00bdTGCe
	XN54cLj9/w0Jtw8Sumrhey47pdIoDdBq9mWPou1pIqS06duxdZozmASvEbZeebBOJSUz6EGqLkOnz
	JI/+zMwALvGFnPHdujsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiFfF-004OH8-A3; Tue, 11 Oct 2022 13:51:21 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiFfB-004OD0-UX
	for linux-phy@lists.infradead.org; Tue, 11 Oct 2022 13:51:20 +0000
Received: by mail-lj1-x234.google.com with SMTP id x18so8337941ljm.1
        for <linux-phy@lists.infradead.org>; Tue, 11 Oct 2022 06:51:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7C53GQvIdU9/jPt0DvQ7RGs3HsrImwAzRzdet7zBxdk=;
        b=C0qShA64hgwnpZF9CF9ghDKd7XM5n8nD2Rw0ReoVo0NxmoK/laSJ7KpbN3S9FbmFN+
         EdfYX8E7FI1st6TpffyR+0GVYXYZTX52j3MuR+fmP4kgU11Mni2rE4G3dCHAv3lvE4rc
         L0Br4rdWBpTUuKTRZQeNmTPyinSt85eIg/MXT5Rp25H6rWdoFnm2LoFLqVMQoRFkvnPu
         uAbPwuZytW7ZwGthddtPya0OBD+7GBa9wd2DFnB+ExggZ68JMwtePdByKxBwbjkR3Ihi
         opIIN8cWm1AkRTRfHdJbRuqjlkAhhdPGD4jQ7YPVV3fj6YuIuVrk9arQ+xdMXdTKM+nx
         VmTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7C53GQvIdU9/jPt0DvQ7RGs3HsrImwAzRzdet7zBxdk=;
        b=NSoSjVWD08jynjR1XgjHKbWjKAqIs9Q5PQmW+cnyfzN5wHtZHun2eRwtbCkS+Bi4nl
         Aduy6gCefMBtpWQnxYhbkJqeVIANP9SEAjySseAcrF9NP4Zs3ut2JOxOd+Ge0beQPO9G
         egBRFsX043x52StOL5QRJGbxdfshOloCzvbtafnPoXQndCyT4L2xGaFKdWqM+PcVtqb2
         Pf5cRNrouZRHjV5XLFWuvLCaynYolNT4jjIrycTjvUwmr13bA0wRl5b+cgegEd0usS2l
         ZuzAvKSZL6IvTj1pkFjwNlBveNw4fXItBg6pF/b2F0OurXTgHkFTB7LxLrGeSuuIW9CP
         r51w==
X-Gm-Message-State: ACrzQf36wrs0SWFs9b2g3mCQ//kbjdkIKOWcL7zPTN5iXJ2tOr/XqFqk
	kzwl2P6j6FiIisvMtkwpvpdrvg==
X-Google-Smtp-Source: AMsMyM4vEHz4t5t74S777ZaRAebiTFBYZxtJzXJLzjMeSZG0u+PM1IllE4+HMCgb6gcSt/PruJIb1A==
X-Received: by 2002:a05:651c:210:b0:26f:ab6a:87f5 with SMTP id y16-20020a05651c021000b0026fab6a87f5mr3256979ljn.506.1665496271444;
        Tue, 11 Oct 2022 06:51:11 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id j15-20020a056512108f00b00498fc3d4cfdsm1868925lfg.189.2022.10.11.06.51.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Oct 2022 06:51:11 -0700 (PDT)
Message-ID: <c483351b-0728-2084-59f3-ac31b255cce5@linaro.org>
Date: Tue, 11 Oct 2022 16:51:10 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: [PATCH 04/13] phy: qcom-qmp-pcie: drop redundant ipq8074 power on
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221011131416.2478-1-johan+linaro@kernel.org>
 <20221011131416.2478-5-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221011131416.2478-5-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221011_065118_025695_370596B6 
X-CRM114-Status: GOOD (  10.16  )
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

On 11/10/2022 16:14, Johan Hovold wrote:
> The PCS initialisation table for IPQ8074 includes updates of the reset
> and start-control registers which is already handled explicitly by the
> driver during power on.
> 
> Drop the redundant register write from the IPQ8074 configuration table
> and along with it the now unused "in-layout" configuration macro and
> code.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 42 +++++-------------------
>   1 file changed, 9 insertions(+), 33 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
