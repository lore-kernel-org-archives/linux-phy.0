Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20CBBCCF2DA
	for <linux-phy@archiver.kernel.org>; Mon, 19 Oct 2026 08:51:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DbQaL/MY3IO4uF/aKN00aZz/RHkNM7mFc/ElU/6BbLY=; b=f7sL67IUb/syhg
	uudFQN4OG2Lbv24LhigUp1WGNzEnSH7XaOdY6qbNUiuFrWLmKfexPCLtAy6ViaEcnJwXrrD+BuJ0U
	K+9EITNK/vMh6HV5eYHltsnxnESxY0jVJNNEtjidGGKYTjtMQk6RmDc5dnNk0JSrFfxVuq1/qWqyo
	iut3hWLcVDI+37NQwLUdR7K1xedn/GPT+xFUuTz64t0v7Q1apNYmtYgilJVtV3sDNpicwU/mipNJb
	u9ql/4H6owxlMhEY6ugiqyAx+AuhZZVX9Ev/SOF86NlPsbzOYx+9KjofEoZAwnnCj/7WoWB7FMOer
	hIEhCSCPItLsw9qx4yMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIj5q-00000006uHr-2GlO;
	Mon, 19 Oct 2026 08:51:42 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIj5m-00000006uGC-2bXg
	for linux-phy@lists.infradead.org;
	Mon, 19 Oct 2026 08:51:41 +0000
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-6acbaec0d70so259929a12.3
        for <linux-phy@lists.infradead.org>; Mon, 19 Oct 2026 01:51:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1792399897; cv=none;
        d=google.com; s=arc-20260327;
        b=JZD+XXvTvJKg5qLiIPyOgqdn3ARLJhH3xL76Azy+koJGU3rM86euaOiToRctSEkPOh
         JoJ3WlLEVC6BECsKw3Gtpcd2Ya3XMxqbZau1GlAtxbsrnT4J3Q3UsR7qgwFsRGbptx4G
         dzzsWzud5ev8XxsDBWZynobmGxFS6UTx8RixE8TGYqX9MOOeBQH/aCQPmva2yOISg6xa
         DyA45ZwN0McRpycZLaO1rvex2XGFXu/uye2EA6DVjzUG58j5+3G6IPvb4F8hlkQ9GmVu
         L0WBm7jabKjNHiCEqpWJpIYthlh6KAiB/gcZLujIywOwag9vnX+1q0420utiE9dKZUQX
         eUQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=YZGPcgD9AFqKQnqdPo2/PO6pxJ4WnzRDZW0BsKuEGoY=;
        fh=7WfnXvR2szWGam4UW3RkQ7lFyVRktU4y/61ZK987BQ4=;
        b=nSEx/PdMeipLx4YpDEUWvRybCKTpPF2L4Tb8Q3mri3xMRuiTY44eO8aezvCsXc1h67
         ZH6BFbRsEQIjtxw+OOPcbeziSzow10CMp4zUHNMnGuv/xjvHfiqbpNypq3Dzrh2a4RIj
         EHTUR4Iu3Q6O9idq2oe5sUjJkJImsO0JdL68ew59+5VXhK16dkFU2058oRTZSBP8ps71
         oUhajmd9xvMaAqfKmEOtMt0keC6sEow07gSidE33PHpqN0kypCBGHCObNznMR981KrGL
         H8EXgqzoW/50GORoxMOypW0XDTimxdpsZ5vNQNJc5ZFGiqi8/bEw937AJMClrwhKstUq
         cRAA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792399897; x=1793004697; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=YZGPcgD9AFqKQnqdPo2/PO6pxJ4WnzRDZW0BsKuEGoY=;
        b=MIs+xPYl67x0OCK2qjAYAJ7ZI1SAMpVWt220Ux0OLkKeac1s01Q+MsUi20ga090WjE
         4YYjWNAf5esA8q4k9enb3+t2qbhBzOW/vlrFnKQXUYW/YbdVpl391MKdaHBRMy7m1yVp
         6C5Jj944Z+xTFPlGcRKg3fMuNg0dFw2N+szGHZTKqzmN/0EGnQ3h5ABUAQcff32QSZre
         HjJk8+gLBOGFlXO/CaXNaLii10kkdyT3XePPrnMaW75icy9h42GCRAmYKTboyJVmuvA7
         +xAcgblDEPTbGWiVRJyxXRXXG0JYTvkzWgE2DRXz7GU6bFAIgS5skctak98Vjj1jEArE
         PYYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792399897; x=1793004697;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=YZGPcgD9AFqKQnqdPo2/PO6pxJ4WnzRDZW0BsKuEGoY=;
        b=wEZ0XPDgM5lChl1CMwa73BSvGoGyk8Hvqo1H9At7Ade2t3DtLmFejA+odaZSDpeZNU
         TsdPtcPWHnHAyFRJv8rTOF16vsVlD1C2sV7gJZk2P4nbu72GjlU+Jk6/eIMB/1565R13
         MzysBRWP0d+nc56gFtY/5CouwgaQ3G4F1x3yqYFVDRR6FjNf1UH7EMvkSf9thxVUU+aP
         E/BaJUzt3UFrikOYRk6YdprK2VqLd5z4/s9bymfn+yODBWTEdSw9go5GrJbumulaOt0B
         ZrpxHgJNfLebc1zlHmyOxXJhjNxDGcOigybjymTIo4uTlv5PiSUDvztx723rFx77mgyC
         Anbg==
