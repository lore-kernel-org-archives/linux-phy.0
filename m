Return-Path: <SRS0=FYmy=KQ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 10C4BC433ED
	for <linux-phy@archiver.kernel.org>; Fri, 21 May 2021 01:41:04 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D208A611AE
	for <linux-phy@archiver.kernel.org>; Fri, 21 May 2021 01:41:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D208A611AE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FtYlHkoRKMY58QpWV3n440BRpt5DVOVscg6XEAbbXbQ=; b=BL2yFGXdrWGLFZx/a5EX7P5G3t
	gWMJJE9yUBaSN1za1B6p/dTw6iLwBnoRZRY9Q3pZt0YzyAO7b7kd+QKwjebexyheCdDAiGgWmUlcx
	K+H4TXrjssoaifCWEGE2yG6KNI+Yhmw8bWx8JfBeCkJqNju0evarm2X06MsQz6sI51fvfkFdxaOG3
	E+k0nsWGHMBNhrySmG9+sBMWjwO/lAoCEfXR0/ChKHueGJ4qeUP2e0cTKFVa3AnN720aMV6oqUS56
	cP5I7U7z/iDOFi/5u/LA13FI5O6z6ASXl2gaIeONY7irONa9k2497u/rSbFCvHCfou/7UIq9ZHyyl
	0JDcbSHw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lju9u-003I4i-3C; Fri, 21 May 2021 01:41:02 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lju9I-003Hoh-ET; Fri, 21 May 2021 01:40:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=QUghhfxEpPBhTg2FPZWIXXnyK2qF8xWGXvlE71nYEfk=; b=zZtS+2G5FRilJxwmJolKn0XloX
 fKyjGWqIP0K7gCRt01ZbH5//ZIhafqKxX4Uk7vVTtrnIPM5KviHlV30ljnhlRpVAI0LXKUykIUV/Z
 ZIyAqTqaHchGHwsfP6IEFtkR0X0EpH+rRHwoiBpV2IoiFVv1z/O0doUfqhNdIBYk07vLF12sSTQ/X
 ud9OlgjydGwif6Lrs/ES3wiX6s4QbDZ+lM/cQb06WWg707MEuf+Wj7kGxWlD2+8h43iNnPl7YeGdg
 3+/UGiQ6ALgVsCALWUuC69zOhrummuzaBkrlXW9cZOBawiQc9pcitXMJh40g1JQv08SXEg2X/yWGZ
 1t2F8evA==;
Received: from mail-oi1-f178.google.com ([209.85.167.178])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lju9G-00Gkd0-3u; Fri, 21 May 2021 01:40:23 +0000
Received: by mail-oi1-f178.google.com with SMTP id y76so8979647oia.6;
 Thu, 20 May 2021 18:40:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=QUghhfxEpPBhTg2FPZWIXXnyK2qF8xWGXvlE71nYEfk=;
 b=YQqm3bB/OID/BCHLx4u8Y6eR+FCJzDoo3odUPCnJ84xW+fx1ZQotajEKTz210GBRIG
 LmQIIjQLAKgv2VzV+MP6RIf9PhkrKpdw1NV52SfBwG9t7880CDrF7z5oPNpKB39IYoMg
 J7OwSuR9GoDGdPrNCXAjeUqTEZ+xqzJuk22AZk67sHm67b+9dkPZXbIt3paFhGORjz2O
 Tq3ubEFjYvU5utvaWNEkHnIiHtbwIKbXMWHOkrqDqX7RmtU6U1NKzZVwtl+INDlBeKY+
 ZYwp0qCI8tdk73xQr53vXjMY+hb3M3gHpB17j4CQlr/0aqpwbEyJwnLgmalN2yB0adwY
 j1Eg==
X-Gm-Message-State: AOAM530abh9U2OIsM20nGdMaGZtkJfhiyF4fVvKEkxpcF5nQW/megAvX
 FKpBoA/OdSg2LZpztGUncQ==
X-Google-Smtp-Source: ABdhPJwH+KkKDT3WwGvqY7ufqlGVOEsWl2fB3WmHRzUPq3j7OEk7UKbhMDylMLO+rlhWOE6K2/QKOw==
X-Received: by 2002:aca:1819:: with SMTP id h25mr271032oih.168.1621561221154; 
 Thu, 20 May 2021 18:40:21 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 7sm973941oti.30.2021.05.20.18.40.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 May 2021 18:40:20 -0700 (PDT)
Received: (nullmailer pid 2461725 invoked by uid 1000);
 Fri, 21 May 2021 01:40:19 -0000
Date: Thu, 20 May 2021 20:40:19 -0500
From: Rob Herring <robh@kernel.org>
To: Andre Przywara <andre.przywara@arm.com>
Cc: linux-arm-kernel@lists.infradead.org, Icenowy Zheng <icenowy@aosc.io>,
 Vinod Koul <vkoul@kernel.org>, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 linux-phy@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>,
 Ondrej Jirman <megous@megous.com>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 linux-sunxi@googlegroups.com, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-usb@vger.kernel.org, linux-sunxi@lists.linux.dev,
 Samuel Holland <samuel@sholland.org>
Subject: Re: [PATCH v6 08/17] dt-bindings: usb: Add H616 compatible string
Message-ID: <20210521014019.GA2461696@robh.at.kernel.org>
References: <20210519104152.21119-1-andre.przywara@arm.com>
 <20210519104152.21119-9-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210519104152.21119-9-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210520_184022_175724_2DDEAB91 
X-CRM114-Status: GOOD (  12.63  )
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

On Wed, 19 May 2021 11:41:43 +0100, Andre Przywara wrote:
> The H616 has four PHYs as the H3, along with their respective clock
> gates and resets, so the property description is identical.
> 
> However the PHYs itself need some special bits, so we need a new
> compatible string for it.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  .../devicetree/bindings/phy/allwinner,sun8i-h3-usb-phy.yaml   | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
