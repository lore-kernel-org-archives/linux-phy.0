Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55D5DC4332F
	for <linux-phy@archiver.kernel.org>; Mon,  4 Apr 2022 09:15:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7k5lxXDFPtaYwMoT3JGQpz0Qnl8giEL6ruiMsNBozSI=; b=vJkaJ0TkPEv+x9
	u3tEggBRxYuzFYeP4Hs+M/7hPK0Y9oB//4MKHaqE3AKWbmDOt6iFAs0sGDeZTPWyj+BU4UmojtQb6
	leFILykKj1DPTQvDCfg+AdxTX3kqMXMslyq9tjAbJoBvGSJp4pfUH2+NpgghGzIjb7dIgv2WL25OA
	Q90/Dz6hmJWktkhPDjqLxTSBv/tAR/ZBrYhCmwZSVO7b++ygcPi2Rj7LTyI6mRlL1ZYXxDu9Lmbdp
	3c8dGxlqWidLfr23K6pmaWN9uZE2yOcviwGBwKjaoAJOA67yJO08OZ4l430oklBo73NCXhVUWkbSt
	Sz5oU3m0ahrMuaOQ6jBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nbIoE-00E7EZ-Jn; Mon, 04 Apr 2022 09:15:38 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nbIoC-00E7Cq-6H
 for linux-phy@lists.infradead.org; Mon, 04 Apr 2022 09:15:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1649063734;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=zh+UBOLHFqYkLJABHLlIQlGO7HQCcNKtPFV3cCbp8X4=;
 b=hTEKqddRf/BEr24/1zWZnyo16xnxayH3VGs36oFqlgmwOO5bstVzNa7fHL30RvkeDSdBjJ
 WKPLjEy0l7PSJ3+ufRxH8e3DEA605htZyZUs3npCBSAiHU+AbCIgfDpPFZ4y1LEy5YviL/
 UHKxMkclu/culcrM6qtUYerfL80bYFU=
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-637-e1qgg6zlOeCpodiB6nCPGw-1; Mon, 04 Apr 2022 05:15:30 -0400
X-MC-Unique: e1qgg6zlOeCpodiB6nCPGw-1
Received: by mail-ed1-f69.google.com with SMTP id
 m23-20020a056402051700b0041cd56be44cso1131870edv.10
 for <linux-phy@lists.infradead.org>; Mon, 04 Apr 2022 02:15:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=zh+UBOLHFqYkLJABHLlIQlGO7HQCcNKtPFV3cCbp8X4=;
 b=2FbycTmtTLf+qVd2ajG41mSdQNciB1UHODbrjFujjR1u/uK9d7jfHejuIdsI5EeN94
 mbYszmCYj0wCnOHpEigpDQf5u+6sGiWUEPh/d4unve6nxmGLhzPKzt1NRDL4C4g9q4CY
 ILLp6+jD2m9uG7qW6QJaHXfb+xdrAld80oYTSm3JkKftazZNAY2ykyXXA22IJUjGWgNW
 9MJjJ1CJ3otp1iq+NkC71xf77ZQ2B1W4TF87hcwEFFiASau1wnppl8Ngmpee6Sgs70+N
 i6kSjIQRag1/+Qibv9XxNadYl7XMvndPChZ9fBAJV38REu8ZLGhMwf6CfD73gOnqvbDP
 7iZQ==
X-Gm-Message-State: AOAM530GICxfz0bAyf4ffmOgdTdonrJ/hPxFga//knQc65szxm5RI2D5
 obrW5o9cQAyrCGfi1eavttkc0JXQw1OMloLesFA4XoaghS3ljNLTVES66MvbhpZ20BBEWF/YCDO
 zqL9P9UWPuyx4wFqzTxwPjNN2Zw==
X-Received: by 2002:a17:907:6e2a:b0:6e0:b263:37a6 with SMTP id
 sd42-20020a1709076e2a00b006e0b26337a6mr9954146ejc.622.1649063729652; 
 Mon, 04 Apr 2022 02:15:29 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzmn871wVtdooXLKKs/nDhI5mJUKB2kXphxAfDG/vjQpPO3vHN0FZV1sNNiN9ue236h3k7sMg==
X-Received: by 2002:a17:907:6e2a:b0:6e0:b263:37a6 with SMTP id
 sd42-20020a1709076e2a00b006e0b26337a6mr9954136ejc.622.1649063729415; 
 Mon, 04 Apr 2022 02:15:29 -0700 (PDT)
Received: from [10.40.98.142] ([78.108.130.194])
 by smtp.gmail.com with ESMTPSA id
 og49-20020a1709071df100b006db0dcf673esm4124588ejc.27.2022.04.04.02.15.28
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 04 Apr 2022 02:15:28 -0700 (PDT)
Message-ID: <dbd72dd0-5898-dfd7-00a0-475fb798c595@redhat.com>
Date: Mon, 4 Apr 2022 11:15:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.0
Subject: Re: [PATCH] phy: ti: tusb1210: Fix an error handling path in
 tusb1210_probe()
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Stephan Gerhold <stephan@gerhold.net>
Cc: linux-kernel@vger.kernel.org, kernel-janitors@vger.kernel.org,
 linux-phy@lists.infradead.org
References: <07c4926c42243cedb3b6067a241bb486fdda01b5.1648991162.git.christophe.jaillet@wanadoo.fr>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <07c4926c42243cedb3b6067a241bb486fdda01b5.1648991162.git.christophe.jaillet@wanadoo.fr>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220404_021536_359982_58C7A19A 
X-CRM114-Status: GOOD (  15.71  )
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

Hi,

On 4/3/22 15:06, Christophe JAILLET wrote:
> tusb1210_probe_charger_detect() must be undone by a corresponding
> tusb1210_remove_charger_detect() in the error handling path, as already
> done in the remove function.
> 
> Fixes: 48969a5623ed ("phy: ti: tusb1210: Add charger detection")
> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>

Thanks, patch looks good to me:

Reviewed-by: Hans de Goede <hdegoede@redhat.com>

Regards,

Hans


> ---
>  drivers/phy/ti/phy-tusb1210.c | 10 ++++++++--
>  1 file changed, 8 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/phy/ti/phy-tusb1210.c b/drivers/phy/ti/phy-tusb1210.c
> index a0cdbcadf09e..008d80977fc5 100644
> --- a/drivers/phy/ti/phy-tusb1210.c
> +++ b/drivers/phy/ti/phy-tusb1210.c
> @@ -537,12 +537,18 @@ static int tusb1210_probe(struct ulpi *ulpi)
>  	tusb1210_probe_charger_detect(tusb);
>  
>  	tusb->phy = ulpi_phy_create(ulpi, &phy_ops);
> -	if (IS_ERR(tusb->phy))
> -		return PTR_ERR(tusb->phy);
> +	if (IS_ERR(tusb->phy)) {
> +		ret = PTR_ERR(tusb->phy);
> +		goto err_remove_charger;
> +	}
>  
>  	phy_set_drvdata(tusb->phy, tusb);
>  	ulpi_set_drvdata(ulpi, tusb);
>  	return 0;
> +
> +err_remove_charger:
> +	tusb1210_remove_charger_detect(tusb);
> +	return ret;
>  }
>  
>  static void tusb1210_remove(struct ulpi *ulpi)


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
