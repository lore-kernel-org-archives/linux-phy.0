Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9EA0FECAAD3
	for <linux-phy@archiver.kernel.org>; Wed, 31 Aug 2022 06:02:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hVBXGyg5zstPpGThDBeOcDFkdyvAXPtK0a0A0C2bUcY=; b=iAZRKMYuFvhVlu
	Xf0ruCMAFmA5eWmF0/hjPxBaVg66bWRMNjdIT+CtslafQSrP7NS1X58vohkHQE7OBrcTiNi5fXc1u
	1Dw9syPLon5OkOoQed6cdu2OTuym1TvRr3k9oJSre1Oqp7dSjGYHm1ppGIXfsY92nohvrnUs1RS3q
	J2kpQnQSV/hryXcoKjMlrC55DLUyV/vkUs2MkYcexRTvFH3bX1fpcBWmR8FUL7cbQpU2jjsi588Q3
	TFb4lzT0zdyJsKIKNAN1sklRROxCitNnZH6bjGDdyue9JBY5LCMRZZSJKvChmW8RZOVkl2Gk/I/2Q
	OQd2037lIEDk6iyon6zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTGo7-004A9z-1Y; Wed, 31 Aug 2022 06:02:35 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTGnu-004A3U-Rt
	for linux-phy@lists.infradead.org; Wed, 31 Aug 2022 06:02:24 +0000
Received: by mail-lj1-x22b.google.com with SMTP id k22so13515037ljg.2
        for <linux-phy@lists.infradead.org>; Tue, 30 Aug 2022 23:02:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=nbGcB33f3vtSsFvUomQd2O7+yHjb/bY+6jPg//hkM20=;
        b=JQDQPAfJ9E9k/gZ9UxWAz78BzOxgUSk9SJBPO9GcGvxkl7m/q5jucRtpr2Xj7J52iv
         COILzG1zqi7xot1XoMLVfXcsJ+nezIUJtiB6JU8C2DH7zbJC2fqkbq1NS2lXbBeMnNWm
         HZR1fMg89rEPz19W1mXqYUe2iAwnFvEIa64Ej0npJ8nTQPyz4x8dlOAwqaZmeAOI0jWh
         eRWr+2zUaTSk3M5LLmPkahWkNYt/7/kDO452Fl3Z7Oh5MN9WNNBTDn/sI1vZB30qOxJp
         YyWauDaNk52I4pi63pkNJSQtBbUwMN0VRZdmi/G/O13lmZb5E+lx7KAiFcnL2YMQGSDR
         NDaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=nbGcB33f3vtSsFvUomQd2O7+yHjb/bY+6jPg//hkM20=;
        b=FHoa9lNdg2bRkSJcxwJBcx7Ilsvsql+K+UgxvevdoyFmeeR3aP8rMvURh3hni7fVQq
         +Q8uP4ae3an5g1PLJZyXfOjIZc5yW22j9dgk2gCq6s9VG1LyKiQgnK9lf99wD+o0Wvnu
         8N8arV0s8tI/Tuk5vTWQdlU9Rr27dUW1rqZA8594bEdWrvPAuEkO+e5cmFgo4fODxngP
         Ye0mSREoi0e7S07WmyIfVNdtza6RCbwi3daTDBg+YMnuN72gzC3ledsKDsLsRnFk9uvB
         4xsunSPv3omgjXOVyw36uwxzHxlXowIxOLymNNU/oVFKx06+GICceKGNajzOX2tuch9h
         95Bg==
X-Gm-Message-State: ACgBeo2Rq2QTg6JP74JoUS3mz+3hzkAy1bmNV/XqKOmX3cdcpJVrUrL3
	mpfCoIcPLiuS06suHT38c8ejkg==
X-Google-Smtp-Source: AA6agR6WkZsu4SBuQtp7SwPb2bib2k7rEr3JJpVbNcdOjhqQLSDhhBa0hL9scYuMfjpcRFIk6H8mEw==
X-Received: by 2002:a2e:3112:0:b0:24f:132a:fd71 with SMTP id x18-20020a2e3112000000b0024f132afd71mr7670629ljx.522.1661925738915;
        Tue, 30 Aug 2022 23:02:18 -0700 (PDT)
Received: from [192.168.28.124] (balticom-73-99-134.balticom.lv. [109.73.99.134])
        by smtp.gmail.com with ESMTPSA id q14-20020ac25fce000000b00492f1b2ac0bsm1867976lfg.101.2022.08.30.23.02.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Aug 2022 23:02:18 -0700 (PDT)
Message-ID: <82576790-9fb0-ee1b-2308-fbe292068bd9@linaro.org>
Date: Wed, 31 Aug 2022 09:02:17 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v2 2/7] dt-bindings: phy: mediatek,tphy: add property to
 set pre-emphasis
Content-Language: en-US
To: Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Eddie Hung <eddie.hung@mediatek.com>
References: <20220829080830.5378-1-chunfeng.yun@mediatek.com>
 <20220829080830.5378-2-chunfeng.yun@mediatek.com>
 <d1f49935-b465-7495-d345-f35bf4dea9f9@linaro.org>
 <d30353e4dbb785c3ce31ef54b791bfe3d23df904.camel@mediatek.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <d30353e4dbb785c3ce31ef54b791bfe3d23df904.camel@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_230222_954463_98C40821 
X-CRM114-Status: UNSURE (   7.93  )
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

On 31/08/2022 06:14, Chunfeng Yun wrote:
>> These bindings are expected to be
>> usable/applicable on several devices, so units, not register values
>> which can change between devices, are the proper and reliable way to
>> describe a feature.
> I prefer to use exact level values, but not the inexact values with
> units (e.g. -percent, -microvolt).

What stops you from using exact values - bp?

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
