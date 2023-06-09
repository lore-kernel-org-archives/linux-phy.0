Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 773EFC7EE29
	for <linux-phy@archiver.kernel.org>; Fri,  9 Jun 2023 15:37:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nh1FoDBvWN/6H3w9XoDwlSgHilV04Pu6te9kYC1D9Os=; b=aB68kzG6U7DxTi
	24ODNw+0WfJyQphJ2Vv96RBUxhjxaQeN3xCYbuMCVpmVaCdGDtWEwbS0IgE964aHDtgA8K4OKzWyS
	GQEa6Ch3TW+avQ7aCHKjEciR5xg8LskNfyPcZo1cWYQv36N7j/C/7ZdG2aKw27jbjwyfC2HewNjEf
	Tju50w1d/yrw9VapqIKyIretb1X604lSXj43X1VG2rhlDQLfR98elxcVHfsjHQ/fW26Wo6F/STdzx
	byVHvKbCHqjHxh94ihrYKTv8hdgFByZGkTvpjdtItYqHQLQ2az9fUSfhHF5po2Qoch+weHo7neE1X
	QWsRLALrP+7S4tDB6UUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q7eBH-00DTXG-0M;
	Fri, 09 Jun 2023 15:37:39 +0000
Received: from mail-io1-f50.google.com ([209.85.166.50])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q7eBE-00DTWH-2p
	for linux-phy@lists.infradead.org;
	Fri, 09 Jun 2023 15:37:37 +0000
Received: by mail-io1-f50.google.com with SMTP id ca18e2360f4ac-76c64da0e46so81840039f.0
        for <linux-phy@lists.infradead.org>; Fri, 09 Jun 2023 08:37:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686325054; x=1688917054;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6oTjKIZ7azTHgw2pBNs7zKCt3g58q7A8ytPzbYsnX9c=;
        b=bcmFBa4yrP93EtwceV1oYrZTYFjCW6jJaFaDE9hdMP4XNUF3rs4Pt2a495cX2UQuPX
         TwbyxngmgnKpdvZShp/UXUy+HzhCksPJpOc6i1P+vJdl7nZP6Yr4v6u08ZkNGWPwmyh3
         M9KiUcEs6RUh5t6x+Zaa3Avarsd3wLh76Rq78KKQQjh/58hcRugAq/+PX5kL8nYuq2dV
         AnR8rFRUD8ZmsYbi4foLXPmhQ7r9d40Ub3XKmopciPXgYp7JgJ+8CyBug3ACFyz7DQ9e
         aLjZ8Hr7RtrMen75JTDAl+BXjIjwtZRr8kXItCCVSdZoJRmJeTgud28cEDpLkQoCsgIy
         ikUw==
X-Gm-Message-State: AC+VfDzHVMcI6ilL/pGOmkJG/AXrCAloExkLC7Uwj3S6cF2GubKEUC3B
	2xHnbjdZmt6fFSgXV9d58RwsmY9AZw==
X-Google-Smtp-Source: ACHHUZ7sQGgjnwd79XuSKsjkhH3R+CX/AXWDT5rsE/7aYgV6ugwqWjYzOSDIVHLCmJcdsuPA2SU50w==
X-Received: by 2002:a6b:6119:0:b0:76f:f54d:36ff with SMTP id v25-20020a6b6119000000b0076ff54d36ffmr1935105iob.11.1686325054238;
        Fri, 09 Jun 2023 08:37:34 -0700 (PDT)
Received: from robh_at_kernel.org ([64.188.179.250])
        by smtp.gmail.com with ESMTPSA id h20-20020a056638063400b0041f57eeedc2sm1056437jar.16.2023.06.09.08.37.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jun 2023 08:37:33 -0700 (PDT)
Received: (nullmailer pid 1104746 invoked by uid 1000);
	Fri, 09 Jun 2023 15:37:31 -0000
Date: Fri, 9 Jun 2023 09:37:31 -0600
From: Rob Herring <robh@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>, linux-arm-msm@vger.kernel.org, Kishon Vijay Abraham I <kishon@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, devicetree@vger.kernel.org, Andy Gross <agross@kernel.org>, Vinod Koul <vkoul@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-phy@lists.infradead.org, Bjorn Andersson <andersson@kernel.org>
Subject: Re: [PATCH v3 4/5] dt-bindings: phy: qcom,msm8996-qmp-usb3-phy: drop
 legacy bindings
Message-ID: <168632505100.1104691.4662082864689299098.robh@kernel.org>
References: <20230531023415.1209301-1-dmitry.baryshkov@linaro.org>
 <20230531023415.1209301-5-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230531023415.1209301-5-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230609_083736_915968_79D7E4A5 
X-CRM114-Status: UNSURE (   9.37  )
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


On Wed, 31 May 2023 05:34:14 +0300, Dmitry Baryshkov wrote:
> The qcom,msm8996-qmp-usb3-phy.yaml defines bindings for several PHYs
> which predate USB -> USB+DP migration. Now as sm8150 has been migrated,
> drop the legacy bindings completely. No device trees use them anymore.
> Newer USB+DP bindings should use combo bindings from the beginning.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  .../phy/qcom,msm8996-qmp-usb3-phy.yaml        | 80 -------------------
>  1 file changed, 80 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
