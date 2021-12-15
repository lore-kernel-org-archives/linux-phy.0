Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ADFCCC433FE
	for <linux-phy@archiver.kernel.org>; Wed, 15 Dec 2021 21:37:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FvXW1TuiLnF6p4z1+2RQ1YgeWGG2UJxCBdBKQZEdzac=; b=zzQDHB7UEL62sl
	4cYwgoEZBUWmV4Q6TGWlljwFIl5AGNZmsvww3yV0dz/KokH2B1uu3RLL85j4V6FHJWSfxBz8XYvRG
	RTtVfVrR6269u4IJTw2L2JX/se4pWyL4ZoGqephICmf3poUT0vrjXJTDZ17M1m4/Uviwo5xuKWKAr
	2HzvgvswN+aafVoIJpbh9ASb2yPzMRa6XbvEAXcphSHT8vpEvU6EgLL5HVaKGtKz5BeIX8bf8r9DK
	oIwUJEgMNOrBfeLQgNYUxAVwRcYQTlg5ZBQ8gjl00Xzolq7LV3WCP51p5JEzwxPAEA+/205QcPpMV
	qbi/w5eDHLHweTMCmjqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxbxy-002ofF-6t; Wed, 15 Dec 2021 21:37:38 +0000
Received: from mail-ot1-f42.google.com ([209.85.210.42])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxbxv-002oeT-MA
 for linux-phy@lists.infradead.org; Wed, 15 Dec 2021 21:37:36 +0000
Received: by mail-ot1-f42.google.com with SMTP id
 h19-20020a9d3e53000000b0056547b797b2so26514044otg.4
 for <linux-phy@lists.infradead.org>; Wed, 15 Dec 2021 13:37:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=HjJ54UfO9E48NaUzn6T4uGICKfYei5YmhLn1HLnxei0=;
 b=oevtAUGIVCYRO7S77On7Xuxo1Ga9bGpn80+oRecZktMowHY+h5TsX/tXKMZN+CffkU
 lVKvp3LFDorBKeLczZfhcbUcc+gB7ri3LPs8WBQOEhGyHgbisaJxvCsd+WUeaNOHpZvQ
 +ZubJ5vbpqxctlOO/Og3z8NxiO6F/Ux9WViCs2wYVNCz8tv8lheCpLiwgX6R1dNEhhfh
 fnGZkNC4gwQE8UQ4v/zzz07tLrmJzR4FJ8kSZJjB4V1rKMbEHv/Aje/4v43a/t+JE9Ei
 dIwUgUlez1vsqRAjviTmfbZvKL51UwTfxkmPkyRHhFyrKlXlibZUoCp7tIy1ZnT8kw7+
 J7oQ==
X-Gm-Message-State: AOAM5307qHljMzPB7II+GN19+Zc1Oev5mhhy3/2kI2YXs9F+4Cn8niqW
 9/ydHoGUICMyXMGx0I80ZQ==
X-Google-Smtp-Source: ABdhPJwMAB4wXEDQFwp8uOUqy66XNIW/wZPJYaEb/Pnk0gGjp9pan3xBLCiOJJuZnWugB2wb3ufiPw==
X-Received: by 2002:a9d:2085:: with SMTP id x5mr10603941ota.228.1639604253092; 
 Wed, 15 Dec 2021 13:37:33 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id m6sm673216ooe.24.2021.12.15.13.37.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Dec 2021 13:37:32 -0800 (PST)
Received: (nullmailer pid 1883288 invoked by uid 1000);
 Wed, 15 Dec 2021 21:37:31 -0000
Date: Wed, 15 Dec 2021 15:37:31 -0600
From: Rob Herring <robh@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Bjorn Helgaas <bhelgaas@google.com>, Andy Gross <agross@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Stanimir Varbanov <svarbanov@mm-sol.com>,
 Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
 linux-phy@lists.infradead.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, devicetree@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>, linux-arm-msm@vger.kernel.org,
 linux-pci@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Vinod Koul <vkoul@kernel.org>
Subject: Re: [PATCH v4 01/10] dt-bindings: pci: qcom: Document PCIe bindings
 for SM8450
Message-ID: <YbpgGwe7H2d/oinZ@robh.at.kernel.org>
References: <20211214225846.2043361-1-dmitry.baryshkov@linaro.org>
 <20211214225846.2043361-2-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211214225846.2043361-2-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211215_133735_749810_F41F07EC 
X-CRM114-Status: GOOD (  10.21  )
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

On Wed, 15 Dec 2021 01:58:37 +0300, Dmitry Baryshkov wrote:
> Document the PCIe DT bindings for SM8450 SoC.The PCIe IP is similar
> to the one used on SM8250. Add the compatible for SM8450.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
>  .../devicetree/bindings/pci/qcom,pcie.txt     | 21 ++++++++++++++++++-
>  1 file changed, 20 insertions(+), 1 deletion(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
