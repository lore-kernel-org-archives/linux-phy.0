Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 836F4C5CFF1
	for <linux-phy@archiver.kernel.org>; Sat, 21 Feb 2026 01:01:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9H8kSLSnOKH/W/BTE3rZMWF6X0I1LsmH1BqNd/f4c08=; b=OqzsSAv+N58KB/
	BnBmSe7KKxSUkh85C+gtstMvvssBtXLvj5YkXGQye6OyeaInCLAs3wySBHaIDPFeVXxWjwiEqUsP3
	cVSngJVoO9hwrTopq/f2aa5SBKzwp9YSsV14rtlSyUtSkBLWrn6K9r6yhOFyOKsSkZxRfUN/BLAFx
	g78YtZTzi9fyT5tJSJn3IxF4ejM4BWsIxbuxKpC9mbAUnyCGx9OszUnaCFYli3p40PhymjK/TnMvN
	GMughl6apKhHLIEvNlNCPrbBEMMG0/s1y9CZtk1Bz0HGvJHXteBay3s86KeUNaA4+ARopFbkqqYK7
	bhnw23pVND0Y0qy61OYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vtbNe-0000000Fjd0-1Gsw;
	Sat, 21 Feb 2026 01:01:58 +0000
Received: from mail-dl1-x1236.google.com ([2607:f8b0:4864:20::1236])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vtbNb-0000000Fjcf-0Xhr
	for linux-phy@lists.infradead.org;
	Sat, 21 Feb 2026 01:01:56 +0000
Received: by mail-dl1-x1236.google.com with SMTP id a92af1059eb24-12758ce1e8dso1226383c88.0
        for <linux-phy@lists.infradead.org>; Fri, 20 Feb 2026 17:01:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771635714; x=1772240514; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=887Q6Bd0WisWLv8o7hwzu84EYKbeJEL6+m7UMSOqUCI=;
        b=lfkTGV1k+rTX+5fn/Ec7Scwyky05zq5r+tGsGDCJiQC271+YxwbBDXgvn0MQO/trh1
         2PO9b+FgEzQ8xkAXA761NJckIA0cFFjZt/+YwYzXBE+irp4RICxZEkXTRtatf9dFUnXF
         /KR2qv/jAdhXnZSlHLXtMJEPe52sVy+ECyF2wCxmSP8VNoLmXvCM6bdysTME2DXtLOkc
         d4YokQeuUyi2OiwcLfiBJNCsP2SuCOeGod7ZfteRZDFGKZgiDBa3Gwcr4/3TRELQ+cvE
         pWVyx0w7sMDsW0xT7DjLZGeuooUH3cKep/5abeZf05Qu62pDKhPwh9mo+9hoh3bMbVrN
         hs2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771635714; x=1772240514;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=887Q6Bd0WisWLv8o7hwzu84EYKbeJEL6+m7UMSOqUCI=;
        b=lxLCpW5CnS3P2n9YvtXIKGkQHD4zC8TkFQDhDGqMLWBNYljFD9CJQA++BTJT1Ml52y
         4MywP3rofv+CGauEuDFwcj1TdOYdpM/NU6ZHCMR12Dv0BQQ631rnyMKxU51y/UtN7OWb
         mB3YEGqQ056aTa/HYFbh8nzr6ke1eQA2vAFwyiviBvw5ieLjXWhx2bkOLhxZ68gwK95r
         4MKDWkhLighiM9C8xZ5B8+ERmLYw4Achr8YLqXF8PqF/6TC9SbuSkAN4DiSPJTkFMjjO
         pY2+6PRX2LIR/JoDU6i4T86s4JiLo/GH1CqaWHDO5iBPw3aqFxVz/Zc8eRRWsaUxumQV
         aFZA==
