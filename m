Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1EE4606A327
	for <linux-phy@archiver.kernel.org>; Tue, 10 Nov 2026 23:56:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=0sqDhObn
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=V+eYWmDmrIjkLg9YbqAh3xSE2H1dwr/5Iv8EXn8y2so=; b=0sqDhObnDDbn1EWjjKA1uOHADE
	JfPXpliLR96in2CVWu+1bBKbWFXSxwAUkgYaj3TC8Q6JvZoM/sKctslSrSi4J7JuTIC0ckPC+a7nI
	9g4P7X+IVHt0t1p5C0GotxmCCMWe33b7pSjpzYNrYb1ulB/HKVCLodz0FDUjzR73dqDlVKZKuS1vc
	WgGZm7GN63zB5CkVtSxzrTX0KtCh0YQg9DS1ovIm62/daFEcqKy/6xxUsFjt+meOCYa2beQsHzhiT
	rkK5gz7UXJSbuiMAAio8SQbZjdMe/fC3RWPvC/kL3pYilvOukL9MP3ewFUIW+QZyLJwntPdaWUjLJ
	DTYS/HnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQvhS-00000005H55-0uNX;
	Tue, 10 Nov 2026 23:56:26 +0000
Received: from mail-yx1-f47.google.com ([74.125.224.47])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQvhO-00000005H4l-03Da
	for linux-phy@lists.infradead.org;
	Tue, 10 Nov 2026 23:56:25 +0000
Received: by mail-yx1-f47.google.com with SMTP id 956f58d0204a3-67c08c7adadso2183939d50.0
        for <linux-phy@lists.infradead.org>; Tue, 10 Nov 2026 15:56:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794354980; x=1794959780;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=TbgkfmRSlQR0RSZaLLsWqAT5L9ZTG2kkyMrzBfuV6Vk=;
        b=QBRKKt4X2enUiaK4s8oWL23Vl3mSBQsWdR+p0bVcbg8S1XjlEP/cKECNOGmtzPdqi+
         e3l1VAE9ZsLIAlJSFy+cUb9Qb+WijmlV9+XgyVElEAXRiQvEgeG2gfvYMd4K/Q6jQz8Y
         EtMCwY0ZNidx9m2oynk9R1en/+4U2kmDfTgHjnOutEVuYPldtGqsKP1QqKEBxY9cgAiW
         2yWZCZH3oFIsn8aRhKaSDADyGkJq8keaqih2pXOZnc9fn8rVXAXhSiI3uFMFbrkKbx0Z
         iczCd9QbVTUnNSdPaMaNkuZFf64EizFqfPLPMHiLFLDs0rR9r3IEpsvlX7QyyIajPwj8
         nf+w==
X-Forwarded-Encrypted: i=1; AL+hErHMPRtc7N61GBxAwuu3z7/Aytr8Ru+E9jK8wjFXcOF7zRNpq+2BvpqB8LByqys8BSjXEl7yo/BUM7A=@lists.infradead.org
X-Gm-Message-State: APuU4Z+HGvnJADELc11IFIItoizfPTQyNGBaS8TiSYTiZUTOacpwSWix
	zkY8PTN268ExFrl8tJ4lFxTLxx8QosN43OWjpBAHpaegqaiswlfZ9sns
X-Gm-Gg: AYBFou0RuP6SMo8ck0vO/ceEV/JRbmH5t/eHy6ycQykJZ14sPks4dvC8FJS8T5ZvQWr
	IpxJYuO3sWjJjiZPKSpHIHebbOSwfHmWe/reGeFpLWSoXRDu3t1skW68IpuqhWBmvNeHLPeSAoR
	oNL9fUTIx+h1R0oPtnH61q3CStZDDcmECs4ZbxQZhtnApe6oxo36tOsxQ6dM9V2TV2a9TAvGYK8
	UNoPu6DYMXzNurVyqJvR3vB7/10C+IiqPGsOJ8CoILth5ccburxfqJYszKlO8Xy3PotUrkJEJ/7
	kH0xQ6AUds9GpvUvSIbIzdTtRhTG0WzD1UVP2szgABEa8GLy2MxE314/WypptP7Cccvuh1XxTbJ
	8V2K949taN0DMYGOldquLdqXdhYUQwR8prep18B68R+QRRfZwU2OBy2Srmp/pISow35gLZRDW6O
	CX4IvIQyG0FLukQ125cYXcCWd3tgZX8fwuN/wkolH0xAHULSB2Jx7bP9lnFkHekQk3JmSl9rzch
	ufVWu30i7VIyRoJ6DHBTFA1+jqtM2NG6mhlxUUwsMG2VlZG50YLvG3XvNsr2knQv5eYlpnatGOd
	xktxL2KG5j0ho8acoJUgbKJyFWmzYD7t7TuZ1IjsxbGX7HLr9ZKkqMIHm59MhlEF9JDQrvch
