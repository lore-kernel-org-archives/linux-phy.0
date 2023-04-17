Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A003CC77B70
	for <linux-phy@archiver.kernel.org>; Mon, 17 Apr 2023 08:05:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CJvnwOrHwSohTgYhEPDSNT8MZf2o2NiqeEKWtZBSxHM=; b=BiC3MaeTDxh4zf
	y0UWQOLkH2uomZ9nlw6j6yjyS1Xw2upmQMgeCAhOOrDQE08icnd0t9CUog1IiNmaD0eOQUTMADSWe
	TFZ0mA9JeIgEZ7tEE78nJSHNpKOl3xu/HsFdAo+coQeXMT5L6QKkp7AR2vPBbGGEfdtDUgmUqc7Hh
	mwkm7bTQ2xLT39SqFdD8RErMfF3mKXrswhb7dpbXWSr/azEM36iS6QQDcXgvepwRO9L56y3gjvpJh
	wkLDRWU809n/DVmh2qv88+v1a8iF5lBp34HM8Wx16x4AZPBi69Y3VL/iLcj9nG73wdWzk51QtvR+X
	17dd4ks9diXGXBhMKpjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1poJrK-00FKBE-10;
	Mon, 17 Apr 2023 08:05:10 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1poJrH-00FKAa-23
	for linux-phy@lists.infradead.org;
	Mon, 17 Apr 2023 08:05:09 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 1AD1861F9A;
	Mon, 17 Apr 2023 08:05:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7A6F3C4339B;
	Mon, 17 Apr 2023 08:05:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681718704;
	bh=0Y/mnS2pjaYk07j+LJSA/55y9ntA2FADo9/M3Dr4xgk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DGKJDv/BLy56BiFvmzmoetNbBUmKx1OS5vjufwpa9DMDa4mpBFiD918rvHExFqe9f
	 YsTYesSOFT7FcZyJvTAJjSCRAtAFNpoX/uS6xAF3TxMBqeB7QPV7uAbmI0B0qMB7Yn
	 kATDatbmgWXBYL3FWMniD9DEHM/iztPJ4+H9e4pSqLzimIeAP6znCuSo8LggP5GfRZ
	 M0bNu7BjUDOxcEQmUQUttIaWAC36jaDyOwaKa+KYPlrauqv/uKzIK69VTXgd1RPXy9
	 mZGu2O8Y+qd8VOMWyw+ziPsCOVg2C4bT42JBJQ/xl0FDFDpV9LUUHS+izm0F1VV3K7
	 xax7EE8okIlgg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1poJrL-0003gR-Mp; Mon, 17 Apr 2023 10:05:11 +0200
Date: Mon, 17 Apr 2023 10:05:11 +0200
From: Johan Hovold <johan@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Varadarajan Narayanan <quic_varada@quicinc.com>, agross@kernel.org,
	andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
	kishon@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, gregkh@linuxfoundation.org,
	mturquette@baylibre.com, sboyd@kernel.org, quic_wcheng@quicinc.com,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org, linux-clk@vger.kernel.org
Subject: Re: [PATCH v8 2/8] dt-bindings: phy: qcom,qmp-usb: Add IPQ9574 USB3
 PHY
Message-ID: <ZDz9t9TkBqZ1fcfn@hovoldconsulting.com>
References: <cover.1680693149.git.quic_varada@quicinc.com>
 <1efa9a64499767d939efadd0aef897ac4a6e54eb.1680693149.git.quic_varada@quicinc.com>
 <0a66e291-a86d-1ff9-e674-839b8cc8f1da@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0a66e291-a86d-1ff9-e674-839b8cc8f1da@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230417_010507_737453_C257A051 
X-CRM114-Status: GOOD (  18.21  )
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

On Thu, Apr 06, 2023 at 09:41:49AM +0200, Krzysztof Kozlowski wrote:
> On 05/04/2023 13:41, Varadarajan Narayanan wrote:
> > Add dt-bindings for USB3 PHY found on Qualcomm IPQ9574
> > 
> > Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> > ---
> >  Changes in v8:
> > 	- Update clock names for ipq9574
> > 
> >  Changes in v6:
> > 	- Made power-domains optional
> > 
> > Note: In the earlier patch sets, had used the (legacy)
> > specification available in qcom,msm8996-qmp-usb3-phy.yaml. Moved
> > to newer specification in qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> > ---
> >  .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml        | 43 +++++++++++++++++++---
> >  1 file changed, 37 insertions(+), 6 deletions(-)

> > +        clock-names:
> > +          items:
> > +            - const: aux
> > +            - const: ref
> > +            - const: com_aux
> 
> Can anyone explain me why do we name these (here and other Qualcomm
> bindings) based on clock name, not input? Just because different clock
> is fed to the block, does not necessarily mean the input should be named
> differently.

I guess part of the answer is that this has just been copied from the
vendor dts and (almost) no one but Qualcomm has access to the
documentation. What would the input names be here?

Also note that there are SoCs that enable both 'cfg_ahb' and 'com_aux'
(e.g. sc7180).

> > +            - const: pipe
> > +
> >  examples:
> >    - |
> >      #include <dt-bindings/clock/qcom,gcc-sc8280xp.h>

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
