Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00D18C433F5
	for <linux-phy@archiver.kernel.org>; Thu, 19 May 2022 09:52:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZUQAlm6GPzmbLLTUQau+5xba/hLit2U4Oy6nMupSr2k=; b=etCkAKY1hkh3pf
	BPCRcqNBf1MIEvGfUg1kKtCc7YQpnF95Fn8ZqP26SgGm4dcmX2kcp8sUuoJArYfUlQ2HiZB1eVR8q
	DGOqJAM4R/A+45GzlrFllhpA7KgV8fUTCJjii6bUNm/y+BnmskqbzSY0hO0Op8KoKXrEu+xTh64uG
	aeRC2ZOaW7XomFqI+tWR3j/YPN+Rvev2rnszBmc84HqxD+cycnPtanHSN7tF/vJeA4mVcp+S8tG8f
	x24L6aiJ4RnTRzAo3tgswuTnYgBk6zFARqkXuE1z6W7uUoJS06fmWogIRlPRtWXOf/S+sREqtmzk1
	tG0AGsAMALuM/hKhWp5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nrcpY-006BoZ-Ao; Thu, 19 May 2022 09:52:28 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nrcpT-006Bn3-QE
 for linux-phy@lists.infradead.org; Thu, 19 May 2022 09:52:27 +0000
Received: by mail-lj1-x22d.google.com with SMTP id s5so5566826ljd.10
 for <linux-phy@lists.infradead.org>; Thu, 19 May 2022 02:52:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=epUC6Np0BXS3QJtTF4KvMmglvF2IOB83BUZ5j+BV7l0=;
 b=QBkFb4975luF3/Zu1UcADu2sFKXP2PZbztuUSfgRCSQzWdo7iEvLhpKikM5DvPo8nk
 Eo3+Ep+W94le6m+kuS7j913LwgYFSlh9PaMjW2pBO8Lp6Z4JhD1UZ+OZBIOSv0alz8mw
 W23zjqPyzL8JusYLmuYDzMc7VswVqCjaLPykqh7vYGjRntT6RnuNDvbI694WGaIB6q50
 eU5k19neBexRw4dL3lbTcSonik8s+lma9WD9lEs8mfgUUS6bFXO2VBxjbDcmREJwdqTR
 QahuxeqNjYU1rDKrGjrsgVTCnfh0g0uJFI87F6o0lmVPtxMNAEbWmyN5YYKOu3ILdghm
 p6FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=epUC6Np0BXS3QJtTF4KvMmglvF2IOB83BUZ5j+BV7l0=;
 b=yAChbR4nYmfAx0VioJt3G+1I8jqjJFkmuaXTpRkMsnPYk6i30HIa/S6vtW8MQ5WCix
 EQ1Hr7NLOBqI4oJ9XbAJWBTEWjjoKIBGctK8wIa9BJGFVv8mGFT6PlqifDzZaMixgroN
 veR3jpPx5FfQHwReL8yQkfbnVQ6i8JHEDQNvARQZTUA0IyHaUEUqdP9OlF6CZ4OqHZcQ
 1ApxN6pvCqX2D1VC1UaZwz6Y85ATmF2wvkNr5lke7JfHeRCdmomXwXIIkeXj27rhL5dy
 CA+iEMJNikBReWySgfVaRhWzZsgL5gvsW7Q0C1ZoRtvKUOa5PrplnCZEih59EATiKhsg
 9bGA==
X-Gm-Message-State: AOAM530+3z6x56foRwuqPjV92BGnlBuj4J3z8Mb1RP0pRWQw/nvz4VIJ
 fk1iDgCbeFyEykpEp+TIefHF+Q==
X-Google-Smtp-Source: ABdhPJzwM+VOYt2tfc4jbF1tCaPh17iewQ0ya7xVnWgl2uzwoGpo9v131U1CKPP7Pp2/u/0r5RQWzQ==
X-Received: by 2002:a2e:9a84:0:b0:24f:4160:305d with SMTP id
 p4-20020a2e9a84000000b0024f4160305dmr2108933lji.375.1652953939236; 
 Thu, 19 May 2022 02:52:19 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl.
 [78.11.189.27]) by smtp.gmail.com with ESMTPSA id
 y2-20020a2e9d42000000b00253bb2564cbsm529363ljj.134.2022.05.19.02.52.17
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 19 May 2022 02:52:18 -0700 (PDT)
Message-ID: <b02873a1-ef1c-8ae6-2b7d-8e00c9db9ac0@linaro.org>
Date: Thu, 19 May 2022 11:52:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v6 3/3] arm64: dts: qcom: sc7280: Update SNPS Phy params
 for SC7280 IDP device
Content-Language: en-US
To: Krishna Kurapati <quic_kriskura@quicinc.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Stephen Boyd <swboyd@chromium.org>, Doug Anderson <dianders@chromium.org>,
 Matthias Kaehlcke <mka@chromium.org>, Wesley Cheng <quic_wcheng@quicinc.com>
Cc: devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, quic_pkondeti@quicinc.com,
 quic_ppratap@quicinc.com, quic_vpulyala@quicinc.com
References: <1652934489-23386-1-git-send-email-quic_kriskura@quicinc.com>
 <1652934489-23386-4-git-send-email-quic_kriskura@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1652934489-23386-4-git-send-email-quic_kriskura@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220519_025226_162526_91990BF4 
X-CRM114-Status: GOOD (  13.29  )
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

On 19/05/2022 06:28, Krishna Kurapati wrote:
> Overriding the SNPS Phy tuning parameters for SC7280 IDP device.
> 
> Signed-off-by: Krishna Kurapati <quic_kriskura@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sc7280-idp.dtsi | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
> index 5eb6689..556fb04 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
> @@ -325,6 +325,12 @@
>  	vdda-pll-supply = <&vreg_l10c_0p8>;
>  	vdda33-supply = <&vreg_l2b_3p0>;
>  	vdda18-supply = <&vreg_l1c_1p8>;
> +	qcom,hs-rise-fall-time-bp = <0>;
> +	qcom,squelch-detector-bp = <(-2090)>;
> +	qcom,hs-disconnect-bp = <1743>;
> +	qcom,hs-amplitude-bp = <1780>;
> +	qcom,hs-crossover-voltage-microvolt = <(-31000)>;
> +	qcom,hs-output-impedance-micro-ohm = <2600000>;

Not correct property name.


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
