Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B4EDE77188
	for <linux-phy@archiver.kernel.org>; Tue, 14 Jan 2025 10:13:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/PSZulSQWS2S2iVWMH5yqwe1ympL1OevmLqPGKcuJ7E=; b=1l9esjGmZOS8XZ
	FdC+gTAXyuIdGmSmMB2e9zu4Dm0VIbVwaVI5JTHmFVffhsVf+VZ9ONLl7CoBy+gj8gaDjN26GoWn8
	/9X/8K6M9/zeCOQKu7QqT4d64dNbkk2f4j3q6UceVHLXA/bfRqOiJh3ydtcqu18FFG+ClImowHcEP
	MbUgerYzLi8uvMZUYPO39oixRtcNXEZ3emoDaGm6zEUr/1liH9cOTHXej63oewF05LraLGMonRbAE
	b5H+K0ysnx3wyjZMRPTEnacusX9jsdcokQ73oD2ncrujdzaPxmCXW0bfoAxNJC0j4nCJpUvYtwUSh
	YEf4vvyXZ9DsE98Ngtmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tXdvc-000000083P7-3s9O;
	Tue, 14 Jan 2025 10:13:45 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tXduN-000000083Dz-1Ios
	for linux-phy@lists.infradead.org;
	Tue, 14 Jan 2025 10:12:28 +0000
Received: by mail-lj1-x234.google.com with SMTP id 38308e7fff4ca-303548a9361so37436171fa.0
        for <linux-phy@lists.infradead.org>; Tue, 14 Jan 2025 02:12:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736849545; x=1737454345; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=c0Qrzgg2ua23heO+J/1apVMe+JOEnRWPI3Yz+eSCuMc=;
        b=Qq0bAvujd/zsPBro7TIP9h7znAMENQspSS4gO+DLdTgna/FYtmYxMVwBDH63p3C788
         XTwaupUZKTOgNBs3wNf8vv5Xa5+IPOpk0JjtWDzadtYlgyDojfX3suhNU9P1ymCb0ebI
         NtF5DJZcAXWfX3VO2ILAV3K/ij/Rzd41IV9gx39l7pClzZNoY1gsRa0zCK7ck3MHfiSQ
         5145gIx80BQ5eTMkyA6efxqWI7zFyyn00pgwGuFjtOCBw27lj6spiPG58byPD8d0RYF3
         bDdGL/z73mzwqY8f2h8e+wOWzA3Fpk6Yrg7CRoL1C2+W4gNw0fBbsfOaliYryFPqyB0C
         4pLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736849545; x=1737454345;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c0Qrzgg2ua23heO+J/1apVMe+JOEnRWPI3Yz+eSCuMc=;
        b=LTFwKufvJoE/jmlUI53a9smCeNP60+QfHzw6hWBWUKEUvy0pAAowp8AyeJALaC7RtR
         ElJTzF3RY2gKWfpIgQHbOyUkgrBYvrXesXDOZT/PlrkuUkaZYrSmv4UDMvjZuHj4A0c1
         Gk5H0uLCWXKSeVikXDDhNK02yLegfAwKc5XDlpR6dgyZUZQeZ41mQ3aM73XsVWseOjlC
         mrfapySudd0wEFsarArQlsQlGONiOo91fB/7Ss5F8/eKZa1/A1bRajVPw9DWWOm/HULK
         JURtgxS23waKT6bECTtT8MyITvALjOXvTcO0h72Rhr8mLk1+DSdziZe4QuXhg1HilHwB
         EkXQ==
X-Forwarded-Encrypted: i=1; AJvYcCWfPBRcZGQ/L/BvRKojjoFvta5iLatkTkx+1JL05peQzc9YIL7j4Xaeke9Wnz62uP0BZ3TlxEtdt7c=@lists.infradead.org
X-Gm-Message-State: AOJu0YyahUTBWmZEGix+5x7Suq/rYT5qKLb1/60GQTBhHrMSHG2SgEmG
	facG8ozashI2aYdYjKTqXZXN3xou9ZL6bPdgG7Kebi0oPSktSTTdPZC1VA3hjI4=
