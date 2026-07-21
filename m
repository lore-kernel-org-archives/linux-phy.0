Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86EBEC44529
	for <linux-phy@archiver.kernel.org>; Tue, 21 Jul 2026 09:10:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qj09ToFGQvRIajsks4nr2BkUs1hofI+RDCs5PaTStyM=; b=xsc7luvTRo+93J
	8l4KPQvOxsi/zbdgeQIG8KtIbl1M465yLVrl/DeOAQ2zPn2pwmjtVfLEmmylz8Y9QXNRDj2myFoOX
	psgwb7mjZOs2pTzF+nvUMpAICFUEy6Q50vVL1guVCK5xtj+omFrNkRF0gOveacl1IFNw6WSt6KFNj
	2eWbyk63GVDgGj7F2J2x+KIv8zMgmRnxBFI/Jj4mR4AK+eBO3RejxJ5N/sbxVh0jbautqHe7Mv37/
	QiwK29cdBvjP3U5K7kbDU+y21zfCN84eT8NMrmbWCpL97mDIxP5B62BrovrSRKk4kVsDdDzxkhEre
	i9Rnb11vwS564HqIK7nA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wm6US-00000008vzn-0JLc;
	Tue, 21 Jul 2026 09:10:16 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wm6UQ-00000008vzL-0kUj
	for linux-phy@lists.infradead.org;
	Tue, 21 Jul 2026 09:10:14 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id EB83243B10;
	Tue, 21 Jul 2026 09:10:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CA43E1F00A3D;
	Tue, 21 Jul 2026 09:10:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784625013;
	bh=rL8bJ3cQ/amc8AmRZ/N2VC1IHADA2+B2SMDij5EJ2I8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=U6ed3PP59epEPdEhUb/EaIRcl/KQ+j0hgeAqhkELeubZpRnCIFALsy/j4+2lXaWq9
	 Qe6yCCYR6l65J5p7lrOw6XotWP25aA8YXi5uNGyfnZl211nmBHt+I3XFYb427SI0YT
	 aMfnHK+lNztgKs/2ej8+6jp4yHSUE4+nKMHbcy9TfqVxW6OX66os7/wT9WGw6tIA6W
	 tLisG9siZrLruvSwB3sH/yBUuMavfdFH8MOM3dom7+yfeTvHhWbi5uEF6Ecg1J6H1c
	 3RETI4emu6k+cVdeNXydGjHz+Yvji3Htx1CMkDV9XIPDxsyZsiMHTzcHyjPB2KT+az
	 vndoxL7h1QVag==
Date: Tue, 21 Jul 2026 11:10:10 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: qcom,m31-eusb2-phy: Document M31
 eUSB2 PHY for Maili
Message-ID: <20260721-small-rat-of-competence-32d994@quoll>
References: <20260713-maili-usb-phy-v1-0-3285da11f148@oss.qualcomm.com>
 <20260713-maili-usb-phy-v1-1-3285da11f148@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260713-maili-usb-phy-v1-1-3285da11f148@oss.qualcomm.com>
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

On Mon, Jul 13, 2026 at 06:38:28PM +0530, Krishna Kurapati wrote:
> Document the M31 eUSB2 PHY for Maili which handles the USB2 path. Use
> fallback to indicate the compatibility of the M31 eUSB2 PHY on Maili
> with that on the SM8750.
> 
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Please kindly postpone posting anything for Hawi or Maili, because there
is no DTS user available and previous Kaanapali, Glymur, Maili and Hawi
postings without DTS came with somehow easy to spot issues if DTS was
available. Contributor did not spot them even though they had DTS
internally. OTOH, I cannot spot them, because DTS is not available to me
easily. I raised this internally hoping it can be somehow solved (if
Qualcomm wants to post bindings without any users).

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
