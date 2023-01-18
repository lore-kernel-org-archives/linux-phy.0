Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 479CFC32793
	for <linux-phy@archiver.kernel.org>; Wed, 18 Jan 2023 16:36:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VzvlaevemYXcLJd7hOJ/syXMZ4TnAKftjR0PbYm2Ceg=; b=lkCA2cuond8x/2
	MhXEPhldE7ND+Q84R9BcW9rR9jSI7gCJ+9OmGPmATiSwyueueSke8XA+M9JaabY4Vz874kDbw+wS/
	JwxZ5qhcNFw12qZ69zwB6ueJ9LYubkbH1mu5n+8lete/eXkTSItoC5lp7MsAjARfYInBUlb5JQ00J
	vItwAq2Ohw1EjfHb06YS56qD9/CJ6RatjTjSg87k1dyolH7sG5NDhoBdoMvQvbrzwIs67rZwbuWAp
	fWAVans5n0NWNEpLr/mw/gSfkKKcCOZ9ARsHxbKvYCbvfeQlh9DPnkgj2tXV9YiVEFnhzWC2kW7e0
	ehWD+VjSOAyY9QMPCuwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIBQl-001rcc-K4; Wed, 18 Jan 2023 16:36:55 +0000
Received: from mail-oa1-f43.google.com ([209.85.160.43])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIBQj-001raZ-CO
	for linux-phy@lists.infradead.org; Wed, 18 Jan 2023 16:36:54 +0000
Received: by mail-oa1-f43.google.com with SMTP id 586e51a60fabf-15ebfdf69adso18625707fac.0
        for <linux-phy@lists.infradead.org>; Wed, 18 Jan 2023 08:36:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ITuX+8zwC5q8D34a6fPDAXRGD1lwZVV/MYd3Iiq3SsU=;
        b=V3kYbBAEupCnDVBDUQC0QdQRZ4lAy2kHmjtz3vL9+g4NtSVDFlOiaWQ/m9YYA3YvKM
         Ht3a1tPavyz+hlifaqSeZ9lDx/AYYXalU7B3fL02w/CMF6JLV1v7W7DeG+GoS8i2xkDX
         cOZ+tWhAg5T8L+cH+mJfH0TSZz24E+0zHot7uOzfy2rTGdmn7UGmun7kVnsQEiWKjlA7
         yxAxmTeTACrImu5XBhuPV/WSPIlCqRDLEU2+ETJSuXImdesRWIrh4QFTH41AhK0bLibW
         DAJ8dotI3OaD+p5Xmn234cj7CVUPOMUr/GZD3l7Vfq8GHxuJjohCuVxwOZ3TMHcAs2MS
         OY/A==
X-Gm-Message-State: AFqh2kpgcAFCmLKatrTGa/ykYfsxS0Qbb2HYYUeBF00MJ0Uzr0bIJ4jf
	Ku2Iga8mG16PL3Nz4i76TA==
X-Google-Smtp-Source: AMrXdXsqZ/WJDE7Vhs5jZ+/7JgHJqm/DqA/cAwKCbqtzxw33WJ3zGvkaRr5YXeMSYofR80ZjvdJ68w==
X-Received: by 2002:a05:6870:bd47:b0:15f:11f9:a1fb with SMTP id og7-20020a056870bd4700b0015f11f9a1fbmr4143535oab.1.1674059809653;
        Wed, 18 Jan 2023 08:36:49 -0800 (PST)
Received: from robh_at_kernel.org ([4.31.143.193])
        by smtp.gmail.com with ESMTPSA id el35-20020a056870f6a300b0014474019e50sm18311258oab.24.2023.01.18.08.36.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Jan 2023 08:36:49 -0800 (PST)
Received: (nullmailer pid 131535 invoked by uid 1000);
	Wed, 18 Jan 2023 16:36:48 -0000
Date: Wed, 18 Jan 2023 10:36:48 -0600
From: Rob Herring <robh@kernel.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: linux-phy@lists.infradead.org, Rob Herring <robh+dt@kernel.org>, Andy Gross <agross@kernel.org>, linux-arm-msm@vger.kernel.org, Kishon Vijay Abraham I <kishon@kernel.org>, Bjorn Andersson <andersson@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, devicetree@vger.kernel.org, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, "vkoul@kernel.org" <vkoul@kernel.org>, Johan Hovold <johan@kernel.org>
Subject: Re: [PATCH v3 1/8] dt-bindings: phy: Add QMP PCIe PHY comptible for
 SM8550
Message-ID: <167405980798.131477.17272900590548498744.robh@kernel.org>
References: <20230118005328.2378792-1-abel.vesa@linaro.org>
 <20230118005328.2378792-2-abel.vesa@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230118005328.2378792-2-abel.vesa@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230118_083653_436704_0C07027F 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
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


On Wed, 18 Jan 2023 02:53:21 +0200, Abel Vesa wrote:
> Document the QMP PCIe PHY compatible for SM8550.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  .../devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml     | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
