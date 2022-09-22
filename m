Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E50AFECAAD8
	for <linux-phy@archiver.kernel.org>; Thu, 22 Sep 2022 17:59:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VOEka/0YWwC8Ly7M726TO82NdPqZuNNl8XbDYeNKsjU=; b=G6xXDjmB22LQcX
	y744P5bRjdoZhc4K1DW0ad+cW4FdkcyBnzqZZIxZJSwi/X3mMhM3+BVxyHL7KcmrWY71mEmrLox4a
	7CBrC6BOOMx3pyQZdaJpHt/ythoWNgJD+VuqFas7UnrdtPVCoSJkfyoq/70svea+Xnd1Q67P4H+rB
	eX7owfaqAzlNR3nyEfvoGEnOXRqnWBF7UQh2hN/MAfUC5vraq6Lgq4g2CLjoioB8xhZYwfTgnfWsE
	6mtKdkeYKpfrWOc4r0EzhBIO8sSNILafb3QcawvoivRw+Btr3vq9Qru4qwzjW1KM0fxQcK2q2seHs
	jRoYYk6c+Hju9/2n/v/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obQTy-00HC3T-DY; Thu, 22 Sep 2022 17:59:30 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obQTw-00HC2U-Ir
	for linux-phy@lists.infradead.org; Thu, 22 Sep 2022 17:59:29 +0000
Received: by mail-lf1-x12c.google.com with SMTP id m22so1249241lfg.0
        for <linux-phy@lists.infradead.org>; Thu, 22 Sep 2022 10:59:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=4nT6yS+Ms6brVYACX39bRREepRISliXsPSyECtXbv/g=;
        b=ViufngUgBk8RQBloB7kGIRL3i/8RnbDCaKorhbHlDPeLgpzVHJESYpsDI2YLYGsoZW
         rkfEAkODgUVwMwyiGscqd0yWMI/iVh/Zqdub0MIjKtXImlLsmtHQjaBYlv1aY+PGsqji
         rFDIG/SpSwPQL+3NNtIoTHvkQIVX6ogo8fUVtXMpl8zon0mCY8dg//K85QNnBmaOfqyH
         cZNW5kAS47MQPYKbIbqaDd4OMyL/7lUAKllazLiXcC78b8I8rwKj0jYa0LXzqeehHjX+
         Np9v4l5YA6eCX33snBE0mXjvyIJc2FQv03m/DqcR6FkqRkSOdtGFmsdcCL4Xr0L452oD
         cKUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=4nT6yS+Ms6brVYACX39bRREepRISliXsPSyECtXbv/g=;
        b=JNHdl8B2LTq3rTnJ/IXPB3vAVZoEd6w+m7gRwwail/oiZQbpTReHDv7vsMe6Pu8S35
         /SpzJx+wteSFslOrQZ4G+w6EmbAzdZsSFY8r76KS68N9l8k8giTnCG8Rde5j0PZdK2Bk
         M6O892qtv7eF3BbHQ+i6fy41NcWldBJGoya95steBIU95go0HRvh9siZrfaQe45ho8u9
         xPogX9uAm+ZmgJm+aTj0kXPulTWWvEeidincjYZOv8ypIBzwxpsA6akZH5sMx/NDc1Ot
         j9YlIQoF2d0nk7ben6xkFRyBcDoyXrHOunwjkS6RiqBsTVmj0opSzUrum1HTx/c1mNu/
         +Akw==
X-Gm-Message-State: ACrzQf0Rz8U3jg1SN7vLuaU3d+BGsM43ZFjaURTpPhOsCcxGyYN1PE40
	hhUuS8rwjF0J4YWqJWbOo7Z70w==
X-Google-Smtp-Source: AMsMyM4JvnSQWaV2khSQzyKxxZ6iuIyN8kxKgl/0FAj7GfYhlIPb2MeaPM6B2Ak/LlcK5yohP1dahQ==
X-Received: by 2002:a05:6512:2a8a:b0:49f:546b:6cd1 with SMTP id dt10-20020a0565122a8a00b0049f546b6cd1mr1611809lfb.422.1663869566301;
        Thu, 22 Sep 2022 10:59:26 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id d3-20020ac24c83000000b0049aa20af00fsm1045072lfl.21.2022.09.22.10.59.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Sep 2022 10:59:25 -0700 (PDT)
Message-ID: <84240f69-1b5f-128e-89b3-4e22af7bbbdf@linaro.org>
Date: Thu, 22 Sep 2022 20:59:25 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH 11/17] phy: qcom-qmp: drop unused index field
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220920073826.20811-1-johan+linaro@kernel.org>
 <20220920073826.20811-12-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20220920073826.20811-12-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220922_105928_646749_200F412E 
X-CRM114-Status: UNSURE (   8.27  )
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

On 20/09/2022 10:38, Johan Hovold wrote:
> Only the MSM8996 PCIe QMP driver uses the index field so drop it from
> the other drivers.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 3 ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c  | 3 ---
>   drivers/phy/qualcomm/phy-qcom-qmp-ufs.c   | 3 ---
>   drivers/phy/qualcomm/phy-qcom-qmp-usb.c   | 3 ---
>   4 files changed, 12 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
