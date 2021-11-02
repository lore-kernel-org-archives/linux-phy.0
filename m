Return-Path: <SRS0=Fgqk=PV=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E32DAC433FE
	for <linux-phy@archiver.kernel.org>; Tue,  2 Nov 2021 16:41:26 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A9D4460EE9
	for <linux-phy@archiver.kernel.org>; Tue,  2 Nov 2021 16:41:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org A9D4460EE9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NsKzpEYnzlz78WecrEY2yIb8lanBZrlh05NMf/8kjAU=; b=C+pFNbJjIC9Iwe
	of5EvN3Rx/wwv8G5fd/9NkM0FVc2YsQu5yIVQiOFdrVSYkOCQr0xStV4m4qQQuMK/C5VCaq7alpG/
	Yra+AHQaf+D5NW23QLZsOo81m/2ucl9nDDu+e/Ll6AfzbvH/Ccygscnl0fyNztgH/EJZOVixhorse
	e0mSqhUp91sFxcThQbDDW8I6gGpSFs/TeqJirMlMQkpFdkww/aMWRX2THy0SJEYU1X84+FqG0rnmL
	bMAnm3wUTp+FsbQlTtjY0fNuMM6M5qER8ZlLj2TtQNXjI3Clhea/R9miECYICQ5LhPb1n0RhYFkQu
	tcGe7BUs7KRq5uluTC4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mhwqk-002K65-6X; Tue, 02 Nov 2021 16:41:26 +0000
Received: from mail-ot1-f54.google.com ([209.85.210.54])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mhwqh-002K54-Qv; Tue, 02 Nov 2021 16:41:24 +0000
Received: by mail-ot1-f54.google.com with SMTP id
 107-20020a9d0a74000000b00553bfb53348so30894404otg.0; 
 Tue, 02 Nov 2021 09:41:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=p4xN9jvUs2HHItSG3zOdut7t8WiHJZSDYDMDaJgMKR0=;
 b=hoCjbhmHKBfY3XIFOfEC7eEzhWxRt6sRgNVGAJXYlmWomBt5lupNpMnVGyjN3FFvUg
 01TVRaO/pien/4xPuav4yh8y7GtRgL78LNTQnbZR7EM/Ra6vNcAd1sWLfkL+nFmys68I
 Blg54MPMIa+g3ScFU9CBdlfTEDX6wSMKUBX3dNbG/rZ6aGxz/LC7ZIRXzRUpS0RNqldf
 /b4hc1rBNM64VlBBZNNE7Yy8iT+nqOYDl1q00JYfYtalF1+7JNgMFiVEpu1A7/8OWdXk
 rmcqmioZl8ZblNF5e8UTDNnXS5YcxoQ2IWcTbWrZ8nAcQjtm9uEF+C1AfNi4Vm+URODr
 rm5A==
X-Gm-Message-State: AOAM530vdjPsiFHgf7u4BU6arFrqTDLaA3/zsbxfTWgXjYzM4djvS+pc
 UfsIzIKi+Lhn3zb18Ymm7g==
X-Google-Smtp-Source: ABdhPJxgJbDrX4P/USnAKFJxsIIAp3I+zRht84aM87QgsRXfBjioI3ZjPnMCBQ8Ja6zU/xGpsn2srg==
X-Received: by 2002:a9d:6c0c:: with SMTP id f12mr26004890otq.275.1635871283186; 
 Tue, 02 Nov 2021 09:41:23 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id p124sm3321331oib.35.2021.11.02.09.41.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 02 Nov 2021 09:41:22 -0700 (PDT)
Received: (nullmailer pid 3034467 invoked by uid 1000);
 Tue, 02 Nov 2021 16:41:21 -0000
Date: Tue, 2 Nov 2021 11:41:21 -0500
From: Rob Herring <robh@kernel.org>
To: Richard Zhu <hongxing.zhu@nxp.com>
Cc: l.stach@pengutronix.de, vkoul@kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, galak@kernel.crashing.org, shawnguo@kernel.org,
 tharvey@gateworks.com, devicetree@vger.kernel.org, linux-imx@nxp.com,
 kishon@ti.com, linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de,
 marcel.ziswiler@toradex.com
Subject: Re: [PATCH v5 3/8] dt-bindings: imx6q-pcie: Add PHY phandles and
 name properties
Message-ID: <YYFqMaByELGuWOCu@robh.at.kernel.org>
References: <1635820355-27009-1-git-send-email-hongxing.zhu@nxp.com>
 <1635820355-27009-4-git-send-email-hongxing.zhu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1635820355-27009-4-git-send-email-hongxing.zhu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211102_094123_894548_364BF56F 
X-CRM114-Status: UNSURE (   9.36  )
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

On Tue, 02 Nov 2021 10:32:30 +0800, Richard Zhu wrote:
> i.MX8MM PCIe has the PHY. Add a PHY phandle and name properties
> in the binding document.
> 
> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> Tested-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>
> Reviewed-by: Tim Harvey <tharvey@gateworks.com>
> Tested-by: Tim Harvey <tharvey@gateworks.com>
> ---
>  Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
