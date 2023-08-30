Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB1F4C6FA8F
	for <linux-phy@archiver.kernel.org>; Wed, 30 Aug 2023 20:12:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FKzeJojuBGVvc70VGCFQrpC8iNFzRPdAFEFSrx/Of94=; b=GSCYWqvLGxq5BA
	Nh/YCeXGjyHNp3NJABe3Dv8fmMKDsURTOKbn5HT2uIEXvz8zzIZr/s0DRG9HXw9bok4xbAhJvNq92
	2eIYPT+CRK4EugtsCBn+D6KMtGwBaCxA024zSwRE7nLdwxXmDoxNAwdVwOtU17niP09VHovN3IaJf
	p48bR1Kn073nVcTujzQ8RjfIboC6/6pJImsaJuTya2q6erd8TW09k70C0Y4ASgiHFfmIniV1gBcq2
	mtS/zy4HAMWDokMIf80XIt7NoTy30s1LgVVtWsiy32X3Tjl/Z0rKWK+/4pKhE6CEU/Ary4afA7Jrr
	WOy5VhYLGaquIC1AUqoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qbRXt-00E7Fq-1j;
	Wed, 30 Aug 2023 20:12:09 +0000
Received: from mail-yw1-x112c.google.com ([2607:f8b0:4864:20::112c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qbRXp-00E7EY-2z
	for linux-phy@lists.infradead.org;
	Wed, 30 Aug 2023 20:12:08 +0000
Received: by mail-yw1-x112c.google.com with SMTP id 00721157ae682-5922b96c5fcso2318267b3.0
        for <linux-phy@lists.infradead.org>; Wed, 30 Aug 2023 13:11:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693426317; x=1694031117; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=zgGcuZzmr94KnU1bouNuOO19+UEQyecBFbXFTDXATYI=;
        b=ov0u5UaHqXeT3RxH70J2Wq7kLFkQ2niMkj1/bevctAMk+3emIsMMWsHRfW5pZnLDNP
         Z2rPKt4z8icuddewp61VEl7J4sYtx+2yi6pFQltG6w+EXeWHyr0iYXqx0WjWKrj4yrBv
         UNVShY8myZQvRf8nrxrJgM2ObCGtq5jg3fubeWXiiaQfzzGlLC6hLMEdNb5TEm3fdG9u
         MrOQtcTP1lYQQbFrB35qZVs2AdMkZ4iWvByTHQg6ep4ba2pAbkmbdM7BA4FAuA2HQzAd
         NhUYjb7GRvuZC09LeowG8YQTIuZNzAi124hpYF64e3ysr+pe+OKVYUItSOdi/oeYLnDu
         YNAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693426317; x=1694031117;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zgGcuZzmr94KnU1bouNuOO19+UEQyecBFbXFTDXATYI=;
        b=VrurV7Mc/japDmWEVTOnwFKBwn672beRS6TKCHBhAfEA/ItqyLhatSG8ph+KyaoGG2
         HSBy4EWZF5iW1HjQaSpCihyNDgYDYlcj2ApPHZ+kBrWZ3a02wYlGPGEd/VmX3yuDXLbz
         TIGBmHREGmXJ64NdxS/5lYATPXZIk4TSQ3VyU4ggugNYwoNey4zs4AANSssUZnzJiOWO
         Y/1roMtrglxmEie8deqE7XCgs8CH7oeL8GyWQQVqaJSjWevp7FYBbmS5DxHt//pv4+cj
         vEoNaFVChE3IREK+Sq163EHFg55z2KEaQlGR4IS2AEqDNIoEumms+V1+EuybIdn9+ubD
         pEOg==
X-Gm-Message-State: AOJu0YxhGmYtmYoeI+rdleWMayt22mbAvsH0v86/aQ+nMtEBr4OZhwPq
	v8JmfFnLvtUZgTSmkzmhrCuUrX8QwYJvtUcq0bj7Bg==
X-Google-Smtp-Source: AGHT+IHQgtmM/qEVU0UPeKqjFQmhQ59kgaPGxMwjXFavmatbWZ/rYVEWaDpXKACaogW7azdD4O9hjOLZ+ECSgh1rHzs=
X-Received: by 2002:a25:8481:0:b0:d7b:986e:9999 with SMTP id
 v1-20020a258481000000b00d7b986e9999mr3320097ybk.42.1693426316786; Wed, 30 Aug
 2023 13:11:56 -0700 (PDT)
MIME-Version: 1.0
References: <20230825093531.7399-1-quic_nsekar@quicinc.com> <20230825093531.7399-6-quic_nsekar@quicinc.com>
In-Reply-To: <20230825093531.7399-6-quic_nsekar@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 30 Aug 2023 23:11:45 +0300
Message-ID: <CAA8EJppvNS_hy=L+zgk5HAB5iDEZE_j5LvEmQgAfcnwfy_7wNA@mail.gmail.com>
Subject: Re: [PATCH 5/5] arm64: dts: qcom: ipq5018: Enable USB
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
X-CRM114-CacheID: sfid-20230830_131205_961573_4E9CFB83 
X-CRM114-Status: GOOD (  12.14  )
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
> Enable USB2 in host mode.
>
> Co-developed-by: Amandeep Singh <quic_amansing@quicinc.com>
> Signed-off-by: Amandeep Singh <quic_amansing@quicinc.com>
> Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/ipq5018-rdp432-c2.dts | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/ipq5018-rdp432-c2.dts b/arch/arm64/boot/dts/qcom/ipq5018-rdp432-c2.dts
> index e636a1cb9b77..cdf5e22ec54e 100644
> --- a/arch/arm64/boot/dts/qcom/ipq5018-rdp432-c2.dts
> +++ b/arch/arm64/boot/dts/qcom/ipq5018-rdp432-c2.dts
> @@ -70,3 +70,15 @@
>  &xo_board_clk {
>         clock-frequency = <24000000>;
>  };
> +
> +&usbphy0 {
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

Let me sort these for you:

- usb
- usb2_0_dwc
- usbphy0

Like in a dictionary.

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
