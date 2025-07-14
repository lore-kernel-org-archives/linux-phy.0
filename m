Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A4D9C83F1A
	for <linux-phy@archiver.kernel.org>; Mon, 14 Jul 2025 15:38:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b9KrrQtV0XOk3VkXtg5HV5eYf12K2hoAT98OVoX6Mqs=; b=G/m43kMPdwivKO
	A1J5XVSVVe3r2eMQOfhE9CDyG2mwQ32B3guHWTh2GEA8E7g9ihgUVeLnGXFnVW4FAxvCKyKC5WZ8t
	FQvkYCtVmtR8c1AekQNK8Qqj8g9neYCcK/2o7IjDHebfT1Ojfse7zE4XEflFfl7CwPgo+zfhfmxqb
	sHJetUuxAjcRbnYlLEFi4U/UZNQ/MX0Y0pxxqwbpfjeLkPQVa404K867fctv66Q9pfun7LCAeyrNc
	SwcEwvyvI4Vm5zW93nq6FYQ2mRD27XOg0EsVHTRgIS/OBZb00BJfmWk2xuf03DvfpqqkWIL9O+s5I
	uCyI/ECHKHNYqNRYBfuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubLGN-00000002i3M-1Jry;
	Mon, 14 Jul 2025 15:38:43 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubKOx-00000002Vnu-2BF2
	for linux-phy@lists.infradead.org;
	Mon, 14 Jul 2025 14:43:32 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-4560cdf235cso10328245e9.1
        for <linux-phy@lists.infradead.org>; Mon, 14 Jul 2025 07:43:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752504210; x=1753109010; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Tkk2ePHatcopmrnLKR6jR3UX6aWlk9GOwUaArm5vOU8=;
        b=Q3qbhGLdco6ODMHjZdPqiyobgpMXvJck1sRtWFNTI59WMRth/U8daSryzNe/lZJY2b
         I2VD+PkDoT2611fkVczQVN8N+BXk2Om6LufqCvQYYV/SjvQMuzPR2hoespOihtMehiK7
         w6R/Om46fsvphS4VzcfGojF2SZbCvftBKpUMGvPL8C2fbXRihg10YU7MvjuPPE3Qc2qz
         IB/bl/fbAfNG+H3qBNcuUxUnhsxbK1vPAwJsKBe5v0n/s/HEyLtz4+Y1vtCOQnKViphI
         1BL2PojcbmEUIwPnrcxlfqvn+7p0YIXCx02zEiHR64MvwzbXDk7iIsoljkgbW0SAObmK
         v1Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752504210; x=1753109010;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Tkk2ePHatcopmrnLKR6jR3UX6aWlk9GOwUaArm5vOU8=;
        b=OgcdrBeozbAeX/CSoNi5NBAfdnP0T53CzkJVp8jlYeVsP3j6bQpKMwpR8gSHGfVX3X
         NnxwnuKx2OXsEm/hC2rvIhiZ+JhdDVkKn3NcgREnuPtKGziYf6Qs5DRkfi5Rma/tpysB
         YxBUhaliuqHFip+sk7Xh9QC5P7niCVBOMqmngHbckMXpW6LEwEQnP/DH17ZdbJJ6eHzn
         vj7VSY/WrGN2oJodLBYsGFOBxbF62aWqUDm3DyXnOSQ0Vn93D1J5QQKUxsGIJd8sAQTU
         GJv0MbYIQEwDLhZFr5b1FN2NCkvR/CFTd+BRp+PeY+Olnivyj6sDNNZ5BfC0CDWVCS0A
         SwuQ==
X-Forwarded-Encrypted: i=1; AJvYcCUX2oO75WiQ0zKM4esfGREDNocXGdfs8hmr7O7/GUuIEG2tUuwqW2LsoxT8F2Wu0UfBdiR23b3KzBM=@lists.infradead.org
X-Gm-Message-State: AOJu0YwDgB9Q/nXj0ZDOMKWBtPhi3U2DmZWORJwN7Ht4RkqxdtwMtIOi
	OuSlBuwAV9qCd7ZCpzbfv0imOZIXZhtotEMn3zOfUGNUNO+jLEwF62FTSNCfTrYzTlgVJFHhhV5
	4+oXXNhK4+Q==
X-Gm-Gg: ASbGnct3A/M2WxFr7WtRZTgXzekNSvuuZYraNcGRap/fvDdm9OSiYql+2dVPwAQUagN
	0wwNip24zIiHvhYuGW5HIH/KbMff8DvxL+QsAKc7waDQHhWQgMrDN7bVvby1pZyIENjKfBTbmw6
	lo/VrIXaTBpM6wtgyUH39H8/QOuRQQwsxTiHwVU5yC5gi41k2+agbqNZ7bV5CrGB7x1CFKuV0gA
	Je7LbbFMJBXTqpXX/3UeNXxVCfVrbO8mhnQbh8ZqhazHFLzCcvwOEgQBefOq8OVQnCnDqIklSRS
	/Q8zNaube20xhapyBh2Ktckg9GCTYMQ+rZHbk5vW2npVoJVcUAXxM8RnhhDdLF9HOBFQa03fqqI
	aYRO9z/9IetQQlA3wlvz0eNMO0tBkubMAgGCf3uLHprGhYLmvc2y/jA1ZSebAkM8=
X-Google-Smtp-Source: AGHT+IEtm3tvKJdmPSDwmiLwsHPDpBMJTkK2dAnaXapIl0i2sB2r0hRgPP5EDIr3l5jWUsMP16oQfg==
X-Received: by 2002:a05:600c:3e0e:b0:456:2379:c238 with SMTP id 5b1f17b1804b1-4562379c49fmr14225815e9.17.1752504210032;
        Mon, 14 Jul 2025 07:43:30 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-454d5103c2asm171484605e9.33.2025.07.14.07.43.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Jul 2025 07:43:29 -0700 (PDT)
Message-ID: <08261aa4-689b-4d6b-bfd2-221c1976d254@linaro.org>
Date: Mon, 14 Jul 2025 15:43:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI D-PHY driver
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Bryan O'Donoghue <bod@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250710-x1e-csi2-phy-v1-0-74acbb5b162b@linaro.org>
 <20250710-x1e-csi2-phy-v1-2-74acbb5b162b@linaro.org>
 <11b573d5-ce4d-476c-b94c-216d427cd838@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <11b573d5-ce4d-476c-b94c-216d427cd838@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250714_074331_565718_F126949D 
X-CRM114-Status: UNSURE (   7.09  )
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

On 14/07/2025 15:16, Vladimir Zapolskiy wrote:
>> +#define DEBUG
> 
> Still under debugging?..

oops thanks.

> Well, the phy should be a multimedia device, and this driver is not
> the one, thus you can not use it to connect sensors and put the IP
> into a media pipeline.
Ah no, I don't agree.
Please see my previous email.

---
bod


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
