Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E88ACC4345F
	for <linux-phy@archiver.kernel.org>; Wed, 17 Apr 2024 05:57:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xux8MgE25D14WwsqS/UIo3TDVHEpTunf+73ZV2gXKzs=; b=gZ+12yf0CcDMQi
	8OZMpwG8CZDGZ2jYNWfBRKOhIZ2u2tQAQqNQZxQNNinqOEDAXORd4JMv7ju23GOYPrfiuBikX+KdR
	efOF0V9IVjmrT81HKSHY4TsVsOuh5BzoWCbifNqf5y8Vz45UO7osTIeSyk4J/Qgj1mUxu+r3zMKg/
	xw0CqrwfXXIP1tq5gZ5/2TJSYSTKdbmUdv1i5ym3Seg62663cQ+s85EGtogHHf44AhAE7qtMdK+37
	S/cUo5rulXO+qXXii21A6G6075bq50PDnGVvVYtV25d7js7H0F85Mu1De7YTCmFbI5iwJjo1tEstx
	mCqD5M2DcViHFeoKo3OQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwyIj-0000000EoGS-18Jz;
	Wed, 17 Apr 2024 05:57:45 +0000
Received: from mail-yb1-xb2e.google.com ([2607:f8b0:4864:20::b2e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwyIg-0000000EoFu-06UM
	for linux-phy@lists.infradead.org;
	Wed, 17 Apr 2024 05:57:43 +0000
Received: by mail-yb1-xb2e.google.com with SMTP id 3f1490d57ef6-dc6dcd9124bso5102799276.1
        for <linux-phy@lists.infradead.org>; Tue, 16 Apr 2024 22:57:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713333457; x=1713938257; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=rNcOWvfk3UIO9gpF1vedzWy9UX8ITuyEtwuAcYcPDTE=;
        b=JQNE/37NtlDUaKvvP53ACdBd7toVaxPGg697/RhPjG0eNZGW6PExDfMOw5O0eF8/Xa
         3utfcKkgJ4g3FRG9Yf2lnt4pKWGKcjVgGc7faBsc58pouvS2qn+SJdxcLdPkPogxo3Cy
         lbxKJmgYjBCOJksm6L30yBUjx0BroaxWJbwCZg2oAoagrBiE5aSYoMqvEwjPKTANQFyI
         5YxWzQA4M2ETIG/d3hR1IhWqiSjByl94J13H9IiIyfXUXViofMf3G7H1+HjkA4o9Xptg
         nVxYwEweBo+WOrp1/HFbjR0JU2CSM/4/9qgSfhn6FHJKtb6bUNNnEkGyx5pfUWRxq+fD
         cvFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713333457; x=1713938257;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rNcOWvfk3UIO9gpF1vedzWy9UX8ITuyEtwuAcYcPDTE=;
        b=Rk6lP79HqE0RlLFwoL3S9bEaVuEpoffW1E2QZgr+K8qZN7Sv+C23LgiMd9JWPtC13E
         v8oTe2lZU9EwG1JbxZrARWktp5OJE37vhmNk3GJdewH9R8d7te9QU26bwXN+xxU1m1i9
         a6XszkSYKqcH1uutj+CclGpzim1MmxVoAD+H2Uvl8O5k6zR6Ui1hpyqM55CUNVnslSI5
         HWeh1BTvLAzysDNiZlRaAPduvSBlAsdJwAvCgGBBjsy7z9iFPxjiVZiBDC3uSyH72oL3
         pqqmgeC7gB+gqjalvB4bC4rGT4DabEZxabK8vYcC3H4sdk46argToF1iS2EV0p6g3dhg
         aTuQ==
X-Forwarded-Encrypted: i=1; AJvYcCWBBuuFOoXzxQ84J7Ckc6M17PsbzFHr53RmTFhZ2a1up3n8phTZHVyzIzxXvliLH9edTshMNTjMl/Rr0hGcS3iKppkH2w3l81h/TTE9kw==
X-Gm-Message-State: AOJu0YyrPwWEbpBuL9bDvvWd8Pr6d5B34DFc1tQIrsaGNcC7LQRivQdz
	6J8Bi9iTLah3X0bWdjD89LOGLInOdA4rHadakqZkeJzQIaQOO4TU8s6jkDp5ghpGLdICZav1fwb
	dIG325EzJmFWgpi/kC8+sEu4hnMuZk5Y0p/HdqQ==
X-Google-Smtp-Source: AGHT+IFvUyY4VR6NF7RdZCvXFlEENeC2C1SHZuye8tqXC6fIwkIUmwR3VOt9Upi8bmgYZVnv+2wX6k4TBDNDViUqr10=
X-Received: by 2002:a25:81ce:0:b0:dcc:245b:690e with SMTP id
 n14-20020a2581ce000000b00dcc245b690emr8017444ybm.40.1713333457167; Tue, 16
 Apr 2024 22:57:37 -0700 (PDT)
MIME-Version: 1.0
References: <20240415115603.1523974-1-github.com@herrie.org> <20240417045207.3594931-1-github.com@herrie.org>
In-Reply-To: <20240417045207.3594931-1-github.com@herrie.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 17 Apr 2024 08:57:26 +0300
Message-ID: <CAA8EJpo=nd8ywUzz2e42p7WAyuFm439yvNf6H=MD63LCV0xTnw@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: phy: qcom,usb-hs-phy: Add compatible
To: Herman van Hazendonk <github.com@herrie.org>
Cc: andersson@kernel.org, benwolsieffer@gmail.com, chris.chapuis@gmail.com, 
	conor+dt@kernel.org, devicetree@vger.kernel.org, kishon@kernel.org, 
	konrad.dybcio@linaro.org, krzk+dt@kernel.org, linux-arm-msm@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, me@herrie.org, 
	robh@kernel.org, vkoul@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240416_225742_094934_3A61B9A6 
X-CRM114-Status: GOOD (  12.45  )
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

On Wed, 17 Apr 2024 at 07:52, Herman van Hazendonk
<github.com@herrie.org> wrote:
>
> Adds qcom,usb-hs-phy-msm8660 compatible
>
> Used by HP Touchpad (tenderloin) for example.
>
> Signed-off-by: Herman van Hazendonk <github.com@herrie.org>
> ---
>  Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
> index f042d6af1594..ccf23170cd17 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
> @@ -15,6 +15,7 @@ if:
>        contains:
>          enum:
>            - qcom,usb-hs-phy-apq8064
> +          - qcom,usb-hs-phy-msm8660
>            - qcom,usb-hs-phy-msm8960
>  then:
>    properties:
> @@ -41,6 +42,7 @@ properties:
>        - enum:
>            - qcom,usb-hs-phy-apq8064
>            - qcom,usb-hs-phy-msm8226
> +          - qcom,usb-hs-phy-msm8960

This should probably be msm8660 rather than 8960

Note, nowadays the rule would be to use qcom,msm8660-usb-hs-phy
compatible, but I wonder if we should enforce this for such an old
platform or whether similarity wins.

>            - qcom,usb-hs-phy-msm8916
>            - qcom,usb-hs-phy-msm8960
>            - qcom,usb-hs-phy-msm8974
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
