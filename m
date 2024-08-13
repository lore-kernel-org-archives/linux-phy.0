Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E8B2C52D7B
	for <linux-phy@archiver.kernel.org>; Tue, 13 Aug 2024 17:15:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XIcavGNAxpVHDj1dQucaRlDNWpz/fnyqu84s6s70ZFo=; b=s6lKKqsj9tCrZb
	BBQANqhZDdzLt3sAU7BcOk6oMjM1NnZCI1fCq20f/P4wIWwEHNbSogP5fzJIophKTj+io+X0vmXTT
	we5RKCMCWGr7xierFHJxC15CbQfEZrY+eim4EKQgtnK+403xg5TAHh+A/uLd2zmJ2mspq5JDcPvp9
	ny2APLpiMj50e26Usj6dy0wspisHksJObknbgoc+Gnsr3I1lH2JUTB2mkkc/P7od1uAzVXZ+3I1OO
	BfU8xyLoREYqFFCAqg/gmhNGXWWfZmPiaQ0yQZOwFZ7MY6BiOkTpneqwheSmRcjGGXpmNa4gdMMdK
	OB0MyDJYINXapgKJCF7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdv73-00000004U0P-19SZ;
	Tue, 13 Aug 2024 17:15:13 +0000
Received: from mail-io1-xd30.google.com ([2607:f8b0:4864:20::d30])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdv68-00000004TtW-2i2f
	for linux-phy@lists.infradead.org;
	Tue, 13 Aug 2024 17:14:18 +0000
Received: by mail-io1-xd30.google.com with SMTP id ca18e2360f4ac-824c85e414bso59063339f.2
        for <linux-phy@lists.infradead.org>; Tue, 13 Aug 2024 10:14:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723569255; x=1724174055; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=XnQW8pYG6LCHnllh5P1GTODS6+I9/wuKSdiLV/Ktwcw=;
        b=igOMcq2d66UlgKWGlj0v/s+/CIS+nYpw/rLoQiZDiRGg7B46m0g0FbY8BK4/V6TNEH
         8nENacume7JDSUUo9wd43Xf3smlupfEmXtpS5FiGUbOWwBe8W3FfO+pSKTr5HXzGJ2HR
         IJQ32bit7WUCLw0Ircc4DDT7DswSwxHU2TGZkMWgjuTzShBPkefvIAbf84RZevWJpth1
         0go25XIdKqziJAvHK5IQQLe54JjsSrwSiQR0XTTIJSAfuGtFmYPnN1bQ+VlA/Q78pRj1
         XyYOgLt1f//yZNFibZlprtSf81xHxdqs7AcO832iAy7BMFl9ayvvhXW45QwNQwD05cAH
         PDAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723569255; x=1724174055;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XnQW8pYG6LCHnllh5P1GTODS6+I9/wuKSdiLV/Ktwcw=;
        b=jnDUsXxaXLxXKrAJFMGnp7V11i9EQZ7vaeraKMWu4jliAQ1gk6QGdiC26gQnew9jYc
         pGJeu9YL/4AKbqLAReiSNOXar0DxgdO+bbtdL8+40Z33knJwAj4UxGOUxWERjErBZnkJ
         A16r+w2ubWfTv6AaeNHR3Ea4IdR1Jr33GNc52tGEMmvz7P0fXvVSllCppg8gtaGoFEjA
         6a4R+Am/H8mQYvHs47QzbilT++tHJp3CLcxQ5HVZwdMsPFQRLA9SHaaLYlG3UXLZmSU/
         P5LDdjLwYc4XMzQ11SMEjdwYt/uV9W5NYcAyTEusW4NYyGe2oP8SqQjRAFp40guVj14z
         X3/Q==
X-Forwarded-Encrypted: i=1; AJvYcCVWFyUGvC6T8gHnZrRlXpllAvLWupLs7YD5tAMlw+ug3TFX4/iLBAVsdCKmbScPcmKKIGosHAlqRMShIxY4jgDgWL49kZ03uzWOQeLXDg==
X-Gm-Message-State: AOJu0YzN/8vss1Mz9kL7Lzp9XmfZq8Lb5VFASQHCyHL6j1nNWNYoCMPY
	J81WjG0mv7jdErkw3nK2EDmXZ5FD0yLz+Mm2NJ89o3jslF1ClYv9AZD+qyBzjq8aKKNJ3Y0kim2
	UKXStmv6z6zOPZT/rhFDEgoy9V2A=
X-Google-Smtp-Source: AGHT+IE1SEdB2S6FPvLqmHpU+NfPOzND/hei07NGJ6SnXJB1C3ScxKKZcSU1n+qObrhFw1qzFXpNI0UnKg5i8mH7VNU=
X-Received: by 2002:a05:6e02:184b:b0:383:6af0:eb0d with SMTP id
 e9e14a558f8ab-39d124c3641mr4830845ab.26.1723569254595; Tue, 13 Aug 2024
 10:14:14 -0700 (PDT)
MIME-Version: 1.0
References: <56a52c81-68de-438d-94ae-9decc799d824@kernel.org> <20240808191735.1483572-1-ilordash02@gmail.com>
In-Reply-To: <20240808191735.1483572-1-ilordash02@gmail.com>
From: Ilya Orazov <ilordash02@gmail.com>
Date: Tue, 13 Aug 2024 20:14:03 +0300
Message-ID: <CAGCz5Hk=mSjQ1eFWstQQu=JZUkavJ_mRhnp8DRELUXP_syq4Zw@mail.gmail.com>
Subject: Re: [PATCH v3 1/1] dt-bindings: phy: ti,tcan104x-can: Document
 Microchip ATA6561
To: Marc Kleine-Budde <mkl@pengutronix.de>, Vincent Mailhol <mailhol.vincent@wanadoo.fr>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Aswath Govindraju <a-govindraju@ti.com>
Cc: Conor Dooley <conor+dt@kernel.org>, linux-can@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240813_101416_712080_4594F92F 
X-CRM114-Status: GOOD (  14.70  )
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

On Thu, 8 Aug 2024 at 22:18, Ilya Orazov <ilordash02@gmail.com> wrote:
>
> Microchip ATA6561 is High-Speed CAN Transceiver with Standby Mode.
> It is pin-compatible with TI TCAN1042 and has a compatible programming
> model, therefore use ti,tcan1042 as fallback compatible.
>
> Signed-off-by: Ilya Orazov <ilordash02@gmail.com>
> ---
>  .../devicetree/bindings/phy/ti,tcan104x-can.yaml    | 13 +++++++++----
>  1 file changed, 9 insertions(+), 4 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml b/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
> index 79dad3e89aa6..4a8c3829d85d 100644
> --- a/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
> +++ b/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
> @@ -14,10 +14,15 @@ properties:
>      pattern: "^can-phy"
>
>    compatible:
> -    enum:
> -      - nxp,tjr1443
> -      - ti,tcan1042
> -      - ti,tcan1043
> +    oneOf:
> +      - items:
> +          - enum:
> +              - microchip,ata6561
> +          - const: ti,tcan1042
> +      - enum:
> +          - ti,tcan1042
> +          - ti,tcan1043
> +          - nxp,tjr1443
>
>    '#phy-cells':
>      const: 0
>
> base-commit: 6a0e38264012809afa24113ee2162dc07f4ed22b
> --
> 2.34.1
>

Could you please review my patch?

I hope the new patch version hasn't been lost in your inbox. Thanks to
Conor, I understand now that sending new versions as a reply wasn't
the best approach. I appreciate your time and feedback.

-- 
Best regards,
Ilya Orazov

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
