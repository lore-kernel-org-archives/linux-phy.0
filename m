Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7AB39FD374E
	for <linux-phy@archiver.kernel.org>; Wed, 25 Feb 2026 13:48:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oQn7jpr9jPB2iYEgvtiUK5eYKfC5rAVD2w9SKDP91FY=; b=vvHnFX3ZiElXSr
	L5gWFdHplv7L6iA6xwD7sS5SOZ/DYoiUXAVgIWx+3/fgc7iQ5pE1DmEpfGgECAVO/WLh7zkaUyWU5
	N5EyD2jPVeTnoeSUoThu4yyAepS9PADbZ4wymVsBGeWbsa3cCFy47prI75c1maRjutWfwiSIcSlGv
	wTuLdIp3N+bewgROmdWL/C8+ooa/tU/9ddjFgXrP89gW7E7r025dENdi4+SiQmm4k4LJjw/KW0LBs
	xtHfgzbCOdNZLBe9J2hydsAQZsEbK/q8nCll8wI9HMqlLV4bqrm3jdpQI2tpI28NRlR0sA0wcDwTD
	mwNY8Gb5PxYOLgD4CBQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvFFN-000000048oU-3t8i;
	Wed, 25 Feb 2026 13:48:13 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvFFK-000000048nw-3eEc
	for linux-phy@lists.infradead.org;
	Wed, 25 Feb 2026 13:48:12 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-483a233819aso66297945e9.3
        for <linux-phy@lists.infradead.org>; Wed, 25 Feb 2026 05:48:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772027288; x=1772632088; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eykmgvSbv0vLUxYY3jrSx+qlZUgAvR5496gVQzQWS8U=;
        b=aFDxXuSUzFed3DgeMehbRHEkNrY0ZLBfKupLfcfnARe6D4C89i9OW4hnP63O4FSANG
         bIEee2/NO+XO7UiH0n7KMi+Q+BPFyobpaxikNawnPUbCHTG/2r+L4u4EP76d1+zBBu2U
         lBCqsHoVKGOdmXUEzzJMeA2RhTEiWc5BUtaFeOS3U3dvLTWS5USg8bCC4Ifx2MWiTFc2
         +7Lk8LWUlnX+61bhAd7IJnMuIfGc+OWGmI5ekF0HZg43Ba21v+Wq3942RulqTnNGKmeq
         7ZZ8xBA8xTY2sNV3eYqOlDSMhrEXDPdycSQoVtGbpGtJk+/isnSUavUSupzLmvh0dRch
         sVMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772027288; x=1772632088;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eykmgvSbv0vLUxYY3jrSx+qlZUgAvR5496gVQzQWS8U=;
        b=wgxKHeiVRuCFouTv3O+FiYAY/YSGUtrVGJnFqc7dX2TjrfSlUVxd43vCDozIuKnc3w
         aNHbRMhng3rLxnNqNruHufIVdfwipMcKVQQ5TPtQy8TMx+b8+k82eSQo3lmEjC6kxRYs
         rdQfgi5dd9eYGgIu0DTP3aKGl0NYJAb9zboL6b5wBGBjGBsu1FCK0AXVWFvGt0oQBLxW
         7FDzkF87qxoQmgn1lqP7OEdfcC7SLXQWpzouGEjPKC+i9IpyDP/g7dx9FyPEsS0VOV3u
         zF+VJ9geZsdotAD/MNemoN/ut47H0l5H5oO7y7I7eCgjqUtlddn/5Jx1xUo5b+K8XlzK
         ZWGQ==
X-Forwarded-Encrypted: i=1; AJvYcCWu8APqAogJHdorwJWbKJis5MFZ3KxB54xk7m+72L+DSwLgTAxjYbWtSfmO/bQotBnFM+7Eume3jjk=@lists.infradead.org
X-Gm-Message-State: AOJu0YzXnAFaLSyYeaWGcwLXjYSEmQGRBORGx/68FUuNvigL83hujso8
	kdjMIBCvzJYwmtELuZTSdXsqVFRDi5+qJnnF6nvRLycer0Hi3H3tGsgCcT9U5UzQi2d1MUKlD2a
	uKXdFljQ=
X-Gm-Gg: ATEYQzyFStSXIxq6KX9mNOWVH5tfDZG253TwnAFmOhvcPsPIrJxZ9xWr5GfuNGJX3jN
	xVpDUplDg8yCu+5ZQ3TaRjDF/NjpxcBomry/d5xdaFvbfxLCxQBgV6L4Oo96bs0BzCIjhCl7YSC
	2ve+p/h2DJqpiekMN0ld5G6b0tIsnNJwr7DAT9E7aJWb0HX8mWEing5yTCw3r0RHretpUNijkuc
	1G6jvhrmT4pQp8CaCVCQ6whupmlpe7eF7nLvompVkC+uAIAL4hLJafQTN1hc+u68aKQCgSTbSTi
	+/aGld8eiKSlk5YFClaXvhBoYPg0dQcZiK08klSIWLdAme/B59AKsvZD5TIeyN7VmZ33YS1+qLq
	6Z2Ha0/xi7U1SfQ+G1PE1Q8PzbIG/do06y5nvX0/lgcitEck+Jt3Otoio3q2hDkBdMFbnSV/sL8
	DuoN7OHYuHadTfZD9OkvFPOUJ45S1KG9f1y3l4/6qxWrr5oEAruA2zAfnjoYlQr12I
X-Received: by 2002:a05:600c:6207:b0:47d:18b0:bb9a with SMTP id 5b1f17b1804b1-483a963d61emr248565825e9.33.1772027288189;
        Wed, 25 Feb 2026 05:48:08 -0800 (PST)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bd7272bdsm62100135e9.10.2026.02.25.05.48.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Feb 2026 05:48:07 -0800 (PST)
Message-ID: <7c68d164-e2ef-4e2b-9ba3-9a8515128cc4@linaro.org>
Date: Wed, 25 Feb 2026 13:48:08 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY driver
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Bryan O'Donoghue <bod@kernel.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260225-x1e-csi2-phy-v2-0-2f3770f660d1@linaro.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20260225-x1e-csi2-phy-v2-0-2f3770f660d1@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260225_054810_940633_F9908056 
X-CRM114-Status: UNSURE (   5.47  )
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

On 25/02/2026 02:08, Bryan O'Donoghue wrote:
> v2:
> 
> In this updated version
> 
Oops I typed "b4 send" @ 2 am instead of "b4 send --reflect" this series 
isn't quite ready yet.

Please ignore.

---
bod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