X-Received: by 2002:a53:ec04:0:b0:679:4176:47e4 with SMTP id 956f58d0204a3-67c6811a961mr389098d50.99.1794354980450;
        Tue, 10 Nov 2026 15:56:20 -0800 (PST)
Received: from ?IPV6:2800:a4:806:ef00:2f77:7097:372d:6d14? ([2800:a4:806:ef00:2f77:7097:372d:6d14])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-67c58a294ffsm3158931d50.23.2026.11.10.15.56.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Nov 2026 15:56:19 -0800 (PST)
Message-ID: <fb65a7d2-5656-4659-bd96-17fc5bea2b84@andrewgigena.dev>
Date: Tue, 10 Nov 2026 23:56:13 +0000
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 6/7] phy: qcom-mipi-csi2: Add SM8150 CSI2 DPHY support
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Bryan O'Donoghue <bod@kernel.org>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>, Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@linaro.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Abel Vesa <abelvesa@kernel.org>,
 Andi Shyti <andi.shyti@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-i2c@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-phy@lists.infradead.org
References: <20261106-sm8150-v7.4-rc1-camss-v3-0-0103e8a0bbcd@andrewgigena.dev>
 <C4VI5PNThYmwD0VGOO9DvvHRRydBUz2k5DOLjkianYgYaz4G3-El6cDpnQh2siR4mMwjeiL4_Yp2xEAYeJDJ2Q==@protonmail.internalid>
 <20261106-sm8150-v7.4-rc1-camss-v3-6-0103e8a0bbcd@andrewgigena.dev>
 <88407f72-0c6e-4e46-b97b-7031c237dac7@kernel.org>
 <83c6281f-1887-4481-8c63-957b4bc856b9@linaro.org>
Content-Language: en-US
From: Andrew Gigena <mail@andrewgigena.dev>
In-Reply-To: <83c6281f-1887-4481-8c63-957b4bc856b9@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261110_155622_063505_7F1CD3A7 
X-CRM114-Status: GOOD (  12.12  )
X-Spam-Score: 0.6 (/)
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

Hi Bryan,

> What you could do to unblock your series and not have a dependency on
> another series is cherry-pick the necessary patch.
>
> https://patchwork.linuxtv.org/project/linux-media/patch/20261102213936.1251316-1-anusha.nandi@oss.qualcomm.com/

I took Anusha's approach and dropped the dev_pm_domain_detach() hack.
Single power-domain SoCs now use dev_pm_domain_attach(dev, 0) and the
loops check for a NULL pd_list. I folded it into the PHY patch with
Co-developed-by and Signed-off-by for Anusha, so the series has no
dependency on another series.

On your other points:

> Is there really no AHB clock to be listed here ? Seems again suspect.

There is no separate AHB clock. The "core" clock is cam_cc_csiphyN_clk,
whose parent is cam_cc_cphy_rx_clk_src at 400 MHz, and the second clock
is the CSI PHY timer.

> These are not the correct names

Renamed to vdda-0p9 and vdda-1p2 in the binding, the driver and the DTS.

> But why ?

The SM8150 timer RCG only has 19.2 MHz and 300 MHz. link_freq / 4 rounds
down to 19.2 MHz and the settle count comes out zero, so the rate is
pinned to 300 MHz through timer_rate_hz.

Best regards,
Andrew

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
