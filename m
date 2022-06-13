Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE095C43334
	for <linux-phy@archiver.kernel.org>; Mon, 13 Jun 2022 09:46:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yv8vuQF383M1wCv0QEaIjCc/DDwcvq0sCBhNqOeb83w=; b=E7RTyk3eKSc/e+
	MjH3nyEONmEpUWpse2VaEJ4PW6POlVnxgEXYJe4oqeqcrc/hg5byo1RKFm8ng3AvXOQAaO/WEmKHH
	s9v//qR4A0sE3RpNSTHiClVMTBEPpNp27h+KP81ZuRp5u8xrvBgyZA3wFLPLnqp0g3LJ59S1asKPd
	usjGpRowp69rafOW/fFqFJHjjzQnv0+mA0UO86slmEOSxuiUKvarKgDncWbNtHYSsR9SGGeb7JA7g
	aozg7JTVVzRBXviDkj3cz8F0MN77YJ49gAkFW5SDv6OgjM64JWjfVUHyg0Ln4+lIO1Fzd6DOwBieQ
	6Cx9Nxazv1DcvO1Hd4Cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0geI-002czo-AX; Mon, 13 Jun 2022 09:46:18 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0geG-002cxp-27
	for linux-phy@lists.infradead.org; Mon, 13 Jun 2022 09:46:17 +0000
Received: by mail-wm1-x32b.google.com with SMTP id n185so2618439wmn.4
        for <linux-phy@lists.infradead.org>; Mon, 13 Jun 2022 02:46:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=hs5EQNjyVVeQgXbgcD/B6aTCezXJTyIP0AIWYJHWpT8=;
        b=APbJeV+X+PShWtNWFgeKdVAH4z8gKsM3NXzCEkGB0F+Z3FSuGHnfa2rj0pN4SOQmgT
         5lTxfRhUt7zM7rS3b7yzn0i/q4OcNO8uZsOIkIBdV+91P1nsnz+5557Nz9tnONj/aLS7
         1SmeZ7qWfY9SfQHCK3t8IQGioargGycbNr9htQW4erzcnjVccfbTycyNCGHHxCWmNVDx
         NTIh0oDFXthjekUXjk4gOWYQITYml+0AutQvOsp3oNvl+62fewDnQGoJ4/5Cs7lC16Ph
         Qgqc0dSEIGtvGz57YfjvIQ5wZHdUQmrqNOoITxyj/TMm7hCjWQu7D3+5fr3D5Lfh9HBy
         XwqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=hs5EQNjyVVeQgXbgcD/B6aTCezXJTyIP0AIWYJHWpT8=;
        b=wp6DTEy6EWV2HRy6e48Yrs+g9hpnAdcbR87qqUu42yo2W8QWuziDZNOcFQPHOLeF6y
         uSufM7vEhKJiEHhg7J24pVkD/lrU8G49y67fwBvc5BrOqkkcRAQdD3xLBPb61rjwOeWq
         FsaJSoiF0PYApv2Oy+WeQQF+tvg9ugZjMZrtNWJ3GIjwtuC8fOHssQ3t8G3mrAxMWIcD
         ZLQGjbnNqePzdwoq9Y4pEyWMqH2D1qCMsfA1oHABLPI5GKAQKQvBuCw4lVTP8BKCEZFK
         kw6bekFSyifhSA1xzxAGzBTouL1l/UPg84wgqki7kXR8bKoFGL4wLj2cRy9fvNoPrgMV
         satA==
X-Gm-Message-State: AOAM532cGvu5zLAJDQXvsEEXKIq653IYGeYYJe2WBMonTM0d/E8VPn45
	eb7bVPsn0f9Tcz1YxQrgm+yFmg==
X-Google-Smtp-Source: ABdhPJzUy6r3Wybk2hiKuA1ZAmjOCgeGwtQMYQTkR3vSuIE82HPoMqu5t6274YLEzIG5fwsAwO99RQ==
X-Received: by 2002:a1c:f317:0:b0:39c:831c:bd43 with SMTP id q23-20020a1cf317000000b0039c831cbd43mr12255305wmq.139.1655113574279;
        Mon, 13 Jun 2022 02:46:14 -0700 (PDT)
Received: from [10.227.148.193] (80-254-69-65.dynamic.monzoon.net. [80.254.69.65])
        by smtp.gmail.com with ESMTPSA id n4-20020a05600c4f8400b0039c362311d2sm11578741wmq.9.2022.06.13.02.46.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Jun 2022 02:46:13 -0700 (PDT)
Message-ID: <db1e29a4-3138-4a0f-2582-a2614a68cd22@linaro.org>
Date: Mon, 13 Jun 2022 11:46:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v4 2/6] phy: samsung-ufs: move cdr offset to drvdata
Content-Language: en-US
To: Alim Akhtar <alim.akhtar@samsung.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org, avri.altman@wdc.com,
 bvanassche@acm.org, martin.petersen@oracle.com, chanho61.park@samsung.com,
 pankaj.dubey@samsung.com, Bharat Uppal <bharat.uppal@samsung.com>
References: <20220610104119.66401-1-alim.akhtar@samsung.com>
 <CGME20220610104346epcas5p4f59c073d15b3cd8fbc99de03d9cd1c41@epcas5p4.samsung.com>
 <20220610104119.66401-3-alim.akhtar@samsung.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220610104119.66401-3-alim.akhtar@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220613_024616_224486_CA63039F 
X-CRM114-Status: UNSURE (   6.70  )
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

On 10/06/2022 12:41, Alim Akhtar wrote:
> Move CDR lock offset to drv data so that it can be extended for other SoCs
> which are having CDR lock at different register offset.
> 
> Signed-off-by: Bharat Uppal <bharat.uppal@samsung.com>
> Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>
> Reviewed-by: Chanho Park <chanho61.park@samsung.com>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