X-Forwarded-Encrypted: i=1; AKwUvBx5i9B1wwd3AEAVSm88bNJDGwetV7gDbHxhld8sW6i5nR/c0AnTJkPa8gAKvWpOLwBPGMc35hJhYxo=@lists.infradead.org
X-Gm-Message-State: AFq9FYKhxS5zUylddr7jxMa8SPFcQ70YJGNx4UuxEX6w/FkgwIKBmxpG
	aqx9md8xAhGsLwnsWnANwWPrsRCXINx0lnAw2NdmD1gQl0pp5ELyYITuf2EFcR6BYu2qLmIyxm2
	luINkwcbTAT/RGklGg6yeAJgm2lFrRA8a3DSL8FcVhw==
X-Gm-Gg: AYBFou1cLzZ5KxxELpla4B9Cj21pLN/jhnLS8Ozw//yv0n5Ka1+ynWZKajPsfCxwqXi
	rGWkmRBqabPHRNUyB5Ky61sr2gN+ydIDD9aIuRYyGCup0qGZtVx+7SewWeLr0Up7o8ckgVBiWUW
	NKSkwi67z1y6uorJoiiekD7oYri+RVx8KUlenXQPKZlSuNXcwx1B9V7T3EEZe1RtatCDzX/6JBn
	IiP+GMaNTWfigV1le11tPxl0mMwgb/hI7i9QYcefwS5towPLaWGAZioBplBCTevC7dxslBbVlNV
	7RXn2Xy/7Y8gxHU3kUxQWwerZWOvt24unHqDlHbSnWmPMXdWaT93lQ==
X-Received: by 2002:aa7:cd16:0:b0:6b1:a509:8a2 with SMTP id
 4fb4d7f45d1cf-6b3a8153c70mr3342735a12.2.1792399896018; Mon, 19 Oct 2026
 01:51:36 -0700 (PDT)
MIME-Version: 1.0
References: <20261016-dcphy-rx-v1-v5-0-e63b49eabe2d@gmail.com>
 <20261016-dcphy-rx-v1-v5-2-e63b49eabe2d@gmail.com> <f337f41f-2ada-4958-b0f9-379e78e96a3d@linaro.org>
In-Reply-To: <f337f41f-2ada-4958-b0f9-379e78e96a3d@linaro.org>
From: =?UTF-8?B?5qWK5pm65oiQ?= <jason98166@gmail.com>
Date: Mon, 19 Oct 2026 16:51:23 +0800
X-Gm-Features: AclHuK_WAI6-16edIPrAFWjpLBUVloumDqFsNS60JoizZzHWBKP6V-AdFc5lP64
Message-ID: <CAPwA33KFY0avDH-F_5w01vqWu=RK=nXZ=za-Do5Zm3S8CPtGgA@mail.gmail.com>
Subject: Re: [PATCH v5 2/8] dt-bindings: phy: rockchip,rk3588-mipi-dcphy: Add
 a cell to select TX or RX
To: "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Guochun Huang <hero.huang@rock-chips.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Michael Riesch <michael.riesch@collabora.com>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261019_015140_114624_D2AD1412 
X-CRM114-Status: GOOD (  10.76  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Hi Bryan,

> Two consumers use them - which them ? Two consumers use the receivers at
> the same time ?

> Its minor but instead of "them" define what the them is.
> The second cell, if present
>
> -> you want to make clear it is optional.

I will check my description and make sure there is nothing misleading.

> Not really related to this patch but how do you envision that
> requirement being enforced, per driver ?

The transmitter and the receiver of this PHY share the bias block, and
the TRM explicitly does not allow them to run in different modes. Since
this is part of this PHY's spec, the check is done in this driver's
xlate for now.

Best regards
Jason

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
