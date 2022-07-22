Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 129E7C43334
	for <linux-phy@archiver.kernel.org>; Fri, 22 Jul 2022 17:36:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8JtJ8mWEPq73LDiWUsCs9pfO9QlUyax6il6ZYrJP07I=; b=OJmoFy0Y/SMM5r
	J5ut8ej/l52B92Bx29JBSe2jTqWSrS5AqOhgoYeAH0KT+0TBOtOyL17LzM6wndKqerMQnJuIxX+ik
	3asH58Wd9zDzejc98u/ysLnofTsL2TMktu2hmhMpGmNHoJbfTE7fI6uJO1ep1Ddu7WT+TYj8QA/em
	lhttvxHpZ7FbFrPp3mgG7Dfx3vOk6GBYOnkyz1DNX3QU+E0jelg0aAvn1ofsK9IpH1wYHPGHFk7H9
	kNCQTQ+9MZhabkvxKqqsI58yir6W+RGOzNUsNZE6E88rioG/rZXXouNLIJNUQAR04+R16mkcAwUuZ
	A+Or8DSInQYzIRuAMPMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oEwZP-008TxH-FJ; Fri, 22 Jul 2022 17:36:11 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oEwZM-008Tv0-DA
	for linux-phy@lists.infradead.org; Fri, 22 Jul 2022 17:36:09 +0000
Received: by mail-lj1-x22d.google.com with SMTP id k19so6230562lji.10
        for <linux-phy@lists.infradead.org>; Fri, 22 Jul 2022 10:36:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=siI7/lD81kyWLQyF5/WV8DbZeAWnZDkinKrf8vJZ9AQ=;
        b=G2yZ9ZDC+GHFFgMKdqoofXT8fAAOL5E/soGuGLEBu11gQckoorXPxw9IS78d2w1qiR
         f31mMLqaAf4UmprVakQTiPZ5Qv4YTwjY1LYXNIioKuzGx0rRrYNC1RoHDk19kYLUUECt
         uB40RencH11PrSF5EjoGNepdrL/jgL/XAmqW+fuN3SdzMyz5ej2YqGydCYhh4ruoxnxs
         5a25dzgWSJpS3ZSqClnzkjAGZWTiVH9HnRxYDc+6CBzbiW6zkOonAaE+/PbOsaRWDlur
         BR7YEmEKzVSy1wdsWwvcy/o2YQKOPkGIWx2kvXEmGcNBP2fr66F2WSLa32EI7o4YvmlP
         0+ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=siI7/lD81kyWLQyF5/WV8DbZeAWnZDkinKrf8vJZ9AQ=;
        b=reu6jKFSKw/80LRstbY+WaVJ3RavsCPj64yIOzFQxIt6gN6aeFsNWzam7mJknl6NO+
         UBKiT70mc0yaLxTzv7XuVUWtmTkgFN3d9B0XBx7jX2ZZZhwzqsKJjoO3ymQZa4+olKj8
         nfWGNlIGwKER73xgm3s5CyXQF4Y9DuhJ7pCMxUYOXpAJ2zbuj+VLkj/Ybv0WGouO9S0j
         fzDpBkK7mxYDZIMj7hjqIDC0Hw2bZ4fL9D51zC/lzHPIFIS2xsr6QWVW6c0NPEpWxsCS
         rMlxgMM6RzamQvhyvB/sSRHSKsrLF7QgTUdlWiB3Ukl3qOYP89O9Ly2u3+kBiwXA0uIZ
         UTKw==
X-Gm-Message-State: AJIora+PtXGooGpF8BHnxlk8FHnmSgOjOUuQJWM/yjTMtlsnNIiQrdPy
	XdtadZG/dRutq8Gp9hZScr+LRA==
X-Google-Smtp-Source: AGRyM1ugHJdaM+Sgsif3zEWtynxobA/cIJhsISRhil968uqOXy7mRTTqFcH/dcHqHHvr3AyxCeLIrQ==
X-Received: by 2002:a2e:bc17:0:b0:25d:50b7:74fa with SMTP id b23-20020a2ebc17000000b0025d50b774famr377988ljf.444.1658511364370;
        Fri, 22 Jul 2022 10:36:04 -0700 (PDT)
