Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 950D6C77B78
	for <linux-phy@archiver.kernel.org>; Thu,  4 May 2023 17:13:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b+vc7xXl9fRa3XNC5nBDreSNwuwacWNxKXbMR8dRbTs=; b=TqSzxMnj4jM7/k
	SfhQ2cgKwcc9fricrxQNq/YzfiddiEGAvtqBoigMtrhvkhgFgdP9040ZntPmIyvW/MnMJYiRxwlQ+
	3cfeYFf/uRkDFJfCGrYvLJTTAvnyCtQdrGj7RVWoysJyUqOT82DGlNPiYQvyFzD75K4BrZ8OnYItg
	aBg+nml40hVdG5xCRYz5ynbT2VkvNmXoRpQFNVeZcxoFLbrke3iw4tIC34NDyGU9PQy5gk9CeeI9O
	KYp9J4y+XVzCJasPSFKC/jYYf63qVBHLszN1oBSDIfDhMcKYyEKeQjkyYZxqrAO1q4X0eA3odzECt
	SdFtOueI8Op1AuTt6PNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pucVu-008Ovi-0o;
	Thu, 04 May 2023 17:13:06 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pucVr-008OuZ-0Q
	for linux-phy@lists.infradead.org;
	Thu, 04 May 2023 17:13:04 +0000
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-2fa47de5b04so720086f8f.1
        for <linux-phy@lists.infradead.org>; Thu, 04 May 2023 10:12:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683220375; x=1685812375;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=kddkMECWVqpDHWo8u3obun/sMKv5JNOK16rXJVgFx4g=;
        b=LOOkQU6n9tZyRfwdWMsGPy6aLyJfZxBcZwYdRCAQ9umZn6cN0gLH+p93ev7FnwrMRA
         NbRkWvvBVxSMZNqOUuWQUtSKP2TsBNKH5v4PNOvPkZhihSHgZk97wQqcxgYxPCCSLIIl
         lvW572eEAcmp0BTPpbmx8wBPF718WrmwX6LmTUVxDLY3Ky6pQdVqRauIEjSkuih0FSBF
         qow/nBQVdOmsZw/s3SPf5BoQIX1C036ioczaiYShWh20sjVWZ71NC8lJjOlWc5EUO36N
         OiXgZ6FMupA3/w/TEZR4+liF5SzHpETSQDXKZrhx7T4hgiVILnSCi7bDgXtSGgDz9YfX
         j7kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683220375; x=1685812375;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kddkMECWVqpDHWo8u3obun/sMKv5JNOK16rXJVgFx4g=;
        b=BVs1sfLzvZTkY+RVKWp0DKK0tdueXV+JxWjRb+FZlS78rDnQETGTBa/I8l9Fi8x4sq
         USq6BDro4E2wpDKu+88+4RO3tGPDEfE6/9MC11WVG0PsMKx7NVdXQeRRZY6IL2oUYDgo
         exasKz2ugi6mfFaI3jxfinkoKtTmuIIMV9K2qCpsPCA6FJ49bOZI2sTb0KOR0eClfPaf
         CbydwbPGVRa8RmlHu9BuhBz8o3yCn840VjZyXmNo526E/ikSv9oChyD51UuCEVpHxKfO
         3h89dcELaYEBMUImB2t0djrY9lO6jk7jIWAGQ+2B2+GuPzkYLT48AHX6NAhg2ZFSCmZN
         yWfg==
X-Gm-Message-State: AC+VfDxB28s1iuP/xRNNMpP+sM0cH1rM3RdWz8LVscAlaWtrfg7twhNI
	GweS7Lcar8ABbxJPTnxdEQDd6ex3JJDUcizEsfRoKQ==
X-Google-Smtp-Source: ACHHUZ7QxZl1x5phuIX1RVMMYcOgzgMlXlTEPdp+xl3jrd8L/fw1k3OPIva4SO7dTMcMaHMRdDpUBxe7jqpzTrGx8UA=
X-Received: by 2002:a5d:504a:0:b0:306:35d1:7a98 with SMTP id
 h10-20020a5d504a000000b0030635d17a98mr3021869wrt.8.1683220375596; Thu, 04 May
 2023 10:12:55 -0700 (PDT)
MIME-Version: 1.0
References: <20230502053534.1240553-1-bhupesh.sharma@linaro.org>
 <20230502053534.1240553-2-bhupesh.sharma@linaro.org> <faefbbed-0f62-e569-455d-0d21b363f8f3@linaro.org>
In-Reply-To: <faefbbed-0f62-e569-455d-0d21b363f8f3@linaro.org>
From: Bhupesh Sharma <bhupesh.sharma@linaro.org>
Date: Thu, 4 May 2023 22:42:44 +0530
Message-ID: <CAH=2NtzfH+7XMFdCq0JENgpJymsHNUfzwhWmDx=g8xBJ4aACpA@mail.gmail.com>
Subject: Re: [PATCH v10 1/4] dt-bindings: phy: qcom,qmp-usb: Drop legacy
 bindings and move to newer one (SM6115 & QCM2290)
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-phy@lists.infradead.org, agross@kernel.org, 
	linux-kernel@vger.kernel.org, andersson@kernel.org, bhupesh.linux@gmail.com, 
	robh+dt@kernel.org, konrad.dybcio@linaro.org, kishon@kernel.org, 
	vkoul@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	dmitry.baryshkov@linaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230504_101303_175114_95B98FF2 
X-CRM114-Status: GOOD (  12.02  )
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

On Wed, 3 May 2023 at 21:55, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 02/05/2023 07:35, Bhupesh Sharma wrote:
> > 'qcom,msm8996-qmp-usb3-phy.yaml' defines bindings for several PHYs
> > which predate USB -> USB+DP migration. Since SM6115 and QCM2290
> > nodes for USB QMP phy are being added to dtsi files by followup patches,
> > move these bindings instead to the newer style
> > 'qcom,sc8280xp-qmp-usb3-uni-phy.yaml' file.
> >
>
>
> >    clock-names:
> > -    items:
> > -      - const: aux
> > -      - const: ref
> > -      - const: com_aux
> > -      - const: pipe
> > +    maxItems: 4
> >
> >    power-domains:
> >      maxItems: 1
> > @@ -71,6 +69,42 @@ required:
> >
> >  additionalProperties: false
> >
> > +allOf:
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            enum:
> > +              - qcom,qcm2290-qmp-usb3-phy
> > +              - qcom,sm6115-qmp-usb3-phy
> > +    then:
> > +      properties:
> > +        clocks:
> > +          maxItems: 4
> > +        clock-names:
> > +          items:
> > +            - const: cfg_ahb
> > +            - const: ref
> > +            - const: com_aux
> > +            - const: pipe
>
> I am pretty sure I acked it and there were no changes here... but since
> you did not include it, then lets keep the clock order the same as
> sc8280xp. ABI is anyway affected, right?

Yes, I forgot to include your Ack in this version :(
Ok, I will fix the clock order in v11.

Thanks,
Bhupesh

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
