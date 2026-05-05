Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32431CD342F
	for <linux-phy@archiver.kernel.org>; Tue,  5 May 2026 10:48:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tXOLuQk+FHA1DRGwkzWyaTMeXarDFddL7HjkvZlEXMs=; b=lOGU5tWebhQb1j
	pZUpXsxzpRfUqclKoilC6WVOPvVHUqsCi6ffMK8vWma+Q60Dj70GZ+hQy518ytmlnrORrDltGjhlM
	RT/4rKoKBLk8qMvO6qVye5SPh9wJZn9kgmGsrwZYOEnEwV7CmEnid8GWSUrSn4qp+N8Ch/8twipcB
	XrNxjWVvmNXF2Mz0U1vVwIbaq4mo4FnDgIAHrLjaXf9yFBy9mlpDCZvJ8xldFu5mdAl//wsluWR0D
	OQBz8+Sv/AjGzkAJUPg1glB3j9sRAAP6A/bhQBldWDHYbhSuedAWS+2405KxQ69HxPWlnUv/RMPKa
	UzE0xvA5nIUwepToYDRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKDKT-0000000FwUh-3zTw;
	Tue, 05 May 2026 10:48:41 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKDKR-0000000FwU5-3jCQ
	for linux-phy@lists.infradead.org;
	Tue, 05 May 2026 10:48:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 7F007401A5;
	Tue,  5 May 2026 10:48:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CA45EC2BCB4;
	Tue,  5 May 2026 10:48:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777978119;
	bh=k8wxVOeIqz80WLZwC1r+QJNmKJWrY7Q9ApKvYiR8V58=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gdEu0Okv8KAq+vMmxhT2whlVNE4DPIR43AErGtOblFB92fokuogyc4EBWQ9m6Dwmo
	 DExwd+9VdJIv59EG7Kvk9P0Qq+lXD+iCjbjRsGbQxYRtUtILtXASG/RJ+LWKj8JlML
	 +8LNUPFJLdg+ySo1PaTcd7kRDWpVzeszhv/6RHf7p9bRY10joZeAi1Yo3lbTTU3xAc
	 iaNbvNWtMDha9DivrGAGcUsXQRV+i7HUlhfibqRN3COdrtKpEWia/fw7bAKWF+jnt/
	 9eVszCPocAa4OuPvoy0jJvelHXG3MdgmjEPKHR3wJTqgGvQIiUANnlMB6WWovB0Ft3
	 xHxVDTHscIrbw==
Date: Tue, 5 May 2026 12:48:36 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
	Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
	Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>, Johan Hovold <johan+linaro@kernel.org>, 
	Loic Poulain <loic.poulain@oss.qualcomm.com>, 
	Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/4] dt-bindings: phy: qcom,qusb2: Document QUSB2 Phy
 for Shikra
Message-ID: <20260505-gifted-bulldog-of-opportunity-34dfc1@quoll>
References: <20260504170659.282532-1-krishna.kurapati@oss.qualcomm.com>
 <20260504170659.282532-2-krishna.kurapati@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260504170659.282532-2-krishna.kurapati@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260505_034839_945755_C6C63079 
X-CRM114-Status: UNSURE (   7.55  )
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

On Mon, May 04, 2026 at 10:36:56PM +0530, Krishna Kurapati wrote:
> Update dt-bindings to add Shikra to QUSB2 Phy list. Shikra SoC
> has two High Speed QUSB2 Phys.
> 
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml | 1 +
>  1 file changed, 1 insertion(+)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
