Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC912C6FA8F
	for <linux-phy@archiver.kernel.org>; Tue, 29 Aug 2023 09:04:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KsFvqd7y3v4QkavhioE5qy1JihBipxmtz4pVB8J8oZQ=; b=LWDdseBsmF6djS
	qjg7Ne4wEyY1r+tqa6R2/paH5jCMaF0tX0pk+myYsVQJARBjSF9A8FcFEqKpis6WvWaUD+uvzAcrL
	6dm3o/weFFVUOYBPjhCwgTKG+l1llqfLKuB831eVWiyl95G+VXcrSkfzWJad6GtYCZcCpbzUxZDJt
	8eJPpe5b3Db8ru21XwVhmA/pVzQNzdIKyLfnfW6yknDuwVj7cjHiCn4i9fmQpU9BFn3yveoPnImTL
	pO1ypQ8wJUyD3+5i8rKXsm4q2Qe7XhF3qEPrWvDqSn5SbSeMqUduxGthqRkzu3t6CF6JqYve8IE63
	E8v/gJKaIdR1PPT89+xQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qaudk-00B5c4-1d;
	Tue, 29 Aug 2023 09:04:00 +0000
Received: from mail-yb1-xb30.google.com ([2607:f8b0:4864:20::b30])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qaudh-00B5b4-12
	for linux-phy@lists.infradead.org;
	Tue, 29 Aug 2023 09:03:58 +0000
Received: by mail-yb1-xb30.google.com with SMTP id 3f1490d57ef6-d77b9d574f8so3658771276.2
        for <linux-phy@lists.infradead.org>; Tue, 29 Aug 2023 02:03:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693299835; x=1693904635;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=p+ZNmjEjxE86+zHr2aM4Qt4cruP7Et/svaJRz0AMbWg=;
        b=rcQ9ECx38rhQokFt2AH2ewTka+Yb5TqXgpJOlw80lj8PtYDQqTjxUd0IgzfQ5t9YCG
         4oHVwhT6OMWblp/VB/vw1YBFxJCoa1yaCPh/FP9NQYwKJYdvCr24qaEmxoY3FZ/bNM+W
         ebHVFGS8qtHc4PAqUbbh8HctLN8z/VSe2vGjM1jL8VGrY6zipcbYXNvK+X2JRrzMI4fv
         JswfN4W3+Df1MsdBaA3EvQfwk11KipKHZkyjKGBYgerarQeE7ybFuakUAoeyrAA4KV62
         qHYbzb6G/M2qxgb8oNe4GqC+gOMNGcscPFF3rwrzalNyOS8DrGbHMEqVP5JwsHJFozn9
         QptQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693299835; x=1693904635;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=p+ZNmjEjxE86+zHr2aM4Qt4cruP7Et/svaJRz0AMbWg=;
        b=XjN/oIMV0YmwohyCg2KDxpNs6m/E+tRKCznXMzGY3QmUJfE57v+AgqNoUu9P+QaOgT
         Xp/XYn8BZuJf46U/o49tSOrb5RXGMzfXfSD+guuSI5JmUR0t1LSsQduklVCptUMCeB7z
         MH8mrx0XiMm5dAkBkx++c2ukrjfw+0rCVsIcSZzt2sl4B1VWLsqOrwpubFCDTEA6a0zj
         SrPBBGJ0SVLqDsnlbBNRfa6P8/ukOTEMulu8Zfbk7FViurc+U/DSOAKYrcn6BkRzkiag
         q0e0pec1PwIqjHwO8/owjOeghk2oPwzImSOUbHhS4BysCAbH1uRYZeb62TYsenAabZJ8
         8PzA==
X-Gm-Message-State: AOJu0YxeYXpVV6l7htAPyIaLNkb3GB4xFS+U0SwcdJzQejFSsvVJrVS1
	qkyai7TH+++oGiGh4oAFGPDF0QBKtBF8piRffDuB1Q==
