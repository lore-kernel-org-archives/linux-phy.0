Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2651C433EF
	for <linux-phy@archiver.kernel.org>; Mon, 16 May 2022 15:58:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yD4Ybt0cpdsuFlBYrNj3iM4zzD2hiQfiGqc8OD1zWLw=; b=VnPkWLRs6Zr0pr
	lOzEsSmPNsf20zA4qmRcKrB2YEBDeX+W/x1PRcmoTsMHIcq9cG5adpF3GfJd70t25SmwvKtThHFce
	gYfw5ZTRpC/DrjcVGBUW+WWGGwmBLjaBDfWKc2oMMhIzO/Y1cpSjE667TH9umS9/AOFxA1a3ZTwyP
	lwYTN+Pr7t+jBvBKjVodPmLCJEnB75At8N4R59yR+BOWk1UoBWUx9CoPkHwg2oOqm38my9/cJZn2N
	X5W1p0Hvq0A8+8FhuwKLKn9+jRT9H6UN7w9wWQAJhLx6vxch70PfGJ2RFxNrmZg7zqRc5aimzDt4f
	11vq439+wnvBthTm+noQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nqd7B-008mSK-Pz; Mon, 16 May 2022 15:58:33 +0000
Received: from mail-oi1-x22c.google.com ([2607:f8b0:4864:20::22c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nqd66-008lfc-4y
 for linux-phy@lists.infradead.org; Mon, 16 May 2022 15:57:27 +0000
Received: by mail-oi1-x22c.google.com with SMTP id r1so19124901oie.4
 for <linux-phy@lists.infradead.org>; Mon, 16 May 2022 08:57:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=vH4NPiCLU7evHB+E7xCfaeXJAYfa3KeY6XJRC/M1pQQ=;
 b=I0Fe0t6KYm7QeHL4cN/jCuSC51Un3vdX70r9iEitsqA1K63t/YgFccUQtt/UroORI8
 gbaZVesEkVpySAvrLr+ZxLjUVe3dukyjul41x8r7yLKFveJhVJxgzFg17L1JH7HETKVb
 cDLQDMsag6+BuTw6eobY8ShmaNGmOTYpnFtwNrxPKF2lvvVWZ5INfF8/MY6caqOEZSL2
 Ye6zQvzqBWRb17tEJnPLeak7Obi9afHqFu79AV4igYmSV8K323dQsA0UpeoAsYHg5tzt
 Kryqsrc9lqQlzy1F63Lns/djLraiPwLQs50Cx9vI4MtbmKGnYkO2IDrwa/0t7UdbendC
 PYJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=vH4NPiCLU7evHB+E7xCfaeXJAYfa3KeY6XJRC/M1pQQ=;
 b=aETxNTxNaue1qhEXiujVu4NI47JkNhH+Z7NoXotUVB8y8pHFEQeSI2RIEd35T6v49v
 00ARuKABqzjzHqUvcTAUSTxt+IFNgLmP2zcPNs+1mc53+gMte9pqEtb4R9OiEfrzb6Bl
 imvwks4j5aTpoeQhGStZcFHHIHA32BB7pA4uTCvG1w35mjlr1eRhYUi3ZYm3dzcsLRXl
 YkCZGrKDo+rSq6+v9K4jGHG8hlmpAp3WdaQJ1yAOOYWIOR4NOl3yrkAG9uUw0EP3snoX
 2a5w5ZCeb2NslD9v+xxapaxrtPPxZrZ+JIJpy0s84ntsAuVaCgybGtvZ8yZoyhDIMvhz
 7yrA==
X-Gm-Message-State: AOAM530SyBiproL2fj7lAVMcIPnosq5c7VqDlQt1jp+ECBlh8H9vkUhw
 1Wi5s7L4tLpHKYzHrzKv72zYHA==
X-Google-Smtp-Source: ABdhPJy9xU3r4l65PfMiVkn2LKSmg6ikqMXRhfqQGFiUU7W25GCBD0SlgcmefZoFQVTXGUHG7oRFmQ==
X-Received: by 2002:a05:6808:d52:b0:328:acfc:d274 with SMTP id
 w18-20020a0568080d5200b00328acfcd274mr8189424oik.174.1652716642349; 
 Mon, 16 May 2022 08:57:22 -0700 (PDT)
Received: from ripper (104-57-184-186.lightspeed.austtx.sbcglobal.net.
 [104.57.184.186]) by smtp.gmail.com with ESMTPSA id
 u23-20020a544397000000b00328b3d8a80fsm3826691oiv.50.2022.05.16.08.57.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 May 2022 08:57:21 -0700 (PDT)
Date: Mon, 16 May 2022 08:59:45 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: phy: qcom,qmp: Add compatible for
 SC8280XP USB3 UNI phy
Message-ID: <YoJ08Zd/a4g+Ia0r@ripper>
References: <20220513225348.1671639-1-bjorn.andersson@linaro.org>
 <20220513225348.1671639-2-bjorn.andersson@linaro.org>
 <8b47e106-a567-8d8f-ddd9-34b71211002e@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8b47e106-a567-8d8f-ddd9-34b71211002e@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220516_085726_248947_F48DAB51 
X-CRM114-Status: GOOD (  13.94  )
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

On Mon 16 May 00:11 PDT 2022, Krzysztof Kozlowski wrote:

> On 14/05/2022 00:53, Bjorn Andersson wrote:
> > The SC8280XP platform has a pair of 5nm USB3 UNI phys, add a compatible
> > for these.
> > 
> > Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> > ---
> >  Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> > index 8b850c5ab116..0a9ee5b7600d 100644
> > --- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> > +++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> > @@ -33,6 +33,7 @@ properties:
> >        - qcom,sc8180x-qmp-ufs-phy
> >        - qcom,sc8180x-qmp-usb3-phy
> >        - qcom,sc8280xp-qmp-ufs-phy
> > +      - qcom,sc8280xp-qmp-usb3-uni-phy
> 
> What about the clocks/resets/supplies in allOf:if:then?
> 

Of course, seems like I missed that part.

Thanks,
Bjorn

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
