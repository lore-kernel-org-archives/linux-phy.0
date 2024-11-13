Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91913D637A4
	for <linux-phy@archiver.kernel.org>; Wed, 13 Nov 2024 18:12:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bCZ24tXn/qF8+z2CYObNCu1UQDiA4SPqucmjcKwfMYU=; b=36t6kbzt0Ltg6F
	EXktkjKlQd9StuVO3cdF0jUeqrw6qm8XueotuU+S3ZpdpmFmcltKAA3wDxy5Qq7ghez+To2PVBM6o
	4J0r9/6rFEeMr2YmrU3v+xCxfe8mxpy7WChFjJxVTNlLzmcovFM9UnpnV93sLgnoIlxpn7g86vzHs
	BWb5fa65B6rWfIxEHRiFjyDSq+Rz2/MEoFQD36barvhIcS3++y8MDivelrjZ6zZecV1XR3VeD//4q
	CHIIWjkXb0qBgLNgzqwsuoI+Auay8iTxD9WlFgk+eLOVzHWX400mMLLQiEr+Nml/xeff9caxO1KSw
	yTcfxYuOwwMHyy9EQR3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBHqi-00000007fhW-0Lom;
	Wed, 13 Nov 2024 18:12:16 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBHq9-00000007fcP-3V59
	for linux-phy@lists.infradead.org;
	Wed, 13 Nov 2024 18:11:43 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id D1D4A5C5535;
	Wed, 13 Nov 2024 18:10:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A2694C4CEC3;
	Wed, 13 Nov 2024 18:11:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731521500;
	bh=fujGutBZp/9h60ZjqyqAyU+r1u3fFTWP8gNIzYxYXF8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EvEgU1c4XeLEl4tM1nBnAJKfew+cCYyosddh3FVACqg1LvKag0LOQNC6wrJWurQdN
	 OtqRufZ0Ii3nSM7M/7CTJXf+O3LPP1CUc2ciI2QQ2ELw2TkgUEw530Zbc2ZOWDmeQd
	 nuFgV2I2jxOVN1yad45n2NwOhKG1EmCZvP+oM90uhbqz5dYfVFF5VwdXuqtbA/6/rK
	 mvQsxzwCX3oduGiMERauuj47XlLN4iRjQExcPUCSS3VehlrBRKVjJPjD5xxRzy7IeT
	 X+wPkphC0cymvvG4UNhUJijEnKly14hRP3TXoJh61De8RlmIwOLleWapkVYRE9aq5s
	 BN+YYj3Mi2CoQ==
Date: Wed, 13 Nov 2024 12:11:38 -0600
From: Rob Herring <robh@kernel.org>
To: Johan Hovold <johan@kernel.org>
Cc: Varadarajan Narayanan <quic_varada@quicinc.com>, vkoul@kernel.org,
	kishon@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	gregkh@linuxfoundation.org, andersson@kernel.org,
	konradybcio@kernel.org, dmitry.baryshkov@linaro.org,
	mantas@8devices.com, quic_rohiagar@quicinc.com,
	quic_kriskura@quicinc.com, manivannan.sadhasivam@linaro.org,
	abel.vesa@linaro.org, quic_kbajaj@quicinc.com,
	quic_wcheng@quicinc.com, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v2 6/6] arm64: dts: qcom: Add USB controller and phy
 nodes for IPQ5424
Message-ID: <20241113181138.GA1011553-robh@kernel.org>
References: <20241113072316.2829050-1-quic_varada@quicinc.com>
 <20241113072316.2829050-7-quic_varada@quicinc.com>
 <ZzSYU61pmFTcPf5_@hovoldconsulting.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZzSYU61pmFTcPf5_@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241113_101141_948991_5B5E3DBF 
X-CRM114-Status: UNSURE (   9.58  )
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

On Wed, Nov 13, 2024 at 01:15:15PM +0100, Johan Hovold wrote:
> On Wed, Nov 13, 2024 at 12:53:16PM +0530, Varadarajan Narayanan wrote:
> 
> > --- a/arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts
> > +++ b/arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts
> > @@ -16,12 +16,71 @@ / {
> >  	aliases {
> >  		serial0 = &uart1;
> >  	};
> > +
> > +	regulator_fixed_3p3: s3300 {
> 
> Fixed regulator nodes should have a "regulator-" prefix in their name.

Specifically, regulator-<voltage> is preferred. So "regulator-3300000"

Not enforced because there are some exceptions.

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
