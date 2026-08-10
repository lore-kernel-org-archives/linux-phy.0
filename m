Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A05AAC5AC82
	for <linux-phy@archiver.kernel.org>; Mon, 10 Aug 2026 11:15:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:
	References:MIME-Version:In-Reply-To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9aXkviEggMokJ+SxMK5Jr0YXk9FG8RonnR2Iq4K/+XU=; b=g2DWB3XJjXNgOf6yb8wjklsg/j
	3iWLS8NDZbry5YPXC0kLyvxs50mRpaph+JQ5tCmFU+KRTWILyAyUHG2hLirVGLIrabmrBsstenKPq
	+o4d+QPOSEQzlUS6ynfzmGuIJrKv3fFIJZ5kAL49mUcVdXDIzbd/eUR92fAUo673ONZJ/Lw6O+XsP
	7AJq4JpjwzEIIj6zl568ESCsrdyF+darsxA1Q+um1Mr5SCIULzw+m2exyBBahqkKXsmC63Zff38Sc
	vUMjunvO//kVKUsxYZcTYs4tuHbHd8Nub/WPSw76c5UlCG27pD0wSjs7eVwDWPVUp83kuQ0LWW9TX
	R3qTZMnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtNyB-0000000BZzS-1Oyb;
	Mon, 10 Aug 2026 11:15:03 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtNyA-0000000BZzK-1mny
	for linux-phy@lists.infradead.org;
	Mon, 10 Aug 2026 11:15:02 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id D561B43CC9
	for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 11:15:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B9EDA1F00ADB
	for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 11:15:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786360501;
	bh=PL8KOKhKf9Aaj5bOJoSZpWa9+kUfSiQO0s6EjxaVVPg=;
	h=From:In-Reply-To:References:Date:Subject:To:Cc;
	b=TwSwcFYRlTqKedTh+mzozly2isd+BuGKYCpISJczRZDq32HxHMtWAxx8O5FyBdUzN
	 bScfyLXye7gSEgCLms7IRWrMD1Z+eHtB5E5z55HFRfEkoc3NTbL634zqtm6+wdxJwp
	 TWHI3RqWmVXMj5bd0t32nLmAP4Zt3K8NRNxqFZWW0H0+t/j58qH7R1xsY20peW7IZ+
	 H7qF2XAYPWjZ7vdcC6TE8eW8v+9y04TXUVb4dc9yd/RuTlFsJtCI3Z4zDj3CABtdmf
	 pCBcc6LoMnVlZlxwZc0niPYLoyqTAa0qEDZR8y9AFxRDrtponfUQ6D9hQy8OHVpb7+
	 BfrfnE4Rhsa/w==
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-5aeb59d54b1so1853325e87.1
        for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 04:15:01 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+RpHaWQBZYxB2qE5GPBp1s4e+3CDPKO9Eti+421VNYxW48OntbjJWpHFTcu6IyyKCZrdNlNNnP82HJI=@lists.infradead.org
X-Gm-Message-State: AOJu0YwftbPb5crNvdgmQgZRlCLeeVYJJNiIbYbvZGX9WHnOfE2CdSHl
	ktNQlJfYkcG6bnLUhGgdABwPNXK7+c+PPwxspY26uNSkkKtB/2K/cJNHh1MDGjDvGsHmjXviSvO
	S28MOUKgL1PEn3MnrZ+HaviJoaFLcZZKCkkTM/asSCw==
X-Received: by 2002:a05:6512:31c2:b0:5b1:53e9:439e with SMTP id
 2adb3069b0e04-5b30b770611mr2868770e87.36.1786360500188; Mon, 10 Aug 2026
 04:15:00 -0700 (PDT)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 10 Aug 2026 06:14:59 -0500
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 10 Aug 2026 06:14:58 -0500
From: Bartosz Golaszewski <brgl@kernel.org>
In-Reply-To: <20260804-b4-sgmiieth_serdes_regulator-v2-2-c4bc688177dd@oss.qualcomm.com>
MIME-Version: 1.0
References: <20260804-b4-sgmiieth_serdes_regulator-v2-0-c4bc688177dd@oss.qualcomm.com>
 <20260804-b4-sgmiieth_serdes_regulator-v2-2-c4bc688177dd@oss.qualcomm.com>
Date: Mon, 10 Aug 2026 06:14:58 -0500
X-Gmail-Original-Message-ID: <CAMRc=McoiO0tt86j0dJVZhgkJgka8QzhK_ZxCSC-KLurJd+WvQ@mail.gmail.com>
X-Gm-Features: AUfX_mwrK3Sw1jbkCjG4pdlxLzUHdwgQvzVqBa_KtddB8v6HyExvITEq4wDqjk4
Message-ID: <CAMRc=McoiO0tt86j0dJVZhgkJgka8QzhK_ZxCSC-KLurJd+WvQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/6] phy: qcom: sgmii-eth: vote for both voltage rails
 with correct current loads
To: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
Cc: Loic Poulain <loic.poulain@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bartosz Golaszewski <brgl@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Wasim Nazir <wasim.nazir@oss.qualcomm.com>, 
	Mohd Ayaan Anwar <quic_mohdayaa@quicinc.com>, Umang Chheda <umang.chheda@oss.qualcomm.com>, 
	Yijie Yang <quic_yijiyang@quicinc.com>
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

On Mon, 3 Aug 2026 21:27:58 +0200, Mohd Ayaan Anwar
<mohd.anwar@oss.qualcomm.com> said:
> The SerDes PHY has two voltage supply rails, vdda-0p9 and vdda-1p2,
> that must both be enabled for calibration to succeed. Without them:
>
>   qcom-dwmac-sgmii-phy 8909000.phy: QSERDES_COM_C_READY_STATUS timed-out
>   qcom-ethqos 23040000.ethernet eth0: __stmmac_open: Serdes powerup failed
>
> The driver relied solely on the PHY framework's implicit enable of
> 'phy-supply', which only voted for a single rail and set no current
> load. Use devm_regulator_bulk_get_const() to acquire both supplies and
> set the peak current loads (46 mA for vdda-0p9, 15 mA for vdda-1p2)
> as required by the hardware.
>
> Fixes: 601d06277007 ("phy: qcom: add the SGMII SerDes PHY driver")
> Signed-off-by: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
> ---

Thanks for doing this Mohd!

Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
