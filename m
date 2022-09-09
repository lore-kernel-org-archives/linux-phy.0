Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4A1EECAAD3
	for <linux-phy@archiver.kernel.org>; Fri,  9 Sep 2022 07:12:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JADtQRBpvOJshawZwIrYv1QBwZeKiE8FVRIdN6kq3gQ=; b=O2t3ahqs4T2vB0
	ZBia1VmzK39OHY9Fpo04hevKAXEzzDE8v6sQ34YNyYy2e8BZrGZnB0KeMwlwcr7n0hsg6nHNl6kRl
	x8E01ybZMFVv53XpSgCdqP0fJzPofoPq+c5QZKvELkN8XjJSvPsQi1OSIlt1RcGI8+PjYdwp5ZqCS
	zb6sGJXslqoEGgIWd9ZuxGUX+S6Tfalhr1i0tR/z/phzOeeFinvjgbOwGTQkGN8sjf/DxQt3lvZ/T
	910cx017rMMTGK7hf+9s04EKCQ07sy54PcOAtiefvQxJipUDwlj/Cp/NVaDGUdFjkEXm+X2vzGVNh
	CYCWHrUBy7n+lP3fDg8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWYBO-00DidC-7a; Fri, 09 Sep 2022 07:12:10 +0000
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWYBJ-00DiY0-Lz
	for linux-phy@lists.infradead.org; Fri, 09 Sep 2022 07:12:07 +0000
Received: by mail-lj1-x22a.google.com with SMTP id c10so779421ljj.2
        for <linux-phy@lists.infradead.org>; Fri, 09 Sep 2022 00:12:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=QOGLHZxJ3ehuwDP9HL0oLd7ufIS2rSRxC4FcV3nNb7s=;
        b=BWyXu++1uPwlKzxQQu+DxoxMeR/JrBSuK9lG6Z9QndN/sYkYtdJDhOaHN+s02etnn4
         OL3wW5pNwdxnhZHVAHt2/Vu/SkuOdEwcfO+mvG1g8/txQSDyPKe7zG6vHylL7omUjsHt
         sVCs87b7Yi/DcC/lyE6FsOEClx+iOGX+8QrBqSh1fMDxBuawlPraG4oZom4seGwsfryU
         IdUZE5aQq2EWHir43pvP0Qc0MJUvfMDTpfOl8s2yHolA970UkuJNpfhNMwr365Tw1I3h
         /bgH/n22xSXSryutBPlgdQrOhtfEYi0nEmzX0VKSnDKiZdiKN3/MZfEBC+Xj6GEXrVnR
         O56Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=QOGLHZxJ3ehuwDP9HL0oLd7ufIS2rSRxC4FcV3nNb7s=;
        b=lZBx1Omnvyee5UQIdTUbbWe3iGbKtC4V6oqd3QPVQLau17KilcobG1tnNNfms9KmV6
         /V+qFesAApLLaGKKL7AcSBOAsuJavudfKm/1rYevJBlN1qLgWIwTKZlCUn/cKui3VbY9
         FILiyVYR03vXhoV6/3686ZGfPZkUMgq/haF2tR/updwQw9khqNpdij85UgBO8E+Mtp9+
         NHn/93/+tCWiMe/iHGA/9KNhlXaLRF65cMTq07fk31EqnACMhSjPAT+B1GcWqs3ZXjc+
         4Xt74H+3DGFKsT0TnBG10fwteXV+jjsL8gpMSU9Un0lv1hB3m7lUZjKcQZ76DxcTRjHs
         BVcA==
X-Gm-Message-State: ACgBeo2IK8QM6AsruezGrzmUpK3tWg+oXDU2dk7ha7nUuHVSbJek86IW
	jDKy37HcVjz58k3Z/HGJLQFdGg==
X-Google-Smtp-Source: AA6agR5O2hfbFRKJ4pK/M7SIHVCeEmYbk7TXkg8QE0//OgIRJ37GSP2kOJFWCJOE92oCam0WI8m9sw==
X-Received: by 2002:a2e:2f03:0:b0:261:cb0e:c329 with SMTP id v3-20020a2e2f03000000b00261cb0ec329mr3277972ljv.106.1662707520203;
        Fri, 09 Sep 2022 00:12:00 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id m5-20020ac24245000000b00498f36bce07sm150242lfl.214.2022.09.09.00.11.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Sep 2022 00:11:59 -0700 (PDT)
Message-ID: <d7fc281e-64e7-239f-8c53-1d494eaa69cd@linaro.org>
Date: Fri, 9 Sep 2022 09:11:57 +0200
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
 <82576790-9fb0-ee1b-2308-fbe292068bd9@linaro.org>
 <113219ac80cceaa4a39434e4370db821e26a5275.camel@mediatek.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <113219ac80cceaa4a39434e4370db821e26a5275.camel@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_001205_767577_479AF20D 
X-CRM114-Status: UNSURE (   8.98  )
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

On 09/09/2022 05:07, Chunfeng Yun wrote:
> On Wed, 2022-08-31 at 09:02 +0300, Krzysztof Kozlowski wrote:
>> On 31/08/2022 06:14, Chunfeng Yun wrote:
>>>> These bindings are expected to be
>>>> usable/applicable on several devices, so units, not register
>>>> values
>>>> which can change between devices, are the proper and reliable way
>>>> to
>>>> describe a feature.
>>>
>>> I prefer to use exact level values, but not the inexact values with
>>> units (e.g. -percent, -microvolt).
>>
>> What stops you from using exact values - bp?
> See reply for the first series, thanks

Not in my inbox anymore.


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
