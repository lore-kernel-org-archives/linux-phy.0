Return-Path: <SRS0=CyPL=LR=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3C4D8C49EA5
	for <linux-phy@archiver.kernel.org>; Wed, 23 Jun 2021 03:38:04 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 13759611CE
	for <linux-phy@archiver.kernel.org>; Wed, 23 Jun 2021 03:38:04 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 13759611CE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WRpajY0VMeDrZdwnrXB4fQswgLqY9JcKYfNAQhjL5vk=; b=BsDx7RAE6iAIFl
	qZZk4QJC6T6jpc51bygOmpzl2q/oZfbuJXYQax73xKVui3xsY50gt9aRrOz2NbbpN9X2CNLPpmyhh
	zbdeGEWdXOjBgGwNVLOZzWi6lmVAhP9fZhxSRp8ETYD4U6dcoYWCsMBJtiIR6FPfzt+4goPVRXLX5
	YLq82epa/c4g/w53xzKH4XjG7Zmg0eNFVy9W4QrU+6NwTera1bv3bxWtyelN0rso7r6gkumWA+YMA
	0Oe9fu3AfKD5WR9ptMlaT0clvfG+TRdaoGBkFvdskxGh/8FvBdtxg/zEjfrToJXayID27ypbB3BoB
	Sfc6RXxYoLAO/+iihXaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvtiF-009BUU-Jg; Wed, 23 Jun 2021 03:38:03 +0000
Received: from mail-ot1-x32e.google.com ([2607:f8b0:4864:20::32e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvtiD-009B9P-2Z
 for linux-phy@lists.infradead.org; Wed, 23 Jun 2021 03:38:02 +0000
Received: by mail-ot1-x32e.google.com with SMTP id
 n99-20020a9d206c0000b029045d4f996e62so600565ota.4
 for <linux-phy@lists.infradead.org>; Tue, 22 Jun 2021 20:38:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=NDeQnIVv2I2xWC2rTkdE3rAvheRucQaheIz+92aDMhg=;
 b=wqH5fv+pnNN/ZQfOLvll5P2lZRBk06ExdzIMsXlWDFQdcF/KddF0+raFxrNd7XfZ/A
 LR9DCeioQ8ZbZJmiH1ijipre5ZkLuK/ZOUkwuNGVkkjjNIa41jbrtx7bLznx0ZiAwfHI
 N1Mxzl7H2D0x+ImfaqE8qGA65/P1vcItVQrQyOQUWNTe3SYiPlThvlVpdoOgz3kdoWbg
 MwkoNMdLsQN2oWbTB8XEPDeA+jqQAO9eL/n5r/K7WMACXiODRYK0TRYV+VYMtA9ySLV8
 m+o/0wPP/CPd3/iOw3xjGgcoEGjcOHkm2mw9feKJAry3UkXDBk1N9AZbt8krRfezaTOX
 aqLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=NDeQnIVv2I2xWC2rTkdE3rAvheRucQaheIz+92aDMhg=;
 b=J8SklDvTIEGpQ5bWiCc7wNAePbcRfaQulEw9Ye/AS1inlkjdW+Ypf541rYIO8DhgDq
 WD8HjaAitskD6qKdy7UGzrNDer3lg+6kmC2Slmfu4MUXt9QZynD+dWfXAkc1/ZsRfMYZ
 /uKOUBNkcegM0UFc+eGptsxTdIkdf+dGC8g4DK87mh/D4GZ8oGJser+4VVvDYCP5fniE
 j4GUtyuY6qwunln+l/v28YjLd6DAEl0ETLNUVOAepbGe5S2UtdvNt718NNSQszvjK5cL
 ZABN9/0HMI4gbnCYe1WreDVbt2CFkx5RT4998nik6spp3qdOWb5PkDfdjYI2DDQuP4Ap
 GhIQ==
X-Gm-Message-State: AOAM5328wPLUvfSXyvmEo1fHjaIWJZRXovDjzm1G6LeVKwk/Ftf4XkQu
 2t35clq8NWQWPOF99bMKbO30Dg==
X-Google-Smtp-Source: ABdhPJzvBiULY4+NEyotaX+PAjSwSpdfraIWd59ttxXH0ID7xSAg/qWrc7Q1FPhDn+rmNIS2DMQtpA==
X-Received: by 2002:a9d:3e15:: with SMTP id a21mr5971483otd.366.1624419480109; 
 Tue, 22 Jun 2021 20:38:00 -0700 (PDT)
Received: from yoga (104-57-184-186.lightspeed.austtx.sbcglobal.net.
 [104.57.184.186])
 by smtp.gmail.com with ESMTPSA id r14sm4641240oie.43.2021.06.22.20.37.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Jun 2021 20:37:59 -0700 (PDT)
Date: Tue, 22 Jun 2021 22:37:57 -0500
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Iskren Chernev <iskren.chernev@gmail.com>
Cc: Andy Gross <agross@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Manu Gautam <mgautam@codeaurora.org>,
 Rob Herring <robh+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-usb@vger.kernel.org, phone-devel@vger.kernel.org,
 ~postmarketos/upstreaming@lists.sr.ht
Subject: Re: [PATCH v1 2/3] dt-bindings: phy: qcom,qusb2: document
 sm4250/6115 compatible
Message-ID: <YNKslaqcVwSxR4/v@yoga>
References: <20210622203240.559979-1-iskren.chernev@gmail.com>
 <20210622203240.559979-3-iskren.chernev@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210622203240.559979-3-iskren.chernev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210622_203801_164452_1C30888A 
X-CRM114-Status: GOOD (  12.61  )
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

On Tue 22 Jun 15:32 CDT 2021, Iskren Chernev wrote:

> This compatible string is for the HS USB PHY on sm4250 and sm6115
> platforms.
> 

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Regards,
Bjorn

> Signed-off-by: Iskren Chernev <iskren.chernev@gmail.com>
> ---
>  Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
> index 9f9cf07b7d45..70258540676a 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
> @@ -23,6 +23,8 @@ properties:
>                - qcom,msm8998-qusb2-phy
>                - qcom,sdm660-qusb2-phy
>                - qcom,ipq6018-qusb2-phy
> +              - qcom,sm4250-qusb2-phy
> +              - qcom,sm6115-qusb2-phy
>        - items:
>            - enum:
>                - qcom,sc7180-qusb2-phy
> -- 
> 2.31.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