Received: from [192.168.10.173] (93.81-167-86.customer.lyse.net. [81.167.86.93])
        by smtp.gmail.com with ESMTPSA id c23-20020a056512325700b0048374164e22sm1159225lfr.193.2022.07.22.10.36.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Jul 2022 10:36:03 -0700 (PDT)
Message-ID: <4133c99a-b6a1-6a17-0ad8-f3bf6f8ab176@linaro.org>
Date: Fri, 22 Jul 2022 19:36:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v4 3/5] PCI: axis: Add ARTPEC-8 PCIe controller driver
Content-Language: en-US
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: wangseok.lee@samsung.com, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "krzk+dt@kernel.org" <krzk+dt@kernel.org>, "kishon@ti.com" <kishon@ti.com>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "jesper.nilsson@axis.com" <jesper.nilsson@axis.com>,
 "lars.persson@axis.com" <lars.persson@axis.com>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
 "kw@linux.com" <kw@linux.com>,
 "linux-arm-kernel@axis.com" <linux-arm-kernel@axis.com>,
 "kernel@axis.com" <kernel@axis.com>, Moon-Ki Jun <moonki.jun@samsung.com>,
 Sang Min Kim <hypmean.kim@samsung.com>, Dongjin Yang
 <dj76.yang@samsung.com>, Yeeun Kim <yeeun119.kim@samsung.com>
References: <20220721205819.GA1753070@bhelgaas>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220721205819.GA1753070@bhelgaas>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220722_103608_480004_637DD6D3 
X-CRM114-Status: GOOD (  17.06  )
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

On 21/07/2022 22:58, Bjorn Helgaas wrote:
> On Thu, Jul 21, 2022 at 11:04:00AM +0200, Krzysztof Kozlowski wrote:
>> On 20/07/2022 08:01, Wangseok Lee wrote:
>>> Add support Axis, ARTPEC-8 SoC. ARTPEC-8 is the SoC platform of Axis
>>> Communications. This is based on arm64 and support GEN4 & 2lane. This
>>> PCIe controller is based on DesignWare Hardware core and uses DesignWare
>>> core functions to implement the driver. "pcie-artpec6. c" supports artpec6
>>> and artpec7 H/W. artpec8 can not be expanded because H/W configuration is
>>> completely different from artpec6/7. PHY and sub controller are different.
>>>
>>> Signed-off-by: Wangseok Lee <wangseok.lee@samsung.com>
>>> Signed-off-by: Jaeho Cho <jaeho79.cho@samsung.com>
>>> ---
>>> v3->v4 :
>>> -Remove unnecessary enum type
>>> -Fix indentation
>>>
>>
>> Thanks for the changes. This starts to look good, however I am not going
>> to ack it. This is also not a strong NAK, as I would respect Bjorn and
>> other maintainers decision.
>>
>> I don't like the approach of creating only Artpec-8 specific driver.
>> Samsung heavily reuses its block in all Exynos devices. Now it re-uses
>> them for other designs as well. Therefore, even if merging with existing
>> Exynos PCIe driver is not feasible (we had such discussions), I expect
>> this to cover all Samsung Foundry PCIe devices. From all current designs
>> up to future licensed blocks, including some new Samsung Exynos SoC. Or
>> at least be ready for it.
> 
> I would certainly prefer fewer drivers but I don't know enough about
> the underlying IP and the places it's integrated to to know what's
> practical.  The only way I could figure that out would be by manually
> comparing the drivers for similarity.  I assume/expect all driver
> authors are doing that.

Merging with existing Exynos PCIe driver (and phy) might be indeed
tricky, as existing one does not support that much as here. However I
really expect that all current designs from Samsung - Exynos SoC, Artpec
and for other customers - have very similar PCIe thus this should be a
generic, new generation Samsung PCIe driver. If designed that way, also
the naming should be back Samsung specific, no Axis/Artpec.

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
