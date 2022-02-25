Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2634C433EF
	for <linux-phy@archiver.kernel.org>; Fri, 25 Feb 2022 20:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OF8EeJ+Ir/275+Zc8DXjZMDXzfFQLNu0GoBly2nR+rg=; b=IO6xmlNnlc+dNE
	BUYmyWu9WyQ9nAvC2lIqRPKR8z05JxnRolEbTBr37pF17WfPTxIR/UUT2GHCdrT0XI/+SLBRqIwt9
	iaezo57BjqfvdLNDf9ufx6croeCstwknWg6Z1t5ZCqhGRBaWVEVd1yHu1Nmmq/vrcHzLYiVk7dd6e
	fKcdfk6cMy7eQdKMi3sjNcNIO+w7ri6b25HRvS5USMCOpP+pPBAb6Hs5rOSv0IElKcO83OwAqgjiA
	Cvuu0N3wg6QvTJvMTShQ5JZVm7qUMdpmLJ2Kw8iXJ85++d9pDLcpND+t3HA9QJlt8XJ7MVfW0C9M2
	rz1v1Pz2B/DXgrcJDGmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNgtF-006tfS-8F; Fri, 25 Feb 2022 20:08:33 +0000
Received: from mail-oo1-f54.google.com ([209.85.161.54])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNgtB-006teK-1A
 for linux-phy@lists.infradead.org; Fri, 25 Feb 2022 20:08:31 +0000
Received: by mail-oo1-f54.google.com with SMTP id
 j7-20020a4ad6c7000000b0031c690e4123so7846669oot.11
 for <linux-phy@lists.infradead.org>; Fri, 25 Feb 2022 12:08:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=eSN9xBrzll6WZ5DtL2zb4WDB6X1vP1dIkQzJiEVk3gs=;
 b=wSmBLU6hLqg523qJoj2kscw0Y2lvY6bluDlf32IQlpFZuegRZT2P9qsryIqde3u0tL
 /vNvzIoVGUFn2f+V/c5rwy3RZ/nCyl0kyd9WTMoCyd54/O1FupXHt9b/uoW2VINGMYED
 9ruV5T+SuYiKtcd9nctdolOqdmy2jNzi4wf8H8Dsz4QfwcTU5hy/hlNqV8dHYp18fwls
 +UukD862twcoZHMyKfVoLvpTyDummZ/aIx09J58tmQw9pNSZ4ZfPCWOArB7bIFQvgIxT
 gVW3WuzJPrax0X6gQzXh5fIWfyH6cM2gsFvE7FIwdnhfTZxbJ5yMr+5jwzTzh5c9gI++
 D8MQ==
X-Gm-Message-State: AOAM532Thvtt3qa3awnRwBOmTtLuzdvupLqqrodlai6qZtoF/dmDRcnQ
 ZoTwuxpZLjJGbaBODGjNiYJWkQYloQ==
X-Google-Smtp-Source: ABdhPJz8rtS1F8qP+GJ8zMHk8V/DpQMJtqZDeBbUq+EMimoP4vbaCgTou2GcIA44VfSPZnqQT44Cew==
X-Received: by 2002:a05:6870:45aa:b0:d4:5d51:b0ac with SMTP id
 y42-20020a05687045aa00b000d45d51b0acmr2155254oao.59.1645819702787; 
 Fri, 25 Feb 2022 12:08:22 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213]) by smtp.gmail.com with ESMTPSA id
 a12-20020a9d5c8c000000b005ad51592bd8sm1600580oti.49.2022.02.25.12.08.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Feb 2022 12:08:22 -0800 (PST)
Received: (nullmailer pid 1348651 invoked by uid 1000);
 Fri, 25 Feb 2022 20:08:21 -0000
