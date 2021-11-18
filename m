Return-Path: <SRS0=n1nF=QF=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908CBC433F5
	for <linux-phy@archiver.kernel.org>; Thu, 18 Nov 2021 23:50:43 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2E76961AA7
	for <linux-phy@archiver.kernel.org>; Thu, 18 Nov 2021 23:50:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 2E76961AA7
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CiB15HN+uBhheCr2c/kbYS5zrtYq3UjlBJR7V8FhBRw=; b=EvqUmM9GxnaJ7B
	dFbgvcSxf+hT/rgZeEq7BFgtiF0bdPLwVKUYEAWiMR6t33mK1WTfM8l5e8la9sRTNiUm6DIIbXWam
	LhUQ797cBXqqDaHplknNoysnhd46xtDLQG1QNNHQaDpVXZKg1dtnB9Fc+doiN8+PYGVpnZ7qfI+d+
	nb4tg+j61gl1fMx1AmO9LKBODXRSo9HfZhWuSAut5qGPfpC4xo8wRPZquoRkSRo8lnVKUz8y4W+vm
	j94CPvjF3aNXv8J4JODukaH3JGXeGvn5inSTw+ZdG1XsnWM2D1EDSZnqtyICfh3njG9uKkUxfEiwN
	XW4rsgIUE8ye+8mUsg4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mnrAw-0093Cq-4f; Thu, 18 Nov 2021 23:50:42 +0000
Received: from mail-oi1-f182.google.com ([209.85.167.182])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnrAs-0093BM-Ak; Thu, 18 Nov 2021 23:50:40 +0000
Received: by mail-oi1-f182.google.com with SMTP id q25so18149709oiw.0;
 Thu, 18 Nov 2021 15:50:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=jdQqzU43HKUpnZBB2kJWVnYdHuE9gpSLPuv7kOuXwcA=;
 b=2jJwPm6GQPpAUUTae2E1ZEMbiHaiQCEBX1/pm9/GVRsMY+8bnSimU9ORi85STvIJkd
 sqSW2X8glmtcLfICVmyDZ/sFmHttUDwLFSCAD7B9TKkW8HRnWGVQNykEjUcw3Q90rthZ
 JDwlnNKQleUdPxrbRhNzjKSqhOLZVT4RrQxDEtOaV3YidyyreWK6xEU8CLqAi0b2eJ79
 tZWPUyWQXs5QiD1hzEELeW7OFfxYREybRXa5vj/kO/GGTZkzyzH7e7pzJ/4N6c5/EETL
 GuQTHV2LLaMnnMtiUKtP0s4w2InU7eU6srYZmXPPCdP3e4PJOYEqsdGn60eATM8Xq9/f
 ZWUQ==
X-Gm-Message-State: AOAM531hht0INvPW7zSBwPTFbt9e01Q5sy0d8PiM+hZgf1FBbQds4nlx
 UnFDcHEWZaMZ6yU+tVxPTVsTHA/nBg==
X-Google-Smtp-Source: ABdhPJyn/bL+xzaQX+komWYvUKUMTSemYbuVI5QujiRyRaelGy2An5fwI0mbB8m9xg9IN1RZ6tTDig==
X-Received: by 2002:a05:6808:2016:: with SMTP id
 q22mr876614oiw.81.1637279437332; 
 Thu, 18 Nov 2021 15:50:37 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id g5sm253638ooe.15.2021.11.18.15.50.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Nov 2021 15:50:36 -0800 (PST)
Received: (nullmailer pid 2015609 invoked by uid 1000);
 Thu, 18 Nov 2021 23:50:35 -0000
Date: Thu, 18 Nov 2021 17:50:35 -0600
From: Rob Herring <robh@kernel.org>
To: Richard Zhu <hongxing.zhu@nxp.com>
Cc: bhelgaas@google.com, shawnguo@kernel.org, marcel.ziswiler@toradex.com,
 l.stach@pengutronix.de, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com,
 devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com, vkoul@kernel.org,
 linux-pci@vger.kernel.org, galak@kernel.crashing.org, tharvey@gateworks.com,
 linux-kernel@vger.kernel.org, kishon@ti.com, kernel@pengutronix.de
Subject: Re: [PATCH v6 2/8] dt-bindings: phy: Add imx8 pcie phy driver support
Message-ID: <YZbmy8asguINPF4O@robh.at.kernel.org>
References: <1637200489-11855-1-git-send-email-hongxing.zhu@nxp.com>
 <1637200489-11855-3-git-send-email-hongxing.zhu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1637200489-11855-3-git-send-email-hongxing.zhu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211118_155038_577245_01414248 
X-CRM114-Status: UNSURE (   8.97  )
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

On Thu, 18 Nov 2021 09:54:43 +0800, Richard Zhu wrote:
> Add dt-binding for the standalone i.MX8 PCIe PHY driver.
> 
> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> Tested-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>
> Reviewed-by: Tim Harvey <tharvey@gateworks.com>
> Tested-by: Tim Harvey <tharvey@gateworks.com>
> ---
>  .../bindings/phy/fsl,imx8-pcie-phy.yaml       | 92 +++++++++++++++++++
>  1 file changed, 92 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
