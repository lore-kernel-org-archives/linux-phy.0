Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 146A0C77B73
	for <linux-phy@archiver.kernel.org>; Thu, 27 Apr 2023 14:22:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y5nr6DcerzjS52/Nh9QJ7UNYO16omMzjZMxO4GDviDo=; b=YeP599uBVKnq1P
	8etdSqtIZO4dUlgeckwCkq434B82sJCfXN7lPxLNAq/LjfiFLfZWd/pWtJMOJkMJNRoZ0DlT/4Zf3
	uVhPj/bAqFaUg6oPNWtAWEHDlHtX8uQt1OwYt5n0X3QSGY9TjQ/Sqfz7ewYu6YahB68X+CawLRoOq
	s73aGUQqvDhifpR8G8EGpzBxyUgZ3/PWVCEttQCNYFgFVfkNZP3G6PJqPXCvcfoPeBlA2pSm/7e6p
	Tuq3nJmMICmwZtD0W5pL3mb3E29iWER2/HFB8XjXiFO+6cjNK2GoD5pwkGcEoVb0uGbCtRbFVUy7m
	QVWs/pGG3K9a6Vz526/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ps2W3-006kTQ-2H;
	Thu, 27 Apr 2023 14:22:35 +0000
Received: from mail-oa1-f53.google.com ([209.85.160.53])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ps2W0-006kS6-2c
	for linux-phy@lists.infradead.org;
	Thu, 27 Apr 2023 14:22:33 +0000
Received: by mail-oa1-f53.google.com with SMTP id 586e51a60fabf-18f16a2c329so4628653fac.0
        for <linux-phy@lists.infradead.org>; Thu, 27 Apr 2023 07:22:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682605350; x=1685197350;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZhNP5q/FtBZ2oxbUFxRPwXXGpasJHmCl/lNnylGgGkY=;
        b=FBs4o7YXRpdVppnIOdpAUGS4hKTB7bMm2zAeR6pACNyFm03SDIysV8tn+wzy0JvDP2
         FsbtXSAabc4O24Ta+PoPl6L9KS8RTR+r8eaJEnXAc3qUBz7acDrKYv/LYMxuxsg6axQ7
         CGyFGjGSBwtMPOlmBkOC0Vqdf7eXP6tdDB2G44hZmm5h5ARZluXQzxme3NeksDfnctQY
         2mmG67erX9WnIvQqtq4BernsA/7KwGoWlIs68eLOCgw6x+oCKSO08vUOaY3s7rGwSH/F
         vTQDnKh/n2Ld5ksjrBnh/vkrwn92qP4bv0qw0OI2ER/haram4SUxkbUPD69K6Zi4Nz6L
         xm3g==
X-Gm-Message-State: AC+VfDybvxsjfY71jwxX5aZxQ2cYiTd6eA4vvCrwS2usCubD/QTKPnwA
	AJwBxhfG7XOomehW7YbAxA==
X-Google-Smtp-Source: ACHHUZ5SRwtVVOSGEhz2ky680l6Is1tQjpsPPMmy2jy6lZSkZKy3sp1BN0ILIPvaem19w5gSbvMAFQ==
X-Received: by 2002:aca:2b07:0:b0:389:888a:73b9 with SMTP id i7-20020aca2b07000000b00389888a73b9mr878133oik.28.1682605350618;
        Thu, 27 Apr 2023 07:22:30 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id p205-20020acaf1d6000000b00386eff32f58sm7773940oih.13.2023.04.27.07.22.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Apr 2023 07:22:30 -0700 (PDT)
Received: (nullmailer pid 2990340 invoked by uid 1000);
	Thu, 27 Apr 2023 14:22:29 -0000
Date: Thu, 27 Apr 2023 09:22:29 -0500
From: Rob Herring <robh@kernel.org>
To: Shazad Hussain <quic_shazhuss@quicinc.com>
Cc: andersson@kernel.org, Kishon Vijay Abraham I <kishon@kernel.org>, devicetree@vger.kernel.org, robh+dt@kernel.org, agross@kernel.org, Vinod Koul <vkoul@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, krzysztof.kozlowski+dt@linaro.org, Konrad Dybcio <konrad.dybcio@linaro.org>, linux-usb@vger.kernel.org, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 3/6] dt-bindings: phy: qcom,sc8280xp-qmp-usb3-uni: Add
 SA8775P USB PHY binding
Message-ID: <168260534832.2990278.842904223739682126.robh@kernel.org>
References: <20230421133922.8520-1-quic_shazhuss@quicinc.com>
 <20230421133922.8520-4-quic_shazhuss@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230421133922.8520-4-quic_shazhuss@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230427_072232_846095_8EFA1479 
X-CRM114-Status: UNSURE (   7.90  )
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


On Fri, 21 Apr 2023 19:09:18 +0530, Shazad Hussain wrote:
> Add compatible string for Qualcomm QMP Super Speed (SS) UNI PHY found
> in SA8775P.
> 
> Signed-off-by: Shazad Hussain <quic_shazhuss@quicinc.com>
> ---
>  .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml  | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
