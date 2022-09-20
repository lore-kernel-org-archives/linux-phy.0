Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 345DDC6FA8E
	for <linux-phy@archiver.kernel.org>; Tue, 20 Sep 2022 13:51:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L++n7LJipR4oZ3N3i6lobl2oT8cEMclUb4xcL10QkAg=; b=s6uIfsdmQiGmZ3
	6Il0V9K11rlRMX0diidPIG+gw6IThdgXAOcCyPHiXzDB7mISHZYGOl4ToTssVIqZlK50UpEbZ34k4
	TWIZsisN7Gz7qqF1QBfw0j/RfFvc6hzlpBXl051WmbeyaoGN087cDxqX5oO1fMBIWbFy3gKi8yFB/
	1tckaLpJBcqswHXttKCulqpaDSWMOQ1Clrp1scotU7dZKOX0jbAAYQqXlLcWzEcZlS4VtchN6zj3z
	f9ShNixgHu+2HT7nRCC/FliDf+FoCcqwdtdxtp/RPJ4hcNK6PcIi4ZzR0MxBumF70lX3f5x6TGyPQ
	fS9MGDZnCIi12sShA53Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oadeu-004Fiv-GU; Tue, 20 Sep 2022 13:51:32 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oader-004Fen-MK
	for linux-phy@lists.infradead.org; Tue, 20 Sep 2022 13:51:31 +0000
Received: by mail-wm1-x331.google.com with SMTP id n40-20020a05600c3ba800b003b49aefc35fso1698963wms.5
        for <linux-phy@lists.infradead.org>; Tue, 20 Sep 2022 06:51:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date;
        bh=ABm12BDGRAnyJPzIGGGbSYECJSn3pbDMsi+x9qRRmN4=;
        b=cHjrXAzpUNgV+TPGOtLwhtVBLSt5XYrN3V+cVIV/aUsbYmPURGwC/Ml7Azs4pulCN5
         svIKFwuvSTZ44KLS8pse2Ek8Gyju2+N+lXfQ/VCIh1rQjp4rF55HoC3/9sohJYhgnW3V
         kFQbv3QzgbED6Yd3TXT9QIcdNWnG/Lv9l/3yQOMoCqEHRfh2ID8V+9Hdv2p6LMI/1oCL
         iCnGAOLyqBFdKpyf1EQSbb19naNjXR7wWuHbtC2a7abDWo+5mEshKeKy+b0IAMH+West
         02hZZZVGVacBEXuX6eEaYcWFIVSM0oyCTiMkKPqelSeY2hWN/u8R1EFYxU4eSM08nXYu
         cj0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date;
        bh=ABm12BDGRAnyJPzIGGGbSYECJSn3pbDMsi+x9qRRmN4=;
        b=v05tqzhrO9M+74qDSCeJzIEe5Wo3dcU49hcViUoy7/VwPLVgCmKljMqljl2mnrhMrG
         y6h3tJpxv0OFSnzP15qInCEEuY4L2N9lIqJaApUMjxV2prEMdBIpw6zSsGc/kPSng/AL
         gH5ugfRMEyzqx5/mMHc7OA/9vqMEO6OCrDqn30vFDUl8vr2WFROC81pWkVXEqzMnOGHb
         VW7ehvWo+U9XvjS7aq94lB/2ga4ZGY44aQlyNIZTlfehHw7ffkbqsns5XCKplBSitF5O
         QaEoNyOf6JhU38w2tcurTFsXlx/F0Wu+Ugm3GJYJos2gAegyGZyS6ryqpM+wpwjxvR2k
         SiQA==
X-Gm-Message-State: ACrzQf3i4wTA3/HBLgu/1LleSfedLfhnSIPAQMH8HjHZPiF2XvfMWzwd
	lgUYoI5pIUKbnGDihaZpBvqqHQ==
