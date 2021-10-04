Return-Path: <SRS0=CgOe=OY=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 02F1EC433EF
	for <linux-phy@archiver.kernel.org>; Mon,  4 Oct 2021 18:14:54 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C127361350
	for <linux-phy@archiver.kernel.org>; Mon,  4 Oct 2021 18:14:53 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org C127361350
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZLVm18YbEtikTuhsiLi1RebuNjKlO9hyM3CbPsWrHVw=; b=rm6VMqeX5BT1jO
	JHEQR1ebaJTnEcXjdVQWXD9TRSjhC3BMthS/Uyt6xiobasQj+sqLlK9nAnpu85gEmsIpZkO5Rx9dw
	fABiBnsqOaynmc15MSA1/SPQrLo2YoKd2ffORCXvBa4X/Z8JpF2dnbc3bOwh0FYwd63iQc/aWqAmQ
	TVvt3jnHiMTVel4HEU5mjILcciAncxArPhZ+43kDSW4TbNwv9o/2tvInI1/I878FQ/5SWCkjZCFWl
	Zc1L46mUSJH2SpaX+VogQo5MwRMaUw4KNr3/AtppvYKBmYv2UlBLz4CNgQEXROF6v4Nyp538TVn5f
	9S5FgyO8fkluuoB/HBkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mXSUH-007dHa-A5; Mon, 04 Oct 2021 18:14:53 +0000
Received: from mail-oi1-f169.google.com ([209.85.167.169])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mXSUE-007dFv-39
 for linux-phy@lists.infradead.org; Mon, 04 Oct 2021 18:14:51 +0000
Received: by mail-oi1-f169.google.com with SMTP id t189so22789338oie.7
 for <linux-phy@lists.infradead.org>; Mon, 04 Oct 2021 11:14:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=xmMc3rWEU1efxoTuQUPwz+mRri1cEQCNMADP+8wt6Ag=;
 b=gqQ0KG0Ng6TbYMQwyIQ+nyT6Rd+d+kvJ/jFuAYhLWuyaYG6ANcuw8i7f0p7lEA0ihd
 YGFj6m9dxXiPXqt5YxIRy4g/HSXRD5qACSLQBUc1mdnFCBecvIymMmCYMf3Z1gStturQ
 jz1u3sPYcovW5moVVwmKRgTCzrf5LKcqQpzkSArnjJVBj2GvUhU0l9Zy3MKNzc239uCX
 u3msOO4n+xftkP+K8IIDuKLdnyiJswTWMLMm4El0zHgHBdoDoQVC1MIglSf4FVpydwvw
 TZeNQ2ZXybKNu3Lg/E2v35kdh1rIyMr3UjthBJB0SqKpX8a5bOwk+LTCbv4nmkDY6GCf
 /pwQ==
X-Gm-Message-State: AOAM5326UGHxdZ8cOlpyHUobXA+Qh0wP9owt20ieA8rLEjVO77iMZUrn
 WbLQ5W1Jpj5rDxbPyc5ahFWyukxgXg==
X-Google-Smtp-Source: ABdhPJwweR08rYfQVmo9mS5FC4ORSY8zaEfqR67w5NN8q0Flrm0RAAnE9yHyUo7wtCTpOIT6vn4U+g==
X-Received: by 2002:a05:6808:15a3:: with SMTP id
 t35mr14498181oiw.92.1633371288751; 
 Mon, 04 Oct 2021 11:14:48 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id s13sm1194251oou.11.2021.10.04.11.14.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 Oct 2021 11:14:48 -0700 (PDT)
Received: (nullmailer pid 1590538 invoked by uid 1000);
 Mon, 04 Oct 2021 18:14:47 -0000
Date: Mon, 4 Oct 2021 13:14:47 -0500
From: Rob Herring <robh@kernel.org>
To: Shawn Guo <shawn.guo@linaro.org>
Cc: devicetree@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Loic Poulain <loic.poulain@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: qcom,qmp: Add QCM2290 USB3 PHY
Message-ID: <YVtEl5KCUM8UIpuT@robh.at.kernel.org>
References: <20210927064829.5752-1-shawn.guo@linaro.org>
 <20210927064829.5752-2-shawn.guo@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210927064829.5752-2-shawn.guo@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211004_111450_157523_92B16D1F 
X-CRM114-Status: UNSURE (   8.69  )
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

On Mon, 27 Sep 2021 14:48:28 +0800, Shawn Guo wrote:
> Add support for USB3 PHY found on Qualcomm QCM2290 SoC.
> 
> Signed-off-by: Shawn Guo <shawn.guo@linaro.org>
> ---
>  .../devicetree/bindings/phy/qcom,qmp-phy.yaml | 27 +++++++++++++++++++
>  1 file changed, 27 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
