Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36A4D606A31C
	for <linux-phy@archiver.kernel.org>; Wed, 11 Nov 2026 01:27:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=V+lfI8rL
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=KWg1JgVutGcO/C1tbpFPsau89m4IIr3VNcrMchdKY4I=; b=V+lfI8rLGZWAjEsh/8wBbsvYH5
	GkPleYnjLqa6TsHexf2TpYh1VOJH4dxgyOb2GLZHqufw2eBtH/0+f69GIr2JVSRQXidc50kHQrqER
	7rigkoN1FJ871ggiNoqS2vBuowNs4HbAjbA+wh4vPqoUxAH7fGo9omoXwAGw9VqnCBh1uAh9HU0P5
	jSUXh9WnH6BuM8P88UYuyeuRZ8RQwTseo8duF3mM7NsFO01rAESjqI4ksEVL9GccjPN6N5jZf6wfQ
	oAICd6+ZoscpdkByHdOwqWClSotYKwzhWxd0erJStlCU/ua51afWd7RGVuOB+qqWprOyD+/9q/BRu
	9oO5Mz/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQx7Y-00000005NTV-2Giq;
	Wed, 11 Nov 2026 01:27:28 +0000
Received: from mail-dy1-f179.google.com ([74.125.82.179])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQx7U-00000005NSv-0ay7
	for linux-phy@lists.infradead.org;
	Wed, 11 Nov 2026 01:27:27 +0000
Received: by mail-dy1-f179.google.com with SMTP id 5a478bee46e88-36fc0a3fe93so5288167eec.0
        for <linux-phy@lists.infradead.org>; Tue, 10 Nov 2026 17:27:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794360443; x=1794965243;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=BLSB0jc+PDfoGDhBATE5rNyu65P6DKBdBa7UuDK+sb4=;
        b=Yb5TMRi212Bg5Jv2J2WH7idDqxoKSObsdmymwZImb/RoV7xc1edLpTvOInkVHmELtG
         tJsPrddsBj1YllTwY/7/vGchYplDRHbNaUml8YExTs+L/MfTauUHpV5FYZxoJZmi1iM1
         oxBwQtEzhAa0odiene1sZ06xKmVQ67MRNdv0dSNbcJBxSbujjFVNylzkbM4PBhbP1NhS
         U1gC1EDk4etdqH9npypc2kkGKfdAr/dbhiVgMwkaSmg54lHSzxWTl4d1GfTZOFofjtTe
         71EIBOEtWuISxajibdE3fW7ps8rbpE4QXhfFWc5EpwIf7lkTtloPdeIq3wHHts3w7XFT
         xPkg==
X-Forwarded-Encrypted: i=1; AL+hErGW7wRqhkCg7XOgJ/WQzMNBIkIk5SEj5zCv8IA+kFZYKAtn9TaaNLZ+ohSiFYkAlHYKSAkGVqZMfNM=@lists.infradead.org
X-Gm-Message-State: APuU4Z9TR17DmYyhIy/54FDy542TZUjYv4+xQADL6sIgaF+yOcRmhafV
	8QFcDqRhPknT9d1z9+AnFUQUIleFWZv/hyUd8YPMjSRhElFBl5WFKb9WpeipUXhH
X-Gm-Gg: AYBFou1g60ia9PyxC8G6nEIKfBELK+hFFozSfm+xiiqjByy6vMDYtWB1kWo9PJtq0fl
	zmZ5SpbplmSIBqH0bHUeAC+FFHmNvtEmzVPkQTeoNhM1t2Kr18KbbvwBKqY3EWhFTfld+pB0qU9
	FhAGQz0lGyPjgBiCjv6bwI/wZ9LKlJf7jXAnVQZvmXmYdb6VVqsLADJaa9w3M5+KeMS5ee7ZVVR
	1mAp32Tnshf/TjpnUV9FMj72A/CNzAZSIrMK9O1ZJYrr/Kwsn0BPzRMmKCuqXYgRN43UeQrovdN
	qEaPsBw3w9YHLiiJHbw+yMBTHKe9VyD6IngrdfKu6zsCtrOKNixiFk2Djl/Kz080p1mOmdT3Vw0
	VcR+UJJxZMO+dbOGjiIk/M9Sc/Et9JASVrQJ9tKvpBCjBX+Ms9jVeTNF2rciod1dRSy0mPE5dDw
	1RWXw385S/CYpdydXzt6utgUecgrXCw3gAvg4M5+xtXd8/c5VEe56ShIewbV+72Y52clLbhcigo
	/qOrVsKFkXddpFPBazHba6xwkcQnIGavS4QWj2eJ+lczcdB6461YBtGkJFakTcouG3EdCqO13PJ
	YykrNsO0Hidz8Nly+qKLxfqlt1Kz/VPF1IU/KnzX4PxqtuDGTk8VvZvvqmrPfd1EAqtJhm+a
X-Received: by 2002:a05:693c:8219:b0:36a:1008:5815 with SMTP id 5a478bee46e88-3768385dee6mr1611656eec.5.1794360442766;
        Tue, 10 Nov 2026 17:27:22 -0800 (PST)
Received: from ?IPV6:2800:a4:806:ef00:2f77:7097:372d:6d14? ([2800:a4:806:ef00:2f77:7097:372d:6d14])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-375212e7d24sm16548467eec.22.2026.11.10.17.27.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Nov 2026 17:27:22 -0800 (PST)
Message-ID: <9988b8c2-547e-405a-9c76-a4e6a59c7dbb@andrewgigena.dev>
Date: Wed, 11 Nov 2026 01:27:15 +0000
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/7] media: qcom: camss: Add support for SM8150
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
 <20261106-sm8150-v7.4-rc1-camss-v3-5-0103e8a0bbcd@andrewgigena.dev>
 <160aa94c-c726-4cfe-b8cc-b1f974b32f13@linaro.org>
Content-Language: en-US
From: Andrew Gigena <mail@andrewgigena.dev>
In-Reply-To: <160aa94c-c726-4cfe-b8cc-b1f974b32f13@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261110_172724_184144_060E7796 
X-CRM114-Status: UNSURE (   8.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
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
X-Spam-Status: No, score=-10.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Vladimir,

> Drop csiphy_res_sm8150[], and pull this:
>
> * https://lore.kernel.org/all/20261026224957.1115370-4-vz@kernel.org/

Done in v4: csiphy_res_sm8150[] is gone and sm8150_resources.csiphy_res
is NULL, so SM8150 goes through the PHY-API path and clocks, regulators,
registers and interrupts are owned by the dedicated CSI2 PHY driver.

I folded your change into this patch instead of carrying it as a
separate commit, and credited you with

  Co-developed-by: Vladimir Zapolskiy <vz@kernel.org>
  Signed-off-by: Vladimir Zapolskiy <vz@kernel.org>

ahead of my own Signed-off-by, plus a line in the changelog saying the
fallback comes from your patch. If you would rather have it as a
separate commit, or want the attribution worded differently, tell me and
I will adjust before resending. I am not enterely sure if this is the
correct way to cherry-pick commits since this is my first kernel contribution.


Best regards,
Andrew

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
