Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A782C4167B
	for <linux-phy@archiver.kernel.org>; Tue, 14 Nov 2023 20:59:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u4ZyQBsX6SUDXirj4je/bVo9K0gIY9fZMf42QxRfgZ4=; b=TiE3YEJLAsoJQs
	olCa5RxSpK1or6+WBnnKElJiePcrWEATv1YBFRYTf23p3LFpPCsVtKoKAnPaV1b4RaqrXh9YL3yER
	B3j/jpnG7VRqZlbT6HQS+J+mbG5Xy+cDfYGgLFsP1GUAUxD/Ya/Q/lAvcaHj7UFC2FpkgezwAYci3
	NFCihTgYHrpnf/hsiifzT7SD7SsSJylLwrqjPr7RZzM9HNvfUcDeTo04iJURKk5IPjxnwQXtOtQKt
	1VlRSNi0UpcYEw5q0Tyyj5ml1IHTEtgExiY71C5spAV0x+OkaXEqVcGOx5tBG8Sre3RQlrAmvJ+4v
	ZnLIlIl2XE0hi4HUt8mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r30VV-00GnO3-2L;
	Tue, 14 Nov 2023 20:59:37 +0000
Received: from mail-oo1-f45.google.com ([209.85.161.45])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r30VS-00GnNQ-2f
	for linux-phy@lists.infradead.org;
	Tue, 14 Nov 2023 20:59:36 +0000
Received: by mail-oo1-f45.google.com with SMTP id 006d021491bc7-5872b8323faso3424047eaf.1
        for <linux-phy@lists.infradead.org>; Tue, 14 Nov 2023 12:59:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699995572; x=1700600372;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zrcyizvCo/KG3mPdKDm6DsKCToJb9p4EVunNF50SWBQ=;
        b=Xv1gTcAAT+vvuN6SoJqqipPNEKFg68U+swGrXEt1HCy1Am9T+NQxYIKph2nEkl5rEo
         GcGCSUsuowvkdA1YqHhrqkGGH9EFTz+uylmTdon1G1hxV/a7W8TDYuD2YELlYKKr8PRL
         Bh/cJK8kqvrCrn2SejGFFEEY59qegDJ3XUG74bxeSyOsTiKdgy5/bvIibyNNDCqdhGOU
         GWWv9dO6BAmpRzb+rCmSF8vWIwwEajgvhhdef3INuwaoIbtXU0/vq8/Kqj1l/ADm16ia
         JYzCrCfE186EfPfvl6U9IpAXuHlP9DG+P1MpMGGCTjGoLsF/85XVCuWsmwAlSm6zIxUL
         SfsQ==
X-Gm-Message-State: AOJu0YyqDjYfCoL3HvJGskqv7zmf43Yq2vkbZ+CurpQ0l9022TmAqtFi
	14ReHKm5lTnGw96Dh5/QVw==
X-Google-Smtp-Source: AGHT+IEels1WRec899esP8NHFJ5xegrQyq/vtE4CnTETG7fpYloXxez8M7OEBWem9xAHHkSub6HW/w==
X-Received: by 2002:a4a:d287:0:b0:581:ea96:f7f3 with SMTP id h7-20020a4ad287000000b00581ea96f7f3mr11385607oos.7.1699995572267;
        Tue, 14 Nov 2023 12:59:32 -0800 (PST)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id 123-20020a4a0081000000b00584078d1e17sm400905ooh.45.2023.11.14.12.59.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Nov 2023 12:59:31 -0800 (PST)
Received: (nullmailer pid 501790 invoked by uid 1000);
	Tue, 14 Nov 2023 20:59:30 -0000
Date: Tue, 14 Nov 2023 14:59:30 -0600
From: Rob Herring <robh@kernel.org>
To: Elliot Berman <quic_eberman@quicinc.com>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, linux-phy@lists.infradead.org, Andy Gross <agross@kernel.org>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, devicetree@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: phy: Document sm8450 pcie phys as having 4
 clocks
Message-ID: <169999556983.501734.2621240369392640952.robh@kernel.org>
References: <20231103230339.966792-1-quic_eberman@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231103230339.966792-1-quic_eberman@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231114_125934_865902_7E4D362B 
X-CRM114-Status: GOOD (  11.65  )
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


On Fri, 03 Nov 2023 16:03:38 -0700, Elliot Berman wrote:
> I noticed while running make dtbs_check that
> qcom,sm8450-qmp-gen3x1-pcie-phy and qcom,sm8450-qmp-gen4x2-pcie-phy have
> 4 clocks, not 5. There was also a typo for the 8450 bindings:
> s/gen3x2/gen4x2/.
> 
> Update the bindings to reflect the correct number of required clocks.
> 
> Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Fixes: 505fb2541678 ("dt-bindings: phy: migrate QMP PCIe PHY bindings to qcom,sc8280xp-qmp-pcie-phy.yaml")
> Signed-off-by: Elliot Berman <quic_eberman@quicinc.com>
> ---
>  .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml | 16 ++++++++++++++--
>  1 file changed, 14 insertions(+), 2 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
