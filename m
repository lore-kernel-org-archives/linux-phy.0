Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06DFDC4707B
	for <linux-phy@archiver.kernel.org>; Sun, 14 Jan 2024 15:52:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cCpmwIRIKImngE5Q14Vrz6I8b9pWvW0zdzGgZSp1Qh8=; b=ExGCfShImOMHOd
	vYhSJ2XbInM8wD4pwsH1IuWA8FEZV5JY93KPdqkeDu1qyPmS2D3BXpRAeQ8pWjcV5nUT7cHVXO2/f
	vatDnkHPhYnu/Z8P5eFJwdqXgCS6KfucItpOm3h5PpzR5LkcBqvETMILq98GUgaRKeaF9EW1IZHDi
	PPZ9JLETHpM0IqBRl/u5wBRdSA2EwLwty+OvV3GZRmrp3c+sQDfOa2Xx5Ht9ymZWju/kDEl92KEUj
	s/oHb060H36KQXKKDFFlrS+i6+dgbS/llQuG5ew7czx159Ul/jBJGf37Nye8pKt8BaDjqY2EKBdK5
	CGIu5oKUKZSfhH9b5Vcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rP2mK-006vIX-1q;
	Sun, 14 Jan 2024 15:52:04 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rP2mF-006vHw-2M
	for linux-phy@lists.infradead.org;
	Sun, 14 Jan 2024 15:52:02 +0000
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-3376ead25e1so6014856f8f.3
        for <linux-phy@lists.infradead.org>; Sun, 14 Jan 2024 07:51:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705247512; x=1705852312; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yxmhpra+z46feXbyp+J4UkK+Oy6gkOf3UFSq7vBQdQQ=;
        b=fA8qnNlaJFrhRIYXegnOuSP82vMxuxARq99kvgDtPRAZYkT6S754skF0p/VMfpMmaf
         HEm5wXtXI6P6+YxJ4OqJYOMx+rNGCNgSQz7tniEKtDIrXAag1weLzH0X0IgO/IByyt7h
         MM1QXV0MdvzWJse7uumK38/LU+RNLxsuihWlUS3Ayz+e92MfhOARvRTRx7Qxc6Nfyzp+
         mndBDcAfIJ67t9LRKwlCy2LsAAyFGMex2mwlm/jpJq5vkvpV8413WcWFXEsvg1HpLCAO
         iFbCcv8dAHz+47m2ce9t2Q0pDyRc2xwoOWnVLT7UddRIIhI3ZxgiJ/nbyAOhEv/vSQxV
         PgGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705247512; x=1705852312;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yxmhpra+z46feXbyp+J4UkK+Oy6gkOf3UFSq7vBQdQQ=;
        b=eiS0Ieo+SQZl5P07WtiDQjiToMMtYuOLNVrS1PwP4NmvOjd+BAzGQbE3RLG+gx43S8
         Xd0kybtrUZvtro/YiyI5uOD+2PmVjo2dnfOWIRkh1UiCNRxyPab9Gt/zJ51tCJ0zQnV9
         YhRonTr28ZExokioF73d5WYjJ5OeOshu5d2CKxu6L0TYkitLlpK/NVdw8d0a555DmCBG
         2mXdPywkiEAPwKV0GvIa9/T0F1VnZhXoxjd9MkQChjArZE5BXQSHcXahKbsLkniyNXUn
         Lcw00edsXEsW3p906VxTO64GYtMutpj6G/T1BNEL17myNpet84LWzpGraxLihRUTcckZ
         KNJA==
X-Gm-Message-State: AOJu0YyDZ4Vti87x6kvxzDAbp26JiolrtWMSyYDwztHL6gSe6aoxHVjd
	h5PjlD+uo+okp92KJdviJkfb2YHLD3oXNw==
X-Google-Smtp-Source: AGHT+IE7nTdFmHRLF2VThBmfOU2nxXNBRY0FXby8fwY2Ac5wx5PqE+UjvwRurxXT8qnAkKNt6W0jew==
X-Received: by 2002:adf:f012:0:b0:336:4bc8:f6a7 with SMTP id j18-20020adff012000000b003364bc8f6a7mr1958839wro.114.1705247512395;
        Sun, 14 Jan 2024 07:51:52 -0800 (PST)
Received: from [192.168.100.86] ([37.228.218.3])
        by smtp.gmail.com with ESMTPSA id q5-20020adf9dc5000000b003376dbc75e9sm9394700wre.14.2024.01.14.07.51.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 14 Jan 2024 07:51:51 -0800 (PST)
