Return-Path: <SRS0=lbOJ=IP=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C87FC433DB
	for <linux-phy@archiver.kernel.org>; Wed, 17 Mar 2021 20:03:58 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F3D4C64F30
	for <linux-phy@archiver.kernel.org>; Wed, 17 Mar 2021 20:03:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org F3D4C64F30
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Q3impNohhqiuIlxcoeKyCFoKqMPkSBHLQcFyY0ZPj4g=; b=FKg9gtVNKUM4fITSRLUozAVpq
	5kYyV/AMTN46EgpT/C2c9RVtJkkVfTOY91AkbrMulNhlor37NNYdmzuUMRkPyFGI0Ce7QfR5vtkCm
	D0ytNz+W/BPVYMSwux5SrwV46HIowwHngQLDBrS+czRv3WYk+okqi5dpxDHM7WedNjqnzs5whTM9N
	1S0htdQmX4grOC5+0RpIfFDOJ+2rLBGe4L9stvM9IEo9V0v0ygwz2rHB4kPdppQfbFOWnBJDpdwvU
	wqg4chpxuFTPPsgkxHpqkxZmB5lUhjHWIFu3BBYUkFqNYftFlzrMeFfhjj5b+FGWW2/z74kg7DarF
	UBKqrbi2Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lMcOZ-003qgy-Om; Wed, 17 Mar 2021 20:03:55 +0000
Received: from mail-pg1-x52d.google.com ([2607:f8b0:4864:20::52d])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lMcOR-003qgW-AA
 for linux-phy@lists.infradead.org; Wed, 17 Mar 2021 20:03:49 +0000
Received: by mail-pg1-x52d.google.com with SMTP id n9so266783pgi.7
 for <linux-phy@lists.infradead.org>; Wed, 17 Mar 2021 13:03:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=PMZcSuGazFdtOb5qvPexbIVWGQzVKNMJ7ZZH0Yf8cCs=;
 b=Da5G1yif8DdX+8w8KJ4dBsTTgesPOgdGFV0u/nK8pyzOMYg0odPKBeOlgKoMOsygW7
 qVSetOn7sBkEyflrN/a9gL/N0QuUrqlTUCAp8EdYTeab0g8HXgQcb/S59tsABZn3zSkD
 W9LwL8oqfKGiHN+4ts8NEL9k/OwvdJPSWioqA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=PMZcSuGazFdtOb5qvPexbIVWGQzVKNMJ7ZZH0Yf8cCs=;
 b=FsnPhpmMI5zxZy2v2W3tx280Pyj5GAvz6ntvgBY9L1XphkMjl4xov5aAXCR+GpcDMA
 d3xUV689pi3vCNHrIacfKch/wKDyY1EUFsx+Rsl7xk2aK8I8RcTHdG8EhDGpLhtn6mZH
 VwtoX5l0jS4kffXRpiVbFyw9XV08CnapG09hXeG7ayXMxH/1Nt2qDIYGG99tFpvV2lSG
 69oZ/rgORLYWO3on4pFRHmyGrMsez1Ir2BlIHvrqfELIO0RtHV7l5WGiYGspry6iTA+3
 WmcOvRqLF2EwP3Trh13O2iYkIUEhtGOiOfPSfGNZu8x68RLKKzinTnCg3fO1HVPEvy4K
 aS6A==
X-Gm-Message-State: AOAM533bXd50PyqTzL3q6XE+ufO8vNkM1RsemuDiqNof5+o5tRsuXXOT
 nTaW+mFMNpLDb+F72QnDQ2bkWA==
X-Google-Smtp-Source: ABdhPJxhKXf2juJqtE1bn8z/X2ECPS65c7/sTPzGQLSiMoHGnctCifHOfFffOrE0CYg/TSWJVVotJA==
X-Received: by 2002:a63:4c4e:: with SMTP id m14mr4065710pgl.35.1616011424752; 
 Wed, 17 Mar 2021 13:03:44 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:3cf8:6a09:780b:f65d])
 by smtp.gmail.com with UTF8SMTPSA id q15sm3870178pje.28.2021.03.17.13.03.43
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 17 Mar 2021 13:03:44 -0700 (PDT)
Date: Wed, 17 Mar 2021 13:03:42 -0700
From: Matthias Kaehlcke <mka@chromium.org>
To: Sandeep Maheswaram <sanm@codeaurora.org>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Wesley Cheng <wcheng@codeaurora.org>, Stephen Boyd <swboyd@chromium.org>,
 Doug Anderson <dianders@chromium.org>,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-usb@vger.kernel.org, Manu Gautam <mgautam@codeaurora.org>
Subject: Re: [PATCH 2/3] dt-bindings: phy: qcom,usb-snps-femto-v2: Add
 bindings for SC7280
Message-ID: <YFJgnnoOxI7n0HPL@google.com>
References: <1615978901-4202-1-git-send-email-sanm@codeaurora.org>
 <1615978901-4202-3-git-send-email-sanm@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1615978901-4202-3-git-send-email-sanm@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210317_200347_573427_3AB22182 
X-CRM114-Status: GOOD (  11.97  )
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

On Wed, Mar 17, 2021 at 04:31:40PM +0530, Sandeep Maheswaram wrote:
> Add the compatible string for sc7280 SoC from Qualcomm
> 
> Signed-off-by: Sandeep Maheswaram <sanm@codeaurora.org>
> ---
>  Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
> index ee77c64..20203a8 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
> @@ -16,6 +16,7 @@ properties:
>    compatible:
>      enum:
>        - qcom,usb-snps-hs-7nm-phy
> +      - qcom,sc7280-usb-hs-phy
>        - qcom,sm8150-usb-hs-phy
>        - qcom,sm8250-usb-hs-phy
>        - qcom,sm8350-usb-hs-phy

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
