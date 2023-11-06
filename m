Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76106C4167B
	for <linux-phy@archiver.kernel.org>; Mon,  6 Nov 2023 16:16:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y1LRMdHYbRnWvQM7YNu2YdbhLHdG5tDJgrL4JGZAelM=; b=Ew7akoNOMTrREX
	45oQ41RpbeEYZrxXIq4S88M7qaua0G9ZAOU8IbV3qgtEdOuGlUl5Odhr4orai6zimTkhBd6Nu3pRv
	krqbTiIUSbQi0AdWum0DDnxwPAJSWqm0VzYy+fvcgkT6SKlarN7/Nz13/a5wlv49zt4aRXyju5RrJ
	O+AA1ehjBsgBgxfyO24qgvkS84nf5DVF3gnY/FIp7tElrSihDgkkwye//6wDjmPXuAS+EfmgisaIy
	HIwe+Z78EHOok7tI6EY5VXdpr9VB5yhEjnZp5rwVBeLfOdPp0BOfdo1MjahIuv3jthmnRe4F0IDWY
	RI7ixGB51mPcbb2OvXNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r02HY-00H5aM-0b;
	Mon, 06 Nov 2023 16:16:56 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r02HV-00H5Zt-1b
	for linux-phy@lists.infradead.org;
	Mon, 06 Nov 2023 16:16:54 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id E6C85B810C5;
	Mon,  6 Nov 2023 16:16:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0D7CFC433C7;
	Mon,  6 Nov 2023 16:16:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699287411;
	bh=16ffoNada2LaV7CDttzlTUVhLa0Ue+1TEG7i9493z1I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IaICYrSqjK01MFXcgweRO26KTYY3CzLc5+DNsGOVsMbD5/nUsU5tAFDspLPfbTeT4
	 qbFfsV0RFHpb1Cd1AB4cuZI9FsqgO0IFwi7ArQSQmlrNqdEjCeq95Auv3/xLzQUeIN
	 DoqDoXvVsXttEXmmXD9+fSYomlXMEtYxne6MDPg4tPwYcNeCAzsyGMPc6zXh3EEnC7
	 hFGcPg518ZKnBYFUaHsyFWyL/O/x9mxFcx0JmZCoxvfPJ4iNRyZm7ybI+SrwIIwwWz
	 6w6666acBWt8lkyycGE/F1qup7KyQ3EK0Vtkx5a9ZBU5w0wLxWG8BMCdH7jEcaazrE
	 Y6Jwe5OdIma8A==
Date: Mon, 6 Nov 2023 08:20:52 -0800
From: Bjorn Andersson <andersson@kernel.org>
To: Krishna chaitanya chundru <quic_krichai@quicinc.com>
Cc: Andy Gross <agross@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, quic_vbadigan@quicinc.com, quic_ramkri@quicinc.com, 
	quic_nitegupt@quicinc.com, quic_skananth@quicinc.com, quic_vpernami@quicinc.com, 
	quic_parass@quicinc.com
Subject: Re: [PATCH 1/2] dt-bindings: phy: qcom,qmp: Add PCIe
 qcom,refclk-always-on property
Message-ID: <wt47mf6vx5fx5ddghwb4aljfjqftkplsc2zieays2xwjhkxag3@plromlkrbyxz>
References: <20231106-refclk_always_on-v1-0-17a7fd8b532b@quicinc.com>
 <20231106-refclk_always_on-v1-1-17a7fd8b532b@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231106-refclk_always_on-v1-1-17a7fd8b532b@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231106_081653_684088_BFDEABA3 
X-CRM114-Status: GOOD (  15.02  )
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

On Mon, Nov 06, 2023 at 05:22:34PM +0530, Krishna chaitanya chundru wrote:
> Document qcom,refclk-always-on property which is needed in some platforms
> to supply refclk even in PCIe low power states.
> 
> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> ---
>  .../devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml          | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> index 2c3d6553a7ba..9daf0556ed3b 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> @@ -93,6 +93,11 @@ properties:
>    "#phy-cells":
>      const: 0
>  
> +  qcom,refclk-always-on:
> +    type: boolean
> +    description: A boolean property indicating the refclk is
> +      always on even in Low power states (optional)

As with the driver patch, please improve this description (and use your
80 characters).


It would also be preferable to capture (or at least indicate) the
problem that this flash is working around - so that future readers
doesn't need to go look in the commit history for the phy driver to
figure out what this is doing.

Regards,
Bjorn

> +
>  required:
>    - compatible
>    - reg
> 
> -- 
> 2.42.0
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