Date: Fri, 25 Feb 2022 14:08:21 -0600
From: Rob Herring <robh@kernel.org>
To: Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc: agross@kernel.org, bhupesh.linux@gmail.com,
 Bjorn Andersson <bjorn.andersson@linaro.org>, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
 devicetree@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH 2/2] dt-bindings: phy: qcom,qmp: Describe
 'vdda-max-microamp' & 'vdda-pll-max-microamp' properties
Message-ID: <Yhk3NYfTlGqBJiz7@robh.at.kernel.org>
References: <20220224123248.67073-1-bhupesh.sharma@linaro.org>
 <20220224123248.67073-2-bhupesh.sharma@linaro.org>
 <1645711159.080022.2923124.nullmailer@robh.at.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1645711159.080022.2923124.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220225_120829_082600_C09F0B44 
X-CRM114-Status: GOOD (  18.56  )
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

On Thu, Feb 24, 2022 at 07:59:19AM -0600, Rob Herring wrote:
> On Thu, 24 Feb 2022 18:02:48 +0530, Bhupesh Sharma wrote:
> > Since a few boards based on QCoM qmp phy use the
> > 'vdda-max-microamp' & 'vdda-pll-max-microamp' properties to
> > describe the ufs phy nodes, add them to the dt-bindings doc as well.
> > 
> > This fixes the following '$ make dtbs_check' warning(s):
> > 
> > sm8350-microsoft-surface-duo2.dt.yaml: phy@1d87000:
> >   'vdda-max-microamp', 'vdda-pll-max-microamp' do not match any of
> >    the regexes: '^phy@[0-9a-f]+$', 'pinctrl-[0-9]+'
> > 
> > Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
> > Cc: Vinod Koul <vkoul@kernel.org>
> > Cc: Rob Herring <robh+dt@kernel.org>
> > Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> > ---
> >  Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 8 ++++++++
> >  1 file changed, 8 insertions(+)
> > 
> 
> Running 'make dtbs_check' with the schema in this patch gives the
> following warnings. Consider if they are expected or the schema is
> incorrect. These may not be new warnings.
> 
> Note that it is not yet a requirement to have 0 warnings for dtbs_check.
> This will change in the future.
> 
> Full log is available here: https://patchwork.ozlabs.org/patch/1597137
> 
> 
> phy@1c07000: 'lanes@1c06000' does not match any of the regexes: '^phy@[0-9a-f]+$', 'pinctrl-[0-9]+'
> 	arch/arm/boot/dts/qcom-sdx55-mtp.dt.yaml
> 	arch/arm/boot/dts/qcom-sdx55-t55.dt.yaml
> 	arch/arm/boot/dts/qcom-sdx55-telit-fn980-tlb.dt.yaml
> 
> phy@1c0e000: 'lanes@1c0e200' does not match any of the regexes: '^phy@[0-9a-f]+$', 'pinctrl-[0-9]+'
> 	arch/arm64/boot/dts/qcom/sc7280-crd.dt.yaml
> 	arch/arm64/boot/dts/qcom/sc7280-herobrine.dt.yaml
> 	arch/arm64/boot/dts/qcom/sc7280-idp2.dt.yaml
> 	arch/arm64/boot/dts/qcom/sc7280-idp.dt.yaml
> 
> phy@1d87000: 'lanes@1d87400' does not match any of the regexes: '^phy@[0-9a-f]+$', 'pinctrl-[0-9]+'
> 	arch/arm64/boot/dts/qcom/sm8450-qrd.dt.yaml
> 
> phy@627000: 'vdda-phy-max-microamp', 'vddp-ref-clk-always-on', 'vddp-ref-clk-max-microamp' do not match any of the regexes: '^phy@[0-9a-f]+$', 'pinctrl-[0-9]+'
> 	arch/arm64/boot/dts/qcom/msm8996-xiaomi-gemini.dt.yaml
> 	arch/arm64/boot/dts/qcom/msm8996-xiaomi-scorpio.dt.yaml

I'm curious why these are not fixed too?

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
