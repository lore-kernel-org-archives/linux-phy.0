Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 132D5C04A6A
	for <linux-phy@archiver.kernel.org>; Thu, 10 Aug 2023 20:51:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rIRsu8Lt6ICAGaKc3iwf23XtB7OzIyYLZwVpd2mIjaA=; b=KOjorY4qYdlOz+
	+fjdGgmPtUzpX0ty7TFKmZQOBSAioKylQ7eFaZKqtSkof3wPmQU8VVpNWCscHg8F7NVMz3gBnv5f+
	6jDWEJZV+POQpNxigcZoNHO8fOJl8JxjVWGWVb+sqMNDhPE7QW53uqUqP0GgLiKS9do1l8C2OfxU3
	lAswle3Zcdhyd5JONZhNESXWaia6q/HABnQ5tr6yuqSD+NaLm+VSEvLn6cQvaDYh8BbjR8J7Qui9k
	2baytZHY2+cbnFg01peIkvxzQ4TH1WwBSeR2quAwqS6a6Vk/REELSi/x+pi62fDC4+S9VUKEtG0zj
	8Fw6Ed6ai0oAOub2yX4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qUCdA-008h5R-26;
	Thu, 10 Aug 2023 20:51:40 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qUCd7-008h4H-14;
	Thu, 10 Aug 2023 20:51:38 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id ADBD1661C1;
	Thu, 10 Aug 2023 20:51:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1F93AC433C8;
	Thu, 10 Aug 2023 20:51:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691700696;
	bh=uc4/S/7TCcbiz3P0S21vusgTyPBdVSAtY0wrKfV+NU4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XH9SRp89dPOffEfPah0TaR37jsZy1zBWGbXRJ6Rv+HDnKeFrlNpUkFRve+ba25i63
	 4tRVK6D36VmYTm5NKUOp2ChFdHpPWQCKEvHq1ozxaJn4n7JZpB0WJHXLWEPo6USPFJ
	 lGd3kggEq7JWiiiNvC8hUuiVvImck5guQctjREbzvda3JpPJoV9Tshm/uuWTzKWBMi
	 SfIJvNpTvjD1diEeye20FfpuiZrlhO3iFJAm2iQzzRlaHBt4dhzy08GUhqDvvMNH9N
	 WZuJ0TOmquSmZI9hjgZwnz3Er5+skOtn5wbmm+L1g2SPH6bYdSrgNlvgTuza3nx0d5
	 TqvmF8Gg/0Byw==
Received: (nullmailer pid 1155354 invoked by uid 1000);
	Thu, 10 Aug 2023 20:51:32 -0000
Date: Thu, 10 Aug 2023 14:51:32 -0600
From: Rob Herring <robh@kernel.org>
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: krzysztof.kozlowski+dt@linaro.org, peng.fan@nxp.com, linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org, vkoul@kernel.org, rafal@milecki.pl, quic_srichara@quicinc.com, konrad.dybcio@linaro.org, devicetree@vger.kernel.org, andersson@kernel.org, p.zabel@pengutronix.de, linux-arm-msm@vger.kernel.org, kishon@kernel.org, agross@kernel.org, conor+dt@kernel.org, will@kernel.org, catalin.marinas@arm.com, arnd@arndb.de, linux-kernel@vger.kernel.org, nfraprado@collabora.com, geert+renesas@glider.be
Subject: Re: [PATCH v7 1/5] dt-bindings: phy: qcom,m31: Document qcom,m31 USB
 phy
Message-ID: <20230810205132.GA1154887-robh@kernel.org>
References: <cover.1691660905.git.quic_varada@quicinc.com>
 <0d42f556ab28123b2b508521a0c79c7597b8b0fd.1691660905.git.quic_varada@quicinc.com>
 <169166288301.4166332.13436758125497162213.robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <169166288301.4166332.13436758125497162213.robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230810_135137_454015_DD462CA2 
X-CRM114-Status: GOOD (  16.29  )
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

On Thu, Aug 10, 2023 at 04:21:23AM -0600, Rob Herring wrote:
> 
> On Thu, 10 Aug 2023 15:26:04 +0530, Varadarajan Narayanan wrote:
> > Document the M31 USB2 phy present in IPQ5332.
> > 
> > Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > Co-developed-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> > Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> > Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> > ---
> > v7:
> > 	Move 'compatible' to be the first entry
> > 	In the example have 'usb-phy' instead of 'usb2-phy'
> > 	Add 'Reviewed-by: Krzysztof Kozlowski'
> > 	'make dt_binding_check DT_SCHEMA_FILES=qcom,ipq5332-usb-hsphy.yaml' passed
> > 	'make CHECK_DTBS=y DT_SCHEMA_FILES=qcom,ipq5332-usb-hsphy.yaml dtbs_check' passed
> > v6:
> > 	Add 'Co-developed-by: Sricharan'
> > 	Add 'const' to compatible, vdd-supply
> > 	Remove label and use usb2-phy for nodename in the example
> > v5:
> > 	Add '#phy-cells', to be able to use generic phy
> > 	Remove 'Reviewed-by: Krzysztof Kozlowski' due to above change
> > v4:
> > 	Move M31 URL to description
> > 	Remove maxItems and relevant content from clock-names
> > 	Change node name to generic name
> > 	'make dt_binding_check DT_SCHEMA_FILES=qcom' passed
> > v3:
> > 	Incorporate review comments. Will bring in ipq5018 compatible
> > 	string while posting ipq5018 usb patchset.
> > 
> > v1:
> > 	Rename qcom,m31.yaml -> qcom,ipq5332-usb-hsphy.yaml
> > 	Drop default binding "m31,usb-hsphy"
> > 	Add clock
> > 	Remove 'oneOf' from compatible
> > 	Remove 'qscratch' region from register space as it is not needed
> > 	Remove reset-names
> > 	Fix the example definition
> > ---
> >  .../bindings/phy/qcom,ipq5332-usb-hsphy.yaml       | 59 ++++++++++++++++++++++
> >  1 file changed, 59 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/phy/qcom,ipq5332-usb-hsphy.yaml
> > 
> 
> My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
> on your patch (DT_CHECKER_FLAGS is new in v5.13):
> 
> yamllint warnings/errors:
> 
> dtschema/dtc warnings/errors:
> 
> 
> doc reference errors (make refcheckdocs):
> 
> See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/0d42f556ab28123b2b508521a0c79c7597b8b0fd.1691660905.git.quic_varada@quicinc.com

The bot was having an issue. This can be ignored.

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
