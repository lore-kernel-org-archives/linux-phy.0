Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8998BC433FE
	for <linux-phy@archiver.kernel.org>; Sat, 23 Apr 2022 15:54:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iaTwOJdZLThdpVTnIlPxOPIhTb2kzkNCt2RjUJwJYXI=; b=FZxcCvJPq1hsWR
	zLZQtsAm0QjJJ6mzuOzMLF04Wb3rk15yVfgRiWzvOt8bcbMSfIfMPn9kCoSmVn+y1/IwOGwUER66n
	jAOrTLgi1mLfdqmQvbNCvyxtUy13O0iWYeKf0lGeJShAl7txCWaMYhcN4UIAwdtNFERGjZSG/nqyO
	7Bn4kTfAJA/H2g4dJaiJqyKY1gcIh/Bfs7plMu62CoTePj6jNEwGqfudOmivZi6e5wYDKPMkrdhhE
	8aYXtvTlnTo/mR/tQZY0rA8z/B65HWBwQ+WNDGOq//Gl14x4PJo1T0Cktv7GogceypUEirxz6SbTf
	I4tScC11DBnQKhvQNCNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1niI5Z-004b2o-US; Sat, 23 Apr 2022 15:54:25 +0000
Received: from mail-oi1-x22e.google.com ([2607:f8b0:4864:20::22e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1niI5X-004b2F-T6
 for linux-phy@lists.infradead.org; Sat, 23 Apr 2022 15:54:25 +0000
Received: by mail-oi1-x22e.google.com with SMTP id l203so1490697oif.0
 for <linux-phy@lists.infradead.org>; Sat, 23 Apr 2022 08:54:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=hrGPwkbDgIWnJ4Onq4/Uw+01BRMLP89hoICAxPX1lZg=;
 b=phBNBzVskW/COz4zfKD/DezyL5LTtjRofDqci3Srne5x2R+gtrqEhHytCh78rJsO90
 mtHvp8Qtrz3S4xvbF4AHktkGtMBk0X1nmUcWk660VXeYJObzTHlHNRmZIe3m6Cq8duQ5
 gKMISYiBRrToNq6aId2OMigdjXLMCrCeLz7XBkufalIkbnO5dDM9C3vttXXpApWepY6i
 EK3RlAZyAvH16nYOhmlzO0fgiRadqi4I0C4bMQLaPODTuP4bgy8BHmay6ZZi3ptFiYdG
 2Eo9LsMk6nVaruBUA/CTeyIG2WiK18d31FQAnOHE50/xc3G4uyvAOIpr4x4ZDcwbusIk
 CAxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=hrGPwkbDgIWnJ4Onq4/Uw+01BRMLP89hoICAxPX1lZg=;
 b=s81+CkojmCJfs4lVkzCU6nSNQnCp2VCpZyB/Gaua3LzW5MsvZLdO4OU8+aGyOj5iJg
 Ozu56jB9GxXmC3Honu1soGwLKm2qyqtyLAa/QyzWWj9NMkb8DtZgJxR7XcztqqnSRVfa
 kxTcu0E1JbgHcAWmxxUwTQi3ibSlUstb6TtJY69gN3OVj3nWvOOdNYXauHGweBvMAZ0V
 u5K5xxIiYRHwmizoYknDH50XvKlBzogzXCZqJq399t0RH0+RrUUQyIcz2WMTCxcfcjVb
 rbAkIuaOwm3lxvlY99RXZ0AVnHUIngpTOgoqfaBH9hR110osB7OipkvbvEeW7AKPJS0a
 8FuQ==
X-Gm-Message-State: AOAM5323gMAJi37zOvKtMSkijWwISUA/cGB6W3uP08wQEOjEn9T8dGRS
 cSNOStstdq7120TN1nKPv8IydA==
X-Google-Smtp-Source: ABdhPJwLI+vAZIQMAK7ev1g3Xpqgo1rOXHieHQmvJPiguFY8z0G2GNpRD4EJ2n+MK1ojus7g7RX6jw==
X-Received: by 2002:a05:6808:f90:b0:325:4a7:5555 with SMTP id
 o16-20020a0568080f9000b0032504a75555mr1422399oiw.157.1650729262444; 
 Sat, 23 Apr 2022 08:54:22 -0700 (PDT)
Received: from ripper ([2600:1700:a0:3dc8:205:1bff:fec0:b9b3])
 by smtp.gmail.com with ESMTPSA id
 s6-20020a4ae546000000b0032480834193sm2098338oot.46.2022.04.23.08.54.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 23 Apr 2022 08:54:21 -0700 (PDT)
Date: Sat, 23 Apr 2022 08:56:22 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 bhupesh.linux@gmail.com, agross@kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 robh+dt@kernel.org, vkoul@kernel.org, Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v3 2/4] dt-bindings: phy: qcom,qmp: Describe
 'vdda-max-microamp' & 'vdda-pll-max-microamp' properties
Message-ID: <YmQhpsmiYJzR99LK@ripper>
References: <20220418205509.1102109-1-bhupesh.sharma@linaro.org>
 <20220418205509.1102109-3-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220418205509.1102109-3-bhupesh.sharma@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220423_085423_983790_9918ECF0 
X-CRM114-Status: GOOD (  16.76  )
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

On Mon 18 Apr 13:55 PDT 2022, Bhupesh Sharma wrote:

> Since a few boards based on QCoM qmp phy use the
> 'vdda-max-microamp' & 'vdda-pll-max-microamp' properties to
> describe the ufs phy nodes, add them to the dt-bindings doc as well.
> 
> This fixes the following '$ make dtbs_check' warning(s):
> 
> sm8350-microsoft-surface-duo2.dt.yaml: phy@1d87000:
>   'vdda-max-microamp', 'vdda-pll-max-microamp' do not match any of
>    the regexes: '^phy@[0-9a-f]+$', 'pinctrl-[0-9]+'
> 
> Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
> Cc: Vinod Koul <vkoul@kernel.org>
> Acked-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> ---
>  Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> index c39ead81ecd7..411c79dbfa15 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> @@ -90,6 +90,14 @@ properties:
>      minItems: 1
>      maxItems: 3
>  
> +  vdda-max-microamp:
> +    description:
> +      Specifies max. load that can be drawn from phy supply.
> +
> +  vdda-pll-max-microamp:
> +    description:
> +      Specifies max. load that can be drawn from pll supply.

It's not clear to me what an implementation would do with this
information. As expressed here it sounds like it's a property of the
specified regulator, so the driver should just request that information
from the regulator framework.

So let's wait with introducing such properties until we know.

Thanks,
Bjorn

> +
>    vdda-phy-supply:
>      description:
>        Phandle to a regulator supply to PHY core block.
> -- 
> 2.35.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
