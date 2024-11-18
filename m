Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4EAF9D4920C
	for <linux-phy@archiver.kernel.org>; Mon, 18 Nov 2024 11:00:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8cxe67v6GZvyXDWCZsY/GKvHmh0+Wa0pOnoZzYPLQNM=; b=i100vNbHfzaJoa
	thT3KdB/wxF+Wo4pIPP90qVtRuCs3RkoKWO6LB6A7V9xMaCo8hCrZGR6+L8u3v3gvU8Xxu46UlRyR
	dxk7thbVdFqntZr6bTHqljceYSXOTYJh2G3GB87iBA5x7xK/SbWUdR1ISdVaSNtqD4IUX9bmtH28f
	XBbzshjcjTiiLGRkBMbRh+8irLEPw9cT3Ginw6k7KaMHf9T5QwbXQghXekGHV6C+FjDlbfUCRi4Lz
	XXU82rO5Q21RLZ90sfgquSICvhF+MDturxDRjIrB2EdwiImc4rujx+MNWmyHg7/McFDEZvG9WIILS
	6GIqDqau9yo/6mA/YP3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tCzUn-00000009BOO-3LAj;
	Mon, 18 Nov 2024 11:00:41 +0000
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tCzUi-00000009BMh-1nfN
	for linux-phy@lists.infradead.org;
	Mon, 18 Nov 2024 11:00:40 +0000
Received: by mail-lj1-x22f.google.com with SMTP id 38308e7fff4ca-2fb5be4381dso37022761fa.2
        for <linux-phy@lists.infradead.org>; Mon, 18 Nov 2024 03:00:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731927634; x=1732532434; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=/+qxRVlwU99jdO72TMXnMzWfyKpW+x3AZmsGZ6Fs4eM=;
        b=GUMmblXowxKlZv17Mm/YQ16prHtzdFO2vnbz8ntkLRyr9yp60hZ3NjjvGz7JEhzZ4H
         vieFS4B57Yvwq47H0b+FIUg0fRFRKkOQdddeys8+6491ijoi35qXRzz5TrsZ9Uci3aCl
         0WXoiNQLYa59Vs2v4Hcahaa+GtfHisq+M57wVkr8i46VzUF4l0TLB/smDdWQKATLaCG2
         L0shz92Cgs7jha04oJizv6Rh3DetnHowc18BtOWaaLMu3P7oEglV3xEBn2NqCveMGXuV
         xBoUguLCkDDzVSkBnMOKgmFEHOwxlCr5q1GnYOY58vwkc+BH3vpMHMM78EZX93o+LylC
         BQ4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731927634; x=1732532434;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/+qxRVlwU99jdO72TMXnMzWfyKpW+x3AZmsGZ6Fs4eM=;
        b=Zp5fNwwbyywSw3YiMleIzsxVBskOCTygqw3UeOEZHDsN1gD6RhCWyJZfTTrcsvo6xZ
         pXVpkDQ85w0JG7Sq535UvYVaMv6oT6tEtK3ReY03nCPzRJrLotzXhuluaPvA9me+kYzS
         WNUicOmKRMIlA9QlxmINWr5UDLVqAH6el2mmOSZRjGqTJBC4xx6j9CKI5PR9MxlPyPBV
         u3X9P/RGbYD21izkBmxN1Im0PavSzo8lb95O4s9h2VY6u2CmlMxmis4HjqAaI/pBL7PU
         NGoThcb4jQIMvMiJ4bTP9jWD5+xNhNhDN0iT16PWeDGwwpJx/sF6AehcfpJbM59oj+xL
         S60Q==
X-Forwarded-Encrypted: i=1; AJvYcCUBUXkWDU/WsEbbHeVt+Ruar0yrWYViGC29w/kW6qMi6IZMm3TLDei7xAMkMRPbq//YxDE/RmT2XmA=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy4iMJ7vxwU70Wtc0kiOUQm9vuEdBMhOtVrPCSwJPBJ3YqNs92R
	ISyMKgEhuh5qzdPq6ZG0XTv2qzEmhcWrslt9vDJl/pZzdgUz+QUSdxiucVljEws=
X-Google-Smtp-Source: AGHT+IHgBjzO0bYRymV00U269jkhlwnbzUI5K4iYYfXbN3cZHW+Pwz1T7tfP5PHVJf3EORkPXLCIsQ==
X-Received: by 2002:a05:651c:243:b0:2fb:4ff6:eb0d with SMTP id 38308e7fff4ca-2ff6095e985mr43909861fa.22.1731927633080;
        Mon, 18 Nov 2024 03:00:33 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ff69ae7f35sm9042351fa.91.2024.11.18.03.00.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Nov 2024 03:00:32 -0800 (PST)
Date: Mon, 18 Nov 2024 13:00:30 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org, 
	manivannan.sadhasivam@linaro.org, bhelgaas@google.com, kw@linux.com, lpieralisi@kernel.org, 
	quic_qianyu@quicinc.com, conor+dt@kernel.org, neil.armstrong@linaro.org, 
	andersson@kernel.org, konradybcio@kernel.org, quic_shashim@quicinc.com, 
	quic_kaushalk@quicinc.com, quic_tdas@quicinc.com, quic_tingweiz@quicinc.com, 
	quic_aiquny@quicinc.com, kernel@quicinc.com, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	Krishna chaitanya chundru <quic_krichai@quicinc.com>
Subject: Re: [PATCH 1/5] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy:
 Document the QCS615 QMP PCIe PHY Gen3 x1
Message-ID: <b4srulghkbgrx65n64tsyhbdhn6xqv6gjhmovtozc5hjzmq2nm@aq5onb5fv3ks>
References: <20241118082619.177201-1-quic_ziyuzhan@quicinc.com>
 <20241118082619.177201-2-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241118082619.177201-2-quic_ziyuzhan@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241118_030036_469228_A4604585 
X-CRM114-Status: GOOD (  12.94  )
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

On Mon, Nov 18, 2024 at 04:26:15PM +0800, Ziyue Zhang wrote:
> From: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> 
> Add dedicated schema for the PCIe controllers found on QCS615.

In which sense using qcom,sc8280xp-qmp-pcie-phy.yaml is considered to be
a dedicated schema?

> 
> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> ---
>  .../devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml     | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> index dcf4fa55fbba..d13eb46adbbb 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> @@ -16,6 +16,7 @@ description:
>  properties:
>    compatible:
>      enum:
> +      - qcom,qcs615-qmp-gen3x1-pcie-phy
>        - qcom,sa8775p-qmp-gen4x2-pcie-phy
>        - qcom,sa8775p-qmp-gen4x4-pcie-phy
>        - qcom,sc8180x-qmp-pcie-phy
> @@ -168,6 +169,7 @@ allOf:
>          compatible:
>            contains:
>              enum:
> +              - qcom,qcs615-qmp-gen3x1-pcie-phy
>                - qcom,sc8280xp-qmp-gen3x1-pcie-phy
>                - qcom,sc8280xp-qmp-gen3x2-pcie-phy
>                - qcom,sc8280xp-qmp-gen3x4-pcie-phy
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
