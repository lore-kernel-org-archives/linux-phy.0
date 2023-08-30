Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A5ACC6FA8F
	for <linux-phy@archiver.kernel.org>; Wed, 30 Aug 2023 20:15:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YuzUknlDBRAzD5Iv62HTj4FtjI46DwKb9YyJUE7kQ7U=; b=bGWfiKB+tXUwIO
	0Guoa4I9ZwF6CHXSFsPchicxXfliBGodtNWgRVjdwoW/QHh+2EjjcDyKDQD5Asx3OXP+pUhW/URs1
	4PyChQGBN0FE9XZHUxofUbh3zUP1UyAcEggU6FJREVs5XdguJzwjOW+ET7PA/7YdLVYyhIZFCZw7c
	XouLIO1vvp4hkO46Ky6uAmNMMVRNHWoGlNAPatNUGnQv0J4BH+2L82fgLJV+vHFXbpGGj36hd1LYS
	CSYwH+usVwomqjOBd8YrC0SqOhIREkm4flOdZj8bqhZS1wW+eWFx7n9Lxnv/xjyLkHJGcLv3RDlv8
	UD554PTZUfqgIYo9hRsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qbRb1-00E7Y9-00;
	Wed, 30 Aug 2023 20:15:23 +0000
Received: from mail-yb1-xb2a.google.com ([2607:f8b0:4864:20::b2a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qbRax-00E7XY-36
	for linux-phy@lists.infradead.org;
	Wed, 30 Aug 2023 20:15:21 +0000
Received: by mail-yb1-xb2a.google.com with SMTP id 3f1490d57ef6-d7bbaa8efa7so908896276.3
        for <linux-phy@lists.infradead.org>; Wed, 30 Aug 2023 13:15:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693426517; x=1694031317; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=O8kGGZ+yYzic7Nawq3DNrmlWB29Qsh1OZYatVeF7GGM=;
        b=Oea5Z+3ZkaoQwnSqkd2NdKKDE4fNNGvJK+YNrRMJf/31xJ519HljGPmbvjgXSK38kP
         hO5hQRIBKQxHhqpzHuTZhUVUYoR4oQChYZki8ccduy9/Sp87p5uetfEaqWLd4H7sWHpi
         qpuc4d83xTyPN9A+7RREJ2N3rE/zbcCWgqhzl1Ydp2yMDQ6FaPRhAWq9TLremLhOOgPr
         knZZVHG1RKmaUG61IYh0yH8nMiXVN1NFoQPckllThQaTz5SYJhIlrGRtWPhvrpZHkFMH
         imjqMgmi7fwj2F0aiTVD/hJym8mor9rMAx7+ouWou9pUFok+J0wt3a8wnpVz5WFriuSP
         nJmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693426517; x=1694031317;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=O8kGGZ+yYzic7Nawq3DNrmlWB29Qsh1OZYatVeF7GGM=;
        b=DSzJYMXOafwRre8i6nr1a8EIy1DhNm4DcmcVKcaSe1dH3z9kyqwqbfTY4CTyxLJesv
         ADTt7JW0/L437kGmrBJptk5mzac5yz3JlifFZfDY1GW2O8bN7vrFLWj1BJ9HqIi8hhu6
         XVffbWB6xJ7beEgsP3JJhniHKpMyd+l85UwFydn4u7owJLXMAYCM7/1asQtcm1X+iVgx
         6xahoGMd/kj+xJneeTKrEXoc0w2M+EfsnkjUiDo9w2jrAqMQUUH4M8py4ieWUex+3RMB
         Pg0LNcsAkeNViTdpAvquYF/DJDwuisMlMChgsmqBRc5dZA4xTO9zhlZ+fqCV9JfhHQVD
         ejSQ==
X-Gm-Message-State: AOJu0Yy0l/+8FxKH+MEEtd3bxuJhgE9PeteeO1nqqq3OW5sHbDVpLcAO
	qR/6X4ba5SW0pmKKHiLT3ohMB44hKFHshkNZ+ZWMTQ==
X-Google-Smtp-Source: AGHT+IHUnyWfOFAYID1o0vf2VVLGaIROgv5s/xgle655lK1ZczFXhZacdesCf6ewIfvbJsm//wQo+EaiCbHfEE/5a8w=
X-Received: by 2002:a25:6b07:0:b0:d78:3047:62c6 with SMTP id
 g7-20020a256b07000000b00d78304762c6mr3414264ybc.21.1693426517530; Wed, 30 Aug
 2023 13:15:17 -0700 (PDT)
MIME-Version: 1.0
References: <20230825093531.7399-1-quic_nsekar@quicinc.com> <20230825093531.7399-5-quic_nsekar@quicinc.com>
In-Reply-To: <20230825093531.7399-5-quic_nsekar@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 30 Aug 2023 23:15:06 +0300
Message-ID: <CAA8EJprLwi3QKgTksTeSWkjmhFL69PO8Zmc=j3VMfAr_UpXJ=g@mail.gmail.com>
Subject: Re: [PATCH 4/5] arm64: dts: qcom: ipq5018: Add USB related nodes
To: Nitheesh Sekar <quic_nsekar@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org, 
	vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	gregkh@linuxfoundation.org, quic_srichara@quicinc.com, 
	quic_varada@quicinc.com, quic_wcheng@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org, Amandeep Singh <quic_amansing@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230830_131520_003120_9ABFE703 
X-CRM114-Status: GOOD (  16.00  )
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

On Fri, 25 Aug 2023 at 12:37, Nitheesh Sekar <quic_nsekar@quicinc.com> wrote:
>
> Add USB phy and controller nodes.
>
> Co-developed-by: Amandeep Singh <quic_amansing@quicinc.com>
> Signed-off-by: Amandeep Singh <quic_amansing@quicinc.com>
> Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/ipq5018.dtsi | 54 +++++++++++++++++++++++++++
>  1 file changed, 54 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/ipq5018.dtsi b/arch/arm64/boot/dts/qcom/ipq5018.dtsi
> index 9f13d2dcdfd5..ff477923a823 100644
> --- a/arch/arm64/boot/dts/qcom/ipq5018.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq5018.dtsi
> @@ -238,6 +238,60 @@
>                                 status = "disabled";
>                         };
>                 };
> +
> +               usbphy0: phy@5b000 {
> +                       compatible = "qcom,ipq5018-usb-hsphy";
> +                       reg = <0x0005b000 0x120>;
> +
> +                       clocks = <&gcc GCC_USB0_PHY_CFG_AHB_CLK>;
> +
> +                       resets = <&gcc GCC_QUSB2_0_PHY_BCR>;
> +
> +                       #phy-cells = <0>;
> +
> +                       status = "disabled";
> +               };
> +
> +               usb: usb2@8a00000 {
> +                       compatible = "qcom,ipq5018-dwc3", "qcom,dwc3";
> +                       reg = <0x08af8800 0x400>;
> +
> +                       interrupts = <GIC_SPI 62 IRQ_TYPE_LEVEL_HIGH>;
> +                       interrupt-names = "hs_phy_irq";
> +
> +                       clocks = <&gcc GCC_USB0_MASTER_CLK>,
> +                                <&gcc GCC_SYS_NOC_USB0_AXI_CLK>,
> +                                <&gcc GCC_USB0_SLEEP_CLK>,
> +                                <&gcc GCC_USB0_MOCK_UTMI_CLK>;
> +                       clock-names = "core",
> +                                     "iface",
> +                                     "sleep",
> +                                     "mock_utmi";
> +
> +                       resets = <&gcc GCC_USB0_BCR>;
> +
> +                       qcom,select-utmi-as-pipe-clk;
> +                       #address-cells = <1>;
> +                       #size-cells = <1>;
> +                       ranges;
> +
> +                       status = "disabled";
> +
> +                       usb2_0_dwc: usb@8a00000 {

Could you please remove the `2_0' part of the label?

> +                               compatible = "snps,dwc3";
> +                               reg = <0x08a00000 0xe000>;
> +                               clocks = <&gcc GCC_USB0_MOCK_UTMI_CLK>;
> +                               clock-names = "ref";
> +                               interrupts = <GIC_SPI 140 IRQ_TYPE_LEVEL_HIGH>;
> +                               phy-names = "usb2-phy";
> +                               phys = <&usbphy0>;
> +                               tx-fifo-resize;
> +                               snps,is-utmi-l1-suspend;
> +                               snps,hird-threshold = /bits/ 8 <0x0>;
> +                               snps,dis_u2_susphy_quirk;
> +                               snps,dis_u3_susphy_quirk;
> +                       };
> +               };
>         };
>
>         timer {
> --
> The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
> a Linux Foundation Collaborative Project
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
