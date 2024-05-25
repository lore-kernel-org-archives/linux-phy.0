Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC4C2C25B78
	for <linux-phy@archiver.kernel.org>; Sat, 25 May 2024 20:15:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3yD7hebjTTO7HxQRx39pe3cXdMlT/J3uUF3wR431z/Y=; b=iWxYdyFhUYDGSR
	csxYqsCoRxnOVv/ftU5XfUhr06QV4qlLKk8IIka6NbLSWdpxiZXEm5CX/yNYP4A5iisvXhUm9uYBU
	XcY6hic3L9iKkjG0LsdEWCVv6JE2sbIKLNH0yAOT9P6NFPqai0ztgUFbfVrX/Fn3JQYLw3PZxdeO1
	efi98epUFM8G/84sDb/xomJ0yfCgnwNcLrBT5eDxrb+4NtHhlF7SUplmIwDGEVziLL7iQHke/jlyT
	R+xfAXeoHxJTmaqfgOT/5uWehy4+x6NgXYn/wlM7aCS9Oy8p+ewsia02QOpr1c5lW0k3tz+oVKJ/d
	C2UtC2+QtSaRI6X8ZVBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sAxnR-0000000BdWV-0rfa;
	Sat, 25 May 2024 20:15:17 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sAxnO-0000000BdVZ-2YEo
	for linux-phy@lists.infradead.org;
	Sat, 25 May 2024 20:15:16 +0000
Received: by mail-lj1-x234.google.com with SMTP id 38308e7fff4ca-2e73359b979so68440381fa.1
        for <linux-phy@lists.infradead.org>; Sat, 25 May 2024 13:15:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716668106; x=1717272906; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=egWjRNm6b0cKfW6TfbtwfyF/4NhODfHU/rXiLN8YUss=;
        b=xdP3osSH3gvOuOd13XmM1yCEkdoG/hzrf5o0SBmVMnxsasRcgu0Y9z5nUcCgjRJeFP
         HqrNfwZ/hqVfLl/WR0TEvvQi4H/R5tK+xUfdl+Wbu7ZnAczFEc+AeIHKOVUfPQ/mAmfk
         LvSbtlcL6upHiph5zVMG8LPha/zErEu9ELeYQZJpIUfmxi5RLf9DlVDuptRkzDq5t/Al
         falo3abW1rVmCfOE+zF0Ro/XJIS7oe0zBC/XzBJB/Qr5DfCI1yv24foyehgB9CVM0sbG
         RPVy7Ia2HKi5cBHi2Q8546shqkovhm5DqsuSdum/HspgR7Cy81T1OoAPi0rhLsUZNJNh
         +tdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716668106; x=1717272906;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=egWjRNm6b0cKfW6TfbtwfyF/4NhODfHU/rXiLN8YUss=;
        b=dQRhFRTNv7ADJG/fe/Ae0oWcDdfZ2Dwfc4kfgv35pA/x0O9mezCvwBifqaicPnlRCi
         Q3SfPkQB2M1aetclKpfaXS42L1/bD/lQGJYT46DPv42ICA5yY0jexTam9hT4Jf7nZiiQ
         kQDHKgsn/FnlrUOXaWG2a3uBEJpySTtTpLKc8+SZD+xTUbN8RHn4rt3phok2OyUsKdZL
         l5uY4eECq8+Df331fiIA5HPxETOwWbNZEmuH2ki4rnXM7U4XC5ouLHah+dTdqgtqflds
         gm1XFNqJbfrpuvQEC7xrw/oJMWeuoi4HZRqTjs/nw9vKb7hTJcbVJPXbBCM72VqAdRiq
         VWDQ==
X-Forwarded-Encrypted: i=1; AJvYcCXJj5OcK81LBwDeNIun2jWehUFACVIUFvCS6Qkx4ydEkGH54RnQ79l0nKVlKLX/Cj1gr6xLdOZWJoxblsi6L3WE/y11BwdY8M0uNzbXPw==
X-Gm-Message-State: AOJu0YyU/QRYq/CJVxytEInuZfXmFxH9K8eEEqnsUir6aBK/bF3EWFdy
	b/ibWzNoi0ri1Bjew/rlR05pNtPYUkWDLWbK7S8mZiNaEmxda+Tw1rmuK4OXrQ0=
X-Google-Smtp-Source: AGHT+IHiQh33yuCyFRiG6oGt+h+qN4Mxt2GwttIkrQpd6pTLi9+gx2U58NUig8jJLSxwAFcop03z6Q==
X-Received: by 2002:a2e:9b12:0:b0:2df:9c94:150e with SMTP id 38308e7fff4ca-2e95b0bcf56mr31356691fa.25.1716668105844;
        Sat, 25 May 2024 13:15:05 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2e95bdcd234sm8779761fa.99.2024.05.25.13.15.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 May 2024 13:15:05 -0700 (PDT)
Date: Sat, 25 May 2024 23:15:03 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-usb@vger.kernel.org, Bjorn Andersson <quic_bjorande@quicinc.com>
Subject: Re: [PATCH 06/10] arm64: dts: qcom: sc8180x-pmics: Add second
 PMC8180 GPIO
Message-ID: <rajxidory6cviwatbrkrwokm6pjep3bez3cb6goomzjqk5w3f6@3osk2nd6zl6x>
References: <20240525-sc8180x-usb-mp-v1-0-60a904392438@quicinc.com>
 <20240525-sc8180x-usb-mp-v1-6-60a904392438@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240525-sc8180x-usb-mp-v1-6-60a904392438@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240525_131514_692415_BD7B538E 
X-CRM114-Status: GOOD (  12.58  )
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

On Sat, May 25, 2024 at 11:03:59AM -0700, Bjorn Andersson wrote:
> From: Bjorn Andersson <quic_bjorande@quicinc.com>
> 
> The SC8180X comes with two PMC8180 PMICs, with the GPIO block being used
> to control VBUS supply of the second USB multiport port.
> 
> Rename the GPIO controller in the first PMC8180 to match the schematics
> and define this second controller.
> 
> Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sc8180x-pmics.dtsi | 16 +++++++++++++---
>  1 file changed, 13 insertions(+), 3 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
