Return-Path: <SRS0=Fgqk=PV=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1F3FDC433EF
	for <linux-phy@archiver.kernel.org>; Tue,  2 Nov 2021 16:36:21 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DC28160EB8
	for <linux-phy@archiver.kernel.org>; Tue,  2 Nov 2021 16:36:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org DC28160EB8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eS42+6dFFxmplk41FboOXtErpIADAEOehaIuuPWxiIY=; b=lyfNm/nkNinS9t
	tfO9LD56ZoIRKAhNV+oAxrBkDCGkc9MWPaQZlKqLHdWYz6KLZSZc5sRqYdpLFZCkXn7SuP3Os8gvl
	YSV5cn1MdkHvheCM/ihHeB7nbmClEBCw+9jRWoRTPve8rtBhwKah/bpxgvo9FzXK1Md4g2s0yuyHF
	K1HPOMU0XCCX0Mp49thMkVSyJBdHKIeweRLeqeg2i90HyPMgZ/nYCwHHLmgR4rQ3lM9yO1jtiwtRm
	jSDf+TkXEQG9XnGt5iOh8iJHbTtOLID7lLuWPA7PQPoKy132NPJfFj+IEckiuM+80lqMSZNP5O//g
	sYfDPkil7mt52YhztaTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mhwlo-002Igr-DO; Tue, 02 Nov 2021 16:36:20 +0000
Received: from mail-ot1-f47.google.com ([209.85.210.47])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mhwll-002IgQ-Rj; Tue, 02 Nov 2021 16:36:19 +0000
Received: by mail-ot1-f47.google.com with SMTP id
 l16-20020a9d6a90000000b0054e7ab56f27so30764069otq.12; 
 Tue, 02 Nov 2021 09:36:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Accs2bGcaINGxdMfGMGAXDWboqW4zXxOfrIFX49zW/g=;
 b=4XJjc80eeuQLAi8ix15zH3B6CQOXlMRDgCujZr7Wx+pdyJbxc7Bntd0e//Fy08lW1X
 BDS3Zj+fRZjBwKagwKFWsDFFLnjq9twu46RekmnOyGLcARtrlX1AVSU5fkZZ7O0Oxj8W
 56hXFgL0T1l0EqGPGnd0oANkASvOr/MQ7fYB+DdXtKUn/GM9b3YKcvHToMYlYioOVocw
 4+8xbT8QUSqrtRO0nNpAFS3evAjNpLFnxEGtAX5Y12X7VPX5VvpofWHHlbm/bMrQSxFW
 RCAKX6GOTmOyQDpVCmyXeCxpKf43VdWdd9XoZk2UPXPACrtzM+6XkeiwBCI2wJMFZGvj
 35Lw==
X-Gm-Message-State: AOAM5320Q3rCpXM4rmlxdrObxnzABEyM9/CKePz5FUXZ/mlWqe7mEJUc
 L/1YcYCYvc0WiL0rMx9ynQ==
X-Google-Smtp-Source: ABdhPJxaoTt5eEe9SxJRqvWvBTfY1lg5SYIUsz8HIaJRDx2qR4eGO4dPCweQz01EtMiDXJwL4qkEDA==
X-Received: by 2002:a9d:e8b:: with SMTP id 11mr4218359otj.43.1635870976471;
 Tue, 02 Nov 2021 09:36:16 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id a23sm3490659ool.3.2021.11.02.09.36.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 02 Nov 2021 09:36:15 -0700 (PDT)
Received: (nullmailer pid 3025339 invoked by uid 1000);
 Tue, 02 Nov 2021 16:36:14 -0000
Date: Tue, 2 Nov 2021 11:36:14 -0500
From: Rob Herring <robh@kernel.org>
To: Richard Zhu <hongxing.zhu@nxp.com>
Cc: linux-imx@nxp.com, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@pengutronix.de, kishon@ti.com,
 marcel.ziswiler@toradex.com, shawnguo@kernel.org, vkoul@kernel.org,
 galak@kernel.crashing.org, l.stach@pengutronix.de, tharvey@gateworks.com
Subject: Re: [PATCH v5 1/8] dt-bindings: phy: phy-imx8-pcie: Add binding for
 the pad modes of imx8 pcie phy
Message-ID: <YYFo/hZ3p7XZysVq@robh.at.kernel.org>
References: <1635820355-27009-1-git-send-email-hongxing.zhu@nxp.com>
 <1635820355-27009-2-git-send-email-hongxing.zhu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1635820355-27009-2-git-send-email-hongxing.zhu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211102_093617_932257_D5A635D2 
X-CRM114-Status: UNSURE (   9.08  )
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

On Tue, 02 Nov 2021 10:32:28 +0800, Richard Zhu wrote:
> Add binding for reference clock PAD modes of the i.MX8 PCIe PHY.
> 
> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> Tested-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>
> Reviewed-by: Tim Harvey <tharvey@gateworks.com>
> Tested-by: Tim Harvey <tharvey@gateworks.com>
> ---
>  include/dt-bindings/phy/phy-imx8-pcie.h | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
>  create mode 100644 include/dt-bindings/phy/phy-imx8-pcie.h
> 

Reviewed-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
