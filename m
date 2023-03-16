Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D429CC76196
	for <linux-phy@archiver.kernel.org>; Thu, 16 Mar 2023 22:51:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5YBlzpR5b9/3Fo9FlWQ+rOT8v2u802R3bMwaNdC4uDo=; b=l2vOsr9JgbZXCU
	Yh61z73ycY2cCpFrheQpZcJtKLizkelCjY0SowI0xyJVEQSBL6WuqY2OOxDJVqmyye7GcD1TdtA3v
	2g47dmm9XNHvtoii8fGMLw0nbM0QRtSOwnXx2Cbwh80MpA/PRqeQTWYkNGLw+7FyoyQ/wGse7rFJH
	eUq3PUk/ITNXvXB3xgplfiwqpYxZ5JbNSnHowi9M50Y++I9qd9/4m4hJ+k+sf90wepo/R1sewy/+m
	G0VSJMYf9Si1fQogrVcA2P8z8Xdtqj3hDR2NFZHmiyNfYaGkhHgggO9M1jv4ODHZSGAcW6ZurIFub
	h2fjUrkiPh1Tuw0LlHKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcwRN-000Eed-1W;
	Thu, 16 Mar 2023 22:51:21 +0000
Received: from mail-il1-f180.google.com ([209.85.166.180])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcwRK-000EdP-2V
	for linux-phy@lists.infradead.org;
	Thu, 16 Mar 2023 22:51:20 +0000
Received: by mail-il1-f180.google.com with SMTP id h7so1858025ila.5
        for <linux-phy@lists.infradead.org>; Thu, 16 Mar 2023 15:51:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679007076;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BlnFdcYO4ekRPeU0360YFofSqLK14iqQXYMHI5q7xd8=;
        b=jpVl6bE/HiZep26Dx5tRcg3LQq57qxu9LKablgPWjc+AAfQojK4WEcy74ftzh2dpVR
         bep7NAfcTfLwmTtRPgokIm+xgxlYdM63KVWA4bQHb169oze19hkxRAy3gFTWyc2cTCup
         VbOYTHIiAeWJALRDbjITf5R2kf4QG1IXDTMFxHleywdGINJMLZ2vJBVndiQEUgb3u9UD
         znqFHka3j3iy7TuqkM4eW9SwRXVj7Zj0yMW6gKIb+87BYh17K2s8/6y85ShQn01K9ajw
         x80nbZF+7olK1bZlpK4h7EA9DtqyCbnnjtbotTjq1aAkvvS+ic5j4Ni1hojLjsIcPEk0
         fibg==
X-Gm-Message-State: AO0yUKW7nANB+UvSjNT96jpjmPqsKeBX0Xnl00Aoo1ax38OvbOe/GAe+
	K0tiyH3vzjz5KYNlSQIWOw==
X-Google-Smtp-Source: AK7set/itDMXeIWLc2ZHs43kOtxpBf29sWKycrp4IhtK8Vuok3HiHScFGx4/jX7/MkCpS9tSNxln+A==
X-Received: by 2002:a05:6e02:504:b0:324:3ece:af5e with SMTP id d4-20020a056e02050400b003243eceaf5emr696781ils.0.1679007076499;
        Thu, 16 Mar 2023 15:51:16 -0700 (PDT)
Received: from robh_at_kernel.org ([64.188.179.249])
        by smtp.gmail.com with ESMTPSA id i7-20020a05663815c700b00406147dad72sm166301jat.104.2023.03.16.15.51.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Mar 2023 15:51:15 -0700 (PDT)
Received: (nullmailer pid 4031144 invoked by uid 1000);
	Thu, 16 Mar 2023 22:51:14 -0000
Date: Thu, 16 Mar 2023 17:51:14 -0500
From: Rob Herring <robh@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: linux-kernel@vger.kernel.org, andersson@kernel.org, linux-phy@lists.infradead.org, krzysztof.kozlowski+dt@linaro.org, linux-pci@vger.kernel.org, lpieralisi@kernel.org, devicetree@vger.kernel.org, vkoul@kernel.org, bhelgaas@google.com, kw@linux.com, kishon@kernel.org, linux-arm-msm@vger.kernel.org, konrad.dybcio@linaro.org
Subject: Re: [PATCH v3 02/13] dt-bindings: PCI: qcom: Add iommu-map properties
Message-ID: <167900707444.4031088.17252827146450649974.robh@kernel.org>
References: <20230308082424.140224-1-manivannan.sadhasivam@linaro.org>
 <20230308082424.140224-3-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230308082424.140224-3-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230316_155118_817499_721239E5 
X-CRM114-Status: UNSURE (   8.81  )
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


On Wed, 08 Mar 2023 13:54:13 +0530, Manivannan Sadhasivam wrote:
> Most of the PCIe controllers require iommu support to function properly.
> So let's add the "iommu-map" property that specifies the SMMU SID of the
> PCIe devices to the binding.
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
>  Documentation/devicetree/bindings/pci/qcom,pcie.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
