Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E689606A33D
	for <linux-phy@archiver.kernel.org>; Tue, 10 Nov 2026 23:52:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Qy4jS9Xv
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=fBfO6GTk+fvG3Z9KTpY/JT++nSBxP9K7Auz87jO8VD8=; b=Qy4jS9Xv5fwAe4WVre2ea6PzM0
	sNTkkmjgiXLQz1tF7fmy7z5CYBRwo5DIGL8UbMzK/iAEmgDwYXRT0lfqhB/SiuqMzz0uAEjPc+Ph1
	6vu+Z5bxrLesDkvJ/diul+u9RdGv6PjBUbO/+SyolNWKs52phMAkweJyaDUy56cQv1TkaphOghIM6
	y5zgZZvO6c54JLRnRU/z6j8h/1STrKjsq+US/AOG6LvtRcvLlzLpIawQGhB93PVvv35nNL5B9GTm6
	BH1knQIohX46PdR4ARXnfS98TSMVK3QINjuh+5h5hnGJyh6h2Znl7j459VUM3PV50vmQ2SGvdTWae
	vM4lEVuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQvdS-00000005Gqs-1fD7;
	Tue, 10 Nov 2026 23:52:18 +0000
Received: from mail-yx1-f49.google.com ([74.125.224.49])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQvdO-00000005GqY-0mZO
	for linux-phy@lists.infradead.org;
	Tue, 10 Nov 2026 23:52:17 +0000
Received: by mail-yx1-f49.google.com with SMTP id 956f58d0204a3-67be7b9abc8so2310898d50.0
        for <linux-phy@lists.infradead.org>; Tue, 10 Nov 2026 15:52:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794354733; x=1794959533;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ZW6/d6tafc93+2es2jKCUdQztkgttkGrcDy02n1rkws=;
        b=Sl4jRgx6N4uCcPE+FFqeerNc64+OWsf9hA9J6vpCSeTFCirJk2qDOYlzuN6z5Mqd6q
         iNCrD2plFAC1MjcnHNNDaeYAoTb+P2x8FfTZIpA96Vk8sRC58x3ajD1GxG4TA99WC+JD
         U23XvQrHOSUzR42tWjam5dyJYlQk4lWPUapVnBJwHyIufvWg4iJ+ize1FYYBI11PJatk
         dJyRPxie/hUNX8HJuJoTvGAsoX+1upO2pDWnD3fvMvnY8Ui611arO9IVA+djpTajByup
         nAUJKJjbx9vgFSk19UwwisQh5MLUN6gAA2c7tnjhVIL2Evg1tkl2jDBfrMXMSHl5t3zN
         Ve5A==
X-Forwarded-Encrypted: i=1; AL+hErGN88oOOU4d+Sc+LYSgcnSSAugZmbrtfy3dP/6o0hMQJDuZf1O7CUgMfnTOyM5gCOCTHw2B/N8lULo=@lists.infradead.org
X-Gm-Message-State: APuU4Z94Maq5mJFm8jFkUnXZ5uEJyUqsBOK6lFV8mRyMZxaXif90vF9G
	L8jsLZJ26RVv/9T76CEFuFF9eR99zLfp5KO8285glhnskhPNeZaJepyW
X-Gm-Gg: AYBFou1eF2FZc+63Oi2u340S+rOzPPXrBRRaJymU3jJp3WsoQiVf/r9oENxBvl1bVrr
	0ivkUKpSd+U4uzD6fq+89eDRx9O+4Nulvpq/AU45bVtpNooBWaGbV9InWK/H4+0X23yZOKg9V5o
	tFHhFwHyk79ikAGqJ3MSvNdo7diIbKaWQ2LErPh68j008fV6x0uucWbNstYZfrAAb+q1yBjREu4
	3VHTyU6unSVgUitFu04PhBbI1B7JUqLt54xOZfbsIJ9afq3GOSxZIthMH4MeLZxKG6lslAjNJ3z
	fG48MNX9wa6/Mkg4ZkM0KjayoVMYC+OPMz1W+53VkqSGlsCqfx05dhxy5kXiCQbYJ8f+jg5XZmP
	QtnuUckJgC30snHo+6thX/8FVcPM40naEHqWQAfraLgiFPpE3UkzJGcMCpVkVknxmo4bOJdW2hr
	CnzgLpgQMnhlnb1ogofMLTWem3zFk/XLbWWPcLaqU32t00aSGVN7k2LXAzFA46SfPTpMESnBic9
	nl143018wN2s/gqzr58/Ht0LtifIyxIbDOo83OJO+ReUeRmmuhwpCdMZ1l7XvtpfoSRfUScZ2/C
	VUXIR5Zmz9rKs++ZGCb+LuPjr0ECrWTVO196NjkHuYwKXLP/pCq1yOJmNdrpeouRiC7D6hjn
