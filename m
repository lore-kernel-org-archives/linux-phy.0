Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4FFFDC433F5
	for <linux-phy@archiver.kernel.org>; Tue, 23 Nov 2021 05:10:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bqvAsd5kA2Yl+bCkoaAZAn08hKa2PqhHweQ9TF7jfXA=; b=wHXL97LgX6xPNz
	yUCDeVVj7BiiZvY+ZQPXZ05wkSml2+g8eLQRFrdrByV6H3UE3ErUo2RMK8ePMquMuUe9ry9wX+TZA
	BmTiFet9SsDt9VrZUIdmLgXOdn4fM/zmb66tewn5P0cOsODGGC6tU01zt9Zq2/xqL+xyjRT3MY5+P
	KgqXHJFIuLg+7LLciJID+mKRtI8LmueeaE2TVzTqYgIyiic09rW15WjNMAZWH/UUdI05U1MAoEPLx
	43SL/Mc61bp7aPCxXrGPKZcQxC7Z7ynaeNa+k2HHA6NdP/6tjKNriWg2Q/JDYwcISjJQb0iId4LZM
	zosuJrERO95HwdAwGMgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mpO4n-000p25-Po; Tue, 23 Nov 2021 05:10:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mpO4k-000p1h-H1
 for linux-phy@lists.infradead.org; Tue, 23 Nov 2021 05:10:39 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 45A8B6056B;
 Tue, 23 Nov 2021 05:10:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1637644238;
 bh=Rpx9dU9uGnI5Tr8daUSRruJAR8SV1hZNZuYPOlZ31Ig=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=WbR1eSstZWm3zEGjkxa6EfI+E6ur/2hRAL4RiPmwflfHvHbPCu/z1BR3wbouKOkqQ
 uGNDOwHPAYO9fo3gecS+04EMWk1jZV/7BbGCuxKnEUbUZ75sNbVcdmoeCac59Lx4aU
 rKuVVXyGgOoBn8L8XmZOI3uUKNuN+a+wOMKllFefA5hcp75asewgRAR7QxGVk9+ZlI
 yQARh1VD7SyPwOe9Yrq4RQu/BkFYWJz060EWd58wHIPtJwYZ3hMubGdYO7lKr2JmCA
 UlnIdHqQiEdhsMgbXkxwAtUu/PSvyRjxLeaWBt56N53hZxyx/QRSaE67oVfZ9eayTu
 geum2ledSTMsg==
Date: Tue, 23 Nov 2021 10:40:33 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 1/2] dt-bindings: phy: Introduce Qualcomm eDP PHY
 binding
Message-ID: <YZx3yfl8lXVTib68@matsya>
References: <20211103234410.1352424-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211103234410.1352424-1-bjorn.andersson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211122_211038_606635_FFEC706F 
X-CRM114-Status: UNSURE (   5.31  )
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

On 03-11-21, 16:44, Bjorn Andersson wrote:
> Introduce a binding for the eDP PHY hardware block found in several
> different Qualcomm platforms.

Applied all, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
