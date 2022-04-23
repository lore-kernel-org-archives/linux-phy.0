Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A156C433FE
	for <linux-phy@archiver.kernel.org>; Sat, 23 Apr 2022 18:58:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DlD4AcZFzom0CWFc2GdjeBuT/Y44mcX+azUn3TBo9IY=; b=uZjLty5FEnQ3pt
	tv2uHuNCFnM4Ob5zI3YPW10gvoUJMtcLLIHwcoUbQsBt3kA3iNyba1CdCGGpcVsyQnKntK2/K87hu
	M5bdRXDITLLhikT0RsfsWzM3ZsdUZk2XA5qehXACmzsQzqwEXdPQ4NRN87oCF/gjjc1EtAUead7L5
	QcpVtH1oHxkm2dz3jUAxbmCBhQtkeCJbS6cmDy1znts5eYimtOTGdVxko0THV0UIFWf6HHuohfN+y
	hsmDE8k9kIjTl+cc8VHW7xck9HN0ofLuR+xR/iEQpK/ijI95L6vJbnghDWrEUVeEoyNJiIkfpUB4Y
	U3C26HnNur0ZaCaJingw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1niKxm-004rw9-PS; Sat, 23 Apr 2022 18:58:34 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1niKxk-004rvF-U5
 for linux-phy@lists.infradead.org; Sat, 23 Apr 2022 18:58:34 +0000
Received: by mail-ej1-x636.google.com with SMTP id k23so22289078ejd.3
 for <linux-phy@lists.infradead.org>; Sat, 23 Apr 2022 11:58:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=mbXH9GkXryg1QQulWs+ls+5h6FW0yxx7/Y7vRbR6C/s=;
 b=T+ifu4nHMWFUHBZzJCy9RJEez/dm0zUE5pi+Q6k6Plu1gNN6KWhdQYqzOBEiYPmDK/
 tUlfW1QT0omI72H3KvVwzPXGU2sOVlM6vnqNWrvZfvKWUlt0MwxVE+nN0pKWF/mkyqnV
 cKcyS8B5TYXKosP3NybIAqA2Y85MGL6kFOBpQdjIW9uzgDylcmOUW1/EeZ9ZkQtZDHWw
 gKqRzrwV5Q3zB3cScmyhYsznZIHAm1zBiovkCb0VplLfa9u1v0MINxhkHD5Bw5bZpGqg
 8xmKWutjiWTn2Zz2QsoQyjLTN0qhdOybYG+SJYf0rEbB8iSFB5c+eop8SF/wNEX3H3Bo
 9NFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=mbXH9GkXryg1QQulWs+ls+5h6FW0yxx7/Y7vRbR6C/s=;
 b=oaS5rqXaswG02ALKLTunXwBygNMyb0qgFqRu78eJNZdKGhM9InaVvvmqOq8KjdP5lS
 W+n4J85Le2A8IObteCudBPgzeCAwpxtcFSEr5Eiehqhh1+vrAGh2O14ZiTttgnVKj37I
 QVe9TlaNG+EBapCUjpvTy3adesV/JKOZ3ZXtLRAyoJGUq5EINlOB/VOmMJwMuZrHo1hN
 SxR8+vjsbxBPsqr2dS+kvjQuMDsTqkpIrEtka0lrUvH3Pr/i+2cdUIl5FrSRugia87tP
 S9PcXBaBpBqc32iVuX3dEwr5rrnC1o9OTM0Ob9F4fok1u/Y1gQ1fa9lxxzUriI2Phkrz
 axRA==
X-Gm-Message-State: AOAM533R/CFAztC0p3oOE2gUIyU13rnL/xT3ZgxjEU3aezh4iXFPRGLn
 bk+ex29leENZCMsJQ84pLFqdbQ==
X-Google-Smtp-Source: ABdhPJzzns+nrccigk7TbM/rHh3ycHmBdd+FBGsa20xOxBuUxK8OvDuNcpCGaCRs04d0GnJiJRzGKw==
X-Received: by 2002:a17:906:94d6:b0:6e8:d608:c960 with SMTP id
 d22-20020a17090694d600b006e8d608c960mr9529108ejy.96.1650740310492; 
 Sat, 23 Apr 2022 11:58:30 -0700 (PDT)
Received: from [192.168.0.234] (xdsl-188-155-176-92.adslplus.ch.
 [188.155.176.92]) by smtp.gmail.com with ESMTPSA id
 x18-20020a170906b09200b006e8baac3a09sm1923271ejy.157.2022.04.23.11.58.29
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 23 Apr 2022 11:58:30 -0700 (PDT)
Message-ID: <a8c9e05c-1690-8b62-2e5c-43ca4c516d00@linaro.org>
Date: Sat, 23 Apr 2022 20:58:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH] dt-bindings: phy: renesas, usb2-phy: Document RZ/G2UL phy
 bindings
Content-Language: en-US
To: Biju Das <biju.das.jz@bp.renesas.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Chris Paterson <Chris.Paterson2@renesas.com>,
 Biju Das <biju.das@bp.renesas.com>,
 Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 linux-renesas-soc@vger.kernel.org
References: <20220423134752.143090-1-biju.das.jz@bp.renesas.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220423134752.143090-1-biju.das.jz@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220423_115833_019251_4CD8AFFB 
X-CRM114-Status: UNSURE (   6.63  )
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

On 23/04/2022 15:47, Biju Das wrote:
> Document USB phy bindings for RZ/G2UL SoC. RZ/G2UL USB phy is identical to
> one found on the RZ/G2L SoC. No driver changes are required as generic
> compatible string "renesas,rzg2l-usb2-phy" will be used as a fallback.
> 
> Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
