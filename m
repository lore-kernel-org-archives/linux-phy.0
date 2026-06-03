Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1EC94CD6E57
	for <linux-phy@archiver.kernel.org>; Wed,  3 Jun 2026 20:42:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y2xfaHQ8tmT4JP+hJCChDOq+N8NLEMRPSwLhSWSIAZU=; b=YFHItGc6wZfm8Y
	ckQitSgD/Mv3T+bmI75Y/SKZuRpCmSpsth3alPPzxawppqvPCJUSkpvq4geQrYbflmVGnSgtGAMfR
	p4dt50uTOtYyJ/5pOUpccfVtmqgc8MAIvxup+FsYttkqQx+d8nIHsRegWcuniVvqI8wwTHLzGRW1o
	uGvCTy/STi8aMw0K0QPdObEXtxNJjrasLrj5y1R3jsJtLmoDVp15s98fD1JKjuTC/InUzixUudIjd
	Bp6Ou73XKm6Cs7hfHlG0RhvV7X2D+C30Qdyysz4KHagP4AV3oCSYHdULuKNJPDCipHEXHCgtAumGd
	6T4VRZPeLUykvU/yVf6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUsPr-0000000FoH7-2mAx;
	Wed, 03 Jun 2026 20:42:19 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUsPo-0000000FoGd-1kaL
	for linux-phy@lists.infradead.org;
	Wed, 03 Jun 2026 20:42:17 +0000
Received: by mail-lj1-x22d.google.com with SMTP id 38308e7fff4ca-396709ba436so7771021fa.2
        for <linux-phy@lists.infradead.org>; Wed, 03 Jun 2026 13:42:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1780519334; x=1781124134; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZKtbINASkuxxe/pYPg2E1h0L+MT79XjrtpjoA45kS4I=;
        b=XltLe1i1i+2+K15wYE/E+YAyaCg+MZrWQx0SrwQpuA1r+aFmih4PU+z0BWtjBxoIPR
         Wqa0bShSyH44ECkDSJvt4k+YBL/ho5rLgNMUKQP2EViSEkltfq04UL8N9DGSqSi0IYNN
         n+ZiO4hRH9q1a+vmbhe0VkzKgLxl6nxA8UD55eZtL4WgC5hCWFyBUOrHuhjsR4H8uCFA
         HTwMcQ+lv9cwtVomjikmdLxHLNsvpS16p5S4DME5kYSlCg3RDT/+0c3Jmvlvzbj3QOTR
         sVpFB3c2R5SP8emUulSmqUjqZKwWxlPkaD0VwSmA6bCcFVbQTfietNlpq/ZnDotGqa3K
         by1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780519334; x=1781124134;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZKtbINASkuxxe/pYPg2E1h0L+MT79XjrtpjoA45kS4I=;
        b=j9q8BPR3Rvx5SY9z4jIJ6vpx8VaepCHrnA3AR/WfJzM+kC3YckmMB8+79j+CiuonLo
         YKYE5+UEDVle8/zV+gMQvVNylKLvs+5xkygX/TKDgOED6f65XU0khPfs/ZyR5jYo0zW0
         +eSFVj2QUDqvctnekBxwrpvGj68FXWiSFTgeXRvicufR9bFQ+v9gwAfZZ4CoSCw0Gb2S
         VtaruzCvvw9iD+UlAAGEf4FZXtNnj8DbRaPmST/DGlknalNizFuP2iuvVEaxFr+LV2wt
         iAnbZzImFpRVF5B2V0dzX2oobQl00zkwASs8OlyUm8MazGiHabyO4ignKyppOL4jowtY
         aE1g==
X-Forwarded-Encrypted: i=1; AFNElJ/bCm2g5C/60HG8yVEffobg3snMbOeW9rpG3Ufk+I53GYvIRDBw8PM9PAEm+k7z/tx4d88eR53wA9o=@lists.infradead.org
X-Gm-Message-State: AOJu0YzB9ESEry9tzx10rLIiv53J+8ZjLURsi1HF36AWXmlE+od8xBhy
	tRIs5jIKTWII8N1TMSqOqxP7b06YlWRJoElB+LHSnGCPYm6QwaJ3DTKC0Cd4/z5c8Gs=
