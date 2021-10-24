Return-Path: <SRS0=3F4a=PM=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C135DC433EF
	for <linux-phy@archiver.kernel.org>; Sun, 24 Oct 2021 15:36:24 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4D24460F21
	for <linux-phy@archiver.kernel.org>; Sun, 24 Oct 2021 15:36:24 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 4D24460F21
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=20PbznYj+LwfsDqApLTXS+uixeXz1aw7KJWiINuSGRk=; b=nwL99qirIU/8aD
	LVXdAfJcPUFHCUVgjuH2zdvt7lw8YK1VsHcEnH1si7hao5coqkeC5zV84vVe2a/dkUs20TYfesjOT
	bZdFb4WF0raxiQpzSzNOpqmLplPZGLyiQ3Asbn7/sIPUAlPzJDd4k916nog7k3x31aw111rKWTFw+
	csjKM6ggOUjGe7oBE1tUoP5rZk7qpp3pBDtbNbd60pB1hUJgVlBsvXoV6rwrO56vXX9JPS+MTXvku
	MD754q7Lz7YU7/0c4A/bzX0Zkp2lQvXiNlk8z/sbROhnsKJdjMntFIHJV09kiEatisfnBgFCznDbO
	JSH90xrM0cASijdojkqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mefXr-00EBC5-QJ; Sun, 24 Oct 2021 15:36:23 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mefXo-00EBAf-G7
 for linux-phy@lists.infradead.org; Sun, 24 Oct 2021 15:36:22 +0000
Received: by mail-wm1-x336.google.com with SMTP id g141so8163085wmg.4
 for <linux-phy@lists.infradead.org>; Sun, 24 Oct 2021 08:36:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Uo+KZSKbMpCYD2HnQVmUgWBUvnOq/cWI0Zv67K4qsag=;
 b=yu5Z4gfoU+YC7zzBlq9uJ6PXvotAkI9fzmpdOOfZJqkYYQUBQ7/Z/MTdSwgi4nd5jb
 B3dyMlOYGV88bSwN1GoOONZ0UT/2ZqC5ShpiUsJKxBtW6vnCE00UhsZcr8Urk7ytx0/S
 NDdcZXNGmOLXHRjfF6zjYBygT8MkmkWhD/CCxddf844M0hv+4uUkNr4d9WJOAdXOWNI2
 sWAOU5teuRpYkPKTVpSLWSPndpLuaaAaVlhoAbz63sJx/c/IzZtD7mXjtv9bDca89bA5
 1GNLXAbJJLnvKiOAtAE6++GUirONvnRdY8bSlswlBmlY14qE8e7wRWCPqV9F5H+NviO1
 C9Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Uo+KZSKbMpCYD2HnQVmUgWBUvnOq/cWI0Zv67K4qsag=;
 b=lmXnepKirDedZ8vRXhdntmq9ditkgYHOc9FFZ4FY4kMmhFXZnxu5aNDywwkQjsibR+
 7yF7j4rskDMIQfiyK/g9FI7qtaunxD7QJubrs05LgEScKRKEvpoKph21DqWB9ItLM2tU
 eONsiHINRQtnMNqGkzBos8bv1eE7VjhPSwzokimaU3+/2SZggfa3741CXRn2eIV5wOOP
 vZyDgGAhBoAdU0r64+uyKvDbyNdekvtPoFfImd2vMUyabmZolcMDtD/JJatWR5CpWayC
 +m7tKXzpC04F2NqUPqNK2WmfHd0InGdMy7uDEF1FsCiGoWz573C8K8JesZb+J4YuuodS
 eRwg==
X-Gm-Message-State: AOAM532D/VxdIb0C7/YpkYzkAAa0mMrC5zYM7WkJHJaHIRT2JEIXLmJW
 dTAqWY3n7DQvvoMyaVHJaVrVjg==
X-Google-Smtp-Source: ABdhPJwwN33lxeowWbuondAurMoTKsZYNPHjpTT6hvtmBIMTKVjY9pcuRTU0VfDorky8HCqiHArLDA==
X-Received: by 2002:a1c:7fd0:: with SMTP id a199mr43354530wmd.96.1635089778344; 
 Sun, 24 Oct 2021 08:36:18 -0700 (PDT)
Received: from blmsp ([2a02:2454:3e6:c900:5142:5fbb:5821:5dc3])
 by smtp.gmail.com with ESMTPSA id w7sm7605993wrm.64.2021.10.24.08.36.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 24 Oct 2021 08:36:18 -0700 (PDT)
Date: Sun, 24 Oct 2021 17:36:17 +0200
From: Markus Schneider-Pargmann <msp@baylibre.com>
To: Rob Herring <robh@kernel.org>
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>, Sam Ravnborg <sam@ravnborg.org>,
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
 Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, Vinod Koul <vkoul@kernel.org>
Subject: Re: [PATCH v5 2/7] dt-bindings: mediatek, dp: Add Display Port binding
Message-ID: <20211024153617.inkbrjzqjp4mspyh@blmsp>
References: <20211021092707.3562523-1-msp@baylibre.com>
 <20211021092707.3562523-3-msp@baylibre.com>
 <YXNG8Qy5jAPdWbHY@robh.at.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YXNG8Qy5jAPdWbHY@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211024_083620_600426_0726AE45 
X-CRM114-Status: GOOD (  15.38  )
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

On Fri, Oct 22, 2021 at 06:19:13PM -0500, Rob Herring wrote:
> On Thu, 21 Oct 2021 11:27:02 +0200, Markus Schneider-Pargmann wrote:
> > This controller is present on several mediatek hardware. Currently
> > mt8195 and mt8395 have this controller without a functional difference,
> > so only one compatible field is added.
> > 
> > The controller can have two forms, as a normal display port and as an
> > embedded display port.
> > 
> > Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
> > ---
> > 
> > Notes:
> >     Changes v4 -> v5:
> >     - Removed "status" in the example
> >     - Remove edp_tx compatible.
> >     - Rename dp_tx compatible to dp-tx.
> > 
> >  .../display/mediatek/mediatek,dp.yaml         | 87 +++++++++++++++++++
> >  1 file changed, 87 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,dp.yaml
> > 
> 
> Reviewed-by: Rob Herring <robh@kernel.org>
> 
> But can't be applied without the dependent header (or remove the 
> dependency).

Ok, thank you Rob. Maybe I will remove the dependency.

Thanks,
Markus

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
