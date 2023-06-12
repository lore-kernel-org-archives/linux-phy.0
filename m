Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76228C7EE2F
	for <linux-phy@archiver.kernel.org>; Mon, 12 Jun 2023 17:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7sCzHWNZ5DFFgaLklFA6s7ru9QpWZh2wCP43RBalkq8=; b=mhhNZ+bEsLq7Pw
	Y7VWZSASeQwi3O7nqYquUjnzIGxwlMN8jDvGw1vkrzHmwWK+TWBG1Crj7VYuHekMtgd8IYClwPbMu
	K4qtLqJ294p2+AuPnQVrz8348Q2Nhj9p5CSO9BzohIWTNsMpqSJOhe2kFcQYTTjUGaRUk4F+FeRBQ
	lGfgBuvjQV21ACBJDpQgyDClz4Hbn5lcP1KZVLDIhTxc4jgC8b9ns5xqUUedk8+yzRdmfREi+WsO0
	zOTlV+YGs+qv1+dmytXdH1BT1DRGVKT0tAmxMwILb6sMOc/FVt0RVLPM8mEZcBtADgczgq3iTVfF6
	VF82tPz9JJGmWJ8wU3zA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8lDq-004jqt-0F;
	Mon, 12 Jun 2023 17:20:54 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8lDj-004jq4-16
	for linux-phy@lists.infradead.org;
	Mon, 12 Jun 2023 17:20:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1686590444;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=7qlKft7mE4b2kNS3x9A8djvNWYAtiYtMSSZe9V4o7Ek=;
	b=Me791XWkFiZjE4q5WySDoLvl9ElW6jO2mSxQlOsen9182BXu2NcQRZ5AsAiXyYge8hML3e
	K2FICudRTfwJtHwAyA/IF+6vra+Jfj2Eq79YEFHOywXei+laKdJzc/eITZAJTDf94p6oKC
	Ewz3plW/JcK76TaiBvJj5hJx5KP65FM=
Received: from mail-yw1-f200.google.com (mail-yw1-f200.google.com
 [209.85.128.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-190-rHgpZlOzOSCqXS9Il1oYEg-1; Mon, 12 Jun 2023 13:20:41 -0400
X-MC-Unique: rHgpZlOzOSCqXS9Il1oYEg-1
Received: by mail-yw1-f200.google.com with SMTP id 00721157ae682-565ba5667d5so65743287b3.0
        for <linux-phy@lists.infradead.org>; Mon, 12 Jun 2023 10:20:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686590440; x=1689182440;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7qlKft7mE4b2kNS3x9A8djvNWYAtiYtMSSZe9V4o7Ek=;
        b=BZP8D6mtIH0WYtp2IZSGizuj1B9/2a9wYDcDkonRSNMmYHoI+DzCr4+//k1aqQc4Ft
         Ru+sKAUf0IMH88VZLHR8HjBP7uVUCXF2OEW38yld/p//iD/zIUHiRLoo4Y/MqabiseZD
         tkmf9E5ctsIe31lDkaeHVVKygkK5jhvfAzRJKn5cTS0T/mvq2I2Pg0yfSga1BIvWPls2
         35GQWbEGlP7uu/a7SXAQT+73i5th+jBKlLt8vJ/M4meg9tj8bmaE7baon9cMLF3HKKyy
         D/4K898yFepuJzt672kSgkp7N5ct4ixtTfsaIpg4ld1AR1Bau+o6uzuDsAHSxxXHCrAz
         Vuow==
X-Gm-Message-State: AC+VfDzwIhVRSBaGnJdacPXnA5V8u5RiFEQ2OIY8FOSMG4h8v05xSLPa
	66qk4iTF9NaKq39EjWfJEabNOr1Nnw3CewRLRFS1xstNReyh3B1WHtoEUfSyziUSTD+tzLRvwvy
	hJy+bG8/6Q5Suln5VyRa5hiYYbw==
X-Received: by 2002:a81:8047:0:b0:565:c888:1d09 with SMTP id q68-20020a818047000000b00565c8881d09mr11436055ywf.30.1686590440570;
        Mon, 12 Jun 2023 10:20:40 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ6pK0EspHiEwXLJwZSnTgF0PmnWrSSsx5/e6T7JNdTcNpiEDXWG/J7snMtSub/jvW4XBEs/gg==
X-Received: by 2002:a81:8047:0:b0:565:c888:1d09 with SMTP id q68-20020a818047000000b00565c8881d09mr11436028ywf.30.1686590440315;
        Mon, 12 Jun 2023 10:20:40 -0700 (PDT)
Received: from halaney-x13s ([2600:1700:1ff0:d0e0::45])
        by smtp.gmail.com with ESMTPSA id t7-20020a815f07000000b0054f9e7fed7asm2622065ywb.137.2023.06.12.10.20.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jun 2023 10:20:39 -0700 (PDT)
Date: Mon, 12 Jun 2023 12:20:36 -0500
From: Andrew Halaney <ahalaney@redhat.com>
To: Bartosz Golaszewski <brgl@bgdev.pl>
Cc: Vinod Koul <vkoul@kernel.org>,
	Bhupesh Sharma <bhupesh.sharma@linaro.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Giuseppe Cavallaro <peppe.cavallaro@st.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Jose Abreu <joabreu@synopsys.com>, netdev@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: Re: [PATCH 01/26] phy: qualcomm: fix indentation in Makefile
Message-ID: <20230612172036.ztvjdzblh6bvmxp2@halaney-x13s>
References: <20230612092355.87937-1-brgl@bgdev.pl>
 <20230612092355.87937-2-brgl@bgdev.pl>
MIME-Version: 1.0
In-Reply-To: <20230612092355.87937-2-brgl@bgdev.pl>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_102047_467614_A53D8A3F 
X-CRM114-Status: GOOD (  13.83  )
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

On Mon, Jun 12, 2023 at 11:23:30AM +0200, Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> 
> Align all entries in Makefile.
> 
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Reviewed-by: Andrew Halaney <ahalaney@redhat.com>

> ---
>  drivers/phy/qualcomm/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/qualcomm/Makefile b/drivers/phy/qualcomm/Makefile
> index de3dc9ccf067..5fb33628566b 100644
> --- a/drivers/phy/qualcomm/Makefile
> +++ b/drivers/phy/qualcomm/Makefile
> @@ -20,4 +20,4 @@ obj-$(CONFIG_PHY_QCOM_USB_HSIC) 	+= phy-qcom-usb-hsic.o
>  obj-$(CONFIG_PHY_QCOM_USB_HS_28NM)	+= phy-qcom-usb-hs-28nm.o
>  obj-$(CONFIG_PHY_QCOM_USB_SS)		+= phy-qcom-usb-ss.o
>  obj-$(CONFIG_PHY_QCOM_USB_SNPS_FEMTO_V2)+= phy-qcom-snps-femto-v2.o
> -obj-$(CONFIG_PHY_QCOM_IPQ806X_USB)		+= phy-qcom-ipq806x-usb.o
> +obj-$(CONFIG_PHY_QCOM_IPQ806X_USB)	+= phy-qcom-ipq806x-usb.o
> -- 
> 2.39.2
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
