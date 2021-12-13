Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB809C433F5
	for <linux-phy@archiver.kernel.org>; Mon, 13 Dec 2021 22:51:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BiKV4EbGwxdvBEfWEndJi1a2V3AXz1I4INAh9xS3ZR8=; b=esnHYLY9awekro
	qtEdWOl0WBDd8t4s07T4qdBgkyv6VCUTYwSZlMLZ5JH4SrKLh+4dWhwc7Faj6i3AMm6SfMlK+Cvb/
	VTzIQsJMXXi4W7bskQfcniQ+9d2vclaD6ZDhsdpcrWuMNLoIxkwLf+0aBadvEWioNRCSMh4feunSE
	RYe9yUqDyNtav8EqL/t+puTsx7USitWNVf3IZJ1YUKeGgXQrDRySv1zcR/sSNPkEszwreq6OIxXVs
	rtEP9LTRoSKDqKw0BEt4x6DXZQQcfM0YcXe2hxxXWrV6nuPn91U30AZhqa4N6Wd8tUPsfwxiM4jdY
	mKC5JtxjUrOe2kdMD8lg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mwuAT-00Brx0-8S; Mon, 13 Dec 2021 22:51:37 +0000
Received: from mail-oi1-x236.google.com ([2607:f8b0:4864:20::236])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mwu4L-00Bq6O-QE
 for linux-phy@lists.infradead.org; Mon, 13 Dec 2021 22:45:19 +0000
Received: by mail-oi1-x236.google.com with SMTP id t19so25148849oij.1
 for <linux-phy@lists.infradead.org>; Mon, 13 Dec 2021 14:45:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=ZAGpupmE58tiiF1IrnuYNItgVr/me2iTuZtboJFJyj8=;
 b=ozfZXbnFnFpMaeH1yXfAvcBVuAkg94fLSzFhtWeD/Y7zPBhjx1irHgrtMkv61pS6ej
 lyGHHzB8MMAq4iZyvnMUBPyA0ZoRI/UJmwwIc3wirCywPC5QTkF7QafmspTXPDo5jGHL
 mIqAj9llTuzi2n3tPBkza+3uaegZDhqkUGBtx6VADne0o8FEOp42DKZEuy1uuQcvZdZ2
 gUrKZYtLrgDgx1ajzC5+2I5Gu8KdYr924DcyOBsQynG8mEoyePkzqIGlemuRDYt4RIRJ
 ghHvh5b8inCTmGXMQouGJTTLojltm7HZNENY7RkAioSz1ppXk8wyHZpgRQT4fnmS5P/t
 qarw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ZAGpupmE58tiiF1IrnuYNItgVr/me2iTuZtboJFJyj8=;
 b=8SFkLJ1eHewhdLqP4WZ69lmd9z1hF3gBbTfpUmi50nd3cuI4fOL6AP3LSlE2BhGsHZ
 1QOiwewnsV8KlgazsG89l0QoIfK+sOncI8FR8GCB3VEqn8O5y1iJKgfuhf9Z1b3NON7U
 IpkrkHLTZh0tNyROff6VQP2kfRR62SnMrk0H5Oc/7+UTY9HaIvxzbQYmHZdjkLF9g1er
 coW2a7p10YtmdAW1k1jiU2icGHiecNsofCIAOzgRf/QnoBmWr6zec+ffGO1weOfcveHj
 /S11e3QfOYfYb9jJpkzH/RL+Ri2Cd4/wUpG32cGAM28SnE61cSJk73mUOQ64WnSOvC+z
 bKYw==
X-Gm-Message-State: AOAM532O3ijOUB8eB7v/2jCuyfrAmysj3Qwf6EJnk+7HsDIFy/vdJqCo
 B7zhAIMtN72nb0cT2yfjv57xqpR4dD8IjQ==
X-Google-Smtp-Source: ABdhPJwpK+XmytwVOGn9TpyTH03MBGU917LNMYGWdZGosJtWbvnRo2z05N8w+/p9Vis1JRwyfQJjkQ==
X-Received: by 2002:a05:6808:114:: with SMTP id
 b20mr1212242oie.95.1639435516005; 
 Mon, 13 Dec 2021 14:45:16 -0800 (PST)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net.
 [104.57.184.186])
 by smtp.gmail.com with ESMTPSA id t13sm2936066oiw.30.2021.12.13.14.45.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Dec 2021 14:45:15 -0800 (PST)
Date: Mon, 13 Dec 2021 16:45:10 -0600
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Wesley Cheng <wcheng@codeaurora.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: phy: qcom,usb-snps-femto-v2: Add
 bindings for SM8450
Message-ID: <YbfM9uqXGDcQZ7xS@builder.lan>
References: <20211213131450.535775-1-vkoul@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211213131450.535775-1-vkoul@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211213_144517_904384_38493FF9 
X-CRM114-Status: GOOD (  11.89  )
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

On Mon 13 Dec 07:14 CST 2021, Vinod Koul wrote:

> Document the compatible string for USB phy found in Qualcomm SM8450 SoC
> 

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

> Signed-off-by: Vinod Koul <vkoul@kernel.org>
> ---
>  .../devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml          | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
> index 20203a8a9e41..0dfe6914ec87 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
> @@ -20,6 +20,7 @@ properties:
>        - qcom,sm8150-usb-hs-phy
>        - qcom,sm8250-usb-hs-phy
>        - qcom,sm8350-usb-hs-phy
> +      - qcom,sm8450-usb-hs-phy
>        - qcom,usb-snps-femto-v2-phy
>  
>    reg:
> -- 
> 2.31.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
