Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73B20C001DC
	for <linux-phy@archiver.kernel.org>; Wed, 26 Jul 2023 05:21:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UnhVTx050MbTUEkcS4DzqYCJrWXv/euj7ZQTrh92TyQ=; b=vQSjlVjw55f2Yc
	glBKnu3utZ3L4RRMqI6wBf3AOCDuO4Rb8KNW/YbjZTiL6oI1WDBbE2IpnREDbSLd0liiuV/BduvQy
	jIDX9KryJfUuRQQ/qQ569IRKjg1ev9HBFMxk3wCKM8hAzsXUqGO2dztfdGoPFB7MwlK1EV5QNyjsh
	UeRzUMjguikjKm2j/2PMs9d0AGIPsQ/e+uyAN1owK0Mv0nr2ZTrB1Y7v21njmEmywyAB29oIHvzKm
	0wt9IAAzY1/T1eWjs3Xw+p1317tjA4Kco7XxpzyORk9wEf39BsTYbhkcpKXXa0XiPGx/xz3+pwHBb
	pS7CjEVoVhzh4VftnH1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOWxT-009BpZ-0Z;
	Wed, 26 Jul 2023 05:21:11 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOWxQ-009Boh-1Q;
	Wed, 26 Jul 2023 05:21:09 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 942876117C;
	Wed, 26 Jul 2023 05:21:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 41C01C433C8;
	Wed, 26 Jul 2023 05:21:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690348863;
	bh=9tnFNXSUclTx4dPB0bkbDkhLdl1cycMtiJarM2UDCjk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PwhIh2FjWWwVq2ZmmSrooXgU9udbde9AdEXaTQL7q/KeRv0vBxc5yR40M0fLMWBUQ
	 gDYQMR1ERmqSttiVW/bAWwH7n/wWpsibIRaAVff9gH5+YD0XuSysCoprKJN71U9NzR
	 Jz7LBOEP3NQM5OF+jjkExaGL0qmrNlQDhOh0S01G0kzOthEToE+YOzY/UaWSt7Rodb
	 gax5LVfKNepZyQg2BuYnZENwOoCPd1sDkznREmi1lWRXm6nHUBn3A8PAHVGGD4HjPo
	 qd9RVxF0BHttnFgQqce4w1sh23ZTxqmrglKMFQW3MAxVoMkjokEMJaSudU5hNmsb0F
	 Rrbs13QNkwyaA==
Date: Tue, 25 Jul 2023 22:24:15 -0700
From: Bjorn Andersson <andersson@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: Varadarajan Narayanan <quic_varada@quicinc.com>, agross@kernel.org, 
	konrad.dybcio@linaro.org, vkoul@kernel.org, kishon@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, gregkh@linuxfoundation.org, 
	catalin.marinas@arm.com, will@kernel.org, p.zabel@pengutronix.de, arnd@arndb.de, 
	geert+renesas@glider.be, neil.armstrong@linaro.org, nfraprado@collabora.com, 
	rafal@milecki.pl, quic_srichara@quicinc.com, quic_wcheng@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v5 2/6] dt-bindings: phy: qcom,m31: Document qcom,m31 USB
 phy
Message-ID: <cst3d76ong32lzcatxlcr5gbakmh3grm5tehvd36wrdza5ozd5@gfl4ysu7hdo6>
References: <cover.1689913334.git.quic_varada@quicinc.com>
 <131eb1694229436919ac88bb9920fb54d6808388.1689913334.git.quic_varada@quicinc.com>
 <ymbcafqqhc6hgrfhpef4byehvfyjzovs5zeprmj343erdv5ti5@tj2iunu6whvi>
 <20230724160136.GA3619408-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230724160136.GA3619408-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230725_222108_544677_6F5AFEB0 
X-CRM114-Status: GOOD (  10.54  )
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

On Mon, Jul 24, 2023 at 10:01:36AM -0600, Rob Herring wrote:
> On Fri, Jul 21, 2023 at 10:10:57PM -0700, Bjorn Andersson wrote:
> > On Fri, Jul 21, 2023 at 10:05:27AM +0530, Varadarajan Narayanan wrote:
> > [..]
> > > diff --git a/Documentation/devicetree/bindings/phy/qcom,ipq5332-usb-hsphy.yaml b/Documentation/devicetree/bindings/phy/qcom,ipq5332-usb-hsphy.yaml
[..]
> > > +examples:
> > > +  - |
> > > +    #include <dt-bindings/clock/qcom,ipq5332-gcc.h>
> > > +    usbphy0: usb-phy@7b000 {
> > 
> > usb@
> 
> You mean phy@? But 'usb2-phy' is accepted too.
> 

Yes, had the controller in mind, sorry about that.

Thanks,
Bjorn

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
