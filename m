Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA08BC43334
	for <linux-phy@archiver.kernel.org>; Thu,  7 Jul 2022 16:26:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GARRs8LcBSnYCKclQ/mR8OMKqYuXTMXtOlBeUyKAwN4=; b=WSRdpq9mg4Yzsi
	zxgP4kaX1IGHMCmUD2fMPGvMIpZ0416vH3Ihii+qjTslVcq4cwr9d+E9sa3E8I++kkzYKlWkyfaI7
	P8vV1tizhfPR4g8OXzQcc1XN+qmW+ON4NocN+iabSekisXnd15ukLtuzC+ARj7MwvYdJfUu34APDd
	RsIpDq9xZAV8ZSImHU5Gocsi6SHpj5M18Jfiii7v7d+Op++U4OKnXbLGbyA7Mw/Tw9gO4RsgTAR64
	kvy6x/g9WinOWODrJnsy3U6k6/kC9BA2eXdi5ko4k0G3bOhogFOWeqk4b8oj9gMjePE2dqL2dgiI3
	A4YhxKIjsNNvtrqumeFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9UKH-00GwxD-Vx; Thu, 07 Jul 2022 16:26:01 +0000
Received: from mail-pf1-x429.google.com ([2607:f8b0:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9UJp-00Gwhb-A8; Thu, 07 Jul 2022 16:25:34 +0000
Received: by mail-pf1-x429.google.com with SMTP id w185so16695243pfb.4;
        Thu, 07 Jul 2022 09:25:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=U/+6cC0+/ItPqI6+5sthjmspnkck/QqrsfY6aZUXXyg=;
        b=ljeYlSrsTv0URuOoEuitafDdmNQdeoP2d78/j6EM81A1OiFNrI0We4LKAru10dAco4
         KgPmWu9E0RJyos/fkqmeMabFSwGqPl2vPCkommc+860d0tRFMz6UWFpFCHOMr2cxwDoe
         /UYBhoI/MBIVvaI9PeahzpNh497R4sUHO40l1mS4VsQYX8wi8o3750RFsndq5lvxnN29
         +Z+enqqdyNm6GGkhwRdZxwJmxyvEjUHOJnITqaIYetgw6j24FZh3eguQ5tijr6jAaUOa
         VKfUOJcAegxSRzgDDAG3kDwoVb+p+68DeP+POuy90jHfnvTgDsE9ZrGQseft+iLbEXxt
         wVNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=U/+6cC0+/ItPqI6+5sthjmspnkck/QqrsfY6aZUXXyg=;
        b=zpJiHoZw7sNwh7aqkYRehwqMFxqS75sh0HbGR9Egw7MJ0YuHEnXlz8Q/ImJDy53MP+
         mUJ3y1sXcrUxZHGS5gTgQNFmBUWjNppLZMyC0XvHdNfzKNRp2b/PQoMcFcgnlZxK1kP5
         1oJb0u2ekWLvo6oAFxvGE1B57kcPo2FTkOFp9UluFg0KVBjkngQXbDwD5V1O17OHoKqk
         Za8M+Y6jyv+Ie47se+WfysJP1OnpJpblX7cOQdUG7qhoAN1zUslkkHyig/WROejwWhVx
         vKVGjQb2a1pclDJiOh99IU4geiQ0xJvo0DAFUW3SGj9o8xp7bNPSoEQge//Kh4dMbKeN
         ru0A==
X-Gm-Message-State: AJIora+32b6DRkfypsoIthUWCAcfVexfkzjM724dUCfqrsoU0hwhnEsB
	5HGmM9KuT7MKgIArQqFBwsr74LE3ULw=
X-Google-Smtp-Source: AGRyM1tXdnavP9xjwY38EBgMlgaeoM15ly2ZYFWWz3C2dv3JFmaIDveOJbyCIOGfcDnOXxmLs9ROwg==
X-Received: by 2002:a17:902:f646:b0:168:e2da:8931 with SMTP id m6-20020a170902f64600b00168e2da8931mr53099064plg.84.1657211131064;
        Thu, 07 Jul 2022 09:25:31 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.googlemail.com with ESMTPSA id a13-20020a63e40d000000b0040d48cf046csm26139887pgi.55.2022.07.07.09.25.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Jul 2022 09:25:30 -0700 (PDT)
Message-ID: <d4e3d8b3-16c3-5fc4-c1c7-c2e346514aa6@gmail.com>
Date: Thu, 7 Jul 2022 09:25:22 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [RESEND PATCH 6/8] phy: brcm-sata: bcmbca: Replace ARCH_BCM_63XX
 with ARCH_BCMBCA
Content-Language: en-US
To: William Zhang <william.zhang@broadcom.com>,
 Linux ARM List <linux-arm-kernel@lists.infradead.org>,
 Broadcom Kernel List <bcm-kernel-feedback-list@broadcom.com>
Cc: anand.gore@broadcom.com, dan.beygelman@broadcom.com,
 kursad.oney@broadcom.com, joel.peshkin@broadcom.com, f.fainelli@gmail.com,
 Vinod Koul <vkoul@kernel.org>, Al Cooper <alcooperx@gmail.com>,
 Cai Huoqing <cai.huoqing@linux.dev>, Kishon Vijay Abraham I <kishon@ti.com>,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
References: <20220707065800.261269-1-william.zhang@broadcom.com>
 <20220707065800.261269-6-william.zhang@broadcom.com>
From: Florian Fainelli <f.fainelli@gmail.com>
In-Reply-To: <20220707065800.261269-6-william.zhang@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220707_092533_439474_95481089 
X-CRM114-Status: UNSURE (   8.50  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 7/6/22 23:57, William Zhang wrote:
> Prepare for the BCM63138 ARCH_BCM_63XX migration to ARCH_BCMBCA. Make
> PHY_BRCM_SATA depending on ARCH_BCMBCA.
> 
> Signed-off-by: William Zhang <william.zhang@broadcom.com>
> Acked-by: Vinod Koul <vkoul@kernel.org>

Acked-by: Florian Fainelli <f.fainelli@gmail.com>

There is no cover letter for this 8 patch series :/ it is not clear to 
me whether each subsystem maintainer will be in a position to merge 
these patches individually, yet still have all 8 (7 of them actually, 
see comment to patch 1) land in 5.20.

Alternatively, we can merge these patches through the Broadcom ARM SoC 
pull request(s) to ensure they all land at the same time.
-- 
Florian

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
