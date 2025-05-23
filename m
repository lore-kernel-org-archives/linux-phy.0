Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15C3CC54ED0
	for <linux-phy@archiver.kernel.org>; Fri, 23 May 2025 08:59:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EMPWHMY4yABpZ18DTWoxTI/+INWu+lY3dEFiQAybSQM=; b=eF9WdKcm54O5jf
	WF7Sp72hPIwHpCoZRW1HsGCny+HULpUgpujqingTp7GajyNeMj+3V+nXjFI8OP9/jIvo9pppmOLBU
	NxUNMw4oxEMw80SrKyicTKDt2snhSVatQQO8+2kcoWeLBPBVmDz7t7FcBTi9XRYGPaYpFE3xA/EQb
	qaj8rUc6FcwCZlTlpg50ML1f72HGeQZpYiE7azjxdm1kzOSOEEizQGOdZ4/8yhPr/sUgcJx6YOY3N
	HEdiz7TNNb2YiO8bXQuVHmrHfdtwLbA6D4x9TVEEVWUYvd9NkD6i7ZaxQWnzSGBDm2qnSthSSBshm
	L1wkxAQIHLhgHmeW+QhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uIOFM-00000003Ngx-3Uf5;
	Fri, 23 May 2025 08:59:20 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uIOE1-00000003NTX-360Q
	for linux-phy@bombadil.infradead.org;
	Fri, 23 May 2025 08:57:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=RfFKMGjhmwchkhht92h9c+OKeZQO+vdRnItyg0hwoco=; b=Y50Z3K67bgtl5pWsjvXG3BvN+N
	hWk7oI/ClpG9HGHVK1SOEMGFRmImjZsVDp5k99DYDvY8cxCoElBxDSY+son8627NJ3FOXM/I3zYoQ
	TK28xExttaye4NnfdheMmaqUZsJEomjz5HIdaVMocSx4N4g2DFpMIyozD1SZzT1lmvxzAdaGu4G5P
	/hIIHqamoQZH6nycvNeeBhiCrGVnQGojlKfN43ZNEFBO1H3izid6VMWo6YiyC52A7Z2TFqrUbd/Yl
	DL3WLgZVSIJEqnkM0SldBizimxhXQ5elBHavbo2ZEQtdNioqNyEJ6pRKA6m79q8CaF/8WXkf4QoOq
	6TWYGc2w==;
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1uIODx-00000001EYI-1WFH
	for linux-phy@lists.infradead.org;
	Fri, 23 May 2025 08:57:56 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-44b1ff82597so8692075e9.3
        for <linux-phy@lists.infradead.org>; Fri, 23 May 2025 01:57:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747990670; x=1748595470; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=RfFKMGjhmwchkhht92h9c+OKeZQO+vdRnItyg0hwoco=;
        b=bDIkXK1S+Xi1OOwLifkHuE6tTfXIYoVInQ/N5UNBfcM31+mqWuqEouMLnaszxv0Z31
         DvrRdHrZ/WqyPBet8BqQMlu23A8cQduBk9DqKv1k9TzEWku2V7D5k9Z6ds8EyfXOl2MC
         OLGt6VsZLS8S5Fj7h8UWUOrI2nj2S7gbZVwK8Pk77YWd0cC6EyhTOXiRBHKx7XWjDWla
         070X9ZPcpRjwQR1biYpu0tx/ScjrYexa+YgrLCZw1/8b0y2fS44u5Cq/gP18hOMajnAD
         WDeb7zoq/PKlLt+xs7gucik8eit2ss9sqSGJctVS8KXmcUAPO1cHnfJZaQt4dlUfkD94
         ZmMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747990670; x=1748595470;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RfFKMGjhmwchkhht92h9c+OKeZQO+vdRnItyg0hwoco=;
        b=IC5TE8/gjhN654/e80iix08IcGhZlxIimJAhiPg6ziIS6fKYUD6fJoPz+yIF4M8J/I
         Dj24mdqFxP4oQog+R/G0n5Lv4mJVgm9EetG+rnK7ugLSasTbrya4aGI6MaJD9zHJdSBc
         DEg4CMG8kTCWKKs8A7/ZBAoT8C3Fe/yCzEBfjLZCSzaUuxWjr69xK5HLfue6iH2zxebM
         MfpuVqVABuOvOA5xbxNzzx8FgMXqZwDvewYSU49hjRhvJFFgMbkKRHnXeTH2bagYj7RK
         nXTPXRX/WAE6u4zLURgi7slYN/AyaEe3TftyIvuloQpXMcYF7OO0jbuDeEAPqixGM8vo
         JOTw==
