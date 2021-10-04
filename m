Return-Path: <SRS0=CgOe=OY=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ED3EDC433EF
	for <linux-phy@archiver.kernel.org>; Mon,  4 Oct 2021 18:24:22 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B1017613B5
	for <linux-phy@archiver.kernel.org>; Mon,  4 Oct 2021 18:24:22 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org B1017613B5
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VBlSihkJsjkmOv/LuB3mo6zKU+apv80BojLvdbE0aIk=; b=y0EMwJf1qaiOlV
	9QXYUpMmlwAzwMrCLVpdtKuU23TOK1dndpnR3vX1oeROx6HanvVTX4nOsBEsEEWt0Qi/sj49kmTkn
	tbYrrFKWvt8INtdyV619XmABn+vptoUgNSa6VfK7ly+Ff/H2umZ8IWZFY4TzBvrgOnwkspw0mnQJg
	jVpeky2ErU/xo4w4wM8c6MYpLSz043vWOzb4kHhySiqEtToP1Xan4HBb8zQ5BfwkemsRl8tDGhLGO
	jLqEf3Scx4UkSWAmYjHbgInCvYqV980Les+/NV5AYOtJxc5Pg5axB7TcfIlhTDIBdFquOB8tgqMnl
	bQRrCYQ9wwWe7iojowkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mXSdS-007epk-8L; Mon, 04 Oct 2021 18:24:22 +0000
Received: from mail-ot1-f47.google.com ([209.85.210.47])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mXSdQ-007eoo-HE
 for linux-phy@lists.infradead.org; Mon, 04 Oct 2021 18:24:21 +0000
Received: by mail-ot1-f47.google.com with SMTP id
 c6-20020a9d2786000000b005471981d559so22720376otb.5
 for <linux-phy@lists.infradead.org>; Mon, 04 Oct 2021 11:24:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=I8C6omRBM7w+zawURpweOZdbR8ZsGh4yPfXespsj7Mw=;
 b=Cj9jwfteJ0voCeUP4DNsWTd1LE2s4lhB+z33L1Pmzy1uyOS927pFcRuByHyNiXHOHO
 F37kGuNiRxZaHaGUqbdHv/6c9WfZeDSeMHEVl22VpyJm1oASEi4fSG9vIywo1XS30rKO
 76pzCtf1odzJ4vFndWynQhqTOC0EwBr9f+A6sHuCfk1NoHnxxUXvqG8NuoBvqCGoXv5S
 W4o7LYnhDKWPiCmwwHlwCMxAuAeR9iG/gGN8O76f5uv23EpCvPnNeY2/Gk+ChhcZZ0OE
 9g/QM9Yi0w2hxP6rlwGV8sDof2KbvsqP2LCvt62PLUW+MDSnfhEObU77t1GR2hlszZ/R
 3FZQ==
X-Gm-Message-State: AOAM530i/5uIEB8tibK+ISHd8+2UzwhLIHERvJyylmAALsCwnY8AddP9
 da/fa4ZiEWH56zLjECRNgwmVpZbvFw==
X-Google-Smtp-Source: ABdhPJyz3iyi8pdNozO1buCxQq0lKE7CZUj/lBglIAfSRb7shKh475ahJOdyldBMSKiA2gfK+3ymaw==
X-Received: by 2002:a9d:a47:: with SMTP id 65mr10736490otg.133.1633371859172; 
 Mon, 04 Oct 2021 11:24:19 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id k15sm2993763otp.68.2021.10.04.11.24.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 Oct 2021 11:24:18 -0700 (PDT)
Received: (nullmailer pid 1605087 invoked by uid 1000);
 Mon, 04 Oct 2021 18:24:17 -0000
Date: Mon, 4 Oct 2021 13:24:17 -0500
From: Rob Herring <robh@kernel.org>
To: Shawn Guo <shawn.guo@linaro.org>
Cc: Jami Kettunen <jamipkettunen@gmail.com>,
 Jeffrey Hugo <jeffrey.l.hugo@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 Konrad Dybcio <konrad.dybcio@somainline.org>, linux-phy@lists.infradead.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>, linux-kernel@vger.kernel.org,
 Vinod Koul <vkoul@kernel.org>
Subject: Re: [PATCH v2 1/3] dt-bindings: phy: qcom,qusb2: Add missing
 vdd-supply
Message-ID: <YVtG0Ykkfy3/Am3J@robh.at.kernel.org>
References: <20210928022002.26286-1-shawn.guo@linaro.org>
 <20210928022002.26286-2-shawn.guo@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210928022002.26286-2-shawn.guo@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211004_112420_599208_FF5E4854 
X-CRM114-Status: UNSURE (   8.58  )
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

On Tue, 28 Sep 2021 10:20:00 +0800, Shawn Guo wrote:
> Besides vdda-pll and vdda-phy-dpdm, vdd-supply is a required supply for
> PHY digital circuit operation.  Add it for correctness and completeness.
> 
> Signed-off-by: Shawn Guo <shawn.guo@linaro.org>
> ---
>  Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
