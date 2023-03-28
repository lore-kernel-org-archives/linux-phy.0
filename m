Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0BB6C76195
	for <linux-phy@archiver.kernel.org>; Tue, 28 Mar 2023 10:41:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p4k1oJ2j78AoZurpBZftrReBA+6TxTHh4EZkSFlTY4I=; b=UPkjfJiCZmG2nQ
	26B5HTTk+OB4kGut4vdnnrfSrG6P8PumoIM4hA3fQ0Wes8CkAU0ydrzzS3NbW+vBG5Oeoi2JdUlve
	Tst7huFIclmDJYUXN/C2BEWdgqzaeyulfwICV25k6CwL6Dsq+jDUTfvEFZLvFlUAlpuWZEcZwH0xD
	uOO0Hv0rA8dF4+axlb9bxfZ1noujRqtHsPqQW2dFGIdNE1KVqy7Eqs+EUGLrU8kkXfPQK5a4LzGAU
	42KunuYm9kcgf/zytDj+y9mOt2Jy4i0jnlAcS8TQl0O3DGRqKd9Bx2eGS4ldCUYkHzaUF06+gsnk4
	ULFdB3wGUbE5Zex+kWpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ph6lY-00DzlK-1d;
	Tue, 28 Mar 2023 10:41:24 +0000
Received: from mail-yb1-xb35.google.com ([2607:f8b0:4864:20::b35])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ph6lT-00Dzju-2X
	for linux-phy@lists.infradead.org;
	Tue, 28 Mar 2023 10:41:22 +0000
Received: by mail-yb1-xb35.google.com with SMTP id p203so14371886ybb.13
        for <linux-phy@lists.infradead.org>; Tue, 28 Mar 2023 03:41:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680000077;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ScncozdRfE1mQa4+nAK0Jtn2/gS2SKLxxgCN6MI5Phg=;
        b=H8oqCcILOHHKdyyXrpcOAQHKtYJ2R0EHXcQyxGEJjfqnmd65oxyqvV/KLS0RWopNJX
         Bk7WhfFL4NLKT25hUFYeNxGmxs41HJy7haUypio2700XOEz3BVSLnDHurA2FmhON4kKN
         yQcC59eumRN+Lf1cbDncVhl8Vmlj5FFy02C3vc2LhT426HTg/j5PDdIj1wT3U9gJNOVo
         SX0PNrdLVKrOWxwye4Njt6BQKEuF2bgwYb/dSXnYUxJMwubfctDv4kVrnsR4UJzXn8hV
         d82478pWw5hE2oGzI98Q0G5Muogq/5IAcrrFPZV0nmWdqzBhYsYKK8FTPIF14zb3GUFo
         0X2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680000077;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ScncozdRfE1mQa4+nAK0Jtn2/gS2SKLxxgCN6MI5Phg=;
        b=Ps7WIxBUNwpdvYO3LLH/IIiqT95BkS/wD0emUkh5+1eDb8esTgVSWXeiW2sr246yqg
         yE+0BSyZwiOl35p+C3y9OyyuD37yJUtTdAFTu1aYgz5TC5HSlgsVTvET1P/b1CWH/v+b
         cguB2Q7vFWOEd47qMSeBqOqid2VMkbH1595GTi9yAsxKrSl3b4lcXZ64oECryroKAOjB
         JxzvPqzuK0Xse6/11YrYAOFjIgv5FrxvkWz+7qWL2BVXbbzNO7Jy7ZmvUzPfHUh3KnrE
         BOENvYoxvOBZH0JYrhUAwGj2X54CSoMb84H9Th2xUXiWV++NcePt/KPj0Q78FFdRHQR2
         tn5w==
X-Gm-Message-State: AAQBX9foI1zQQSw0PmFnrEd3jG7CK7KHT6wppBuKAMFI41JmPI26M67a
	nUqhE8hU4znGcj/0IpD2scyp3dtly8j5vBYDa8ENuw==
X-Google-Smtp-Source: AKy350ZgEE/D6adiyj/0Gd6S8pM8rCmiMKgPbfnz/d61Gs6OOEUXmjzkmasYyqUwfhInm+ReDGrgAg0kgVptOTmf+cU=
X-Received: by 2002:a05:6902:168d:b0:b6c:2d28:b3e7 with SMTP id
 bx13-20020a056902168d00b00b6c2d28b3e7mr9261489ybb.9.1680000077344; Tue, 28
 Mar 2023 03:41:17 -0700 (PDT)
MIME-Version: 1.0
References: <20230326005733.2166354-1-dmitry.baryshkov@linaro.org>
 <20230326005733.2166354-2-dmitry.baryshkov@linaro.org> <72f744cc-21ea-0eab-2778-53ec0f3e4964@linaro.org>
In-Reply-To: <72f744cc-21ea-0eab-2778-53ec0f3e4964@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 28 Mar 2023 13:41:06 +0300
Message-ID: <CAA8EJpq7VRsrA9++kV1E1NZ2GzoLFC6o19YDCnw=0B4kePVCEA@mail.gmail.com>
Subject: Re: [PATCH v2 1/9] dt-bindings: phy: migrate combo QMP PHY bindings
 to qcom,sc8280xp-qmp-usb43dp-phy.yaml
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, Johan Hovold <johan+linaro@kernel.org>, 
	devicetree@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230328_034119_821716_07BD95FB 
X-CRM114-Status: GOOD (  12.95  )
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

On Tue, 28 Mar 2023 at 10:02, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 26/03/2023 01:57, Dmitry Baryshkov wrote:
> > Migrate legacy bindings (described in qcom,sc7180-qmp-usb3-dp-phy.yaml)
> > to qcom,sc8280xp-qmp-usb43dp-phy.yaml. This removes a need to declare
> > the child PHY node or split resource regions.
>
> Thank you for your patch. There is something to discuss/improve.
>
> > -  resets:
> > -    items:
> > -      - description: reset of phy block.
> > -      - description: phy common block reset.
> > -
> > -  reset-names:
> > -    items:
> > -      - const: phy
> > -      - const: common
> > -
> > -  vdda-phy-supply:
> > -    description:
> > -      Phandle to a regulator supply to PHY core block.
> > -
> > -  vdda-pll-supply:
> > -    description:
> > -      Phandle to 1.8V regulator supply to PHY refclk pll block.
> > -
> > -  vddp-ref-clk-supply:
> > -    description:
> > -      Phandle to a regulator supply to any specific refclk pll block.
>
> What about this supply. It's missing in the new binding. Don't we need
> it? Isn't it a real supply?

I think it is a leftover from the QMP split. This is a real supply,
but it is used only by UFS PHYs. So, while we are clearing old
bindings, let's drop this unused thing.

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
