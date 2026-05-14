Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1270ECD4851
	for <linux-phy@archiver.kernel.org>; Thu, 14 May 2026 10:52:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8iSg/WcXs06V8a3nlgn5StMhWStl2CCVDx1/fuWrZV0=; b=c+cFh/+PodJDjG
	gIYrPxME3nBTbYA8+NOV1AUCIqOBay4sdMCy3uQAzCu2BcsKGZRBIWOcNQ8bG/Fpc38L4mQbZASK7
	+witzBgd3pzuewql30J7SE3zDnGnbhEBpx9I63b1P5RybpcSyy63ZBXYHGmYm5Swja1mcJe2jamUd
	yUYgd7iGqF9IBxDPplswpax4WD3woyDe6eJvMmUEIsp4TGnECEqhipMBvfcUSc8DW37T7vW4laMnC
	LmwKIxdgw7vhhSxZrXPcffEpGDHAVx4eDsyeE9Y1jebou/Nj5Y4FSbi7DysCe5+DmpGEV16saRjJB
	7GhcxbYutKxi1VDSQTUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNTgP-00000005FLa-3SAh;
	Thu, 14 May 2026 10:52:49 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNTgN-00000005FKa-3RRz
	for linux-phy@lists.infradead.org;
	Thu, 14 May 2026 10:52:49 +0000
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-45db6fd7dc3so78133f8f.1
        for <linux-phy@lists.infradead.org>; Thu, 14 May 2026 03:52:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778755966; x=1779360766; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=H3xNx0DGWfnDiOAhTp4e3i+kPDvC+nvRiuRLvqIBtX0=;
        b=NKLMpf/MaZhv14UCsZKxjYXIR+mdSZiNWlC2Tru8JmoG7gZVX6CYiV30mI4tNDJdVA
         F9+cam31EwekqDEacBOgjzh+01MsFCTx0XnN1aqXTHix2bXhMbxhdUjglsJxQt0RyXdK
         z/KmUBpaXFDANfiDsPA4KwNC/ME1Azzh4t+W+k+sHycyO1/qRngM1cbeT8swQxaUwUoi
         IWO+coWl5PtQp/mTLBVFoneaU9b2s0aj0XksfMWiMbD89h/sRGJSwvZXRiFa1cQh8csS
         8bnT3Nz+QjhBDBFB12lsf4mwYbnsKB4PLB29mlu5BKh5ZCLmBmy59zWyupAoElA1npgT
         w8kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778755966; x=1779360766;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=H3xNx0DGWfnDiOAhTp4e3i+kPDvC+nvRiuRLvqIBtX0=;
        b=kqpHe60HJqhk/s7XMNhUDCaWUmZ7LWD7IpMdo76nnQAvIuTyqwq4VOLfj08i7a6Nh0
         yThY5IHwcsBBezFN4Yu4nbTbxM8Ija0smkNm/beBOC+1L+Yq+w8RnV0X0Jp5XP/W9lsC
         Fm8TlqhKsyPNwahnae+rX3ve6FRD59qVuUoBrmgAe71ZTKPyGD7i5moF6aUqmsv9eyHn
         Os93Q3DdYn8hiQBaqpt3mmvwiCBZEaLYdSkZFW6veLliIKW2uyfRG+bXrm272KO6DYEt
         O4qwlu3OC4yZBXi/SqB9is3VlcCMimEkCxpid43BKrfRRdL0uD8Z6zvIzOt/gIZ7nzV6
         K2wQ==
X-Forwarded-Encrypted: i=1; AFNElJ/+elHqRMkc2IHTMWlNSkr+U3zJn7qMo/EcsHsfT2p60ICQpwWim47rGFa5as4UA+ekBMlKtnCPji0=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxwai7dlH/V18mRR//LO2O5WPFIw6oLBJ3BN4TQQJwIzYM/M3Lj
	SueODRt9K3sE26HSfYrnuPDOWvGZXCHjLd/gj8QvQvk0dEwzt8EvQ5cX
