Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7D21F4645A
	for <linux-phy@archiver.kernel.org>; Mon, 16 Mar 2026 12:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pZkvadcM2zt+csXhZLrY8C9TQCYGwhOFb2zVeyk99QM=; b=Xe6DRYglZURveP
	M/qIlYfOBjp7PGyjXQ1Mchv9REeO4WiT1VoSi5UGUPLdvhVbEZT6YasVuw1weXASPfJ2oZ97lTTul
	JgFeK8unnB52c0p8uJo4Gla9qyEd1KNoFIgscBwwFqid1r3/M1+3+N2On69BmfQq4gBWAx34QxzTT
	qsUQ54H3qErN2e+EwnqhLAdx4ketnu0gyYEabAARTE2XDqGvJo+fNpQRYNwa61VbqieakXcPoaiE4
	aZ1/6bFRlHHHgOzGbFz6B4qmM0wCyNUF/jPDdffPOxw+xgtCgtkaSji2ri1Ibcb+artiM3Hg7Z+u/
	PsUoQ8jITaYtp44eKJXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w26lj-00000003uJH-274R;
	Mon, 16 Mar 2026 12:09:59 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w26li-00000003uJA-1ijl
	for linux-phy@bombadil.infradead.org;
	Mon, 16 Mar 2026 12:09:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=+aOA6KmbmXewMZ7P8FODs/N6f8zkWWVqFAVl7awbb6I=; b=ShYyf6SM0VcLgSdOrtsIVtrcXb
	x2YDXs1kUauJi9wb9F66yU613mWjpbDj7Rm5aJj3ZRo6FxIFr0WIpLnwTN0aSE9QZ9RfoV384fnmd
	veIFk+hxbPZTKrOD9vigSugvlDwD2UQBVl3REhEOdNpGHrK9jtExfMei6sp80p8JHLQI4qU9hAkWO
	y60ZWqGQlyTaZSdMn1O8Va4OBwBTUYZn/mzIgCLolzXF9AZsuUhm1/mibbW71SXnCr4JzYsVelWHY
	2M230F9kZPe7wdLMx7crI1RFbvXglftb3S+WgQl1jpu3ExW0mG8xEJsd5bsdQ4so/xjHtKPwzn9xU
	DjRJLpKQ==;
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w26lf-00000006g8T-13kK
	for linux-phy@lists.infradead.org;
	Mon, 16 Mar 2026 12:09:57 +0000
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-65c0891f4e9so7839409a12.1
        for <linux-phy@lists.infradead.org>; Mon, 16 Mar 2026 05:09:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773662993; x=1774267793; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+aOA6KmbmXewMZ7P8FODs/N6f8zkWWVqFAVl7awbb6I=;
        b=uIcTrfl2EvdqBa2+ViYqusuytbbVr1zK53J5rcFr8UA2qstxkihbOuRD6c5Co2rG7D
         t4IRBIDmAGtdTZfPmvLgacaVfHAm3GOChbt9rHLxbqRwYN4gwFcRjM7UfrzmSpLvRH86
         m8AN7PG4QWFD+1Bw5iX+HpDXUiIXHfoHRvV/3W/luqBS/KvNcfhOoCRFGncaKEj4q394
         Ia6e6stmwAZO1maA9S29+LnkNgVTaw9EtKoGuN2sBiaDDuqUXTy6duVPYhZH+0MvTX8E
         yu1hr6YvRCTsceoRq7O94qd0SeglWP4K4HMgYuDJ1HF3AEbt4LsdjMNFsAbur/ONU8KT
         L7lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773662993; x=1774267793;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+aOA6KmbmXewMZ7P8FODs/N6f8zkWWVqFAVl7awbb6I=;
        b=NQoA1OvGqYmNzD8wW9m+rsQ1BG5IbFTlLSc84zYjTqZarqu6fDtIk/uBH7DNK35qcd
         8p9n7ztUkMIsERa1g+pQr8TItdER9ud3/uFuUwOQRwSqRL3MJAeiyc0MlEAvSeBVRRS6
         cTD2Yr4KsbvRqjahSkq5sXamoGHDbl5CSkCljgBHOgUwQ+0kyzjHHUfQ0iTfPlWx/XRp
         jxEqn/AE5vAWqR/V1+ZkVBSQaQmz56I+TmsEFiDa39KEIfxwWrkBw1+Ndo0OQ2FiVBM0
         z4tWK/dCkZ87vnEOP44bzSYFaKNG/p481kT7x5rT/csuveK4/7jOP0MnICIJUIrOi9qj
         +i4w==
