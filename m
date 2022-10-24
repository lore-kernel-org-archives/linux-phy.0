Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F12BC38A2D
	for <linux-phy@archiver.kernel.org>; Mon, 24 Oct 2022 13:34:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VvH+Q30tDO4Q8POyadiH5FxzzbKj7J58X/DD78vZ6jM=; b=rOMqOQI7lRUmpj
	Ursqs/x8mUqOpbBI2JlPNTaUSp+Rfe7at0QO4dF31JxYz0iVyJvOYhKHGLFluUt4yWpvlyGkNczfA
	y3BRJRowN7kZtPAl2SgdCYlSdblDD8mDyohiA/4/ZF2nsEn5qp/r+VAqSYQll+kl3rR+/p0hGSiyj
	T8pScfda1VXamhDWKx+sVcwyLYjeXaW6IAR7FiU6txaQOw+dnJybGuWh9sx24Sj5FlYitpouwB2EE
	/UbjBPHW5QJTlhzYiuMfKs74Zdqr7EB1D+F4n2XOuOHwxkP+SZ/bkGBzD+iMcr7YBFJvuuyZ9j/Cg
	Dp0Jv1sTBWS4J8derZ8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omxbB-001jMM-Lr; Mon, 24 Oct 2022 13:34:37 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omxb8-001jKi-T1
	for linux-phy@lists.infradead.org; Mon, 24 Oct 2022 13:34:36 +0000
Received: by mail-lf1-x135.google.com with SMTP id o12so16759177lfq.9
        for <linux-phy@lists.infradead.org>; Mon, 24 Oct 2022 06:34:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HFZjX5S7TOtvQCwB9xl/hGQf5yUtgAWOiJRBK3Mc0r4=;
        b=M/DrH1WIigY7MKVYeORXxguZGdlaMYm388Q9Y0zeJXJAYpNHUHnC/seWKCRCDKVHZh
         FYLajzsz66qCaNceZ4vmnt6q8mylKNF6hvucvj0kq6KjGhccTuNPAZWnq83tJUI7Z2St
         13JCqldQNVjW8JcEu9r2l5ED0Q3ZFdZIr9V2BFb4ECvtpBhJlie6bxLVirhOvz3P8+yc
         0xYFfs46bfRCSHixg3T4aH/gR/HPM0R3W1YWJdu5KYXrCiItapruc5uPaS87CZjTypfF
         ZK+d7HI9Y8/0t2DFftZ6FMqgICqwl6t9MaqXPtoysb99Gh9xPGzLnUgX3I4RVBkksVBp
         UDww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HFZjX5S7TOtvQCwB9xl/hGQf5yUtgAWOiJRBK3Mc0r4=;
        b=2229lmb/X1Io0bsUelppwa6eAHsAbsAbEAtD8GXoFvDsqeHIHwJ4l4Gupr2AatXyi2
         jo+aT43I+RbXq/SyKCDcHo1+FqLsIsm+cUYrE9kkkxJa2OqdWH5vlys5a591dbCjLfDi
         aEf3zgw19W34gYR4WErOQj6slsYdA4uZeIa/zmap505REVHl/7wbjzWPo/Hb/QsWAK2v
         6bw4k8hSnvvGI+uhmFzdsLkK8+72i9Lg8rDwKM4Rd8YKO6b3cQdqORVbO1/wM0KuZy+c
         FWO6kOHWyTBI3y8qLWSabwhc3sw6zbJudOQBz8YTrSrqMkyAe7p4I/C465mUyAcJoKTs
         MjWg==
X-Gm-Message-State: ACrzQf3IY+dcVz2nOEutA0uzu5UEyfO+NelVjtzH38PyQA1RO2SUB19U
	IJo+R010LUYrIGOLqbhmn5zuvA==
X-Google-Smtp-Source: AMsMyM6Cay83Fhrt2am2YSVlmOjugpbTdf1Ui3AKwagVyB8ovojrmkQXtuTIMd3QITZ4VR22jyyMYg==
X-Received: by 2002:ac2:5b4e:0:b0:4aa:301f:3e2e with SMTP id i14-20020ac25b4e000000b004aa301f3e2emr2873383lfp.90.1666618468819;
        Mon, 24 Oct 2022 06:34:28 -0700 (PDT)
Received: from [10.10.15.130] ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id n28-20020a05651203fc00b00494643db68bsm4531561lfq.78.2022.10.24.06.34.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Oct 2022 06:34:28 -0700 (PDT)
Message-ID: <e19e563c-842d-d54a-c986-62526a58b468@linaro.org>
Date: Mon, 24 Oct 2022 16:34:27 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH 07/13] phy: qcom-qmp-usb: clean up probe initialisation
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221024100632.20549-1-johan+linaro@kernel.org>
 <20221024100632.20549-8-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221024100632.20549-8-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221024_063434_961366_4423F62A 
X-CRM114-Status: UNSURE (   8.46  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 24/10/2022 13:06, Johan Hovold wrote:
> Stop abusing the driver data pointer and instead pass the driver state
> structure directly to the initialisation helpers during probe.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 46 ++++++++++++-------------
>   1 file changed, 22 insertions(+), 24 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