X-Gm-Gg: Acq92OGF/B8DfH7Li9f/xxx+iQ0qd9VCeGFKH8hFaUDzZmF8IdB12RVHCuZkVq6SJ4z
	3njU0RsWx8omb3eBWxhWQFYZJL9Bw5U5atbfTZhpFJexDlnQMc/TcpMRnez/s8xM2HM+u4ew+gG
	FZfkWEaPGiHrqn55X5HCQA0mEtNP3Zrp3lFa5dcoNpSp7POniR1BKZkePOm1mgU7L0QE3bYN10M
	ls4ZMWiDCW7PhLTMtiCPi/3aO8J/akJufz2uQ3zzowKDLRBL9l7ohXtbuQBK+cQJ+cO432CXdOQ
	Ggvk/cvSmUqRwgI7uf83PzxwmSp4SX2bMfOT9jWsAECrBXEToOKfTbnosGcxwVsBoi/aVkQlp5m
	wQnq21vNxGv1Hv6MTYpgEfHRBHAG/C3EFDBq42Rbt1Bs7RoHPODcsSIiU3HrlOk9yLQ5KRkJcG6
	qHC18BtfY6mkQbWhLqwwv6olTWxz6oSwGbLFFYXXL2WL2J/t36q69yd6kkitd8JJNJid+F3n2GD
	6LSxGYw+VLpLIYS
X-Received: by 2002:a05:6512:6c4:b0:5a8:6f01:e1a0 with SMTP id 2adb3069b0e04-5aa81edc1c6mr4375e87.3.1780519333830;
        Wed, 03 Jun 2026 13:42:13 -0700 (PDT)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5aa7b907269sm837408e87.34.2026.06.03.13.42.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Jun 2026 13:42:13 -0700 (PDT)
Message-ID: <6e962010-8097-4b52-9369-0727c0d5a31a@linaro.org>
Date: Wed, 3 Jun 2026 23:42:12 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY driver
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
 Bryan O'Donoghue <bod@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260523-x1e-csi2-phy-v8-0-a85668459521@linaro.org>
 <20260523-x1e-csi2-phy-v8-2-a85668459521@linaro.org>
 <54904b61-222d-4600-ad4c-c03a9952d337@linaro.org>
 <be3e1abe-5148-4247-930b-2e23164eea73@linaro.org>
 <c6aetoiz3dcedlxwjmt5cqh2mngswtmanf6p4s2molemnviwdc@btotpaqwcsoy>
 <f6c91099-0002-4580-a5e8-5611b089024b@linaro.org>
 <v4vz7cistjb2iuzha4oykglar7duw4y2uuyhumzs33yvpwrxcu@i5tsg4uzpuwc>
 <8eb709ce-3469-4303-9c3d-8d1a221cb8de@linaro.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <8eb709ce-3469-4303-9c3d-8d1a221cb8de@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260603_134216_502973_8C48C6C3 
X-CRM114-Status: GOOD (  11.48  )
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

On 6/3/26 15:57, Bryan O'Donoghue wrote:
> On 03/06/2026 13:40, Dmitry Baryshkov wrote:
>>> Are you sure about that ?
>> Yes.
>>
>>> ipcat I thought designated lane 7 specifically as clk-lane i.e. named it
>>> CLK_LN of some description.
>> Split configurations explicitly use other lanes for clocks. E.g. check
>> the RB5 Navigation schematics, CAM0B connector.
> 
> Can you please check:
> 
> CSI_3PHASE_COMMON.CSI_COMMON_CTRL5
> 
> 0 LN0_PWRDN_B Lane 0
> ...
> 7 LNCK_PWRDN_B Clock Lane

Please note that media devices have a numeration scheme of lanes starting
from 1 (it'd be easy to check/confirm it), for instance today CAMSS has
lane numeration starting from 0 is out of the accepted scheme, and here
it'd be better to correct it and not enter the same pit.

I don't have access to the IP spec, anyway I do not grasp it, where are
8 lanes on the CSIPHY found? Each CSIPHY IP has 4+1 D-PHY lanes, not 8.

> 
> ... just a badly name field
> 
> CSI_2PHASE_CTRL10
> 
> Bit[2] = IS_CLKLANE
> 
> Right so CSI_2PHASE_CTRL10 controls lane mode, indeed. Thanks for checking.
> 

-- 
Best wishes,
Vladimir

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
