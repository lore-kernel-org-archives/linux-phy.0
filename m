Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB153C7EE24
	for <linux-phy@archiver.kernel.org>; Tue,  6 Jun 2023 02:48:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Efow/fvxDcUHl+q8QAE5ZhEY7lrKdRg5pllz5OPZucM=; b=L6dLlOs0V7AX+0
	77TNBpRgC/LBkRWyH3aSNjzKFZj6lYNAIAs+jiwah3NjtBAqgEnlsGYXFyAVd/m2mH9/Ot0tRKE5i
	7BEOT+qOsL/cGT/IIqZQbxV0GUx36MLaA+U5wu2e26I+7RYnDWoFpUWOEgDShxRfRyPLHjPMogIl3
	mZ7Gzylw28NuQGwPolGixYOwLMS9nKTPMuZ+pTXA+KNzEmuMyU2xjqtSaHDcRoMMuFiur92bCOWOV
	z08bfxdqQBLb+wp8ByFErCucu+eZwLID4zp2lGnAUcWlvLfb7RvE5EPrJXkBPXTOiEpfaGiA7B3Ua
	2M346ikPgA2DzRhaj5TA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6MkE-00HTVO-1N;
	Tue, 06 Jun 2023 02:48:26 +0000
Received: from mail-qt1-x835.google.com ([2607:f8b0:4864:20::835])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6MkB-00HTUu-0v;
	Tue, 06 Jun 2023 02:48:24 +0000
Received: by mail-qt1-x835.google.com with SMTP id d75a77b69052e-3f9aa383527so11550881cf.1;
        Mon, 05 Jun 2023 19:48:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686019701; x=1688611701;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ii0fg77US/518xlxOEKIJghiUHbirfwTQhyyLf4nwFk=;
        b=YkUAc4TC3M1Q7pCTfVYgwp8p3uTUDeIiMRqCzgyoTa20P97S9RC/mGarXO0x4BSSRh
         zJUCmjcmXzeWkdsz5eWNhwLbAnyd9uZ63+6M06ZchzkuB7402BsLgArOsvMD6fNoPU7X
         g8fzbr7P5Z+UDsMCLfX+sQx3x7VlTu1j3+/2JuYdGglYDMV5VZUKwZRCKUX4LXo168L6
         0wm0kqgDbVsl2/jr6Uy8CgZrOk4qGYN6g7+ySMFx91USPVed0qLGFzhKt9vo9NGVb8dT
         Y0NAQeZcnofVfCeS2KrGQnEyN6FvE9VshL7k6yBJEMLkzRR/tRtel8AVdWX8NDTADjyU
         wabg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686019701; x=1688611701;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Ii0fg77US/518xlxOEKIJghiUHbirfwTQhyyLf4nwFk=;
        b=YsfiPm7zOX3PFQElKe6ivpaVf0es9Vh95vCZLZK4crkeCtMeYs2gZ0GEfZO2I66yVK
         ekxeKRdkXrluPsTmBt5t7J/dYo4ldz3H0lgekYmnxrc62FFKeV2m7eULLzx+32as7X7G
         wfuqvbX/ZxXBfB3NrppYxvEcw5Ke9E8YT2si7Dl8b7R29N9MOuDk4mcaTDmatCkbLLeY
         Jha+X3iUUrt/HcXHxzENdY1d3A7GYcBr29Yx1maku8SHMIA8mXe9ChAbxOLmEV4F0DO5
         p85uuni33DpRqSlOacefD1ZcbJ+CE2Gewyu0KxE9SfGqLkZtLZdfPXd4QhPMbcjIAVB1
         ZJ9Q==
X-Gm-Message-State: AC+VfDxIMqH1Mn6IX39dCDhUJhnuAJ5TKIwVeEsSQ8pmbxncLoiWP+tU
	erFhvooTcKVrti1TGNieTww=
