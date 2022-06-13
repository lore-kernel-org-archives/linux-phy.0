Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EBDBEC433EF
	for <linux-phy@archiver.kernel.org>; Mon, 13 Jun 2022 20:41:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cmd240H7fbOg46Xmnlj5HDXgVt+9nYl8mIzOoQDybMc=; b=wSNhS9faN/e4dt
	Yi+ZQQonZ1pPoCH4bYFxTJTwZkytpCNo1GH4qOzWrZyai3BV1TkRSgoM5A1tK5WG2u5aY87aclrNw
	SnaS3C95EhWDqO7Bc/kRu66RuPwwKza1+9YJ//ekb9JZWTqWdTRHgusbb9HH3j2uYyZRGv/3DL83N
	wLm8KO7dcwB1YBjgTNNLDS4nmN3SlPqlg9tI4+L2V8JCPEcFHtg7mGGq5HudEJrfVCl3Tpza+wtO/
	sUN2KWp2yQ/4WKHZMwht7lK6Cq8oem/rVBDYRG+fTMhXBujYMgGiogAGq2JOctCNbKsnAAeyokBuo
	fWT6Bs1IoC03al9hjR6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0qru-005jsf-9v; Mon, 13 Jun 2022 20:41:02 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0qrq-005jq7-Uy
	for linux-phy@lists.infradead.org; Mon, 13 Jun 2022 20:41:01 +0000
Received: by mail-ed1-x536.google.com with SMTP id b8so8785973edj.11
        for <linux-phy@lists.infradead.org>; Mon, 13 Jun 2022 13:40:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=HfmXHviBVE0o3HCHUdS6+8UmjzDzxiux613KeakQDqU=;
        b=PZWPoYp+2PbenEf3ERwBjT4BMMcm6VBJJjKmkOmnD2bo/dDEyuNP6EuoVBt3iDfr7V
         KwQp/h7BrRRKlOK12kI8odiDgVTBY0YDh5t1xgQKkTy7rxe+8uYUrG/VtfR58u+/zama
         zpZpgeRI5yLJY8yUsjAz/tBZqCS/beclAyCPDlP1XfDbSjZCsDwzcYbaTrtq5dRyThMB
         wH8gu+VYtrVuJAxlLWxGsLtVdyqtpw3kdrZGJD1LgZBXzPUFkNuEUv3NHQkWt9FdNzY9
         74LcCimIhP+N8IHT/QGlsRuTqIqxw9FXtrPtq8y3LtaZSHEpFzZkKkTDcPeCapioHIeg
         bLHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=HfmXHviBVE0o3HCHUdS6+8UmjzDzxiux613KeakQDqU=;
        b=4E61CHyMOQNR0jFU82QP/sPKESjofCA/iHBRutXQJt7LMTJ3sOcCzjNNYeWGm1HUme
         9tL+GcwfX9bL8/TwGE1UPVENl7sw6u6Pjs5RvpG3GwN9EUZYbI2PSoKE35qr85bUmRWf
         r9SaFKWIzWLPhLVgCp1oUk6Vpf2PkO5MPRhRNxe4WGdd43JXJlmmC7r17zJwXMG68atz
         C9l375dYn+NSYX9rAZGoI8oWsACAWrDjg+EDce5XP9ujjvVoBVd/jY5FtGeiTM2/pf8c
         ekCQIrIdbLIqve93p0MwcAn+TPb8QRELSiXgHk3R9CE0QQyGttOo5tG974YAzkPaBR4t
         6AuA==
X-Gm-Message-State: AOAM532djlLp/Gc+EtDeiiBTqZqJL2CyqfX3imFcJxyY18P3IzTLsLjx
	VqMlm6Ot5Tl1bh7JhaFCfoA=
X-Google-Smtp-Source: AGRyM1vpVm7eBeDc2tw8ECHvWLsSplSmSPRlSc74+ct2mEQku8nUVQQI8dhEds1V2Wurb7kQ+uT0wQ==
X-Received: by 2002:a05:6402:22ad:b0:433:d474:1fb with SMTP id cx13-20020a05640222ad00b00433d47401fbmr1779604edb.129.1655152856749;
        Mon, 13 Jun 2022 13:40:56 -0700 (PDT)
Received: from ?IPV6:2a02:a466:68ed:1:9c12:8f08:a584:7d53? (2a02-a466-68ed-1-9c12-8f08-a584-7d53.fixed6.kpn.net. [2a02:a466:68ed:1:9c12:8f08:a584:7d53])
        by smtp.gmail.com with ESMTPSA id wl21-20020a170907311500b0070759e37183sm4217579ejb.59.2022.06.13.13.40.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Jun 2022 13:40:56 -0700 (PDT)
Message-ID: <77a486ae-06bb-7f1b-17ab-8d60ccfbdee6@gmail.com>
Date: Mon, 13 Jun 2022 22:40:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v1 1/1] phy: ti: tusb1210: Don't check for write errors
 when powering on
Content-Language: en-US
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Vinod Koul <vkoul@kernel.org>, Hans de Goede <hdegoede@redhat.com>,
 Stephan Gerhold <stephan@gerhold.net>, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
Cc: Kishon Vijay Abraham I <kishon@ti.com>
References: <20220613160848.82746-1-andriy.shevchenko@linux.intel.com>
From: Ferry Toth <fntoth@gmail.com>
In-Reply-To: <20220613160848.82746-1-andriy.shevchenko@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220613_134059_150005_C8A0674E 
X-CRM114-Status: GOOD (  18.00  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Hi

Op 13-06-2022 om 18:08 schreef Andy Shevchenko:
> On some platforms, like Intel Merrifield, the writing values during power on
> may timeout:
>
>     tusb1210 dwc3.0.auto.ulpi: error -110 writing val 0x41 to reg 0x80
with the patch this error continues to appear in the logs
>     phy phy-dwc3.0.auto.ulpi.0: phy poweron failed --> -110
>     dwc3 dwc3.0.auto: error -ETIMEDOUT: failed to initialize core
>     dwc3: probe of dwc3.0.auto failed with error -110
these errors are gone
> which effectively fails the probe of the USB controller.

and probe of dwc3 succeeds

Tested on Intel Edison (Merrifield)

> Drop the check as it was before the culprit commit (see Fixes tag).
>
> Fixes: 09a3512681b3 ("phy: ti: tusb1210: Improve ulpi_read()/_write() error checking")
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> ---
>   drivers/phy/ti/phy-tusb1210.c | 5 +++--
>   1 file changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/phy/ti/phy-tusb1210.c b/drivers/phy/ti/phy-tusb1210.c
> index c3ab4b69ea68..669c13d6e402 100644
> --- a/drivers/phy/ti/phy-tusb1210.c
> +++ b/drivers/phy/ti/phy-tusb1210.c
> @@ -105,8 +105,9 @@ static int tusb1210_power_on(struct phy *phy)
>   	msleep(TUSB1210_RESET_TIME_MS);
>   
>   	/* Restore the optional eye diagram optimization value */
> -	return tusb1210_ulpi_write(tusb, TUSB1210_VENDOR_SPECIFIC2,
> -				   tusb->vendor_specific2);
> +	tusb1210_ulpi_write(tusb, TUSB1210_VENDOR_SPECIFIC2, tusb->vendor_specific2);
> +
> +	return 0;
>   }
>   
>   static int tusb1210_power_off(struct phy *phy)

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
