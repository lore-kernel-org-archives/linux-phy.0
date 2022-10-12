Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 364A3C4332F
	for <linux-phy@archiver.kernel.org>; Wed, 12 Oct 2022 20:47:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dxCMEoKyKyf2wE4b1ZkI06/C0nAC82vH/F6clAYrZb0=; b=fuJ9T7I1qByuOz
	pQ8AQ5JoacbOtoPcJXDPwbHFK9aPyiRH0HX8aDF6c2HZ1USIvGq+6v9V3KyejWsKF0W90oMRR8xhD
	6q6gNpulfyfSXVgN1p9FoaUsn/JTjmdtVKpbdKgsQKYDUXbipacKOMbx0G1g/jC3DYb6/LhScm/H3
	Edyr+4RmKkj2bNsUHGEX/ysa/9O9ngUiv9QC0793faEc+al2LzAG5xzRHu15XvJWKuBsYiFe9ccik
	hNjN6PFAq//hXxA2yKGmEo+mI/V4skdFk0D4z4K6ZEn/jxG11URf582TmH95KKM8cg1RJRNTbIGrP
	6SMz4dMMCcbE7whWEnWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiide-009Jx6-LG; Wed, 12 Oct 2022 20:47:38 +0000
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiida-009JvA-8I
	for linux-phy@lists.infradead.org; Wed, 12 Oct 2022 20:47:35 +0000
Received: by mail-lj1-x22f.google.com with SMTP id c20so9564845ljj.7
        for <linux-phy@lists.infradead.org>; Wed, 12 Oct 2022 13:47:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QRi07UGE41OwqQfpU78z2swnPD/UtUjDseXmNlB/AVs=;
        b=HNsQRbXmlY3u6rH7OV+pp5MZo1KXdAWVRcn5faiUXkVpoe7E8AdjKH7ERheNRJ21hY
         s26KiCsDTKOsifZPdzlALNJlPK8d2bnHxV1rA/6OXr7aL13b2DY8XzCiYq3Ut7CkBZQS
         QtqoJsr/PXwQ2H9LtO+3ULlJGT1h1hxd2NHZh+zHvam+xTcevX/Nf7nDmr2ntkbY9xSf
         InA+z+yEw8am6oWvheIyAHm33rVwwtESEM/rORjU8GHxzkkrx2a84prw0frXQ0NZUZaY
         /YnOq5rY4fHQBiXry49t/QzAgWapIcLIR9MruPWN6B0oi8B0FF64tfvFoyCdkCcKOdMj
         LIYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QRi07UGE41OwqQfpU78z2swnPD/UtUjDseXmNlB/AVs=;
        b=imIHHKcx0ppv0VEV3t6LM35HzS0hrIdP4/Sdfyt7xWXaLHMaloUsAIks+V/I8K8W31
         GDwk6d4GFaZ/QoT8OrvG6mYje0iha0/KFEyQj1+SAzLDPxaD/SwSBZ4nToqEPJM0Z9FM
         pnmZvW7fgkK8/HM+CZjw8WlId4gdZCv81yeFdfAzNNpu0XLSv/A4ufijyO1CxIUVTT3A
         u5i3Vzc7ORJwiXEuwNrwRCW2Yup+rORO6wZc2vBoqaC1v/WThqpm/9DvABE7j6K/TMbL
         l1KM83shnguk9KOzSv1uems7XGfBd3lhSs2OwNmckWMZE/jcLzbn4MYwiiGVtmUoNubp
         aezQ==
X-Gm-Message-State: ACrzQf1743LgCUoDsxjAu1GygmkVbR7XNnGvMuusaM3Vc4WM9YaszG28
	ijTVUxcUlFSyEVSjS26xdB9Q8Agbaal8rg==
X-Google-Smtp-Source: AMsMyM6TPgGEwHy/lPNlSNdyqSHU9MouHQlSUyHWi5kf+3eAyyX7PbeF0PNOhjFNRRp0f0gIwqV9IQ==
X-Received: by 2002:a2e:984b:0:b0:26d:ff5f:53c6 with SMTP id e11-20020a2e984b000000b0026dff5f53c6mr11466123ljj.59.1665607650922;
        Wed, 12 Oct 2022 13:47:30 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id 14-20020a2eb94e000000b0026dd4be2290sm108011ljs.90.2022.10.12.13.47.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Oct 2022 13:47:30 -0700 (PDT)
Message-ID: <8e39d242-9b88-6a33-384c-00fe5dad4a17@linaro.org>
Date: Wed, 12 Oct 2022 23:47:29 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: [PATCH 06/20] phy: qcom-qmp-pcie-msm8996: clean up ready and
 status polling
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221012084846.24003-1-johan+linaro@kernel.org>
 <20221012085002.24099-1-johan+linaro@kernel.org>
 <20221012085002.24099-6-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221012085002.24099-6-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221012_134734_360081_169320FB 
X-CRM114-Status: UNSURE (   9.73  )
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

On 12/10/2022 11:49, Johan Hovold wrote:
> Clean up the PHY ready and status polling by dropping the configuration
> masks which are no longer needed since the QMP driver split.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   .../phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c  | 19 ++++---------------
>   1 file changed, 4 insertions(+), 15 deletions(-)
> 
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