X-Gm-Gg: Acq92OHbIrsWlgkfZH6bGlUY/dt9/RxvIaM9WTofpmNzkYTE1lR7TA5qa3PMxNvFtql
	lZXH5C3S24vEV8LCcSWwDkOOXtBfKlMk8Ks1SYvVZjSor+HfSesjjuhq9Bv6sudZPSDX/h+HaYb
	YsvcFuP6C2BBEqhgh0wm6svosjGMVAGToEdApgGri1U1ICyKKHado8cJMCd7+pc8joj6JGe7vUB
	PATIBrmSbr/B3gQ0CqXxhKRUR4PPIXGcEWaQk0MsmOYfwXvmFtt8oEY2Q1vTYkuj6ukbByAxOUO
	uwNelFjJwpDTxqRW95XjvxzNlLpRW26JjECvnLgMTE/AXSd3qz94EGapEogNBJlUxIG+YtRZcm8
	QbwtuYPurRzt+4GxJOvSNHy3OcaCaA+PF46aQAu1qWcUpI6/HSt+kiCTyq81Vyi8JT5dXNz13hJ
	CtMIYOb+974/9TkWjYwrsD8SenEiAWe4bBWw==
X-Received: by 2002:a05:600c:1385:b0:48e:6db5:76e6 with SMTP id 5b1f17b1804b1-48fc99ede8emr49117735e9.2.1778755965596;
        Thu, 14 May 2026 03:52:45 -0700 (PDT)
Received: from skbuf ([2a02:2f04:d003:300:6c81:7110:517:9a7e])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-45da0a19a0csm6075424f8f.20.2026.05.14.03.52.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 May 2026 03:52:44 -0700 (PDT)
Date: Thu, 14 May 2026 13:52:42 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Ioana Ciornei <ioana.ciornei@nxp.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, johan@kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH phy-next 0/2] phy: ti: add driver for TI DS125DF111
 Dual-Channel Retimer
Message-ID: <20260514105242.kzi4ttchz5puxk7r@skbuf>
References: <20260513185103.1371809-1-ioana.ciornei@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260513185103.1371809-1-ioana.ciornei@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260514_035247_874832_AE2E7E6F 
X-CRM114-Status: GOOD (  19.15  )
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

On Wed, May 13, 2026 at 09:51:01PM +0300, Ioana Ciornei wrote:
> This patch set adds a generic PHY driver and the corresponding DT
> binding for the TI DS125DF111 Dual-Channel retimer. The datasheet on
> which this driver was based on can be found at -
> https://www.ti.com/lit/gpn/DS125DF111.
> 
> A separate generic PHY is registered for each of the two channels of the
> retimer, so consumers can drive each channel independently. This allows
> for independent control of the channels, which is especially important
> since each channel can be routed to different SerDes lanes and it is not
> guaranteed that the same retimer will do both directions of SerDes lane.
> 
> This was tested on a LS1088ARDB board with the Lynx10G SerDes PHY driver
> yet to be submitted.
> 
> Ioana Ciornei (2):
>   dt-bindings: phy: add PHY bindings for the TI DS125DF111 Retimer PHY
>   phy: ti: add PHY driver for TI DS125DF111 Dual-Channel Retimer
> 
>  .../bindings/phy/ti,ds125df111.yaml           |  46 ++++
>  drivers/phy/ti/Kconfig                        |  10 +
>  drivers/phy/ti/Makefile                       |   1 +
>  drivers/phy/ti/phy-ds125df111.c               | 245 ++++++++++++++++++
>  4 files changed, 302 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/ti,ds125df111.yaml
>  create mode 100644 drivers/phy/ti/phy-ds125df111.c
> 
> -- 
> 2.25.1

When you resend, please add a MAINTAINERS entry for this driver.

Thanks!

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
