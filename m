Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1CB79C43334
	for <linux-phy@archiver.kernel.org>; Wed,  8 Jun 2022 16:24:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LuwnLsSKyFpED5AqaOzcAuMetnpuO3qxlLkZDArWcHs=; b=JYb8irE0bhCV/W
	gxsJ2SkPtLSozMhkxuKfXsQbF8JN2GEFfrWov2Q29F/nzA2kmHI4ZzEf5f/6xmjHQ0Wn4w6r37NF0
	21l0mwrsRtlACn54PO8pBDQRyr0K1tq+mBwJbgViA/QGNetTjfIl7eZgkUZXJRJM1qYZq92xOZMto
	mqy+tYNDJaWaT9Ha4KvR/Xk9NTBDmbU5KhSj8Gv/UA6rw8WvIBkjU66j7dXwZ2NETAviV3j9rhzCV
	KNDXKh4uScRpombI0emDMKz9vox0KDhbvZOl+JW3/Rw1nvjdna2A8u5+AEwjgrOVbKwHUxG3V6Q9n
	uGBNMchjmEcP/h/0CPYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyyUM-00EI3Q-Gn; Wed, 08 Jun 2022 16:24:58 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyyUJ-00EI2V-Vz
	for linux-phy@lists.infradead.org; Wed, 08 Jun 2022 16:24:57 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 75C94B82615;
	Wed,  8 Jun 2022 16:24:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5CAECC34116;
	Wed,  8 Jun 2022 16:24:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1654705493;
	bh=qbDIxo78te+eB8Fn0aTs9JNutyJfPowSyC5v29AtvOQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iUu0tt/0mQU6v+tmxBiIUwZXW+yAMPfobkaxbA+vg0lXh33oSaQjmPkMmt8cEs2mu
	 LExj345EDd1J3l+eYVQipLav9LP4oywtRNJ6BfnPHPRuDziBJKQt7+fApAyQoefkTO
	 nqsoXp4MYAIyul+l+bx5watENLV2/wVUE4CzTAoleUH90iUq+AVCOgsKGp8d6jVagf
	 kTuiQnMX6bsUf/GDB31l7bFlOEleF29Rvt4TEfda3jQnY9wKvp4VCUb4snDhPu3Ewd
	 l/r6AUpYznq3foHLBxC7XLi+yIrXs/VczoaQPuOQgRrGb38tDs8+pRF54Zm4cyQLkH
	 1smrSE4AP1mnw==
Date: Wed, 8 Jun 2022 21:54:48 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Wesley Cheng <quic_wcheng@quicinc.com>
Cc: krzysztof.kozlowski+dt@linaro.org, lgirdwood@gmail.com,
	broonie@kernel.org, gregkh@linuxfoundation.org,
	bjorn.andersson@linaro.org, kishon@ti.com, robh+dt@kernel.org,
	agross@kernel.org, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	quic_jackp@quicinc.com
Subject: Re: [PATCH] dt-bindings: Update QCOM USB subsystem maintainer
 information
Message-ID: <YqDNUN7g6IVPMdQB@matsya>
References: <20220603021432.13365-1-quic_wcheng@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220603021432.13365-1-quic_wcheng@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220608_092456_210314_01C31D60 
X-CRM114-Status: UNSURE (   7.78  )
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

On 02-06-22, 19:14, Wesley Cheng wrote:
> Update devicetree binding files with the proper maintainer, and updated
> contact email.
> 
> Signed-off-by: Wesley Cheng <quic_wcheng@quicinc.com>
> ---
>  Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml | 2 +-
>  Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml       | 2 +-
>  .../devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml         | 2 +-
>  .../devicetree/bindings/regulator/qcom,usb-vbus-regulator.yaml  | 2 +-
>  Documentation/devicetree/bindings/usb/qcom,dwc3.yaml            | 2 +-

pls split to per subsystem, phy, regulator and usb so that respective
maintainer can do the needful

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
