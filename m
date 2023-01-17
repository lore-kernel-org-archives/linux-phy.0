Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96D7BC3DA78
	for <linux-phy@archiver.kernel.org>; Tue, 17 Jan 2023 14:25:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JwCebnriNCTSmq3ETVa1Mwtg4eqRkNsiTK3qn46YGPM=; b=lpPT29mfbK5SBL
	HvWhzT62I5Hc7gqZDI0dcZUJKloj2R+lLZRmAVFtH5E9Yh9mwclyMwvrj/rBLm+rNms36EsGEnKP7
	W2rIECrWrILOHuJs+J8WP7kACMagTOEgFzs69Zx/EDUCzno4DnDWaPP3enq9MWVW7reTLy3MFs2ZV
	KQU2XecqajIqCfVEi8w/NCjnOhW4RdFKlBKYoWNpdQyC+lbkNtawIhXFWjjDBDa/OOFlY4F7EbJdD
	L+lJ7F6i6ePZRqd4L7qutd7ZccsZx1ogp/i+XB2KOKz7mURJwUNRKGm3C8bDGL21L60VWR5vTCh1X
	OBx3yhLcU3sF7YQRZyiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHmth-00Ebnt-UG; Tue, 17 Jan 2023 14:25:09 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHmtf-00EbmS-Te
	for linux-phy@lists.infradead.org; Tue, 17 Jan 2023 14:25:09 +0000
Received: by mail-wm1-x332.google.com with SMTP id g10so22373175wmo.1
        for <linux-phy@lists.infradead.org>; Tue, 17 Jan 2023 06:25:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=0o5JKqHA2jE2pZCqpewPRuIPIvKyqcaqw+l6676pGJY=;
        b=Xt4JgcY4xB0r7T92IzDEDPjSB5vXfr00+YuDT1ZcYsxdhY22g+XGDHlWzWHw9EVfF/
         glqP6b1I/M3w5Juepr1Bl0RkPLkE8LxIDMXphUZbGPfetM9yFlRvujF3XZrc0qY3+0Od
         5ZEi738PWLGo4On8nvLAx8455u1MDkvtXUP170YCS4vlwXE2hfsNHuM0krmr86SE8QP7
         5XV2c7tv7PDTPR79ox7PqF0mlon5JlVS+qW2kl54+SWj9TltiGQtQ5co3SfiwRffgR7u
         BRXsh6Wn0j+nB1Zs05uXqcIOAS9hbqQaLK+0ejZ+6+qpspKMqapmjgbzx3JEYU6nVfMv
         OxVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0o5JKqHA2jE2pZCqpewPRuIPIvKyqcaqw+l6676pGJY=;
        b=n1wzWq06q/rxwdJiuEvfkqg883RVQIzKP+pcdFUQkjXFKL/rotq2ctPz/0sGoCtPh5
         ab1ooYtU5Q5KrQELPaZeErsYp9O6SeYOcyKrBSQ6ECp5xO7BV/wg2MQxKeGZMqArjQ6B
         bs4w15rjl7JpB5lGs+WwdsqsCIP8C2PkzHG8tdJfABfrQ4t5Hse96cHravurXhTUetqN
         jpfuEDTiV1xHUKYmxlzYH4fuj4TFafpVq2tUBRjh6uATKMpdzP08mP13E//qS+tsxD7s
         gtstvmhVbnidry0wAC/VMh+EcXdwu3tw52sDPr6TLW33Ayf1OOEUL4FM0ajB66lQWRk+
         JQRg==
X-Gm-Message-State: AFqh2kqTDepkq/+RKGJY/VN/a/1CFVptaNdHflIX7VlGA80i0ZL97OHF
	dQTyS3GU0AHfK+4ag1Amx0jFIA==
X-Google-Smtp-Source: AMrXdXvUiyE7TTzBBUfTs4/cb9g/hSrNJbSFCgye8F3KowhvGTrU+ni8vLPEN0p9Wn24H5f8GY1x9Q==
X-Received: by 2002:a05:600c:181b:b0:3da:ff1f:e8d3 with SMTP id n27-20020a05600c181b00b003daff1fe8d3mr3255753wmp.15.1673965506462;
        Tue, 17 Jan 2023 06:25:06 -0800 (PST)
Received: from linaro.org ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id n6-20020a05600c3b8600b003db012d49b7sm5854466wms.2.2023.01.17.06.25.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jan 2023 06:25:05 -0800 (PST)
Date: Tue, 17 Jan 2023 16:25:04 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	"vkoul@kernel.org" <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Johan Hovold <johan@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v3 1/6] dt-bindings: phy: Add QMP UFS PHY comptible for
 SM8550
Message-ID: <Y8avwNKKQYwbgmRX@linaro.org>
References: <20230117125555.163087-1-abel.vesa@linaro.org>
 <20230117125555.163087-2-abel.vesa@linaro.org>
 <33eda50c-c70f-1bb6-0917-22b6fdb4a2ca@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <33eda50c-c70f-1bb6-0917-22b6fdb4a2ca@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230117_062507_973541_00621A6C 
X-CRM114-Status: GOOD (  14.29  )
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

On 23-01-17 16:09:12, Dmitry Baryshkov wrote:
> On 17/01/2023 14:55, Abel Vesa wrote:
> > Document the QMP UFS PHY compatible for SM8550.
> > 
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > ---
> >   .../devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml       | 1 +
> >   1 file changed, 1 insertion(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
> > index 760791de0869..44745a5c64cd 100644
> > --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
> > +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
> > @@ -17,6 +17,7 @@ properties:
> >     compatible:
> >       enum:
> >         - qcom,sc8280xp-qmp-ufs-phy
> > +      - qcom,sm8550-qmp-ufs-phy
> >         - qcom,sm6125-qmp-ufs-phy
> 
> Please keep the list sorted

Ugh.

I sent a new version.

> 
> >     reg:
> 
> -- 
> With best wishes
> Dmitry
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
