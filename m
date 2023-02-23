Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A65EBC61DA4
	for <linux-phy@archiver.kernel.org>; Thu, 23 Feb 2023 09:38:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/ev+rCTqaWFrCjLD3+FXvVH7lWchzyC9gFp/pLxYQHc=; b=2eVX+cBNUVmpBn
	zJpQWl6hhpL+6ynK8ngMsseYusg9X1gJHqY9tTq3JykHYcqvIORimQtuHetsgCJfyhU6YKQDlLUX0
	pQqjEScoQQnR9UtbNikory08zplZISwJ1tGyMoX2AAqEbPC5ZNL4BCHOse7iplLoXtO8ZbkvaJFRq
	halSy2kV5q7R3uHTE4pm/M3f1U5THcVO0NteQpkl99Mjiocr23hPiYJaJyVbmLQtPQY/vNRIpt78Q
	Y6ZvoqT3l3Mu48ErV44Fh/aRcVPM8wnbrwKhHllLL7Fw3crw1ugKsQO3BVjL383j5ckbKVKtZABTt
	mssHD3caAlmmic2mxWIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pV83e-00Fkot-3a; Thu, 23 Feb 2023 09:38:34 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pV83c-00FknV-4T
	for linux-phy@lists.infradead.org; Thu, 23 Feb 2023 09:38:33 +0000
Received: by mail-wm1-x334.google.com with SMTP id l7-20020a05600c4f0700b003e79fa98ce1so5748568wmq.2
        for <linux-phy@lists.infradead.org>; Thu, 23 Feb 2023 01:38:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=43ECDPJkxGSZtfv0nSKE5iF3opRdTLPTugV4CRpGsdY=;
        b=E7EHzC1K/hGYGPyUDEQZpcnzcyNWdQ7APS51XZbIcOdeJf4TycCkXsO8rXCLT793Ri
         I8l19yEf+MZpcUiEWzhqSMEtFDkXVo4jV1YZZt52NzKn0CAaFjAOHF3/SDC2ubBkJV7K
         g24RXIUg1Pn6XJEIqwkb912tb7kF4xNpxP7csZ454strS3r80P81N2X4ZbupCpXGc8lz
         Liob+LgBqO+1uic5BQ7XLyomDGcT7/AXBqGN1vhLz7s0EaLrjqcIdhkVy22JvAeuWtBN
         gRRF9znEBo57Wb6y6BTYLeNQSbAzEn4FJw/TnWq9Tb/QMgoYdhqZ4X6viLcIPUDwnYUD
         jx0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=43ECDPJkxGSZtfv0nSKE5iF3opRdTLPTugV4CRpGsdY=;
        b=B1KK8egBBiU2MRMdotKmgfPfR0Npony0+JUGDWFHEGFGOuOphxx2JIgueTEMjJnZ4n
         xyNJLelWDO+Ipf8a6zMjfXNpWgA5usi191sdsDEx8/BrBhL3ieKYZ6CzRoUEknEyMACV
         D8jDfCImtU0YvCIkT7kNikkxlRR/V14XH2Su7oOZSmNL+067YsANdrRF/MuqrYPjniUA
         SgqP0iGPj4FjO3/1VeEugqt0UIvG1A83dMZEyBprFO0vUGxSyB9qVn3S8RP748zOI8f1
         DDNK3EoBQWJXo29GPeYqPJiELDA5WZH7Sx0HRymhM/cnOHUbfzewTQF6S86DxSFDcMj2
         i9Nw==
X-Gm-Message-State: AO0yUKWNI9Txe4jv41SG9X4rvEoiqLWhjbaxBF2EAEmFXt/x1WGTji8S
	NBVcm6lGm8kg2+GJDl6HfGxoKw==
X-Google-Smtp-Source: AK7set/xchjH6Zolh1/n0p/Cu0TJQ2SzqQmuTsOj8c3e5dBjBX6CkXyexLVxKxvdxZU5Sf6U2ns4Dg==
X-Received: by 2002:a05:600c:44d2:b0:3df:f7f1:4faf with SMTP id f18-20020a05600c44d200b003dff7f14fafmr8065985wmo.34.1677145107613;
        Thu, 23 Feb 2023 01:38:27 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id ay14-20020a05600c1e0e00b003e20cf0408esm11869809wmb.40.2023.02.23.01.38.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Feb 2023 01:38:27 -0800 (PST)
Message-ID: <041cfa0a-14fc-714e-54b9-a13a70f67fa0@linaro.org>
Date: Thu, 23 Feb 2023 10:38:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 03/11] dt-bindings: PCI: qcom: Add SDX55 SoC
Content-Language: en-US
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 andersson@kernel.org, lpieralisi@kernel.org, robh@kernel.org, kw@linux.com,
 krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org
Cc: konrad.dybcio@linaro.org, bhelgaas@google.com, kishon@kernel.org,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20230222153251.254492-1-manivannan.sadhasivam@linaro.org>
 <20230222153251.254492-4-manivannan.sadhasivam@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230222153251.254492-4-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230223_013832_203682_DF3BE070 
X-CRM114-Status: UNSURE (   6.30  )
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

On 22/02/2023 16:32, Manivannan Sadhasivam wrote:
> Add support for the PCIe controller on the Qcom SDX55 SoC to the binding.
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
