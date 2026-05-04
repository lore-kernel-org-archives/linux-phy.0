Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4A63CD342C
	for <linux-phy@archiver.kernel.org>; Mon,  4 May 2026 10:13:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NxblFwU4YkefpDEY9N35GleL8FZzIwocww9ZmzxCns0=; b=Srb3nVbcV3EWOV
	76R7G/kEMYocCPDAo02JS7ZMQ/xwilxv3Q9rS3Pdg1ZIS+eEeMOUGqoFivunIzSJ0zf1ua94908uk
	/xThTclPR/U/BN44Eqwj3yA8F6epbjKH+Swym3l2nXuAaXsqEjEwxA1Bu1WhgqSz0EoS9sl1yQVvh
	vJjRh69AeOYTnyKo1r7pE7T11tMRM6oWHSD2mffwilSSTWa3y49WsGQI7TlkYCsR1mcYosqNIJbEk
	LaU7oHY9iG3sCxKPxdK4B0HiUj1EsuL+rVXlJgsjY3Wy3vEJlIgcQg6svqLs17yb68Ku8bU0D2Vkp
	CnOqs8oUwK5tHyRhgy5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJqIh-0000000CtKt-1kGO;
	Mon, 04 May 2026 10:13:19 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJqIf-0000000CtKG-1a5V
	for linux-phy@lists.infradead.org;
	Mon, 04 May 2026 10:13:18 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id A614444153;
	Mon,  4 May 2026 10:13:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F0AFFC2BCB8;
	Mon,  4 May 2026 10:13:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777889596;
	bh=HZUUPBL7Z4E9vSMrCphwJqkVEsdGZieR22pOXMD+3Ps=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=I/GLT+GK44wPcHIXfRtvkjC7/q+evcpPHeKcU14aKbUIa/LhFHLk1++/Ao80wicWA
	 tXs4MMcHFGs5DOTK3l93md3lsGNuPoUcHWrHrAwebu1t0sPhyK+1HJWNKE7u4UIqG1
	 o4jBLdWknmHNqr9DCd3g+NcYDSIg0TBbgPCpFOidxI5gOPwoeFeitjJkrUikXyu1r1
	 8aaTAd0ZXwuIA4f7DLcrNZ9e6nyMqPuA8mn7Dlzgj6ITB8tQpEXAlpjNH5uWDxek+w
	 1YjGBADx58oK9xp3jMuiYMaO5ncUlvKFsrzyybAOaYjBr5WQZX2Ipwh8Ow/34AsiSr
	 gkVNgTzPwKDWQ==
Date: Mon, 4 May 2026 12:13:13 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: Re: [PATCH 1/5] dt-bindings: usb: qcom,snps-dwc3: Add Shikra
 compatible
Message-ID: <20260504-amphibian-cunning-horse-dbb413@quoll>
References: <20260430-shikra-usb-v1-0-c9c108536fdc@oss.qualcomm.com>
 <20260430-shikra-usb-v1-1-c9c108536fdc@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260430-shikra-usb-v1-1-c9c108536fdc@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260504_031317_535915_27F84241 
X-CRM114-Status: UNSURE (   8.28  )
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

On Thu, Apr 30, 2026 at 05:20:26PM +0530, Komal Bajaj wrote:
> From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> 
> Introduce the compatible definition for Shikra QCOM SNPS DWC3.
> 
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml | 3 +++
>  1 file changed, 3 insertions(+)

Please do not mix subsystems.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
