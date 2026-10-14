Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9DBBCC6B1D
	for <linux-phy@archiver.kernel.org>; Wed, 14 Oct 2026 09:38:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+0AHEXYNhfQz66El2K4hIBr8ntzZzEZjv91HQPaP5Ns=; b=VmneZJBhqvJFtV
	EnAV1NeVvouexyaGs4Eq8QHDPU18Jbe+TJ1eraFIzdIaQcMQF/3sZNyYeZth3xUxeL48c6t/gdWON
	oSQ9ayLY71FTcs/pQmV+wWPj1tGbb26xUaDa2wQwH66fpGXSI0cHNgeYv5AzKTfL+zsSB1ac71PP+
	tO4K/IM0EnRp4SZxjTNAMMSoz1ofILkles8fWNXz84mjYvY4q5PYwuthx01YpFMdL+hxPY9l2yxrY
	r53IMWhChpgB9SEwwNuvBH3OQzWrvyE/s4+kpMKuj/lRY3ZD806cG1wWRqoZwO71fGSHes89RXWFU
	PmhaWyaZnPc4xJzbkW/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGvR8-0000000F42o-1tOT;
	Wed, 14 Oct 2026 09:38:14 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGvR0-0000000F3um-0Iid
	for linux-phy@bombadil.infradead.org;
	Wed, 14 Oct 2026 09:38:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=gnTWC5fZozzSwkHK4q+Oqe31gSO1RQ9RdzCpCj2F8RY=; b=hWA0/yh3KU3N9GOG9A/ldyjrJ0
	kUidZ6T78mNUfXBI+wI7Vp3AQMtGJspTUEFGoN/4dI/hFC67vRoYKchQ+7YBobUv9q1k64s9l3ubM
	vW5a/lgAP3MShefmN+hGtsthV4adZVy25ZuYQ0Gxn0/H21uApi6Q0JXugQkG6RB22txv+VNdyRqdv
	1nJjZiD9n83IyOK2AkzkzN1OZUvB1n5J+mU+2gihnEFGWjS+5dfl8Vl1XEHRFRLLVz9n0xYrlfAwW
	tOpgf3vcGnGiafGfC+Zg88n+dLxEmfcFpaEsVoYjgVf010YHveFi/gmM2WW47D5QIFaGwFYS9HCpx
	nSfhbxqg==;
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by desiato.infradead.org with esmtps (Exim 4.99.5 #2 (Red Hat Linux))
	id 1xGvQw-0000000GZfZ-3aly
	for linux-phy@lists.infradead.org;
	Wed, 14 Oct 2026 09:38:04 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-4a171b677d2so23591755e9.0
        for <linux-phy@lists.infradead.org>; Wed, 14 Oct 2026 02:38:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1791970681; x=1792575481; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=gnTWC5fZozzSwkHK4q+Oqe31gSO1RQ9RdzCpCj2F8RY=;
        b=ttFMYbpZFmQ7ojFM0ldrEW19KiXUXNETnhfYZI/bwZkvl8YgylYcpdBb0OtvBH7GJ/
         CM9qD8VljfY+ckZhJln1tbDuRuQvFTo7GrMnG1dfq3XOcAFObghKFe5sslDiDIWlHG77
         oElrPugTkSsIBye7sQW53zODkGjhxw6kZcSbv98iyDJgrHNgXsAe3bnzU1ea6ShYe66q
         ZOEaVd+sBHqZk+xd+USYfjyc6rpiGkw9Pt/J1AF/008P9vRqB9vWz4bAXGGzkBsf4bhx
         nFTfycc2xKIV2txjLxpBvU4kHXvEHK89UBGTdv3BTd1MlHc+k5XqBn70EufME+NddHbN
         /ewg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791970681; x=1792575481;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=gnTWC5fZozzSwkHK4q+Oqe31gSO1RQ9RdzCpCj2F8RY=;
        b=rTSNo7d2X2JYfCBRPuBi20fEx3rR++AcBHgrCvv9bnW3VbLUp6Gey8ySSdLb8UJiF2
         tdnVDitTvoMoQLeB/4OsqifQ45tQTO6u4TDTSIlplokTCGptL1q6+5B48srttUu+G/hM
         IK16cOOFn+BtijDOJEj4Cyre/m+iVZS/VR6z6+bGttQvOIZXD6BjvOWIVkILvzJzqRPG
         KjtMQs20VCTNy2F3QrLJ9TieksL2u3fJ2o4b9GTuEbitg1Ajg1opqOh4q+BZlOze2oYH
         pCShcQozjGcipUMSLGJgWW1JPpzDIZLkjvMh+7N93GQEXanP7DUEpaEMEAf3tl8ry2c4
         zlwA==
X-Forwarded-Encrypted: i=1; AKwUvBxfZYDYf7DcpzV/GGX9q1HgkerbHTj9ACIZyyCe2ZQdx6eMsOBzuwojksZCozdohgHvMA2XjEUt1GA=@lists.infradead.org
X-Gm-Message-State: AFq9FYIk31JT9rnRtqrib0aW1RVRA1lr3/3UDP2ktwvBMmdcG29idPEl
	U5BENiGWn9jhLN64eC+sdVrgZwW3UpF8lzq4II5MKTBt4rCdOt2KE8KuZQtotLIbMZc=
X-Gm-Gg: AYBFou2zKFqTi3bm8hPqpObcg/1b2BUr2iBpIzxejEe3NsxzSHRWuJCRDP24J90Cnqx
	N2KbbBRgYsJa3Xcd6Pp0IvITMapbXmXTe/YtepWNm9f8abv0AwZLmB1Nz8qoZyqkvDIaqDfd5xh
	sBIgtjaRHfuJfWCbmQ71iI+0sfS2vmt1djx+usuSaSJfJiRAnKCbMYVCHAvfpLtFSP2IgmGOzTp
	KS2Wnbk/i8SMg6nhDE449HjlUfdzmaRU+6UUmmGiaPD1vuIme1pjLBho613UKgEf1hjMwutIAzN
	i9q7V9on6wJ2zzwo3H0ywYWR2MjOdXgOmO8p70c4+mZZf7q+rR6a+fLoKuiKwmBS1rcKV/lbhof
	kv8tA9KnZYh0DtdXlcNEGEpWjHXr63uGJNWUrIvwn9AQgA7BFVWrFzsFX53IWGoMbl6HeMWFyIY
	ezL0wcmUO7kcz2JAhxHmzn7gWox9nY5djonUIDFKSQTQR0lYs+iLT/qeBMhggk0zmOBYKAz6tg+
	V/UYNFbTK+O
X-Received: by 2002:a05:600c:3e0f:b0:4a0:1b21:2628 with SMTP id 5b1f17b1804b1-4a18e4b60d8mr299229875e9.23.1791970680941;
        Wed, 14 Oct 2026 02:38:00 -0700 (PDT)
Received: from [192.168.0.167] ([109.76.126.202])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48de7273a0esm6026436f8f.29.2026.10.14.02.37.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Oct 2026 02:38:00 -0700 (PDT)
Message-ID: <db980e07-adf9-464c-9fee-401581986508@linaro.org>
Date: Wed, 14 Oct 2026 10:37:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/8] dt-bindings: media: Add CAMSS device for Hawi
To: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>, Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Bryan O'Donoghue <bod@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Cc: Suresh Vankadara <svankada@qti.qualcomm.com>,
 Vikram Sharma <vikram.sharma@oss.qualcomm.com>, linux-i2c@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org
References: <20261013-hawi-maili-camss-v2-0-fc93222da89c@oss.qualcomm.com>
 <20261013-hawi-maili-camss-v2-3-fc93222da89c@oss.qualcomm.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-GB
In-Reply-To: <20261013-hawi-maili-camss-v2-3-fc93222da89c@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261014_103803_189680_04DE3E60 
X-CRM114-Status: UNSURE (   7.06  )
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

On 13/10/2026 12:02, Nihal Kumar Gupta wrote:
> +
> +  iommus:
> +    maxItems: 1

Just the one iommu entry ?

Please:

- Make sure its just the one
- Include a comment to name the one in this file

---
bod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
