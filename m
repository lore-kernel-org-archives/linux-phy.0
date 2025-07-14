Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3CF19C83F1B
	for <linux-phy@archiver.kernel.org>; Mon, 14 Jul 2025 15:36:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yth0Jp9mBb7vfISFsCdDBoQmC2dZKZk/yjTqeRqivbE=; b=mhvMk+4Kt+C2lZ
	2wqvLVw94Rm4MHiwBh3lVCO3N6qLt/hLxDzub8dROiWpuZiDAy4aBFweOqqw/7jluYgtN6+tqKyTz
	tbny+XQ6h7wjdbAJtFPVcYyHK8wxJONTMmTW6BpuoxxfrfxHCkgGhpTlmCfXopnuF+kIRv1BGeimo
	iKhzCf7jdqnO/YAKxzCjHbaZq0bVbLh03wOwMOw/b/7dxZzh+0wX0kNn2Zm61YSPi6Bj+jZ3LdOD6
	5lhg77zhPKetFsGZjoyvyHdHuOJBfZxcamRBSZDsZNEKLAB/WacPWIwA/A632LXDTxyeA47wqj46b
	IP9HXbJtSX81x2bUiCfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubLDv-00000002hVx-3sJH;
	Mon, 14 Jul 2025 15:36:11 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubKNr-00000002Vek-2pGD
	for linux-phy@lists.infradead.org;
	Mon, 14 Jul 2025 14:42:24 +0000
Received: by mail-wr1-x443.google.com with SMTP id ffacd0b85a97d-3a4f72cba73so3528237f8f.1
        for <linux-phy@lists.infradead.org>; Mon, 14 Jul 2025 07:42:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752504142; x=1753108942; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YgT/ZO8DO6Wf1bRdrDifcHYIjUyKTX9Eo/tSV9XIcEY=;
        b=JvdHcOM04rzFSCyOwFwmWsaRNfsO7NmTVcPjKpMbZtC0/shCc6d5Stx4VxWHz9w2Yz
         zeoLbEkJpA+5H+44QNbvlZby89+OlqvPwvo1MZTAqozGZA6rSM+7/yVsg2zGYzLd0F8a
         OY7h7a1Ev1gqeuVy9WPWQ38l7ER7Vh6JMFPrc+L0CegFctUtqPbeadb0MXBG6bBGgnsG
         RUAgWm1pBLtY7bamw2BdBTn9dq28VLU60c3ghlNnie+BRWPGUjHFaGFz1ClpK/i8I1Ok
         bbIfjR0mnJ/50a+f4qIsFSuutaHl7BQsK6KwUe39tHDbb/v5MS15qia7OEtjH2rLelF6
         WJeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752504142; x=1753108942;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YgT/ZO8DO6Wf1bRdrDifcHYIjUyKTX9Eo/tSV9XIcEY=;
        b=vnlchRTJyN/75LMSo4H6IzAjY/2ynE2JVn+vL2bdla71P89qBRmS7JzbW98hw3D0rJ
         4s2+uGmc1V2b9IPNhA0AUpaIv5o3LlpnWsvGcheXVH/RZG6m15+Qt+KiEp2fxp9Swiex
         3G+Pn26o4DGL30Qd8k2UE/KNqD3zOE3kJXAdp+NdVIXj8lU+SDz0EMPa/k+e8YVPaViL
         xKmg2LD5BSrJXt7/FC36MJP3KzNrxvOLKMULYgRkjlLfl1jgaTqPS5D/cUWlMK4yKCVQ
         SKR2ES3LTL5x80uzGt7uhFJQyxQnfRHD+XmDP/AOLq7UPQptBlWzOHAfgrzcNTzbw9qf
         FBsw==
X-Forwarded-Encrypted: i=1; AJvYcCW2fuUE3UuOXYzM66wh1JeOsNr6yG5rWbL9SQfomGBrpZlrs7SLhAApPRtiJaNEPjU4qYGAAcTa1c4=@lists.infradead.org
X-Gm-Message-State: AOJu0YzrmZyGX8UvTpSYMGido6pJkkGg0n2MXyEpTgG2hopkDRFiwDGN
	InZzHNPwgPtzh4ik53WKlhr/ZyvoRGMN2cH97VqoqFvMudMy93OA0xyERJJrsaFbO4jQbjhtEvl
	XDOoBuhZq0dbP
X-Gm-Gg: ASbGncvNnCnBypKHdxkbgUBIBiQadvqsfm3SKdgzPgZlqSPZdCtCuzNoyx90Hbmlm/g
	N8lmkerbWi0l70cOzTteXav6ee7V+eS/6+pQdw18jNGiN367LwMpGhCiz/VSpDeglyqLems7B3P
	Hz+xLbEyugKHA4fW1WRW5dKfr510xBEnUDLVHn6jEvu4yzP7rY71pO1P9UO5MCzDoO5kH3eKYTw
	X5t56vWlsMOzGP2ywX4OWrAqDy3aAhigAutMRLz7st+5JKdk86T6lF9wJXN4oneToFVzXXjGGgA
	kKsIaVEzNt6fOi7SwFPDUoUlC21ffUtpOYKysW+oejQX7+zqk5Sz5scH4Si3n3K6uREOqXDKKbw
	+/ndxEwJ7HvmY0Vr4KLie/HcNJLVCq6rCOpqH2bdPtd/EfCNdtcb4bM2V9BA+4SI=
X-Google-Smtp-Source: AGHT+IEi60GCx6StklZNLN6fInXr5r58gDpnVQSjnfRk5TaJycuEkJOCyklDv2cd+DxYgwPBiYqnHQ==
X-Received: by 2002:a05:6000:240d:b0:3a5:6860:f47f with SMTP id ffacd0b85a97d-3b5f1c67c67mr12717295f8f.6.1752504141614;
        Mon, 14 Jul 2025 07:42:21 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b5e8e26ee3sm12845397f8f.96.2025.07.14.07.42.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Jul 2025 07:42:21 -0700 (PDT)
Message-ID: <01080f5f-f3e6-4989-ac84-766c030dda35@linaro.org>
Date: Mon, 14 Jul 2025 15:42:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: phy: qcom: Add MIPI CSI2 C-PHY/DPHY
 Combo schema
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Bryan O'Donoghue <bod@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250710-x1e-csi2-phy-v1-0-74acbb5b162b@linaro.org>
 <20250710-x1e-csi2-phy-v1-1-74acbb5b162b@linaro.org>
 <8ed5eeee-78a2-4b26-989f-03676a9e5da7@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <8ed5eeee-78a2-4b26-989f-03676a9e5da7@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250714_074223_720446_2AA006A3 
X-CRM114-Status: UNSURE (   6.32  )
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

On 14/07/2025 15:13, Vladimir Zapolskiy wrote:
> 
> There is no ports at all, which makes the device tree node unusable,
> since you can not provide a way to connect any sensors to the phy.

data-ports should go from sensor to the consumer of the data camss/csid 
not to the PHY.

Documentation/devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml
Documentation/devicetree/bindings/phy/mediatek,mt8365-csi-rx.yaml

https://lore.kernel.org/linux-media/20240220-rk3568-vicap-v9-12-ace1e5cc4a82@collabora.com/

---
bod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
