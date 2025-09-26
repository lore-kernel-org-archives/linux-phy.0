Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0DE2CAC5AC
	for <linux-phy@archiver.kernel.org>; Fri, 26 Sep 2025 06:41:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x+90F8YOu62cyvlTJzvnRKJpWIa4i2wlCIy+D4n+Su0=; b=oDvQJiZLaH6Nvd
	PMRSSr3jypksRF/54Xt1PsPej3bWbMqg56JXXp1QimyMaHQ7QrFmtX+5KyddKc0ktrEMgrMq6o1/8
	yXLzgTlTU59dTC3OHZ1ceoOOu7tD6I7uZ8IN7z52aP4qdke7AS+Mu/ljW/pMUiRH60dczHpBsFjc2
	nnTpUm/HT2fFjNZqS9k5sVYqy2GUSOa1mkTB/82r2tIaVqRgImCFVr9j3J9Nl71iWf9hT3zRbRmyT
	r3QwD4cEkezdEcxllaIMktdt1VpUa05Tq7BIR6lMAbLKhN4OKdzyA8flhzPPN54LhObcAIcochzXe
	eWJyCUiI0pgzFDUXsW1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v2290-0000000GSCF-25kk;
	Fri, 26 Sep 2025 06:41:26 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v228x-0000000GS9H-34Aq
	for linux-phy@lists.infradead.org;
	Fri, 26 Sep 2025 06:41:25 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-46e3a50bc0fso4412875e9.3
        for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 23:41:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1758868881; x=1759473681; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=eAXEhH9mCSkyuGynwGFcg/vSjwNz5p5yU5r7l9pKHs0=;
        b=TBMq+AFtNeUJJiCEgjYlEbPtgtOy39OaQVBsoU1wiLMt91frv+GUS0J4r649FAvhtB
         gWW9bmk4FHlRu1H9AqdXi345ITZF6Nx6QZoER5igcrSOMdKf38RlCCRTnJ1gYBUizCQm
         AvCJXsNPw0jOiZ4B9EZS3JLWhjFot+VRILq0k3LAriK1aowiJGU1OO7trQun5ekoOlao
         Z+VbSxWowINeX3/4dYsjojJwyGNAXbrEhwS30DjIXWP/mKbMoz27pduAEgEdNZiJGH2n
         Uj+HttYM1/X4JYJawRmQOpkH61Kisf2Wp05x0tDRl5uE2H4c2WCiAgAr8iP9o/hmliHT
         IAlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758868881; x=1759473681;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eAXEhH9mCSkyuGynwGFcg/vSjwNz5p5yU5r7l9pKHs0=;
        b=qV9fX+yx3xEj08pF4z2mokSTh5WAtdTZxjewKmXooA1mQ2o1h0UORVYcQZ32vx3s3s
         QCN6Gpw2WwWSXwFtSNt0DG9ZABTmi3N40tBfutpsc6TSyMYxP1jr6wsT+TTDK6QkVDpO
         ZEk2N18hm2NSV8PuwfS9Ky+4dZtYfW5SVuiM+jnZZ/krh25l35iY6GMzmzDhjYgXoQEM
         ululqwPqruDwYKxz0OQbbHPS7izqYzp7JrWV/3SecLdg8aX7xke3nFBdz7BsOSKo2FA8
         Z46767DOfpoM2xkVhg8tFd6cTTtlDQQTSixJpMefQaMOuhpVB9W0A5dju62nwqF/hiwr
         KKrA==
X-Forwarded-Encrypted: i=1; AJvYcCUI4K5ujAc/pwI/hqRE4e/UZkl6U32axp8+2vGst+2IkU9usoCm9bXvgSsPdUC/4aU3ikY7CuvpvxE=@lists.infradead.org
X-Gm-Message-State: AOJu0YyOBDHXPm9aotv84DNGs1dxPfnTj9TO2XeEKfIETixE5SH27++9
	UYSbvIoI2f+KA5DITtJfjfCnt0gaODHpU7dmhVwvaHAYh0W+gI92Wh4XUEOMfZgkTcf93Af63cr
	ekqri
X-Gm-Gg: ASbGncsX2ycEw8Fc9V4PS3XHxGGRKbZseMnPY6fq7SvnoLNpK+zB6BGHZmiTzjPQ4nV
	+PIrbiTAS1Wogho/ZCIATJsXm9vBBPWKL0iNp1ewXh/wUUDxJ+n/5IOnig0YnYl0Nt0I5UHz5dF
	+7HbzNYhAjY/12r3CUJIdWMNzdyKHuLIcQBkGFL6ya5sPnrBs1aSkdfn9n0x64pTWt9cBSAi5al
	iwULz+745sJcUCRqleGPU94sWMjJG31EjKb/2fOxmBru8CKvZ1xFSWTQUDVcFSQnreNSJTpp61F
	+q61Ztkdl6zXPm0ivj/Eb3xygaOw2+vgw9QBAqULgCK0wvD5w+JfvWFvms2yKKtVp3yidqoO3iO
	L8+qPPUC96Bzc3DuiE1Iu25+urI4insCK
X-Google-Smtp-Source: AGHT+IEC51Z3oUc6PBQE26U0pANRwet5KzFeYNOAHSrBB1u4TiB+919unwkMAvmSkArm1PJoNLlhdA==
X-Received: by 2002:a05:600c:8418:b0:46e:39e1:fc27 with SMTP id 5b1f17b1804b1-46e39e1fd05mr21856915e9.5.1758868881334;
        Thu, 25 Sep 2025 23:41:21 -0700 (PDT)
Received: from linaro.org ([86.121.170.238])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e33be359dsm59755235e9.13.2025.09.25.23.41.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 23:41:20 -0700 (PDT)
Date: Fri, 26 Sep 2025 09:41:19 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, 
	dmitry.baryshkov@oss.qualcomm.com, kishon@kernel.org, vkoul@kernel.org, gregkh@linuxfoundation.org, 
	robh@kernel.org, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 07/10] phy: qualcomm: qmp-combo: Update QMP PHY with
 Glymur settings
Message-ID: <27lkxf65evdhfdqzs3w6sfura6r3sewqsm6dr6qapvsjuwrirk@lwqs46vppei3>
References: <20250925022850.4133013-1-wesley.cheng@oss.qualcomm.com>
 <20250925022850.4133013-8-wesley.cheng@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250925022850.4133013-8-wesley.cheng@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250925_234123_893436_78DCBC9C 
X-CRM114-Status: GOOD (  11.63  )
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

On 25-09-24 19:28:47, Wesley Cheng wrote:
> For SuperSpeed USB to work properly, there is a set of HW settings that
> need to be programmed into the USB blocks within the QMP PHY.  Ensure that
> these settings follow the latest settings mentioned in the HW programming
> guide.  The QMP USB PHY on Glymur is a USB43 based PHY that will have some
> new ways to define certain registers, such as the replacement of TXA/RXA
> and TXB/RXB register sets.  This was replaced with the LALB register set.
> 
> There are also some PHY init updates to modify the PCS MISC register space.
> Without these, the QMP PHY PLL locking fails.
> 
> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 311 +++++++++++++++++++++-
>  drivers/phy/qualcomm/phy-qcom-qmp.h       |   4 +

I think you dropped the v8 headers since v2.

Please make sure you add them back (maybe separate patches) in v4.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
