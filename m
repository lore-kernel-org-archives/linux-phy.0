Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D09DD3E77B
	for <linux-phy@archiver.kernel.org>; Wed, 10 Dec 2025 21:19:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vM4jh2rNvDJdFAjaYcQosKVQ9ZkZcNO9zzm4SWXLl08=; b=mVuOr3etV7/kz9
	gYe2DOaC+3xrHs6YuO8DY+xbEChJv9CR9I2azmmp+a2b6sv17EvvzRThSOS0hyxMCjYlUlXBl6IP4
	N6bFIgxiXp0irVKzCvDNa3J/R/AkbIqueqvbgmiONxFXuF2Kr+sznssDpgy1acHIjjD1TTIiYtwE/
	iVdfjsaehWDPqKyLu7GTKS6SCP+LcXP5aj5tNhWvbVu3yYhv5VYLN6uw0vo8M0WsGYVfgGto56Uzz
	sMMUegbir8KqoeMow+zzAAjZ5ljTxe4N2MFV0Gfdmij1rBCxqWz01zL2McjmrqemfgGxKwfIud3l2
	brdWM5yGOfldCMH3ie3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTRbH-0000000Ftm1-0XbN;
	Wed, 10 Dec 2025 21:19:55 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTRbE-0000000FtlY-3tCR
	for linux-phy@lists.infradead.org;
	Wed, 10 Dec 2025 21:19:53 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 8F292400AC;
	Wed, 10 Dec 2025 21:19:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 43982C113D0;
	Wed, 10 Dec 2025 21:19:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765401591;
	bh=LRy9OKjqzKVMMtq0PqPtKw1sozkQrlq8m/LF5E2xCuE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KrGdy2wc1+apC6pVUqDgA5YNnPqK+lurEw795lR9UkPstj9zhgP0KCn49qYzKSAIm
	 NRG+7Sivi5/Y5Tf4M8nGD7SRFm5zm6Rx9j6zZJKRGRsjjx/XqzY6IoJ+NjEEcLrhGN
	 ylF4GihuO645eTGvIf3Zyrlb7/hxdLwNCNOQuUxDsJqBtL4TS+omQ6LMeDVTLt4ZVt
	 BdEAOWGJnEROb1c37vZ3jEuL5ny34gLCijLA/iGV8uUlXAscDCVj0cONiGMHZZWUHE
	 EfCVF8eznDl0IOeyuHBEVxO/M/Zoen0aGeuWz8Wg1Tyx43hdFVYbCBEBg9ObCzmOEa
	 kyHtxpWTTui+w==
Date: Wed, 10 Dec 2025 15:19:48 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Cc: conor+dt@kernel.org, dmitry.baryshkov@oss.qualcomm.com,
	abel.vesa@linaro.org, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, vkoul@kernel.org, krzk+dt@kernel.org
Subject: Re: [PATCH v8 1/9] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy:
 Add Glymur compatible
Message-ID: <176540158800.3359535.4500963269576510341.robh@kernel.org>
References: <20251209-linux-next-12825-v8-0-42133596bda0@oss.qualcomm.com>
 <20251209-linux-next-12825-v8-1-42133596bda0@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251209-linux-next-12825-v8-1-42133596bda0@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251210_131952_983194_6D1E87BE 
X-CRM114-Status: UNSURE (   6.32  )
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


On Tue, 09 Dec 2025 15:09:37 -0800, Wesley Cheng wrote:
> Define a Glymur compatible string for the QMP combo PHY, along with
> resource requirements.
> 
> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> ---
>  .../bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml      | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
