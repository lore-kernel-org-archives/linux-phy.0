Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9B1BC433EF
	for <linux-phy@archiver.kernel.org>; Wed, 15 Dec 2021 20:13:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w8cnvJe71nIwTFEaktM7pfwYlanH1pvL+IM+7UniWt0=; b=C+DF+MUw6eR/MS
	ixmpe1zNWf359p70o/LJxW7NW3luUAiD4M3qh/pCgVfb12it9Y5a3s/lCXs9pE+4Pk/Bv3IXacO5B
	4MNRXU4RuvXGFYZc1jyYqQGPw5Gs+M/W7nHAHG/+v/iwdtejMtsRswLIQp2AXKZnVSz+sfytE2ejl
	pp0ETKPa88PUOpPOtQ43axsI82WHogOlOlWfvsEKon9LWB/JvYm9/dwPmG7y8uryCnckOk4vM5/Zg
	ayof1fZgaGKRdAj7fr4KWix0C5XxkNYTsUGx8yzqvK6Ktx0a0FjFNuQ0TldzN0r/U1LhqKjHNhd/1
	um5uiIXcoXvdVSHorDvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxaen-002Yx6-8n; Wed, 15 Dec 2021 20:13:45 +0000
Received: from mail-ot1-f44.google.com ([209.85.210.44])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxaek-002Yut-QU
 for linux-phy@lists.infradead.org; Wed, 15 Dec 2021 20:13:44 +0000
Received: by mail-ot1-f44.google.com with SMTP id
 x19-20020a9d7053000000b0055c8b39420bso26330157otj.1
 for <linux-phy@lists.infradead.org>; Wed, 15 Dec 2021 12:13:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=BPQ87d8QvmM6qxdlruPSM0k5IOysfGIQENHR+EofinE=;
 b=JLW+Yrauwar/aHE5zJS3xSfPuvnBl4GA1la6zbrOtpS2rtACcO668J82PONHH4J9gh
 ry9BSJ6tYCJ84uTzrN+aerGFRYJ83YF+Huyy8WPpO8YDYluUpx66L1tKvlS1cvsxGK0a
 HczEPFeP1Qiv2CiTQ6BenSzoYGF1pDigvrkB45qafg9J6sEZAXuZf2NhJf/sSfgCyM/I
 ySOaquz9RcAPwl9kihrJTVEy/x7kh/tzIxAICzjd2ZMetMGJVTv6Qbh/URzBcn1TSPD1
 ywsAzuO902TorrcGPfpO1W4Qscaz8gdl2AS1Yo9Aohd129EAeBJI0uvlmQ/s0gL4MSsF
 fyEw==
X-Gm-Message-State: AOAM530LmazqKtT5hB0u7faP6Lz3gnaM2teqw/yJnOTAk3E3Mmo4jgFW
 ZqPt3uOQqeJmEGdSrpvg4A==
X-Google-Smtp-Source: ABdhPJwC1tIXdQafpPW2w+DI5hIKTJcUxGWJ0nBo+2J2/MJcrTpbq1kQ5CzII3k4Decz26ON0nmmdA==
X-Received: by 2002:a05:6830:3110:: with SMTP id
 b16mr10290669ots.212.1639599221490; 
 Wed, 15 Dec 2021 12:13:41 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id i16sm526349oig.15.2021.12.15.12.13.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Dec 2021 12:13:40 -0800 (PST)
Received: (nullmailer pid 1759973 invoked by uid 1000);
 Wed, 15 Dec 2021 20:13:39 -0000
Date: Wed, 15 Dec 2021 14:13:39 -0600
From: Rob Herring <robh@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Wesley Cheng <wcheng@codeaurora.org>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: Re: [PATCH 1/3] dt-bindings: phy: qcom,usb-snps-femto-v2: Add
 bindings for SM8450
Message-ID: <YbpMc095FkeEAO9T@robh.at.kernel.org>
References: <20211213131450.535775-1-vkoul@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211213131450.535775-1-vkoul@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211215_121342_884065_590103B5 
X-CRM114-Status: UNSURE (   8.13  )
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

On Mon, 13 Dec 2021 18:44:48 +0530, Vinod Koul wrote:
> Document the compatible string for USB phy found in Qualcomm SM8450 SoC
> 
> Signed-off-by: Vinod Koul <vkoul@kernel.org>
> ---
>  .../devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml          | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
