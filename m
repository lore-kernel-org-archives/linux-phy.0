Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5D60C282D1
	for <linux-phy@archiver.kernel.org>; Sun,  9 Mar 2025 09:23:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l/thOXi2dv6XVHUIcUFL9Z4xdj891vbA2SRZgpW5hks=; b=oDS+Lgm1pRMO0r
	fAit7AS3qAWp0AQ2guQ5swgI5GIrCYmzSCe43dgpEmpM+/Ok4GYCGWwqZpZXIVN2zqhbcSIEmNdSJ
	UvQccxH3h4I8JNs9r38yn82X+SskVD1zHEEECsVQJiX9vj5dI2Pdne2C363Du6I5tEHZLAwAQbEcf
	qs86RVUgot69QZDOJsMyJnx6Ewitiwx2At7gl+HZFm404054d/L5dtwUN2TBeOckMQSNP4R+lsV9E
	5tMvjhfvJTow+l8i4jtAxuhsBpWKoAKUTt3EHUAeqBmduav4sgfJrZk2momv14Gc+QaWB0MNGfU6B
	Fmhvv7h8AC8kubckQpYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trCsN-00000000H3Z-2vgX;
	Sun, 09 Mar 2025 09:23:15 +0000
Received: from mail-yb1-xb30.google.com ([2607:f8b0:4864:20::b30])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trCoY-00000000GaW-1EUY
	for linux-phy@lists.infradead.org;
	Sun, 09 Mar 2025 09:19:19 +0000
Received: by mail-yb1-xb30.google.com with SMTP id 3f1490d57ef6-e60cab0f287so2221658276.0
        for <linux-phy@lists.infradead.org>; Sun, 09 Mar 2025 01:19:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741511957; x=1742116757; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Jv9BJK8h1smkPFin/eoitVvyZGcBn6mtj+ZWUnOyrrM=;
        b=WbYd5gzVVoetdsqJJ3dCurh8diz7M75W2N6zrYP9i40rLrwvFwMFJuQrSCGQxfti1M
         AGNrpp71gXdfrofJzW6BkUbWooC+x22nAlce+XAhnLaTk6fq2yrCY5TCuvU/cPbKWfR5
         Mv/q05iON0fgH0WwTeRenhFZDxwnrQEZF8hXeby4HK1a7XRcSgw6Cuv/TP28s30BirXi
         sbwabBhe1DRrF7GkUXw93FGXDgNKeF/JiWrdC0fWUmWjcWIJL0Yg2oqxGO9IRCWo/aoT
         Vv6LPekB6JgyXSpm4ig4wS5/NBuD74MPrG42RD1yRR+tnNpbJe+wc2cUSdl0wZ414YTt
         Zliw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741511957; x=1742116757;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Jv9BJK8h1smkPFin/eoitVvyZGcBn6mtj+ZWUnOyrrM=;
        b=b7dMbBuyyLt9Unbnm4DJa7yvPpXTb8II0UG6yfZIAUkUDr94igDwPTr1PCYn6KnDRS
         KONvQ8b3cxKeBGls5N7eSYT1HxRVeVJC6yrhC6p8sEeDtsoZ+FJ/K4+CfG5inl64z168
         bKGO6gvgB7g7aafuVNkkUP7yXjg7tnFo2TA9pQRnySbzVlUmALqvdqEHexKnv1sIF1BI
         g2M84pz2yZ6+EoGn+trVEDcUidrKh5lpwvo7d9P/73/iEFin+zIWUtDU0TaDkQ2vIox/
         cwpsn7B7sRXDdug/mgjYFszhCVJOPNCE4rU1s/onkqKW5IjLgdxZhvswar4DR/Z/f9BS
         RwBw==
X-Forwarded-Encrypted: i=1; AJvYcCULGJrF422Y8GFw5PDlbYyYHpBb4v7tAXGb9yMtzlE0RbXdzNExJU8+JrqUl1fhIkpE68xUNoRCR+c=@lists.infradead.org
X-Gm-Message-State: AOJu0YwcCqNEA+q5OF7vG+ohH146t598Mon+R7x1y938D9/47z8JS6p5
	ZXZ5VzBzewSJ/t0pD1GWHO6veJYZzIrjNZgJ67ZGVuFTxA5rLfou6DruNqDrmJgEiqSElxeVZUp
	eOIrYwNXDz492yvIzTd2Tu7Nx2HjdKuZQ9mdvNg==
X-Gm-Gg: ASbGncuE48wykKJxwH2wwdgWIIgk2lIzjgAvlry5bF5aVoFBSbOfY59xg6nn9lXHrSb
	qrOWIhSeboiLp9sIAYN24XEJY6wyCQwKdOHFa4gVfuzn5lOg3Wy7fFf4pI5UkUe9fY9tO/KpQ+b
	GiceZEfUH4qqY+VO/j9KxAvvIFAMqb4T2Ius24INut
X-Google-Smtp-Source: AGHT+IEu/PQ12bVNZYXCd34qYJvUqyHf2vmlZ85Q5AvR10mVaF6BlXxpWuNpl9htbiSsYttCY66TAN4aoeQg9Ypsf2c=
X-Received: by 2002:a05:6902:320c:b0:e5e:2428:fa56 with SMTP id
 3f1490d57ef6-e635c1ed376mr10933687276.41.1741511957257; Sun, 09 Mar 2025
 01:19:17 -0800 (PST)
MIME-Version: 1.0
References: <20250308-phy-sam-hdptx-bpc-v5-0-35087287f9d1@collabora.com> <20250308-phy-sam-hdptx-bpc-v5-6-35087287f9d1@collabora.com>
In-Reply-To: <20250308-phy-sam-hdptx-bpc-v5-6-35087287f9d1@collabora.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 9 Mar 2025 11:19:06 +0200
X-Gm-Features: AQ5f1Jo6fNACL-x0ajpVmroongj8VydVA56TBkhnTi7aC2zOMYCGM315yQKl7gQ
Message-ID: <CAA8EJpo_AF6BHCDThNncuH36VHZy1ZJX-=Qj8mj7-UZY41rCuA@mail.gmail.com>
Subject: Re: [PATCH v5 06/12] phy: rockchip: samsung-hdptx: Drop superfluous
 cfgs driver data
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>, 
	Sandor Yu <Sandor.yu@nxp.com>, Maxime Ripard <mripard@kernel.org>, kernel@collabora.com, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250309_011918_338529_A71F07F0 
X-CRM114-Status: GOOD (  10.34  )
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

On Sat, 8 Mar 2025 at 14:21, Cristian Ciocaltea
<cristian.ciocaltea@collabora.com> wrote:
>
> The ->cfgs member has been introduced via commit f08d1c085638 ("phy:
> phy-rockchip-samsung-hdptx: Don't use dt aliases to determine phy-id"),
> but it is only used during probe() in order to setup ->phy_id.
>
> Use a probe() local variable to store device match data and remove the
> now unnecessary member from struct rk_hdptx_phy.
>
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 12 +++++-------
>  1 file changed, 5 insertions(+), 7 deletions(-)


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
