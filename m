Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF435C433EF
	for <linux-phy@archiver.kernel.org>; Mon, 21 Mar 2022 21:46:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iwkC7s3NNeSDAjKADNwgOXF7WvBfvJnPXNMtydeybt4=; b=mqWfRISKSa5bkI
	IfR79gfCXW+04V+OpWwNB9C8zvi6OIaVVQ+nM2ScE0Oi5vVNeb45hGLyIub1nj5aEpBoRZ39QY1ZD
	z4qecGzV6L4o8In3msFlQTtlBn0Qe5OFUY33QWZTUPU/3GkAF3/84e6fAlwC55wWPmC7kETL+YEAR
	8bw5jwlVRaPJbXoZXR+gMqZUOqAwfCEhOb2L3OQAcFXh9vYWTC7Iu3yqVjWy1Xuo7n8/tv75gKk8n
	S1EjUIJPUfC2JvSSVgA+Dde0vu4wvJbdTCjOIp8yUsSQbDdCJIhU9/qL65LWEzZu4u+t1OFY9kYvQ
	Dy/ECtrCoJGDKA/vSHlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nWPrV-009BGg-32; Mon, 21 Mar 2022 21:46:49 +0000
Received: from mail-oi1-f170.google.com ([209.85.167.170])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nWPrT-009BGP-0p
 for linux-phy@lists.infradead.org; Mon, 21 Mar 2022 21:46:48 +0000
Received: by mail-oi1-f170.google.com with SMTP id k10so6168452oia.0
 for <linux-phy@lists.infradead.org>; Mon, 21 Mar 2022 14:46:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=d+9QdUNzXb5pmLvt2FMBpD/un8EwCgivlwcq3BPgDKo=;
 b=0jiktLFc2+jkS/sLpFrn3E+nWvyIUVMfJYMDxbhqyrnQ9a17AtHV/Wz1IR+IL/JiYG
 9RDxqblISH8Xb2WaY9A6FeDhokt+hVOh4q56JEUVqaspPvrTIeVdgXJkDG8IuSRxpwd3
 THMOXJvKNVj3r1qqfB9IaDoVdjJJAPpHA0ohZLjvgLWlW6v1y0UGRdifOk0U8HvFzklL
 v+DjgC45Naco86e2IogRTng9Hdd/Y45pi2h1ArKNdG5W4vGMcqhYUrbWAdnIWSVUwD1b
 Fj5iAmrjdv9P/TrtQthe0ViwqRqHHYdFthMtOdK39P58BTNSLzZYR4k2VS49n3+JTMMD
 ckgA==
X-Gm-Message-State: AOAM530TacKfSCuZtJTewoW8FtgQxp6Esgs9YSyGw0FxFrJgjUVOf+uF
 JzQlJeio4n6tDap/bFZCLw==
X-Google-Smtp-Source: ABdhPJwwkIJLLXC6SDoKJ/5qk6FVBsTjioiC2WdygGpaGTYJC+hAJyGx9eyECCh80HYH74LiKhdVbw==
X-Received: by 2002:aca:2b0d:0:b0:2d9:dc99:38a2 with SMTP id
 i13-20020aca2b0d000000b002d9dc9938a2mr587534oik.198.1647899205635; 
 Mon, 21 Mar 2022 14:46:45 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net.
 [66.90.144.107]) by smtp.gmail.com with ESMTPSA id
 a30-20020a4ad1de000000b00320fccd02cfsm7405810oos.5.2022.03.21.14.46.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Mar 2022 14:46:44 -0700 (PDT)
Received: (nullmailer pid 594751 invoked by uid 1000);
 Mon, 21 Mar 2022 21:46:43 -0000
Date: Mon, 21 Mar 2022 16:46:43 -0500
From: Rob Herring <robh@kernel.org>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
 ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
 linux-phy@lists.infradead.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, devicetree@vger.kernel.org,
 Andy Gross <agross@kernel.org>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH v2 2/6] dt-bindings: phy: qcom,qmp: Add SM6350 UFS PHY
 bindings
Message-ID: <YjjyQzGGPEgsKDwJ@robh.at.kernel.org>
References: <20220321133318.99406-1-luca.weiss@fairphone.com>
 <20220321133318.99406-3-luca.weiss@fairphone.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220321133318.99406-3-luca.weiss@fairphone.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220321_144647_102224_9FE464C7 
X-CRM114-Status: UNSURE (   9.29  )
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

On Mon, 21 Mar 2022 14:33:14 +0100, Luca Weiss wrote:
> Document the compatible string for the UFS PHY found in SM6350.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
> Changes in v2:
> - add second hunk for clock validation
> 
>  Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
