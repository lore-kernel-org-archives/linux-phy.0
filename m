Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB8D0C4345F
	for <linux-phy@archiver.kernel.org>; Wed, 17 Apr 2024 18:59:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TVoOVQaABYwzKrrfPoi/UhhYkE85OLnnS8waD+5SeHc=; b=1CoA4np5VqFffj
	GqINpUSxK1wnYHcjuP1AAcy1Sag1uybUjuhx284JWfyBNLGwu+4SJk4zY5BfZKTlkXBJdb1EZEVaC
	XMNk930ZumdTUBar4CGedt1rYMQPdkav62D91g30fSCwXKmgKBUlkPMwu90v9wEey5Q+iLWl4duAY
	IGg08F3xiFzUAuj6N5bnsDEde/ncMriW6r/Tu5QTdNWWgr2e1PZXB99YA9AzbJxR3OcnX0UNLcFCD
	jBJ6I/Ve/X4oQBdqQwBLB8Bk4S80nykYBF9uuzZFEMGrbsiZtmweLjgVEq9REJTOpTWYFQD9nbFgA
	MVSPLR+bAirDRSyVN/7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxAVT-0000000HHuF-1SVT;
	Wed, 17 Apr 2024 18:59:43 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxAVQ-0000000HHth-1dEa
	for linux-phy@lists.infradead.org;
	Wed, 17 Apr 2024 18:59:42 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 84FBBCE149D;
	Wed, 17 Apr 2024 18:59:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 95676C072AA;
	Wed, 17 Apr 2024 18:59:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713380377;
	bh=NUBuYhI/tPwR/CQU1XXDvBmqFVJxYglVJpqZiT9wFys=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=toJRqIXdNJxj/Dw8Gjp3I8h8A/CExTqMdayP8G1vftau+t1DGy0eho4sbVdPyuvu5
	 HDnuCOE1jQ8e1p72iWO9RlHkBYSyq4JjdqlmT/3WM7osuluz0Wo5diHWt8cjKzg9Ow
	 4Pilgf63oUyG43IzrTX99Thnjqo12E0estLi7WWr/5pD4W1J1EoT6DWy7X80yhYa3i
	 BUgYAYWise1MqfU46ROI6hjeGVvsPzExfEqGUMCg/fjdUZm4x1YoSXeiy8tqGi/dXj
	 TGDrjwXuZnihlh9G2qiXCBGuq8yT6Debu2gbcMcGgf/epzCWwPiVUSpm27jPTnjlrx
	 arFspLbzGEd5Q==
Date: Wed, 17 Apr 2024 13:59:35 -0500
From: Rob Herring <robh@kernel.org>
To: Herman van Hazendonk <github.com@herrie.org>
Cc: benwolsieffer@gmail.com, Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	Bjorn Andersson <andersson@kernel.org>, chris.chapuis@gmail.com,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3] dt-bindings: phy: qcom,usb-hs-phy: Add compatible
Message-ID: <171338035822.3093343.24902837393327860.robh@kernel.org>
References: <20240417065020.3599755-1-github.com@herrie.org>
 <20240417065454.3599824-1-github.com@herrie.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240417065454.3599824-1-github.com@herrie.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240417_115940_631332_405755C5 
X-CRM114-Status: UNSURE (   7.17  )
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


On Wed, 17 Apr 2024 08:54:54 +0200, Herman van Hazendonk wrote:
> Adds qcom,usb-hs-phy-msm8660 compatible
> 
> Used by HP Touchpad (tenderloin) for example.
> 
> Signed-off-by: Herman van Hazendonk <github.com@herrie.org>
> ---
>  Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
