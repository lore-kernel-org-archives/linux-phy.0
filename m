Return-Path: <SRS0=SrD0=MO=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3A722C6377B
	for <linux-phy@archiver.kernel.org>; Thu, 22 Jul 2021 02:47:45 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0229D6120D
	for <linux-phy@archiver.kernel.org>; Thu, 22 Jul 2021 02:47:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0229D6120D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xiL0vBu0ZiaUdCO614U0UlCfXvGVPNXm+x4MXFZHWiM=; b=p9RBAPbSicTIM8
	e4CTb4V/UJ5xFfRwjpGD2U4oc5UCkWFoQGN4w9/1cr1lmZnCo5b6DbE9PHRcD9viUbBLQqlzZgoBu
	+doMaB1dzea0JNJGILle4YilUXDAUFGbHvwhDO1/GoTYmWGvJwAamyTkmdGAt6LuPhoCEmRgAWi1T
	rJGs2D0i8SWCrjWKYAJeonwweSylwFHlaz0N2yxMfqizqaVnH0h11vTwJJ7Yk7d6RnnHBDr/UEfgZ
	Ow1qZLYHR7W0+miCGLkBw3cmt1dcx5cUwZl2BNL1VXRKRe7JeLSlWZgiNjhvAdj+R5zdiJfCrCEAN
	B4As0rMa3W+oLCsLrvHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m6OkS-0002uy-HI; Thu, 22 Jul 2021 02:47:44 +0000
Received: from mail-io1-f47.google.com ([209.85.166.47])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m6OkQ-0002u9-01; Thu, 22 Jul 2021 02:47:43 +0000
Received: by mail-io1-f47.google.com with SMTP id v26so4675404iom.11;
 Wed, 21 Jul 2021 19:47:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=19xXfJQXm0JE6pCPywd8DImQjl4TXD+UhDpduWAAkDA=;
 b=Afu88iTTZUWLV9+qt4Ou2wvozFpmYVD5qdRTqhTS/GU9+q/R/ci4NTY1oeYxzHwXvU
 MTg3X4nPhnlkXFMV5OoVPsa3BNOHr7iLSqKhgB9OSg7MPp0CnNrBtFqXmDWR7CrDi8pT
 X1rRiNv3wNq2h6WArmL+395du7elnkrhgTqQZ9MtxTFoOrr5xtJRcbPik1qHeJFw8N/p
 minkdJ5N+8orNTV5f5BLlVaGblOHYipNrzIPhTw8ExyIsTt9jLuVNC/Herj+mvNxymMk
 H4HJqDslbegGatRdti/H9thH+xTS5iiZdcORrH2gvvaFAoUOb+ue7snylDrXOWlZJeQi
 vP/w==
X-Gm-Message-State: AOAM5301inB8gTqP0fbwx2uOj7LBTsM0txaBk2U6GlXL54iBe/ggIZJs
 T6tczL/gii/L0kUOslTr8w==
X-Google-Smtp-Source: ABdhPJwp+5JCc4hxmPbsSw+E/7eMbEfIVYY8LIrpFeJLLDPP06nwccmiyPtOr2D7LGewgtLkxR4JdQ==
X-Received: by 2002:a02:7a50:: with SMTP id z16mr32799050jad.139.1626922059858; 
 Wed, 21 Jul 2021 19:47:39 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
 by smtp.gmail.com with ESMTPSA id a1sm6440643ilp.1.2021.07.21.19.47.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Jul 2021 19:47:39 -0700 (PDT)
Received: (nullmailer pid 3198455 invoked by uid 1000);
 Thu, 22 Jul 2021 02:47:35 -0000
Date: Wed, 21 Jul 2021 20:47:35 -0600
From: Rob Herring <robh@kernel.org>
To: Dong Aisheng <aisheng.dong@nxp.com>
Cc: Li Jun <jun.li@nxp.com>, robh+dt@kernel.org, devicetree@vger.kernel.org,
 shawnguo@kernel.org, linux-phy@lists.infradead.org, dongas86@gmail.com,
 linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com,
 Vinod Koul <vkoul@kernel.org>, kernel@pengutronix.de,
 Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH 4/7] dt-bindings: phy: imx8mq-usb-phy: convert to json
 schema
Message-ID: <20210722024735.GA3198403@robh.at.kernel.org>
References: <20210715082536.1882077-1-aisheng.dong@nxp.com>
 <20210715082536.1882077-5-aisheng.dong@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210715082536.1882077-5-aisheng.dong@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210721_194742_081396_EF33BAFE 
X-CRM114-Status: UNSURE (   9.19  )
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

On Thu, 15 Jul 2021 16:25:33 +0800, Dong Aisheng wrote:
> Convert to jason schema.
> 
> Cc: Kishon Vijay Abraham I <kishon@ti.com>
> Cc: Vinod Koul <vkoul@kernel.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Li Jun <jun.li@nxp.com>
> Cc: linux-phy@lists.infradead.org
> Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
> ---
>  .../bindings/phy/fsl,imx8mq-usb-phy.txt       | 20 -------
>  .../bindings/phy/fsl,imx8mq-usb-phy.yaml      | 53 +++++++++++++++++++
>  2 files changed, 53 insertions(+), 20 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.txt
>  create mode 100644 Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