X-Forwarded-Encrypted: i=1; AJvYcCWMcrpI6PQylHhqpfIWl3KUbOr062zCkR+1RAJWz3WHB3nmpZOsmHe14XrgCXLPeN990Dncka2cWI4=@lists.infradead.org
X-Gm-Message-State: AOJu0YxX5F6h7B+oNEGfpHz2PM2KdQvvOjUk7wY8Wp/JOqcwFgZjXk+o
	jJSXzWNx+Y3Lu92SJeejgYJYOacLUiippgC1wbG+suTLp8+TQzmY1aZ7NZ5z8ZOXgtg=
X-Gm-Gg: ASbGncsQxP6FL0sK6dNr+mcPuNLLRpBwnUq1uUIB1xR0XBZJVjBNBaHp6YlPtxbYc0j
	BW2S8RMrLmoA5u/8rybw8M4sX8G7mvrUtw9Qq+gkq9rOWeu8YbI9RqB1txsJk8Fs/jtO/4trUJq
	/luqELPpkvcb0p+DOMEwksVQx83owX3eYnlULcizLmEBFFSEoBG0TW5CA4dHSB86wZ/xHtIER0o
	gt2aAA2ScOpeqwTkCWDgAaKoPQqyfnnciyZo3II53MOfC9qa1LwuMGtdrOczy1Q6nn9XyvlYh07
	t1kPB6+rxfsERuEdYyDwegYRiRfco0j5NTr7ew8zi1nm7sHg
X-Google-Smtp-Source: AGHT+IHHxrO7RmsC0W9xvWaQ+dC6qT3jdE7nDzcMo1MJLtWEWcqBIqZe1g/PlkKdlnZgRPJUP+bVdA==
X-Received: by 2002:a05:6000:1ac6:b0:3a3:685b:118 with SMTP id ffacd0b85a97d-3a4c20f8e89mr1885140f8f.24.1747990670494;
        Fri, 23 May 2025 01:57:50 -0700 (PDT)
Received: from linaro.org ([62.231.96.41])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-447f23c07bfsm134127175e9.23.2025.05.23.01.57.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 May 2025 01:57:49 -0700 (PDT)
Date: Fri, 23 May 2025 11:57:48 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/7] phy: phy-snps-eusb2: fixes and cleanups
Message-ID: <aDA4jM0bb9kR7TiO@linaro.org>
References: <20250523084839.11015-1-johan+linaro@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250523084839.11015-1-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250523_095753_543763_D520070F 
X-CRM114-Status: GOOD (  12.46  )
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

On 25-05-23 10:48:32, Johan Hovold wrote:
> Here are a couple of fixes and some related cleanups to the recently
> reworked and renamed phy-snps-eusb2 driver.
> 
> The clock and repeater imbalance fixes are not marked for stable as the
> first issue was introduced in the recent rework which is queued for
> 6.16-rc1.
> 
> The repeater imbalance has been there for a few years and
> could be backported even if this is now complicated by the
> rework/rename. Since it only affects a resource leak in an error path I
> decided to not mark this one for stable for now.
> 
> Ideally, these could go in along with the reworked driver for rc1.
> 
> Johan
> 
> 
> Johan Hovold (7):
>   phy: phy-snps-eusb2: fix clock imbalance on phy_exit()
>   phy: phy-snps-eusb2: fix repeater imbalance on phy_init() failure
>   phy: phy-snps-eusb2: rename phy_init() clock error label
>   phy: phy-snps-eusb2: clean up error messages
>   phy: phy-snps-eusb2: fix optional phy lookup parameter
>   phy: phy-snps-eusb2: drop unnecessary loop index declarations
>   phy: phy-snps-eusb2: clean up id table sentinel

Really straightforward. So for the entire series:

Reviewed-by: Abel Vesa <abel.vesa@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
