Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E07FEEAA74
	for <linux-phy@archiver.kernel.org>; Thu, 14 Sep 2023 20:48:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V8qhLxNW/99wFpWrgOFQW+J0DC5EhCh8uK8uCmwOqco=; b=lUlPghCPn+1IgV
	YGpn0eQY+lyPVqh3XJYAEV5b4F7dzXL0K0UvnQxX91Sloh2Z3hm1MKGqREFwJhu7QeOpH3ET1Zeww
	rSl47kS7WMrGFxCZztpknWD37N18/sIg2jUzZjcNblX5FMxtER0taZxIiNDMcd1F9kx4EsFdBQzfJ
	PjMIC+MmOGTnIr0Mii3OHvrvGTURb42tCSvvFuH4uFF9Wq8yHBYAgsd6qEphbY66HyUQZDyzXY+cK
	OYHl+sC2RgHDtx2H/gJLjOQPiUSC1upmRl8s5VO4W2IdD9CquxUeePNtzsrWzwIIENpAinqgpNh6v
	DSb22h+E8t2lxDuYbByg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qgtG5-009FkY-1s;
	Thu, 14 Sep 2023 20:48:17 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qgtG3-009FjU-1c
	for linux-phy@lists.infradead.org;
	Thu, 14 Sep 2023 20:48:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1694724491;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=p0cINci3mtMHjJpwA+Xu4ty52yxZbAV2eaOQYrtaV0U=;
	b=JGhoH9Q7dh62l8a8a4Uf5Xo58bCE/3dsdH/YMuqMBxomMfCDL8QEZWnvHlI07fVjoMmP6f
	yMTyUe01n9qzwD+357liYyYEaA7upP3raffTuWGVrjIfs2vMX5iW73HFOPWKeLl9a5ocjD
	/dBnFRiHEvYnoh9vyNlZ7hjm8mnANJA=
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-103-rbgOyJ2KPgO67Nvs7gykkQ-1; Thu, 14 Sep 2023 16:48:09 -0400
X-MC-Unique: rbgOyJ2KPgO67Nvs7gykkQ-1
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4120af3b5b8so12510431cf.0
        for <linux-phy@lists.infradead.org>; Thu, 14 Sep 2023 13:48:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694724489; x=1695329289;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p0cINci3mtMHjJpwA+Xu4ty52yxZbAV2eaOQYrtaV0U=;
        b=c3153khF3hS6PUuj5cejgB7YbZ33hBoYsX91tnqvN1v28j4n+zbTqdHeCid1CU9HSG
         Qa+dxWZR+FJcP1IfMsvFnnw7wjmb+Pz7aRp3506ieOVkPgIwRvWPa6r5nPoakkBT0dQ5
         5srhf+/1nSfbxaZ0lQdN5sJz8cKXvrrpripVMw/C39FdFL2RCaoLnB2hxsFofnXJaJdI
         zv+8N5Q9kMVxIVq3Glzke40s8AHBPNsKEGPzdlb5IKNhSVNg+Q+zhkFeIkGLJr6tGMDa
         JIN8v7JH6d95Ac3eK5muTwy7wCi6Je8FAnetnF12keMljfWFPypzxZwLbkVladmSBTWv
         0SVA==
X-Gm-Message-State: AOJu0YwhVnO1Bp3q6s83p6fQcSer0jo9slYxQvk7NGl557sUZB+HerVs
	OZSIPMEPBpStm1hI6I2QpAA5iPuNSfqwle28Vu4zGKu1EUPP1IwT9IwyVGj+UXRF56dq9+1hgiC
	lExyO7THFUjH21vuwyTnjHcNf1A==
X-Received: by 2002:ac8:7d96:0:b0:400:9f2c:1211 with SMTP id c22-20020ac87d96000000b004009f2c1211mr3750905qtd.29.1694724489241;
        Thu, 14 Sep 2023 13:48:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGxac/nHgytRhBDqmqy3prk+SQnWQwVFo9KIB3TJ1fDKpfJ7JHzzP7ElCf4uookycGB0ZhQkA==
X-Received: by 2002:ac8:7d96:0:b0:400:9f2c:1211 with SMTP id c22-20020ac87d96000000b004009f2c1211mr3750885qtd.29.1694724489001;
        Thu, 14 Sep 2023 13:48:09 -0700 (PDT)
Received: from fedora ([107.171.218.122])
        by smtp.gmail.com with ESMTPSA id t27-20020a05622a181b00b00410957eaf3csm685689qtc.21.2023.09.14.13.48.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Sep 2023 13:48:08 -0700 (PDT)
Date: Thu, 14 Sep 2023 16:48:06 -0400
From: Adrien Thierry <athierry@redhat.com>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Shazad Hussain <quic_shazhuss@quicinc.com>,
	Vinod Koul <vkoul@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v2 0/2] phy: qcom-qmp-usb: fix initialization of PCS_USB
Message-ID: <ZQNxhhI120MGYKbX@fedora>
References: <20230828152353.16529-1-athierry@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20230828152353.16529-1-athierry@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230914_134815_631656_4ADE3880 
X-CRM114-Status: GOOD (  16.57  )
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

Gentle ping for this series, is there still anything preventing it from
being merged?

Best,
Adrien

On Mon, Aug 28, 2023 at 11:23:49AM -0400, Adrien Thierry wrote:
> This series attempts at making sure PCS_USB registers are properly
> initialized. I tested it on the sa8775p. AFAICT there's no noticeable
> change before/after the patch series: lsusb and dmesg output are the same.
> USB is still working properly. I don't know what those PCS_USB registers
> do exactly on the qmp PHY and I don't have access to the PHY datasheet, so
> it's hard for me to tell the impact of them being initialized vs not.
> 
> v1 -> v2:
> - Don't fallback to pcs for PCS_USB initialization (Dmitry Baryshkov)
> 
> Adrien Thierry (2):
>   phy: qcom-qmp-usb: initialize PCS_USB registers
>   phy: qcom-qmp-usb: split PCS_USB init table for sc8280xp and sa8775p
> 
>  drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 24 +++++++++++++++++++-----
>  1 file changed, 19 insertions(+), 5 deletions(-)
> 
> -- 
> 2.41.0
> 
> 
> -- 
> linux-phy mailing list
> linux-phy@lists.infradead.org
> https://lists.infradead.org/mailman/listinfo/linux-phy


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