X-Google-Smtp-Source: AMsMyM5Y8yPCq4NXVv/7bJETm/WzHnyyBpKYqEi+DmdPjZrsYxNcVrECJlzwzFfDWukJW2Hk4ZT/ww==
X-Received: by 2002:a7b:c01a:0:b0:3b4:a61c:52d1 with SMTP id c26-20020a7bc01a000000b003b4a61c52d1mr2597913wmb.146.1663681885940;
        Tue, 20 Sep 2022 06:51:25 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:7e10:f0f:43b2:9b5e? ([2a01:e0a:982:cbb0:7e10:f0f:43b2:9b5e])
        by smtp.gmail.com with ESMTPSA id l38-20020a05600c08a600b003b4924493bfsm183360wmp.9.2022.09.20.06.51.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Sep 2022 06:51:25 -0700 (PDT)
Message-ID: <34c9c189-b51b-8b36-c10a-72bbefd63502@linaro.org>
Date: Tue, 20 Sep 2022 15:51:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 06/17] phy: qcom-qmp-usb: drop init and exit wrappers
Content-Language: en-US
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20220920073826.20811-1-johan+linaro@kernel.org>
 <20220920073826.20811-7-johan+linaro@kernel.org>
From: Neil Armstrong <neil.armstrong@linaro.org>
Organization: Linaro
In-Reply-To: <20220920073826.20811-7-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_065129_757679_168CD3DD 
X-CRM114-Status: GOOD (  14.59  )
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

On 20/09/2022 09:38, Johan Hovold wrote:
> Drop the unnecessary PHY init and exit callback wrappers.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 29 ++++---------------------
>   1 file changed, 4 insertions(+), 25 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
> index 03481b6f1c35..a42e13905c15 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
> @@ -2125,8 +2125,9 @@ static int qmp_usb_serdes_init(struct qmp_phy *qphy)
>   	return 0;
>   }
>   
> -static int qmp_usb_com_init(struct qmp_phy *qphy)
> +static int qmp_usb_init(struct phy *phy)
>   {
> +	struct qmp_phy *qphy = phy_get_drvdata(phy);
>   	struct qcom_qmp *qmp = qphy->qmp;
>   	const struct qmp_phy_cfg *cfg = qphy->cfg;
>   	void __iomem *pcs = qphy->pcs;
> @@ -2197,8 +2198,9 @@ static int qmp_usb_com_init(struct qmp_phy *qphy)
>   	return ret;
>   }
>   
> -static int qmp_usb_com_exit(struct qmp_phy *qphy)
> +static int qmp_usb_exit(struct phy *phy)
>   {
> +	struct qmp_phy *qphy = phy_get_drvdata(phy);
>   	struct qcom_qmp *qmp = qphy->qmp;
>   	const struct qmp_phy_cfg *cfg = qphy->cfg;
>   
> @@ -2211,20 +2213,6 @@ static int qmp_usb_com_exit(struct qmp_phy *qphy)
>   	return 0;
>   }
>   
> -static int qmp_usb_init(struct phy *phy)
> -{
> -	struct qmp_phy *qphy = phy_get_drvdata(phy);
> -	struct qcom_qmp *qmp = qphy->qmp;
> -	int ret;
> -	dev_vdbg(qmp->dev, "Initializing QMP phy\n");
> -
> -	ret = qmp_usb_com_init(qphy);
> -	if (ret)
> -		return ret;
> -
> -	return 0;
> -}
> -
>   static int qmp_usb_power_on(struct phy *phy)
>   {
>   	struct qmp_phy *qphy = phy_get_drvdata(phy);
> @@ -2316,15 +2304,6 @@ static int qmp_usb_power_off(struct phy *phy)
>   	return 0;
>   }
>   
> -static int qmp_usb_exit(struct phy *phy)
> -{
> -	struct qmp_phy *qphy = phy_get_drvdata(phy);
> -
> -	qmp_usb_com_exit(qphy);
> -
> -	return 0;
> -}
> -
>   static int qmp_usb_enable(struct phy *phy)
>   {
>   	int ret;


Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
