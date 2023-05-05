Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A125AC77B7F
	for <linux-phy@archiver.kernel.org>; Fri,  5 May 2023 09:30:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9bKIXRD74t8uRSjH6mizD7OghiRadjzdxIarVfKCDOk=; b=TGyaW38UuNJO3q
	w3OIRnr1I/uV8wl53OYM4ssQzNS5eTb/yJcLdUvuH//Ap2IyHV78pzcumom+V7yHmh0yJajXdvkhv
	ifyhvvDVOVt8TLJnjgqXrpyqqPui5fooaav3ai/A9hS4bTMcsRBhIzmuIhqsqEWftWZXSeNZahz3v
	96BvxFIXSddCt3Ctwxeyg8THBuM8ZGJCcRc1vDvps/dLf9MSlpfhacxt+thX3qrbI2REEp0LLxg21
	9sHd3myUdfdHc7JIznYLkKOMuVIFBg4xjPDA9DykS0Qr4b5ybdIh8CNvw+V6oVpofv/MPnkw6NfW0
	oqSac3Gbh6yJlurtsGDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1purlU-00A9fg-0x;
	Fri, 05 May 2023 09:30:12 +0000
Received: from mail-yw1-x1132.google.com ([2607:f8b0:4864:20::1132])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1purlQ-00A9dR-2h
	for linux-phy@lists.infradead.org;
	Fri, 05 May 2023 09:30:10 +0000
Received: by mail-yw1-x1132.google.com with SMTP id 00721157ae682-55cc8aadc97so21611837b3.3
        for <linux-phy@lists.infradead.org>; Fri, 05 May 2023 02:30:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683279005; x=1685871005;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=zKLLprNwaaeZYAnNNb830KY0y4SK3/A2CshWnDDE80w=;
        b=IyeI2DkciUzyMxxJkZOgS4Wf48xUGAPNC5wvtQocGOSDSNVbotah9q12SzdcdTzC9V
         B4FURdd4Wz5zfZtAfHXXvHmbVGHNlUf4cuPoQTNG1ifz5zAZzz5JeXrm7227Ir6MR/Lt
         OFB//+zi1Qea68MpwIASOqpabWg8dBuZqtwUT+QdMQUq1pndBRZVuI60F8nDqIl+zutJ
         3aJLqWzeYW6045FPK0R4ItYPlTd6iUBzwrSq5nrYZvKP6tVVBhDCmWEc0MYs6L3sxIwJ
         yhTk5qFg0jHBqLToGH4P9nlWjqpqpkBiZoeOe9hnRkvCcTLS+c3Bx83fiO0Wlfjq4gAp
         gOHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683279005; x=1685871005;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zKLLprNwaaeZYAnNNb830KY0y4SK3/A2CshWnDDE80w=;
        b=hVc2hnXdfooDzEhjFTgKvCI0cjpD8KdfZqC2ndXGytFiAE0QJfNC0QnJqSPQwreTAx
         Ayt2LzBEjr0O4pHD1vels0Hu8Vb1V0nYIvA8WKhNiHELx6uaAOpz4WDlRHgIXGCZfYWb
         wh5XldML/SCiecDwPkgwG46sOB8+KSNXyxp7q9puSOpJpEmN5gyThBG967qU34R7fhAZ
         JwiHcEotkmlD8Bf9KWixui3/46U9Wea7hojoDXcgDD7ohfCCtpw7eVCeMU0yBwTGDCPP
         H1LxBPDrLKywJnXGIRP4gLHHtHEINdI38ou2tNZaCYcdkkF8vYDK/2HCGCmS3fLlRG/H
         bW6A==
X-Gm-Message-State: AC+VfDzHeOiwI+5orGkM7beo8nk3KhnJThlEabBkHHYk8oSb8ODqQkAY
	XWVyFLZhA3eOu43jnLciQ7sIkGwUknZUMtOqFiuSPw==
X-Google-Smtp-Source: ACHHUZ57uxYbtQ4r7HHvF2CMapziRFJbg7koTCsVXaNSfDQ941AHyjqZmqhvyR2XIphz/G6gzsJpm/RJwQ9QpSVa1P4=
X-Received: by 2002:a81:4e8a:0:b0:55a:886c:bfc3 with SMTP id
 c132-20020a814e8a000000b0055a886cbfc3mr999607ywb.7.1683279005467; Fri, 05 May
 2023 02:30:05 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1683183860.git.quic_varada@quicinc.com> <8894bf2c44eaf4959c7a1966b66229e6cf5cda96.1683183860.git.quic_varada@quicinc.com>
In-Reply-To: <8894bf2c44eaf4959c7a1966b66229e6cf5cda96.1683183860.git.quic_varada@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 5 May 2023 12:29:54 +0300
Message-ID: <CAA8EJppvj2nzqwdsC+Xct4cJg2-_yPpiGDELjHJG4HyAH3zGMA@mail.gmail.com>
Subject: Re: [PATCH v10 8/9] arm64: dts: qcom: ipq9574: Add LDO regulator node
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org, 
	vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, gregkh@linuxfoundation.org, 
	mturquette@baylibre.com, sboyd@kernel.org, quic_wcheng@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org, linux-clk@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230505_023008_872628_A6106493 
X-CRM114-Status: GOOD (  15.40  )
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

On Fri, 5 May 2023 at 11:23, Varadarajan Narayanan
<quic_varada@quicinc.com> wrote:
>
> Add LDO regulator node

As this LDO is provided by the PMIC, it would be nice to know why it
is modelled as an always-on regulator instead of the proper PMIC
regulator. Up to now we were doing this only for the outstanding power
rails like CX/MX or EBI.

>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
>  Changes in v10:
>         - Add LDO regulator node
> ---
>  arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts | 7 +++++++
>  1 file changed, 7 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts b/arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts
> index bdc1434..1f5d14f 100644
> --- a/arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts
> +++ b/arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts
> @@ -60,6 +60,13 @@
>                         regulator-min-microvolt = <725000>;
>                         regulator-max-microvolt = <1075000>;
>                 };
> +
> +               mp5496_l2: l2 {
> +                       regulator-min-microvolt = <1800000>;
> +                       regulator-max-microvolt = <1800000>;
> +                       regulator-boot-on;
> +                       regulator-always-on;
> +               };
>         };
>  };
>
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
