Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 816E5C43219
	for <linux-phy@archiver.kernel.org>; Tue, 15 Nov 2022 08:13:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZuotYlaVqGywKLclRlopZpkPaN13wzUhLmRzPSjnYuA=; b=z5S/1eQ9V9B2Ua
	o//2pI9qfblzOO6e1t39EBlbZ5o/xcpADDhbe21T/VxXIQMGfOVezySiesumIy7GOLtb6xcS4cnee
	5zRCMJmFWryVDPy8dxbeIIVjoV703bDv+hm7kZYrOejwLZKk0rIxGfVX2RdcEV6KWGiIE7SE6daRt
	kb/6Q9GXA2mgu22ob6c/frjH0IFCJRQrxwX7n53fYYSEN5yyYxiqZKAwZy8XzIZcs2FpLilktNzhN
	bju8nTwml2Q53xnYHHuudNFKDRqa2rTy9DFd6SRLo92eXrtXlXOjBPZ4TcOkQVpQ79mbSrSTjQnjC
	UPJUN6cVyOYbhYSy/TUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1our43-008uTN-S1; Tue, 15 Nov 2022 08:13:03 +0000
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1our40-008uQc-Ux
	for linux-phy@lists.infradead.org; Tue, 15 Nov 2022 08:13:02 +0000
Received: by mail-lj1-x22a.google.com with SMTP id s24so16493625ljs.11
        for <linux-phy@lists.infradead.org>; Tue, 15 Nov 2022 00:12:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JDkqh0tAJJ4X7eNluhZEGW7LBA4YZb7PqjBBGMFZ9o8=;
        b=xAYAcYiqz6vAihbiQR5GhFuz1tcemWPVKQgq85Cxv/HD3SYZ1whRQelsHKBF+5/G4j
         I9am9IWQeZk/s4NVUQlr/GG/5pCD9GgypXy4S7Kwop9mp2lBCGbcaG8ztDCaWngpEDbj
         HyVca9Xi9F63aGv8ELFQZez0V/i7MM7Pcv/Ac1XYG2YhFmgvTryuF5XY92bsnkkEMCTv
         qt94KP13Vin3Fbf48xnKfWosutfGpKUuY3nw9Xoow1TsTWiXaGqOOx++L8exdwVi/saq
         9Cc1NQNmts2U/s6r/xiddO454NQjvqQDYIxmJHCBzkLHfofNAXA1dOjupTOC2/3+ZMIv
         7pZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JDkqh0tAJJ4X7eNluhZEGW7LBA4YZb7PqjBBGMFZ9o8=;
        b=Y/8k6ZPTM3yBFjQlYfQlzn862Wd0fu03rF5QQ6lpp55pBrutLtAXOhZq/41IxSVsNS
         CJIAEzu1RgjfU2XXpTx5BjsnAxYTbgAXhdeX/oo/zjONBHxzvmMVlJa6NjwJWxuJjbQe
         we6yRndwwj9JTOFyXsmUe2R3rXCj6BPxtxG1K6A1+cK56AZ0gVgcHB3QDAtnpZ/fOjWF
         vVuDdydsoTAEMXroLqOf6fgio1pKKL2nqfQRTkOXEPZgxxgjH4uae9dVvUyFA48iJoj/
         d+RhB85NRrG4xkpdfQHHm9Kb+LJ3ji9dTyecj0a9csTRMAzxK3mr+ShhA93LdZUpMPr9
         VV5g==
X-Gm-Message-State: ANoB5pkjFyU0Wl2HoWoUWFLXhdTEWVDrErYgTkhL3F47YuzosMKRSrDm
	09oTkMBKLgUpPmRYNs8tCGP+lQ==
X-Google-Smtp-Source: AA0mqf47HmClxjlAW9DxMF2bgWVxgI7npM2Ar0tsu0fsJS2xY8RI9H87d0FG/XSIJ41uOriL/+Xzcw==
X-Received: by 2002:a2e:b706:0:b0:277:d75:f1de with SMTP id j6-20020a2eb706000000b002770d75f1demr5794184ljo.272.1668499976198;
        Tue, 15 Nov 2022 00:12:56 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id 28-20020ac25f5c000000b004b491fe071fsm1635595lfz.36.2022.11.15.00.12.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Nov 2022 00:12:55 -0800 (PST)
Message-ID: <61df3c4f-f41c-9525-606d-1b8261163080@linaro.org>
Date: Tue, 15 Nov 2022 09:12:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH 02/14] dt-bindings: phy: qcom,qmp-usb3-dp: fix sc8280xp
 bindings
Content-Language: en-US
To: Johan Hovold <johan@kernel.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221111092457.10546-3-johan+linaro@kernel.org>
 <a22888cd-34cb-3453-0dc2-096da208564c@linaro.org>
 <Y3JCVzJ74YsfcDz4@hovoldconsulting.com>
 <de3a426a-03e8-ed15-a9a1-bb300e776e5f@linaro.org>
 <Y3JOO0kNnaNhnW3K@hovoldconsulting.com>
 <02725b78-04ad-8f4a-25c2-9cdaa1e37ab7@linaro.org>
 <Y3JthM1jC2vH1Kn+@hovoldconsulting.com>
 <efd412d0-7411-8b0b-4700-9e183a592048@linaro.org>
 <Y3JxZ+yFMLZkwNBi@hovoldconsulting.com>
 <8420c342-9dce-aea7-8d1e-f141e0c1ebb5@linaro.org>
 <Y3J2AjjjsybI9mKd@hovoldconsulting.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <Y3J2AjjjsybI9mKd@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221115_001301_028188_51B4E973 
X-CRM114-Status: GOOD (  17.65  )
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

On 14/11/2022 18:08, Johan Hovold wrote:
>>
>> Which is also fine. I don't understand still why it is a problem - even
>> if you have multiple files, one for each SoC/phy. If USB4 brings here 10
>> more clocks and other SoCs/phys might bring many more options, then what
>> else can you do? Grow the binding file with big text-based mapping of
>> IDs? It's not a viable solution. Header or headers is the only
>> maintainable way for such cases.
> 
> So then we must add per-SoC (and PHY type) headers even if we can
> possibly reuse defines from one platform for another as long as they
> appear to be similar enough?

No, you don't have to. I just got impression that future devices will
bring so many changes that anyway you will end up with per-SoC defines.

> For example, using a "SC7180_USB3_DP" infix
> for the current platforms and add a new series of indexes for SC8280XP:
> 
> 	QMP_SC7180_USB3_DP_USB3_PIPE			0
> 	QMP_SC7180_USB3_DP_DP_LINK			1
> 	QMP_SC7180_USB3_DP_DP_VCO_DIV			2
> 
> 	QMP_SC8280XP_USB4_USB3_DP_USB3_PIPE		0
> 	QMP_SC8280XP_USB4_USB3_DP_DP_LINK		1
> 	QMP_SC8280XP_USB4_USB3_DP_DP_VCO_DIV		2
> 	QMP_SC8280XP_USB4_USB3_DP_USB4_PCIE_PIPE	3
> 	...
> 	QMP_SC8280XP_USB4_USB3_DP_USB4_RX1		9

The names are just a names, you can even use QMP_SC7180_* on SC8280XP.
You can skip the SoC part and have something shared. We already have
such patterns - although maybe more often for outside components (like
PMICs). The differences are:
1. For per-SoC name it's quite obvious which clock is supported on fiven
SoC,
2. With shared names, you should document somewhere mapping between
supported clocks and SoCs. Also what to do if new device comes with 10
new clocks entirely different - re-use/map existing defines or add
completely new set of 10 of them?

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
