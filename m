Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B6E3C4332F
	for <linux-phy@archiver.kernel.org>; Thu, 10 Mar 2022 20:11:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kivR4DyRBBYeBzBDeC5inX2hC7/RS4Zf56TBC1D5s0w=; b=obQFCXBZ3Jiy/U
	OU0UMsHcnbMINV+UtKtF0rSK9N48P0FmTqXtjqZO225SM14f4d6zBY6bIA4BlWvBw9mUWXw6+NZou
	fGCxHTLvHtzd19iVu3wfWz8Xu3bLJbDXiAxiCAOrfVr7nKHdwHuEXlxzC7hee149GlJX1rIv7jVZ6
	CP7sVy8Qth+zBJqBoK8sI1h82G/w/AwbFKxsTP6iBpLO+j1TlJZGWMbF1DnpcC3ETLDaE0/w1eVXF
	OP6TjtmIv7bfXC9qzQhBJOoRgrg85W8na8OlTX5vJ8Q39KL4MWgR+8kCn+vooV21ECLFskBUN+6dR
	Wiz7QAafWQJ2wvd9XlRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nSP7k-00Dx4N-QG; Thu, 10 Mar 2022 20:11:00 +0000
Received: from mail-ot1-f41.google.com ([209.85.210.41])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nSP7i-00Dx39-7m; Thu, 10 Mar 2022 20:10:59 +0000
Received: by mail-ot1-f41.google.com with SMTP id
 a7-20020a9d5c87000000b005ad1467cb59so4837292oti.5; 
 Thu, 10 Mar 2022 12:10:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=6UR/WFOFq3EqUbPef1y1xYnsL6gNNVdISGkg2vViX9w=;
 b=1Qadl4MRIzC0QBFJ6jchOAm66JY/iZ2eQ35pdP1nxgnaUWuagAtrieD0eLhEEg5YIR
 U3BjlbGJ6MLolJyCPzsNMTV82+ZhC+6pW6YpQyU8G6xEbYwA3pmWJtLpbs7k66gcAhDD
 w3Oxo8qc0qxt3H7etOyKrSxi1VDDG7OpK9Yq9G3lV0fhlYeurHnPE/q6LDPbsC+JrcNj
 bMS2pQrCuQ3UbOi5iAA/oRPD8sw02JdMSxmCoskVXFaNeMz2atQJ1kIvWw5v2wA9wmD0
 vnMfYpOSIVCt0P2oHT22fS6LcmpX1fYfXJagdUm/tYHT87tQSwuI0ZjGj+lTIknZri0K
 zl8A==
X-Gm-Message-State: AOAM531vtKnzykrqxPIrJH9haFxyVf6jWJU/yZomgcXRX61nAxB6G3OS
 9dOWMKl8fkDGyK/FwE/OHDbYyol1ew==
X-Google-Smtp-Source: ABdhPJxL7g6Qf3ansWpLK6G9FxO6gNGunWkYCEA8ijqWIMaeMWYNdpuYZ1hvk+PT1yUf71ucL/d07Q==
X-Received: by 2002:a05:6830:31ad:b0:599:7af5:d470 with SMTP id
 q13-20020a05683031ad00b005997af5d470mr3373087ots.50.1646943056529; 
 Thu, 10 Mar 2022 12:10:56 -0800 (PST)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net.
 [66.90.144.107]) by smtp.gmail.com with ESMTPSA id
 a14-20020a544e0e000000b002d97bda3874sm2705452oiy.57.2022.03.10.12.10.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Mar 2022 12:10:55 -0800 (PST)
Received: (nullmailer pid 1982443 invoked by uid 1000);
 Thu, 10 Mar 2022 20:10:54 -0000
Date: Thu, 10 Mar 2022 14:10:54 -0600
From: Rob Herring <robh@kernel.org>
To: Richard Zhu <hongxing.zhu@nxp.com>
Cc: linux-phy@lists.infradead.org, alexander.stein@ew.tq-group.com,
 shawnguo@kernel.org, l.stach@pengutronix.de, linux-imx@nxp.com,
 p.zabel@pengutronix.de, vkoul@kernel.org, devicetree@vger.kernel.org,
 lorenzo.pieralisi@arm.com, linux-arm-kernel@lists.infradead.org,
 kernel@pengutronix.de, linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 bhelgaas@google.com
Subject: Re: [PATCH v2 4/7] dt-bindings: imx6q-pcie: Add iMX8MP PCIe
 compatible string
Message-ID: <YipbTpT1B6dHSpt2@robh.at.kernel.org>
References: <1646644054-24421-1-git-send-email-hongxing.zhu@nxp.com>
 <1646644054-24421-5-git-send-email-hongxing.zhu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1646644054-24421-5-git-send-email-hongxing.zhu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220310_121058_312324_5DB8348B 
X-CRM114-Status: UNSURE (   8.57  )
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

On Mon, 07 Mar 2022 17:07:31 +0800, Richard Zhu wrote:
> Add i.MX8MP PCIe compatible string.
> 
> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> ---
>  Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Applied, thanks!

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
