Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 542EFC54EBD
	for <linux-phy@archiver.kernel.org>; Sun,  8 Jan 2023 18:12:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H/bscst2o0RRJOUr7u1sYphBb7Sf4Bd7+Ru+rexx0B0=; b=afzxtKuVHQaZvK
	gmpZ0zWT1muIZQZFB4Vwt1N5xj6Bn7qOX9cVc8WyPcIqzD5oQ6g14PY6Y8zKeKHQJ5LBsn3qN1+wV
	cKpDg1Q0fRyTN0fHdSvFXG5oc9dBlf1lq5jggeAJ2mMS+pV8ijpUQgrmr0FnOZDPT1PQIEZaxzQTP
	GTUSVpPhxOZA/LfMYJAhgjWCbEFuf69WhgzsS3S7YNJzVIjfJOlHbXYbO1RKlmUXbx6ak+APQMyWN
	NaGpSUwAOjd7MuLTXoE/zSj1A37D2d+VGDYmgmYgMiqw3PAG78dBYXSqrD1ONL5gXGtF8cGY4dO1C
	PlXAdSbNSGkEwG9fla+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEa9e-00EzI7-9R; Sun, 08 Jan 2023 18:12:23 +0000
Received: from mail-il1-f180.google.com ([209.85.166.180])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEa9Z-00EzEh-J4
	for linux-phy@lists.infradead.org; Sun, 08 Jan 2023 18:12:19 +0000
Received: by mail-il1-f180.google.com with SMTP id a9so3215327ilp.6
        for <linux-phy@lists.infradead.org>; Sun, 08 Jan 2023 10:12:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zX14fWS4r2WLjwMZynaPJpioCPRRdQEkuCm2JEOBH9E=;
        b=Tjb5JMoJrrHuU7mQv/zYzEOKQN7Rgwqgp3T2TicwZP/mHVfG3sKMecHeyxfNEapMwT
         zn1xgq5iqh6BqUJ0wNoctjFbquCQJgMCqMR/7te7o/+0vij8Xaa2J0i6hAVU4ZbQvLKy
         dYJAZ+xJ/BvqjM21zPQD8inry5D+rSm9lvVJ+8sgFwu96zwxy2fwYQwi50s0iyxiXM6g
         84YogK5xOvOSseA5ageD91s/qv0SGty5r9Gnhj60meIgLQEggX0h1wtJc9FKloeKRXW/
         q2qXHKZdmvk2jKRIPsV90imPikR33AzZWVmfA5yKy7opH5SMGO91TAp2WE1pF6nvcjxd
         poxg==
X-Gm-Message-State: AFqh2kou7EQmNW5bedp/34GATaJRTtSRRDT0DIiPUzh/JPsVIFGAn5tb
	oOE8hzpeCfsL66wz7PnppQ==
X-Google-Smtp-Source: AMrXdXuhKSgOVXHDqYXmylCy1SIcxR4tYXYF9CrnA4rt94dPFYzyVPhjpLTM/Ugnm8hQmWZleK1Zaw==
X-Received: by 2002:a92:d846:0:b0:30c:63d5:a300 with SMTP id h6-20020a92d846000000b0030c63d5a300mr13653721ilq.21.1673201535148;
        Sun, 08 Jan 2023 10:12:15 -0800 (PST)
Received: from robh_at_kernel.org ([2605:ef80:8069:516a:f2b0:691e:4315:7c0f])
        by smtp.gmail.com with ESMTPSA id z17-20020a027a51000000b0039e296bf18esm2130982jad.167.2023.01.08.10.12.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Jan 2023 10:12:14 -0800 (PST)
Received: (nullmailer pid 156294 invoked by uid 1000);
	Sun, 08 Jan 2023 18:12:12 -0000
Date: Sun, 8 Jan 2023 12:12:12 -0600
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, Andy Gross <agross@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-phy@lists.infradead.org, Kishon Vijay Abraham I <kishon@kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: phy: qcom,sc7180-qmp-usb3-dp-phy:
 correct SC7280 compatibles
Message-ID: <167320153134.156239.2836472885331360656.robh@kernel.org>
References: <20221225115944.55425-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221225115944.55425-1-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230108_101217_883328_6115A4E2 
X-CRM114-Status: UNSURE (   8.95  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


On Sun, 25 Dec 2022 12:59:43 +0100, Krzysztof Kozlowski wrote:
> USB3 DP PHY on SC7280 is used with SM8250 fallback:
> 
>   sc7280-herobrine-evoker.dtb: phy-wrapper@88e9000: compatible: ['qcom,sc7280-qmp-usb3-dp-phy', 'qcom,sm8250-qmp-usb3-dp-phy'] is too long
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  .../phy/qcom,sc7180-qmp-usb3-dp-phy.yaml        | 17 +++++++++++------
>  1 file changed, 11 insertions(+), 6 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
