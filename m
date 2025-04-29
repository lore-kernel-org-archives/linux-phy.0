Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53547C369CB
	for <linux-phy@archiver.kernel.org>; Tue, 29 Apr 2025 08:01:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bWLwP1YIOaWlIuzmHSZqztK0Pt6DR6NN4Z7l1n52bwk=; b=4/J68bll1GuvpV
	/AVqChd4Q5JGVaCnHDNJJldoP2DOX5t9QLBzl0CFXxANhwXXa6s59XmIg10tUOu+PYQJYuLW6lRw8
	SKhxldC/2p+NF5PDsVBZddTZzqLE6i0kOchh2PopHvp/LHL+67GR3w5igLGjapLpFsDhm1p8+aHxR
	OecngRonhfHEIHgGBsuiPNRTj6XECRKUBvzO9pRZ9W5esSf1Ogx2m+MIkf9y8R1V3xzsTTOB0AWEV
	h+a39Iar2tHKRvVS1CzhAQHkzFvCh1RWJKe9UVRDR32FcD4TdwwvDCBTZIlAV9s3SsHLM4CVKN1ZY
	ILH3E28TwafTItoe97Xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9ftx-00000008qa7-42kp;
	Tue, 29 Apr 2025 08:01:13 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9fts-00000008qZL-3Ywq
	for linux-phy@lists.infradead.org;
	Tue, 29 Apr 2025 08:01:12 +0000
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-5f63ac6ef0fso6950940a12.1
        for <linux-phy@lists.infradead.org>; Tue, 29 Apr 2025 01:01:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745913667; x=1746518467; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=OcP8IwBZTp5ar0JzK1kHZA+Mjpbv/cp21xOcbsfTYso=;
        b=OoXHicxmdGXEinuiRMCHsCjdb3hf0vBH8Fgqu2JbWCVoTeC8pFRMzkW//eD/NWZH4h
         0goqtbd44LZxNXh20G1Iu5yee90PLsgsT+J4xxI7dJZQEPjibk3IX0wbeyM+d1oQeqBD
         oEmP7HrqDFib7obnbKDCPqiyMlWresfLABDwUH/oOx1s7r0zZ3A8rBa+mE+HeALVBuk7
         FaWWPl7n3FajrM2qm1BkivuIBrctrfJjyhMcnFEUCMkF1svrqsLE8BOhkzYtSsHJ1Mv2
         /3n0X6WSW3Ww21IF90CTSkry43RB1JD29geTe1s940JvLEl8Fa5+6DzDKihjPh+s174K
         bQqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745913667; x=1746518467;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OcP8IwBZTp5ar0JzK1kHZA+Mjpbv/cp21xOcbsfTYso=;
        b=AtsOXedHSVJshnzMMXuPJosQ/yohJIM4syNlLAkmKOJZ7Ounwq123U9KHQ80GIAfoZ
         RUjf5hEbXidAtoJknQiBJapzLigTNh1kpZVZ0nBCCn5OMVIQIwLocq2QXONVugGgQdtd
         AOoTHF1g3XUFYRxHRvu7mH6kUYx5h4Rh2LjL6KFi5zMhXzSOddSehkrYCNVo+i+OC1O5
         ikOXyXreYJa+8GuKCSkuSEaUcxs+e9fvYddvC3WAPBkQEmAR1pK9RmQOLvXeUsuduIhW
         TrMNrbcLCZMVR9iitQtIST9QzGMNTP51zzpLPDTMdNVqywshhHsKU7NckoEGav3aO8Ep
         QCvQ==
X-Forwarded-Encrypted: i=1; AJvYcCUcpup6EWIyqxsmpwTBEzU+Efg4JyvrZalfGwCyQhlUa1AplMjg/vS9a5c6zpiknqO9F9fxCiOYG0Q=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz1pOqHU3AWKEfmvJAZqXgrCTIqwY9jelb8DAowdCg/eNykodet
	yWxrb7fJImb4RD2xX6WLbfgW8ZECWdlXJEbWWm1KVImL0rVkIuJ1L4NCAaaw/2E=
X-Gm-Gg: ASbGncsbrLVvZv23fnoNzvQhYk870Ps1RHP0gMuQ09XyvY3Nawo/qRu2hBDXDj4boIf
	F2XFhSBzqNVqI5NTljvSFdHwqnS7IuewAY60bVd0STGOKrmG26ncx98EHostfnNRjxo7W3CT+9D
	HAcgzw+NKASjmr8hqAGbF/AD3uAI0vmTHbFEWiAusUHcn/vRsJ8IgK+voMML5WLejyUabTvFCK3
	5XsdtmETtE5D3vLVnQYuvBwfapdccJ+SaShuOQCVWKgW6UfAb+gZMc54NHyDJteDUn8M+SghgkM
	2u+deB1VzVTiTTsf2ekWbp/CzoXhhNyr4ASo0g==
X-Google-Smtp-Source: AGHT+IFm4kes/ECJKNYrt/xy90E8GMVdR2nV9n1atqpFxaZl68uKF3ym9CxshxQxaw2r6OwDCG0aWQ==
X-Received: by 2002:a05:6402:90d:b0:5f6:fab1:ad81 with SMTP id 4fb4d7f45d1cf-5f8392893bdmr1936597a12.10.1745913666492;
        Tue, 29 Apr 2025 01:01:06 -0700 (PDT)
Received: from linaro.org ([62.231.96.41])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f7011fc361sm7047370a12.16.2025.04.29.01.01.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Apr 2025 01:01:05 -0700 (PDT)
Date: Tue, 29 Apr 2025 11:01:04 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Dmitry Baryshkov <lumag@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Qiang Yu <quic_qianyu@quicinc.com>,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: qcom: qmp-pcie: drop bogus x1e80100 qref supply
Message-ID: <aBCHQMs8Ct8Ow8JR@linaro.org>
References: <20250429075440.19901-1-johan+linaro@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250429075440.19901-1-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250429_010108_895128_3434568F 
X-CRM114-Status: UNSURE (   7.37  )
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

On 25-04-29 09:54:40, Johan Hovold wrote:
> The PCIe PHYs on x1e80100 do not a have a qref supply so stop requesting
> one. This also avoids the follow warning at boot:
> 
> 	qcom-qmp-pcie-phy 1be0000.phy: supply vdda-qref not found, using dummy regulator
> 
> Fixes: e961ec81a39b ("phy: qcom: qmp: Add phy register and clk setting for x1e80100 PCIe3")
> Cc: Qiang Yu <quic_qianyu@quicinc.com>
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>

Reviewed-by: Abel Vesa <abel.vesa@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
