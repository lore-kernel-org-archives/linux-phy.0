Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B99F1C433FE
	for <linux-phy@archiver.kernel.org>; Mon, 14 Nov 2022 17:12:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4fH2+dYlVehg2VtaMY7D+ltkJNqjIYjsjcTTa0I5mnk=; b=zGU3VC0mreNqjN
	Am/+W7B8d4IVZBMBI/9TiGK6wbrvU0VoRuVfHS/9Iq9C98TqtgtZSLdlHB7LozQJoHqDiZlf3IGlG
	V5ihWbBDbuRCuKkeLAeyDZ8gQNyrN758hgzOFetvWU2JkOnFE75nJR9g53xcN08Ddb6XVQP7KlEMH
	aV9Fg33FhLj5NejTI3BR1Y2UcXoOfR1HqzuDhiR9siV8yliXZ12axijz++YctZIFjs+xuI2+UH/yy
	19MgGAP+026dd9DynqNDuuIKpLD8rNAxZhx+YJdnEFM4t/R++CorZV2c4jLDDPigJKrkUx5G4dMoE
	dp2Y7US1iF87q1yE0fhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oud0w-00333D-G8; Mon, 14 Nov 2022 17:12:54 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oucx2-002z8Z-9e
	for linux-phy@lists.infradead.org; Mon, 14 Nov 2022 17:08:53 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id A71896131B;
	Mon, 14 Nov 2022 17:08:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 07EB5C433D6;
	Mon, 14 Nov 2022 17:08:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668445731;
	bh=nLP0ZNboWVONXh3vcZ+RBsQATflLw39DNNAy7jBUUuY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tysbVSveryf2eeWISCylrpUo/1kIP5i8+Ys+T7IwLJ0h7M60xDS2EBR0DMS2uBYaT
	 WMvdNsgE44bqARSBvkj0H4QCdsiC9Pu4085CBqyxd8Y6y5nMeYHJiCJSa8MEydj6Pr
	 9r0vBOxRpLHET7wbB2XDH/WNj+LR8Rejh9v5bOijlsP9Sp+r2zaKm0CXj4TXirQXBg
	 B8pH5CBDHw2fxgs0KPLHR/M0dImtozbGEHnxpAzJu2SyVM7GPDyhfsZ4TmcxLFNsk/
	 JLX4Y165Dk39Ktw7RmouUJg3ltxLemklC+vItFC4WstEJmW1FfOh3xMyJTKYmh03EZ
	 V9bRt8YMl7H4A==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1oucwU-0005RO-H9; Mon, 14 Nov 2022 18:08:19 +0100
Date: Mon, 14 Nov 2022 18:08:18 +0100
From: Johan Hovold <johan@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 02/14] dt-bindings: phy: qcom,qmp-usb3-dp: fix sc8280xp
 bindings
Message-ID: <Y3J2AjjjsybI9mKd@hovoldconsulting.com>
References: <20221111092457.10546-3-johan+linaro@kernel.org>
 <a22888cd-34cb-3453-0dc2-096da208564c@linaro.org>
 <Y3JCVzJ74YsfcDz4@hovoldconsulting.com>
 <de3a426a-03e8-ed15-a9a1-bb300e776e5f@linaro.org>
 <Y3JOO0kNnaNhnW3K@hovoldconsulting.com>
 <02725b78-04ad-8f4a-25c2-9cdaa1e37ab7@linaro.org>
 <Y3JthM1jC2vH1Kn+@hovoldconsulting.com>
 <efd412d0-7411-8b0b-4700-9e183a592048@linaro.org>
 <Y3JxZ+yFMLZkwNBi@hovoldconsulting.com>
 <8420c342-9dce-aea7-8d1e-f141e0c1ebb5@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8420c342-9dce-aea7-8d1e-f141e0c1ebb5@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221114_090852_438464_82A1097D 
X-CRM114-Status: GOOD (  27.28  )
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

On Mon, Nov 14, 2022 at 05:56:21PM +0100, Krzysztof Kozlowski wrote:
> On 14/11/2022 17:48, Johan Hovold wrote:
> > On Mon, Nov 14, 2022 at 05:39:26PM +0100, Krzysztof Kozlowski wrote:
> >> On 14/11/2022 17:32, Johan Hovold wrote:
> > 
> >>> Fair enough, I'll drop it. But there doesn't seem to be a good way to
> >>> describe the indexes currently and most bindings simply ignore to do so.
> >>>
> >>> So what is the preference then? Just leave things undocumented, listing
> >>> indexes in a free-text 'description', or adding a free-text reference to
> >>> a binding header file and using those define names in a free-text
> >>> 'description'?
> >>
> >> Either 2 or 3. Several bindings for small number of constants choose
> >> option 2.
> > 
> > Ok, we have three now, but USB4 will bump this to ten or so.
> 
> Then probably header file is the way to go.
> 
> >  
> >>> And if going with the last option, does this mean that every SoC and PHY
> >>> type needs its own header for those three clocks or so to avoid having
> >>> a common dumping ground header file where indexes will not necessarily
> >>> be 0-based and consecutive.
> >>
> >> phy-qcom-qmp-combo.c has one qcom_qmp_dp_clks_hw_get(), so why would you
> >> have many of header files?
> > 
> > We don't know what kind of clock outputs later revisions of these PHYs
> > will have. The only way to guarantee 0-based consecutive indexes appears
> > to be to use per-SoC defines (e.g. as for the GCC bindings).
> 
> Which is also fine. I don't understand still why it is a problem - even
> if you have multiple files, one for each SoC/phy. If USB4 brings here 10
> more clocks and other SoCs/phys might bring many more options, then what
> else can you do? Grow the binding file with big text-based mapping of
> IDs? It's not a viable solution. Header or headers is the only
> maintainable way for such cases.

So then we must add per-SoC (and PHY type) headers even if we can
possibly reuse defines from one platform for another as long as they
appear to be similar enough? For example, using a "SC7180_USB3_DP" infix
for the current platforms and add a new series of indexes for SC8280XP:

	QMP_SC7180_USB3_DP_USB3_PIPE			0
	QMP_SC7180_USB3_DP_DP_LINK			1
	QMP_SC7180_USB3_DP_DP_VCO_DIV			2

	QMP_SC8280XP_USB4_USB3_DP_USB3_PIPE		0
	QMP_SC8280XP_USB4_USB3_DP_DP_LINK		1
	QMP_SC8280XP_USB4_USB3_DP_DP_VCO_DIV		2
	QMP_SC8280XP_USB4_USB3_DP_USB4_PCIE_PIPE	3
	...
	QMP_SC8280XP_USB4_USB3_DP_USB4_RX1		9

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
