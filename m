Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6D91ECAAA1
	for <linux-phy@archiver.kernel.org>; Mon, 31 Oct 2022 21:35:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HOFSEb7cHYPa3PXMAbHnArMUQL0TnYOPJtL7uT6BzSI=; b=uiFGbzZ/2mJ7lc
	KPa0GEB3lZtEEJMc0wmMPdWOqIG8Hts5rvp29Apu3OlL8jj52Jj/4eWWJmU4kWyKc0wiAr6ucQ2SV
	JYdFRRbNWcFDMoTtSMvFKcmrRm07wzNt/fXLu/7jkj8CpjMN/56Sm9VGzMjxRFsiPcjeUizTNe+C/
	63Af1lfDLqvTkI+dj5inyzxEic9Ry4nNjkGzIL5+UjbAs+oei675RHAnjpunwUCwg1Mrvimic3WiW
	CK/wWaJEtdPN9Au3OERbG8c0zk3/zJOqrY2soDIxI5Ri+9RzK+JiJwoRx8vg98ku3+tfC7FlO/C/x
	iQbFxThejYIoAekRueGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opcRi-00FeIg-9i; Mon, 31 Oct 2022 21:35:50 +0000
Received: from mail-ot1-f42.google.com ([209.85.210.42])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opcRf-00FeH6-R5
	for linux-phy@lists.infradead.org; Mon, 31 Oct 2022 21:35:49 +0000
Received: by mail-ot1-f42.google.com with SMTP id k59-20020a9d19c1000000b0066c45cdfca5so3066138otk.10
        for <linux-phy@lists.infradead.org>; Mon, 31 Oct 2022 14:35:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=U+/zgHOS0Ou1UV4VzQv0RccN8iu9tqxyYtVPteOxY5g=;
        b=P98EjhFOmf/AXOwWxLfdTHS1a44RFc9ws2ZqRJCuF0qoDv0qhB0QV/Fu+Suhz5cTJg
         otMs4jim//sYEtZw/7XxHhQ2gyxYY8KnwfbGgttHxOimv1uW+Otis7u0BPKIN/Qy2Mt8
         gE2Eke3W7F9ntI2sh9fDx2iJNkCTDUs+iOwPKW2SKVijYHsHsvU8f5snxHb95Wdgb8JC
         VO9GVwAhuyZeEmCyqmwkCIkF6kF0nuD7fFgv+6ElFkjcH+23oHlEgsEApiVdlaGkde/2
         J3z5fkbFm7gDdOUvo8lmBD2ElUhuwRCb7tyniPsqGD5kBbeeDPdxWB+nr32Wrfa6wOGw
         K4fg==
X-Gm-Message-State: ACrzQf3DF/qx0ibg6e4ron8BNBYPRs1my8Ucv8UtdbGeMP8N2GtM6ujc
	kkQZ57mo23El/ppYSESWPg==
X-Google-Smtp-Source: AMsMyM72rdo/aoWJur3C5dAMhoEQwG8HKWvr8NuIFDI13Uf6ox91SAsgLi3VAkbfir4Vdo8AvdftmA==
X-Received: by 2002:a05:6830:3156:b0:661:e5d1:725d with SMTP id c22-20020a056830315600b00661e5d1725dmr7783335ots.312.1667252145823;
        Mon, 31 Oct 2022 14:35:45 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id z13-20020a056870460d00b0013c50b812a2sm3586826oao.36.2022.10.31.14.35.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Oct 2022 14:35:45 -0700 (PDT)
Received: (nullmailer pid 3612387 invoked by uid 1000);
	Mon, 31 Oct 2022 21:35:47 -0000
Date: Mon, 31 Oct 2022 16:35:47 -0500
From: Rob Herring <robh@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: linux-scsi@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, jejb@linux.ibm.com, krzysztof.kozlowski+dt@linaro.org, linux-phy@lists.infradead.org, robh+dt@kernel.org, martin.petersen@oracle.com, quic_cang@quicinc.com, konrad.dybcio@somainline.org, andersson@kernel.org, vkoul@kernel.org
Subject: Re: [PATCH 06/15] dt-bindings: ufs: Add "max-gear" property for UFS
 device
Message-ID: <166725214647.3612331.2799684267401119391.robh@kernel.org>
References: <20221029141633.295650-1-manivannan.sadhasivam@linaro.org>
 <20221029141633.295650-7-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221029141633.295650-7-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221031_143547_897231_F68A7A46 
X-CRM114-Status: GOOD (  10.04  )
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


On Sat, 29 Oct 2022 19:46:24 +0530, Manivannan Sadhasivam wrote:
> The maximum gear supported by the UFS device can be specified using the
> "max-gear" property. This allows the UFS controller to configure the
> TX/RX gear before starting communication with the UFS device.
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
>  Documentation/devicetree/bindings/ufs/ufs-common.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
