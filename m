Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8EFC7C2BD09
	for <linux-phy@archiver.kernel.org>; Tue,  9 Jul 2024 15:42:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2Bn1288WNLLl9bDmJ+oAy5oPGxA7vCQWgCPeoANyT0w=; b=b9YtcBXkzOSy7M
	bZ86xHZ/NODpAfueDx+uWPb93YLcn6kE8c8hDhM12ij8SuMdlju/yI/OU+FmBWeXkrSP2GIl5R6+k
	hmIX/sOhz9v2X1IdbW2V/vgPYAh9ambB+eT5H577OF/9nZj/64KVd4fRrUNer2/I84s+Zz+S+PvWj
	jX7wnoLmFljSvL4iDe3Fc9xn12cQTXU5cGhjIPVjlpAw1VZOb1rLyS5Gde0pxT6UyqA+eShKlqC3Z
	/U3SL86ioUSr0Wd4tA1DmSqSzAg4rHtbt9HfSKWeyfa2GV7umtp+ewEEL3Od7Ecow8g2MpGXQ6ONU
	92ZQeXltkp9mciCBNj6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRCz6-00000007mlf-0t0u;
	Tue, 09 Jul 2024 15:42:28 +0000
Received: from mail-yw1-x112a.google.com ([2607:f8b0:4864:20::112a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRCz3-00000007mkq-3Wdf
	for linux-phy@lists.infradead.org;
	Tue, 09 Jul 2024 15:42:27 +0000
Received: by mail-yw1-x112a.google.com with SMTP id 00721157ae682-65651296d91so24455957b3.3
        for <linux-phy@lists.infradead.org>; Tue, 09 Jul 2024 08:42:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720539744; x=1721144544; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=X9g3Ubfmw+SgcZ7Yd9+hBldZBcIN14Yh7a3NFHtWpvs=;
        b=vKyy1NURJjNVg5g+saxcA7OUwze+qkXNZqQhh8xUidLvBlLHkeT1bX6q38MIxRVUcg
         ViR86Bgs8NpCDYePVJrUgyB/Iro7BgBbzGduA7oKALCF9P5O5qZMjGq63VnNDnkx7jIq
         x0pkng7hAkigof1rX0nPC/P3kdKrbvau+bxkBpTcrAZVX0eZbe7pHZhbDQhfRfcAW5Mh
         IXHbvXAQDIkL/mL6w+XhQSw++ENyHAGei3E6IWT9dVQVzOOe9gh6K3DGANa78qSSBNhf
         YRUx4ndsVYeS8+4SYSwTwLxYzLBkki8xdn2TdJlb9YzNz8YzlMj3T9u8hLD9tl2cl2fB
         mxxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720539744; x=1721144544;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=X9g3Ubfmw+SgcZ7Yd9+hBldZBcIN14Yh7a3NFHtWpvs=;
        b=ZFAG+qJtcDwxoehNX0Kled14e/zVQg+peiXRC14Bx5PT5WDmVQuwKB1hSH7kxOV/3p
         vr11dSow49Q4LicRvTvBzD4cB54+6JN4hn2D6QDT9nOZ5F2YIeMy+eaj2AK2qgClPmdz
         e8e8iJShyligp3+Gg2HngSmCfXAck5mk+2SIsfBxOiSRbPelG3QnWtBG55ufAlqF3iM7
         vblATr1M4vUP3YJS+wb5Jt3pgzaFHxnioyfnrR4XtM8e2TMSI7mURR7suxOoHfMFbqJa
         XEe9lX9/hjQgn28ZvOVtIU3d1lYlnkgI4CfZsvpMn/rhZ0VUSOECCDxYE/om4YE0k1Ds
         /tJA==
X-Forwarded-Encrypted: i=1; AJvYcCW9yrYsNmKiLI+A/luPRFPnjw7KKCfltA0pDZR+p6F/9ZyVh9CcqoRqSwpv3JjmAvLTrhIEU6ctDeelv+kMngJceapQb1OIDoi/2/hFdA==
X-Gm-Message-State: AOJu0Yz0IQGoyKnFtezepd8B7M780qUbe1mFCphh5SU17xK1xkJRxBw7
	N0cx7Dqq8o0t5WMSqZMQiPAeQuLJloU+urog44I1r/dmyD0HN/Zz108f4nA+6L93Vcc+kLiLmZ1
	VsSUrk7Hl1rU3eQJUSzxfmNqXrtHZ7QvmPNCNCA==
X-Google-Smtp-Source: AGHT+IGIeAAB+Zbo9F+WEJ2ntehsPTH0AozBaKItZWisLbiKVixjbm/yHkzfeSzldmE/b2T8w3/wYkXX1FUE8aCOXZ8=
X-Received: by 2002:a0d:e809:0:b0:648:c8ca:f2d4 with SMTP id
 00721157ae682-658ef24b2ddmr30424457b3.27.1720539743849; Tue, 09 Jul 2024
 08:42:23 -0700 (PDT)
MIME-Version: 1.0
References: <20240709-add_qcs9100_dwmac_sgmii_hpy_compatible-v2-0-5ffeb16252db@quicinc.com>
 <20240709-add_qcs9100_dwmac_sgmii_hpy_compatible-v2-2-5ffeb16252db@quicinc.com>
In-Reply-To: <20240709-add_qcs9100_dwmac_sgmii_hpy_compatible-v2-2-5ffeb16252db@quicinc.com>
From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Date: Tue, 9 Jul 2024 17:42:12 +0200
Message-ID: <CACMJSet_FX85rwa2JNBCSfVKUQbZrNdi-ya4KnJjNOumrJaOfg@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] phy: qcom: add the SGMII SerDes PHY driver support
To: Tengfei Fan <quic_tengfan@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, kernel@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240709_084225_908938_AD90506A 
X-CRM114-Status: GOOD (  16.88  )
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

On Tue, 9 Jul 2024 at 17:16, Tengfei Fan <quic_tengfan@quicinc.com> wrote:
>
> Add the SGMII SerDes PHY driver support for QCS9100 platform.
> QCS9100 is drived from SA8775p. Currently, both the QCS9100 and SA8775p
> platform use non-SCMI resource. In the future, the SA8775p platform will
> move to use SCMI resources and it will have new sa8775p-related device
> tree. Consequently, introduce "qcom,qcs9100-dwmac-sgmii-phy" to the
> SGMII SerDes PHY device match table.
>
> Signed-off-by: Tengfei Fan <quic_tengfan@quicinc.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-sgmii-eth.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/phy/qualcomm/phy-qcom-sgmii-eth.c b/drivers/phy/qualcomm/phy-qcom-sgmii-eth.c
> index 5b1c82459c12..0ea7140564a9 100644
> --- a/drivers/phy/qualcomm/phy-qcom-sgmii-eth.c
> +++ b/drivers/phy/qualcomm/phy-qcom-sgmii-eth.c
> @@ -353,6 +353,7 @@ static int qcom_dwmac_sgmii_phy_probe(struct platform_device *pdev)
>  }
>
>  static const struct of_device_id qcom_dwmac_sgmii_phy_of_match[] = {
> +       { .compatible = "qcom,qcs9100-dwmac-sgmii-phy" },
>         { .compatible = "qcom,sa8775p-dwmac-sgmii-phy" },
>         { },
>  };
>
> --
> 2.25.1
>

Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
