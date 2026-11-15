Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2F6D606A32C
	for <linux-phy@archiver.kernel.org>; Sun, 15 Nov 2026 12:07:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=cCBFELav;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256 header.s=google header.b=ervdNN1H
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=rNEdlW3NUI7Uv4tPJJWJ94HV7aT/6GroVUd/qiID5XM=; b=cCBFELav7fM3hJ3OYQ4R1TdcJu
	7KMAFIJ1fJa7OqmgObQBWSerbWbxvwSXWmLYkN3qACpYz349FlIT/tje3knSL8SOn32vKy++1yjKH
	0qE7M4Sj3S/Q18apLaD9q+fLsNrqSldNl9eP7HHLhFQ0NzEY63aWQrVQqw71jsUO4qXoccYMHTUzw
	DTptsDb5uP75vPEzHD9TX76Yfqhum/Rpx7eH1f+NxKSqmnMbuju+pBOrLUlj04yCLucTd7Ur4TYwX
	NbNIJm0waIAXCNRQQgjHw09NOSs0Jh8hjFDz4x/zM2rJ2WAjC0xvl2GBRZyk3qu65aJY7q/fwIRrZ
	DIa7QPww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSZ1F-0000000HUWW-32PA;
	Sun, 15 Nov 2026 12:07:37 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSZ1C-0000000HUWC-3Ptr
	for linux-phy@lists.infradead.org;
	Sun, 15 Nov 2026 12:07:36 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-4a35ac4475dso14410325e9.2
        for <linux-phy@lists.infradead.org>; Sun, 15 Nov 2026 04:07:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1794744453; x=1795349253; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=r6K5yPNLQHHB0Nog8TnybL0n8K+O6sS9uh6jOz0Z75E=;
        b=ervdNN1H1BzsumBaEr0EaI6ihbbNZW+JCzEDJMhDRYa5JJ86jq2dP4JKDT/TPI4hUi
         W5rZ5ePrU4YExRYeAeQXskBSRGdr+KqHyFF0dwJC5ebS6vW9zRZbnzfHKW9y2U48JNkH
         KqxxQvIpXqrTNrm+U4EyRf4d0V9t68TEO0aEHdItYFUwTBUHBwUi2xYdwMlCXHdUe5Q8
         BYZW1LH7V8nTrMnAJBdvjUbXKJoPH8lnBCSRuSqMDCwvP9Ji+ciIJdeqX7bCmfjo8Guw
         STPoNQBrBlxLk/0l85B/T/nLiL6y96OVihRW27APSYTQ4T2kkkwSytSK3aOT1d/WqWTw
         QBtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794744453; x=1795349253;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=r6K5yPNLQHHB0Nog8TnybL0n8K+O6sS9uh6jOz0Z75E=;
        b=NOo6G1l8UVPRJTD2k5qJ+JntmrP5X+FX1jF5OWpYwxoWjd/H4enp8K4gXmqbpOVbAY
         tY9fOvlJV71ogE+ittlEbQTxWthqACJC0CQLcSPKixUUz1fto1uKqT7+9gMdyTf+PpET
         /ZNnn4nuy0OcbB2Uv5OBFpi20TUIqfPE5kGJjdlmrtghXiF0yGkbpZrnzxYnYLft5/je
         iNuuMU6P0s33cql8nWaQkXu94I6x2t2u9JQGOCh6wTtVrSdK/fR9CcPDYn1Vr1zpZywy
         dPo8usvRgMz1JTeDFMUAG5YqQ/0pMIEexuO41UApAUpJt/oXsr95aIQf+kQ2S4ThC4SD
         uw7g==
X-Gm-Message-State: APuU4Z94iEWOgdQlvlWfjKkNAZ1u6kLAeFZbGJ9egMAsn9OQ/O0r7aPD
	1jznV/D+hYlWgM+JJ5WRHE4v5NCHX5kUFLXTDDuCYrqPiIGnLGTGh0bL2e1UASiL1y0=
X-Gm-Gg: AYBFou0OhYHI54VdpGocITPCcswjoV67G0KwYp/LElS+i2WJ01FdeplTaVJc2haEKqJ
	77crw+IKXdLTBMxv6zeE1jlFGe4TuhroUxYn5cCjCQOyhXexe1mXTVJBthP2LN9gpoAJ9Qc6Yqb
	nLNzubLtLO7/sx2fOtjDWb1RrBjj/8hOgsg9f+k0TmkUMwd1s94y3ivYdrSFslBqwpvPaaJk54J
	dSMkGZqlZYFMGZXez3aJClhmyLHhEB37OuDX3dz5vsF3alPNHXZn2o3dp3gCTFS/7tCO42Lyiq1
	QVwx/tEHxAExayIzTKGK1Fhsu5KkszU/l7/JCbjZsRW9UjwwmVWE8W8GJKD90CcEErjGyfg009S
	KljCseilrmFa3xTp2rRAJnXujVp7LD6x2mMonY/NrsLYehPYovO3fWcfyV9q2HQLASweiVZ3lR/
	9RJca08c50qmIPbMMjJoJfCRbkKWNy0NgX1WpVT3p8XuiacBt3Q3C/gtiAta2vL63QLMWUkV4S6
	0+eenq1YJhwWcRvnzbHMUaJPwsr6GP+auoXetbUQWpuhXQOgbS/wO0mryanvpdDpnkbrAQCqhGX
	0E106YzOQniRQZdQGgM8Y+kN893tKNrAgTdCAjEzkCEfPZdLDs8l3IlJfEVW6mQb
X-Received: by 2002:a05:600c:3d92:b0:4bb:6c01:de81 with SMTP id 5b1f17b1804b1-4bb6c01e02fmr25950745e9.19.1794744452736;
        Sun, 15 Nov 2026 04:07:32 -0800 (PST)
Received: from [192.168.0.167] ([78.152.238.245])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4bb55ac1159sm189440575e9.4.2026.11.15.04.07.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 15 Nov 2026 04:07:32 -0800 (PST)
Message-ID: <d4fcf0ac-571e-4d3e-ada6-a732d68dc18c@linaro.org>
Date: Sun, 15 Nov 2026 12:07:31 +0000
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 17/23] arm64: dts: qcom: sm8750-qrd: Enable S5KJN1
 camera sensor
To: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>,
 Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>, Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Abel Vesa <abelvesa@kernel.org>,
 Frank Li <Frank.Li@nxp.com>
Cc: linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org
References: <20261114-add-support-for-camss-on-sm8750-v7-0-8ff2a11835f6@oss.qualcomm.com>
 <20261114-add-support-for-camss-on-sm8750-v7-17-8ff2a11835f6@oss.qualcomm.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-GB
In-Reply-To: <20261114-add-support-for-camss-on-sm8750-v7-17-8ff2a11835f6@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261115_040734_875308_0B948FCF 
X-CRM114-Status: UNSURE (   5.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-10.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 14/11/2026 11:29, Wenmeng Liu wrote:
> Enable CAMSS, CCI1 and CSIPHY3 on the SM8750 QRD board. The S5KJN1
> camera sensor is connected to CCI1 I2C bus 0, uses MCLK3 at 24 MHz and
> connects to CSIPHY3 over a 4-lane D-PHY link.
> 
> Signed-off-by: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