X-Google-Smtp-Source: AGHT+IG2k6R8W1TqJClx4orl7tBoltRF/SpTbrp3tkWx6Trp8sCccdlZTHq8JN7w+YKrFr3F0zZRlq7sABwHwo6BNTM=
X-Received: by 2002:a25:ac0a:0:b0:d7b:7249:6dc2 with SMTP id
 w10-20020a25ac0a000000b00d7b72496dc2mr638855ybi.30.1693299835215; Tue, 29 Aug
 2023 02:03:55 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1693296360.git.quic_varada@quicinc.com> <764b497e865a1e23676c9c3913e3a26dbcb0fc22.1693296360.git.quic_varada@quicinc.com>
In-Reply-To: <764b497e865a1e23676c9c3913e3a26dbcb0fc22.1693296360.git.quic_varada@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 29 Aug 2023 12:03:44 +0300
Message-ID: <CAA8EJpopJJdkxiy1pN3oZqZ4sqTAzyHLyB-1yUTi4TFja6kA-g@mail.gmail.com>
Subject: Re: [PATCH v10 3/4] arm64: dts: qcom: ipq5332: Enable USB
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	catalin.marinas@arm.com, will@kernel.org, vkoul@kernel.org, kishon@kernel.org, 
	arnd@arndb.de, geert+renesas@glider.be, nfraprado@collabora.com, 
	rafal@milecki.pl, peng.fan@nxp.com, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_020357_359913_EFA0D3B3 
X-CRM114-Status: GOOD (  14.44  )
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

On Tue, 29 Aug 2023 at 11:39, Varadarajan Narayanan
<quic_varada@quicinc.com> wrote:
>
> Enable USB2 in host mode.
>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
> v10:
>         regulator_s0500 -> regulator-s0500
>         "make W=1 ARCH=arm64 -j 16 CHECK_DTBS=y DT_SCHEMA_FILES=qcom,ipq5332-usb-hsphy.yaml dtbs_check" passed
> v9:
>         regulator_fixed_5p0: s0500 -> regulator_fixed_5p0: regulator_s0500
>         "make ARCH=arm64 -j 16 CHECK_DTBS=y DT_SCHEMA_FILES=qcom,ipq5332-usb-hsphy.yaml dtbs_check" passed
> v6:
>         Add vdd-supply and corresponding regulator
> v1:
>         Enable usb-phy node
> ---
>  arch/arm64/boot/dts/qcom/ipq5332-rdp468.dts | 23 +++++++++++++++++++++++
>  1 file changed, 23 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/ipq5332-rdp468.dts b/arch/arm64/boot/dts/qcom/ipq5332-rdp468.dts
> index f96b0c8..1fe2e39 100644
> --- a/arch/arm64/boot/dts/qcom/ipq5332-rdp468.dts
> +++ b/arch/arm64/boot/dts/qcom/ipq5332-rdp468.dts
> @@ -12,6 +12,15 @@
>  / {
>         model = "Qualcomm Technologies, Inc. IPQ5332 MI01.6";
>         compatible = "qcom,ipq5332-ap-mi01.6", "qcom,ipq5332";
> +
> +       regulator_fixed_5p0: regulator-s0500 {
> +               compatible = "regulator-fixed";
> +               regulator-min-microvolt = <500000>;
> +               regulator-max-microvolt = <500000>;
> +               regulator-boot-on;
> +               regulator-always-on;
> +               regulator-name = "fixed_5p0";
> +       };
>  };
>
>  &blsp1_spi0 {
> @@ -79,3 +88,17 @@
>                 bias-pull-up;
>         };
>  };
> +
> +&usbphy0 {
> +       vdd-supply = <&regulator_fixed_5p0>;
> +
> +       status = "okay";
> +};
> +
> +&usb {
> +       status = "okay";
> +};
> +
> +&usb2_0_dwc {
> +       dr_mode = "host";
> +};

This is not sorted properly. If we follow alphanumeric sorting order,
it should be:

- usb
- usb2_0_dwc
- usbphy0

> --
> 2.7.4
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
