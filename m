Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D90E7CA0FE9
	for <linux-phy@archiver.kernel.org>; Sat, 23 Aug 2025 06:28:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XTIdwbDBLWbkkwhIC8pA/jftdcVyQdc89uiRbBGodfA=; b=djVTz0wWZm4URq
	kBRU/DIZTVfIzjeksKnyX5wvolVfkZ7Tqc8I4D1rQyuK6vTzUsQ5s7EGszGsjpUAx3Z89QPJSVBFL
	vQ7yanSwrKED79IQPzIYPUEhMJ/EifJ1pjpejAp5g87cdp7tycP1rVzQ8ArT69b6I77WiopkuemT0
	DEmDdjcYKvJAaxJDowk9m+Vq2w+V1VDF0MF3+JFsjdtY0RDAaL3tWih7eNehCWkalrNCp846sfHLL
	QovXZFJWlb3h2mHaDAzhw2B6XVIkWQd8m5/xTbKXWgNZWQixjIEUeXg5fm9qomLD1zPHsIEBclie9
	KBbS/K032DYe3fAi6MiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uphjj-00000003w35-2cFK;
	Sat, 23 Aug 2025 06:28:23 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upQDJ-00000002MgL-2jdS
	for linux-phy@lists.infradead.org;
	Fri, 22 Aug 2025 11:45:46 +0000
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-619487c8865so5360344a12.1
        for <linux-phy@lists.infradead.org>; Fri, 22 Aug 2025 04:45:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755863144; x=1756467944; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=z4OUvE+/qeMt3Ot3GYxNSoy/OyQHU/DgOy4nkkkxS3g=;
        b=sYDslbtVm2JBBiVCTZ374psXVgtLlZV1dQikhUDzEY2BCx2sndk/2sdGsrVZ9cFOXp
         p3nVlurl+HS1xefCKeSDWW+yF+K6EGkbThrecFYEHt5JbTg28y2YuuaJzbzC9z+c1mfR
         v6yALN8pIIM30+UnjDRA5V0Wq4UGPD26EIWc6JyeJl561zKZgYxCgbGoTkrB0Y9R2p39
         dMF2WUuQ8NFKi5RAeEh6e6SYkNbSeUGM0nHUmOqkJOYTstmaPJq2YnZT1VxvFcKzQcwC
         BN4hosc5NU68s/2REGdu2UfVCwY2cu1SI4+nIdI0zWdD3tu/+bs2+iGEJXoWVkZQilNN
         VGxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755863144; x=1756467944;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z4OUvE+/qeMt3Ot3GYxNSoy/OyQHU/DgOy4nkkkxS3g=;
        b=A6j9FV96/egrxVozrVy0O4Tt8gUyI3xSDNqzfkcONbyLy7LBhYMMyP8Rjy2wDlypgQ
         53/F48T6GsIaBielHMMu3rUWj5OhV2hDNlQb559yUcrqgzEitOheoIgawaSquD6knvnd
         WOx+EbDa0ToYOqZethA6T4v06YA+/PZ/xkQA1UilfHklS6lFrfkzXYj1gqMZ/SE+0hdz
         wwmr4UGehJCjDQ5gmB8ndsI9VghBuyWir9HyMEAdD6gcPkOoPC2YPJoM43TWKYq1Fd2K
         piQW9lrMSqbJO9+g47ea3wGLLstpDtaKPzH4N0uFN25B9d2b5jKexF2YRWDHTEBY2B3O
         wozQ==
X-Forwarded-Encrypted: i=1; AJvYcCVk35A6m/u/nnAMaZTdA9PcrxUbEdfD2YWzkoH+jvjqCAF1i39CdOTvLnrRvvPss/Zb6cNvt9Sqr8I=@lists.infradead.org
X-Gm-Message-State: AOJu0YzyAPhIo31smP2Tm4oWlFdLVwkaeS1x1goJdOa0vobVVy9/JuSK
	VGw0biSVggWic/nau8EnUyAmutV1HDXBMd8WcMPxEyX7EZrYMGNVzuoBDM/hacZ91w8=