Message-ID: <84b69277-36df-4844-afbe-38b7999f9a13@linaro.org>
Date: Sun, 14 Jan 2024 15:51:50 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 06/15] usb: typec: qcom-pmic-typec: fix arguments of
 qcom_pmic_typec_pdphy_set_roles
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Liam Girdwood
 <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Guenter Roeck <linux@roeck-us.net>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-phy@lists.infradead.org
References: <20240113-pmi632-typec-v2-0-182d9aa0a5b3@linaro.org>
 <20240113-pmi632-typec-v2-6-182d9aa0a5b3@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20240113-pmi632-typec-v2-6-182d9aa0a5b3@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240114_075159_845313_50B83A35 
X-CRM114-Status: GOOD (  14.88  )
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

On 13/01/2024 20:55, Dmitry Baryshkov wrote:
> The function qcom_pmic_typec_set_roles() passes enum values as boolean
> values to qcom_pmic_typec_pdphy_set_roles(), which then interprets them
> as bit values. Be more explicit about it, pass enum values directly and
> compute corresponding bit masks in qcom_pmic_typec_pdphy_set_roles().
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>   drivers/usb/typec/tcpm/qcom/qcom_pmic_typec.c       | 2 +-
>   drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy.c | 8 +++++---
>   drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy.h | 3 ++-
>   3 files changed, 8 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec.c b/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec.c
> index 1a2b4bddaa97..a243648abb4a 100644
> --- a/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec.c
> +++ b/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec.c
> @@ -123,7 +123,7 @@ static int qcom_pmic_typec_set_roles(struct tcpc_dev *tcpc, bool attached,
>   	struct pmic_typec *tcpm = tcpc_to_tcpm(tcpc);
>   
>   	return qcom_pmic_typec_pdphy_set_roles(tcpm->pmic_typec_pdphy,
> -					       data_role, power_role);
> +					       power_role, data_role);
>   }
>   
>   static int qcom_pmic_typec_set_pd_rx(struct tcpc_dev *tcpc, bool on)
> diff --git a/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy.c b/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy.c
> index 52c81378e36e..44d8342ed0ad 100644
> --- a/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy.c
> +++ b/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy.c
> @@ -354,7 +354,8 @@ int qcom_pmic_typec_pdphy_set_pd_rx(struct pmic_typec_pdphy *pmic_typec_pdphy, b
>   }
>   
>   int qcom_pmic_typec_pdphy_set_roles(struct pmic_typec_pdphy *pmic_typec_pdphy,
> -				    bool data_role_host, bool power_role_src)
> +				    enum typec_role power_role,
> +				    enum typec_data_role data_role)
>   {
>   	struct device *dev = pmic_typec_pdphy->dev;
>   	unsigned long flags;
> @@ -366,12 +367,13 @@ int qcom_pmic_typec_pdphy_set_roles(struct pmic_typec_pdphy *pmic_typec_pdphy,
>   				 pmic_typec_pdphy->base + USB_PDPHY_MSG_CONFIG_REG,
>   				 MSG_CONFIG_PORT_DATA_ROLE |
>   				 MSG_CONFIG_PORT_POWER_ROLE,
> -				 data_role_host << 3 | power_role_src << 2);
> +				 (data_role == TYPEC_HOST ? MSG_CONFIG_PORT_DATA_ROLE : 0) |
> +				 (power_role == TYPEC_SOURCE ? MSG_CONFIG_PORT_POWER_ROLE : 0));
>   
>   	spin_unlock_irqrestore(&pmic_typec_pdphy->lock, flags);
>   
>   	dev_dbg(dev, "pdphy_set_roles: data_role_host=%d power_role_src=%d\n",
> -		data_role_host, power_role_src);
> +		data_role, power_role);
>   
>   	return ret;
>   }
> diff --git a/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy.h b/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy.h
> index e67954e31b14..070822dc6f17 100644
> --- a/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy.h
> +++ b/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy.h
> @@ -107,7 +107,8 @@ int qcom_pmic_typec_pdphy_start(struct pmic_typec_pdphy *pmic_typec_pdphy,
>   void qcom_pmic_typec_pdphy_stop(struct pmic_typec_pdphy *pmic_typec_pdphy);
>   
>   int qcom_pmic_typec_pdphy_set_roles(struct pmic_typec_pdphy *pmic_typec_pdphy,
> -				    bool power_role_src, bool data_role_host);
> +				    enum typec_role power_role,
> +				    enum typec_data_role data_role);
>   
>   int qcom_pmic_typec_pdphy_set_pd_rx(struct pmic_typec_pdphy *pmic_typec_pdphy, bool on);
>   
> 
Acked-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
