Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1462CAC5AE
	for <linux-phy@archiver.kernel.org>; Thu, 25 Sep 2025 01:46:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9Vkyr4b/D/d1fGogV2kYomWAjhXjauZc3Ocm51kWE2Q=; b=pD2U0R9BPQNFNR
	r3SbORQY8i+7PoGqhwW3iOzk2e98CDlZ5jKjLoWEy/uHfWmNhYx1eO3fUrl1Ek2cqNHRgjW5l4NJs
	OpsLH8NF88N7KwkiYI3UOwcCStKTszgpvIS7h3hJvR+VyaZkzvEZI9ld8HJ5PT9FlnekxFzihc2FO
	aGAbOhdFLgJd+CavDR6eY9XrEJN0qG5n7Nd+uGZbYo45Suw44YFI7eFMzd2ENRxfYC0FQoGd0WCla
	Rd3oKhhaI7N03ukHW1ZL1VMEOpBGw/lfLwRJkcFY+4LU/P5P5j+B5Z1DrPhkpco+VyoHYypHiyNTl
	VpR4PtajJO3ZDnaKleHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1b4J-00000005Dk9-2sOf;
	Thu, 25 Sep 2025 01:46:47 +0000
Received: from mail-pl1-x636.google.com ([2607:f8b0:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1b4G-00000005DjD-3wLH
	for linux-phy@lists.infradead.org;
	Thu, 25 Sep 2025 01:46:46 +0000
Received: by mail-pl1-x636.google.com with SMTP id d9443c01a7336-279e2554c8fso4388305ad.2
        for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 18:46:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758764804; x=1759369604; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=85fJuIkIL0zFa5NAmKr1mvE2dYhK1JVFush8sn/+tyk=;
        b=I7F31370/XPiaZE3UEwNrPWLxAvV78TOYNLn23E6QLriWeWjSrGYv9mEloPNz8i9Hd
         AiZSaM3+3RFqB4algxzqdhdGeaI4x7TnpVVtYjjjADo5jP6V8z4WhpVQGCS3Mfr0O3bp
         RkY2NJvPZ0ao8TBYZT0gy+vFISNVVRrjTsEjYm5ZEbwK2c21QbrNh6wcXN6AvurgYmOQ
         7I4hqYV8fiOg6cI/rSZnCptP8lMVL3QS0h+S3IryctfgpF1i+/f4zEJiFGdhMDusG8bu
         muudw/kMKB+occ8ngL+ZlpQQGMpeRzK6ynqyXlreUNg94/0R/KmVtOCaHEtaTz5dSz46
         y8aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758764804; x=1759369604;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=85fJuIkIL0zFa5NAmKr1mvE2dYhK1JVFush8sn/+tyk=;
        b=m0dkmwfte+G0Ny2mtOwdPBL2yJyDvH4EiDBpCAa857W8/cRxihydTKAPsyZklk6y3i
         2vHhDxqmEVXFAc2w1zj56tgzKxPHCPrJ+6OGVR2eymrtVdaHmkDH68HXSq1aCXLql2uz
         OY+u/n7ZFEEG4AaQwlCqbAwhyr5+wdtpv1LNxzhnpRwmryAXDsXIrSI/fynSkPy8IEA5
         7wgKhY9ml+EonV8wJMF99pIUpQFJaRJD3uuY0RmxBugpNH9g5lbkZVltdxxRC5gcTtjw
         2AjEb9AqS0668SCs+LPW3EiJd9ALo+2Fi1LPuRWqLd0DlJpOKKp4h4D6NKyu+Q9nVB8h
         qzYw==
X-Forwarded-Encrypted: i=1; AJvYcCVzR6FYZyAnIusFWz9zmaqeJRCGa8NLZN5gbCjoNjqhNZr0ltk+mjEBg0oaFhj8wnqtkHjEBPYKXBA=@lists.infradead.org
X-Gm-Message-State: AOJu0YzHWIhstusSIBtE9ZVeHRdnXx+EK2h3J0Ryi/o5GKZA2JTk4imh
	p+iJBY4L7GzYGnQdxRYh9VWXP0gk2xLgeP1bcH+EGpam4jE6aB0yux1BFmvQ+ak+3ulp/wNfQIG
	MHmnHWWN75Az4tFgiuj6IvpqDydrZUvc=
X-Gm-Gg: ASbGnctp1rmjWz1q1JP91zfl1z1H5WoB5MGL6M105zzag+IcDgmZCGueu+8wieqDKlM
	n65GZcJ5636v1UAN6kyKkqZ7GZB5nEoj3QoJlxNEuXKPYynpORPV6ollsEF2LSaVW/nOX9Dx3gU
	YEtFgUlPEZWBN5lxrop5cgH0roORG5ipIJIGG3hgtnkW+x7b+QuKu0GPgwdoFThyRsLLepK2VwT
	NPuQfMOmhV3KiSFRR6wicHk0pEe8g3jKBWI
X-Google-Smtp-Source: AGHT+IH4AchlDsowYYE+w4wzPJn03yQRQb4BMfQMSzOsS136u1OryTmFlDQB0qJjJ3owJ2eL4O9lMggxOrUiKuT9Azo=
X-Received: by 2002:a17:903:264b:b0:269:8059:83ab with SMTP id
 d9443c01a7336-27ed4ab545emr10812965ad.51.1758764803975; Wed, 24 Sep 2025
 18:46:43 -0700 (PDT)
MIME-Version: 1.0
References: <20250924-knp-usb-v1-0-48bf9fbcc546@oss.qualcomm.com> <20250924-knp-usb-v1-2-48bf9fbcc546@oss.qualcomm.com>
In-Reply-To: <20250924-knp-usb-v1-2-48bf9fbcc546@oss.qualcomm.com>
From: =?UTF-8?Q?Krzysztof_Koz=C5=82owski?= <k.kozlowski.k@gmail.com>
Date: Thu, 25 Sep 2025 10:46:32 +0900
X-Gm-Features: AS18NWB9OdekwkAK17ia2naP3ZlyoDmiLGmgYBkC9bH8Iatmiq7IbsVkxyDb_Qc
Message-ID: <CAJKOXPfVhixCk0_Xh=9XokjHObM=P+SP=itaXHv7xTr69pc3_Q@mail.gmail.com>
Subject: Re: [PATCH 2/4] dt-bindings: phy: qcom,m31-eusb2-phy: Document M31
 eUSB2 PHY for Kaanapali
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org, aiqun.yu@oss.qualcomm.com, 
	tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com, 
	yijie.yang@oss.qualcomm.com, 
	Ronak Vijay Raheja <ronak.raheja@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250924_184644_980143_3134CE11 
X-CRM114-Status: GOOD (  12.28  )
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

On Thu, 25 Sept 2025 at 08:35, Jingyi Wang <jingyi.wang@oss.qualcomm.com> wrote:

>  Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
>
> diff --git a/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
> index c84c62d0e8cb..ab1cdedac05c 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
> @@ -15,7 +15,11 @@ description:
>
>  properties:
>    compatible:
> -    items:
> +    oneOf:
> +      - items:
> +          - enum:
> +              - qcom,kaanapali-m31-eusb2-phy
> +          - const: qcom,sm8750-m31-eusb2-phy

This time maybe without HTML:

There's no such code AFAIK, because original work was never resent and
never merged

You create some convoluted big dependency chain and I suggest first to
finish upstreaming previous project, because otherwise it's difficult
to review and impossible to apply.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
