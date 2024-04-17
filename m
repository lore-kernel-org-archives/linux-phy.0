Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3447C4345F
	for <linux-phy@archiver.kernel.org>; Wed, 17 Apr 2024 07:02:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RHh0qsAzM6qkmShyvy/zN6oF0gZfKD3ljqfv7Rn2vlY=; b=d2kfr8JOvLcIHm
	ED6W33PnKC5/V8HJWBASkYHcqn6Zz+j2SF2iuygBPGNJqmh2TlZuqNdUS6mM8UVUM+l8Uu5+9BzpD
	piOnrKCAlUnge0uGa/5z6ichO4NSSRxlafUuXY4hbz1IZSK9Kwd0ZZlZq2XuP1y1gVFOlD5CjQlgy
	DVOQaHfNsjmGPY7vcpEsay+gPsgAckJwAs9VUroVuaO/51jWCKkiBGGrwO8XURpIl3JbTx1JlQD0z
	mBUUSFtmldK1XcVRTCAyHtSMenkYQ1VG8Fqk5ixIwU1nYi6CSTlQ/yPzq9IeZ9jDHdzxPrtmU+dKB
	MjoQtQGONz1f6DgvGMug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwzJO-0000000EwkK-23L4;
	Wed, 17 Apr 2024 07:02:30 +0000
Received: from mail-yb1-xb32.google.com ([2607:f8b0:4864:20::b32])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwzJI-0000000Ewi9-0NXM
	for linux-phy@lists.infradead.org;
	Wed, 17 Apr 2024 07:02:29 +0000
Received: by mail-yb1-xb32.google.com with SMTP id 3f1490d57ef6-dc23bf7e5aaso5424144276.0
        for <linux-phy@lists.infradead.org>; Wed, 17 Apr 2024 00:02:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713337342; x=1713942142; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=sGvt/OcevPOUXaTJnaPKCznXL12lo9XavRWzKBHcfZU=;
        b=MoHjp7WWNshqouIHbmhBZlamTtq5xORC4ilHwBg1QVXKiI3qB1vF810TrHfWozgs3h
         iwExM1u7y0IiRGu/v7dg7gjI0lELD4R7HSH6WXnpu4WSu+cu9p12PjglmR41feYvd6/z
         73lnWA2ODDY/lOrhX173QljnoSTO0eEDErIm8+XQuqEbcx/4be/CdA+DQT6fI7vHP8tx
         DO4yZbe0A6QG1GC2rsNZbUy9gFU8wFMo2DdzKcCGfUnmkyAlXKdM7LZL2yxf5/XJUcO1
         PZBYY+4u3Vkok+6m6HR5DM5WoQx8VH/OYUv0ghTIBQ5GjwIBdeN37vZF/wgYlcJXRWgm
         kKEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713337342; x=1713942142;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sGvt/OcevPOUXaTJnaPKCznXL12lo9XavRWzKBHcfZU=;
        b=ZEZ0EkdcmSkJ7EfvSO1hRxj7coGD80dQc23LYSK8qUEe9O5JcrUsux0oWihhYosp9P
         29K3sYDf5G9FlBFTC+roMWwGaUOPV9FJLap1n74bNpXTn5dmvZ94Ax6SrMiEMs18kPvi
         2B1T39sKoxT07SHPw4NctlD+3apogo+OTd3KO//EfL/r2bvbqqwToM4IIXQpC5HoS/d3
         eySE6O/reiS7Nfwrc6ezanT+YW1gx87Bjp0PXOm+5OirQaQ88WHU/fq9F4yfhym3s/Td
         MQ8Yda8HvkS1NyChF+RENfFU4J6MD+nOT2aiqbZqvUmidzyZfTnQZMBFOayqQseHUK6R
         VqbQ==
X-Forwarded-Encrypted: i=1; AJvYcCUKPIFLJwIfn7LKUCpdAU+VXUbeNgaZXVhjDoUmTbUYAZRSrBRy74Ao804Il7OSoIr2qa0wnJI1m4ASVDNC5s/dI7BGE4+8yqpzZgO8Yw==
X-Gm-Message-State: AOJu0YywGODV/ZJYK6makD8pi1qwdjdT7VY6DMYFTeFdXyuAtA8emI55
	TMvVlnrS1PayIrCq7CooF52NJqmDKkIOOfoOgCZMvdl1co4B+ist+NbBE7OcTRMYDkBSjKynovV
	RRIYKEvsRFW8HArTQU0/Wtlb6DPNVn5CLaHg0jw==