X-Gm-Gg: ASbGncuFkkJsZNjTmOyoPwE2eKJr6MzCe9MtxpyPLIn1Y3K1tFj7MpXVehbTBfcRUIC
	yAAuJ72fiBoZaaH4FWlJmUM1tkXynkpbWdqceFkJjkCf5V+dHAVQpwUnZ3yy/Df9BNYcNTvbDpJ
	faEGQSKLEFClRaTOoPdv5Tg+7Pcol8BIHNXSsaRxyIyFmy6Bc9SKvX7dc1eFKKjjR31Un5Agv3r
	Po8k3I8LpTmldom3X61yCEoiO+85LdO97Pc3vlL980d462XmMfBuzSJbBn1/iTFbsLamG41N9Ql
	LEDtk58xMlvzExU1w2yqUm7gp8LDytcSXkwf
X-Google-Smtp-Source: AGHT+IGvwMKyxTPc6XYDYWpAagsTLJobLBRBIaI1VJFHrDhlbJEBvgyteqb/2DjPirIxW8WefT3Djg==
X-Received: by 2002:a05:6512:31c9:b0:542:7217:361a with SMTP id 2adb3069b0e04-542845af299mr7698904e87.10.1736849545347;
        Tue, 14 Jan 2025 02:12:25 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5428be49f0bsm1625315e87.36.2025.01.14.02.12.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jan 2025 02:12:24 -0800 (PST)
Date: Tue, 14 Jan 2025 12:12:21 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Melody Olvera <quic_molvera@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>, 
	Trilok Soni <quic_tsoni@quicinc.com>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 2/7] dt-bindings: phy: Add the M31 based eUSB2 PHY
 bindings
Message-ID: <a42wtus7y72mt5adklbwg2hjbuayxkeucs7t4xuzmxyag2mx7b@6wlsomzj4gha>
References: <20250113-sm8750_usb_master-v1-0-09afe1dc2524@quicinc.com>
 <20250113-sm8750_usb_master-v1-2-09afe1dc2524@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250113-sm8750_usb_master-v1-2-09afe1dc2524@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250114_021227_354554_0B55484C 
X-CRM114-Status: GOOD (  14.26  )
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

On Mon, Jan 13, 2025 at 01:52:08PM -0800, Melody Olvera wrote:
> From: Wesley Cheng <quic_wcheng@quicinc.com>
> 
> On SM8750, the M31 eUSB2 PHY is being used to support USB2. Add the
> binding definition for the PHY driver.
> 
> Signed-off-by: Wesley Cheng <quic_wcheng@quicinc.com>
> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
> ---
>  .../bindings/phy/qcom,m31-eusb2-phy.yaml           | 84 ++++++++++++++++++++++
>  1 file changed, 84 insertions(+)
> 
> +examples:
> +  - |
> +    #include <dt-bindings/clock/qcom,sm8750-gcc.h>
> +    #include <dt-bindings/clock/qcom,rpmh.h>
> +    #include <dt-bindings/clock/qcom,sm8750-tcsr.h>

This a typical comment, please actually update your internal
documentation: don't use GCC's and other clock controller's bindings in
examples for other blocks.

> +
> +    usb_1_hsphy: phy@88e3000 {
> +        compatible = "qcom,sm8750-m31-eusb2-phy";
> +        reg = <0x88e3000 0x29c>;
> +
> +        clocks = <&tcsrcc TCSR_USB2_CLKREF_EN>;
> +        clock-names = "ref";
> +
> +        resets = <&gcc GCC_QUSB2PHY_PRIM_BCR>;
> +
> +        #phy-cells = <0>;
> +
> +        vdd-supply = <&vreg_l2d_0p88>;
> +        vdda12-supply = <&vreg_l3g_1p2>;
> +
> +    };
> 
> -- 
> 2.46.1
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
