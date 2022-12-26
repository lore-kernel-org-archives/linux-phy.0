Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E672C3DA79
	for <linux-phy@archiver.kernel.org>; Mon, 26 Dec 2022 22:36:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yVvq0JbQiQjFxHuPM60PhFaPuFBg1FjOgcEyGk91p4s=; b=PfacQFPg3hA1/p
	AADIkTs+KhTeBYaI6iyKB3KQeCAz8q7NwZh5UXeX2lYHEeUfCr4WEAApZ1UgRpfmEs67ByXyImEHb
	KeKA6hEzx1aNuKVnb1WoQtc+f88q5N2XO1hKJ9PZg5PfMoNkN3ai0FevcxuRq88GNtdD7RO8D6QXl
	MdrtTGZg2oxAJ2CU42jq14JIS+8S+uX3PZCFdnYDkCZY9SWqNAMF9u6nx8b1bzavLKx8WshBfwlyU
	KZI89ifkK48vea9Zf/JsOwtfaXOrGwAeD8iKQx59gZ7NpzvXIzjBbdwKpOlrGiq+wDUtgmIzA0Ob0
	Y834F2s4Kdm865Z5s35Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p9w4n-007vfc-30; Mon, 26 Dec 2022 22:36:09 +0000
Received: from mail-ot1-f54.google.com ([209.85.210.54])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p9w4O-007vWJ-V6
	for linux-phy@lists.infradead.org; Mon, 26 Dec 2022 22:35:46 +0000
Received: by mail-ot1-f54.google.com with SMTP id v15-20020a9d69cf000000b006709b5a534aso7283982oto.11
        for <linux-phy@lists.infradead.org>; Mon, 26 Dec 2022 14:35:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/FIVtgOfoetx2+iKjQWRO7oUwO0rmk0bglLRwll9VtM=;
        b=5f3rAL/KRnwunEZGlYdoc6biO094bfGAH2tHowyHyrBryY028Ndz5Mn6BKFjSQ793N
         V2EJPAjCRBQuaeVSaLTWQmp+CHMp5qykspj6/QRZ91NaI1fUtb61ZjmF3ijgd2pRXKwU
         qIst9dTdxr79gVhspe2Rysxzhc3ffrPBzrnq87a/LOrtaYxYGu0atnrTwkvnq+S+hb18
         Tk+cuOGGICqB9AMeNPJPpBEKpBzzHw5IX88QF7g/d9I6qRkZkNt7Zcez8vqmTNc7V95Y
         4fK57qqdYoeTUF1m6W1hcjXiNiDOrwoyDnFhqUzE2a1dKe9tOeXP7oKBVYkAvWl7XfZl
         Tjfg==
X-Gm-Message-State: AFqh2kqvbrK0IhDtw2RUm1trbp70836Bua9KKT6jnzn5MOUwUMCiunWT
	rPps4z7KrWvHvnvhprQGWA==
X-Google-Smtp-Source: AMrXdXvW8LHvAfj4KWoIrHhR3c7GcbuIfhPNCrI4jgr57c45UOhD9Gt6Ew/A0Z9zVBuKEFXogiBVkA==
X-Received: by 2002:a9d:7a86:0:b0:677:9d4e:14a5 with SMTP id l6-20020a9d7a86000000b006779d4e14a5mr10384764otn.35.1672094141970;
        Mon, 26 Dec 2022 14:35:41 -0800 (PST)
Received: from robh_at_kernel.org ([2605:ef80:80e8:2792:eb0e:539f:f657:547b])
        by smtp.gmail.com with ESMTPSA id e21-20020a9d0195000000b00670523bf1cfsm5967666ote.47.2022.12.26.14.35.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Dec 2022 14:35:41 -0800 (PST)
Received: (nullmailer pid 72471 invoked by uid 1000);
	Mon, 26 Dec 2022 21:57:57 -0000
Date: Mon, 26 Dec 2022 15:57:57 -0600
From: Rob Herring <robh@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>, Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>, linux-phy@lists.infradead.org, Konrad Dybcio <konrad.dybcio@linaro.org>, linux-arm-msm@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>, devicetree@vger.kernel.org, Andy Gross <agross@kernel.org>, Vinod Koul <vkoul@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Subject: Re: [PATCH v2 1/3] dt-bindings: phy: qcom,pcie2-phy: convert to YAML
 format
Message-ID: <167209187655.72399.4038954760167968816.robh@kernel.org>
References: <20221226031059.2563165-1-dmitry.baryshkov@linaro.org>
 <20221226031059.2563165-2-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221226031059.2563165-2-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221226_143545_017285_65A260BF 
X-CRM114-Status: GOOD (  10.45  )
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


On Mon, 26 Dec 2022 05:10:57 +0200, Dmitry Baryshkov wrote:
> Convert the bindings for the Qualcomm PCIe2 PHY into the YAML format
> from the text description.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  .../bindings/phy/qcom,pcie2-phy.yaml          | 87 +++++++++++++++++++
>  .../bindings/phy/qcom-pcie2-phy.txt           | 42 ---------
>  2 files changed, 87 insertions(+), 42 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/phy/qcom,pcie2-phy.yaml
>  delete mode 100644 Documentation/devicetree/bindings/phy/qcom-pcie2-phy.txt
> 

Reviewed-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