X-Google-Smtp-Source: ACHHUZ6EocqF7qgJM5pijhVqVHXWobos6JTE51MNtne+mUY0p/4PNoR4T2eozOpHO56zeFS1sz/hBw==
X-Received: by 2002:ac8:7d52:0:b0:3ef:4100:cd0c with SMTP id h18-20020ac87d52000000b003ef4100cd0cmr718727qtb.63.1686019701039;
        Mon, 05 Jun 2023 19:48:21 -0700 (PDT)
Received: from localhost ([2600:4040:2007:9800:ab:4faa:880f:7b91])
        by smtp.gmail.com with ESMTPSA id h22-20020ac846d6000000b003ef2db16e72sm5186302qto.94.2023.06.05.19.48.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Jun 2023 19:48:20 -0700 (PDT)
Mime-Version: 1.0
Date: Mon, 05 Jun 2023 22:48:18 -0400
Message-Id: <CT583OP69XTU.3E141NE263OR3@Latitude-E6420>
Cc: <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
 <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v3 2/4] dt-bindings: phy: qcom,usb-hs-phy: Add
 compatible
From: "Rudraksha Gupta" <guptarud@gmail.com>
To: "Krzysztof Kozlowski" <krzysztof.kozlowski@linaro.org>, "Andy Gross"
 <agross@kernel.org>, "Bjorn Andersson" <andersson@kernel.org>, "Konrad
 Dybcio" <konrad.dybcio@linaro.org>, "Rob Herring" <robh+dt@kernel.org>,
 "Krzysztof Kozlowski" <krzysztof.kozlowski+dt@linaro.org>, "Conor Dooley"
 <conor+dt@kernel.org>, "Vinod Koul" <vkoul@kernel.org>, "Kishon Vijay
 Abraham I" <kishon@kernel.org>, "Arnd Bergmann" <arnd@arndb.de>, "Olof
 Johansson" <olof@lixom.net>, <soc@kernel.org>
X-Mailer: aerc 0.8.2
References: <20230604063032.365775-1-guptarud@gmail.com>
 <20230604063032.365775-3-guptarud@gmail.com>
 <3c781ae6-4a45-1d6d-840c-d25f33684b00@linaro.org>
In-Reply-To: <3c781ae6-4a45-1d6d-840c-d25f33684b00@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230605_194823_341076_BC4A2EBA 
X-CRM114-Status: GOOD (  18.92  )
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

On Sun Jun 4, 2023 at 6:30 AM EDT, Krzysztof Kozlowski wrote:
> On 04/06/2023 08:30, Rudraksha Gupta wrote:
> > Adds qcom,usb-hs-phy-msm8960 compatible
> > 
> > Signed-off-by: Rudraksha Gupta <guptarud@gmail.com>
> > ---
> >  Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml | 5 ++++-
> >  1 file changed, 4 insertions(+), 1 deletion(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
> > index aa97478dd016..63b6914993fe 100644
> > --- a/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
> > +++ b/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
> > @@ -13,7 +13,9 @@ if:
> >    properties:
> >      compatible:
> >        contains:
> > -        const: qcom,usb-hs-phy-apq8064
> > +        items:
> > +          - const: qcom,usb-hs-phy-apq8064
> > +          - const: qcom,usb-hs-phy-msm8960
>
> I have no clue what you want to achieve here. You break the bindings.
When I added the USB node to the msm8960 dtsi file, I got similar
messages for the expressatt/cdp that Rob mentioned in his email reply:

phy: resets: [[25, 0]] is too short
phy: reset-names:0: 'phy' was expected
phy: reset-names: ['por'] is too short

I will send an updated patch soon that addresses this.

>
> It does not look like you tested the bindings, at least after quick
> look. Please run `make dt_binding_check` (see
> Documentation/devicetree/bindings/writing-schema.rst for instructions).
> Maybe you need to update your dtschema and yamllint.
>
> Best regards,
> Krzysztof
Sorry. I was only looking for expressatt errors/warnings and failed to
see the other errors/warnings in the sea of text.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
