Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6551C54FB3
	for <linux-phy@archiver.kernel.org>; Sun, 25 May 2025 13:17:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7iMJS/b39RZzSrI9PnH9RoAFkS8OY9rrzIM+/I/RBII=; b=rSBMJdGoxAatxE
	frcKy2j6XteXpfcPJZcpo08JD/r8O1xcAHV6MCh+y8XlKu2zbGQTPw3um4tP+eoSgrCNGoZRR8/lZ
	9soVLnShlyN37qOSKc/otT3E1MSvWh8MLp6xrRENLjutgoMbkg7TgfvhwWoA0yb43JzQqE1CjgsMD
	OaYq68dYNO7rutWWUjPiVZV2HBBC9CtnPQ2yrGkNe30foTAc0AzfEeHQfygH6uVafymm2h2ODF3L2
	dWJattBzyD7KA2N1PSYv8bpNkfyvfazCSPNU6fXUQfaxnMJjNMvW/cqSGQonA3aHnffN3omBdq7eI
	LxKaloIW5Ihdbgv7LG7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJBEJ-000000076k5-2LaT;
	Sun, 25 May 2025 13:17:31 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJBEH-000000076jF-1n7R
	for linux-phy@lists.infradead.org;
	Sun, 25 May 2025 13:17:30 +0000
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-ad1f6aa2f84so283631166b.0
        for <linux-phy@lists.infradead.org>; Sun, 25 May 2025 06:17:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1748179047; x=1748783847; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JncznSaz+/oGV5IjmubnRQRwE7XgtuBlaUti3hLAlQM=;
        b=L5ct1nkssXwxv2ZVvYzRKKjhQyjMVs635yHu+57qhBvn/n8r5qL6QNLaNdcLqKsi98
         kpMFjT6gRS7AWoh4ZRUc8NX31sEXvJCKkVcbSjNMWpdtTiPzIW+01UDVl64bHUskAmJn
         gAZeFXQMj6DDRZ/A4JjEqxGACwVfp1uzpFXdrPpD5TLL7TLZ5HTC6aC+Po4uKfwxAutj
         X9aWkm84KloDKEWeWu1GFC2Qe/Ho9Y16gvll6HdfYBXL8NGpQ51aL3wYzQfZ4P62V3gB
         zxhX/Pk1NuLmHKQCvPdB7NMprE86skAM2lBrgC5j4huWiwYmkw324xjo0QIu9nVXUz6V
         bg4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748179047; x=1748783847;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JncznSaz+/oGV5IjmubnRQRwE7XgtuBlaUti3hLAlQM=;
        b=K2L2YCflX3cB44a3b/SYBMrm3SRtshW6eHP8bNQ4QIV2ePF/TUiTMCO6dqPmDaIcIZ
         8eJBRVNR/Fv3zQKey2SWmHYa0gsccMCY9Tck9gt5wcb2Eznk1+tWvtaZL7hkCfLRlYiM
         Jnus2OQOSJZdwmZ0OTozk0oJraeMkeGrTL3AHfeK7hUBUtoIp1+nVRltXVa9RwtgPSqh
         sJCQEjNe8ZsMrnnMHHyfEP5JHct6fuwcnc/bJgFyThGWrzozcPzZ9bO2IhmZnFQgFkza
         bT0TtHytq8w2w32AX4YzoMyaBJYlIjEfFBQ44Inx8We7/Qomk4huUqPBa5LmSO30jL8J
         YhoA==
X-Forwarded-Encrypted: i=1; AJvYcCXjt5d7SihbiSDOMAuW9jG1iPQYlT8akaaPgIS7i0aUGD92DMR3tb+jsF01DoWKmYRRlSwf1iUncxs=@lists.infradead.org
X-Gm-Message-State: AOJu0YwWUS2LHPwTjy2grRATKzHBLSb6l9b9Klg9asfZznqJfpofg9tn
	jMBcQFkfZP37JrrrN5bEPahbBDBZeP4oGBa4B6OVuN5ELckTo7tTWspn
X-Gm-Gg: ASbGncs9PvFsbrveFXaRZEXnMSAT6olOWBvxthaIalTBd65gUBMT+FX5mCJUlM7LwQW
	dRf2UHnY1Po+fyoomF8uOLPPdY4549QR6LpIUkPmDYypYTjARkc2Acywz7QMifFTsVhF8Q/lbn3
	PjboBF6iWObQNhriV50nZhj5r2msgwo04Zc3m/T8EuQmHCC3Qj+sro+KySBi1FOn84IYVsJi+a5
	YnpVOOBJelAIbYU/1Cn7dV/qGcsKOrSKYGola3u03ooCa5gojHFUM9Sl494UtWOl82mAjdzqPHV
	Fu/qr9FWw8sUwC9XGiypTb8pQjsZ8nbp/hB0aKSp/42oZjJKggQrZuHq0zvr5xX9qIvTo92xx6G
	rXpoOemz1u8We+LlUHmULYipVic4xA0LsS3KX8Ja/
X-Google-Smtp-Source: AGHT+IEPO3BUquyLdtb7MQDL7gYW1Bx9fzEBnimFTAkrCO8oSIr40b9FXRWi8LcR5YBrvb8fT6eF0g==
X-Received: by 2002:a17:907:f509:b0:ad5:2e15:2a7b with SMTP id a640c23a62f3a-ad63f97fec8mr1095362966b.2.1748179046923;
        Sun, 25 May 2025 06:17:26 -0700 (PDT)
Received: from [192.168.1.105] (91-139-201-119.stz.ddns.bulsat.com. [91.139.201.119])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d4381edsm1537643566b.105.2025.05.25.06.17.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 25 May 2025 06:17:26 -0700 (PDT)
Message-ID: <73836711-95e3-49ec-b502-0638af8d6c3f@gmail.com>
Date: Sun, 25 May 2025 16:17:25 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/7] phy: phy-snps-eusb2: fix clock imbalance on
 phy_exit()
Content-Language: en-US
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
 Abel Vesa <abel.vesa@linaro.org>, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20250523084839.11015-1-johan+linaro@kernel.org>
 <20250523084839.11015-2-johan+linaro@kernel.org>
From: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
In-Reply-To: <20250523084839.11015-2-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250525_061729_472162_D0BA3CF7 
X-CRM114-Status: GOOD (  14.68  )
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

On 5/23/25 11:48, Johan Hovold wrote:
> Make sure to disable all clocks enabled at phy_init() also on
> phy_exit().
>
> Fixes: c4098f3e6134 ("phy: phy-snps-eusb2: add support for exynos2200")
> Cc: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>  drivers/phy/phy-snps-eusb2.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/phy/phy-snps-eusb2.c b/drivers/phy/phy-snps-eusb2.c
> index b73a1d7e57b3..19af3f99692c 100644
> --- a/drivers/phy/phy-snps-eusb2.c
> +++ b/drivers/phy/phy-snps-eusb2.c
> @@ -504,7 +504,7 @@ static int snps_eusb2_hsphy_exit(struct phy *p)
>  {
>  	struct snps_eusb2_hsphy *phy = phy_get_drvdata(p);
>  
> -	clk_disable_unprepare(phy->ref_clk);
> +	clk_bulk_disable_unprepare(phy->data->num_clks, phy->clks);

This shouldn't affect functionality for Exynos 2200, as gates are not
handled manually in the clocks driver.

Anyways, this is good to have for other/future supported SoCs.

Acked-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>

Best regards,
Ivaylo

>  
>  	regulator_bulk_disable(ARRAY_SIZE(phy->vregs), phy->vregs);
>  


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
