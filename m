Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2BE0C43334
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 09:39:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PPpVJLl94VxmD/R3DejGHNYnAwxK8oaoODsGNG4lcTg=; b=F27htlOiOIh6Lp
	+kcwaz1VtyF12+Tn+OKFOmh7gnzFRWcQJQWpEIvxd4FOMGjcc/JJ0j8tNjzh7NQusJ1+mJ1fyaspH
	3f6UwOSg5eHERuNRXrc+iNUC2wjCosriKdwhpUSfyqANXEpNJVS+fLylqU9r2Qpzw0MQVsD6vI3jS
	/J9uAoHCZFtD2HpMZTe3JGUexQvVsWLOo7JgXWMOT+7n6CvJBk8Se7I9MgLFzVjtLl2UltGhIGELw
	uXO3fCLpZO8pFKN9X2HEa27Mp2NpL68owYTRxCvKIZFP18MgFwJS5b5S19lVuzTnUr9SkFYMjB7ig
	+zyWyKD9G/KOmA4rx2+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8f1O-00Gne3-6Y; Tue, 05 Jul 2022 09:39:06 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8evp-00GkPI-IL
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 09:33:23 +0000
Received: by mail-lf1-x131.google.com with SMTP id y16so19529776lfb.9
        for <linux-phy@lists.infradead.org>; Tue, 05 Jul 2022 02:33:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=yzfP/lbnZ03H0j9vVtb9A0tPicYwAQrUmnwfp/loKHw=;
        b=ZOIMt23f6Ag/+weSlpQFCEQcsu2IFtieWj3iKBkDh1rPGdNLQvdvdutGW5RHTRhDIB
         LwnzP7O64wgm+ITODYjdvsDzOqa/Ol42WVzWloMSvoKOaUNZhSCZcMfrF5Dvs8x+bcgN
         OkKOn117XIFKF2TmmvLDccTeGH3VYfZ49vqwtvpsREbccTdt+e4aRajVdIzIapj71fcW
         m9fZ2pr1axyzjOo5Qfjv1mC14GCh3WXYNP0pxrEdr6jautoFW785zp5hc3xnGX2isPXw
         RfElRpgCpWu1pfl6sKQhIyrNW1lrW4zZUdtfO9vBeXgusfGFlIFG1SesMypypsDvl8xf
         CQyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=yzfP/lbnZ03H0j9vVtb9A0tPicYwAQrUmnwfp/loKHw=;
        b=ylLWVt5P6ATmtXYTeCQD0lmvZe+VdPcjxzqaCkkZqF7lvxWPszyrDIGNOhUCrYYC5b
         AYpsSAksOcLiN1KhaD8ODSW2PBq7XQ6fG1+6+BpZhI1bvttj5zYi2SlrARqMpRxOhIGT
         8/c7gaGwSBtNSu6bwfsR9HTuDV7teyqwZOLUVVpGVU2/0xHq+AYJlDpYw9Ygu5jX1Qez
         W6gI47cVEdEq5BXI+YEW8WPbFJDT7O2PYyuuPqiU9DIlrAfI1CYjgMvqMzQvuUQ7qrlq
         5zDBYXtBChWzI50e7k0IKzWPyrbKrlpnpioLxxYa+HZUwHy+SyC58Fa/3PZk9G+iNGA2
         DUDQ==
X-Gm-Message-State: AJIora/RnTL8vEmMZl82vg0b+vD4F/M4M/siPtLG+WFCQkv58LRolB7s
	Qg20I7reXkGkYZMHby8Bqs8O1Q==
X-Google-Smtp-Source: AGRyM1vxnkUSDiWxBI+uKP8agxowY1mJtD6LNtIkhsrjovzczkpcL/6rBXczfAQWWPAnn59xwqEgVw==
X-Received: by 2002:a05:6512:529:b0:483:535b:dc28 with SMTP id o9-20020a056512052900b00483535bdc28mr1946916lfc.540.1657013596716;
        Tue, 05 Jul 2022 02:33:16 -0700 (PDT)
Received: from [192.168.1.52] ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id z7-20020a2e3507000000b0025a7f1065fdsm5250994ljz.107.2022.07.05.02.33.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jul 2022 02:33:16 -0700 (PDT)
Message-ID: <f025408a-822d-328b-2c45-206729ebbd91@linaro.org>
Date: Tue, 5 Jul 2022 11:33:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 2/3] phy: samsung-ufs: ufs: change phy on/off control
Content-Language: en-US
To: Chanho Park <chanho61.park@samsung.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 "James E . J . Bottomley" <jejb@linux.ibm.com>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 Alim Akhtar <alim.akhtar@samsung.com>, Bart Van Assche <bvanassche@acm.org>
Cc: linux-phy@lists.infradead.org, linux-scsi@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
References: <20220705065440.117864-1-chanho61.park@samsung.com>
 <CGME20220705065722epcas2p1e93a8511b906d5e111bff48a312d0603@epcas2p1.samsung.com>
 <20220705065440.117864-3-chanho61.park@samsung.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220705065440.117864-3-chanho61.park@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_023321_692679_32B859AF 
X-CRM114-Status: UNSURE (   7.25  )
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

On 05/07/2022 08:54, Chanho Park wrote:
> The sequence of controlling ufs phy block should be below:
> 
> 1) Power On
>  - Turn off pmu isolation
>  - Clock enable
> 2) Power Off
>  - Clock disable
>  - Turn on pmu isolation
> 

Makes sense.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