X-Google-Smtp-Source: AGHT+IH9CEuOupRBWZQNFxyza2VtLQoxomckgth+p7ynPNtYc07M5PELX35fU9fO3bLqrnFXrCHVMiYXlfx9K0YMLWY=
X-Received: by 2002:a25:aa30:0:b0:dd0:c12:411b with SMTP id
 s45-20020a25aa30000000b00dd00c12411bmr14962497ybi.8.1713337341963; Wed, 17
 Apr 2024 00:02:21 -0700 (PDT)
MIME-Version: 1.0
References: <CAA8EJpo=nd8ywUzz2e42p7WAyuFm439yvNf6H=MD63LCV0xTnw@mail.gmail.com>
 <20240417065020.3599755-1-github.com@herrie.org>
In-Reply-To: <20240417065020.3599755-1-github.com@herrie.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 17 Apr 2024 10:02:10 +0300
Message-ID: <CAA8EJpq4mEKi=WW2o-tmkSCoKv01sV5wM-U-KxXXGAcaKSp84g@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: phy: qcom,usb-hs-phy: Add compatible
To: Herman van Hazendonk <github.com@herrie.org>
Cc: andersson@kernel.org, benwolsieffer@gmail.com, chris.chapuis@gmail.com, 
	conor+dt@kernel.org, devicetree@vger.kernel.org, kishon@kernel.org, 
	konrad.dybcio@linaro.org, krzk+dt@kernel.org, linux-arm-msm@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, me@herrie.org, 
	robh@kernel.org, vkoul@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240417_000224_200221_F0D95404 
X-CRM114-Status: GOOD (  22.96  )
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

On Wed, 17 Apr 2024 at 09:50, Herman van Hazendonk
<github.com@herrie.org> wrote:
>
> On Wed, 17 Apr 2024 at 07:52, Herman van Hazendonk
> <github.com@herrie.org> wrote:
> >>
> >> Adds qcom,usb-hs-phy-msm8660 compatible
> >>
> >> Used by HP Touchpad (tenderloin) for example.
> >>
> >> Signed-off-by: Herman van Hazendonk <github.com@herrie.org>
> >> ---
> >>  Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml | 2 ++
> >>  1 file changed, 2 insertions(+)
> >>
> >> diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
> >> index f042d6af1594..ccf23170cd17 100644
> >> --- a/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
> >> +++ b/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
> >> @@ -15,6 +15,7 @@ if:
> >>        contains:
> >>          enum:
> >>            - qcom,usb-hs-phy-apq8064
> >> +          - qcom,usb-hs-phy-msm8660
> >>            - qcom,usb-hs-phy-msm8960
> >>  then:
> >>    properties:
> >> @@ -41,6 +42,7 @@ properties:
> >>        - enum:
> >>            - qcom,usb-hs-phy-apq8064
> >>            - qcom,usb-hs-phy-msm8226
> >> +          - qcom,usb-hs-phy-msm8960
>
> > This should probably be msm8660 rather than 8960
> Hi Dmitry,
>
> Thanks for the swift feedback. I'll send a v3.
> I need more coffee before doing this in the morning

Please wait for the feedback from bindings maintainers (this might
take a couple of days).

> > Note, nowadays the rule would be to use qcom,msm8660-usb-hs-phy
> > compatible, but I wonder if we should enforce this for such an old
> > platform or whether similarity wins.
>
> >>            - qcom,usb-hs-phy-msm8916
> >>            - qcom,usb-hs-phy-msm8960
> >>            - qcom,usb-hs-phy-msm8974
> >>
>
> I plan to send more patches for the msm8660, so happy to understand what
> is the preferred approach, because it doesn't seem consistent.
>
> These are my first patches, so learning mainly from what I see in commit
> history (which might be outdated)
> It's indeed ancient platform, we just would like to get HP TouchPad
> (tenderloin) running with a mainline kernel, hence these patches.

This sounds really interesting. I recently got apq8060 so I should be
able to test your patches if the time permits.

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
