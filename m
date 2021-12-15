Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ECEC6C433EF
	for <linux-phy@archiver.kernel.org>; Wed, 15 Dec 2021 20:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WXA0kKOqUV465k5IHaLLEdytnluRFJ1PHePrg0O5d+o=; b=OpJyY8IRit9Rfv
	0+EhbHAU652ZcV3G48H9+QLoUGpIWB1nrUvnMTuBHX+/4Iz/PM7w5w5BA9gZB6MzO+a35D9p8eHwE
	Rlwk1Wg2ToWOOalrxUvXjwhTBuc9CXeiIbmZorpWEG3NEzxGosLCx42tvq7P0DJK37l7gI2tiP5Ab
	+3DNqUNsuItp6h3pgjfSRpIJbLp4dgI9itvW17FDozBBprHoy/GgxPTQ5s7q1uc4qKZZ58UXTVnF6
	E5hibEjYr1yoYXegXe8zfEwvYqRuR0ScN4hPvE01+rueQ1AoTtzYsbH2P7mwQAdqGk6oIBgHiwMjy
	aV6yhGOLQl7ei3tTaNeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxaev-002Z1J-DS; Wed, 15 Dec 2021 20:13:53 +0000
Received: from mail-oi1-f181.google.com ([209.85.167.181])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxaet-002Yzx-BW
 for linux-phy@lists.infradead.org; Wed, 15 Dec 2021 20:13:52 +0000
Received: by mail-oi1-f181.google.com with SMTP id r26so33217053oiw.5
 for <linux-phy@lists.infradead.org>; Wed, 15 Dec 2021 12:13:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=zfzCek+ThaUW2uLQZROAUPM08wNkZ0c6WaVCXgKjYT0=;
 b=2lxcokSc4Flf4FU15Z9MyRebkHvdt0sd7ZZDL5Hu8EryDkbheikEYBqArq4C58OF5B
 85qMNN1+9X9pBxvLvz9jlH8Hzp4r1TeBco1et2WQemnTZOY1aa0gfjeoKyJI1YN4syrQ
 WWWzDI9O/iv8MyJy3J4taesMzdAd2GyWnEy8qhIggcdS8s1deQnOUyC0rMsdR6L+AWvt
 fQuDVPD7UtnuhtZxovR7NaQpxyzVt35S5SWin46lKAsJ+4a1CCHRE1MrdRkn7PTH0PoY
 qAV1ZzgdblmO4nRSdjF4kcSSTSCefZ+fGLKb8RWUmOilMovSiwfk7pN5Po42PT/59zNV
 0dIw==
X-Gm-Message-State: AOAM533Ehv/kpn08N6FaEQ+0GZ6wfPGdxYQd5UkWxngjD8mcvb7coXhe
 YimZLdUYSr2L5mvZ+qQyPg==
X-Google-Smtp-Source: ABdhPJzH8sjIBRBD/RV+Nn1jaJ95hQaD+3JUT+OhxcwHxcR2WIARiwZiHckydCgjgoiRR6MhcpVSog==
X-Received: by 2002:aca:280d:: with SMTP id 13mr1426751oix.61.1639599230059;
 Wed, 15 Dec 2021 12:13:50 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id s6sm576796ois.3.2021.12.15.12.13.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Dec 2021 12:13:49 -0800 (PST)
Received: (nullmailer pid 1760271 invoked by uid 1000);
 Wed, 15 Dec 2021 20:13:48 -0000
Date: Wed, 15 Dec 2021 14:13:48 -0600
From: Rob Herring <robh@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 Wesley Cheng <wcheng@codeaurora.org>, devicetree@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: Re: [PATCH 2/3] dt-bindings: phy: qcom,qmp: Add SM8450 USB3 PHY
Message-ID: <YbpMfKh4uAjRj5Ua@robh.at.kernel.org>
References: <20211213131450.535775-1-vkoul@kernel.org>
 <20211213131450.535775-2-vkoul@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211213131450.535775-2-vkoul@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211215_121351_416034_9AC0EB28 
X-CRM114-Status: UNSURE (   7.75  )
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

On Mon, 13 Dec 2021 18:44:49 +0530, Vinod Koul wrote:
> Add compatible string for USB QMP phy in Qualcomm SM8450 SoC
> 
> Signed-off-by: Vinod Koul <vkoul@kernel.org>
> ---
>  Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