X-Forwarded-Encrypted: i=1; AJvYcCVbre9SDkHT9u2dIpu8OlvdkO2sB29PDqyQ/uZ+92rI9EQtdBTFhKQiUOHdvQRJBP1F5RvDYuHxons=@lists.infradead.org
X-Gm-Message-State: AOJu0YzrR7AC7i0Uwl7l93DEk596oOkJs7jUCdu6G9s/gIedAeIRzDSU
	WEVS6FFRZr1DfmCe081nGak3zdx/v3TyUTkPCOrG1C0IKsMrogGAx3nW
X-Gm-Gg: AZuq6aKcpWPCRF8TPFm5igPvu0YIJJKUKCxDwNeYSxdCbKXgV6vrX/O8k07R6J20t+4
	yCZvyGSOAorHkwEh2QfbFWQjLSZCC2ostvX9v2awMEaTE9G6hhZiuS+CdeGAhDBiGgWdxQDsctO
	mgSS+/6PVPaDJJnVGVBqz67ryQVOcylE50m3gwRv5I7FlfONX+/CdDJzt16+GTvbufj9tp4rTSl
	8B5i21zOcRAylb8C7399YBcL+Z9f3JfdD3p8lHsCjHUdeLB7PkbUmI05IXaeZotezx7gVS5aBWa
	oOXsNUyRc71JGen6sRv0AOLx7taPBhMQooub/lgcnbK9MCfvLFmMTOiYhmx82FGklpaUrEHOHWu
	iIk4wSZcJoJsvnBSEKJS/yCfZL9HRT8kUzfiMhaZsib7CoWb67YOOqxNciumSSM4h+W/xEWV0a9
	fyJZh/0Bck25UGraQXyyjTn5LqmBtwq8MZj2P9hF1sTXKGkA9VA/aprzYTpk+JLXzg
X-Received: by 2002:a05:7022:786:b0:11e:70d8:5dbb with SMTP id a92af1059eb24-1276acda6e7mr713501c88.7.1771635713544;
        Fri, 20 Feb 2026 17:01:53 -0800 (PST)
Received: from google.com ([2a00:79e0:2ebe:8:30e0:64af:2b48:14be])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1276af8ac3fsm914502c88.13.2026.02.20.17.01.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Feb 2026 17:01:53 -0800 (PST)
Date: Fri, 20 Feb 2026 17:01:50 -0800
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
	"Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Johan Hovold <johan+linaro@kernel.org>, Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>, 
	"Dr. David Alan Gilbert" <linux@treblig.org>, Peter Griffin <peter.griffin@linaro.org>, 
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
	Zijun Hu <zijun.hu@oss.qualcomm.com>, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: core: fix potential UAF in of_phy_simple_xlate()
Message-ID: <aZkCyQ1oizPXplyU@google.com>
References: <aZejMSJ9qqRWb2pX@google.com>
 <aZemjhBNFyOfKeNL@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aZemjhBNFyOfKeNL@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260220_170155_176346_428D9C88 
X-CRM114-Status: GOOD (  16.34  )
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

On Thu, Feb 19, 2026 at 04:11:37PM -0800, Dmitry Torokhov wrote:
> On Thu, Feb 19, 2026 at 03:57:11PM -0800, Dmitry Torokhov wrote:
> > The implementation put_device()s located device and then uses
> > container_of() on the pointer. The device may disappear by that time,
> > resulting in UAF.
> > 
> > Fix the problem by keeping the reference to the framer device,
> > avoiding getting an extra reference to it in framer_get(), and making
> > sure to drop the reference in error path when we fail to get the module.
> 
> Hmm, I was too rash. There are bunch of other xlate functions that need
> to be updated to take the reference.

So I am convinced that xlate functions need to bump up the reference to
phy devices they return. The question is how to deal with the ones that
do not. I can either convert them in the same patch (the changes are
quite mechanical) or we can do the whole song and dance, introduce a
flag, set it up in converted xlate functions, have the core respect it,
and then remove it from xlates and from the core when it is all done.

Please let me know.

Thanks.

-- 
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