X-Gm-Gg: ASbGncvYy5F1w3MnrTxUleiZsZBHKCfoEZTs/5R2n1NWTm1FbYJzWpY6POqroZfl6UE
	0aGzsM7gKtYTH/Kw28OFaSsuHGPv+vQntIgCn6eNoTmsa5Iwwnr8lpY8OjDTLT+NO7DeukAHioa
	MletZSxnEvvuGwbwu3Isy7WWl7KILBBh9eKNoQCXlOnuqmWohyToBbnImTrqYKOTUEc5YjJnO/U
	dzcA9OpVSRNs2osCfTetCbHAlfVbD36ykueaeiJ9hPUx8XnqP+/qp952uzFNkbKs4yq4mCBqnp7
	8JAK+xkgf8Rymd/roH2wvD1MJSnwO4RxVDUeNEH3aBAIKhn9qm0bCTp6B2FmKyHIlQSjQb8oKdT
	wMa/wWnUOI32uC4uY22M+0fXjDtqPQyyQ7TRvJVHrOncR
X-Google-Smtp-Source: AGHT+IGP1JS6P3jPLucWErJ+X2vbBJZkNfA72X488Al6ZrxHQ3otij/kMnekLD+6J4EjuK4lppcisA==
X-Received: by 2002:a17:906:4794:b0:afc:aac3:6d2 with SMTP id a640c23a62f3a-afe28fcd53fmr252056366b.2.1755863143536;
        Fri, 22 Aug 2025 04:45:43 -0700 (PDT)
Received: from linaro.org ([2a02:2454:ff21:ef30:63f:a353:7a5a:5beb])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afded307138sm590844266b.45.2025.08.22.04.45.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 04:45:43 -0700 (PDT)
Date: Fri, 22 Aug 2025 13:45:38 +0200
From: Stephan Gerhold <stephan.gerhold@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH RFC 3/3] arm64: dts: qcom: x1e78100-lenovo-thinkpad-t14s:
 add HDMI nodes
Message-ID: <aKhYYjUuOQ7H1aPm@linaro.org>
References: <20250821-topic-x1e80100-hdmi-v1-0-f14ad9430e88@linaro.org>
 <20250821-topic-x1e80100-hdmi-v1-3-f14ad9430e88@linaro.org>
 <as7pbmhfgsg3ht3s5lu25pfjjamaxyonuohkuohono3kr2mxii@posspuko4vwa>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <as7pbmhfgsg3ht3s5lu25pfjjamaxyonuohkuohono3kr2mxii@posspuko4vwa>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250822_044545_701916_E2315508 
X-CRM114-Status: GOOD (  19.91  )
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

On Fri, Aug 22, 2025 at 02:01:30PM +0300, Dmitry Baryshkov wrote:
> On Thu, Aug 21, 2025 at 03:53:28PM +0200, Neil Armstrong wrote:
> > The Thinkpad T14s embeds a transparent 4lanes DP->HDMI transceiver
> > connected to the third QMP Combo PHY 4 lanes.
> > 
> > Add all the data routing, disable mode switching and specify the
> > QMP Combo PHY should be in DP-Only mode to route the 4 lanes to
> > the underlying DP phy.
> > 
> > Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> > ---
> >  .../dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi    | 44 ++++++++++++++++++++++
> >  1 file changed, 44 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
> > index 4cf61c2a34e31233b1adc93332bcabef22de3f86..5b62b8c3123633360f249e3ecdc8ea23f44e8e09 100644
> > --- a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
> > @@ -62,6 +62,20 @@ switch-lid {
> >  		};
> >  	};
> >  
> > +
> > +	hdmi-connector {
> > +		compatible = "hdmi-connector";
> > +		type = "a";
> > +		pinctrl-0 = <&hdmi_hpd_default>;
> > +		pinctrl-names = "default";
> [...]
> > +
> > +		port {
> > +			hdmi_con: endpoint {
> > +				remote-endpoint = <&usb_1_ss2_qmpphy_out>;
> 
> Please describe the transparent bridge too. It can be covered by the
> simple-bridge.yaml / simple-bridge.c
> 

I think this isn't the case here(?), but how are we going to handle
devices where we don't know which bridge chip is used? I've seen at
least 3 or 4 different chips already across all X1E laptops and we don't
have schematics for most of them.

Thanks,
Stephan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