X-Forwarded-Encrypted: i=1; AJvYcCVztCPksWOXX2389n/UwbWjoRb8OIRSJa76FYd2TheqDmiFLKH/+P9J1feklwLNE70KpSIMx+mXQsA=@lists.infradead.org
X-Gm-Message-State: AOJu0YzenVX5h/GwLmXJYXcXhd8pxgLIrjgkKtHjqY5J3Ew/ajYJQhsD
	qzwAqyYE2bwrlsHahlziRvQYgniTNYmQ1t4FHJkgknS6GLuuzitbFDCw3x0vzp5R+1g=
X-Gm-Gg: ATEYQzxotFbVqPQ5lDh4Za8YWN7F6TVzinwjwpmzUnrRH21vO3C6dqdyBAck0KGhAj5
	iNgg1rGCxOV5N966Afl7CWaDJwO6uVH5DIrhAviZhgkP9ZFbUgaFQjwACrahnQIHu46p+WqeD1P
	fcYi9bidcXHQUqYFYfEH4elljIOHSUdNYiLIsqEbABR1ufRQ1wRlcx0oN8PpYFeISoDDV8E+Mhv
	BagWC5xrhGrFV3YDjybfJD4Ghh1AMmfcp0LPnSuG1Xjqyv8Q9akaLtILINkcXaCb5Dp9vSvq0Nv
	qSYASazUl2n3IeqSVnNxW/+UW+OjBXMyqFF0jpSXzgIPnd7uqSfoC0Bo7KaKT8qFYn4LPswCpZz
	WtBogZBe7YEaB0AfWGH+qkx2yBclCTiaAJC4Mq0Tf1G4I/p8Eb0qdY1sMdmUKt7toy1iaICI90x
	VNFse6i7gig+4D42r/609ubTS8IB6iS0SLj+hC
X-Received: by 2002:a05:6402:510b:b0:663:b689:ca74 with SMTP id 4fb4d7f45d1cf-663babf098bmr6870723a12.19.1773662992752;
        Mon, 16 Mar 2026 05:09:52 -0700 (PDT)
Received: from [192.168.0.101] ([109.76.226.115])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-66350d84130sm4654241a12.33.2026.03.16.05.09.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2026 05:09:52 -0700 (PDT)
Message-ID: <e4f0810a-903c-45af-8d6b-80bab53b26a6@linaro.org>
Date: Mon, 16 Mar 2026 12:09:50 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
 Bryan O'Donoghue <bod@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260315-x1e-csi2-phy-v4-0-90c09203888d@linaro.org>
 <20260315-x1e-csi2-phy-v4-1-90c09203888d@linaro.org>
 <c59f621f-23a0-4c60-b8e3-5a9082c816e2@linaro.org>
 <wjsnwdyoptrfbmdkqlcepzekfbccv6vsfop5wm37m56rtlevfk@jkbievryoo2j>
 <a685b880-0239-4804-adeb-c63204a91142@oss.qualcomm.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <a685b880-0239-4804-adeb-c63204a91142@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260316_120955_424621_F524F109 
X-CRM114-Status: UNSURE (   5.79  )
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

On 16/03/2026 10:49, Konrad Dybcio wrote:
>>> On Hamoa the CSIPHY supply voltage is 0.88-0.92, so it is 0p9 rather than 0p8.
>> What is its name in the schematics or in the datasheet?
> VDD_A_CSI_n_0P9
> 
> so vdda-0p9 seems fitting
> 
> Konrad

(0.88+0.92) / 2 == 0.9

I'm happy with the average.

---
bod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
