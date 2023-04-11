Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE8A1C77B70
	for <linux-phy@archiver.kernel.org>; Tue, 11 Apr 2023 14:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e/Dat5eXRyv1oUlq2wq5/flvCQbT+iK1vH2RArRhMkM=; b=QWNvzxVAhR0ZJU
	gFOyhR3Wqo2R3hhq0m3t1PFrEoBm0Y51CAf0+41hWgjEplMrFiQHO4TelQ6fmMxNb0lGutQOhiRJq
	cTk7S6QUlwM3/oX+VyOVHMxbriqlJ9keLoUKtDDTlhHXuCvFG6JdpU01JpLLu6ovF5GUJUyIYQgdm
	1Z9eEBCzJeqYzmoFEKUImOTyv4BeCYrUl9Rj97Pcmgv0Hos+kDvWG/r0659Jm0ZJwx1cC9mBEfLwG
	fAwtCfwtdbU+bRdLITgrgHNSnpbaGUid2lvkuHd5zgvCjk9zEbNjJzLUiIjVps4RbR0hC6MPvsWJ6
	wJD4Lk2rBWCOXOwmcQWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmEtl-000FR5-24;
	Tue, 11 Apr 2023 14:23:05 +0000
Received: from mail-yw1-x1134.google.com ([2607:f8b0:4864:20::1134])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmEti-000FOp-1Y
	for linux-phy@lists.infradead.org;
	Tue, 11 Apr 2023 14:23:03 +0000
Received: by mail-yw1-x1134.google.com with SMTP id 00721157ae682-54ee0b73e08so163559287b3.0
        for <linux-phy@lists.infradead.org>; Tue, 11 Apr 2023 07:23:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681222979;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=YfaEeNuJ+Hdp1nHSVtR8YcRxyh5te0e8PseTVlzu67k=;
        b=ovm4+NgZ+Ec4ZjIgJf/sOKoaRV3p0V8E1syXJvvmN7tSDnoHRfDV7X+TM/TuJJb98k
         V/zWcS1oqVkkB/Ccede5GHn7AATYAMDz5q/j3HxM/7/rUH3P4zamX2P+ZO6xwIlmPYFl
         vf2NJBm9RLfBZ84LmTcitMTQgIdhBxMUZx/7/GQMfUxAT1l+cQ18O0zzWRW+i6YQD+xJ
         vWqSACuOk5Mq4HwpVsg89Zq5ScenA1NUtQgmNBwbg0qHO8J1jrXplwxR1lKuo7qhch9O
         zCVkvUg2NWx+OYuPsDxmbTc52BqlEOtfwM8INvs570K/ZJjaAOR6QYWVdH90JBhpPbZF
         rgrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681222979;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YfaEeNuJ+Hdp1nHSVtR8YcRxyh5te0e8PseTVlzu67k=;
        b=JvQawtrQU5lFU0eA3LDvA+U54kPjU6NDe/I8n/H8NNT9JDslQrVwC1nmjvG1aH8P8g
         Tp7Z/ZkwX1Ie8yrhUfRJf8Md7ck45G+0zdCASLY4OxVJLPkDQrHCd/mHpMjggxq9Gim9
         Ub1JBdDmVUH38exTb39eEfAs/SE8VrD5P+FuALtiftweIy6zOVM1Ws6bh0jh5ezBMsau
         e2CzhlGmTq+JC9e9R2dr46bB6T+42+kZ7WH0qGof6fLIT3uWjitjtAvI79KTT96on1s4
         RY6GNhFMWz1NDWQUxyTPrNrK/qFat3s/BxCIBP2/hYLoRUmE6W4UXG7F185kbhGH+7Md
         YWGA==
X-Gm-Message-State: AAQBX9dSfFyTntH80qToxqR6aqBw8UfXtnxbl4LiPn1F0w8r3Lr6G+wv
	3XDDzNKRBQGiRmB/ROlLNUdiSq4VU1nTJBV4nq2mYA==
X-Google-Smtp-Source: AKy350b19zupv5UWGi6PzMtlcoyVqeyNRUYz0VDgkCWSi6ZkEx0abL/8b9KOQQdtuLoLndmVPQJJ0YjEaKzB5J3gCXc=
X-Received: by 2002:a81:b149:0:b0:549:18b4:e94d with SMTP id
 p70-20020a81b149000000b0054918b4e94dmr7819496ywh.7.1681222979591; Tue, 11 Apr
 2023 07:22:59 -0700 (PDT)
MIME-Version: 1.0
References: <20230406194703.495836-1-brgl@bgdev.pl> <20230406194703.495836-3-brgl@bgdev.pl>
 <20230411131740.GA2913234-robh@kernel.org>
In-Reply-To: <20230411131740.GA2913234-robh@kernel.org>
From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Date: Tue, 11 Apr 2023 16:22:48 +0200
Message-ID: <CACMJSevSygrwzKdYNGKCgtdjuAQcVyqL3LvKonyat=EHCaNPzg@mail.gmail.com>
Subject: Re: [PATCH v2 2/5] dt-bindings: phy: qmp-ufs: describe the UFS PHY
 for sa8775p
To: Rob Herring <robh@kernel.org>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, Andy Gross <agross@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>, 
	Bart Van Assche <bvanassche@acm.org>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230411_072302_526883_A13686EE 
X-CRM114-Status: GOOD (  17.50  )
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

On Tue, 11 Apr 2023 at 15:17, Rob Herring <robh@kernel.org> wrote:
>
> On Thu, Apr 06, 2023 at 09:47:00PM +0200, Bartosz Golaszewski wrote:
> > From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> >
> > Add a new compatible for the QMP UFS PHY found on sa8775p platforms and
> > update the clocks property to accommodate three clocks.
> >
> > Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> > ---
> >  .../phy/qcom,sc8280xp-qmp-ufs-phy.yaml        | 26 ++++++++++++++++++-
> >  1 file changed, 25 insertions(+), 1 deletion(-)
> >
> > diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
> > index cd0fbbd3593d..5bc93acccbad 100644
> > --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
> > +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
> > @@ -16,6 +16,7 @@ description:
> >  properties:
> >    compatible:
> >      enum:
> > +      - qcom,sa8775p-qmp-ufs-phy
> >        - qcom,sc8280xp-qmp-ufs-phy
> >        - qcom,sm6125-qmp-ufs-phy
> >        - qcom,sm7150-qmp-ufs-phy
> > @@ -25,12 +26,15 @@ properties:
> >      maxItems: 1
> >
> >    clocks:
> > -    maxItems: 2
> > +    minItems: 2
> > +    maxItems: 3
> >
> >    clock-names:
> > +    minItems: 2
> >      items:
> >        - const: ref
> >        - const: ref_aux
> > +      - const: qref
> >
> >    power-domains:
> >      maxItems: 1
> > @@ -52,6 +56,26 @@ properties:
> >    "#phy-cells":
> >      const: 0
> >
> > +allOf:
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            enum:
> > +              - qcom,sa8775p-qmp-ufs-phy
> > +    then:
> > +      properties:
> > +        clocks:
> > +          maxItems: 3
> > +        clock-names:
> > +          maxItems: 3
>
> The max is already 3. Did you mean 'minItems: 3' or 2 or 3 clocks are
> valid?
>

For this compatible only 3 clocks are valid so it should have been
minItems indeed.

Bartosz

> > +    else:
> > +      properties:
> > +        clocks:
> > +          maxItems: 2
> > +        clock-names:
> > +          maxItems: 2
> > +
> >  required:
> >    - compatible
> >    - reg
> > --
> > 2.37.2
> >

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