X-Received: by 2002:a05:690e:16a1:b0:67c:17fb:ecaf with SMTP id 956f58d0204a3-67c67ee4a9dmr690322d50.26.1794354732657;
        Tue, 10 Nov 2026 15:52:12 -0800 (PST)
Received: from ?IPV6:2800:a4:806:ef00:2f77:7097:372d:6d14? ([2800:a4:806:ef00:2f77:7097:372d:6d14])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-67c589f065dsm3149000d50.16.2026.11.10.15.52.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Nov 2026 15:52:12 -0800 (PST)
Message-ID: <f127954b-2255-482b-aa3c-cedd2311f77e@andrewgigena.dev>
Date: Tue, 10 Nov 2026 23:52:03 +0000
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/7] dt-bindings: phy: qcom,sm8150-csi2-phy: Add SM8150
 CSI2 PHY
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>, Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@linaro.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Bryan O'Donoghue <bod@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Abel Vesa <abelvesa@kernel.org>,
 Andi Shyti <andi.shyti@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-i2c@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-phy@lists.infradead.org
References: <20261106-sm8150-v7.4-rc1-camss-v3-0-0103e8a0bbcd@andrewgigena.dev>
 <20261106-sm8150-v7.4-rc1-camss-v3-3-0103e8a0bbcd@andrewgigena.dev>
 <a9ab1add-5f04-4687-83bf-ca29a068ee33@linaro.org>
Content-Language: en-US
From: Andrew Gigena <mail@andrewgigena.dev>
In-Reply-To: <a9ab1add-5f04-4687-83bf-ca29a068ee33@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261110_155214_258388_26608044 
X-CRM114-Status: GOOD (  14.74  )
X-Spam-Score: -0.8 (/)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-5.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Vladimir,

Thanks for the review, replies below.

> Please double check if SM8150 CSIPHY v1.1 is capable of C-PHY:

The hardware can do combo mode, but the driver only implements D-PHY and
returns -EOPNOTSUPP for C-PHY, so the binding stays D-PHY. Would you
like it documented as "not yet supported" anyway?

> D-PHY combo mode is also supported on the SM8150 CSIPHY apparently,
> it shall be reflected in a way that two endpoints could be present.

Split mode is described in the binding, but the driver rejects it, so it
cannot be used today. Is it fine to keep it out until the driver
supports it?

> In downstream camcc-sm8150.c, PLL0 is on MX, and PLL0 supplies CSIPHY
> clocks. I believe MX shall be added to the list of 'power-domains'.

You are right that PLL0 uses the MX corner in camcc, but that corner is
internal to the clock controller, not a power domain of the CSIPHY. The
PHY only consumes the top GDSC; SM8150 uses legacy GDSCs, while on X1E
MX is a real power domain attached by the PHY driver.

> Still it would be preferred to get 'vdda-0p9-supply' and
> 'vdda-1p2-supply' properties.

Renamed in the binding on v4, the driver and the DTS, matching the X1E naming.

> In general the change looks good, thank you, but likely it can be
> embedded into the scheme for X1E.

Clocks, register offset, power domains, lane table and timer all differ,
so folding it in would need if/then blocks for almost every property.
Would you still prefer that, or is a separate schema acceptable?

Best regards,
Andrew

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
