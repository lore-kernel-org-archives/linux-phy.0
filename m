Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD462C43458
	for <linux-phy@archiver.kernel.org>; Wed,  1 Jul 2026 16:05:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zTFj3gPdvN29mx2U5jCPGTlzo37Db2H20J3WQhlyL6U=; b=WMtlRZ9kBF0DE3
	3nMIMSlPk572DfXqRUitWT5xUwj9Zrkjwqnd9i0P+vkQ6JkkVJbe9h2fG6iX3UQ+qsMubHblB5Xie
	tvjhzB6joQoViubFsFjNWPRhPxT7yucu4nDSRQzyGNdFozwTXqFk7IU1srs2/i1PmVR/uBTQcJy2n
	XilM2E8RWTgTw+s0PMmDPDGANiR/c2npfK7qVF5aZ1X4TO9GBK7sHcfGdkdp6HCiN8uHsKjDosuBl
	EkKGafxUNefYhIbbakDwtRo9Iq3rRb723q/4eGiLIGQofua2dANSBqg9uxurplSQKqWagxI8rTSPs
	GRIxKv6A7dsfdRfJ7agA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wexRQ-00000002UBu-0Lw3;
	Wed, 01 Jul 2026 16:05:36 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wexRN-00000002UBL-3xpT
	for linux-phy@lists.infradead.org;
	Wed, 01 Jul 2026 16:05:35 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-493a7bd27c2so7537515e9.3
        for <linux-phy@lists.infradead.org>; Wed, 01 Jul 2026 09:05:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1782921932; x=1783526732; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UsosZm6xpnN24XGcV9MJwzrd6T6IUqwmGit4RNYmFFo=;
        b=JIrGDRZJ/zROwWddfGvA5fQSl/YEAJ6votQpDfTLyMIWg4tOPnnamDKEx68y9s0plu
         7QQXTLZCj8ZEyX5YkFquxukb43HGdXadGxHjtnkp0RoXHd6+12lORRnkuIO6IXG0mtV1
         UWO0U6vEkUYNR+2mI1FbZMkPYTgr4i2jLoMlOlcDFOcu3jrvoxKFzY5kpoDDVZcFhlFS
         yBjHKoshGV+yn/wnEqLw8CgakEhkT97EMCqKLJPOISm+uw5vjn8qj89It/ZMG9ynrAMi
         noSUmn+sAzjrZsc7Mi/0WH6QQ9ZCdWpIkAkRIchRFZWf8me+7K7v1E9+rkeSuxWqSS/I
         FIsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782921932; x=1783526732;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UsosZm6xpnN24XGcV9MJwzrd6T6IUqwmGit4RNYmFFo=;
        b=s0t6ftzhRnoBPCd5noVSIMNszQn9TiWQuLPLfbFlUzlJHoxPHQBUPT9JY3ViVL6D07
         u639/ewwqBeAWGC5U+BNbdF5GyF+OqG/aCDXTUjALjeqHU3vha7Yp5P5xAZ4cKFkXwq3
         awASYJzvY9FH8Yy3DUX2x99R7VEvvzFJ5cjyGstw55lqEPRnsdoPTVFiWw59Isenj/tA
         hYHzZ5QjVQZYpEkW4r8ElVhEkBckJQSzHV8XlXvNXTvrpiMQajhg2h7sYErmH+zZihEl
         sD4EOivBAVPQ4ZNo5IC1zAeIMYILU/RnycR1R2MAYHvEUV795IT9tZWvxNkD1LpsAlDN
         zhLA==
X-Forwarded-Encrypted: i=1; AFNElJ+gG9FKT12eL1+zXzl38tQGZFqolbyJUnxrIVhpOS9zg7aWguhJ1xaawh1e2eYUlJJqM2awV78kSEc=@lists.infradead.org
X-Gm-Message-State: AOJu0YxXFx/d3POgAvVRWsTO8NZgP/Jo+AU1tM45ldEe3tXzGzPRltj5
	687F5XfH8gGcuswK7VlFFKdhyu1lpTE/NrhJwHXF5kdwRNx8WBZ5oupOg4t8JgGD++4=
X-Gm-Gg: AfdE7cki36jXB+8yElJ0qZ2ks5n9c3XxW+Lh4LlOqFtQEZDR4PW7XkjHi9YQmOFvpog
	3cvDyW/z+lrY5pKCupFgJJLeVyLw/d8lVWTa9owIXjFaNvaT2C0xhHllH7pCngSpAS4TjRwS1EA
	93s80L2IRn8CzqPp/SnQBgnRRLahWjmXoqd6pZD/gJfju4ojT91Gk8Gx7dURrhZHO/zMVDyPTM1
	cpEOqZhRYTA3p3biavo7plL6USs+hfrWeokdDMidAfz8/SP2Hzsjz43vBz2PwZ3w1zA3sozQm2x
	EkoQvrY9eIVeUjrZGUG1pL+xMc0Sg6iko6PzBwYAXiwUdO3smeTEvAE215/cPFGc+2tw8TmSDIT
	dR9BUU2dcq+3/9Ofvpe4D222GBIChIEEqf6pi8uKcUi5nGETTpaXD3BP69rIIVpDyTU1u+/P4nh
	MoKu0CjcBm
X-Received: by 2002:a05:600c:8590:b0:493:b55f:bca2 with SMTP id 5b1f17b1804b1-493c2ba4341mr28332345e9.34.1782921932035;
        Wed, 01 Jul 2026 09:05:32 -0700 (PDT)
Received: from [192.168.0.35] ([109.76.66.240])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-493be4fef11sm79771845e9.15.2026.07.01.09.05.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Jul 2026 09:05:31 -0700 (PDT)
Message-ID: <af1377c4-f4fa-4130-b51d-bf57ae3831c7@linaro.org>
Date: Wed, 1 Jul 2026 17:05:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY driver
To: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>
Cc: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, Bryan O'Donoghue
 <bod@kernel.org>, linux-arm-msm@vger.kernel.org,
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
 <b6a8c860-8b47-4250-a428-5225d0e64a1c@oss.qualcomm.com>
 <htxqjgwjczsghunsbvo44lwkadzeg2kp6wfcksf3hkmcubvs2d@cw5r67uxskvu>
 <59331aa7-8430-4754-861c-4ba6a4810ccd@oss.qualcomm.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <59331aa7-8430-4754-861c-4ba6a4810ccd@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260701_090534_015113_D09796DC 
X-CRM114-Status: UNSURE (   6.38  )
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

On 05/06/2026 10:31, Nihal Kumar Gupta wrote:
> Could you please fix the driver to map logical lane indices, consistent with the gen2 camss convention.
> 
> [1]https://lore.kernel.org/all/20260326-x1e-camss-csi2-phy-dtsi- 
> v3-5-1d5a9306116a@linaro.org

I also agree with the principle here. camss since apq8016 has used 
data-lanes = <0 1 2 3> so we should stick to this established paradigm.

---
bod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
